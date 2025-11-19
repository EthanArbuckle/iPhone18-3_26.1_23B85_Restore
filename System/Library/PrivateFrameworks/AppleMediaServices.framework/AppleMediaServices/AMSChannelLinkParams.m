@interface AMSChannelLinkParams
+ (id)_queryDictionaryFromString:(id)a3;
- (AMSChannelLinkParams)initWithCoder:(id)a3;
- (AMSChannelLinkParams)initWithString:(id)a3;
- (NSString)adamId;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSChannelLinkParams

- (AMSChannelLinkParams)initWithString:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AMSChannelLinkParams;
  v6 = [(AMSChannelLinkParams *)&v10 init];
  if (v6)
  {
    v7 = [objc_opt_class() _queryDictionaryFromString:v5];
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;

    objc_storeStrong(&v6->_linkParamsString, a3);
  }

  return v6;
}

- (NSString)adamId
{
  v2 = [(AMSChannelLinkParams *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"adamId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_queryDictionaryFromString:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setQuery:v3];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 value];
        v13 = [v11 name];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSChannelLinkParams *)self dictionary];
  [v4 encodeObject:v5 forKey:@"dictionary"];

  v6 = [(AMSChannelLinkParams *)self linkParamsString];
  [v4 encodeObject:v6 forKey:@"linkParamsString"];
}

- (AMSChannelLinkParams)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSChannelLinkParams;
  v5 = [(AMSChannelLinkParams *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkParamsString"];
    linkParamsString = v5->_linkParamsString;
    v5->_linkParamsString = v9;
  }

  return v5;
}

@end