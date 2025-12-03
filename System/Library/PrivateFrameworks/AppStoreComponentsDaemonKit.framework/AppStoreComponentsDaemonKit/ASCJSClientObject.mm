@interface ASCJSClientObject
- (ASCJSClientObject)initWithAccountStore:(id)store;
- (BOOL)isActivePairedWatchSystemVersionAtLeastMajorVersion:(id)version minorVersion:(id)minorVersion patchVersion:(id)patchVersion;
- (BOOL)isAutomaticDownloadingEnabled;
- (CGSize)screenSize;
- (NSString)deviceType;
- (NSString)storefrontIdentifier;
- (id)isPairedSystemVersionAtLeast:(id)least;
- (void)accountStoreDidChange:(id)change;
- (void)dealloc;
@end

@implementation ASCJSClientObject

- (ASCJSClientObject)initWithAccountStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ASCJSClientObject;
  v6 = [(ASCJSClientObject *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    ams_activeiTunesAccount = [storeCopy ams_activeiTunesAccount];
    activeiTunesAccount = v7->_activeiTunesAccount;
    v7->_activeiTunesAccount = ams_activeiTunesAccount;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCJSClientObject;
  [(ASCJSClientObject *)&v4 dealloc];
}

- (void)accountStoreDidChange:(id)change
{
  accountStore = [(ASCJSClientObject *)self accountStore];
  ams_activeiTunesAccount = [accountStore ams_activeiTunesAccount];
  [(ASCJSClientObject *)self setActiveiTunesAccount:ams_activeiTunesAccount];
}

- (CGSize)screenSize
{
  +[ASCMobileGestalt mainScreenPointSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)storefrontIdentifier
{
  activeiTunesAccount = [(ASCJSClientObject *)self activeiTunesAccount];
  v4 = activeiTunesAccount;
  if (activeiTunesAccount)
  {
    ams_localiTunesAccount = activeiTunesAccount;
  }

  else
  {
    accountStore = [(ASCJSClientObject *)self accountStore];
    ams_localiTunesAccount = [accountStore ams_localiTunesAccount];
  }

  ams_storefront = [ams_localiTunesAccount ams_storefront];

  return ams_storefront;
}

- (NSString)deviceType
{
  if (+[ASCMobileGestalt isPad])
  {
    v2 = @"pad";
  }

  else
  {
    v2 = @"phone";
  }

  return v2;
}

- (BOOL)isActivePairedWatchSystemVersionAtLeastMajorVersion:(id)version minorVersion:(id)minorVersion patchVersion:(id)patchVersion
{
  versionCopy = version;
  minorVersionCopy = minorVersion;
  patchVersionCopy = patchVersion;
  v10 = +[ASCMobileGestalt activePairedSystemVersion];
  if (v10)
  {
    v29 = v10;
    v11 = [v10 componentsSeparatedByString:@"."];
    if ([v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      integerValue = [v12 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    if ([v11 count] < 2)
    {
      integerValue2 = 0;
    }

    else
    {
      v14 = [v11 objectAtIndexedSubscript:1];
      integerValue2 = [v14 integerValue];
    }

    if ([v11 count] < 3)
    {
      integerValue3 = 0;
    }

    else
    {
      v16 = [v11 objectAtIndexedSubscript:2];
      integerValue3 = [v16 integerValue];
    }

    toInt32 = [versionCopy toInt32];
    toInt322 = [minorVersionCopy toInt32];
    toInt323 = [patchVersionCopy toInt32];
    v21 = patchVersionCopy;
    v22 = versionCopy;
    v23 = toInt323;
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld.%ld", integerValue, integerValue2, integerValue3];
    v27 = v23;
    versionCopy = v22;
    patchVersionCopy = v21;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld.%ld", toInt32, toInt322, v27];
    v13 = [v24 compare:v25 options:64] != -1;

    v10 = v29;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)isPairedSystemVersionAtLeast:(id)least
{
  leastCopy = least;
  currentContext = [MEMORY[0x277CD4640] currentContext];
  if (!currentContext)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s called with no active JSContext", "-[ASCJSClientObject isPairedSystemVersionAtLeast:]"}];
  }

  if ([leastCopy isString])
  {
    v5 = +[ASCMobileGestalt activePairedSystemVersion];
    v6 = __50__ASCJSClientObject_isPairedSystemVersionAtLeast___block_invoke(v5, v5);

    if (v6)
    {
      toString = [leastCopy toString];
      v8 = __50__ASCJSClientObject_isPairedSystemVersionAtLeast___block_invoke(toString, toString);
      v9 = [v6 compare:v8 options:64] != -1;
    }

    else
    {
      v9 = 0;
    }

    v11 = [MEMORY[0x277CD4658] valueWithBool:v9 inContext:currentContext];
  }

  else
    v6 = {;
    v10 = [MEMORY[0x277CD4658] valueWithNewErrorFromMessage:v6 inContext:currentContext];
    [currentContext setException:v10];

    v11 = [MEMORY[0x277CD4658] valueWithUndefinedInContext:currentContext];
  }

  v12 = v11;

  return v12;
}

id __50__ASCJSClientObject_isPairedSystemVersionAtLeast___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v4 = [v2 componentsSeparatedByString:@"."];
  v5 = [v4 count];
  if (v5 >= 4)
  {
    v6 = [v4 subarrayWithRange:{0, 3}];
    v7 = v6;
LABEL_11:
    v8 = [v6 componentsJoinedByString:@"."];

    goto LABEL_12;
  }

  v9 = v5 - 3;
  if (v5 != 3)
  {
    v7 = [v4 mutableCopy];
    do
    {
      [v7 addObject:@"0"];
    }

    while (!__CFADD__(v9++, 1));
    v6 = v7;
    goto LABEL_11;
  }

  v8 = v3;
LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)isAutomaticDownloadingEnabled
{
  activeiTunesAccount = [(ASCJSClientObject *)self activeiTunesAccount];
  v3 = [activeiTunesAccount accountPropertyForKey:@"automaticDownloadKinds"];

  LOBYTE(activeiTunesAccount) = [v3 containsObject:@"software"];
  return activeiTunesAccount;
}

@end