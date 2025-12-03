@interface UIView.Spacer
+ (Class)layerClass;
- (_TtCE16MusicApplicationCSo6UIView6Spacer)initWithCoder:(id)coder;
- (_TtCE16MusicApplicationCSo6UIView6Spacer)initWithFrame:(CGRect)frame;
@end

@implementation UIView.Spacer

+ (Class)layerClass
{
  sub_13C80(0, &qword_DFCB90);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata layerClass];
}

- (_TtCE16MusicApplicationCSo6UIView6Spacer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtCE16MusicApplicationCSo6UIView6Spacer_debugName);
  v9 = _s6SpacerCMa();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(UIView.Spacer *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCE16MusicApplicationCSo6UIView6Spacer)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCE16MusicApplicationCSo6UIView6Spacer_debugName);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = _s6SpacerCMa();
  coderCopy = coder;
  v6 = [(UIView.Spacer *)&v8 initWithCoder:coderCopy];

  return v6;
}

@end