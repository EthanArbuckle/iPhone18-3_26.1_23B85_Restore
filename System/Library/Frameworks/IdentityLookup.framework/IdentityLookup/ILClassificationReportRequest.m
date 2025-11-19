@interface ILClassificationReportRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (ILClassificationReportRequest)initWithCoder:(id)a3;
- (ILClassificationReportRequest)initWithExtensionIdentifier:(id)a3 jsonDictionary:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILClassificationReportRequest

- (ILClassificationReportRequest)initWithExtensionIdentifier:(id)a3 jsonDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ILClassificationReportRequest;
  v8 = [(ILClassificationReportRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    extensionIdentifier = v8->_extensionIdentifier;
    v8->_extensionIdentifier = v9;

    v11 = [v7 copy];
    jsonDictionary = v8->_jsonDictionary;
    v8->_jsonDictionary = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ILClassificationReportRequest *)self extensionIdentifier];
  v6 = [(ILClassificationReportRequest *)self jsonDictionary];
  v7 = [v3 stringWithFormat:@"<%@ %p extensionIdentifier=%@ jsonDict=%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ILClassificationReportRequest *)self isEqualToRequest:v4];

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationReportRequest *)self extensionIdentifier];
  v6 = [v4 extensionIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(ILClassificationReportRequest *)self jsonDictionary];
    v8 = [v4 jsonDictionary];
    if (v7 | v8)
    {
      v9 = [v7 isEqual:v8];
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
  v3 = [(ILClassificationReportRequest *)self extensionIdentifier];
  v4 = [v3 hash];
  v5 = [(ILClassificationReportRequest *)self jsonDictionary];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (ILClassificationReportRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = NSStringFromSelector(sel_jsonDictionary);
  v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];

  v16 = [(ILClassificationReportRequest *)self initWithExtensionIdentifier:v7 jsonDictionary:v15];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILClassificationReportRequest *)self extensionIdentifier];
  v6 = NSStringFromSelector(sel_extensionIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(ILClassificationReportRequest *)self jsonDictionary];
  v7 = NSStringFromSelector(sel_jsonDictionary);
  [v4 encodeObject:v8 forKey:v7];
}

@end