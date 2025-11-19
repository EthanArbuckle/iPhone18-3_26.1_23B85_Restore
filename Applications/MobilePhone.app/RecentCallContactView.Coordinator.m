@interface RecentCallContactView.Coordinator
- (_TtCV11MobilePhone21RecentCallContactView11Coordinator)init;
- (void)didTapClose;
@end

@implementation RecentCallContactView.Coordinator

- (void)didTapClose
{
  v2 = *((swift_isaMask & self->super.isa) + 0x58);
  v5 = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtCV11MobilePhone21RecentCallContactView11Coordinator)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for RecentCallContactView.Coordinator();
  return [(RecentCallContactView.Coordinator *)&v4 init];
}

@end