@interface ShadowView
- (_TtC22AudioMessagesExtension10ShadowView)initWithCoder:(id)a3;
- (_TtC22AudioMessagesExtension10ShadowView)initWithFrame:(CGRect)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
@end

@implementation ShadowView

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = sub_42978();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = ShadowView.action(for:forKey:)(v9, v6, v8);

  return v11;
}

- (_TtC22AudioMessagesExtension10ShadowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShadowView();
  return [(ShadowView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22AudioMessagesExtension10ShadowView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShadowView();
  v4 = a3;
  v5 = [(ShadowView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end