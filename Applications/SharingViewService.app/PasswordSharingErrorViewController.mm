@interface PasswordSharingErrorViewController
- (_TtC18SharingViewService34PasswordSharingErrorViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PasswordSharingErrorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008E0C8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10008E7F8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10008E980(disappear);
}

- (_TtC18SharingViewService34PasswordSharingErrorViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_type] = 1;
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_model];
  v6 = type metadata accessor for PasswordSharingErrorViewController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 12) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(PasswordSharingErrorViewController *)&v8 initWithContentView:view];
}

@end