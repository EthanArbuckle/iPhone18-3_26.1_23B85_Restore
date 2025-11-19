@interface SRCarPlayCardViewController
- (BOOL)shouldHandleCardSectionEngagement:(id)a3;
- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLoad;
@end

@implementation SRCarPlayCardViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100092838();
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = qword_10018D798;
  v9 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006160(v4, qword_10018EE28);
  v5 = static os_log_type_t.info.getter();
  sub_10000AABC(v5, 0x10uLL, 0xD000000000000017, 0x8000000100116550, 0xD000000000000036, 0x8000000100116570);
  v6 = *&v9->super.isRightHandDrive[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_delegate];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v8(v9, ObjectType, v6);
  swift_unknownObjectRelease();
}

- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = self;
  sub_1000940F8(width, height);
}

- (BOOL)shouldHandleCardSectionEngagement:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100092EBC(a3);

  return 0;
}

@end