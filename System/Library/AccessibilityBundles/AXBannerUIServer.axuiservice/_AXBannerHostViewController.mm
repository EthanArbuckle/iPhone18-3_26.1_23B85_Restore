@interface _AXBannerHostViewController
- (void)loadView;
@end

@implementation _AXBannerHostViewController

- (void)loadView
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, v5, v7}];
  v8 = +[UIColor clearColor];
  [v9 setBackgroundColor:v8];

  [(_AXBannerHostViewController *)self setView:v9];
}

@end