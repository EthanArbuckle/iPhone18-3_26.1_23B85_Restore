@interface AMSEngagementAppResponseModel
+ (BOOL)_shouldEvictDefinition:(id)a3 created:(id)a4;
- (AMSEngagementAppResponseModel)initWithCacheObject:(id)a3;
- (AMSEngagementAppResponseModel)initWithData:(id)a3 cacheInfo:(id)a4;
- (BOOL)matchesEvent:(id)a3;
- (NSDictionary)responseData;
- (NSString)cacheKey;
- (id)exportObject;
@end

@implementation AMSEngagementAppResponseModel

- (AMSEngagementAppResponseModel)initWithCacheObject:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_9;
  }

  v16.receiver = self;
  v16.super_class = AMSEngagementAppResponseModel;
  self = [(AMSEngagementAppResponseModel *)&v16 init];
  if (!self)
  {
    goto LABEL_10;
  }

  v5 = [v4 objectForKeyedSubscript:@"created"];
  v6 = objc_opt_respondsToSelector();
  v7 = 0.0;
  if (v6)
  {
    [v5 doubleValue];
  }

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v7];
  created = self->_created;
  self->_created = v8;

  v10 = [v4 objectForKeyedSubscript:@"definition"];
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;

  definition = self->_definition;
  self->_definition = v11;

  v13 = [objc_opt_class() _shouldEvictDefinition:self->_definition created:self->_created];
  if (v13)
  {
LABEL_9:
    v14 = 0;
  }

  else
  {
LABEL_10:
    self = self;
    v14 = self;
  }

  return v14;
}

- (AMSEngagementAppResponseModel)initWithData:(id)a3 cacheInfo:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = AMSEngagementAppResponseModel;
  v8 = [(AMSEngagementAppResponseModel *)&v17 init];
  if (v8)
  {
    if (![v6 count] || !objc_msgSend(v7, "count"))
    {
      v15 = 0;
      goto LABEL_13;
    }

    v9 = [MEMORY[0x1E695DF00] now];
    created = v8->_created;
    v8->_created = v9;

    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    v18[0] = @"data";
    v18[1] = @"cacheInfo";
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    v19[0] = v11;
    v19[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    definition = v8->_definition;
    v8->_definition = v13;
  }

  v15 = v8;
LABEL_13:

  return v15;
}

- (NSString)cacheKey
{
  v2 = [(AMSEngagementAppResponseModel *)self definition];
  v3 = [v2 objectForKeyedSubscript:@"cacheInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"key"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = v6;
      v8 = v7;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v9 UUIDString];

  v7 = 0;
LABEL_9:

  return v8;
}

- (id)exportObject
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"created";
  v3 = MEMORY[0x1E696AD98];
  v4 = [(AMSEngagementAppResponseModel *)self created];
  [v4 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  v11[1] = @"definition";
  v12[0] = v5;
  v6 = [(AMSEngagementAppResponseModel *)self definition];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v8 = v6;
  }

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (NSDictionary)responseData
{
  v2 = [(AMSEngagementAppResponseModel *)self definition];
  v3 = [v2 objectForKeyedSubscript:@"data"];

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

- (BOOL)matchesEvent:(id)a3
{
  v4 = a3;
  v5 = [(AMSEngagementAppResponseModel *)self definition];
  v6 = [v5 objectForKeyedSubscript:@"cacheInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKeyedSubscript:@"filter"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[AMSEngagementAppEventFilterModel sharedRegexCache];
  v11 = [AMSEngagementAppEventFilterModel matchEvent:v4 toFilter:v9 withCache:v10];

  return v11;
}

+ (BOOL)_shouldEvictDefinition:(id)a3 created:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"cacheInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKeyedSubscript:@"duration"];
  v9 = objc_opt_respondsToSelector();
  v10 = 0.0;
  if (v9)
  {
    [v8 doubleValue];
  }

  v13 = 1;
  if (v5)
  {
    v11 = fmin(v10, 2592000.0);
    [v5 timeIntervalSinceNow];
    if (v11 >= -v12)
    {
      v13 = 0;
    }
  }

  return v13;
}

@end