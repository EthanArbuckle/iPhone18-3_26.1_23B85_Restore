@interface SABaseAceObject(AnalyticsContextVending)
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SABaseAceObject(AnalyticsContextVending)

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = &off_1F05AA1A8;
  objc_msgSendSuper2(&v13, sel_af_addEntriesToAnalyticsContext_, v4);
  metricsContext = [self metricsContext];
  v6 = metricsContext;
  if (metricsContext)
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [metricsContext dataUsingEncoding:4];
    v12 = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:&v12];
    v10 = v12;

    if (!v9 || v10)
    {
      [v4 setObject:v6 forKey:@"metricsContext"];
    }

    else
    {
      [v4 setObject:v9 forKey:@"metricsContext"];
      v10 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end