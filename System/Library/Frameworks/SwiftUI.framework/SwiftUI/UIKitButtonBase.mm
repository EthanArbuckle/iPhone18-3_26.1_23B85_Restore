@interface UIKitButtonBase
- (_TtC7SwiftUI15UIKitButtonBase)initWithCoder:(id)coder;
- (_TtC7SwiftUI15UIKitButtonBase)initWithFrame:(CGRect)frame;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation UIKitButtonBase

- (_TtC7SwiftUI15UIKitButtonBase)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for UIKitButtonBase();
  return [(UIKitButtonBase *)&v9 initWithFrame:x, y, width, height];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  Strong = swift_unknownObjectWeakLoadStrong();
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (Strong)
  {
    UIKitButtonAdaptorCoordinator.menuWillShow(interaction:)(interactionCopy);
    swift_unknownObjectRelease();
  }

  v13.receiver = selfCopy;
  v13.super_class = type metadata accessor for UIKitButtonBase();
  [(UIKitButtonBase *)&v13 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animator];

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  Strong = swift_unknownObjectWeakLoadStrong();
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (Strong)
  {
    UIKitButtonAdaptorCoordinator.menuWillDismiss()();
    swift_unknownObjectRelease();
  }

  v13.receiver = selfCopy;
  v13.super_class = type metadata accessor for UIKitButtonBase();
  [(UIKitButtonBase *)&v13 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];

  swift_unknownObjectRelease();
}

- (_TtC7SwiftUI15UIKitButtonBase)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for UIKitButtonBase();
  coderCopy = coder;
  v6 = [(UIKitButtonBase *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end