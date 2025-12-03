@interface PHCreationRequestOptions
- (PHCreationRequestOptions)initWithCoder:(id)coder;
- (PHCreationRequestOptions)initWithXPCDict:(id)dict;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHCreationRequestOptions

- (id)description
{
  v9.receiver = self;
  v9.super_class = PHCreationRequestOptions;
  v3 = [(PHCreationRequestOptions *)&v9 description];
  reservedCloudIdentifier = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  v5 = reservedCloudIdentifier;
  if (reservedCloudIdentifier)
  {
    stringValue = [reservedCloudIdentifier stringValue];
    v7 = [v3 stringByAppendingFormat:@" rci=%@", stringValue];

    v3 = v7;
  }

  return v3;
}

- (PHCreationRequestOptions)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v11.receiver = self;
  v11.super_class = PHCreationRequestOptions;
  v5 = [(PHCreationRequestOptions *)&v11 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(dictCopy, "changeRequestOptions");
    if (v6)
    {
      v7 = PLStringFromXPCDictionary();
      if (v7)
      {
        v8 = [[PHCloudIdentifier alloc] initWithArchivalStringValue:v7];
        reservedCloudIdentifier = v5->_reservedCloudIdentifier;
        v5->_reservedCloudIdentifier = v8;
      }
    }
  }

  return v5;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(dictCopy, "changeRequestOptions", v7);

  reservedCloudIdentifier = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  archivalStringValue = [reservedCloudIdentifier archivalStringValue];

  PLXPCDictionarySetString();
}

- (PHCreationRequestOptions)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PHCreationRequestOptions;
  coderCopy = coder;
  v4 = [(PHCreationRequestOptions *)&v7 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"reservedCloudIdentifier", v7.receiver, v7.super_class}];

  [(PHCreationRequestOptions *)v4 setReservedCloudIdentifier:v5];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reservedCloudIdentifier = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  [coderCopy encodeObject:reservedCloudIdentifier forKey:@"reservedCloudIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  reservedCloudIdentifier = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  [v4 setReservedCloudIdentifier:reservedCloudIdentifier];

  return v4;
}

@end