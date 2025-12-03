@interface DisplayLink
- (_TtC23MonogramPosterExtension11DisplayLink)init;
- (void)frameWithDisplaylink:(id)displaylink;
@end

@implementation DisplayLink

- (void)frameWithDisplaylink:(id)displaylink
{
  swift_getKeyPath();
  swift_getKeyPath();
  displaylinkCopy = displaylink;
  selfCopy = self;
  v7 = displaylinkCopy;
  sub_100026720();
  type metadata accessor for DisplayLink();
  sub_10000F2D8();
  sub_1000266D0();
  sub_1000266E0();
}

- (_TtC23MonogramPosterExtension11DisplayLink)init
{
  v3 = sub_100003598(&qword_100041540, &qword_100029668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC23MonogramPosterExtension11DisplayLink__update;
  v13 = 0;
  sub_100003598(&qword_100041538, &qword_1000295C8);
  sub_100026700();
  (*(v4 + 32))(self + v8, v7, v3);
  *(&self->super.isa + OBJC_IVAR____TtC23MonogramPosterExtension11DisplayLink_displayLink) = 0;
  v9 = type metadata accessor for DisplayLink();
  v12.receiver = self;
  v12.super_class = v9;
  return [(DisplayLink *)&v12 init];
}

@end