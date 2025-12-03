@interface CRLiOSTitlesPageControlScrollView
- (BOOL)touchesShouldCancelInContentView:(id)view;
@end

@implementation CRLiOSTitlesPageControlScrollView

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLiOSTitlesPageControlScrollView;
    v5 = [(CRLiOSTitlesPageControlScrollView *)&v7 touchesShouldCancelInContentView:viewCopy];
  }

  return v5;
}

@end