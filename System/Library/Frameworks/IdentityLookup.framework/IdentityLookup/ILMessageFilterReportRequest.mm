@interface ILMessageFilterReportRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (ILMessageFilterReportRequest)initWithCoder:(id)coder;
- (ILMessageFilterReportRequest)initWithExtensionIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILMessageFilterReportRequest

- (ILMessageFilterReportRequest)initWithExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ILMessageFilterReportRequest;
  v5 = [(ILMessageFilterReportRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  extensionIdentifier = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  sender = [(ILMessageFilterReportRequest *)self sender];
  v7 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ sender=%@ suggestedAction=%ld>", v4, self, extensionIdentifier, sender, -[ILMessageFilterReportRequest suggestedAction](self, "suggestedAction")];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterReportRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  extensionIdentifier = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  extensionIdentifier2 = [requestCopy extensionIdentifier];
  if ([extensionIdentifier isEqualToString:extensionIdentifier2])
  {
    sender = [(ILMessageFilterReportRequest *)self sender];
    sender2 = [requestCopy sender];
    if (sender2)
    {
      if ([sender isEqualToString:sender2])
      {
        goto LABEL_4;
      }
    }

    else if (!sender)
    {
LABEL_4:
      messageBody = [(ILMessageFilterReportRequest *)self messageBody];
      messageBody2 = [requestCopy messageBody];
      if (messageBody2)
      {
        if ([messageBody isEqualToString:messageBody2])
        {
          goto LABEL_6;
        }
      }

      else if (!messageBody)
      {
LABEL_6:
        receiverISOCountryCode = [(ILMessageFilterReportRequest *)self receiverISOCountryCode];
        receiverISOCountryCode2 = [requestCopy receiverISOCountryCode];
        if (receiverISOCountryCode2)
        {
          if ([receiverISOCountryCode isEqualToString:receiverISOCountryCode2])
          {
LABEL_8:
            suggestedAction = [(ILMessageFilterReportRequest *)self suggestedAction];
            v14 = suggestedAction == [requestCopy suggestedAction];
LABEL_16:

            goto LABEL_17;
          }
        }

        else if (!receiverISOCountryCode)
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
  extensionIdentifier = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  v4 = [extensionIdentifier hash];
  sender = [(ILMessageFilterReportRequest *)self sender];
  v6 = [sender hash] ^ v4;
  messageBody = [(ILMessageFilterReportRequest *)self messageBody];
  v8 = [messageBody hash];
  receiverISOCountryCode = [(ILMessageFilterReportRequest *)self receiverISOCountryCode];
  v10 = v6 ^ v8 ^ [receiverISOCountryCode hash];
  suggestedAction = [(ILMessageFilterReportRequest *)self suggestedAction];

  return v10 ^ suggestedAction;
}

- (ILMessageFilterReportRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(ILMessageFilterReportRequest *)self initWithExtensionIdentifier:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sender);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    sender = v8->_sender;
    v8->_sender = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_messageBody);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    messageBody = v8->_messageBody;
    v8->_messageBody = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_receiverISOCountryCode);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    receiverISOCountryCode = v8->_receiverISOCountryCode;
    v8->_receiverISOCountryCode = v19;

    v21 = NSStringFromSelector(sel_suggestedAction);
    v8->_suggestedAction = [coderCopy decodeIntegerForKey:v21];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionIdentifier = [(ILMessageFilterReportRequest *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [coderCopy encodeObject:extensionIdentifier forKey:v6];

  sender = [(ILMessageFilterReportRequest *)self sender];
  v8 = NSStringFromSelector(sel_sender);
  [coderCopy encodeObject:sender forKey:v8];

  messageBody = [(ILMessageFilterReportRequest *)self messageBody];
  v10 = NSStringFromSelector(sel_messageBody);
  [coderCopy encodeObject:messageBody forKey:v10];

  receiverISOCountryCode = [(ILMessageFilterReportRequest *)self receiverISOCountryCode];
  v12 = NSStringFromSelector(sel_receiverISOCountryCode);
  [coderCopy encodeObject:receiverISOCountryCode forKey:v12];

  suggestedAction = [(ILMessageFilterReportRequest *)self suggestedAction];
  v14 = NSStringFromSelector(sel_suggestedAction);
  [coderCopy encodeInteger:suggestedAction forKey:v14];
}

@end