@interface ATXClientModelPredictionReasons
+ (id)clientModelPredictionReasonsBundlePath;
- (ATXClientModelPredictionReasons)init;
- (id)actionAnchorReasonForAnchorType:(id)a3;
- (id)actionHeuristicReasonForHeuristicName:(id)a3;
- (id)appAnchorReasonForAnchorType:(id)a3;
- (id)appMagicalMomentReasonForAnchorType:(int64_t)a3;
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

- (id)appMagicalMomentReasonForAnchorType:(int64_t)a3
{
  v4 = [MEMORY[0x277D41FB8] predictedAnchorTypeToString:a3];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"App_MagicalMoment_%@", v4];
  v6 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:v5];

  return v6;
}

- (id)appAnchorReasonForAnchorType:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"App_Anchor_%@", a3];
  v5 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:v4];

  return v5;
}

- (id)actionHeuristicReasonForHeuristicName:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Action_Heuristic_%@", a3];
  v5 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:v4];

  return v5;
}

- (id)actionAnchorReasonForAnchorType:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Action_Anchor_%@", a3];
  v5 = [(ATXClientModelPredictionReasons *)self localizedStringForKey:v4];

  return v5;
}

@end