@interface RCPassthroughViewsSpec
+ (id)passthroughViewsSpecWithTopLevelView:(id)a3 includeTopLevelView:(BOOL)a4;
- (UIView)topLevelView;
@end

@implementation RCPassthroughViewsSpec

+ (id)passthroughViewsSpecWithTopLevelView:(id)a3 includeTopLevelView:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setTopLevelView:v5];

  [v6 setIncludeTopLevelView:v4];

  return v6;
}

- (UIView)topLevelView
{
  WeakRetained = objc_loadWeakRetained(&self->_topLevelView);

  return WeakRetained;
}

@end