@interface ShadowView
- (_TtC22AudioMessagesExtension10ShadowView)initWithCoder:(id)coder;
- (_TtC22AudioMessagesExtension10ShadowView)initWithFrame:(CGRect)frame;
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation ShadowView

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v6 = sub_42978();
  v8 = v7;
  layerCopy = layer;
  selfCopy = self;
  v11 = ShadowView.action(for:forKey:)(layerCopy, v6, v8);

  return v11;
}

- (_TtC22AudioMessagesExtension10ShadowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShadowView();
  return [(ShadowView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22AudioMessagesExtension10ShadowView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShadowView();
  coderCopy = coder;
  v5 = [(ShadowView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end