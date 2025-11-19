@interface ATXDefaultWidgetSuggestion
- (ATXDefaultWidgetSuggestion)initWithType:(int64_t)a3;
@end

@implementation ATXDefaultWidgetSuggestion

- (ATXDefaultWidgetSuggestion)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ATXDefaultWidgetSuggestion;
  v4 = [(ATXDefaultWidgetSuggestion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_widgetType = a3;
    v6 = v4;
  }

  return v5;
}

@end