@interface CXSenderIdentity
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSenderIdentity:(id)identity;
- (CXHandle)handle;
- (CXSenderIdentity)initWithCoder:(id)coder;
- (CXSenderIdentity)initWithUUID:(id)d account:(id)account;
- (CXSenderIdentity)initWithUUID:(id)d handle:(id)handle localizedName:(id)name;
- (NSString)localizedName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXSenderIdentity

- (CXSenderIdentity)initWithUUID:(id)d handle:(id)handle localizedName:(id)name
{
  nameCopy = name;
  handleCopy = handle;
  dCopy = d;
  v11 = [CXAccount alloc];
  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v13 = [(CXAccount *)v11 initWithUUID:v12 description:nameCopy serviceName:@"Unknown Service" isoCountryCode:@"xw" handle:handleCopy];

  v14 = [(CXSenderIdentity *)self initWithUUID:dCopy account:v13];
  return v14;
}

- (CXSenderIdentity)initWithUUID:(id)d account:(id)account
{
  dCopy = d;
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = CXSenderIdentity;
  v9 = [(CXSenderIdentity *)&v11 init];
  if (v9)
  {
    if (dCopy)
    {
      if (accountCopy)
      {
LABEL_4:
        objc_storeStrong(&v9->_UUID, d);
        objc_storeStrong(&v9->_account, account);
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXSenderIdentity initWithUUID:account:]", @"UUID"}];
      if (accountCopy)
      {
        goto LABEL_4;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXSenderIdentity initWithUUID:account:]", @"account"}];
    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

- (CXHandle)handle
{
  account = [(CXSenderIdentity *)self account];
  handle = [account handle];

  return handle;
}

- (NSString)localizedName
{
  account = [(CXSenderIdentity *)self account];
  accountDescription = [account accountDescription];

  return accountDescription;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uUID = [(CXSenderIdentity *)self UUID];
  account = [(CXSenderIdentity *)self account];
  v7 = [v4 initWithUUID:uUID account:account];

  return v7;
}

- (CXSenderIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CXSenderIdentity;
  v5 = [(CXSenderIdentity *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_account);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    account = v5->_account;
    v5->_account = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_UUID);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    UUID = v5->_UUID;
    v5->_UUID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(CXSenderIdentity *)self account];
  v6 = NSStringFromSelector(sel_account);
  [coderCopy encodeObject:account forKey:v6];

  uUID = [(CXSenderIdentity *)self UUID];
  v7 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v7];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  uUID = [(CXSenderIdentity *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, uUID];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_account);
  account = [(CXSenderIdentity *)self account];
  [v3 appendFormat:@"%@=%@", v6, account];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXSenderIdentity *)self isEqualToSenderIdentity:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  account = [(CXSenderIdentity *)self account];
  v4 = [account hash];
  uUID = [(CXSenderIdentity *)self UUID];
  v6 = [uUID hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToSenderIdentity:(id)identity
{
  identityCopy = identity;
  account = [(CXSenderIdentity *)self account];
  account2 = [identityCopy account];
  if ([account isEqualToAccount:account2])
  {
    uUID = [(CXSenderIdentity *)self UUID];
    uUID2 = [identityCopy UUID];
    v9 = [uUID isEqual:uUID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end