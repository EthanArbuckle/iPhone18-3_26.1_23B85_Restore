@interface ILMessageFilterQueryRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (ILMessageFilterQueryRequest)initWithCoder:(id)coder;
- (ILMessageFilterQueryRequest)initWithExtensionIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILMessageFilterQueryRequest

- (ILMessageFilterQueryRequest)initWithExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ILMessageFilterQueryRequest;
  v5 = [(ILMessageFilterQueryRequest *)&v9 init];
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
  extensionIdentifier = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  sender = [(ILMessageFilterQueryRequest *)self sender];
  v7 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ sender=%@>", v4, self, extensionIdentifier, sender];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterQueryRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  extensionIdentifier = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  extensionIdentifier2 = [requestCopy extensionIdentifier];
  if ([extensionIdentifier isEqualToString:extensionIdentifier2])
  {
    sender = [(ILMessageFilterQueryRequest *)self sender];
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
      messageBody = [(ILMessageFilterQueryRequest *)self messageBody];
      messageBody2 = [requestCopy messageBody];
      if (messageBody2)
      {
        if ([messageBody isEqualToString:messageBody2])
        {
LABEL_6:
          receiverISOCountryCode = [(ILMessageFilterQueryRequest *)self receiverISOCountryCode];
          receiverISOCountryCode2 = [requestCopy receiverISOCountryCode];
          v13 = (receiverISOCountryCode | receiverISOCountryCode2) == 0;
          if (receiverISOCountryCode2)
          {
            v13 = [receiverISOCountryCode isEqualToString:receiverISOCountryCode2];
          }

          goto LABEL_14;
        }
      }

      else if (!messageBody)
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
  extensionIdentifier = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  v4 = [extensionIdentifier hash];
  sender = [(ILMessageFilterQueryRequest *)self sender];
  v6 = [sender hash] ^ v4;
  messageBody = [(ILMessageFilterQueryRequest *)self messageBody];
  v8 = [messageBody hash];
  receiverISOCountryCode = [(ILMessageFilterQueryRequest *)self receiverISOCountryCode];
  v10 = v8 ^ [receiverISOCountryCode hash];

  return v6 ^ v10;
}

- (ILMessageFilterQueryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(ILMessageFilterQueryRequest *)self initWithExtensionIdentifier:v7];
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
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionIdentifier = [(ILMessageFilterQueryRequest *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [coderCopy encodeObject:extensionIdentifier forKey:v6];

  sender = [(ILMessageFilterQueryRequest *)self sender];
  v8 = NSStringFromSelector(sel_sender);
  [coderCopy encodeObject:sender forKey:v8];

  messageBody = [(ILMessageFilterQueryRequest *)self messageBody];
  v10 = NSStringFromSelector(sel_messageBody);
  [coderCopy encodeObject:messageBody forKey:v10];

  receiverISOCountryCode = [(ILMessageFilterQueryRequest *)self receiverISOCountryCode];
  v11 = NSStringFromSelector(sel_receiverISOCountryCode);
  [coderCopy encodeObject:receiverISOCountryCode forKey:v11];
}

@end