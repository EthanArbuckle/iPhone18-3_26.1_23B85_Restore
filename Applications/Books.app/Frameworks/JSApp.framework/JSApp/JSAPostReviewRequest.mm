@interface JSAPostReviewRequest
- (id)_httpBody;
- (void)send;
@end

@implementation JSAPostReviewRequest

- (void)send
{
  v3 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"submitURL"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"submitURL"];
    [(JSAStoreHTTPRequest *)self setUrl:v4];

    v5 = [(JSAPostReviewRequest *)self _httpBody];
    [(JSAStoreHTTPRequest *)self setBody:v5];

    [(JSAStoreHTTPRequest *)self setMethod:@"POST"];
    v9.receiver = self;
    v9.super_class = JSAPostReviewRequest;
    [(JSAStoreHTTPRequest *)&v9 send];
  }

  else
  {
    v6 = [(JSAStoreHTTPRequest *)self onResponse];

    if (v6)
    {
      v8 = +[JSABridge sharedInstance];
      v7 = [(JSAStoreHTTPRequest *)self onResponse];
      [v8 enqueueValueCall:v7 arguments:&off_BA8D8 file:@"JSAPostReviewRequest.m" line:49];
    }
  }
}

- (id)_httpBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"rating"];

  if (v4)
  {
    objc_opt_class();
    v5 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"rating"];
    v6 = BUDynamicCast();

    if (v6)
    {
      objc_opt_class();
      v7 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"rating"];
      v8 = BUDynamicCast();

      [v8 floatValue];
      v10 = v9;
    }

    else
    {
      objc_opt_class();
      v11 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"rating"];
      v12 = BUDynamicCast();

      if (!v12)
      {
        v15 = 0.0;
        goto LABEL_7;
      }

      objc_opt_class();
      v8 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"rating"];
      v13 = BUDynamicCast();
      [v13 floatValue];
      v10 = v14;
    }

    v15 = v10;
LABEL_7:
    v16 = [NSString stringWithFormat:@"%.2f", *&v15];
    [v3 setObject:v16 forKey:@"rating"];
  }

  v17 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"body"];

  if (v17)
  {
    objc_opt_class();
    v18 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"body"];
    v19 = BUDynamicCast();

    if ([v19 length])
    {
      [v3 setObject:v19 forKey:@"body"];
    }
  }

  v20 = +[AMSDevice deviceGUID];

  if (v20)
  {
    v21 = +[AMSDevice deviceGUID];
    if (v21)
    {
      [v3 setObject:v21 forKey:@"guid"];
    }
  }

  v22 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"nickname"];

  if (v22)
  {
    objc_opt_class();
    v23 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"nickname"];
    v24 = BUDynamicCast();

    if ([v24 length])
    {
      [v3 setObject:v24 forKey:@"nickname"];
    }
  }

  v25 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"title"];

  if (v25)
  {
    objc_opt_class();
    v26 = [(NSDictionary *)self->metadata objectForKeyedSubscript:@"title"];
    v27 = BUDynamicCast();

    if ([v27 length])
    {
      [v3 setObject:v27 forKey:@"title"];
    }
  }

  v28 = [NSURL jsa_queryStringForParameters:v3 escapedValues:1];

  return v28;
}

@end