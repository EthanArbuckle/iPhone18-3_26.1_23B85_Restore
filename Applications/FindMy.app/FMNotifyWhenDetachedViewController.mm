@interface FMNotifyWhenDetachedViewController
- (void)doneAction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation FMNotifyWhenDetachedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003E7E68();
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMNotifyWhenDetachedViewController();
  v4 = v8.receiver;
  changeCopy = change;
  [(FMNotifyWhenDetachedViewController *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (!changeCopy || userInterfaceStyle != [changeCopy userInterfaceStyle])
  {
    sub_1003EA940();
  }
}

- (void)doneAction
{
  selfCopy = self;
  sub_1003EAA50();
}

@end