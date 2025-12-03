@interface ILMessageFilterCapabilitiesQueryRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (ILMessageFilterCapabilitiesQueryRequest)initWithCoder:(id)coder;
- (ILMessageFilterCapabilitiesQueryRequest)initWithExtensionIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILMessageFilterCapabilitiesQueryRequest

- (ILMessageFilterCapabilitiesQueryRequest)initWithExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ILMessageFilterCapabilitiesQueryRequest;
  v5 = [(ILMessageFilterCapabilitiesQueryRequest *)&v9 init];
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
  extensionIdentifier = [(ILMessageFilterCapabilitiesQueryRequest *)self extensionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@>", v4, self, extensionIdentifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILMessageFilterCapabilitiesQueryRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  extensionIdentifier = [(ILMessageFilterCapabilitiesQueryRequest *)self extensionIdentifier];
  extensionIdentifier2 = [requestCopy extensionIdentifier];

  LOBYTE(requestCopy) = [extensionIdentifier isEqualToString:extensionIdentifier2];
  return requestCopy;
}

- (unint64_t)hash
{
  extensionIdentifier = [(ILMessageFilterCapabilitiesQueryRequest *)self extensionIdentifier];
  v3 = [extensionIdentifier hash];

  return v3;
}

- (ILMessageFilterCapabilitiesQueryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(ILMessageFilterCapabilitiesQueryRequest *)self initWithExtensionIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionIdentifier = [(ILMessageFilterCapabilitiesQueryRequest *)self extensionIdentifier];
  v5 = NSStringFromSelector(sel_extensionIdentifier);
  [coderCopy encodeObject:extensionIdentifier forKey:v5];
}

@end