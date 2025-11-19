@interface PlayerTimeControl.LiveTrack
+ (Class)layerClass;
- (_TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack)initWithCoder:(id)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation PlayerTimeControl.LiveTrack

+ (Class)layerClass
{
  sub_100009F78(0, &qword_10118B1C8);

  return swift_getObjCClassFromMetadata();
}

- (_TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack_erasedPercentage) = 0x3FD0000000000000;
  v3 = OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() systemFillColor];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  if (a3)
  {
    v4 = self;
    v5 = a3;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = self;
    v5 = [v6 systemFillColor];
  }

  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor) = v5;
  sub_100009F78(0, &qword_101180C98);
  v9 = a3;
  v10 = v5;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_100310DCC();
  }
}

@end