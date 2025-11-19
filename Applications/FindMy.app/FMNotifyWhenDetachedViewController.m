@interface FMNotifyWhenDetachedViewController
- (void)doneAction;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMNotifyWhenDetachedViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1003E7E68();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMNotifyWhenDetachedViewController();
  v4 = v8.receiver;
  v5 = a3;
  [(FMNotifyWhenDetachedViewController *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (!v5 || v7 != [v5 userInterfaceStyle])
  {
    sub_1003EA940();
  }
}

- (void)doneAction
{
  v2 = self;
  sub_1003EAA50();
}

@end