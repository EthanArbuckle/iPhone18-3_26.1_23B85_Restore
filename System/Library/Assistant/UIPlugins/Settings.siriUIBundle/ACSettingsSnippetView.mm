@interface ACSettingsSnippetView
- (ACSettingsSnippetView)initWithFrame:(CGRect)frame;
@end

@implementation ACSettingsSnippetView

- (ACSettingsSnippetView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ACSettingsSnippetView;
  v3 = [(ACSettingsSnippetView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ACSettingsSnippetView *)v3 setPreservesSuperviewLayoutMargins:1];
  }

  return v4;
}

@end