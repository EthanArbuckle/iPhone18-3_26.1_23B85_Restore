@interface SearchHintsViewController
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SearchHintsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100602FF4();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100603540(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1006037EC(change);
}

@end