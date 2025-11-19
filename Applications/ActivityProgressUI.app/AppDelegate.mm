@interface AppDelegate
- (_TtC18ActivityProgressUI11AppDelegate)init;
@end

@implementation AppDelegate

- (_TtC18ActivityProgressUI11AppDelegate)init
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI11AppDelegate_backgroundActivitySessionsController;
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  v4 = qword_10005C670;
  *(&self->super.isa + v3) = qword_10005C670;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppDelegate();
  v5 = v4;
  return [(AppDelegate *)&v7 init];
}

@end