@interface ILMessageFilterQueryRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (ILMessageFilterQueryRequest)initWithCoder:(id)a3;
- (ILMessageFilterQueryRequest)initWithExtensionIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILMessageFilterQueryRequest

- (ILMessageFilterQueryRequest)initWithExtensionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ILMessageFilterQueryRequest;
  v5 = [(ILMessageFilterQueryRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  v6 = [(ILMessageFilterQueryRequest *)self sender];
  v7 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ sender=%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterQueryRequest *)self isEqualToRequest:v4];

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  v6 = [v4 extensionIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(ILMessageFilterQueryRequest *)self sender];
    v8 = [v4 sender];
    if (v8)
    {
      if ([v7 isEqualToString:v8])
      {
        goto LABEL_4;
      }
    }

    else if (!v7)
    {
LABEL_4:
      v9 = [(ILMessageFilterQueryRequest *)self messageBody];
      v10 = [v4 messageBody];
      if (v10)
      {
        if ([v9 isEqualToString:v10])
        {
LABEL_6:
          v11 = [(ILMessageFilterQueryRequest *)self receiverISOCountryCode];
          v12 = [v4 receiverISOCountryCode];
          v13 = (v11 | v12) == 0;
          if (v12)
          {
            v13 = [v11 isEqualToString:v12];
          }

          goto LABEL_14;
        }
      }

      else if (!v9)
      {
        goto LABEL_6;
      }

      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  v4 = [v3 hash];
  v5 = [(ILMessageFilterQueryRequest *)self sender];
  v6 = [v5 hash] ^ v4;
  v7 = [(ILMessageFilterQueryRequest *)self messageBody];
  v8 = [v7 hash];
  v9 = [(ILMessageFilterQueryRequest *)self receiverISOCountryCode];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (ILMessageFilterQueryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(ILMessageFilterQueryRequest *)self initWithExtensionIdentifier:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sender);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    sender = v8->_sender;
    v8->_sender = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_messageBody);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    messageBody = v8->_messageBody;
    v8->_messageBody = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_receiverISOCountryCode);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    receiverISOCountryCode = v8->_receiverISOCountryCode;
    v8->_receiverISOCountryCode = v19;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(ILMessageFilterQueryRequest *)self sender];
  v8 = NSStringFromSelector(sel_sender);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(ILMessageFilterQueryRequest *)self messageBody];
  v10 = NSStringFromSelector(sel_messageBody);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(ILMessageFilterQueryRequest *)self receiverISOCountryCode];
  v11 = NSStringFromSelector(sel_receiverISOCountryCode);
  [v4 encodeObject:v12 forKey:v11];
}

@end