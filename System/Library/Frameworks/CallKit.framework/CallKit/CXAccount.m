@interface CXAccount
+ (NSSet)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccount:(id)a3;
- (CXAccount)init;
- (CXAccount)initWithCoder:(id)a3;
- (CXAccount)initWithUUID:(id)a3 description:(id)a4 serviceName:(id)a5 isoCountryCode:(id)a6 handle:(id)a7 shortLabel:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXAccount

- (CXAccount)init
{
  [(CXAccount *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CXAccount)initWithUUID:(id)a3 description:(id)a4 serviceName:(id)a5 isoCountryCode:(id)a6 handle:(id)a7 shortLabel:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v31.receiver = self;
  v31.super_class = CXAccount;
  v21 = [(CXAccount *)&v31 init];
  if (v21)
  {
    if (v15)
    {
      if (v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"UUID"}];
      if (v16)
      {
LABEL_4:
        if (v17)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"description"}];
    if (v17)
    {
LABEL_5:
      if (v18)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_11:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"serviceName"}];
    if (v18)
    {
LABEL_6:
      if (v20)
      {
LABEL_7:
        objc_storeStrong(&v21->_UUID, a3);
        v22 = [v16 copy];
        accountDescription = v21->_accountDescription;
        v21->_accountDescription = v22;

        v24 = [v17 copy];
        serviceName = v21->_serviceName;
        v21->_serviceName = v24;

        v26 = [v18 copy];
        isoCountryCode = v21->_isoCountryCode;
        v21->_isoCountryCode = v26;

        objc_storeStrong(&v21->_handle, a7);
        v28 = [v20 copy];
        shortLabel = v21->_shortLabel;
        v21->_shortLabel = v28;

        goto LABEL_8;
      }

LABEL_13:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"shortLabel"}];
      goto LABEL_7;
    }

LABEL_12:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"isoCountryCode"}];
    if (v20)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_8:

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXAccount *)self UUID];
  v6 = [(CXAccount *)self accountDescription];
  v7 = [(CXAccount *)self serviceName];
  v8 = [(CXAccount *)self isoCountryCode];
  v9 = [(CXAccount *)self handle];
  v10 = [v4 initWithUUID:v5 description:v6 serviceName:v7 isoCountryCode:v8 handle:v9];

  return v10;
}

- (CXAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CXAccount;
  v5 = [(CXAccount *)&v31 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accountDescription);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    accountDescription = v5->_accountDescription;
    v5->_accountDescription = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_handle);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_isoCountryCode);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_serviceName);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    serviceName = v5->_serviceName;
    v5->_serviceName = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_UUID);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    UUID = v5->_UUID;
    v5->_UUID = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_shortLabel);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    shortLabel = v5->_shortLabel;
    v5->_shortLabel = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXAccount *)self accountDescription];
  v6 = NSStringFromSelector(sel_accountDescription);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXAccount *)self handle];
  v8 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXAccount *)self isoCountryCode];
  v10 = NSStringFromSelector(sel_isoCountryCode);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXAccount *)self serviceName];
  v12 = NSStringFromSelector(sel_serviceName);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXAccount *)self UUID];
  v14 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(CXAccount *)self shortLabel];
  v15 = NSStringFromSelector(sel_shortLabel);
  [v4 encodeObject:v16 forKey:v15];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  v5 = [(CXAccount *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_isoCountryCode);
  v7 = [(CXAccount *)self isoCountryCode];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_accountDescription);
  v9 = [(CXAccount *)self accountDescription];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector(sel_shortLabel);
  v11 = [(CXAccount *)self shortLabel];
  [v3 appendFormat:@"%@=%@", v10, v11];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_serviceName);
  v13 = [(CXAccount *)self serviceName];
  [v3 appendFormat:@"%@=%@", v12, v13];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_handle);
  v15 = [(CXAccount *)self handle];
  [v3 appendFormat:@"%@=%@", v14, v15];

  [v3 appendFormat:@">"];
  v16 = [v3 copy];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXAccount *)self isEqualToAccount:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(CXAccount *)self accountDescription];
  v4 = [v3 hash];
  v5 = [(CXAccount *)self isoCountryCode];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXAccount *)self handle];
  v8 = [v7 hash];
  v9 = [(CXAccount *)self serviceName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CXAccount *)self UUID];
  v12 = [v11 hash];
  v13 = [(CXAccount *)self shortLabel];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v4 = a3;
  v5 = [(CXAccount *)self accountDescription];
  v6 = [v4 accountDescription];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(CXAccount *)self isoCountryCode];
    v8 = [v4 isoCountryCode];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(CXAccount *)self handle];
      v10 = [v4 handle];
      if (v9 | v10 && ![v9 isEqual:v10])
      {
        v17 = 0;
      }

      else
      {
        v11 = [(CXAccount *)self serviceName];
        v12 = [v4 serviceName];
        if ([v11 isEqualToString:v12])
        {
          v21 = v11;
          v13 = [(CXAccount *)self UUID];
          v14 = [v4 UUID];
          v22 = v13;
          v15 = v13;
          v16 = v14;
          if ([v15 isEqual:v14])
          {
            v20 = [(CXAccount *)self shortLabel];
            v19 = [v4 shortLabel];
            v17 = [v20 isEqual:v19];
          }

          else
          {
            v17 = 0;
          }

          v11 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (NSSet)unarchivedObjectClasses
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