@interface HeadphoneSiriViewController
- (_TtC20HeadphoneProxService27HeadphoneSiriViewController)initWithContentView:(id)view;
@end

@implementation HeadphoneSiriViewController

- (_TtC20HeadphoneProxService27HeadphoneSiriViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneSiriViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneSiriViewController_type] = 24;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneSiriViewController *)&v7 initWithContentView:view];
}

@end