@interface UIInterfaceActionGroupView
- (id)newActionSeparatorView;
@end

@implementation UIInterfaceActionGroupView

- (id)newActionSeparatorView
{
  v3 = [(UIInterfaceActionGroupView *)self visualStyle];
  v4 = [(UIInterfaceActionGroupView *)self visualStyle];
  v5 = [v4 groupViewState];
  v6 = [v3 newActionSeparatorViewForGroupViewState:v5];

  return v6;
}

@end