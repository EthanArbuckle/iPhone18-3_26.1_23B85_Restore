@interface ADOptOutResponse
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ADOptOutResponse

+ (id)options
{
  if (options_once_9 != -1)
  {
    +[ADOptOutResponse options];
  }

  v3 = options_sOptions_9;

  return v3;
}

void __27__ADOptOutResponse_options__block_invoke()
{
  v0 = options_sOptions_9;
  options_sOptions_9 = &unk_285104DA8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADOptOutResponse;
  v4 = [(ADOptOutResponse *)&v8 description];
  v5 = [(ADOptOutResponse *)self dictionaryRepresentation];
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