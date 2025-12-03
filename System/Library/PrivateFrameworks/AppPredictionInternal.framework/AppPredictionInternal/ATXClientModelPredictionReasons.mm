@interface ATXClientModelPredictionReasons
+ (id)clientModelPredictionReasonsBundlePath;
- (ATXClientModelPredictionReasons)init;
- (id)actionAnchorReasonForAnchorType:(id)type;
- (id)actionHeuristicReasonForHeuristicName:(id)name;
- (id)appAnchorReasonForAnchorType:(id)type;
- (id)appMagicalMomentReasonForAnchorType:(int64_t)type;
@end

@implementation ATXClientModelPredictionReasons

- (ATXClientModelPredictionReasons)init
{
  v7.receiver = self;
  v7.super_class = ATXClientModelPredictionReasons;
  v2 = [(ATXClientModelPredictionReasons *)&v7 init];
  if (v2)
  {
    v3 = +[ATXClientModelPredictionReasons clientModelPredictionReasonsBundlePath];
    v4 = v3;
    if (v3)
    {
      v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];
    }

    bundle = v2->_bundle;
    v2->_bundle = v3;
  }

  return v2;
}

+ (id)clientModelPredictionReasonsBundlePath
{
  v2 = [MEMORY[0x277CEB3C0] pathForResource:@"ATXClientModelPredictionReasons" ofType:&stru_2839A6058 isDirectory:1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(ATXClientModelPredictionReasons *)v5];
    }
  }

  return v3;
}

- (id)appMagicalMomentReasonForAnchorType:(int64_t)type
{
  v4 = [MEMORY[0x277D41FB8] predictedAnchorTypeToString:type];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"App_MagicalMoment_%@", v4];
  v6 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:v5];

  return v6;
}

- (id)appAnchorReasonForAnchorType:(id)type
{
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"App_Anchor_%@", type];
  v5 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:type];

  return v5;
}

- (id)actionHeuristicReasonForHeuristicName:(id)name
{
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"Action_Heuristic_%@", name];
  v5 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:name];

  return v5;
}

- (id)actionAnchorReasonForAnchorType:(id)type
{
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"Action_Anchor_%@", type];
  v5 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:type];

  return v5;
}

@end