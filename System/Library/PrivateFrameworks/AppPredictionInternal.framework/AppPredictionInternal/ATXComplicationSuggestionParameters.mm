@interface ATXComplicationSuggestionParameters
+ (id)sharedInstance;
- (ATXComplicationSuggestionParameters)init;
- (BOOL)alwaysUseFallbackSets;
- (BOOL)showPreviewsInPosterGallery;
- (id)appsToPriorsMapping;
- (id)inlineComplicationsToPriorsMapping;
- (id)modularComplicationsToPriorsMapping;
@end

@implementation ATXComplicationSuggestionParameters

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_10 != -1)
  {
    +[ATXComplicationSuggestionParameters sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_12;

  return v3;
}

void __53__ATXComplicationSuggestionParameters_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_12;
  sharedInstance__pasExprOnceResult_12 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXComplicationSuggestionParameters)init
{
  v9.receiver = self;
  v9.super_class = ATXComplicationSuggestionParameters;
  v2 = [(ATXComplicationSuggestionParameters *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277CEB3C0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 dictionaryForResource:v5 ofType:@"plplist" specifiedABGroup:0];
    parameters = v2->_parameters;
    v2->_parameters = v6;
  }

  return v2;
}

- (id)appsToPriorsMapping
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppsToPriors"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)modularComplicationsToPriorsMapping
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ModularComplicationsToPriors"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)inlineComplicationsToPriorsMapping
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"InlineComplicationsToPriorsMapping"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (BOOL)alwaysUseFallbackSets
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AlwaysUseFallbackSets"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)showPreviewsInPosterGallery
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ShowPreviewsInPosterGallery"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end