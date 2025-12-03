@interface GradientView
+ (Class)layerClass;
- (_TtC22AudioMessagesExtension12GradientView)initWithCoder:(id)coder;
- (_TtC22AudioMessagesExtension12GradientView)initWithFrame:(CGRect)frame;
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_3094C(0, &qword_82118);

  return swift_getObjCClassFromMetadata();
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v6 = sub_42978();
  v8 = v7;
  layerCopy = layer;
  selfCopy = self;
  v11 = GradientView.action(for:forKey:)(layerCopy, v6, v8);

  return v11;
}

- (_TtC22AudioMessagesExtension12GradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GradientView();
  return [(GradientView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22AudioMessagesExtension12GradientView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GradientView();
  coderCopy = coder;
  v5 = [(GradientView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end