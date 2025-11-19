@interface UIKitButtonBase
- (_TtC7SwiftUI15UIKitButtonBase)initWithCoder:(id)a3;
- (_TtC7SwiftUI15UIKitButtonBase)initWithFrame:(CGRect)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation UIKitButtonBase

- (_TtC7SwiftUI15UIKitButtonBase)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for UIKitButtonBase();
  return [(UIKitButtonBase *)&v9 initWithFrame:x, y, width, height];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = self;
  if (Strong)
  {
    UIKitButtonAdaptorCoordinator.menuWillShow(interaction:)(v10);
    swift_unknownObjectRelease();
  }

  v13.receiver = v12;
  v13.super_class = type metadata accessor for UIKitButtonBase();
  [(UIKitButtonBase *)&v13 contextMenuInteraction:v10 willDisplayMenuForConfiguration:v11 animator:a5];

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = self;
  if (Strong)
  {
    UIKitButtonAdaptorCoordinator.menuWillDismiss()();
    swift_unknownObjectRelease();
  }

  v13.receiver = v12;
  v13.super_class = type metadata accessor for UIKitButtonBase();
  [(UIKitButtonBase *)&v13 contextMenuInteraction:v10 willEndForConfiguration:v11 animator:a5];

  swift_unknownObjectRelease();
}

- (_TtC7SwiftUI15UIKitButtonBase)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for UIKitButtonBase();
  v5 = a3;
  v6 = [(UIKitButtonBase *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end