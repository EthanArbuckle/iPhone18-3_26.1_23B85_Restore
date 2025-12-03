@interface AirTagAppleIDViewController
- (_TtC18SharingViewService27AirTagAppleIDViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation AirTagAppleIDViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006A4D4();
}

- (_TtC18SharingViewService27AirTagAppleIDViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_imageName];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_onDoneURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&self->PRXCardContentViewController_opaque[v7], 1, 1, v8);
  v9 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_buttonText];
  *v9 = 0;
  *(v9 + 1) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(AirTagAppleIDViewController *)&v11 initWithContentView:view];
}

@end