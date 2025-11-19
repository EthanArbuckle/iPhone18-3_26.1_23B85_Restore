@interface MenuButton
- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithCoder:(id)a3;
- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithFrame:(CGRect)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
@end

@implementation MenuButton

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for MenuButton();
  v6 = a3;
  v7 = a4;
  v8 = v14.receiver;
  v9 = [(MenuButton *)&v14 _contextMenuInteraction:v6 styleForMenuWithConfiguration:v7];
  v10 = v9;
  if (v9)
  {
    [v9 setPreferredEdgeInsets_];
    [v10 setPreferredAttachmentEdge_];
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent_];

    [v10 setPreferredBackgroundColor_];
    v7 = v8;
    v8 = v12;
  }

  return v10;
}

- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MenuButton();
  return [(MenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MenuButton();
  v4 = a3;
  v5 = [(MenuButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end