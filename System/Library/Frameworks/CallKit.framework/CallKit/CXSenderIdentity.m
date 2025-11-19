@interface CXSenderIdentity
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSenderIdentity:(id)a3;
- (CXHandle)handle;
- (CXSenderIdentity)initWithCoder:(id)a3;
- (CXSenderIdentity)initWithUUID:(id)a3 account:(id)a4;
- (CXSenderIdentity)initWithUUID:(id)a3 handle:(id)a4 localizedName:(id)a5;
- (NSString)localizedName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXSenderIdentity

- (CXSenderIdentity)initWithUUID:(id)a3 handle:(id)a4 localizedName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [CXAccount alloc];
  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v13 = [(CXAccount *)v11 initWithUUID:v12 description:v8 serviceName:@"Unknown Service" isoCountryCode:@"xw" handle:v9];

  v14 = [(CXSenderIdentity *)self initWithUUID:v10 account:v13];
  return v14;
}

- (CXSenderIdentity)initWithUUID:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = CXSenderIdentity;
  v9 = [(CXSenderIdentity *)&v11 init];
  if (v9)
  {
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        objc_storeStrong(&v9->_UUID, a3);
        objc_storeStrong(&v9->_account, a4);
        goto LABEL_5;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXSenderIdentity initWithUUID:account:]", @"UUID"}];
      if (v8)
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
  v2 = [(CXSenderIdentity *)self account];
  v3 = [v2 handle];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(CXSenderIdentity *)self account];
  v3 = [v2 accountDescription];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXSenderIdentity *)self UUID];
  v6 = [(CXSenderIdentity *)self account];
  v7 = [v4 initWithUUID:v5 account:v6];

  return v7;
}

- (CXSenderIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CXSenderIdentity;
  v5 = [(CXSenderIdentity *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_account);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    account = v5->_account;
    v5->_account = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_UUID);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    UUID = v5->_UUID;
    v5->_UUID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXSenderIdentity *)self account];
  v6 = NSStringFromSelector(sel_account);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(CXSenderIdentity *)self UUID];
  v7 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v8 forKey:v7];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  v5 = [(CXSenderIdentity *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_account);
  v7 = [(CXSenderIdentity *)self account];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXSenderIdentity *)self isEqualToSenderIdentity:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(CXSenderIdentity *)self account];
  v4 = [v3 hash];
  v5 = [(CXSenderIdentity *)self UUID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToSenderIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CXSenderIdentity *)self account];
  v6 = [v4 account];
  if ([v5 isEqualToAccount:v6])
  {
    v7 = [(CXSenderIdentity *)self UUID];
    v8 = [v4 UUID];
    v9 = [v7 isEqual:v8];
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end