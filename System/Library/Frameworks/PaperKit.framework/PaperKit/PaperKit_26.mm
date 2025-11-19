uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageScratchToDeleteEvent.ContentType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageScratchToDeleteEvent.ContentType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys()
{
  MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MagicPaperUsageScratchToDeleteEvent.undoEvent()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    return result;
  }

  result = outlined init with copy of MagicPaperUsageScratchToDeleteEvent(v1, v9);
  v12 = 1;
  v4 = *(v1 + 56);
  v5 = __OFSUB__(0, v4);
  v6 = -v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v6;
  v7 = *(v1 + 64);
  v5 = __OFSUB__(0, v7);
  v8 = -v7;
  if (v5)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = v8;
  return outlined init with take of MagicPaperUsageScratchToDeleteEvent(v9, a1);
}

uint64_t MagicPaperUsageScratchToDeleteEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD25UsageScratchToDeleteEventV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[6] = *v3;
    v10[5] = 9;
    lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void protocol witness for AnalyticsEvent.finalize() in conformance MagicPaperUsageScratchToDeleteEvent()
{
  if ((*(v0 + 73) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    specialized MagicPaperUsageAnalyticsEvent.initMagicPaperUsageAnalyticsEvent(from:)(Strong);

    *(v0 + 73) = 1;
  }
}

unint64_t instantiation function for generic protocol witness table for MagicPaperUsageScratchToDeleteEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType);
  }

  return result;
}

uint64_t specialized MagicPaperUsageScratchToDeleteEvent.ContentType.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t specialized MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void CanvasCollaborationAvatarView.resetAutohideTimer()()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v9[4] = partial apply for closure #1 in CanvasCollaborationAvatarView.resetAutohideTimer();
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v9[3] = &block_descriptor_33;
  v5 = _Block_copy(v9);
  v6 = v0;

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
  _Block_release(v5);
  v8 = *&v0[v1];
  *&v0[v1] = v7;
}

id CanvasCollaborationAvatarView.init(name:color:boundingSuperview:fetchImage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted] = 0;
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] = 0;
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow] = 0;
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint] = 0;
  v15 = &v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name];
  *v15 = a1;
  v15[1] = a2;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_color] = a3;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_boundingSuperview] = a4;
  v16 = &v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_fetchImage];
  *v16 = a5;
  v16[1] = a6;
  v17 = &v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorPoint];
  *v17 = 0;
  v17[1] = 0;
  v34.receiver = v7;
  v34.super_class = ObjectType;
  v18 = a3;
  v19 = a4;

  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v20 setAlpha_];
  v21 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:sel_handleTap_];
  [v22 addGestureRecognizer_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) initWithTarget:v22 action:sel_handleHoverWithRecognizer_];
  [v22 addGestureRecognizer_];

  v25 = CanvasCollaborationAvatarView.imageView.getter();
  [v22 addSubview_];

  v26 = CanvasCollaborationAvatarView.label.getter();
  [v22 addSubview_];

  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D405B630;
  *(v28 + 32) = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint, &selRef_topAnchor);
  *(v28 + 40) = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint, &selRef_bottomAnchor);
  *(v28 + 48) = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint, &selRef_leadingAnchor);
  *(v28 + 56) = CanvasCollaborationAvatarView.imageViewWidthConstraint.getter();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];

  CanvasCollaborationAvatarView.update(animated:)(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D4058CF0;
  v31 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v32 = MEMORY[0x1E69DC2B0];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  MEMORY[0x1DA6CDBA0](v30, sel_update);

  swift_unknownObjectRelease();

  return v22;
}

id CanvasCollaborationAvatarView.imageView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id CanvasCollaborationAvatarView.label.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setTextColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id CanvasCollaborationAvatarView.imageViewTopConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v7 = CanvasCollaborationAvatarView.imageView.getter();
    v8 = [v7 *a2];

    v9 = [v2 *a2];
    v10 = [v8 constraintEqualToAnchor_];

    v11 = *&v2[v3];
    *&v2[v3] = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

id CanvasCollaborationAvatarView.imageViewWidthConstraint.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint];
  }

  else
  {
    v4 = CanvasCollaborationAvatarView.imageView.getter();
    v5 = [v4 widthAnchor];

    v6 = v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded];
    v7 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v7 lineHeight];
    v9 = v8;

    if (v9 + 6.0 > 30.0)
    {
      v10 = v9 + 6.0;
    }

    else
    {
      v10 = 30.0;
    }

    if (v6 == 1)
    {
      v11 = [v0 traitCollection];
      v12 = [v11 preferredContentSizeCategory];

      LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v13 = 10.0;
      if ((v11 & 1) == 0)
      {
        v13 = 6.0;
      }

      v10 = v10 - v13;
    }

    v14 = [v5 constraintEqualToConstant_];

    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void CanvasCollaborationAvatarView.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CanvasCollaborationAvatarView.didMoveToWindow()()
{
  v1 = [v0 window];
  if (v1)
  {

    if ((v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow] & 1) == 0)
    {
      v2 = CanvasCollaborationAvatarView.adjustedFrame.getter();
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v9 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted;
      v10 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v10 lineHeight];

      v11 = v0[v9];
      v12 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v12 lineHeight];
      v14 = v13;

      v15 = v14 + 6.0;
      v16 = 3.0;
      if (v11)
      {
        v16 = -3.0;
      }

      v17 = 10.0;
      if (v11)
      {
        v17 = -10.0;
      }

      v18 = v15 / v16;
      if (v15 > 30.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v22.origin.x = v2;
      v22.origin.y = v4;
      v22.size.width = v6;
      v22.size.height = v8;
      v23 = CGRectOffset(v22, 0.0, v19);
      [v0 setFrame_];
      v21.a = 1.0;
      v21.b = 0.0;
      v21.c = 0.0;
      v21.d = 1.0;
      v21.tx = 0.0;
      v21.ty = 0.0;
      CGAffineTransformScale(&v20, &v21, 0.5, 0.5);
      v21 = v20;
      [v0 setTransform_];
      [v0 setAlpha_];
      [v0 layoutIfNeeded];
      CanvasCollaborationAvatarView.update(animated:)(1);
    }
  }
}

double CanvasCollaborationAvatarView.adjustedFrame.getter()
{
  CanvasCollaborationAvatarView.contentWidth.getter();
  v2 = v1;
  v3 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v3 lineHeight];

  v4 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorPoint] + v2 * -0.5;
  v5 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_boundingSuperview];
  v6 = [v0 superview];
  [v5 convertPoint:v6 fromView:{v4, 0.0}];
  v8 = v7;

  v9 = [v0 superview];
  [v5 convertPoint:v9 fromView:{v2 + v4, 0.0}];
  v11 = v10;

  [v5 bounds];
  Width = CGRectGetWidth(v15);
  if (v8 < 8.0)
  {
    return v4 + 8.0 - v8;
  }

  v13 = Width + -8.0;
  if (v13 < v11)
  {
    return v4 - vabdd_f64(v13, v11);
  }

  return v4;
}

void CanvasCollaborationAvatarView.update(animated:)(char a1)
{
  v3 = [v1 superview];
  if (v3)
  {

    if ((v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview] & 1) == 0)
    {
      CanvasCollaborationAvatarView.updateImage()();
      CanvasCollaborationAvatarView.updateLabelPresence(removeIfHidden:)(0);
      v4 = CanvasCollaborationAvatarView.label.getter();
      v5 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v4 setFont_];

      [v1 setBackgroundColor_];
      if (a1)
      {
        v6 = 0.375;
      }

      else
      {
        v6 = 0.0;
      }

      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      v8 = v1;
      v9 = [v8 layer];
      [v9 setMasksToBounds_];

      v10 = [v8 layer];
      v11 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v11 lineHeight];
      v13 = v12;

      v14 = v13 + 6.0;
      if (v13 + 6.0 <= 30.0)
      {
        v14 = 30.0;
      }

      [v10 setCornerRadius_];

      v15 = *&v8[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name];
      v16 = *&v8[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name + 8];
      v17 = *&v8[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label];
      v18 = MEMORY[0x1DA6CCED0](v15, v16);
      [v17 setText_];

      [v8 layoutIfNeeded];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v8;
      v29 = partial apply for closure #2 in CanvasCollaborationAvatarView.update(animated:);
      v30 = v20;
      v25 = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v28 = &block_descriptor_24_0;
      v21 = _Block_copy(&v25);
      v22 = v8;

      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for closure #1 in CanvasCollaborationAvatarView.update(animated:);
      *(v23 + 24) = v7;
      v29 = partial apply for closure #2 in closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:);
      v30 = v23;
      v25 = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v28 = &block_descriptor_30;
      v24 = _Block_copy(&v25);

      [v19 animateWithDuration:0 delay:v21 usingSpringWithDamping:v24 initialSpringVelocity:v6 options:0.0 animations:0.85 completion:0.0];

      _Block_release(v24);
      _Block_release(v21);
    }
  }
}

id closure #2 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:)(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 setAlpha_];
  [a1 setFrame_];
  v12.a = 1.0;
  v12.b = 0.0;
  v12.c = 0.0;
  v12.d = 1.0;
  v12.tx = 0.0;
  v12.ty = 0.0;
  CGAffineTransformScale(&v11, &v12, 0.5, 0.5);
  v12 = v11;
  return [a1 setTransform_];
}

void CanvasCollaborationAvatarView.contentWidth.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  if (v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] == 1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v4 = v0[v1];
    v5 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v5 lineHeight];

    if (v4 == 1)
    {
      v6 = [v0 traitCollection];
      v7 = [v6 preferredContentSizeCategory];

      UIContentSizeCategory.isAccessibilityCategory.getter();
    }

    CanvasCollaborationAvatarView.nameWidth.getter();
    if (v0[v1] == 1)
    {
      v8 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v8 lineHeight];
    }

    [*&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_boundingSuperview] frame];
  }

  else
  {
    v9 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v9 lineHeight];
  }
}

double CanvasCollaborationAvatarView.nameWidth.getter()
{
  v1 = MEMORY[0x1DA6CCED0](*(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name), *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = v3;
  v5 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 sizeWithAttributes_];
  v8 = v7;

  return ceil(v8);
}

double CanvasCollaborationAvatarView.labelWidth.getter()
{
  CanvasCollaborationAvatarView.contentWidth.getter();
  v2 = v1;
  v3 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  v4 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) == 1 && ((v5 = [v0 traitCollection], v6 = objc_msgSend(v5, sel_preferredContentSizeCategory), v5, LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter(), v6, (v5 & 1) == 0) ? (v4 = 3.0) : (v4 = 5.0), *(v0 + v3) == 1))
  {
    v7 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v7 lineHeight];
    v9 = v8;

    if (v9 + 6.0 > 30.0)
    {
      v10 = v9 + 6.0;
    }

    else
    {
      v10 = 30.0;
    }

    v11 = [v0 traitCollection];
    v12 = [v11 preferredContentSizeCategory];

    LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v13 = 10.0;
    if ((v11 & 1) == 0)
    {
      v13 = 6.0;
    }

    v14 = v10 - v13;
  }

  else
  {
    v15 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v15 lineHeight];
    v17 = v16;

    if (v17 + 6.0 > 30.0)
    {
      v14 = v17 + 6.0;
    }

    else
    {
      v14 = 30.0;
    }
  }

  v18 = 0.0;
  if (*(v0 + v3) == 1)
  {
    v19 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v19 lineHeight];
    v21 = v20;

    v22 = v21 + 6.0;
    if (v21 + 6.0 <= 30.0)
    {
      v22 = 30.0;
    }

    v23 = v22 * 0.5 * 0.6;
    v18 = 12.0;
    if (v23 > 12.0)
    {
      v18 = v23;
    }
  }

  return v2 - v4 - v14 + -6.0 - v18;
}

id CanvasCollaborationAvatarView.labelWidthConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = CanvasCollaborationAvatarView.label.getter();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void CanvasCollaborationAvatarView.updateImage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = CanvasCollaborationAvatarView.imageView.getter();
  v29 = [v4 image];

  v5 = v29;
  if (v29)
  {
  }

  else
  {
    v6 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
    v7 = v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded];
    v8 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v8 lineHeight];
    v10 = v9;

    if (v10 + 6.0 > 30.0)
    {
      v11 = v10 + 6.0;
    }

    else
    {
      v11 = 30.0;
    }

    if (v7 == 1)
    {
      v12 = [v0 traitCollection];
      v13 = [v12 preferredContentSizeCategory];

      LOBYTE(v12) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v14 = 10.0;
      if ((v12 & 1) == 0)
      {
        v14 = 6.0;
      }

      v11 = v11 - v14;
    }

    v15 = v0[v6];
    v16 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v16 lineHeight];
    v18 = v17;

    if (v18 + 6.0 > 30.0)
    {
      v19 = v18 + 6.0;
    }

    else
    {
      v19 = 30.0;
    }

    if (v15 == 1)
    {
      v20 = [v0 traitCollection];
      v21 = [v20 preferredContentSizeCategory];

      LOBYTE(v20) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v22 = 6.0;
      if (v20)
      {
        v22 = 10.0;
      }

      v19 = v19 - v22;
    }

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = v24;
    *(v26 + 40) = v11;
    *(v26 + 48) = v19;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasCollaborationAvatarView.updateImage(), v26);
  }
}

void CanvasCollaborationAvatarView.updateLabelPresence(removeIfHidden:)(char a1)
{
  if (v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] != 1)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    isa = CanvasCollaborationAvatarView.label.getter();
    [isa removeFromSuperview];
    goto LABEL_6;
  }

  v2 = CanvasCollaborationAvatarView.label.getter();
  v17 = [v2 superview];

  v3 = v17;
  if (!v17)
  {
    v4 = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint, &selRef_widthAnchor);
    [v4 setActive_];

    v5 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label;
    [v1 addSubview_];
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D405B630;
    v8 = [*&v1[v5] leadingAnchor];
    v9 = CanvasCollaborationAvatarView.imageView.getter();
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
    *(v7 + 32) = v11;
    v12 = [*&v1[v5] centerYAnchor];
    v13 = [*&v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView] centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    v15 = *&v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint];
    *(v7 + 40) = v14;
    *(v7 + 48) = v15;
    v16 = v15;
    *(v7 + 56) = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint, &selRef_heightAnchor);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints_];
LABEL_6:
    v3 = isa;
  }
}

void closure #1 in CanvasCollaborationAvatarView.update(animated:)(void *a1)
{
  CanvasCollaborationAvatarView.updateLabelPresence(removeIfHidden:)(1);
  v2 = [a1 window];
  if (v2)
  {

    *(a1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow) = 1;
  }
}

id closure #2 in CanvasCollaborationAvatarView.update(animated:)(void *a1)
{
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  [a1 setTransform_];
  CanvasCollaborationAvatarView.updateFrameAndConstraints()();
  [a1 setAlpha_];
  v2 = CanvasCollaborationAvatarView.label.getter();
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded))
  {
    v4 = 1.0;
  }

  [v2 setAlpha_];

  return [a1 layoutIfNeeded];
}

void CanvasCollaborationAvatarView.updateFrameAndConstraints()()
{
  [v0 setFrame_];
  v1 = CanvasCollaborationAvatarView.imageViewWidthConstraint.getter();
  v2 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  v3 = v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded];
  v4 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v4 lineHeight];
  v6 = v5;

  if (v6 + 6.0 > 30.0)
  {
    v7 = v6 + 6.0;
  }

  else
  {
    v7 = 30.0;
  }

  if (v3 == 1)
  {
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];

    LOBYTE(v8) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v10 = 10.0;
    if ((v8 & 1) == 0)
    {
      v10 = 6.0;
    }

    v7 = v7 - v10;
  }

  [v1 setConstant_];

  v11 = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint, &selRef_leadingAnchor);
  v12 = 0.0;
  v13 = 0.0;
  if (v0[v2] == 1)
  {
    v14 = [v0 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    LOBYTE(v14) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v13 = 3.0;
    if (v14)
    {
      v13 = 5.0;
    }
  }

  [v11 setConstant_];

  v16 = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint, &selRef_topAnchor);
  if (v0[v2] == 1)
  {
    v17 = [v0 traitCollection];
    v18 = [v17 preferredContentSizeCategory];

    LOBYTE(v17) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v17)
    {
      v12 = 5.0;
    }

    else
    {
      v12 = 3.0;
    }
  }

  [v16 setConstant_];

  v19 = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint, &selRef_bottomAnchor);
  v20 = 0.0;
  if (v0[v2] == 1)
  {
    v21 = [v0 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v20 = 3.0;
    if (v21)
    {
      v20 = 5.0;
    }
  }

  [v19 setConstant_];

  v23 = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint, &selRef_widthAnchor);
  v24 = CanvasCollaborationAvatarView.labelWidth.getter();
  if (v24 <= 0.0)
  {
    v24 = 0.0;
  }

  [v23 setConstant_];

  v28 = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint, &selRef_heightAnchor);
  v25 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v25 lineHeight];
  v27 = v26;

  [v28 setConstant_];
}

uint64_t closure #1 in CanvasCollaborationAvatarView.updateImage()(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  *(v6 + 40) = a6;
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasCollaborationAvatarView.updateImage(), v8, v7);
}

uint64_t closure #1 in CanvasCollaborationAvatarView.updateImage()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v7 = (*(Strong + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_fetchImage) + **(Strong + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_fetchImage));
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CanvasCollaborationAvatarView.updateImage();
    v3.n128_u64[0] = v0[6];
    v4.n128_u64[0] = v0[7];

    return v7(v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = v0[13];

  if (v1)
  {
    v2 = v0[13];
    v3 = v0[11];
    v4 = CanvasCollaborationAvatarView.imageView.getter();
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
    [v4 setImage_];
  }

  else
  {
    v3 = v0[11];
  }

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in CanvasCollaborationAvatarView.updateImage()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasCollaborationAvatarView.updateImage(), v4, v3);
}

void closure #1 in CanvasCollaborationAvatarView.resetAutohideTimer()(int a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview] = 1;
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted;
  v12 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v12 lineHeight];

  v13 = a2[v11];
  v14 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v14 lineHeight];
  v16 = v15;

  v17 = v16 + 6.0;
  v18 = 3.0;
  if (v13)
  {
    v18 = -3.0;
  }

  v19 = 10.0;
  if (v13)
  {
    v19 = -10.0;
  }

  v20 = v17 / v18;
  if (v17 > 30.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  v40 = CGRectOffset(v39, 0.0, v21);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  v26 = swift_allocObject();
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = a2;
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  v28[3] = x;
  v28[4] = y;
  v28[5] = width;
  v28[6] = height;
  v37 = partial apply for closure #2 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:);
  v38 = v28;
  v33 = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v36 = &block_descriptor_9_0;
  v29 = _Block_copy(&v33);
  v30 = a2;

  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:);
  *(v31 + 24) = v26;
  v37 = partial apply for closure #2 in StickerDragPreviewContainerView._animateDrop(alongside:completion:);
  v38 = v31;
  v33 = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v36 = &block_descriptor_15_0;
  v32 = _Block_copy(&v33);

  [v27 animateWithDuration:0 delay:v29 usingSpringWithDamping:v32 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];

  _Block_release(v32);
  _Block_release(v29);
}

void closure #1 in CanvasCollaborationAvatarView.resetAutocollapseTimer()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) == 1)
  {
    *(a2 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
    CanvasCollaborationAvatarView.update(animated:)(1);
    CanvasCollaborationAvatarView.resetAutohideTimer()();
  }
}

void CanvasCollaborationAvatarView.handleHover(recognizer:)(void *a1)
{
  v2 = [a1 state];
  if (v2 == 3)
  {
    if (*(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) != 1)
    {
      return;
    }

    *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  }

  else
  {
    if (v2 != 1 || (*(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) & 1) != 0)
    {
      return;
    }

    *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 1;
  }

  CanvasCollaborationAvatarView.update(animated:)(1);

  CanvasCollaborationAvatarView.resetAutohideTimer()();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized static CanvasCollaborationAvatarView.labelFont.getter()
{
  v0 = *MEMORY[0x1E69DDD80];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  [v1 pointSize];
  v3 = v2 * 2.99;
  v4 = objc_opt_self();
  [v1 pointSize];
  v5 = [v4 systemFontOfSize_weight_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v7 = [v6 scaledFontForFont:v5 maximumPointSize:v3];

  return v7;
}

id partial apply for closure #1 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 removeFromSuperview];
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CanvasCollaborationAvatarView.updateImage()(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasCollaborationAvatarView.updateImage()(v7, v8, a1, v4, v5, v6);
}

void specialized CanvasCollaborationAvatarView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized CanvasCollaborationAvatarView.handleTap(_:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] = (v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] & 1) == 0;
  CanvasCollaborationAvatarView.update(animated:)(1);
  CanvasCollaborationAvatarView.resetAutohideTimer()();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer;
    v3 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer];
    if (v3)
    {
      [v3 invalidate];
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v10[4] = partial apply for closure #1 in CanvasCollaborationAvatarView.resetAutocollapseTimer();
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
    v10[3] = &block_descriptor_44;
    v6 = _Block_copy(v10);
    v7 = v0;

    v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:2.5];
    _Block_release(v6);
    v9 = *&v0[v2];
    *&v0[v2] = v8;
  }
}

uint64_t CanvasGenerationTool.nameAndPointerDescription.getter()
{
  MEMORY[0x1DA6CD010](60, 0xE100000000000000);
  MEMORY[0x1DA6CD010](0xD000000000000014, 0x80000001D4081A50);
  MEMORY[0x1DA6CD010](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](15913, 0xE200000000000000);
  return 0;
}

Swift::Int PaperMarkupViewController.TouchMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode()
{
  result = lazy protocol witness table cache variable for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode;
  if (!lazy protocol witness table cache variable for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathV_Sits5NeverOTg503_s8g14Kit26Containerib86ViewC7indices33_C455AB4540897904C8BABCC4579676DBLL2ofSaySiGAA0D7MembersV_tF9Coherence9jk9V_SitAJ13eF19_10VyAA0sdE0VGXEfU_Tf1cn_n(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_SitMd);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - v6;
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v35[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v42 = v3;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v36 = a1 + 64;
    v37 = v8;
    v38 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v12;
      v48 = v16;
      v17 = *(a1 + 48);
      v18 = a1;
      v19 = v42;
      v20 = v45;
      v21 = v46;
      (*(v42 + 16))(v45, v17 + *(v42 + 72) * v11, v46);
      v22 = *(v44 + 48);
      v23 = v41;
      MEMORY[0x1DA6CB5C0](v21);
      *(v23 + v22) = 0;
      (*(v19 + 8))(v20, v21);
      v24 = v49;
      v50 = v49;
      v26 = *(v49 + 16);
      v25 = *(v49 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v24 = v50;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v24;
      result = outlined init with take of Range<AttributedString.Index>(v23, v24 + v27 + *(v43 + 72) * v26, &_s9Coherence9CRKeyPathV_SitMd);
      v13 = 1 << *(v18 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      a1 = v18;
      v10 = v38;
      v28 = *(v38 + 8 * v15);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v37;
      }

      else
      {
        v30 = v15 << 6;
        v31 = v15 + 1;
        v14 = v37;
        v32 = (v36 + 8 * v15);
        while (v31 < (v13 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v11, v48, 0);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v11, v48, 0);
      }

LABEL_4:
      v12 = v47 + 1;
      v11 = v13;
      if (v47 + 1 == v14)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 5);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v11;
          *v13 = v16;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t key path setter for ContainerCanvasElement.drawing : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of Date?(a1, &v11 - v8, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  return (*(v6 + 72))(v9, v5, v6);
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for CRKeyPath();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t ContainerCanvasElementView.subelements.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x540);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x548);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  CanvasElementView.canvasElement.getter(v10 - v7);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = *((v2 & v1) + 0x550);
  swift_getKeyPath();
  Capsule.subscript.getter();

  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall ContainerCanvasElementView.enterFormFillingMode()()
{
  v0 = ContainerCanvasElementView.canvas.getter();
  if (v0)
  {
    v14 = v0;
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x8C0))();
    if (v1)
    {
      v13 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        v3 = v2;
        MEMORY[0x1EEE9AC00](v2);
        type metadata accessor for Image(0);
        _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
        swift_getKeyPath();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v4 = v3 + direct field offset for CanvasElementViewController._formDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v4 + 8);
          ObjectType = swift_getObjectType();
          (*(v5 + 16))(v3, 1, ObjectType, v5);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v7 = v14;
LABEL_20:

        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A16DocumentPageViewCyAA0acD0VGMd);
      if (swift_dynamicCastClass())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          swift_getKeyPath();
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = &v9[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v11 = *(v10 + 1);
            v12 = swift_getObjectType();
            (*(v11 + 80))(v9, 1, v12, v11);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v7 = v13;
          goto LABEL_20;
        }

        v7 = v13;
LABEL_14:

        goto LABEL_20;
      }
    }

    v7 = v14;
    goto LABEL_14;
  }
}

void ContainerCanvasElementView.addCanvasElements<A>(_:)(uint64_t a1, void (**a2)(char *, void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v43 - v14;
  v56 = a2;
  v15 = a3;
  v16 = type metadata accessor for Capsule();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v43 - v19;
  v20 = ContainerCanvasElementView.canvas.getter();
  if (v20)
  {
    v44 = v18;
    v21 = MEMORY[0x1EEE9AC00](v20);
    *(&v43 - 6) = v56;
    *(&v43 - 5) = v15;
    *(&v43 - 4) = a4;
    *(&v43 - 3) = v5;
    *(&v43 - 2) = a1;
    *(&v43 - 1) = v22;
    v23 = MEMORY[0x1E69E7D40];
    v24 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x6E8);
    v45 = v22;
    v25 = v24(0, 0, partial apply for closure #1 in ContainerCanvasElementView.addCanvasElements<A>(_:), v21);
    (*((*v23 & *v5) + 0x520))(v25);
    if (MEMORY[0x1DA6CD240](a1, v16))
    {
      v26 = 0;
      v55 = (v17 + 8);
      v56 = (v17 + 16);
      v54 = (v46 + 6);
      v48 = "ressionType";
      v49 = (v46 + 4);
      v47 = v59;
      ++v46;
      v51 = a1;
      v52 = v12;
      v50 = v17;
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v17 + 16))(v57, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26, v16);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v42 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v44 != 8)
          {
            __break(1u);
            return;
          }

          aBlock[0] = v42;
          (*v56)(v57, aBlock, v16);
          swift_unknownObjectRelease();
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        v29 = v57;
        Capsule<>.sharedCanvasElement.getter(v16, a4);
        (*v55)(v29, v16);
        if ((*v54)(v12, 1, v13) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        }

        else
        {
          v30 = v53;
          (*v49)(v53, v12, v13);
          type metadata accessor for Analytics();
          inited = swift_initStaticObject();
          WeakTagged_10.tag.getter();
          v32 = v13;
          v33 = a4;
          v34 = v59[4];
          v35 = v60;
          v36 = swift_allocObject();
          *(v36 + 16) = inited;
          *(v36 + 24) = v34;
          *(v36 + 32) = v35;
          v37 = MEMORY[0x1DA6CCED0](0xD000000000000020, v48 | 0x8000000000000000);
          v38 = swift_allocObject();
          *(v38 + 16) = partial apply for implicit closure #1 in Analytics.recordAddCanvasElementEvent(type:);
          *(v38 + 24) = v36;
          v59[2] = closure #1 in Analytics.sendEventLazy(key:payload:)partial apply;
          v59[3] = v38;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v59[0] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
          v59[1] = &block_descriptor_63_0;
          v39 = _Block_copy(aBlock);

          a4 = v33;
          v13 = v32;
          a1 = v51;

          AnalyticsSendEventLazy();
          v40 = v39;
          v12 = v52;
          _Block_release(v40);

          v41 = v30;
          v17 = v50;
          (*v46)(v41, v13);
        }

        ++v26;
      }

      while (v28 != MEMORY[0x1DA6CD240](a1, v16));
    }
  }
}

uint64_t closure #1 in ContainerCanvasElementView.addCanvasElements<A>(_:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v10 = *a1;
  v11 = *MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v19 = *((v11 & v10) + 0x548);
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  v21 = a4;
  v22 = *((v11 & v10) + 0x550);
  v23 = a5;
  v24 = v18;
  v25 = a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x850))(0);
  CanvasElementView.canvasElement.getter(v15);
  v26[0] = 4;
  AnyCanvas.merge<A>(_:from:)(v15, v26, v20, v19);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.addCanvasElements<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *a1;
  v15 = Capsule.Ref.root.modify();
  v16 = ContainerCanvasElement.addCanvasElements<A, B>(_:capsule:)(a2, a1, *(v14 + *MEMORY[0x1E6995440]), a3, a4, a5, a6);
  result = v15(&v18, 0);
  *a7 = v16;
  return result;
}

void ContainerCanvasElementView.remove(members:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = v4;
  v9 = ContainerCanvasElementView.canvas.getter();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  specialized ContainerCanvasElementView.recordRemoveMembersAnalytics(_:)(a1);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x6E8))(0, 1, partial apply for closure #1 in ContainerCanvasElementView.remove(members:), v12);
  v14 = specialized ContainerCanvasElementView.formFillingView.getter();
  v78 = v10;
  if (!v14)
  {
    goto LABEL_41;
  }

  v15 = v14;
  v16 = [v10 undoManager];
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = v16;
  v76 = a1;
  v18 = specialized CanvasMembers.views(in:)(v10, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A16DocumentPageViewCyAA0acD0VGMd);
  v19 = v18 >> 62;
  v77 = v17;
  v79 = v15;
  if (!swift_dynamicCastClass())
  {
    goto LABEL_18;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v21 = Strong;
  v75 = v18 >> 62;
  if (v19)
  {
    goto LABEL_84;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v74 = v10;
    if (i)
    {
      v10 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1DA6CE0C0](v10, v18);
        }

        else
        {
          if (v10 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v23 = *(v18 + 8 * v10 + 32);
        }

        v24 = v23;
        v25 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_30;
        }

        [v21 axRemoveFormFieldFromHierarchy_];

        ++v10;
      }

      while (v25 != i);
    }

    v10 = v78;
    v19 = v75;
LABEL_18:
    if (!v19)
    {
      v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    while (1)
    {
      v26 = __CocoaSet.count.getter();
      if (!v26)
      {
        break;
      }

LABEL_20:
      v27 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1DA6CE0C0](v27, v18);
        }

        else
        {
          if (v27 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v28 = *(v18 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        [v28 removeFromSuperview];

        ++v27;
        if (v30 == v26)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

LABEL_33:
    v21 = OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields;
    swift_beginAccess();

    v31 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v21[v79], v18);

    v32 = *&v21[v79];
    v33 = v32 >> 62 ? __CocoaSet.count.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v77;
    if (v33 >= v31)
    {
      break;
    }

    __break(1u);
LABEL_84:
    ;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v31, v33, type metadata accessor for AnyCanvasElementView);
  swift_endAccess();
  a4 = swift_allocObject();
  a4[2].isa = v18;
  if (([v77 groupsByEvent] & 1) != 0 || objc_msgSend(v77, sel_groupingLevel) >= 1)
  {
    type metadata accessor for FormFillingView();
    NSUndoManager.registerUndo<A>(withTarget:handler:)();
  }

  else
  {
    [v77 beginUndoGrouping];
    type metadata accessor for FormFillingView();
    NSUndoManager.registerUndo<A>(withTarget:handler:)();
    [v77 endUndoGrouping];
  }

  v13 = MEMORY[0x1E69E7D40];
  a1 = v76;

LABEL_40:

LABEL_41:
  (*((*v13 & *v5) + 0x520))();
  v34 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v35 = *(v10 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v35)
  {
    __break(1u);
    goto LABEL_86;
  }

  v36 = *&v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  a4 = *&v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v37 = v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
  v80 = *&v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v38 = v35;
  specialized Set._subtract<A>(_:)(a1);
  specialized Set._subtract<A>(_:)(a2);
  CanvasElementResizeView.selection.setter(v36, v80, a4, v37);

  v39 = *(v10 + v34);
  if (!v39)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v40 = v39 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  v44 = *(v40 + 24);

  if ((_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v36, v41) & 1) == 0)
  {

    goto LABEL_49;
  }

  v45 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v80, v42);

  if ((v45 & 1) == 0)
  {
    goto LABEL_49;
  }

  if ((v37 & 1) == 0)
  {
    if (a4 == v43)
    {
      v66 = v44;
    }

    else
    {
      v66 = 1;
    }

    if (v66)
    {
      goto LABEL_49;
    }

LABEL_67:

    v47 = v78;
    goto LABEL_78;
  }

  if (v44)
  {
    goto LABEL_67;
  }

LABEL_49:
  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, miniMenuLogger);
  v47 = v78;
  a4 = v78;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = MEMORY[0x1E69E7D40];
  if (!v50)
  {

    v48 = a4;
LABEL_55:

    MEMORY[0x1EEE9AC00](v55);
    AnyCanvas.updateCanvasState(_:)();
    if ([a4 isFirstResponder])
    {

      goto LABEL_71;
    }

    v57 = *(v78 + v34);
    if (!v57)
    {
      goto LABEL_89;
    }

    v58 = v57;

    v59 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v59 >> 62)
    {
      v73 = __CocoaSet.count.getter();

      if (!v73)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v60)
      {
        goto LABEL_71;
      }
    }

    v61 = [a4 window];
    if (v61)
    {
      v62 = v61;
      v63 = [objc_opt_self() activeToolPickerForWindow_];
      if (v63)
      {
        v64 = v63;
        v65 = [v63 _visibilityUpdatesEnabled];
        [v64 _setVisibilityUpdatesEnabled_];
        [a4 becomeFirstResponder];
        [v64 _setVisibilityUpdatesEnabled_];

        goto LABEL_71;
      }
    }

    v56 = [a4 becomeFirstResponder];
LABEL_71:
    v67 = *(&a4->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v67)
    {
      v68 = v67;
      HandwritingReflowView.updateForNewSelection()();
    }

    v69 = (*((*v51 & a4->isa) + 0x520))(v56);
    v70 = *(v78 + v34);
    if (v70)
    {
      v71 = v70 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (!*(*v71 + 16) && !*(*(v71 + 8) + 16) && (*(v71 + 24) & 1) == 0)
      {
        v72 = (*((*v51 & a4->isa) + 0x468))(v69);
        [v72 _clearSelectionIfNecessary];
      }

LABEL_78:

      return;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v52 = swift_slowAlloc();
  *v52 = 134217984;
  v53 = *(v78 + v34);
  if (v53)
  {
    *(v52 + 4) = *(*(v53 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v54 = v52;

    _os_log_impl(&dword_1D38C4000, v48, v49, "Changing selection to have %ld elements", v54, 0xCu);
    MEMORY[0x1DA6D0660](v54, -1, -1);
    goto LABEL_55;
  }

LABEL_88:

  __break(1u);
LABEL_89:
  __break(1u);
}

uint64_t closure #1 in ContainerCanvasElementView.remove(members:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = a6;
  v10 = *a1;
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v19 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x548);
  v20 = v12;
  v13 = type metadata accessor for Capsule();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - v15;
  v29 = 0;
  v22 = *((v11 & v10) + 0x550);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5 & 1;
  v27 = &v29;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  result = swift_endAccess();
  if (v29 == 1)
  {
    CanvasElementView.canvasElement.getter(v16);
    v28[0] = 4;
    AnyCanvas.merge<A>(_:from:)(v16, v28, v20, v19);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.remove(members:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL *a6, uint64_t a7)
{
  v72 = a6;
  v71 = a3;
  v10 = *a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v62 - v13;
  v14 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v84 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  KeyPath = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v62 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v19 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - v25;
  v27 = (v10 + *MEMORY[0x1E6995440]);
  v91 = *v27;
  v86 = v27[1];
  v87 = v91;
  v92 = v86;
  v93 = a7;
  v89 = a7;
  swift_getKeyPath();
  v90 = a1;
  Capsule.Ref.subscript.getter();

  v65 = CROrderedSet.count.getter();
  v28 = *(v24 + 8);
  v66 = v26;
  v85 = v23;
  v67 = v24 + 8;
  v64 = v28;
  v28(v26, v23);
  v29 = a2 + 56;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a2 + 56);
  v33 = (v30 + 63) >> 6;
  v76 = v19 + 16;
  v75 = v19 + 32;
  v79 = v19;
  v74 = v19 + 8;
  v73 = (KeyPath + 8);
  v88 = a2;

  v35 = 0;
  if (v32)
  {
    while (1)
    {
      v36 = v35;
LABEL_9:
      v37 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v38 = v79;
      v39 = v80;
      v40 = v77;
      v41 = (*(v79 + 16))(v77, *(v88 + 48) + *(v79 + 72) * (v37 | (v36 << 6)), v80);
      MEMORY[0x1EEE9AC00](v41);
      v42 = v86;
      *(&v62 - 4) = v87;
      *(&v62 - 3) = v42;
      *(&v62 - 2) = v89;
      KeyPath = swift_getKeyPath();
      v43 = v78;
      (*(v38 + 32))(v78, v40, v39);
      WeakTagged_10.tag.getter();
      v96 = v94;
      v97 = v95;
      MEMORY[0x1DA6CB5C0](v39);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
      v44 = v82;
      SharedTagged_10.init(_:id:)();
      (*(v38 + 8))(v43, v39);
      v45 = Capsule.Ref.subscript.modify();
      v46 = v81;
      CROrderedSet.remove(_:)();
      (*v73)(v44, v83);
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v45(&v94, 0);

      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v36);
    ++v35;
    if (v32)
    {
      v35 = v36;
      goto LABEL_9;
    }
  }

  v48 = v71;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v86;
  *(&v62 - 4) = v87;
  *(&v62 - 3) = v49;
  *(&v62 - 2) = v89;
  if (v50)
  {
    swift_getKeyPath();

    v51 = v68;
    v52 = v90;
    Capsule.Ref.subscript.getter();

    v53 = v69;
    v54 = v70;
    if ((*(v69 + 48))(v51, 1, v70))
    {

      result = outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      v59 = v63;
      (*(v53 + 16))(v63, v51, v54);
      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v96 = v48;
      KeyPath = Ref.subscript.modify();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      v61 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance Set<A>, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      PKDrawingStruct.deleteStrokes<A, B>(_:in:)(&v96, v52, v60, v61);

      (KeyPath)(&v94, 0);
      result = (*(v53 + 8))(v59, v54);
    }

    v58 = 1;
  }

  else
  {
    swift_getKeyPath();
    v55 = v66;
    Capsule.Ref.subscript.getter();

    v56 = v85;
    v57 = CROrderedSet.count.getter();
    result = v64(v55, v56);
    v58 = v57 != v65;
  }

  *v72 = v58;
  return result;
}

uint64_t closure #1 in ContainerCanvasElementView.sendToBack(members:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x548);
  v7 = type metadata accessor for Capsule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  v18 = 0;
  v13 = *((v4 & v3) + 0x550);
  v14 = a2;
  v15 = 0;
  v16 = &v18;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  result = swift_endAccess();
  if (v18 == 1)
  {
    CanvasElementView.canvasElement.getter(v10);
    v17[0] = 4;
    AnyCanvas.merge<A>(_:from:)(v10, v17, v5, v6);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.sendToBack(members:)(uint64_t result, uint64_t a2, Swift::Int a3, _BYTE *a4, uint64_t a5)
{
  v14 = a5;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        break;
      }

      if (v10 != a3)
      {
        MEMORY[0x1EEE9AC00](result);
        swift_getKeyPath();
        v11 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
        CROrderedSet.move(from:to:)(v10, a3);
        v11(v13, 0);

        *a4 = 1;
      }

      if (v5 == ++v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ContainerCanvasElementView.sendToFront(members:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v24 = a2;
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = *((v4 & v3) + 0x540);
  v10 = *((v4 & v3) + 0x548);
  v11 = type metadata accessor for Capsule();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v33 = 0;
  CanvasElementView.canvasElement.getter(&v19 - v13);
  v20 = v9;
  v29 = v9;
  v30 = v10;
  v15 = *((v4 & v3) + 0x550);
  v31 = v15;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v19 = *(v12 + 8);
  v19(v14, v11);
  v16 = v22;
  v17 = CROrderedSet.count.getter();
  (*(v23 + 8))(v8, v16);
  v25 = v15;
  v26 = v24;
  v27 = v17;
  v28 = &v33;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  result = swift_endAccess();
  if (v33 == 1)
  {
    CanvasElementView.canvasElement.getter(v14);
    v32[0] = 4;
    AnyCanvas.merge<A>(_:from:)(v14, v32, v20, v10);
    return (v19)(v14, v11);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.sendToFront(members:)(uint64_t result, uint64_t a2, Swift::Int a3, _BYTE *a4, uint64_t a5)
{
  v14 = a5;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = v9 - v7;
      if (__OFSUB__(v9, v7))
      {
        break;
      }

      if (v10 != a3)
      {
        MEMORY[0x1EEE9AC00](result);
        swift_getKeyPath();
        v11 = Capsule.Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
        CROrderedSet.move(from:to:)(v10, a3);
        v11(v13, 0);

        *a4 = 1;
      }

      if (v5 == ++v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void closure #2 in ContainerCanvasElementView.recordRemoveMembersAnalytics(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6CE0C0](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(a2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = (*((*v5 & *v6) + 0x318))();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v11 = v9;

        *(v10 + 48) = 0;
        FormTextFieldAnalytics.recordEvent()();
      }

      ++v4;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t ContainerCanvasElementView.duplicate(members:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v25 = a7;
  v23 = *&a5;
  v24 = *&a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = ContainerCanvasElementView.canvas.getter();
  if (!v15)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v16 = v15;
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x910))(a1, a2, a3, a4 & 1);
  v17 = v23;
  v18 = v24;
  if (v25)
  {
    v17 = 20.0;
    v18 = 20.0;
  }

  ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(v14, 1, v17, v18);
  v20 = v19;

  (*(v12 + 8))(v14, v11);
  return v20;
}

void ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(uint64_t a1, char a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44 - v10;
  v45 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = ContainerCanvasElementView.canvas.getter();
  if (v19)
  {
    v20 = v19;
    v44 = v9;
    v21 = MEMORY[0x1EEE9AC00](v19);
    *(&v44 - 6) = v4;
    *(&v44 - 5) = a1;
    *(&v44 - 32) = a2 & 1;
    *(&v44 - 3) = a3;
    *(&v44 - 2) = a4;
    *(&v44 - 1) = v22;
    v23 = MEMORY[0x1E69E7D40];
    v24 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x6E8))(0, 1, partial apply for closure #1 in ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:), v21);
    (*((*v23 & *v4) + 0x520))(v24);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.subscript.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v25 = CROrderedSet.map<A>(_:)();
    (*(v16 + 8))(v18, v15);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v28 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for Paper(0);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      v29 = v25;
      v30 = v46;
      Ref.subscript.getter();
      (*(v27 + 8))(v14, v26);
      v31 = v44;
      v33 = v47;
      v32 = v48;
      (*(v48 + 16))(v47, &v30[*(v45 + 20)], v44);
      v34 = v30;
      v25 = v29;
      outlined destroy of Color(v34, type metadata accessor for PKDrawingStruct);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v28 = CROrderedSet.map<A>(_:)();
      (*(v32 + 8))(v33, v31);
    }

    v35 = [v20 window];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() activeToolPickerForWindow_];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 _visibilityUpdatesEnabled];
        [v38 _setVisibilityUpdatesEnabled_];
        v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v25);

        v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v28);

        AnyCanvas.selection.setter(v40, v41, 6, 0);
        [v38 _setVisibilityUpdatesEnabled_];

        goto LABEL_11;
      }
    }

    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v25);

    v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v28);

    AnyCanvas.selection.setter(v42, v43, 6, 0);
LABEL_11:
    if (*&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
    {
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t ContainerCanvasElementView.pasteDrawing(fromURL:at:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v12 = Data.init(contentsOf:options:)();
  v14 = v13;
  v19 = v4;
  type metadata accessor for PKDrawingCoherence(0);
  outlined copy of Data._Representation(v12, v14);
  v15 = specialized PKDrawingCoherence.__allocating_init(data:)();
  outlined consume of Data._Representation(v12, v14);
  Capsule<>.init(drawing:)(v15, v11);
  outlined consume of Data._Representation(v12, v14);
  ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(v11, 1, a2, a3, a4 & 1);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  return v17;
}

void ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(void (*a1)(char *, char *, uint64_t), int a2, uint64_t a3, uint64_t a4, int a5)
{
  v164 = a5;
  v155 = *&a4;
  v154 = *&a3;
  v165 = a2;
  v173 = a1;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v163 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v169 = &v143 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v153 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v143 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v170 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v143 - v23;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v143 - v24;
  v157 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v162 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v143 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  *&v148 = &v143 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v143 - v37;
  v166 = v5;
  v172 = ContainerCanvasElementView.canvas.getter();
  if (v172)
  {
    v151 = v22;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v39 = CROrderedSet.count.getter();
    v40 = *(v32 + 8);
    v156 = v32 + 8;
    v167 = v40;
    v40(v38, v31);
    v41 = v31;
    v168 = v31;
    v42 = v169;
    v171 = v21;
    if (v39 > 0)
    {
      goto LABEL_3;
    }

    swift_getKeyPath();
    Capsule.subscript.getter();

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v30, 1, v46) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      type metadata accessor for Paper(0);
      _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      v53 = v158;
      Ref.subscript.getter();
      (*(v47 + 8))(v30, v46);
      v54 = v160;
      v55 = v159;
      v56 = v161;
      (*(v160 + 16))(v159, v53 + *(v157 + 20), v161);
      outlined destroy of Color(v53, type metadata accessor for PKDrawingStruct);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      (*(v54 + 8))(v55, v56);
      v41 = v168;
      if (*&v177.a != *&v176.a)
      {
LABEL_3:
        Capsule.copy()();
        v43 = *&v172[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (!v43)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v44 = v43 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        v45 = *(*v44 + 16);
        v145 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
        v146 = v18;
        if (v45)
        {
          v148 = 0.0;
          LODWORD(v149) = 1;
        }

        else
        {
          if (!*(*(v44 + 8) + 16) && (*(v44 + 24) & 1) == 0)
          {
            swift_getKeyPath();
            Capsule.subscript.getter();

            v48 = CROrderedSet.count.getter();
            v49 = v167;
            v167(v38, v41);
            if (v48 == 1)
            {
              swift_getKeyPath();
              v50 = v148;
              Capsule.subscript.getter();

              v51 = v149;
              specialized Collection.first.getter(v149);
              v49(*&v50, v41);
              v52 = v170;
              if ((*(v170 + 48))(v51, 1, v14) == 1)
              {
                v148 = 0.0;
                outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
                LODWORD(v149) = 1;
                v144 = 0.0;
              }

              else
              {
                v134 = v147;
                (*(v52 + 32))(v147, v51, v14);
                type metadata accessor for Paper(0);
                _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
                SharedTagged_10.subscript.getter();
                d = v177.d;
                tx = v177.tx;
                __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
                v137 = (*(*(*&tx + 8) + 8))(COERCE_CGFLOAT(*&d));
                v139.n128_u64[0] = v138;
                v141.n128_u64[0] = v140;
                v148 = (*((*MEMORY[0x1E69E7D40] & *v172) + 0x990))(v137, v139, v141);
                v144 = v142;
                (*(v52 + 8))(v134, v14);
                __swift_destroy_boxed_opaque_existential_0(&v177);
                LODWORD(v149) = 0;
              }

              v57 = v52;
            }

            else
            {
              v148 = 0.0;
              LODWORD(v149) = 1;
              v144 = 0.0;
              v57 = v170;
            }

            v42 = v169;
            goto LABEL_18;
          }

          LODWORD(v149) = 1;
          v148 = 0.0;
        }

        v144 = 0.0;
        v57 = v170;
LABEL_18:
        v59 = *MEMORY[0x1E695F050];
        v58 = *(MEMORY[0x1E695F050] + 8);
        v60 = *(MEMORY[0x1E695F050] + 16);
        v61 = *(MEMORY[0x1E695F050] + 24);
        swift_getKeyPath();
        Capsule.subscript.getter();

        v62 = v168;
        CROrderedSet.makeIterator()();
        v167(v38, v62);
        v63 = v174;
        CROrderedSet.Iterator.next()();
        v66 = *(v57 + 48);
        v65 = v57 + 48;
        v64 = v66;
        v67 = v66(v11, 1, v14);
        x = v59;
        y = v58;
        width = v60;
        height = v61;
        v72 = v42;
        v73 = v146;
        if (v67 != 1)
        {
          v173 = *(v170 + 32);
          v74 = (v170 + 8);
          height = v61;
          width = v60;
          y = v58;
          x = v59;
          do
          {
            v173(v73, v11, v14);
            type metadata accessor for Paper(0);
            _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
            SharedTagged_10.subscript.getter();
            v76 = v177.d;
            v75 = v177.tx;
            __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
            v77 = v76;
            v63 = v174;
            v187.origin.x = (*(*(*&v75 + 8) + 8))(COERCE_CGFLOAT(*&v77));
            v187.origin.y = v78;
            v187.size.width = v79;
            v187.size.height = v80;
            v178.origin.x = x;
            v178.origin.y = y;
            v178.size.width = width;
            v178.size.height = height;
            v179 = CGRectUnion(v178, v187);
            x = v179.origin.x;
            y = v179.origin.y;
            width = v179.size.width;
            height = v179.size.height;
            (*v74)(v73, v14);
            __swift_destroy_boxed_opaque_existential_0(&v177);
            CROrderedSet.Iterator.next()();
          }

          while (v64(v11, 1, v14) != 1);
        }

        v81 = v64;
        v173 = v14;
        v174 = v65;
        (*(v163 + 8))(v72, v63);
        swift_getKeyPath();
        v82 = v162;
        v83 = v175;
        Capsule.subscript.getter();

        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
        v85 = *(v84 - 8);
        if ((*(v85 + 48))(v82, 1, v84) == 1)
        {
          v86 = outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
          v87 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          type metadata accessor for Paper(0);
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
          v88 = v158;
          Ref.subscript.getter();
          (*(v85 + 8))(v82, v84);
          v89 = v160;
          v90 = v159;
          v91 = v161;
          (*(v160 + 16))(v159, v88 + *(v157 + 20), v161);
          outlined destroy of Color(v88, type metadata accessor for PKDrawingStruct);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
          v87 = CROrderedSet.map<A>(_:)();
          v86 = (*(v89 + 8))(v90, v91);
        }

        v92 = v165;
        v93 = v168;
        v94 = v167;
        MEMORY[0x1EEE9AC00](v86);
        *(&v143 - 2) = v83;
        specialized Sequence.reduce<A>(_:_:)(partial apply for specialized closure #1 in static AnyCanvas.strokeBounds<A, B>(_:in:), v59, v58, v60, v61, (&v143 - 4), v87);
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v102 = v101;

        v180.origin.x = x;
        v180.origin.y = y;
        v180.size.width = width;
        v180.size.height = height;
        v188.origin.x = v96;
        v188.origin.y = v98;
        v188.size.width = v100;
        v188.size.height = v102;
        v181 = CGRectUnion(v180, v188);
        v103 = v181.origin.x;
        v104 = v181.origin.y;
        if (v164)
        {
          if (v149)
          {
            goto LABEL_28;
          }

          swift_getKeyPath();
          v105 = v152;
          Capsule.subscript.getter();

          v106 = v153;
          specialized Collection.first.getter(v153);
          v94(v105, v93);
          v107 = v173;
          if (v81(v106, 1, v173) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
LABEL_28:
            v108 = *&v172[v145];
            v109 = v151;
            if (v108)
            {
              v110 = v108;
              CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(&v177);

              v176 = v177;
              v182.origin.x = 0.0;
              v182.origin.y = 0.0;
              v182.size.width = 1.0;
              v182.size.height = 1.0;
              v183 = CGRectApplyAffineTransform(v182, &v176);
              v111 = v183.origin.x;
              v112 = v183.origin.y;
              v113 = CGRect.isFinite.getter(v183.origin.x, v183.origin.y, v183.size.width, v183.size.height);
              v114 = 20.0;
              v115 = v111 - v103 + 20.0;
              if (v113)
              {
                v114 = v112 - v104 + 20.0;
              }

              else
              {
                v115 = 20.0;
              }

              goto LABEL_34;
            }

            goto LABEL_41;
          }

          v122 = v170;
          v123 = v150;
          (*(v170 + 32))(v150, v106, v107);
          type metadata accessor for Paper(0);
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
          SharedTagged_10.subscript.getter();
          v124 = v177.d;
          v125 = v177.tx;
          __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
          v185.origin.x = (*(*(*&v125 + 8) + 8))(COERCE_CGFLOAT(*&v124));
          v126 = v185.origin.x;
          v127 = v185.origin.y;
          v128 = v185.size.width;
          v129 = v185.size.height;
          MidX = CGRectGetMidX(v185);
          v186.origin.x = v126;
          v186.origin.y = v127;
          v186.size.width = v128;
          v186.size.height = v129;
          MidY = CGRectGetMidY(v186);
          (*(v122 + 8))(v123, v107);
          v132 = v148 - MidX;
          v133 = v144 - MidY;
          __swift_destroy_boxed_opaque_existential_0(&v177);
          v114 = v133;
          v115 = v132;
        }

        else
        {
          v116 = v154;
          v117 = v155;
          v118 = v181.size.width;
          v119 = v181.size.height;
          v120 = CGRectGetMidX(v181);
          v184.origin.x = v103;
          v184.origin.y = v104;
          v184.size.width = v118;
          v184.size.height = v119;
          v121 = CGRectGetMidY(v184);
          v115 = v116 - v120;
          v114 = v117 - v121;
        }

        v109 = v151;
LABEL_34:
        ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(v83, v92 & 1, v115, v114);

        (*(v109 + 8))(v83, v171);
        return;
      }
    }
  }
}

uint64_t ContainerCanvasElementView.pasteElements(fromURL:andStrokes:at:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = a2;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v11 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v34 - v18);
  v20 = ContainerCanvasElementView.canvas.getter();
  if (!v20)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v45 = a1;
  v35 = v19;
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v39 = v5;
  v46 = v20;
  v44 = *&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas_context];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v21 = type metadata accessor for CRCodableVersion();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D405C990;
  v26 = v25 + v24;
  v27 = *(v22 + 104);
  v27(v26, *MEMORY[0x1E6995280], v21);
  v27(v26 + v23, *MEMORY[0x1E6995288], v21);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  (*(v11 + 104))(v13, *MEMORY[0x1E6995398], FileVersionPolicy);
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();

  (*(v11 + 8))(v13, FileVersionPolicy);
  v29 = v40;
  v28 = v41;
  v30 = v35;
  (*(v40 + 32))(v35, v16, v41);
  ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(v30, v42 & 1, v37, v38, v36 & 1);
  v32 = v31;

  (*(v29 + 8))(v30, v28);
  return v32;
}

uint64_t closure #1 in ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = a4;
  v12 = a3;
  v11 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x548);
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  swift_beginAccess();
  type metadata accessor for Paper(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Capsule<>.append<A>(_:andStrokes:pasteOffset:)();
  swift_endAccess();
  CanvasElementView.canvasElement.getter(v9);
  v14[0] = 4;
  AnyCanvas.merge<A>(_:from:)(v9, v14, v4, v5);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #2 in ContainerCanvasElementView.pastePaper(_:andStrokes:pasteOffset:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  WeakTagged_10.tag.getter();
  v9 = v11;
  v10 = v12;
  MEMORY[0x1DA6CB7A0](v3);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  WeakTagged_10.init(_:id:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t closure #1 in ContainerCanvasElementView.pastePaper(_:andStrokes:at:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  return WeakRef.init<A>(_:)();
}

{
  return sub_1D38E1714(a1);
}

void *ContainerCanvasElementView.subelementView(at:with:)(uint64_t a1, double a2, double a3)
{
  v7 = ContainerCanvasElementView.canvas.getter();
  if (v7)
  {
    v8 = v7;
    v9 = [v3 hitTest:a1 withEvent:{a2, a3}];
    if (v9)
    {
      v10 = v9;
      v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x440))();
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 64))(ObjectType, v13);

      if (v15 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA6CE0C0](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if ([v10 isDescendantOfView_])
          {

            return v19;
          }

          ++v17;
          if (v20 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

unint64_t ContainerCanvasElementView.canConvertToHandwriting(members:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit7TextBoxVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v52 - v7;
  v8 = type metadata accessor for Capsule();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v60 = *(v20 - 8);
  v61 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v52 - v21;
  result = ContainerCanvasElementView.pencilKitAttachmentViews()();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_30:

    return 0;
  }

  v50 = result;
  v51 = __CocoaSet.count.getter();
  result = v50;
  if (!v51)
  {
    goto LABEL_30;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v23 = *(result + 32);
  }

  v62 = v23;

  if (*(a1 + 16) != 1 || *(v63 + 16))
  {

    return 0;
  }

  specialized Collection.first.getter(a1, v19);
  v25 = v60;
  v24 = v61;
  if ((*(v60 + 48))(v19, 1, v61) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    return 0;
  }

  (*(v25 + 32))(v59, v19, v24);
  WeakTagged_10.tagged6.getter();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd);
    v28 = type metadata accessor for Shape(0);
    (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
    goto LABEL_14;
  }

  CanvasElementView.canvasElement.getter(v10);
  WeakRef.subscript.getter();
  (*(v58 + 8))(v10, v8);
  (*(v27 + 8))(v13, v26);
  v29 = type metadata accessor for Shape(0);
  if ((*(*(v29 - 8) + 48))(v16, 1, v29) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit5ShapeVSgMd);
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
    v30 = v56;
    WeakTagged_10.tagged4.getter();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGMd);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd);
      v33 = type metadata accessor for TextBox(0);
      v34 = v57;
      (*(*(v33 - 8) + 56))(v57, 1, 1, v33);
    }

    else
    {
      CanvasElementView.canvasElement.getter(v10);
      v34 = v57;
      WeakRef.subscript.getter();
      (*(v58 + 8))(v10, v8);
      (*(v32 + 8))(v30, v31);
      v35 = type metadata accessor for TextBox(0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) != 1)
      {
        *(&v68 + 1) = v35;
        v69 = &protocol witness table for TextBox;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
        outlined init with take of TextBox(v34, boxed_opaque_existential_1, type metadata accessor for TextBox);
LABEL_20:
        v37 = v61;
        if (*(&v65 + 1))
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(&v64, &_s8PaperKit12ShapeTextBox_pSgMd);
        }

        goto LABEL_22;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit7TextBoxVSgMd);
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    goto LABEL_20;
  }

  *(&v65 + 1) = v29;
  v66 = &protocol witness table for Shape;
  v36 = __swift_allocate_boxed_opaque_existential_1(&v64);
  outlined init with take of TextBox(v16, v36, type metadata accessor for Shape);
  outlined init with take of PaperKitHashable(&v64, &v67);
  v37 = v61;
LABEL_22:
  if (!*(&v68 + 1))
  {
    (*(v60 + 8))(v59, v37);

    outlined destroy of StocksKitCurrencyCache.Provider?(&v67, &_s8PaperKit12ShapeTextBox_pSgMd);
    return 0;
  }

  outlined init with take of PaperKitHashable(&v67, v70);
  v39 = v71;
  v40 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  if (((*(v40 + 80))(v39, v40) & 1) == 0)
  {
    (*(v60 + 8))(v59, v37);

    __swift_destroy_boxed_opaque_existential_0(v70);
    return 0;
  }

  v41 = v71;
  v42 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v43 = v53;
  (*(v42 + 16))(v41, v42);
  v44 = v55;
  v45 = CRAttributedString.attributedString.getter();
  (*(v54 + 8))(v43, v44);
  v46 = [v45 string];

  if (!v46)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = MEMORY[0x1DA6CCED0](v47);
  }

  v48 = v62;
  v49 = [v62 canConvertTextToHandwriting_];

  (*(v60 + 8))(v59, v61);
  __swift_destroy_boxed_opaque_existential_0(v70);
  return v49;
}

uint64_t closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(unint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v120 = a7;
  v123 = a6;
  v122 = a5;
  v125 = a3;
  v124 = a1;
  v26 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v121 = &v107 - v28;
  v119 = type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent();
  MEMORY[0x1EEE9AC00](v119);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PKDrawing();
  v114 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v32 = (&v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v128 = a2;
    v118 = v30;
    v117 = v26;
    v116 = a8;
    if (!i)
    {
      v39 = a4;
      goto LABEL_13;
    }

    v34 = a2;
    v35 = objc_opt_self();
    if (i < 1)
    {
      break;
    }

    v36 = v35;
    v126 = v34 & 0xC000000000000001;
    v37 = a4;
    v38 = v34;
    v39 = v37;
    v18 = 0;
    do
    {
      if (v126)
      {
        v40 = MEMORY[0x1DA6CE0C0](v18, v38);
      }

      else
      {
        v40 = v38[v18 + 4];
      }

      v41 = v40;
      v42 = [v40 textSize];
      [v41 bounds];
      v43 = [v36 scaledSize:v42 scale:CGRectGetHeight(v139)];

      [v43 scaleToMatchSize_];
      v45 = v44;
      v140.origin.x = a9;
      v140.origin.y = a10;
      v140.size.width = a11;
      v140.size.height = a12;
      Width = CGRectGetWidth(v140);
      [v41 bounds];
      if (Width / CGRectGetWidth(v141) < v45)
      {
        v47 = [v36 scaledSize:v43 scale:?];
        [v39 scaleToMatchSize_];
        v48 = [v36 scaledSize:v39 scale:?];
        v49 = v39;
        v39 = v48;

        v41 = v43;
        v43 = v47;
      }

      ++v18;

      v38 = v128;
    }

    while (i != v18);
LABEL_13:
    v126 = v39;
    v50 = *(v125 + 16);
    if (v50)
    {
      a4 = 0;
      v26 = *(v114 + 16);
      a2 = v125 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
      a8 = *(v114 + 72);
      v51 = (v114 + 8);
      while (1)
      {
        v52 = v127;
        (v26)(v32, a2, v127);
        v30 = PKDrawing.strokes.getter();
        (*v51)(v32, v52);
        v18 = *(v30 + 16);

        v53 = __OFADD__(a4, v18);
        a4 += v18;
        if (v53)
        {
          break;
        }

        a2 += a8;
        if (!--v50)
        {
          goto LABEL_19;
        }
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    a4 = 0;
LABEL_19:
    v110 = a13;
    v54 = v124;
    v26 = v124 & 0xFFFFFFFFFFFFFF8;
    if (v124 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    v114 = a18;
    v112 = a17;
    v111 = a16;
    v127 = a15;
    v113 = a14;
    a8 = v54 & 0xC000000000000001;
    v55 = 1;
    a2 = MEMORY[0x1E69E7CC0];
    while (v32 != v30)
    {
      if (a8)
      {
        v56 = MEMORY[0x1DA6CE0C0](v30, v54);
      }

      else
      {
        if (v30 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v56 = *(v54 + 8 * v30 + 32);
      }

      v57 = v56;
      v18 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v130 = 0uLL;
      LOBYTE(v131) = 1;
      static _NSRange._conditionallyBridgeFromObjectiveC(_:result:)();

      ++v30;
      if ((v131 & 1) == 0)
      {
        v109 = v130;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16) + 1, 1, a2);
        }

        v59 = *(a2 + 16);
        v58 = *(a2 + 24);
        if (v59 >= v58 >> 1)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, a2);
        }

        *(a2 + 16) = v59 + 1;
        *(a2 + 16 * v59 + 32) = v109;
        v30 = v18;
      }
    }

    v60 = *(a2 + 16);
    if (v60)
    {
      v61 = 0;
      v62 = (a2 + 40);
      v26 = v128;
      while (1)
      {
        v63 = *v62;
        v62 += 2;
        v53 = __OFADD__(v61, v63);
        v61 += v63;
        if (v53)
        {
          break;
        }

        if (!--v60)
        {
          goto LABEL_40;
        }
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v61 = 0;
    v26 = v128;
LABEL_40:

    v64 = String.count.getter();
    if (__OFSUB__(v64, v61))
    {
      __break(1u);
      goto LABEL_74;
    }

    v65 = (v64 - v61) & ~((v64 - v61) >> 63);
    v66 = (*((*MEMORY[0x1E69E7D40] & *v120) + 0x468))();
    v67 = type metadata accessor for Date();
    v68 = *(v67 - 8);
    v69 = v121;
    (*(v68 + 16))(v121, v116, v67);
    v70 = *(v68 + 56);
    v70(v69, 0, 1, v67);
    *&v109 = v65;
    v108 = v66;
    if (v115)
    {
      v71 = __CocoaSet.count.getter();
    }

    else
    {
      v71 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v26;
    v73 = v118;
    *v118 = 0;
    v73[25] = 0;
    *(v73 + 7) = 0;
    *(v73 + 1) = 0;
    *(v73 + 2) = 0;
    *(v73 + 56) = 0u;
    *(v73 + 40) = 0u;
    v74 = v119;
    v75 = *(v119 + 68);
    v70(&v73[v75], 1, 1, v67);
    a8 = v73;
    v73[*(v74 + 72)] = 0;
    swift_unknownObjectWeakInit();
    v73[24] = 0;
    outlined assign with take of Date?(v121, &v73[v75]);
    *(v73 + 4) = a4;
    *(v73 + 9) = v61;
    *(v73 + 10) = v71;
    *(v73 + 11) = v109;
    v76 = v108;
    swift_unknownObjectWeakAssign();

    v77 = MEMORY[0x1DA6CCED0](v122, v123);
    MEMORY[0x1EEE9AC00](v77);
    *(&v107 - 2) = v126;
    v78 = v124;

    v79 = v125;

    v30 = v117;
    v32 = specialized Sequence.flatMap<A>(_:)(v78, v72, v79, partial apply for closure #1 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:), (&v107 - 4));

    v26 = v32[2];
    if (!v26)
    {
      v128 = v30;

      v26 = MEMORY[0x1E69E7CC0];
LABEL_61:
      v30 = v127;
      v18 = v114;
      v55 = MEMORY[0x1E69E7D40];
      v90 = *((*MEMORY[0x1E69E7D40] & *v110) + 0x100);

      v92 = v90(v91);
      v94 = v93;
      v96 = v95;
      v98 = v97;
      type metadata accessor for ReflowLayoutManager();
      swift_allocObject();
      specialized ReflowLayoutManager.init(contents:frame:addSpaces:)(v26, 0, v92, v94, v96, v98);
      a2 = v99;

      swift_beginAccess();
      v100._rawValue = *(a2 + 80);
      swift_beginAccess();
      v101._rawValue = *(a2 + 88);

      ReflowLayoutManager.layoutText(contents:lines:)(v100, v101);

      if (one-time initialization token for $currentAnalyticsEvents != -1)
      {
LABEL_74:
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14AnalyticsEvent_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4058CF0;
      *(inited + 56) = v119;
      *(inited + 64) = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(a8, boxed_opaque_existential_1, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
      TaskLocal.get()();

      specialized Array.append<A>(contentsOf:)(v104);
      *&v130 = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14AnalyticsEvent_pGMd);
      swift_task_localValuePush();
      v131 = v111;
      v132 = v112;
      v133 = v18;
      v134 = v120;
      v135 = v26;
      v136 = a2;
      v137 = v113;
      v138 = v30;
      (*((*v55 & *v120) + 0x6E8))(1, 0, partial apply for closure #1 in closure #4 in closure #3 in ContainerCanvasElementView.convertToHandwriting(members:), &v130);
      v105 = v126;
      v35 = v128;
      if (v128)
      {
        goto LABEL_78;
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14AnalyticsEvent_pMd);
      swift_arrayDestroy();
      swift_task_localValuePop();

      return outlined destroy of Color(a8, type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent);
    }

    a8 = &selRef_pointyBitPoint;
    v35 = [v77 paragraphRangeForRange_];
    if (v32[2] < v26)
    {
      goto LABEL_76;
    }

    v81 = v35;
    a4 = v80;

    v18 = (v32 + 2);
    a2 = 24;
    v82 = 1;
LABEL_47:
    v83 = __OFADD__(v81, a4);
    v84 = v18 + 24 * v82;
    v85 = v82;
    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v26 == v85)
      {
        v89 = swift_unknownObjectRelease();
        MEMORY[0x1EEE9AC00](v89);
        *(&v107 - 2) = v128;
        *(&v107 - 1) = v32;

        v26 = specialized Sequence.flatMap<A>(_:)(0, v32, partial apply for closure #2 in static HandwritingReflowView.convertTokensToReflowElements(string:ranges:tokens:drawings:textSize:));
        v128 = v30;
        swift_bridgeObjectRelease_n();

        a8 = v118;
        goto LABEL_61;
      }

      if (v82 < 1 || v85 >= v26)
      {
        goto LABEL_69;
      }

      if (v83)
      {
        goto LABEL_70;
      }

      v87 = *(v84 + 16);
      ++v85;
      v84 += 24;
      if (v87 >= &a4[v81])
      {
        if ((v85 - 1) > v32[2])
        {
          goto LABEL_77;
        }

        *(*(v84 - 16) + 136) = 1;
        v35 = [v77 paragraphRangeForRange_];
        v81 = v35;
        a4 = v88;
        v82 = v86;
        goto LABEL_47;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  result = swift_task_localValuePop();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #4 in closure #3 in ContainerCanvasElementView.convertToHandwriting(members:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x748))(a2, a3);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = specialized CanvasMembers.init(_:)(a5);
    ContainerCanvasElementView.remove(members:)(v8, v10, v11, (v9 & 1));
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [NSValue], @guaranteed [CHReflowableTextToken], @guaranteed [PKDrawing]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSValue);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHReflowableTextToken);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for PKDrawing();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2, v3, v4);
}

unint64_t ContainerCanvasElementView.unorderedTransientSubelementViews.getter()
{
  v0 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v0)
  {
    v1 = v0;
    v2 = FormFillingView.unorderedFormFields.getter();

    return v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCTt0g5Tf4g_n(v4);
  }
}

uint64_t ContainerCanvasElementView.transientFormFields.getter()
{
  v0 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = FormFillingView.formFields.getter();

  return v2;
}

Swift::Void __swiftcall ContainerCanvasElementView.addFormFieldViews(_:transiently:)(Swift::OpaquePointer _, Swift::Bool transiently)
{
  if (_._rawValue >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  ContainerCanvasElementView.createFormFillingViewIfNeeded()();
  v5 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v5)
  {
    v6 = v5;
    FormFillingView.add(_:)(_);
  }

  if (!transiently)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v7 = 0;
      v8 = MEMORY[0x1E69E7D40];
      do
      {
        if ((_._rawValue & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6CE0C0](v7, _._rawValue);
        }

        else
        {
          v9 = *(_._rawValue + v7 + 4);
        }

        v10 = v9;
        v11 = (*((*v8 & *v9) + 0x318))();
        if (v11)
        {
          v12 = v11;
          (*((*v8 & *v11) + 0x150))(1, 1);
        }

        ++v7;
      }

      while (v4 != v7);
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.setFormFieldGroups(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    ContainerCanvasElementView.createFormFillingViewIfNeeded()();
    v2 = specialized ContainerCanvasElementView.formFillingView.getter();
    if (v2)
    {
      *&v2[OBJC_IVAR____TtC8PaperKit15FormFillingView_formFieldGroups] = a1;
      v3 = v2;
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.addWidgets(_:)(Swift::OpaquePointer a1)
{
  ContainerCanvasElementView.createFormFillingViewIfNeeded()();
  v1 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = v2;

    specialized Array.append<A>(contentsOf:)(v4);
    swift_endAccess();
    FormFillingView.updateUI()();
  }
}

void ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a5;
  v53 = a3;
  v54 = a4;
  v43 = a2;
  v55 = a1;
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v42[0] = *MEMORY[0x1E69E7D40] & v7;
  v9 = *((v8 & v7) + 0x540);
  v10 = type metadata accessor for Optional();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  v13 = *((v8 & v7) + 0x548);
  v14 = type metadata accessor for Capsule();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for CRKeyPath();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v50 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for WeakRef();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - v22;
  v49 = ContainerCanvasElementView.canvas.getter();
  if (v49)
  {
    v42[1] = type metadata accessor for Capsule();
    Capsule.rootID.getter();
    WeakRef.init(id:)();
    CanvasElementView.canvasElement.getter(v16);
    WeakRef.subscript.getter();
    (*(v45 + 8))(v16, v46);
    (*(v21 + 8))(v23, v20);
    v24 = (*(*(v9 - 8) + 48))(v12, 1, v9);
    v25 = (*(v47 + 8))(v12, v48);
    if (v24 == 1)
    {
      v26 = MEMORY[0x1EEE9AC00](v25);
      v27 = v49;
      v28 = v54;
      v42[-6] = v53;
      v42[-5] = v28;
      v42[-4] = v44;
      v42[-3] = v6;
      v42[-2] = v55;
      v42[-1] = v27;
      v29 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v27) + 0x6E8))(0, 0, partial apply for closure #1 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:), v26);
    }

    else
    {
      v29 = MEMORY[0x1E69E7D40];
      v27 = v49;
      if (v43)
      {
        v30 = MEMORY[0x1EEE9AC00](v25);
        v42[-8] = v9;
        v42[-7] = v31;
        v32 = *(v42[0] + 1360);
        v42[-6] = v13;
        v42[-5] = v32;
        v33 = v44;
        v42[-4] = v34;
        v42[-3] = v33;
        v42[-2] = v27;
        v42[-1] = v35;
        (*((*v29 & *v27) + 0x6E8))(0, 0, partial apply for closure #2 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:), v30);
      }

      else
      {
        v56 = 4;
        AnyCanvas.merge<A>(_:from:)(v55, &v56, v53, v54);
      }
    }

    (*((*v29 & *v27) + 0x850))(0);
    v36 = v50;
    Capsule.rootID.getter();
    v37 = ContainerCanvasElementView.unorderedSubelementViews.getter();
    if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v39 & 1) != 0))
    {
      v40 = *(v51 + 8);
      v41 = *(*(v37 + 56) + 8 * v38);
      v40(v36, v52);
    }

    else
    {

      (*(v51 + 8))(v36, v52);
      v41 = 0;
    }

    ContainerCanvasElementView.reparentViewIfNeeded(_:)(v41);
  }
}

uint64_t closure #1 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v20 = a3;
  v9 = *a1;
  v10 = *MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x540);
  v11 = *((v10 & v9) + 0x548);
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  v21 = a4;
  v22 = *((v10 & v9) + 0x550);
  v23 = a5;
  v24 = v18;
  v25 = a2;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  CanvasElementView.canvasElement.getter(v15);
  v26[0] = 4;
  AnyCanvas.merge<A>(_:from:)(v15, v26, v19, v11);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v52 = a2;
  v43 = *a1;
  v44 = a4;
  v9 = type metadata accessor for CRKeyPath();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v49 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - v17;
  v46 = a3;
  v18 = type metadata accessor for Capsule();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = type metadata accessor for Ref();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v41 - v25;
  (*(v19 + 16))(v21, v52, v18, v24);

  v45 = a1;
  v28 = v46;
  v27 = v47;
  Ref.init<A>(_:_:)();
  (*(v23 + 8))(v26, v22);
  v29 = v54;
  v30 = v50;
  Capsule.root.getter();
  v31 = v51;
  v32 = v48;
  Capsule.rootID.getter();
  v33 = v49;
  (*(v29 + 112))(v31, v28, v29);
  (*(v55 + 8))(v31, v56);
  (*(v53 + 8))(v30, v28);
  if ((*(v32 + 48))(v33, 1, v27) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  }

  v35 = v42;
  v36 = (*(v32 + 32))(v42, v33, v27);
  MEMORY[0x1EEE9AC00](v36);
  v37 = (v43 + *MEMORY[0x1E6995440]);
  *(&v41 - 6) = *v37;
  *(&v41 - 5) = v28;
  v38 = v37[1];
  v39 = v44;
  *(&v41 - 4) = v38;
  *(&v41 - 3) = v39;
  *(&v41 - 2) = a5;
  *(&v41 - 1) = v29;
  swift_getKeyPath();
  v40 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append(_:)();
  v40(v57, 0);

  return (*(v32 + 8))(v35, v27);
}

void ContainerCanvasElementView.reparentViewIfNeeded(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = ContainerCanvasElementView.transientFormFields.getter();
    v37 = v8;
    MEMORY[0x1EEE9AC00](v9);
    v35[-2] = &v37;
    v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v35[-4], v9);

    if ((v10 & 1) == 0 || (ContainerCanvasElementView.createSubelementsContainerViewIfNeeded()(), (v11 = specialized ContainerCanvasElementView.subelementsContainerView.getter()) == 0))
    {
LABEL_13:

      return;
    }

    v12 = v11;
    v35[1] = 0;
    swift_unknownObjectWeakAssign();
    v13 = v5;
    v14 = MEMORY[0x1E69E7D40];
    v15 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xE8);
    v16 = v12;
    v15();
    v17 = *((*v14 & *v2) + 0x570);
    swift_beginAccess();
    v18 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + v17);
    *(v2 + v17) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v7, isUniquelyReferenced_nonNull_native);
    (*(v13 + 8))(v7, v4);
    *(v2 + v17) = v36;
    swift_endAccess();
    [v16 addSubview_];
    v20 = specialized ContainerCanvasElementView.formFillingView.getter();
    if (!v20)
    {
LABEL_10:
      v29 = ContainerCanvasElementView.canvas.getter();
      if (v29)
      {
        v30 = v29;
        v31 = swift_allocObject();
        *(v31 + 16) = v18;
        *(v31 + 24) = v2;
        v32 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x6E0);
        v33 = v18;
        v34 = v2;
        v32(partial apply for closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:), v31);
      }

      v8 = v16;
      goto LABEL_13;
    }

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = v18;
    v23 = v18;
    v24 = v21;
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6CE0C0](0, inited);
      swift_unknownObjectRelease();
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v25 = OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields;
    swift_beginAccess();

    v26 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v24[v25], inited);

    v27 = *&v24[v25];
    if (v27 >> 62)
    {
      v28 = __CocoaSet.count.getter();
      if (v28 >= v26)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= v26)
      {
LABEL_9:
        specialized Array.replaceSubrange<A>(_:with:)(v26, v28, type metadata accessor for AnyCanvasElementView);
        swift_endAccess();

        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:)(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x318);
  v13 = v12(v8);
  if (v13)
  {
    v14 = v13;
    v15 = (*((*v11 & *v13) + 0xF0))();
    v33 = v16;
    v34 = v15;
  }

  else
  {
    v33 = 0xE000000000000000;
    v34 = 0;
  }

  v17 = (v12)();
  if (v17)
  {
    v18 = v17;
    (*((*v11 & *v17) + 0xF8))(0, 0xE000000000000000);
  }

  v19 = swift_unknownObjectWeakAssign();
  (*((*v11 & *a2) + 0xE8))(v19);
  swift_beginAccess();
  v20 = specialized Dictionary.removeValue(forKey:)(v10);
  (*(v7 + 8))(v10, v6);
  swift_endAccess();

  v21 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = a2;
    v24 = v22;
    v25 = a2;
    FormFillingView.add(_:)(inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v26 = swift_allocObject();
  v27 = v33;
  v28 = v34;
  v26[2] = a2;
  v26[3] = v28;
  v26[4] = v27;
  v26[5] = a3;
  v29 = *((*v11 & *a1) + 0x6E0);
  v30 = a2;
  v31 = a3;
  v29(partial apply for closure #1 in closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:), v26);
}

uint64_t closure #1 in closure #1 in ContainerCanvasElementView.reparentViewIfNeeded(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x318))();
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0xF8))(a3, a4);
  }

  return ContainerCanvasElementView.reparentViewIfNeeded(_:)(a2);
}

uint64_t partial apply for closure #2 in ContainerCanvasElementView.mergeCanvasElement<A>(_:shouldRegisterUndo:)()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[9];
  v5 = 4;
  return AnyCanvas.merge<A>(_:from:)(v3, &v5, v1, v2);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v93 = (v8 + 16);
    v94 = *(v8 + 16);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = (v8 + 16 * v94);
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, v102);
        if (v5)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v100 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 16);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 16);
      v13 = v9 + 2;
      v14 = (v11 + 96);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = (v31 + v18);
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v23[1];
            v30 = *(v23 - 1);
            *(v22 - 2) = *(v23 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v23 - 3) = v24;
            *(v23 - 2) = v25;
            *(v23 - 1) = v26;
            *v23 = v27;
            v23[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 16);
    v45 = *(v8 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v7;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 32);
          v52 = *(v8 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = (v8 + 16 * v47);
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = (v48 + 16 * v50);
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = (v8 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = (v48 + 16 * v50);
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = (v48 + 16 * (v50 - 1));
        v89 = *v88;
        v90 = (v48 + 16 * v50);
        v91 = v90[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v88), (*a3 + 40 * *v90), *a3 + 40 * v91, v102);
        if (v5)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *(v8 + 16);
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove((v48 + 16 * v50), v90 + 2, 16 * (v92 - 1 - v50));
        *(v8 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = v48 + 16 * v47;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = (v8 + 16 * v47);
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = (v48 + 16 * v50);
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v100;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 40;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (v35 >= *(v37 + 16))
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v39 = *(v37 + 40);
    v38 = *(v37 + 48);
    v40 = *(v37 + 16);
    v41 = *(v37 + 32);
    *(v37 + 40) = *v37;
    v42 = *(v37 + 64);
    v43 = *(v37 + 72);
    *(v37 + 56) = v40;
    *(v37 + 72) = v41;
    *v37 = v39;
    *(v37 + 8) = v38;
    *(v37 + 16) = v35;
    *(v37 + 24) = v42;
    *(v37 + 32) = v43;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd);
  }

  if (v17 < 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd);
  }

  result = outlined init with copy of Date?(a4, v15, &_s8PaperKit6PageIdVSgMd);
  if (v12 >= v17)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(a4, &_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for ReflowElement();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq58PaperKit13ReflowElementC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_8i5Kit13kL7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return a2(AssociatedObject + 4, v4);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s10Foundation4UUIDVSgMd);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Color(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for Color);
      v23 = v22;
      v24 = v30;
      outlined init with take of TextBox(v23, v30, type metadata accessor for Color);
      outlined init with take of TextBox(v24, a2, type metadata accessor for Color);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
}

{
  specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
}

{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

double specialized CRRegister<>.bounds(in:)(void *a1, void (**a2)(char *, uint64_t))
{
  return specialized CRRegister<>.bounds(in:)(a1, a2, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR, &lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, partial apply for closure #1 in CRRegister<>.bounds(in:));
}

{
  return specialized CRRegister<>.bounds(in:)(a1, a2, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR, &lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, closure #1 in CRRegister<>.bounds(in:)partial apply);
}

double specialized CRRegister<>.bounds(in:)(void *a1, void (**a2)(char *, uint64_t), uint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(void *__return_ptr, double *, char *))
{
  v104 = a6;
  isa = a5;
  v133 = a2;
  v126 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v99 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v117 = &v98 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v102 = *(v103 - 8);
  v10 = MEMORY[0x1EEE9AC00](v103);
  v100 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v98 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v123 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v98 - v16;
  v129 = type metadata accessor for PKStrokeInheritedProperties(0);
  v17 = MEMORY[0x1EEE9AC00](v129);
  v124 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v132 = &v98 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = &v98 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v131 = (&v98 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v116 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v122 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v98 - v27;
  v113 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v98 - v30;
  v31 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v128 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v125 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v105 = &v98 - v34;
  v35 = type metadata accessor for TaggedStroke(0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v110 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v109 = &v98 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v98 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v98 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v98 - v46;
  v108 = type metadata accessor for PKStrokeStruct(0);
  v48 = MEMORY[0x1EEE9AC00](v108);
  v107 = &v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v130 = &v98 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v138 = v51;
  v139 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(isa, a3);
  v52 = __swift_allocate_boxed_opaque_existential_1(&v137);
  (*(*(v51 - 8) + 16))(v52, v126, v51);
  v53 = v139;
  v126 = __swift_project_boxed_opaque_existential_1(&v137, v138);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  CRRegister.value.getter();
  outlined init with take of TextBox(v44, v42, type metadata accessor for TaggedStroke);
  isa = v35;
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Color(v42, type metadata accessor for TaggedStroke);
    v54 = 1;
    v55 = v125;
  }

  else
  {
    v56 = v125;
    v57 = *(v125 + 32);
    v98 = v53;
    v58 = v105;
    v57(v105, v42, v33);
    v57(v47, v58, v33);
    v54 = 0;
    v55 = v56;
  }

  (*(v55 + 56))(v47, v54, 1, v33);
  if ((*(v55 + 48))(v47, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    __swift_project_boxed_opaque_existential_1(&v137, v138);
    v59 = v109;
    CRRegister.value.getter();
    v60 = v110;
    outlined init with take of TextBox(v59, v110, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = v119;
      v62 = v119[4];
      v63 = v99;
      v64 = v60;
      v65 = v120;
      v62(v99, v64, v120);
      v66 = v117;
      v62(v117, v63, v65);
      v67 = 0;
    }

    else
    {
      outlined destroy of Color(v60, type metadata accessor for TaggedStroke);
      v67 = 1;
      v65 = v120;
      v61 = v119;
      v66 = v117;
    }

    (v61[7])(v66, v67, 1, v65);
    if ((v61[6])(v66, 1, v65) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
      v87 = *MEMORY[0x1E695F050];
    }

    else
    {
      v88 = v100;
      Ref.subscript.getter();
      (v61[1])(v66, v65);
      v89 = v102;
      v90 = v101;
      v91 = v103;
      v92 = (*(v102 + 32))(v101, v88, v103);
      MEMORY[0x1EEE9AC00](v92);
      *(&v98 - 2) = &v137;
      v87 = specialized Sequence.reduce<A>(_:_:)(v104, (&v98 - 4), v93, v94, v95, v96);
      (*(v89 + 8))(v90, v91);
    }
  }

  else
  {
    v68 = v107;
    Ref.subscript.getter();
    (*(v55 + 8))(v47, v33);
    outlined init with take of TextBox(v68, v130, type metadata accessor for PKStrokeStruct);
    __swift_project_boxed_opaque_existential_1(&v137, v138);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v69 = v112;
    CRRegister.wrappedValue.getter();
    v70 = v114;
    v71 = v111;
    v72 = v115;
    (*(v114 + 16))(v111, v69 + *(v113 + 32), v115);
    outlined destroy of Color(v69, type metadata accessor for PKStrokeProperties);
    Ref.subscript.getter();
    (*(v70 + 8))(v71, v72);
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v120 = v139;
    v126 = v138;
    v119 = __swift_project_boxed_opaque_existential_1(&v137, v138);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    CRRegister.wrappedValue.getter();
    v73 = (v116 + 48);
    v133 = (v116 + 8);
    v74 = (v116 + 32);
    for (i = v118; ; (*v74)(v28, i, v24))
    {
      __swift_project_boxed_opaque_existential_1(&v137, v138);
      v76 = v131;
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      outlined destroy of Color(v76, type metadata accessor for PKStrokeInheritedProperties);
      v77 = *v73;
      if ((*v73)(i, 1, v24) == 1)
      {
        break;
      }

      (*v133)(v28, v24);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(i, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    v78 = v121;
    Ref.subscript.getter();
    v131 = *v133;
    v131(v28, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
    CRRegister.wrappedValue.getter();
    outlined destroy of Color(v78, type metadata accessor for PKStrokeInheritedProperties);
    v126 = *&v140[0];
    v120 = v139;
    v121 = v138;
    v119 = __swift_project_boxed_opaque_existential_1(&v137, v138);
    v79 = v122;
    CRRegister.wrappedValue.getter();
    for (j = v123; ; (*v74)(v79, j, v24))
    {
      __swift_project_boxed_opaque_existential_1(&v137, v138);
      v81 = v132;
      Ref.subscript.getter();
      CRRegister.wrappedValue.getter();
      outlined destroy of Color(v81, type metadata accessor for PKStrokeInheritedProperties);
      if (v77(j, 1, v24) == 1)
      {
        break;
      }

      v131(v79, v24);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(j, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    v82 = v124;
    Ref.subscript.getter();
    v131(v79, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    outlined destroy of Color(v82, type metadata accessor for PKStrokeInheritedProperties);
    v140[0] = v134;
    v140[1] = v135;
    v140[2] = v136;
    v142.value.super.isa = v140;
    v83 = isa;
    v141.value.super.isa = isa;
    v84 = v126;
    v141.is_nil = v126;
    v85 = v130;
    *&v87 = PKStrokeStruct.bounds(path:ink:transform:)(v141, v142, v86);

    outlined destroy of Color(v128, type metadata accessor for PKStrokePathStruct);
    outlined destroy of Color(v85, type metadata accessor for PKStrokeStruct);
  }

  __swift_destroy_boxed_opaque_existential_0(&v137);
  return v87;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  type metadata accessor for AnyCanvasElementView();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for CanvasElementResizeHandle();
  return static NSObject.== infix(_:_:)() & 1;
}

void specialized closure #1 in static AnyCanvas.strokeBounds<A, B>(_:in:)(CGFloat *a1@<X0>, void *a2@<X2>, CGFloat *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - v7);
  x = *a1;
  y = a1[1];
  width = a1[2];
  height = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  type metadata accessor for Paper(0);
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  WeakRef.subscript.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  }

  else
  {
    v15 = specialized CRRegister<>.bounds(in:)(a2, v8, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR, &lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, partial apply for closure #1 in CRRegister<>.bounds(in:));
    v17 = v16;
    v19 = v18;
    v21 = v20;
    (*(v14 + 8))(v8, v13);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v25.origin.x = v15;
    v25.origin.y = v17;
    v25.size.width = v19;
    v25.size.height = v21;
    v24 = CGRectUnion(v23, v25);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
  }

  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

uint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, id, char *), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v34 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSValueC_So21CHReflowableTextTokenCt_9PencilKit9PKDrawingVtMd);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v26 - v7;
  v35 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v9)
  {
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = v34 & 0xFFFFFFFFFFFFFF8;
    if (v34 < 0)
    {
      v11 = v34;
    }

    else
    {
      v11 = v34 & 0xFFFFFFFFFFFFFF8;
    }

    v26 = v11;
    v27 = v34 & 0xC000000000000001;
    v12 = 4;
    v32 = v34 >> 62;
    v33 = a1 & 0xC000000000000001;
    do
    {
      v13 = v12 - 4;
      if (v33)
      {
        v14 = MEMORY[0x1DA6CE0C0](v12 - 4, a1);
      }

      else
      {
        if (v13 >= *(v31 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v9 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v14 = *(a1 + 8 * v12);
      }

      v15 = v14;
      if (v32)
      {
        if (v13 == __CocoaSet.count.getter())
        {
          goto LABEL_25;
        }
      }

      else if (v13 == *(v10 + 16))
      {
        goto LABEL_25;
      }

      if (v27)
      {
        v16 = MEMORY[0x1DA6CE0C0](v12 - 4, v34);
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_28;
        }

        v16 = *(v34 + 8 * v12);
      }

      v17 = v16;
      v18 = *(a3 + 16);
      if (v13 == v18)
      {

LABEL_25:
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_29;
      }

      v19 = type metadata accessor for PKDrawing();
      v20 = *(v19 - 8);
      v21 = *(v20 + 16);
      v22 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13;
      v23 = *(v28 + 48);
      *v8 = v15;
      *(v8 + 1) = v17;
      v21(&v8[v23], v22, v19);
      v24 = v29(v15, v17, &v8[v23]);
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sSo7NSValueC_So21CHReflowableTextTokenCt_9PencilKit9PKDrawingVtMd);
      specialized Array.append<A>(contentsOf:)(v24);
      ++v12;
      --v9;
    }

    while (v9);
  }

  return v35;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v4 = result;
    v5 = 0;
    v32 = a2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v34 = *(a2 + 16);
    while (1)
    {
      if (v5 == v34)
      {
        return v6;
      }

      v8 = (v32 + 24 * v5);
      v10 = v8[1];
      v9 = v8[2];
      v11 = *v8;

      v12 = a3(v4, v11, v10, v9);

      v13 = v12 >> 62;
      v14 = v12 >> 62 ? __CocoaSet.count.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v6 >> 62;
      if (v6 >> 62)
      {
        v30 = __CocoaSet.count.getter();
        v17 = v30 + v14;
        if (__OFADD__(v30, v14))
        {
LABEL_33:
          __break(1u);
          return v6;
        }
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 + v14;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_33;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v14;
      if (result)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_15;
      }

LABEL_16:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v22 = v18;
        result = __CocoaSet.count.getter();
        v18 = v22;
        v21 = result;
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21)
      {
        if (((v20 >> 1) - v19) < v37)
        {
          goto LABEL_37;
        }

        v35 = v3;
        v23 = v18 + 8 * v19 + 32;
        v31 = v18;
        if (v13)
        {
          if (v21 < 1)
          {
            goto LABEL_39;
          }

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd);
          for (i = 0; i != v21; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd);
            v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v12);
            v27 = *v26;

            (v25)(v36, 0);
            *(v23 + 8 * i) = v27;
          }
        }

        else
        {
          type metadata accessor for ReflowElement();
          swift_arrayInitWithCopy();
        }

        v3 = v35;
        if (v37 >= 1)
        {
          v28 = *(v31 + 16);
          v7 = __OFADD__(v28, v37);
          v29 = v28 + v37;
          if (v7)
          {
            goto LABEL_38;
          }

          *(v31 + 16) = v29;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_36;
        }
      }

      v4 = v3;
      ++v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        goto LABEL_35;
      }
    }

    if (!v15)
    {
      v18 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_15:
    __CocoaSet.count.getter();
    goto LABEL_16;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6CE0C0](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v13;
    v8 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6CE0C0](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v25[2] = &v27;
    v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA6CE0C0](v2, v6);
    v16 = MEMORY[0x1DA6CE0C0](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}