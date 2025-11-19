@interface _ASWebsiteNameDictionary
+ (id)sanitizedDataFromDeserializedData:(id)a3;
- (NSString)description;
- (_ASWebsiteNameDictionary)initWithSnapshotData:(id)a3 error:(id *)a4;
- (id)websiteNameForDomain:(id)a3;
@end

@implementation _ASWebsiteNameDictionary

- (id)websiteNameForDomain:(id)a3
{
  v3 = [(NSDictionary *)self->_websiteNameDictionary objectForKeyedSubscript:a3];

  return v3;
}

- (_ASWebsiteNameDictionary)initWithSnapshotData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _ASWebsiteNameDictionary;
  v6 = [(_ASWebsiteNameDictionary *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:24 error:0];
    v11 = [v9 sanitizedDataFromDeserializedData:v10];
    websiteNameDictionary = v7->_websiteNameDictionary;
    v7->_websiteNameDictionary = v11;

    if (v7->_websiteNameDictionary)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)sanitizedDataFromDeserializedData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v4 = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62___ASWebsiteNameDictionary_sanitizedDataFromDeserializedData___block_invoke;
    v8[3] = &unk_1E7AF80C0;
    v8[4] = &v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
    if (*(v10 + 24))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p count(websiteNameDictionary) = %zu>", v5, self, -[NSDictionary count](self->_websiteNameDictionary, "count")];;

  return v6;
}

@end