@interface ATXDailyOverviewOptions
- (ATXDailyOverviewOptions)initWithCoder:(id)coder;
- (ATXDailyOverviewOptions)initWithFocusFilter:(int64_t)filter isModernDashboardLayout:(BOOL)layout;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDailyOverviewOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDailyOverviewOptions

- (ATXDailyOverviewOptions)initWithFocusFilter:(int64_t)filter isModernDashboardLayout:(BOOL)layout
{
  v10.receiver = self;
  v10.super_class = ATXDailyOverviewOptions;
  v6 = [(ATXDailyOverviewOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_focusFilter = filter;
    v6->_isModernDashboardLayout = layout;
    v8 = v6;
  }

  return v7;
}

- (ATXDailyOverviewOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"focusFilter"];
  v6 = [coderCopy decodeBoolForKey:@"isModernDashboardLayout"];

  return [(ATXDailyOverviewOptions *)self initWithFocusFilter:v5 isModernDashboardLayout:v6];
}

- (void)encodeWithCoder:(id)coder
{
  focusFilter = self->_focusFilter;
  coderCopy = coder;
  [coderCopy encodeInteger:focusFilter forKey:@"focusFilter"];
  [coderCopy encodeBool:self->_isModernDashboardLayout forKey:@"isModernDashboardLayout"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDailyOverviewOptions *)self isEqualToATXDailyOverviewOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDailyOverviewOptions:(id)options
{
  optionsCopy = options;
  focusFilter = [optionsCopy focusFilter];
  if (focusFilter == [(ATXDailyOverviewOptions *)self focusFilter])
  {
    isModernDashboardLayout = [optionsCopy isModernDashboardLayout];
    v7 = isModernDashboardLayout ^ [(ATXDailyOverviewOptions *)self isModernDashboardLayout]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end