@interface MetalView
+ (Class)layerClass;
- (_TtC8SOSBuddy9MetalView)initWithCoder:(id)coder;
- (_TtC8SOSBuddy9MetalView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MetalView

+ (Class)layerClass
{
  sub_1000FFA28();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000FF668();
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  layer = [(MetalView *)selfCopy layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    traitCollection = [(MetalView *)selfCopy traitCollection];
    [traitCollection displayScale];
    v8 = v7;

    [v5 setContentsScale:v8];
    v9 = layer;
  }

  else
  {
    v9 = selfCopy;
    selfCopy = layer;
  }
}

- (_TtC8SOSBuddy9MetalView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MetalView();
  return [(MetalView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8SOSBuddy9MetalView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MetalView();
  coderCopy = coder;
  v5 = [(MetalView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end