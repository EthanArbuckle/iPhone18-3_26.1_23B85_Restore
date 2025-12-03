@interface ENCredentials
- (BOOL)areValid;
- (BOOL)saveToKeychain;
- (ENCredentials)initWithCoder:(id)coder;
- (ENCredentials)initWithHost:(id)host authenticationResult:(id)result;
- (ENCredentials)initWithHost:(id)host edamUserId:(id)id noteStoreUrl:(id)url webApiUrlPrefix:(id)prefix authenticationToken:(id)token expirationDate:(id)date;
- (NSString)authenticationToken;
- (id)keychainQuery;
- (void)deleteFromKeychain;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENCredentials

- (ENCredentials)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ENCredentials;
  v5 = [(ENCredentials *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"host"];
    [(ENCredentials *)v5 setHost:v6];

    v7 = [coderCopy decodeObjectForKey:@"edamUserId"];
    [(ENCredentials *)v5 setEdamUserId:v7];

    v8 = [coderCopy decodeObjectForKey:@"noteStoreUrl"];
    [(ENCredentials *)v5 setNoteStoreUrl:v8];

    v9 = [coderCopy decodeObjectForKey:@"webApiUrlPrefix"];
    [(ENCredentials *)v5 setWebApiUrlPrefix:v9];

    v10 = [coderCopy decodeObjectForKey:@"expirationDate"];
    [(ENCredentials *)v5 setExpirationDate:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  host = [(ENCredentials *)self host];
  [coderCopy encodeObject:host forKey:@"host"];

  edamUserId = [(ENCredentials *)self edamUserId];
  [coderCopy encodeObject:edamUserId forKey:@"edamUserId"];

  noteStoreUrl = [(ENCredentials *)self noteStoreUrl];
  [coderCopy encodeObject:noteStoreUrl forKey:@"noteStoreUrl"];

  webApiUrlPrefix = [(ENCredentials *)self webApiUrlPrefix];
  [coderCopy encodeObject:webApiUrlPrefix forKey:@"webApiUrlPrefix"];

  expirationDate = [(ENCredentials *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];
}

- (id)keychainQuery
{
  [ENSSKeychain setAccessibilityType:*MEMORY[0x277CDBEE8]];
  v3 = objc_alloc_init(ENSSKeychainQuery);
  host = [(ENCredentials *)self host];
  [(ENSSKeychainQuery *)v3 setService:host];

  edamUserId = [(ENCredentials *)self edamUserId];
  [(ENSSKeychainQuery *)v3 setAccount:edamUserId];

  v6 = +[ENSession keychainAccessGroup];

  if (v6)
  {
    v7 = +[ENSession keychainAccessGroup];
    [(ENSSKeychainQuery *)v3 setAccessGroup:v7];
  }

  return v3;
}

- (BOOL)areValid
{
  expirationDate = [(ENCredentials *)self expirationDate];

  if (!expirationDate)
  {
    return 1;
  }

  date = [MEMORY[0x277CBEAA8] date];
  expirationDate2 = [(ENCredentials *)self expirationDate];
  v6 = [date compare:expirationDate2] == -1;

  return v6;
}

- (NSString)authenticationToken
{
  keychainQuery = [(ENCredentials *)self keychainQuery];
  v6 = 0;
  [keychainQuery fetch:&v6];
  v3 = v6;
  password = [keychainQuery password];
  if (!password)
  {
    NSLog(&cfstr_ErrorGettingPa.isa, v3);
  }

  return password;
}

- (void)deleteFromKeychain
{
  keychainQuery = [(ENCredentials *)self keychainQuery];
  [keychainQuery deleteItem:0];
}

- (BOOL)saveToKeychain
{
  keychainQuery = [(ENCredentials *)self keychainQuery];
  [keychainQuery setPassword:self->_authenticationToken];
  v8 = 0;
  v4 = [keychainQuery save:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    NSLog(&cfstr_ErrorSavingToK.isa, v5, [v5 code]);
  }

  return v4;
}

- (ENCredentials)initWithHost:(id)host authenticationResult:(id)result
{
  v5 = MEMORY[0x277CCACA8];
  resultCopy = result;
  hostCopy = host;
  user = [resultCopy user];
  v9 = [user id];
  v10 = [v5 stringWithFormat:@"%d", objc_msgSend(v9, "intValue")];
  noteStoreUrl = [resultCopy noteStoreUrl];
  webApiUrlPrefix = [resultCopy webApiUrlPrefix];
  authenticationToken = [resultCopy authenticationToken];
  v14 = MEMORY[0x277CBEAA8];
  expiration = [resultCopy expiration];

  v16 = [v14 dateWithTimeIntervalSince1970:{objc_msgSend(expiration, "longLongValue") / 1000.0}];
  v17 = [(ENCredentials *)self initWithHost:hostCopy edamUserId:v10 noteStoreUrl:noteStoreUrl webApiUrlPrefix:webApiUrlPrefix authenticationToken:authenticationToken expirationDate:v16];

  return v17;
}

- (ENCredentials)initWithHost:(id)host edamUserId:(id)id noteStoreUrl:(id)url webApiUrlPrefix:(id)prefix authenticationToken:(id)token expirationDate:(id)date
{
  hostCopy = host;
  idCopy = id;
  urlCopy = url;
  prefixCopy = prefix;
  tokenCopy = token;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = ENCredentials;
  v20 = [(ENCredentials *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(ENCredentials *)v20 setHost:hostCopy];
    [(ENCredentials *)v21 setEdamUserId:idCopy];
    [(ENCredentials *)v21 setNoteStoreUrl:urlCopy];
    [(ENCredentials *)v21 setWebApiUrlPrefix:prefixCopy];
    [(ENCredentials *)v21 setAuthenticationToken:tokenCopy];
    [(ENCredentials *)v21 setExpirationDate:dateCopy];
  }

  return v21;
}

@end