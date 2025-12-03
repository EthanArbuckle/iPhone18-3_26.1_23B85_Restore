@interface TVSetupAuthViewController
- (_TtC16TVSetupUIService25TVSetupAuthViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVSetupAuthViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100004B0C(appear);
}

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_100004DA8(entryCopy);
}

- (_TtC16TVSetupUIService25TVSetupAuthViewController)initWithContentView:(id)view
{
  *&self->delegate[OBJC_IVAR____TtC16TVSetupUIService25TVSetupAuthViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for TVSetupAuthViewController();
  return [(TVSetupAuthViewController *)&v6 initWithContentView:view];
}

@end