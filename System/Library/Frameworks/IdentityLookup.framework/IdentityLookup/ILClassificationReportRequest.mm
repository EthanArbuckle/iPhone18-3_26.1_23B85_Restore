@interface ILClassificationReportRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (ILClassificationReportRequest)initWithCoder:(id)coder;
- (ILClassificationReportRequest)initWithExtensionIdentifier:(id)identifier jsonDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILClassificationReportRequest

- (ILClassificationReportRequest)initWithExtensionIdentifier:(id)identifier jsonDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ILClassificationReportRequest;
  v8 = [(ILClassificationReportRequest *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    extensionIdentifier = v8->_extensionIdentifier;
    v8->_extensionIdentifier = v9;

    v11 = [dictionaryCopy copy];
    jsonDictionary = v8->_jsonDictionary;
    v8->_jsonDictionary = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  extensionIdentifier = [(ILClassificationReportRequest *)self extensionIdentifier];
  jsonDictionary = [(ILClassificationReportRequest *)self jsonDictionary];
  v7 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ jsonDict=%@>", v4, self, extensionIdentifier, jsonDictionary];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILClassificationReportRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  extensionIdentifier = [(ILClassificationReportRequest *)self extensionIdentifier];
  extensionIdentifier2 = [requestCopy extensionIdentifier];
  if ([extensionIdentifier isEqualToString:extensionIdentifier2])
  {
    jsonDictionary = [(ILClassificationReportRequest *)self jsonDictionary];
    jsonDictionary2 = [requestCopy jsonDictionary];
    if (jsonDictionary | jsonDictionary2)
    {
      v9 = [jsonDictionary isEqual:jsonDictionary2];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  extensionIdentifier = [(ILClassificationReportRequest *)self extensionIdentifier];
  v4 = [extensionIdentifier hash];
  jsonDictionary = [(ILClassificationReportRequest *)self jsonDictionary];
  v6 = [jsonDictionary hash];

  return v6 ^ v4;
}

- (ILClassificationReportRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = NSStringFromSelector(sel_jsonDictionary);
  v15 = [coderCopy decodeObjectOfClasses:v13 forKey:v14];

  v16 = [(ILClassificationReportRequest *)self initWithExtensionIdentifier:v7 jsonDictionary:v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionIdentifier = [(ILClassificationReportRequest *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [coderCopy encodeObject:extensionIdentifier forKey:v6];

  jsonDictionary = [(ILClassificationReportRequest *)self jsonDictionary];
  v7 = NSStringFromSelector(sel_jsonDictionary);
  [coderCopy encodeObject:jsonDictionary forKey:v7];
}

@end