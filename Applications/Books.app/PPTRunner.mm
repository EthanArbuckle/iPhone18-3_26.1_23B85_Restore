@interface PPTRunner
+ (_TtC5Books9PPTRunner)shared;
+ (void)setShared:(id)shared;
- (BOOL)runTestWithName:(id)name options:(id)options;
- (_TtC5Books9PPTRunner)init;
@end

@implementation PPTRunner

+ (_TtC5Books9PPTRunner)shared
{
  if (qword_100AD1550 != -1)
  {
    swift_once();
  }

  v3 = qword_100B232B8;

  return v3;
}

+ (void)setShared:(id)shared
{
  v3 = qword_100AD1550;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v6 = sharedCopy;
    swift_once();
    sharedCopy = v6;
  }

  v5 = qword_100B232B8;
  qword_100B232B8 = sharedCopy;
}

- (BOOL)runTestWithName:(id)name options:(id)options
{
  v5 = sub_1007A2254();
  v7 = v6;
  v8 = sub_1007A2044();
  selfCopy = self;
  LOBYTE(v5) = sub_1003F2694(v5, v7, v8);

  return v5 & 1;
}

- (_TtC5Books9PPTRunner)init
{
  *(&self->super.isa + OBJC_IVAR____TtC5Books9PPTRunner_currentTestRunner) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC5Books9PPTRunner_testCaseQueue) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PPTRunner();
  return [(PPTRunner *)&v3 init];
}

@end