@interface UIKitFocusableViewResponderItem
- (BOOL)canBecomeFocused;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (NSString)swiftui_focusGroupIdentifier;
- (UIFocusEffect)focusEffect;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIResponder)nextResponder;
- (_TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem)init;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation UIKitFocusableViewResponderItem

- (UIFocusEnvironment)parentFocusEnvironment
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)canBecomeFocused
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + 248))
    {
      __break(1u);
      return Strong;
    }

    v3 = *(Strong + 236);
  }

  else
  {
    v3 = 0;
  }

  LOBYTE(Strong) = v3;
  return Strong;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized UIKitFocusableViewResponderItem.didUpdateFocus(in:with:)(v6);
}

- (CGRect)frame
{
  v2 = self;
  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
    v5 = WeakValue[1];
    v6 = WeakValue[2];
    v7 = WeakValue[3];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  AGGraphSetUpdate();
  static Update.end()();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (NSArray)preferredFocusEnvironments
{
  type metadata accessor for UIFocusEnvironment();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (UIResponder)nextResponder
{
  v2 = self;
  v3 = UIKitFocusableViewResponderItem.next.getter();

  return v3;
}

- (NSString)swiftui_focusGroupIdentifier
{
  v2 = self;
  v3 = UIKitFocusableViewResponderItem.swiftui_focusGroupIdentifier.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x18D00C850](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setNeedsFocusUpdate
{
  type metadata accessor for UIFocusSystem();
  v5 = self;
  v3 = static UIFocusSystem.focusSystem(for:)();
  if (v3)
  {
    v4 = v3;
    [v3 requestFocusUpdateToEnvironment_];
  }
}

- (void)updateFocusIfNeeded
{
  type metadata accessor for UIFocusSystem();
  v4 = self;
  v3 = static UIFocusSystem.focusSystem(for:)();
  [v3 updateFocusIfNeeded];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = UIKitFocusableViewResponderItem.shouldUpdateFocus(in:)(v4);

  return self & 1;
}

- (UIFocusEffect)focusEffect
{
  v2 = self;
  v3 = UIKitFocusableViewResponderItem.focusEffect.getter();

  return v3;
}

- (_TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end