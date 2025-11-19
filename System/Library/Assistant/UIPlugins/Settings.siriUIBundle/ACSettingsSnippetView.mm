@interface ACSettingsSnippetView
- (ACSettingsSnippetView)initWithFrame:(CGRect)a3;
@end

@implementation ACSettingsSnippetView

- (ACSettingsSnippetView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ACSettingsSnippetView;
  v3 = [(ACSettingsSnippetView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ACSettingsSnippetView *)v3 setPreservesSuperviewLayoutMargins:1];
  }

  return v4;
}

@end