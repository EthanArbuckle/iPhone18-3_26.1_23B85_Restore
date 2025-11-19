@interface ATXActivitySuggestion
- (ATXActivitySuggestion)initWithActivity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXActivitySuggestion:(id)a3;
@end

@implementation ATXActivitySuggestion

- (ATXActivitySuggestion)initWithActivity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXActivitySuggestion;
  v6 = [(ATXActivitySuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activity, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivitySuggestion *)self isEqualToATXActivitySuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivitySuggestion:(id)a3
{
  activity = self->_activity;
  v4 = [a3 activity];
  LOBYTE(activity) = [(ATXActivity *)activity isEqual:v4];

  return activity;
}

@end