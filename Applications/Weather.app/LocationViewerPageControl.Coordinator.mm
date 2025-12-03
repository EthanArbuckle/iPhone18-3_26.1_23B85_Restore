@interface LocationViewerPageControl.Coordinator
- (void)pageDidChange:(id)change;
@end

@implementation LocationViewerPageControl.Coordinator

- (void)pageDidChange:(id)change
{
  changeCopy = change;

  sub_1005D6CCC(changeCopy);
}

@end