@interface PPTRunner
+ (_TtC5Books9PPTRunner)shared;
+ (void)setShared:(id)a3;
- (BOOL)runTestWithName:(id)a3 options:(id)a4;
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

+ (void)setShared:(id)a3
{
  v3 = qword_100AD1550;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_100B232B8;
  qword_100B232B8 = v4;
}

- (BOOL)runTestWithName:(id)a3 options:(id)a4
{
  v5 = sub_1007A2254();
  v7 = v6;
  v8 = sub_1007A2044();
  v9 = self;
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