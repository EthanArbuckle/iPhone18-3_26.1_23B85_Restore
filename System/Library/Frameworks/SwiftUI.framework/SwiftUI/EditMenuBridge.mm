@interface EditMenuBridge
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
@end

@implementation EditMenuBridge

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  v4 = (self + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu);
  if (*&self->editMenuPresentationSeed[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_presentedMenu] == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4[3];
    v6 = v4[4];
    v7 = v4[1];
    v8 = v4[2];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = specialized EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(configurationCopy);

  return v10;
}

@end