@interface ATXDailyOverviewOptions
- (ATXDailyOverviewOptions)initWithCoder:(id)a3;
- (ATXDailyOverviewOptions)initWithFocusFilter:(int64_t)a3 isModernDashboardLayout:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDailyOverviewOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDailyOverviewOptions

- (ATXDailyOverviewOptions)initWithFocusFilter:(int64_t)a3 isModernDashboardLayout:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = ATXDailyOverviewOptions;
  v6 = [(ATXDailyOverviewOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_focusFilter = a3;
    v6->_isModernDashboardLayout = a4;
    v8 = v6;
  }

  return v7;
}

- (ATXDailyOverviewOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"focusFilter"];
  v6 = [v4 decodeBoolForKey:@"isModernDashboardLayout"];

  return [(ATXDailyOverviewOptions *)self initWithFocusFilter:v5 isModernDashboardLayout:v6];
}

- (void)encodeWithCoder:(id)a3
{
  focusFilter = self->_focusFilter;
  v5 = a3;
  [v5 encodeInteger:focusFilter forKey:@"focusFilter"];
  [v5 encodeBool:self->_isModernDashboardLayout forKey:@"isModernDashboardLayout"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDailyOverviewOptions *)self isEqualToATXDailyOverviewOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDailyOverviewOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 focusFilter];
  if (v5 == [(ATXDailyOverviewOptions *)self focusFilter])
  {
    v6 = [v4 isModernDashboardLayout];
    v7 = v6 ^ [(ATXDailyOverviewOptions *)self isModernDashboardLayout]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end