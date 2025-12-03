@interface ATXAdoptionTypeToBudgetMapper
- (ATXAdoptionTypeToBudgetMapper)initWithAbuseControlConfig:(id)config;
- (int64_t)durationLimitForAdoptionType:(unint64_t)type;
- (int64_t)hardQuotaForAdoptionType:(unint64_t)type;
- (int64_t)softQuotaForAdoptionType:(unint64_t)type;
@end

@implementation ATXAdoptionTypeToBudgetMapper

- (ATXAdoptionTypeToBudgetMapper)initWithAbuseControlConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = ATXAdoptionTypeToBudgetMapper;
  v6 = [(ATXAdoptionTypeToBudgetMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_abuseControlConfig, config);
  }

  return v7;
}

- (int64_t)softQuotaForAdoptionType:(unint64_t)type
{
  switch(type)
  {
    case 3uLL:
      return [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig defaultSoftRotationQuotaForDiverseSchemas];
    case 2uLL:
      return [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig defaultSoftRotationQuotaForLikelyDiverseSchemas];
    case 1uLL:
      return [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig defaultSoftRotationQuotaForSingleScoreSchemas];
  }

  return 0;
}

- (int64_t)hardQuotaForAdoptionType:(unint64_t)type
{
  switch(type)
  {
    case 3uLL:
      return [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig defaultHardRotationQuotaForDiverseSchemas];
    case 2uLL:
      return [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig defaultHardRotationQuotaForLikelyDiverseSchemas];
    case 1uLL:
      return [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig defaultHardRotationQuotaForSingleScoreSchemas];
  }

  return 0;
}

- (int64_t)durationLimitForAdoptionType:(unint64_t)type
{
  abuseControlConfig = self->_abuseControlConfig;
  switch(type)
  {
    case 3uLL:
      return [(ATXTimelineAbuseControlConfig *)abuseControlConfig defaultDurationLimitForDiverseSchemas];
    case 2uLL:
      return [(ATXTimelineAbuseControlConfig *)abuseControlConfig defaultDurationLimitForLikelyDiverseSchemas];
    case 1uLL:
      return [(ATXTimelineAbuseControlConfig *)abuseControlConfig defaultDurationLimitForSingleScoreSchemas];
  }

  return [(ATXTimelineAbuseControlConfig *)abuseControlConfig defaultDurationLimit];
}

@end