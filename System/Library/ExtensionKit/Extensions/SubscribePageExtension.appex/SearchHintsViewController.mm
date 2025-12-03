@interface SearchHintsViewController
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SearchHintsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10054BD94();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10054C2E0(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10054C58C(change);
}

@end