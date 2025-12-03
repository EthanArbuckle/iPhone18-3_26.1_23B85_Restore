@interface __EntityAccessibilityWrapper
- (BOOL)entitySupportsAccessibilityActivateAction;
- (CGRect)calculateScreenBoundingRectIn:(id)in;
- (NSString)entityDescription;
- (_TtC10RealityKit28__EntityAccessibilityWrapper)init;
- (unint64_t)entityAccessibilityTraits;
- (unint64_t)identifier;
@end

@implementation __EntityAccessibilityWrapper

- (unint64_t)identifier
{
  result = swift_weakLoadStrong();
  if (result)
  {
    selfCopy = self;
    v5 = Entity.id.getter();

    return v5;
  }

  return result;
}

- (CGRect)calculateScreenBoundingRectIn:(id)in
{
  if (swift_weakLoadStrong())
  {
    inCopy = in;
    selfCopy = self;
    Entity.__calculateScreenBoundingRect(in:)(inCopy);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (NSString)entityDescription
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    selfCopy = self;
    v5 = MEMORY[0x1E12F2AB0]();
    v7 = v6;

    if (v7)
    {
      v8 = MEMORY[0x1E12F3F80](v5, v7);

      Strong = v8;
    }

    else
    {
      Strong = 0;
    }
  }

  return Strong;
}

- (unint64_t)entityAccessibilityTraits
{
  v3 = type metadata accessor for AccessibilityComponent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  selfCopy = self;
  Entity.accessibilityComponent.getter(v6);
  v8 = AccessibilityComponent.traitsRawValue.getter();

  (*(v4 + 8))(v6, v3);
  return v8;
}

- (BOOL)entitySupportsAccessibilityActivateAction
{
  selfCopy = self;
  v3 = __EntityAccessibilityWrapper.entitySupportsAccessibilityActivateAction.getter();

  return v3 & 1;
}

- (_TtC10RealityKit28__EntityAccessibilityWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end