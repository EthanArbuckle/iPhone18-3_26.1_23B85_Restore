@interface ADLogAnalyticsResponse
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ADLogAnalyticsResponse

+ (id)options
{
  if (options_once_8 != -1)
  {
    +[ADLogAnalyticsResponse options];
  }

  v3 = options_sOptions_8;

  return v3;
}

void __33__ADLogAnalyticsResponse_options__block_invoke()
{
  v0 = options_sOptions_8;
  options_sOptions_8 = &unk_285104D80;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADLogAnalyticsResponse;
  v4 = [(ADLogAnalyticsResponse *)&v8 description];
  v5 = [(ADLogAnalyticsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end