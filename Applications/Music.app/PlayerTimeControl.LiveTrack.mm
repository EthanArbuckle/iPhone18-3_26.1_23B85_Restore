@interface PlayerTimeControl.LiveTrack
+ (Class)layerClass;
- (_TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack)initWithCoder:(id)coder;
- (void)setBackgroundColor:(id)color;
@end

@implementation PlayerTimeControl.LiveTrack

+ (Class)layerClass
{
  sub_100009F78(0, &qword_10118B1C8);

  return swift_getObjCClassFromMetadata();
}

- (_TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack_erasedPercentage) = 0x3FD0000000000000;
  v3 = OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() systemFillColor];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setBackgroundColor:(id)color
{
  if (color)
  {
    selfCopy = self;
    colorCopy = color;
  }

  else
  {
    v6 = objc_opt_self();
    selfCopy2 = self;
    colorCopy = [v6 systemFillColor];
  }

  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music17PlayerTimeControlP33_49F0BC05FDBB8FE791FA6BF39E9583189LiveTrack__backgroundColor) = colorCopy;
  sub_100009F78(0, &qword_101180C98);
  colorCopy2 = color;
  v10 = colorCopy;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_100310DCC();
  }
}

@end