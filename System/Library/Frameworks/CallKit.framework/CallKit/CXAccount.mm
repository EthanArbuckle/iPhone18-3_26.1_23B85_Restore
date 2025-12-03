@interface CXAccount
+ (NSSet)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccount:(id)account;
- (CXAccount)init;
- (CXAccount)initWithCoder:(id)coder;
- (CXAccount)initWithUUID:(id)d description:(id)description serviceName:(id)name isoCountryCode:(id)code handle:(id)handle shortLabel:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXAccount

- (CXAccount)init
{
  [(CXAccount *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CXAccount)initWithUUID:(id)d description:(id)description serviceName:(id)name isoCountryCode:(id)code handle:(id)handle shortLabel:(id)label
{
  dCopy = d;
  descriptionCopy = description;
  nameCopy = name;
  codeCopy = code;
  handleCopy = handle;
  labelCopy = label;
  v31.receiver = self;
  v31.super_class = CXAccount;
  v21 = [(CXAccount *)&v31 init];
  if (v21)
  {
    if (dCopy)
    {
      if (descriptionCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"UUID"}];
      if (descriptionCopy)
      {
LABEL_4:
        if (nameCopy)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"description"}];
    if (nameCopy)
    {
LABEL_5:
      if (codeCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_11:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAccount initWithUUID:description:serviceName:isoCountryCode:handle:shortLabel:]", @"serviceName"}];
    if (codeCopy)
    {
LABEL_6:
      if (labelCopy)
      {
LABEL_7:
        objc_storeStrong(&v21->_UUID, d);
        v22 = [descriptionCopy copy];
        accountDescription = v21->_accountDescription;
        v21->_accountDescription = v22;

        v24 = [nameCopy copy];
        serviceName = v21->_serviceName;
        v21->_serviceName = v24;

        v26 = [codeCopy copy];
        isoCountryCode = v21->_isoCountryCode;
        v21->_isoCountryCode = v26;

        objc_storeStrong(&v21->_handle, handle);
        v28 = [labelCopy copy];
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
    if (labelCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_8:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uUID = [(CXAccount *)self UUID];
  accountDescription = [(CXAccount *)self accountDescription];
  serviceName = [(CXAccount *)self serviceName];
  isoCountryCode = [(CXAccount *)self isoCountryCode];
  handle = [(CXAccount *)self handle];
  v10 = [v4 initWithUUID:uUID description:accountDescription serviceName:serviceName isoCountryCode:isoCountryCode handle:handle];

  return v10;
}

- (CXAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = CXAccount;
  v5 = [(CXAccount *)&v31 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accountDescription);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    accountDescription = v5->_accountDescription;
    v5->_accountDescription = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_handle);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_isoCountryCode);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_serviceName);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    serviceName = v5->_serviceName;
    v5->_serviceName = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_UUID);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    UUID = v5->_UUID;
    v5->_UUID = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_shortLabel);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    shortLabel = v5->_shortLabel;
    v5->_shortLabel = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountDescription = [(CXAccount *)self accountDescription];
  v6 = NSStringFromSelector(sel_accountDescription);
  [coderCopy encodeObject:accountDescription forKey:v6];

  handle = [(CXAccount *)self handle];
  v8 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v8];

  isoCountryCode = [(CXAccount *)self isoCountryCode];
  v10 = NSStringFromSelector(sel_isoCountryCode);
  [coderCopy encodeObject:isoCountryCode forKey:v10];

  serviceName = [(CXAccount *)self serviceName];
  v12 = NSStringFromSelector(sel_serviceName);
  [coderCopy encodeObject:serviceName forKey:v12];

  uUID = [(CXAccount *)self UUID];
  v14 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v14];

  shortLabel = [(CXAccount *)self shortLabel];
  v15 = NSStringFromSelector(sel_shortLabel);
  [coderCopy encodeObject:shortLabel forKey:v15];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  uUID = [(CXAccount *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, uUID];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_isoCountryCode);
  isoCountryCode = [(CXAccount *)self isoCountryCode];
  [v3 appendFormat:@"%@=%@", v6, isoCountryCode];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_accountDescription);
  accountDescription = [(CXAccount *)self accountDescription];
  [v3 appendFormat:@"%@=%@", v8, accountDescription];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector(sel_shortLabel);
  shortLabel = [(CXAccount *)self shortLabel];
  [v3 appendFormat:@"%@=%@", v10, shortLabel];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_serviceName);
  serviceName = [(CXAccount *)self serviceName];
  [v3 appendFormat:@"%@=%@", v12, serviceName];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_handle);
  handle = [(CXAccount *)self handle];
  [v3 appendFormat:@"%@=%@", v14, handle];

  [v3 appendFormat:@">"];
  v16 = [v3 copy];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXAccount *)self isEqualToAccount:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  accountDescription = [(CXAccount *)self accountDescription];
  v4 = [accountDescription hash];
  isoCountryCode = [(CXAccount *)self isoCountryCode];
  v6 = [isoCountryCode hash] ^ v4;
  handle = [(CXAccount *)self handle];
  v8 = [handle hash];
  serviceName = [(CXAccount *)self serviceName];
  v10 = v6 ^ v8 ^ [serviceName hash];
  uUID = [(CXAccount *)self UUID];
  v12 = [uUID hash];
  shortLabel = [(CXAccount *)self shortLabel];
  v14 = v12 ^ [shortLabel hash];

  return v10 ^ v14;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  accountDescription = [(CXAccount *)self accountDescription];
  accountDescription2 = [accountCopy accountDescription];
  if ([accountDescription isEqualToString:accountDescription2])
  {
    isoCountryCode = [(CXAccount *)self isoCountryCode];
    isoCountryCode2 = [accountCopy isoCountryCode];
    if ([isoCountryCode isEqualToString:isoCountryCode2])
    {
      handle = [(CXAccount *)self handle];
      handle2 = [accountCopy handle];
      if (handle | handle2 && ![handle isEqual:handle2])
      {
        v17 = 0;
      }

      else
      {
        serviceName = [(CXAccount *)self serviceName];
        serviceName2 = [accountCopy serviceName];
        if ([serviceName isEqualToString:serviceName2])
        {
          v21 = serviceName;
          uUID = [(CXAccount *)self UUID];
          uUID2 = [accountCopy UUID];
          v22 = uUID;
          v15 = uUID;
          v16 = uUID2;
          if ([v15 isEqual:uUID2])
          {
            shortLabel = [(CXAccount *)self shortLabel];
            shortLabel2 = [accountCopy shortLabel];
            v17 = [shortLabel isEqual:shortLabel2];
          }

          else
          {
            v17 = 0;
          }

          serviceName = v21;
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end