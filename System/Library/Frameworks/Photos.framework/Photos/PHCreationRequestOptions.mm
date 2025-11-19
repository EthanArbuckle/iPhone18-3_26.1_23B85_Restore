@interface PHCreationRequestOptions
- (PHCreationRequestOptions)initWithCoder:(id)a3;
- (PHCreationRequestOptions)initWithXPCDict:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeToXPCDict:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHCreationRequestOptions

- (id)description
{
  v9.receiver = self;
  v9.super_class = PHCreationRequestOptions;
  v3 = [(PHCreationRequestOptions *)&v9 description];
  v4 = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringValue];
    v7 = [v3 stringByAppendingFormat:@" rci=%@", v6];

    v3 = v7;
  }

  return v3;
}

- (PHCreationRequestOptions)initWithXPCDict:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PHCreationRequestOptions;
  v5 = [(PHCreationRequestOptions *)&v11 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(v4, "changeRequestOptions");
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

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v4, "changeRequestOptions", v7);

  v5 = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  v6 = [v5 archivalStringValue];

  PLXPCDictionarySetString();
}

- (PHCreationRequestOptions)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PHCreationRequestOptions;
  v3 = a3;
  v4 = [(PHCreationRequestOptions *)&v7 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"reservedCloudIdentifier", v7.receiver, v7.super_class}];

  [(PHCreationRequestOptions *)v4 setReservedCloudIdentifier:v5];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  [v4 encodeObject:v5 forKey:@"reservedCloudIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(PHCreationRequestOptions *)self reservedCloudIdentifier];
  [v4 setReservedCloudIdentifier:v5];

  return v4;
}

@end