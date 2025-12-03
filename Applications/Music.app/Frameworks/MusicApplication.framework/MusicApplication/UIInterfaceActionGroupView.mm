@interface UIInterfaceActionGroupView
- (id)newActionSeparatorView;
@end

@implementation UIInterfaceActionGroupView

- (id)newActionSeparatorView
{
  visualStyle = [(UIInterfaceActionGroupView *)self visualStyle];
  visualStyle2 = [(UIInterfaceActionGroupView *)self visualStyle];
  groupViewState = [visualStyle2 groupViewState];
  v6 = [visualStyle newActionSeparatorViewForGroupViewState:groupViewState];

  return v6;
}

@end