@interface EditMenuBridge
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
@end

@implementation EditMenuBridge

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
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

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = specialized EditMenuBridge.editMenuInteraction(_:menuFor:suggestedActions:)(v8);

  return v10;
}

@end