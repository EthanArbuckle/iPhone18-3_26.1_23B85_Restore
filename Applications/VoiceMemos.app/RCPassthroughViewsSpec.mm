@interface RCPassthroughViewsSpec
+ (id)passthroughViewsSpecWithTopLevelView:(id)view includeTopLevelView:(BOOL)levelView;
- (UIView)topLevelView;
@end

@implementation RCPassthroughViewsSpec

+ (id)passthroughViewsSpecWithTopLevelView:(id)view includeTopLevelView:(BOOL)levelView
{
  levelViewCopy = levelView;
  viewCopy = view;
  v6 = objc_opt_new();
  [v6 setTopLevelView:viewCopy];

  [v6 setIncludeTopLevelView:levelViewCopy];

  return v6;
}

- (UIView)topLevelView
{
  WeakRetained = objc_loadWeakRetained(&self->_topLevelView);

  return WeakRetained;
}

@end