@interface ATXActivitySetUpSuggestion
- (ATXActivitySetUpSuggestion)initWithActivity:(id)activity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXActivitySetUpSuggestion:(id)suggestion;
@end

@implementation ATXActivitySetUpSuggestion

- (ATXActivitySetUpSuggestion)initWithActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = ATXActivitySetUpSuggestion;
  v6 = [(ATXActivitySetUpSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, activity);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivitySetUpSuggestion *)self isEqualToATXActivitySetUpSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivitySetUpSuggestion:(id)suggestion
{
  activity = self->_activity;
  activity = [suggestion activity];
  LOBYTE(activity) = [(ATXActivity *)activity isEqual:activity];

  return activity;
}

@end