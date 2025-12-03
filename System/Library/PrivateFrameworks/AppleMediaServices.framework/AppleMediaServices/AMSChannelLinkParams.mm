@interface AMSChannelLinkParams
+ (id)_queryDictionaryFromString:(id)string;
- (AMSChannelLinkParams)initWithCoder:(id)coder;
- (AMSChannelLinkParams)initWithString:(id)string;
- (NSString)adamId;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSChannelLinkParams

- (AMSChannelLinkParams)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = AMSChannelLinkParams;
  v6 = [(AMSChannelLinkParams *)&v10 init];
  if (v6)
  {
    v7 = [objc_opt_class() _queryDictionaryFromString:stringCopy];
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;

    objc_storeStrong(&v6->_linkParamsString, string);
  }

  return v6;
}

- (NSString)adamId
{
  dictionary = [(AMSChannelLinkParams *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"adamId"];

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

+ (id)_queryDictionaryFromString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = objc_opt_new();
  [v4 setQuery:stringCopy];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  queryItems = [v4 queryItems];
  v7 = [queryItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(queryItems);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        value = [v11 value];
        name = [v11 name];
        [v5 setObject:value forKeyedSubscript:name];
      }

      v8 = [queryItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionary = [(AMSChannelLinkParams *)self dictionary];
  [coderCopy encodeObject:dictionary forKey:@"dictionary"];

  linkParamsString = [(AMSChannelLinkParams *)self linkParamsString];
  [coderCopy encodeObject:linkParamsString forKey:@"linkParamsString"];
}

- (AMSChannelLinkParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AMSChannelLinkParams;
  v5 = [(AMSChannelLinkParams *)&v12 init];
  if (v5)
  {
    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkParamsString"];
    linkParamsString = v5->_linkParamsString;
    v5->_linkParamsString = v9;
  }

  return v5;
}

@end