@interface ATXClientModelSuggestionRouter
- (ATXClientModelSuggestionRouter)init;
- (BOOL)isRoutingConfigurationLoaded;
- (BOOL)shouldPersistCacheForClientModel:(id)a3;
- (BOOL)shouldRouteClientToInfoSuggestionEngine:(id)a3;
@end

@implementation ATXClientModelSuggestionRouter

- (ATXClientModelSuggestionRouter)init
{
  v6.receiver = self;
  v6.super_class = ATXClientModelSuggestionRouter;
  v2 = [(ATXClientModelSuggestionRouter *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    routingConfig = v2->_routingConfig;
    v2->_routingConfig = v3;
  }

  return v2;
}

- (BOOL)isRoutingConfigurationLoaded
{
  routingConfig = self->_routingConfig;
  if (!routingConfig)
  {
    return 0;
  }

  v3 = [(NSDictionary *)routingConfig objectForKeyedSubscript:@"InfoClients"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)shouldRouteClientToInfoSuggestionEngine:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_routingConfig objectForKeyedSubscript:@"InfoClients"];
  v6 = [v5 objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = [v7 objectForKeyedSubscript:@"shouldRoute"];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:v4];
      v10 = [v9 objectForKeyedSubscript:@"shouldRoute"];
      LOBYTE(v6) = [v10 BOOLValue];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)shouldPersistCacheForClientModel:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_routingConfig objectForKeyedSubscript:@"InfoClients"];
  v6 = [v5 objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = [v7 objectForKeyedSubscript:@"shouldPersistCache"];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:v4];
      v10 = [v9 objectForKeyedSubscript:@"shouldPersistCache"];
      LOBYTE(v6) = [v10 BOOLValue];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end