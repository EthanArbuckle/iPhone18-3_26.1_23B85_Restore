@interface KeyboardShortcutBridge
- (_TtC7SwiftUI22KeyboardShortcutBridge)init;
- (void)_performShortcutKeyCommand:(id)command;
@end

@implementation KeyboardShortcutBridge

- (_TtC7SwiftUI22KeyboardShortcutBridge)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_currentBindings;
  v5 = MEMORY[0x1E69E7CC0];
  *v4 = MEMORY[0x1E69E7CC0];
  *(v4 + 2) = -1;
  v6 = self + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings;
  *v6 = v5;
  *(v6 + 2) = -1;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap) = MEMORY[0x1E69E7CC8];
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(KeyboardShortcutBridge *)&v8 init];
}

- (void)_performShortcutKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  KeyboardShortcutBridge._performShortcutKeyCommand(_:)(commandCopy);
}

@end