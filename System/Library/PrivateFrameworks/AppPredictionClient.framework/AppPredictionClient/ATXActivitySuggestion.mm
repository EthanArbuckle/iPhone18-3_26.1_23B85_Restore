@interface ATXActivitySuggestion
- (ATXActivitySuggestion)initWithActivity:(id)activity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXActivitySuggestion:(id)suggestion;
@end

@implementation ATXActivitySuggestion

- (ATXActivitySuggestion)initWithActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = ATXActivitySuggestion;
  v6 = [(ATXActivitySuggestion *)&v9 init];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivitySuggestion *)self isEqualToATXActivitySuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivitySuggestion:(id)suggestion
{
  activity = self->_activity;
  activity = [suggestion activity];
  LOBYTE(activity) = [(ATXActivity *)activity isEqual:activity];

  return activity;
}

@end