@interface WeakPaperPageWrapper
- (BOOL)isEqual:(id)equal;
- (_TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper)init;
- (int64_t)hash;
@end

@implementation WeakPaperPageWrapper

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = WeakPaperPageWrapper.isEqual(_:)(v8);

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sypSgMd);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_3<TaggedPaperPage> and conformance WeakTagged_3<A>, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (_TtC8PaperKitP33_F9BA2F3895C2005D59C823F72F32582820WeakPaperPageWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end