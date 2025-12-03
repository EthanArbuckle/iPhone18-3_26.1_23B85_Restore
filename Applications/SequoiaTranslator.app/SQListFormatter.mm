@interface SQListFormatter
- (SQListFormatter)initWithLocale:(id)locale style:(id)style;
@end

@implementation SQListFormatter

- (SQListFormatter)initWithLocale:(id)locale style:(id)style
{
  v8.receiver = self;
  v8.super_class = SQListFormatter;
  style = [(SQListFormatter *)&v8 initWithLocale:locale, style];
  v5 = style;
  if (style)
  {
    v6 = style;
  }

  return v5;
}

@end