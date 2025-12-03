@interface MenuButton
- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithCoder:(id)coder;
- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithFrame:(CGRect)frame;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
@end

@implementation MenuButton

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for MenuButton();
  interactionCopy = interaction;
  configurationCopy = configuration;
  v8 = v14.receiver;
  v9 = [(MenuButton *)&v14 _contextMenuInteraction:interactionCopy styleForMenuWithConfiguration:configurationCopy];
  v10 = v9;
  if (v9)
  {
    [v9 setPreferredEdgeInsets_];
    [v10 setPreferredAttachmentEdge_];
    blackColor = [objc_opt_self() blackColor];
    colorWithAlphaComponent_ = [blackColor colorWithAlphaComponent_];

    [v10 setPreferredBackgroundColor_];
    configurationCopy = v8;
    v8 = colorWithAlphaComponent_;
  }

  return v10;
}

- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MenuButton();
  return [(MenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC27ActionButtonConfigurationUI10MenuButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MenuButton();
  coderCopy = coder;
  v5 = [(MenuButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end