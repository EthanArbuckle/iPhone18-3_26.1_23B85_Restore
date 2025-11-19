@interface ILMessageFilterReportRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (ILMessageFilterReportRequest)initWithCoder:(id)a3;
- (ILMessageFilterReportRequest)initWithExtensionIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILMessageFilterReportRequest

- (ILMessageFilterReportRequest)initWithExtensionIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ILMessageFilterReportRequest;
  v5 = [(ILMessageFilterReportRequest *)&v9 init];
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
  v5 = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  v6 = [(ILMessageFilterReportRequest *)self sender];
  v7 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ sender=%@ suggestedAction=%ld>", v4, self, v5, v6, -[ILMessageFilterReportRequest suggestedAction](self, "suggestedAction")];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterReportRequest *)self isEqualToRequest:v4];

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  v6 = [v4 extensionIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(ILMessageFilterReportRequest *)self sender];
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
      v9 = [(ILMessageFilterReportRequest *)self messageBody];
      v10 = [v4 messageBody];
      if (v10)
      {
        if ([v9 isEqualToString:v10])
        {
          goto LABEL_6;
        }
      }

      else if (!v9)
      {
LABEL_6:
        v11 = [(ILMessageFilterReportRequest *)self receiverISOCountryCode];
        v12 = [v4 receiverISOCountryCode];
        if (v12)
        {
          if ([v11 isEqualToString:v12])
          {
LABEL_8:
            v13 = [(ILMessageFilterReportRequest *)self suggestedAction];
            v14 = v13 == [v4 suggestedAction];
LABEL_16:

            goto LABEL_17;
          }
        }

        else if (!v11)
        {
          goto LABEL_8;
        }

        v14 = 0;
        goto LABEL_16;
      }

      v14 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  v4 = [v3 hash];
  v5 = [(ILMessageFilterReportRequest *)self sender];
  v6 = [v5 hash] ^ v4;
  v7 = [(ILMessageFilterReportRequest *)self messageBody];
  v8 = [v7 hash];
  v9 = [(ILMessageFilterReportRequest *)self receiverISOCountryCode];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(ILMessageFilterReportRequest *)self suggestedAction];

  return v10 ^ v11;
}

- (ILMessageFilterReportRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(ILMessageFilterReportRequest *)self initWithExtensionIdentifier:v7];
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

    v21 = NSStringFromSelector(sel_suggestedAction);
    v8->_suggestedAction = [v4 decodeIntegerForKey:v21];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(ILMessageFilterReportRequest *)self sender];
  v8 = NSStringFromSelector(sel_sender);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(ILMessageFilterReportRequest *)self messageBody];
  v10 = NSStringFromSelector(sel_messageBody);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(ILMessageFilterReportRequest *)self receiverISOCountryCode];
  v12 = NSStringFromSelector(sel_receiverISOCountryCode);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(ILMessageFilterReportRequest *)self suggestedAction];
  v14 = NSStringFromSelector(sel_suggestedAction);
  [v4 encodeInteger:v13 forKey:v14];
}

@end