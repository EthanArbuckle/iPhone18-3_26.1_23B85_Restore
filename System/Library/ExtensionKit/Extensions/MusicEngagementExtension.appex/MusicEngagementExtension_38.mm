UIFontTextStyle specialized SymbolButton.Symbol.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_100507AE0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *specialized SymbolButton.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v5 - 8);
  v58 = &v57 - v6;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v11 = 0;
  v11[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v12 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v15 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v15);
  v67.super_class = v15;
  v16 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  SymbolButton.MaterialView.apply(_:)(&v68);

  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (one-time initialization token for clear != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = *&static SymbolButton.Background.clear;
  v20 = qword_10063F478;
  v19 = qword_10063F480;
  v21 = qword_10063F488;
  v22 = type metadata accessor for SymbolButton.BackgroundView();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v24 = 0;
  *(v24 + 1) = 0x3FF0000000000000;
  v66.receiver = v23;
  v66.super_class = v22;
  v25 = v20;

  v26 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  SymbolButton.BackgroundView.apply(_:)(v20, v18, v19, v21);
  SymbolButton.BackgroundView.updateBackgroundColor()();

  *&v4[v17] = v26;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v7 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v27 = v62;
  outlined init with copy of SymbolButton.Configuration(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v28 = *v11;
  v29 = v60;
  v30 = v61;
  *v11 = v60;
  v11[1] = v30;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v29);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *&v32[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *&v32[v33];
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*&v32[v33]];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*&v32[v33] addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView]];
  v38 = [*&v35[v37] contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*&v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView]];

  v40 = *&v35[v39];
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = &v35[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      outlined init with copy of TaskPriority?(v46, v58, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
      v48 = type metadata accessor for UIView.Corner();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      outlined destroy of TaskPriority?(v47, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  SymbolButton.apply(_:)(v27);
  v49 = v63;
  SymbolButton.metrics.getter(v63);
  SymbolButton.apply(_:)();
  _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v49, type metadata accessor for SymbolButton.Metrics);
  type metadata accessor for UIAction(0, &_sSo8UIActionCML_0);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v27, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL specialized static SymbolButton.Symbol.hasSignificantChanges(from:to:)(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t specialized static SymbolButton.Title.hasSignificantChanges(from:to:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (*&v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
        v24 = static NSObject.== infix(_:_:)();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void specialized SymbolButton.init(coder:)()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  SymbolButton.MaterialView.apply(_:)(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (one-time initialization token for clear != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_10063F478;
  v12 = qword_10063F480;
  v14 = qword_10063F488;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  SymbolButton.BackgroundView.apply(_:)(v13, v11, v12, v14);
  SymbolButton.BackgroundView.updateBackgroundColor()();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined assign with take of SymbolButton.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BA540()
{

  return swift_deallocObject();
}

uint64_t sub_1003BA578()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v27 = v0;
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v26 = v4;
  v8 = v4 + v2;

  v9 = v1[9];
  v10 = type metadata accessor for UIView.Corner();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v27 + v15;

  v19 = *(v27 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void partial apply for closure #2 in SymbolButton.setConfiguration(_:animation:updates:)()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in SymbolButton.setConfiguration(_:animation:updates:)(v0 + v4, (v0 + v5), v7, v8);
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003BA9C8()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 24) & ~v25;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = *(v0 + v2 + 208);
  if (v5 != 1)
  {
  }

  v6 = *(v4 + 232);
  if (v6 != 1)
  {
  }

  v7 = v3 + v25;

  v8 = v1[9];
  v9 = type metadata accessor for UIView.Corner();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v7 + v2;
  v13 = (v4 + v1[10]);
  if (*v13)
  {
  }

  v14 = v12 & ~v25;
  v15 = *(v4 + v1[11] + 16);
  if (v15 != 1)
  {
  }

  v16 = v4 + v1[16];

  v17 = v0 + v14;

  v18 = *(v0 + v14 + 208);
  if (v18 != 1)
  {
  }

  v19 = *(v17 + 232);
  if (v19 != 1)
  {
  }

  v20 = v1[9];
  if (!v11(v17 + v20, 1, v9))
  {
    (*(v10 + 8))(v17 + v20, v9);
  }

  v21 = (v17 + v1[10]);
  if (*v21)
  {
  }

  v22 = *(v17 + v1[11] + 16);
  if (v22 != 1)
  {
  }

  v23 = v17 + v1[16];

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in SymbolButton.setConfiguration(_:animation:updates:)()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  return closure #3 in SymbolButton.setConfiguration(_:animation:updates:)(v9, v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_1003BAE08()
{

  return swift_deallocObject();
}

void outlined copy of SymbolButton.Background?(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {

    v3 = a2;
  }
}

id outlined copy of SymbolButton.Badge?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003BB020()
{

  return swift_deallocObject();
}

uint64_t specialized static SymbolButton.Title.preferredTransitionStyle(from:to:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (*&v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id specialized SymbolButton.contextMenuInteraction(_:configurationForMenuAtLocation:)()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = partial apply for closure #1 in SymbolButton.contextMenuInteraction(_:configurationForMenuAtLocation:);
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = _sSaySo13UIMenuElementCGSo0A0CSgIeggo_So7NSArrayCAFIeyBya_TR_0;
  aBlock[3] = &block_descriptor_230;
  v6 = _Block_copy(aBlock);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v2);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v2);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
  return v8;
}

id specialized SymbolButton.pointerInteraction(_:styleFor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v93[-v4];
  v6 = type metadata accessor for UIView.Corner.Radius();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UIView.Corner();
  v9 = *(v8 - 8);
  v108 = v8;
  v109 = v9;
  __chkstk_darwin(v8);
  v99 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMd);
  __chkstk_darwin(v11);
  v13 = &v93[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v14 - 8);
  v16 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v93[-v18];
  __chkstk_darwin(v20);
  v22 = &v93[-v21];
  v110 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v110);
  v103 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v93[-v25];
  __chkstk_darwin(v27);
  v29 = &v93[-v28];
  v30 = type metadata accessor for UIPointerEffect();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v104 = &v93[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v105 = &v93[-v34];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v36 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v98 = v36;
  v96 = v5;
  v97 = v1;
  v37 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v37, v29, type metadata accessor for SymbolButton.Configuration);
  v38 = *(v29 + 29);
  if (v38 == 1)
  {
    _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v29, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v39 = v38;
    _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v29, type metadata accessor for SymbolButton.Configuration);
    if (v38)
    {

      goto LABEL_10;
    }
  }

  if (*(v37 + 208) == 1 && !*(v37 + *(v110 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v40 = [v97 traitCollection];
  v41 = [v40 userInterfaceIdiom];

  v95 = v37;
  if (v41 != 6)
  {
LABEL_19:
    v59 = objc_allocWithZone(UITargetedPreview);
    v60 = [v59 initWithView:v98];
    v61 = [v60 parameters];
    v54 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
    v51 = v97;
    [v97 bounds];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    outlined init with copy of SymbolButton.Configuration(v37, v26, type metadata accessor for SymbolButton.Configuration);
    if ((*(v109 + 48))(&v26[*(v110 + 36)], 1, v108))
    {
      _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v26, type metadata accessor for SymbolButton.Configuration);
      static UIPointerShape.defaultCornerRadius.getter();
      v71 = v70;
    }

    else
    {
      v72 = v100;
      UIView.Corner.radius.getter();
      _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v26, type metadata accessor for SymbolButton.Configuration);
      [v51 bounds];
      UIView.Corner.Radius.value(in:)();
      v71 = v73;
      (*(v101 + 8))(v72, v102);
    }

    v49 = v105;
    v48 = v106;
    v53 = v104;
    v74 = [objc_opt_self() bezierPathWithRoundedRect:v63 cornerRadius:{v65, v67, v69, v71}];
    [v61 setShadowPath:v74];

    *v49 = v60;
    v50 = &enum case for UIPointerEffect.lift(_:);
    v52 = v103;
    v37 = v95;
    goto LABEL_23;
  }

  outlined init with copy of TaskPriority?(v37 + *(v110 + 36), v22, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  static UIView.Corner.rounded.getter();
  v42 = v108;
  v43 = v109;
  (*(v109 + 56))(v19, 0, 1, v108);
  v44 = *(v11 + 48);
  outlined init with copy of TaskPriority?(v22, v13, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  outlined init with copy of TaskPriority?(v19, &v13[v44], &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v45 = *(v43 + 48);
  if (v45(v13, 1, v42) == 1)
  {
    outlined destroy of TaskPriority?(v19, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    outlined destroy of TaskPriority?(v22, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    if (v45(&v13[v44], 1, v42) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
      v37 = v95;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  outlined init with copy of TaskPriority?(v13, v16, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  if (v45(&v13[v44], 1, v42) == 1)
  {
    outlined destroy of TaskPriority?(v19, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    outlined destroy of TaskPriority?(v22, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    (*(v109 + 8))(v16, v42);
LABEL_16:
    outlined destroy of TaskPriority?(v13, &_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMd);
    v37 = v95;
    goto LABEL_17;
  }

  v55 = v109;
  v56 = &v13[v44];
  v57 = v99;
  (*(v109 + 32))(v99, v56, v42);
  lazy protocol witness table accessor for type UIView.Corner and conformance UIView.Corner(&lazy protocol witness table cache variable for type UIView.Corner and conformance UIView.Corner, &type metadata accessor for UIView.Corner);
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v55 + 8);
  v58(v57, v42);
  outlined destroy of TaskPriority?(v19, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  outlined destroy of TaskPriority?(v22, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v58(v16, v42);
  outlined destroy of TaskPriority?(v13, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v37 = v95;
  if (v94)
  {
    goto LABEL_19;
  }

LABEL_17:
  v46 = objc_allocWithZone(UITargetedPreview);
  v47 = [v46 initWithView:v98];
  v49 = v105;
  v48 = v106;
  *v105 = v47;
  v50 = &enum case for UIPointerEffect.highlight(_:);
  v51 = v97;
  v52 = v103;
  v53 = v104;
  v54 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
LABEL_23:
  v75 = v107;
  (*(v48 + 104))(v49, *v50, v107);
  (*(v48 + 16))(v53, v49, v75);
  [v51 v54[180]];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  outlined init with copy of SymbolButton.Configuration(v37, v52, type metadata accessor for SymbolButton.Configuration);
  if ((*(v109 + 48))(v52 + *(v110 + 36), 1, v108))
  {
    _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v52, type metadata accessor for SymbolButton.Configuration);
    static UIPointerShape.defaultCornerRadius.getter();
    v85 = v84;
  }

  else
  {
    v86 = v100;
    UIView.Corner.radius.getter();
    _s11MusicCoreUI12SymbolButtonC13ConfigurationVWOhTm_0(v52, type metadata accessor for SymbolButton.Configuration);
    [v51 v54[180]];
    UIView.Corner.Radius.value(in:)();
    v85 = v87;
    (*(v101 + 8))(v86, v102);
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIPointerStyle);
  v88 = v96;
  *v96 = v77;
  v88[1] = v79;
  v88[2] = v81;
  v88[3] = v83;
  v88[4] = v85;
  v89 = enum case for UIPointerShape.roundedRect(_:);
  v90 = type metadata accessor for UIPointerShape();
  v91 = *(v90 - 8);
  (*(v91 + 104))(v88, v89, v90);
  (*(v91 + 56))(v88, 0, 1, v90);
  v92 = UIPointerStyle.init(effect:shape:)();

  (*(v48 + 8))(v49, v75);
  return v92;
}

unint64_t instantiation function for generic protocol witness table for SymbolButton.Symbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SymbolButton.Symbol and conformance SymbolButton.Symbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Symbol and conformance SymbolButton.Symbol()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Symbol and conformance SymbolButton.Symbol;
  if (!lazy protocol witness table cache variable for type SymbolButton.Symbol and conformance SymbolButton.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Symbol and conformance SymbolButton.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolButton.Symbol and conformance SymbolButton.Symbol;
  if (!lazy protocol witness table cache variable for type SymbolButton.Symbol and conformance SymbolButton.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Symbol and conformance SymbolButton.Symbol);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SymbolButton.Title(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SymbolButton.Title and conformance SymbolButton.Title();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Title and conformance SymbolButton.Title()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Title and conformance SymbolButton.Title;
  if (!lazy protocol witness table cache variable for type SymbolButton.Title and conformance SymbolButton.Title)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Title and conformance SymbolButton.Title);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolButton.Title and conformance SymbolButton.Title;
  if (!lazy protocol witness table cache variable for type SymbolButton.Title and conformance SymbolButton.Title)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Title and conformance SymbolButton.Title);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SymbolButton.Background(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SymbolButton.Background and conformance SymbolButton.Background();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Background and conformance SymbolButton.Background()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Background and conformance SymbolButton.Background;
  if (!lazy protocol witness table cache variable for type SymbolButton.Background and conformance SymbolButton.Background)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Background and conformance SymbolButton.Background);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolButton.Background and conformance SymbolButton.Background;
  if (!lazy protocol witness table cache variable for type SymbolButton.Background and conformance SymbolButton.Background)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Background and conformance SymbolButton.Background);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Material.Color and conformance SymbolButton.Material.Color()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Material.Color and conformance SymbolButton.Material.Color;
  if (!lazy protocol witness table cache variable for type SymbolButton.Material.Color and conformance SymbolButton.Material.Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Material.Color and conformance SymbolButton.Material.Color);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SymbolButton.CustomView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SymbolButton.CustomView and conformance SymbolButton.CustomView();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.CustomView and conformance SymbolButton.CustomView()
{
  result = lazy protocol witness table cache variable for type SymbolButton.CustomView and conformance SymbolButton.CustomView;
  if (!lazy protocol witness table cache variable for type SymbolButton.CustomView and conformance SymbolButton.CustomView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.CustomView and conformance SymbolButton.CustomView);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SymbolButton.Badge(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SymbolButton.Badge and conformance SymbolButton.Badge();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Badge and conformance SymbolButton.Badge()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Badge and conformance SymbolButton.Badge;
  if (!lazy protocol witness table cache variable for type SymbolButton.Badge and conformance SymbolButton.Badge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Badge and conformance SymbolButton.Badge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolButton.Badge and conformance SymbolButton.Badge;
  if (!lazy protocol witness table cache variable for type SymbolButton.Badge and conformance SymbolButton.Badge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Badge and conformance SymbolButton.Badge);
  }

  return result;
}

void type metadata completion function for SymbolButton()
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymbolButton.Metrics?(319, &lazy cache variable for type metadata for SymbolButton.Metrics?, type metadata accessor for SymbolButton.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for SymbolButton.Animation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Animation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1003BC410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003BC4E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SymbolButton.Configuration()
{
  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for SymbolButton.Background?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for SymbolButton.Material?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for UIView.Border?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SymbolButton.Metrics?(319, &lazy cache variable for type metadata for UIView.Corner?, &type metadata accessor for UIView.Corner);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for SymbolButton.CustomView?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for SymbolButton.Badge?);
            if (v5 <= 0x3F)
            {
              _sSo6CGSizeVMa_0(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for SymbolButton.Metrics?(319, &lazy cache variable for type metadata for CGSize?, _sSo6CGSizeVMa_0);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for NSDirectionalEdgeInsets(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for MPCPlayerResponseItem?(319, &lazy cache variable for type metadata for UIColor?, &_sSo7UIColorCML_0);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &_sSbSgML_0);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for SymbolButton.Metrics?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SymbolButton.Configuration.Accessibility(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Configuration.Accessibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolButton.Symbol(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Symbol(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolButton.Title(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Title(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolButton.Update(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Update(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003BCC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1003BCD24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for SymbolButton.Metrics()
{
  type metadata accessor for MPCPlayerResponseItem?(319, &lazy cache variable for type metadata for UITraitCollection?, &lazy cache variable for type metadata for UITraitCollection);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymbolButton.Metrics?(319, &lazy cache variable for type metadata for UIView.Corner?, &type metadata accessor for UIView.Corner);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIAction(319, &_sSo6UIFontCML_0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIAction(319, &lazy cache variable for type metadata for UIImageSymbolConfiguration);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIOffset(319);
          if (v4 <= 0x3F)
          {
            _sSo6CGSizeVMa_0(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SymbolButton.Metrics?(319, &lazy cache variable for type metadata for CGSize?, _sSo6CGSizeVMa_0);
              if (v6 <= 0x3F)
              {
                type metadata accessor for NSDirectionalEdgeInsets(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1003BD10C()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of SymbolButton.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SymbolButton.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UIView.Corner and conformance UIView.Corner(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *outlined copy of View in Transition #1 in SymbolButton.setConfiguration(_:animation:updates:)?(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;

    return outlined copy of (@escaping @callee_guaranteed () -> ())?(a4);
  }

  return result;
}

void *outlined consume of View in Transition #1 in SymbolButton.setConfiguration(_:animation:updates:)?(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a4);
  }

  return result;
}

uint64_t sub_1003BD33C()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v26 = v0;
  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v8 = v4 + v2;

  v9 = v1[9];
  v10 = type metadata accessor for UIView.Corner();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v26 + v15;

  v19 = *(v26 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in SymbolButton.setConfiguration(_:animation:updates:)()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #3 in SymbolButton.setConfiguration(_:animation:updates:)(v6, v0 + v4, (v0 + v5), v7);
}

uint64_t objectdestroy_226Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_263Tm()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id partial apply for closure #1 in closure #3 in closure #3 in SymbolButton.setConfiguration(_:animation:updates:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id outlined copy of SymbolButton.Material?(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v5 = result;

    v6 = v5;
    v7 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_1003BD8C4()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Transition #1 in SymbolButton.setConfiguration(_:animation:updates:)(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Transition #1 in SymbolButton.setConfiguration(_:animation:updates:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Animation.TransitionStyle and conformance SymbolButton.Animation.TransitionStyle()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Animation.TransitionStyle and conformance SymbolButton.Animation.TransitionStyle;
  if (!lazy protocol witness table cache variable for type SymbolButton.Animation.TransitionStyle and conformance SymbolButton.Animation.TransitionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Animation.TransitionStyle and conformance SymbolButton.Animation.TransitionStyle);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t TextArray.body.getter@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v64 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v52 = v5;
    v54 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      outlined copy of Text.Storage(v10, v11, v12);
      v64 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1);
        v7 = v64;
      }

      v7[2] = (v14 + 1);
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v54;
    v4 = a3;
    v5 = v52;
  }

  v64 = a2;
  v65 = v4;
  _sS2SSysWl_0();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v61[0] = v17;
  v61[1] = v18;
  v21 = v20 & 1;
  v62 = v20 & 1;
  v63 = v22;
  Array<A>.joined(separator:)(v61, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v64);

  outlined consume of Text.Storage(v17, v19, v21);

  v24 = 0;
  v25 = v64;
  v55 = v65;
  v53 = v66;
  v26 = v67;
  v27 = v5 + 72;
  v28 = _swiftEmptyArrayStorage;
LABEL_8:
  v29 = (v27 + 48 * v24);
  while (1)
  {
    if (v6 == v24)
    {
      v64 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_0);
      _sSaySSGSayxGSKsWl_0();
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v39;

      v64 = v38;
      v65 = v40;
      v41 = Text.init<A>(_:)();
      v43 = v42;
      v45 = v44;
      v46 = Text.accessibilityLabel(_:)();
      v48 = v47;
      v57 = v49;
      v60 = v50;
      outlined consume of Text.Storage(v25, v55, v53);

      outlined consume of Text.Storage(v41, v43, v45 & 1);

      *a4 = v46;
      *(a4 + 8) = v48;
      *(a4 + 16) = v57 & 1;
      *(a4 + 24) = v60;
      return result;
    }

    if (v24 >= v6)
    {
      break;
    }

    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_20;
    }

    v32 = *v29;
    v29 += 6;
    v31 = v32;
    ++v24;
    if (v32)
    {
      v51 = v26;
      v33 = *(v29 - 7);

      result = swift_isUniquelyReferenced_nonNull_native();
      v34 = v6;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v35 > 1), v36 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = (v36 + 1);
      v37 = &v28[2 * v36];
      v37[4] = v33;
      v37[5] = v31;
      v24 = v30;
      v6 = v34;
      v26 = v51;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _sS2SSysWl_0();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t protocol witness for static Addable.+ infix(_:_:) in conformance Text@<X0>(uint64_t a1@<X8>)
{
  result = static Text.+ infix(_:_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double protocol witness for static AdditiveIdentityProvider.identity.getter in conformance Text@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100507B10;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

size_t _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, unint64_t a4)
{
  return _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5Tm_0(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVGMd, &_ss23_ContiguousArrayStorageCy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVGMR, &type metadata accessor for Playlist.Collaborator);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR, &type metadata accessor for IndexPath);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGMd, &_ss23_ContiguousArrayStorageCySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGMR, type metadata accessor for NSUserDefaults._Observer.HandlerAssociation);
}

size_t _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5Tm_0(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = (2 * ((result - v16) / v15));
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyycGMd_0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_0(size_t a1, int64_t a2, char a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v20 = a2;
  v21 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = specialized static Text.PreConfigured(_:style:)(v11, v12, v10 & 1, v13, v6);
  v16 = v15;
  v18 = v17;
  v20(v14);
  static Text.PostConfigured<A>(_:style:)(v9, v6, a3, a5, v21);
  outlined consume of Text.Storage(v14, v16, v18 & 1);

  return (*(v7 + 8))(v9, a3);
}

uint64_t _s7SwiftUI4TextV09MusicCoreB0E14PostConfigured33_40F54D6C5BFFDFC28B51EF8FA47DF465LL_5styleQrx_AcDE5StyleOtAA4ViewRzlFZAC_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v83 + 1) = a2;
  v84 = a4;
  v79 = a3;
  *&v83 = a1;
  v80 = a6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAKySiSgGGAGyAsKyAA0G9AlignmentOGGGACyAGyAGyApKyAI4CaseOSgGGARGAPGGAS_GMd);
  __chkstk_darwin(v82);
  v8 = &v70[-v7];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAKySiSgGGAGyAsKyAA0G9AlignmentOGGGACyAGyAGyApKyAI4CaseOSgGGARGAPG_GMd);
  __chkstk_darwin(v77);
  v75 = &v70[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAKyAI4CaseOSgGGAKySiSgGGAP_GMd);
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAG4CaseOSgGGAIySiSgGGANGMd);
  __chkstk_darwin(v76);
  v73 = &v70[-v13];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
  __chkstk_darwin(v81);
  v78 = &v70[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAE4CaseOSgGGAGySiSgGGMd);
  __chkstk_darwin(v15);
  v17 = &v70[-v16];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v74 = v8;
        if (a5 == 8)
        {
          v18 = static Color.white.getter();
          KeyPath = swift_getKeyPath();
          v20 = swift_getKeyPath();
          LOBYTE(v110) = v79 & 1;
          LOBYTE(v104) = 0;
          v118 = v83;
          LOBYTE(v119) = v79 & 1;
          *(&v119 + 1) = v84;
          *&v120 = KeyPath;
          *(&v120 + 1) = v18;
          *&v121 = v20;
          *(&v121 + 1) = 1;
          LOBYTE(v122) = 0;
          v124 = v83;
          LOBYTE(v125) = v79 & 1;
          *(&v125 + 1) = v84;
          *&v126 = KeyPath;
          *(&v126 + 1) = v18;
          *&v127 = v20;
          *(&v127 + 1) = 1;
          LOBYTE(v128) = 0;
          outlined copy of Text.Storage(v83, *(&v83 + 1), v79 & 1);

          outlined init with copy of TaskPriority?(&v118, &v85, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
          outlined destroy of TaskPriority?(&v124, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
          v21 = v121;
          v22 = v74;
          *(v74 + 2) = v120;
          *(v22 + 48) = v21;
          *(v22 + 64) = v122;
          v23 = v119;
          *v22 = v118;
          *(v22 + 16) = v23;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
          lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
          return _ConditionalContent<>.init(storage:)();
        }

        goto LABEL_11;
      }

      v55 = static Color.white.getter();
      v74 = v55;
      v56 = swift_getKeyPath();
      v57 = v83;
      *v12 = v83;
      v58 = v79 & 1;
      v12[16] = v58;
      v79 = v58;
      *(v12 + 3) = v84;
      *(v12 + 4) = v56;
      v72 = v56;
      *(v12 + 5) = v55;
      swift_storeEnumTagMultiPayload();
      outlined copy of Text.Storage(v57, *(&v57 + 1), v58);

      outlined copy of Text.Storage(v57, *(&v57 + 1), v58);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
      v59 = v73;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TaskPriority?(v59, v75, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAG4CaseOSgGGAIySiSgGGANGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
      v60 = v78;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TaskPriority?(v59, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAG4CaseOSgGGAIySiSgGGANGMd);
      outlined init with copy of TaskPriority?(v60, v8, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
      lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined consume of Text.Storage(v83, *(&v83 + 1), v79);

      v36 = v60;
      v37 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd;
      return outlined destroy of TaskPriority?(v36, v37);
    }

LABEL_9:
    v38 = static Color.secondary.getter();
    v74 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v79 & 1;
    LOBYTE(v85) = v79 & 1;
    LOBYTE(v110) = 0;
    v43 = v83;
    v91 = v83;
    LOBYTE(v92) = v79 & 1;
    v44 = v84;
    *(&v92 + 1) = v84;
    *&v93 = v40;
    *(&v93 + 1) = v39;
    *&v94 = v41;
    *(&v94 + 1) = 2;
    v95 = 0;
    v45 = swift_getKeyPath();
    v120 = v93;
    v121 = v94;
    LOBYTE(v122) = v95;
    v118 = v91;
    v119 = v92;
    v96 = v43;
    v97 = v42;
    v98 = v44;
    v99 = v40;
    v100 = v39;
    v101 = v41;
    v102 = 2;
    v103 = 0;
    outlined copy of Text.Storage(v43, *(&v43 + 1), v42);

    outlined init with copy of TaskPriority?(&v91, &v124, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    outlined destroy of TaskPriority?(&v96, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    v106 = v120;
    v107 = v121;
    v104 = v118;
    v105 = v119;
    *&v108 = v122;
    *(&v108 + 1) = v45;
    v109 = 1;
    v112 = v120;
    v113 = v121;
    v110 = v118;
    v111 = v119;
    v114 = v122;
    v115 = v45;
    v116 = 1;
    outlined init with copy of TaskPriority?(&v104, &v124, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    outlined destroy of TaskPriority?(&v110, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    v126 = v106;
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v124 = v104;
    v125 = v105;
    v117 = 1;
    HIBYTE(v129) = 1;
    outlined init with copy of TaskPriority?(&v104, &v118, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    outlined init with copy of TaskPriority?(&v104, &v118, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v46 = v88;
    v120 = v87;
    v121 = v88;
    v47 = v89;
    v122 = v89;
    v48 = v90;
    v123 = v90;
    v49 = v85;
    v50 = v86;
    v118 = v85;
    v119 = v86;
    v51 = v75;
    *(v75 + 2) = v87;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of TaskPriority?(&v118, &v124, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
    v52 = v78;
    _ConditionalContent<>.init(storage:)();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    outlined destroy of TaskPriority?(&v124, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    outlined init with copy of TaskPriority?(v52, v74, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53 = &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd;
    v54 = &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd;
LABEL_12:
    outlined destroy of TaskPriority?(&v104, v54);
    outlined destroy of TaskPriority?(&v104, v53);
    v36 = v52;
    v37 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd;
    return outlined destroy of TaskPriority?(v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v74 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v61 = static Color.primary.getter();
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    LOBYTE(v118) = v79 & 1;
    LOBYTE(v85) = 0;
    v104 = v83;
    LOBYTE(v105) = v79 & 1;
    *(&v105 + 1) = v84;
    *&v106 = v62;
    *(&v106 + 1) = v61;
    *&v107 = v63;
    *(&v107 + 1) = 1;
    LOBYTE(v108) = 0;
    v110 = v83;
    LOBYTE(v111) = v79 & 1;
    *(&v111 + 1) = v84;
    *&v112 = v62;
    *(&v112 + 1) = v61;
    *&v113 = v63;
    *(&v113 + 1) = 1;
    LOBYTE(v114) = 0;
    outlined copy of Text.Storage(v83, *(&v83 + 1), v79 & 1);

    outlined init with copy of TaskPriority?(&v104, &v124, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    outlined destroy of TaskPriority?(&v110, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    v126 = v106;
    v127 = v107;
    LOBYTE(v128) = v108;
    v124 = v104;
    v125 = v105;
    LOBYTE(v96) = 0;
    HIBYTE(v129) = 0;
    outlined init with copy of TaskPriority?(&v104, &v118, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    outlined init with copy of TaskPriority?(&v104, &v118, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v64 = v88;
    v120 = v87;
    v121 = v88;
    v65 = v89;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v85;
    v68 = v86;
    v118 = v85;
    v119 = v86;
    v69 = v75;
    *(v75 + 2) = v87;
    *(v69 + 3) = v64;
    *(v69 + 4) = v65;
    *(v69 + 40) = v66;
    *v69 = v67;
    *(v69 + 1) = v68;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of TaskPriority?(&v118, &v124, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
    v52 = v78;
    _ConditionalContent<>.init(storage:)();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    outlined destroy of TaskPriority?(&v124, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    outlined init with copy of TaskPriority?(v52, v74, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53 = &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd;
    v54 = &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd;
    goto LABEL_12;
  }

  v25 = static Color.secondary.getter();
  v72 = swift_getKeyPath();
  v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAE4CaseOSgGGMd) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
  v71 = enum case for Text.Case.uppercase(_:);
  v28 = type metadata accessor for Text.Case();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26 + v27, v71, v28);
  (*(v29 + 56))(v26 + v27, 0, 1, v28);
  *v26 = swift_getKeyPath();
  v30 = v83;
  *v17 = v83;
  LOBYTE(v28) = v79 & 1;
  v17[16] = v79 & 1;
  v31 = v72;
  *(v17 + 3) = v84;
  *(v17 + 4) = v31;
  *(v17 + 5) = v25;
  v32 = swift_getKeyPath();
  v33 = &v17[*(v15 + 36)];
  *v33 = v32;
  *(v33 + 1) = 1;
  v33[16] = 0;
  outlined init with copy of TaskPriority?(v17, v12, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAE4CaseOSgGGAGySiSgGGMd);
  swift_storeEnumTagMultiPayload();
  outlined copy of Text.Storage(v30, *(&v30 + 1), v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v34 = v73;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TaskPriority?(v34, v75, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAG4CaseOSgGGAIySiSgGGANGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
  v35 = v78;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v34, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAG4CaseOSgGGAIySiSgGGANGMd);
  outlined init with copy of TaskPriority?(v35, v74, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v35, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
  v36 = v17;
  v37 = &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAE4CaseOSgGGAGySiSgGGMd;
  return outlined destroy of TaskPriority?(v36, v37);
}

uint64_t static Text.PostConfigured<A>(_:style:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v207 = a4;
  LODWORD(v197) = a2;
  v193 = a1;
  v200 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  v192 = a3;
  v6 = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
  v7 = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for _ConditionalContent();
  v182 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v178 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV4CaseOSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v178 - v12;
  v206 = v7;
  v180 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v178 - v15;
  v205 = v8;
  v184 = *(v8 - 8);
  __chkstk_darwin(v17);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v178 - v21;
  v23 = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  v24 = type metadata accessor for ModifiedContent();
  v183 = *(v24 - 8);
  __chkstk_darwin(v24);
  v188 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v187 = &v178 - v27;
  v202 = v28;
  v29 = type metadata accessor for _ConditionalContent();
  v186 = *(v29 - 8);
  __chkstk_darwin(v29);
  v185 = &v178 - v30;
  v204 = v31;
  v201 = v9;
  v32 = type metadata accessor for _ConditionalContent();
  v190 = *(v32 - 8);
  __chkstk_darwin(v32);
  v189 = &v178 - v33;
  v208 = v6;
  v34 = *(v6 - 8);
  __chkstk_darwin(v35);
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v178 - v39;
  v191 = *(v23 - 8);
  __chkstk_darwin(v41);
  v43 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v194 = &v178 - v45;
  v196 = v46;
  v203 = v23;
  v47 = type metadata accessor for _ConditionalContent();
  __chkstk_darwin(v47);
  v195 = &v178 - v48;
  v198 = v50;
  v199 = v49;
  if (v197 > 5u)
  {
    if (v197 != 6)
    {
      v51 = v34;
      if (v197 == 7)
      {
        static Color.white.getter();
        v119 = v207;
        View.foregroundColor(_:)();

        v120 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
        v271 = v119;
        v272 = v120;
        v121 = v208;
        WitnessTable = swift_getWitnessTable();
        _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v37, v121, WitnessTable);
        v123 = v205;
        v124 = *(v51 + 8);
        v194 = (v51 + 8);
        v197 = v124;
        v124(v37, v121);
        _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v40, v121, WitnessTable);
        v125 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
        v269 = WitnessTable;
        v270 = v125;
        v126 = swift_getWitnessTable();
        v127 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
        v267 = v126;
        v268 = v127;
        v128 = swift_getWitnessTable();
        v129 = v181;
        _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_0(v37, v123, v121);
        v265 = WitnessTable;
        v266 = v127;
        v130 = swift_getWitnessTable();
        v193 = v130;
        v131 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
        v263 = v130;
        v264 = v131;
        v132 = swift_getWitnessTable();
        v261 = v130;
        v262 = v132;
        v133 = v204;
        v134 = swift_getWitnessTable();
        v259 = v128;
        v260 = WitnessTable;
        v135 = v201;
        v136 = swift_getWitnessTable();
        v137 = v189;
        _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_0(v129, v133, v135);
        (*(v182 + 8))(v129, v135);
        v257 = v134;
        v258 = v136;
        v138 = v196;
        swift_getWitnessTable();
        v69 = v195;
        _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v137, v138);
        v139 = v137;
        v96 = v207;
        (*(v190 + 8))(v139, v138);
        v140 = v40;
        v141 = v208;
        v142 = v197;
        v197(v37, v208);
        v142(v140, v141);
        goto LABEL_14;
      }

      v52 = v207;
      if (v197 == 8)
      {
        static Color.white.getter();
        View.foregroundColor(_:)();

        v53 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
        v305 = v52;
        v306 = v53;
        v54 = v208;
        v55 = swift_getWitnessTable();
        v56 = v43;
        View.lineLimit(_:)();
        (*(v51 + 8))(v40, v54);
        v193 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
        v303 = v55;
        v304 = v193;
        v57 = v191;
        v58 = v203;
        v59 = swift_getWitnessTable();
        v60 = v194;
        _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v56, v58, v59);
        v197 = *(v57 + 8);
        v197(v56, v58);
        _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v60, v58, v59);
        v61 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
        v301 = v59;
        v302 = v61;
        v62 = swift_getWitnessTable();
        v299 = v59;
        v300 = v62;
        v63 = swift_getWitnessTable();
        v64 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
        v297 = v55;
        v298 = v64;
        v295 = swift_getWitnessTable();
        v296 = v193;
        v293 = swift_getWitnessTable();
        v294 = v55;
        v65 = swift_getWitnessTable();
        v291 = v63;
        v292 = v65;
        v66 = v196;
        swift_getWitnessTable();
        v67 = v195;
        _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_0(v56, v66, v58);
        v68 = v56;
        v69 = v67;
        v70 = v197;
        v197(v68, v58);
        v70(v194, v58);
LABEL_9:
        v96 = v207;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    static Color.secondary.getter();
    v97 = v207;
    View.foregroundColor(_:)();

    v98 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    v239 = v97;
    v240 = v98;
    v99 = v208;
    v100 = swift_getWitnessTable();
    v101 = v194;
    v102 = v100;
    v192 = v100;
    View.lineLimit(_:)();
    (*(v34 + 8))(v40, v99);
    v193 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    v237 = v102;
    v238 = v193;
    v103 = v203;
    v104 = swift_getWitnessTable();
    v105 = v188;
    View.multilineTextAlignment(_:)();
    (*(v191 + 8))(v101, v103);
    v106 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    v235 = v104;
    v236 = v106;
    v107 = v202;
    v108 = swift_getWitnessTable();
    v109 = v187;
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v105, v107, v108);
    v197 = *(v183 + 8);
    v197(v105, v107);
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v109, v107, v108);
    v110 = v185;
    v184 = v104;
    _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_0(v105, v103, v107);
    v233 = v104;
    v234 = v108;
    v111 = v204;
    v112 = swift_getWitnessTable();
    v113 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    v114 = v192;
    v231 = v192;
    v232 = v113;
    v229 = swift_getWitnessTable();
    v230 = v193;
    v227 = swift_getWitnessTable();
    v228 = v114;
    v115 = swift_getWitnessTable();
    v116 = v189;
    _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v110, v111);
    (*(v186 + 8))(v110, v111);
    v225 = v112;
    v226 = v115;
    v117 = v196;
    swift_getWitnessTable();
    v69 = v195;
    _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v116, v117);
    (*(v190 + 8))(v116, v117);
    v96 = v207;
    v118 = v197;
    v197(v188, v107);
    v118(v187, v107);
    goto LABEL_14;
  }

  v179 = v22;
  if (v197 == 4)
  {
    goto LABEL_10;
  }

  v51 = v34;
  v52 = v207;
  if (v197 == 5)
  {
    static Color.secondary.getter();
    View.foregroundColor(_:)();

    v71 = enum case for Text.Case.uppercase(_:);
    v72 = type metadata accessor for Text.Case();
    v73 = *(v72 - 8);
    (*(v73 + 104))(v13, v71, v72);
    (*(v73 + 56))(v13, 0, 1, v72);
    v74 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    v255 = v52;
    v256 = v74;
    v75 = v208;
    v76 = swift_getWitnessTable();
    v77 = v16;
    View.textCase(_:)();
    outlined destroy of TaskPriority?(v13, &_s7SwiftUI4TextV4CaseOSgMd);
    (*(v51 + 8))(v40, v75);
    v78 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    v253 = v76;
    v254 = v78;
    v79 = v206;
    v80 = swift_getWitnessTable();
    View.lineLimit(_:)();
    (*(v180 + 8))(v77, v79);
    v81 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    v251 = v80;
    v252 = v81;
    v82 = v205;
    v83 = swift_getWitnessTable();
    v84 = v179;
    v178 = v19;
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v19, v82, v83);
    v197 = *(v184 + 8);
    v184 += 8;
    v197(v19, v82);
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v84, v82, v83);
    v85 = v181;
    _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v19, v82);
    v249 = v76;
    v250 = v81;
    v86 = swift_getWitnessTable();
    v87 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    v247 = v86;
    v194 = v86;
    v248 = v87;
    v88 = swift_getWitnessTable();
    v245 = v86;
    v246 = v88;
    v89 = v204;
    v90 = swift_getWitnessTable();
    v243 = v83;
    v244 = v76;
    v91 = v201;
    v92 = swift_getWitnessTable();
    v93 = v189;
    _s7SwiftUI11ViewBuilderV11buildEither6secondAA19_ConditionalContentVyxq_Gq__tAA0C0RzAaIR_r0_lFZ_0(v85, v89, v91);
    (*(v182 + 8))(v85, v91);
    v241 = v90;
    v242 = v92;
    v94 = v196;
    swift_getWitnessTable();
    v69 = v195;
    _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v93, v94);
    (*(v190 + 8))(v93, v94);
    v95 = v197;
    v197(v178, v82);
    v95(v179, v82);
    goto LABEL_9;
  }

LABEL_12:
  static Color.primary.getter();
  View.foregroundColor(_:)();

  v143 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  v223 = v52;
  v224 = v143;
  v144 = v208;
  v145 = swift_getWitnessTable();
  v146 = v191;
  v147 = v145;
  v148 = v43;
  View.lineLimit(_:)();
  (*(v51 + 8))(v40, v144);
  v149 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v221 = v147;
  v222 = v149;
  v150 = v203;
  v151 = swift_getWitnessTable();
  v152 = v194;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v43, v150, v151);
  v197 = *(v146 + 8);
  v191 = v146 + 8;
  v197(v43, v150);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v152, v150, v151);
  v153 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  v219 = v151;
  v220 = v153;
  v193 = v151;
  v154 = swift_getWitnessTable();
  v155 = v185;
  _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v148, v150);
  v217 = v151;
  v218 = v154;
  v156 = v204;
  v192 = swift_getWitnessTable();
  v157 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
  v215 = v147;
  v216 = v157;
  v213 = swift_getWitnessTable();
  v214 = v149;
  v211 = swift_getWitnessTable();
  v212 = v147;
  v158 = swift_getWitnessTable();
  v159 = v189;
  v160 = v192;
  _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v155, v156);
  (*(v186 + 8))(v155, v156);
  v209 = v160;
  v210 = v158;
  v161 = v207;
  v162 = v196;
  swift_getWitnessTable();
  v163 = v195;
  _s7SwiftUI11ViewBuilderV11buildEither5firstAA19_ConditionalContentVyxq_Gx_tAA0C0RzAaIR_r0_lFZ_0(v159, v162);
  (*(v190 + 8))(v159, v162);
  v164 = v148;
  v96 = v161;
  v69 = v163;
  v165 = v197;
  v197(v164, v150);
  v165(v194, v150);
LABEL_14:
  v166 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  v289 = v96;
  v290 = v166;
  v167 = swift_getWitnessTable();
  v168 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v287 = v167;
  v288 = v168;
  v169 = swift_getWitnessTable();
  v170 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  v285 = v169;
  v286 = v170;
  v171 = swift_getWitnessTable();
  v283 = v169;
  v284 = v171;
  v172 = swift_getWitnessTable();
  v173 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
  v281 = v167;
  v282 = v173;
  v279 = swift_getWitnessTable();
  v280 = v168;
  v277 = swift_getWitnessTable();
  v278 = v167;
  v174 = swift_getWitnessTable();
  v275 = v172;
  v276 = v174;
  v273 = swift_getWitnessTable();
  v274 = v169;
  v175 = v199;
  v176 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v69, v175, v176);
  return (*(v198 + 8))(v69, v175);
}

uint64_t Text.with(style:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = specialized static Text.PreConfigured(_:style:)(a2, a3, a4 & 1, a5, a1);
  v10 = v9;
  v12 = v11;
  _s7SwiftUI4TextV09MusicCoreB0E14PostConfigured33_40F54D6C5BFFDFC28B51EF8FA47DF465LL_5styleQrx_AcDE5StyleOtAA4ViewRzlFZAC_Tt2g5(v8, v9, v11 & 1, v13, a1, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t specialized static Text.PreConfigured(_:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      static Font.title2.getter();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      static Font.Weight.semibold.getter();
      v7 = Text.fontWeight(_:)();
      v9 = v8;
      v11 = v10;
      static Font.caption.getter();
      v5 = Text.font(_:)();

      outlined consume of Text.Storage(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    static Font.body.getter();
    goto LABEL_9;
  }

  static Font.title3.getter();
LABEL_9:
  v5 = Text.font(_:)();

  return v5;
}

unint64_t lazy protocol witness table accessor for type Text.TitleKind and conformance Text.TitleKind()
{
  result = lazy protocol witness table cache variable for type Text.TitleKind and conformance Text.TitleKind;
  if (!lazy protocol witness table cache variable for type Text.TitleKind and conformance Text.TitleKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.TitleKind and conformance Text.TitleKind);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for Text.Style(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Text.Style(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1003C1B30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGAQGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGACyAEyAEyAnIyAG4CaseOSgGGAPGANGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIySiSgGGAEyAqIyAA0F9AlignmentOGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGySiSgGGAGyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAG4CaseOSgGGAIySiSgGGANGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAE4CaseOSgGGAGySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAE4CaseOSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  outlined init with copy of CAPackageDefinition?(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  outlined init with copy of CAPackageDefinition?(v12, v11);
  outlined init with copy of CAPackageDefinition?(a1, v11);
  outlined destroy of TaskPriority?(v18, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
  VerticalToggleSlider.packageDefinition.didset(v12);
  outlined destroy of TaskPriority?(v12, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
  return outlined destroy of TaskPriority?(a1, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  outlined init with copy of CAPackageDefinition?(v4, v4 + 416);
  return VerticalToggleSlider.packageDefinition.modify;
}

void VerticalToggleSlider.packageDefinition.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    outlined init with copy of CAPackageDefinition?(v2 + 624, v2 + 728);
    outlined init with copy of CAPackageDefinition?(v2 + 624, v2 + 728);
    outlined init with copy of CAPackageDefinition?(v2 + 104, v2 + 728);
    outlined destroy of TaskPriority?(v4, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
    VerticalToggleSlider.packageDefinition.didset(v2 + 104);
    outlined destroy of TaskPriority?(v2 + 104, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
    outlined destroy of TaskPriority?(v2 + 624, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    outlined init with copy of CAPackageDefinition?(v2 + 208, v2 + 624);
    outlined init with copy of CAPackageDefinition?(v4, v2 + 624);
    outlined destroy of TaskPriority?(v2 + 416, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
    VerticalToggleSlider.packageDefinition.didset(v2 + 208);
    outlined destroy of TaskPriority?(v2 + 208, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
    v28 = v4;
  }

  outlined destroy of TaskPriority?(v28, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  VerticalToggleSlider.mode.didset(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return VerticalToggleSlider.isOn.modify;
}

void VerticalToggleSlider.isOn.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  VerticalToggleSlider.mode.didset(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    VerticalToggleSlider.internalValue.setter(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

void (*VerticalToggleSlider.value.modify(void (**a1)(float **a1, char a2)))(float **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return VerticalToggleSlider.value.modify;
  }

  return result;
}

void VerticalToggleSlider.value.modify(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  VerticalToggleSlider.internalValue.setter(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(145);
    v2._object = 0x80000001004D4010;
    v2._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v2);
    Float.write<A>(to:)();
    v3._countAndFlagsBits = 3026478;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 0xD000000000000048;
    v4._object = 0x80000001004D4060;
    String.append(_:)(v4);
    if (one-time initialization token for musicCoreUI != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.musicCoreUI);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0, 0xE000000000000000, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return VerticalToggleSlider.minValue.modify;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(145);
    v2._object = 0x80000001004D4010;
    v2._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v2);
    Float.write<A>(to:)();
    v3._countAndFlagsBits = 3026478;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 0xD000000000000048;
    v4._object = 0x80000001004D4060;
    String.append(_:)(v4);
    if (one-time initialization token for musicCoreUI != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.musicCoreUI);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0, 0xE000000000000000, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return VerticalToggleSlider.maxValue.modify;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(164);
    v3._object = 0x80000001004D4010;
    v3._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 3026478;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    Float.write<A>(to:)();
    v5._countAndFlagsBits = 0xD00000000000005BLL;
    v5._object = 0x80000001004D40B0;
    String.append(_:)(v5);
    if (one-time initialization token for musicCoreUI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.musicCoreUI);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136446210;
      v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0, 0xE000000000000000, v12);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

void (*VerticalToggleSlider.valueRange.modify(void (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return VerticalToggleSlider.valueRange.modify;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
    v5 = VerticalToggleSlider.levelView.getter();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return VerticalToggleSlider.minLevelOffsetRatio.modify;
}

void VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
      v8 = VerticalToggleSlider.levelView.getter();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = VerticalToggleSlider.visualEffectView.getter();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return VerticalToggleSlider.isVisuallyDisabled.modify;
}

void VerticalToggleSlider.isVisuallyDisabled.modify(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  if ((a2 & 1) == 0)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = [v2[3] isEnabled] ^ 1;
LABEL_8:
  v8 = *(v2[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v8)
  {
    v9 = 0.4;
    if (!v7)
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = VerticalToggleSlider.visualEffectView.getter();
  v11 = v10;
  v12 = 1.0;
  if (v7)
  {
    v12 = 0.5;
  }

  [v10 setAlpha:v12];

LABEL_15:

  free(v2);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    VerticalToggleSlider.setupLongPressGestureRecognizer()();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return VerticalToggleSlider.longPressMode.modify;
}

void VerticalToggleSlider.longPressMode.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    VerticalToggleSlider.setupLongPressGestureRecognizer()();
  }

  free(v1);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = VerticalToggleSlider.growView.getter();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = VerticalToggleSlider.AnchorPoint.location(for:)(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

void (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return VerticalToggleSlider.growAnchorPoint.modify;
}

void VerticalToggleSlider.growAnchorPoint.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = VerticalToggleSlider.growView.getter();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = VerticalToggleSlider.AnchorPoint.location(for:)(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id VerticalToggleSlider.stretchView.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id VerticalToggleSlider.growView.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = VerticalToggleSlider.stretchView.getter();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void VerticalToggleSlider.internalValue.setter(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
      v10 = VerticalToggleSlider.levelView.getter();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id VerticalToggleSlider.feedbackGenerator.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void VerticalToggleSlider.updateColors()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = VerticalToggleSlider.visualEffectView.getter();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = VerticalToggleSlider.levelView.getter();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    VerticalToggleSlider.updatePackageColors()();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = closure #1 in VerticalToggleSlider.updateColors();
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
    v20[3] = &block_descriptor_102;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = VerticalToggleSlider.levelView.getter();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void VerticalToggleSlider.updateDisablementAppearance()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = VerticalToggleSlider.visualEffectView.getter();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id VerticalToggleSlider.visualEffectView.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id VerticalToggleSlider.levelView.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = VerticalToggleSlider.visualEffectView.getter();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id VerticalToggleSlider.setupTransformContainers()()
{
  v1 = VerticalToggleSlider.growView.getter();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = VerticalToggleSlider.AnchorPoint.location(for:)(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = VerticalToggleSlider.stretchView.getter();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void VerticalToggleSlider.setupLevelView()()
{
  v1 = VerticalToggleSlider.levelView.getter();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = VerticalToggleSlider.visualEffectView.getter();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = VerticalToggleSlider.levelView.getter();
    v2 = VerticalToggleSlider.visualEffectView.getter();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = VerticalToggleSlider.visualEffectView.getter();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = VerticalToggleSlider.levelView.getter();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void VerticalToggleSlider.updatePackage()()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      outlined init with copy of CAPackageDefinition?(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      outlined init with copy of CAPackageDefinition(v48, v47);
      outlined init with copy of CAPackageDefinition(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = static NSObject.== infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = VerticalToggleSlider.visualEffectView.getter();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004F3000;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_100507B30;
      CoreAnimationPackageView.stateName.didset(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_100507B20;
      v43 = v11;
      CoreAnimationPackageView.stateName.didset(v41, v42);

      type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
      v44 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #1 in VerticalToggleSlider.updatePackage(), v45);
    }

    VerticalToggleSlider.updatePackageColors()();
    outlined destroy of TaskPriority?(&v52, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void VerticalToggleSlider.updatePackageColors()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          CoreAnimationPackageView.updateColor()();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          CoreAnimationPackageView.updateColor()();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void VerticalToggleSlider.setupLongPressGestureRecognizer()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void VerticalToggleSlider.longPressed(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        v7 = VerticalToggleSlider.growView.getter();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        VerticalToggleSlider.dragUpdate(touchLocation:)(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        VerticalToggleSlider.mode.didset(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      VerticalToggleSlider.dragEnded()();
    }
  }
}

void VerticalToggleSlider.dragged(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = VerticalToggleSlider.growView.getter();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        VerticalToggleSlider.dragUpdate(touchLocation:)(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        VerticalToggleSlider.mode.didset(v5);
        v6 = VerticalToggleSlider.growView.getter();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      VerticalToggleSlider.dragEnded()();
    }
  }
}

id VerticalToggleSlider.dragEnded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    VerticalToggleSlider.mode.didset(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void VerticalToggleSlider.dragUpdate(touchLocation:)(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = VerticalToggleSlider.growView.getter();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  VerticalToggleSlider.internalValue.setter(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_100507B40, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = static VerticalToggleSlider.ShapeChange.zero;
      v29 = *&qword_100610670;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    VerticalToggleSlider.shapeChange.didset(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
    v31 = VerticalToggleSlider.levelView.getter();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void VerticalToggleSlider.packageDefinition.didset(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = v12;
      v31 = *(a1 + 80);
      v32 = *(a1 + 96);
      v13 = *(a1 + 32);
      v27 = *(a1 + 16);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      outlined init with copy of CAPackageDefinition?(v58, v33);
      outlined init with copy of CAPackageDefinition?(v58, v33);
      outlined init with copy of CAPackageDefinition?(a1, v33);
      v16 = specialized static CAPackageDefinition.__derived_struct_equals(_:_:)(v56, &v35);
      outlined destroy of TaskPriority?(v58, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
      outlined destroy of TaskPriority?(&v26, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      outlined destroy of TaskPriority?(v33, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    outlined init with copy of CAPackageDefinition?(v58, v56);
    outlined init with copy of CAPackageDefinition?(a1, v56);
    outlined destroy of TaskPriority?(&v35, &_s11MusicCoreUI19CAPackageDefinitionVSgMd);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v19;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  outlined init with copy of CAPackageDefinition?(v58, v56);
  outlined init with copy of CAPackageDefinition?(a1, v56);
  outlined destroy of TaskPriority?(&v35, &_s11MusicCoreUI19CAPackageDefinitionVSg_ADtMd);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  VerticalToggleSlider.updatePackage()();
}

__n128 VerticalToggleSlider.AnchorPoint.location(for:)(id a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && a1 + 1 >= 2)
        {
          if (a1 != 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || a1 + 1 < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && a1 + 1 >= 2)
      {
        if (a1 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_34;
    }

    if (a1 != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || a1 + 1 < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  VerticalToggleSlider.AnchorPoint.location(for:)(0, a2);
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  v12[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v13 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v13 = 0;
  v13[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v14 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v14] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v16 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v17 = *&qword_100610670;
  *v16 = static VerticalToggleSlider.ShapeChange.zero;
  v16[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v18[4] = 0;
  v18[5] = 0;
  v19 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0x3FF0000000000000;
  v20 = type metadata accessor for VerticalToggleSlider();
  v19[4] = 0;
  v19[5] = 0;
  v44.receiver = v4;
  v44.super_class = v20;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  [v21 setDeliversTouchesForGesturesToSuperview:0];
  type metadata accessor for UIAction(0, &_sSo8UIActionCML_0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v21 addAction:v22 forControlEvents:64];

  v23 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v21 action:"dragged:"];
  [v21 addGestureRecognizer:v23];

  VerticalToggleSlider.setupLongPressGestureRecognizer()();
  [v21 setClipsToBounds:0];
  VerticalToggleSlider.setupTransformContainers()();
  v24 = VerticalToggleSlider.visualEffectView.getter();
  [v24 setUserInteractionEnabled:0];

  v25 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v21[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v21[v25] setAutoresizingMask:18];
  v26 = *&v21[v25];
  v27 = VerticalToggleSlider.stretchView.getter();
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v26 setFrame:{v29, v31, v33, v35}];
  v36 = [*&v21[v25] contentView];
  v37 = [v36 layer];

  [v37 setCompositingFilter:kCAFilterPlusL];
  [*&v21[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v21[v25]];
  VerticalToggleSlider.setupLevelView()();
  VerticalToggleSlider.updateColors()();
  VerticalToggleSlider.updatePackage()();
  v38 = VerticalToggleSlider.stretchView.getter();
  static UIView.Corner.rounded.getter();
  v39 = type metadata accessor for UIView.Corner();
  (*(*(v39 - 8) + 56))(v11, 0, 1, v39);
  UIView.corner.setter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0);
  v40 = swift_allocObject();
  v43 = xmmword_1004F2400;
  *(v40 + 16) = xmmword_1004F2400;
  *(v40 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v40 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v41 = swift_allocObject();
  *(v41 + 16) = v43;
  *(v41 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v41 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v21;
}

void VerticalToggleSlider.isEnabled.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v13.receiver = v1;
  v13.super_class = v3;
  v4 = objc_msgSendSuper2(&v13, "isEnabled");
  v12.receiver = v1;
  v12.super_class = v3;
  objc_msgSendSuper2(&v12, "setEnabled:", a1 & 1);
  if (v4 != [v1 isEnabled])
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v1[v5])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = VerticalToggleSlider.visualEffectView.getter();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for VerticalToggleSlider();
  v7.receiver = v0;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v5 = VerticalToggleSlider.stretchView.getter();
  static UIView.Corner.rounded.getter();
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  UIView.corner.setter();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  VerticalToggleSlider.updateColors()();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id closure #1 in VerticalToggleSlider.updateColors()(void *a1)
{
  v2 = [a1 userInterfaceStyle] == 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_100507B50[v2]];
  return v5;
}

void VerticalToggleSlider.mode.didset(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v159[-v5];
  v7 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v8 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v8 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v8)
    {
      VerticalToggleSlider.internalValue.setter(1.0);
    }
  }

  else if (((v8 ^ a1) & 1) == 0)
  {
    return;
  }

  v9 = VerticalToggleSlider.feedbackGenerator.getter();
  [v9 userInteractionStarted];

  v10 = objc_opt_self();
  if ([v10 areAnimationsEnabled])
  {
    v11 = v1[v7];
    if (a1 == 2)
    {
      if (v11 == 2)
      {
        return;
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v11 & 1;
      if (v11)
      {
        v13 = one-time initialization token for timingParameters;
        v14 = v1;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = static VerticalToggleSlider.AnimationSpecs.Expand.SizeAndPosition.timingParameters;
        [static VerticalToggleSlider.AnimationSpecs.Expand.SizeAndPosition.timingParameters settlingDuration];
        v17 = v16;
        [v15 mass];
        v19 = v18;
        [v15 stiffness];
        v21 = v20;
        [v15 damping];
        v23 = v22;
        *&aBlock.tx = partial apply for closure #9 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v12;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
        *&aBlock.d = &block_descriptor_171_0;
        v24 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v24 options:0 mass:v17 stiffness:0.0 damping:v19 initialVelocity:v21 animations:v23 completion:0.0];
        _Block_release(v24);
        if (one-time initialization token for timingParameters != -1)
        {
          swift_once();
        }

        v25 = static VerticalToggleSlider.AnimationSpecs.Expand.ColorAndShadow.timingParameters;
        v26 = swift_allocObject();
        *(v26 + 16) = v14;
        v27 = v14;
        [v25 settlingDuration];
        v29 = v28;
        [v25 mass];
        v31 = v30;
        [v25 stiffness];
        v33 = v32;
        [v25 damping];
        v35 = v34;
        *&aBlock.tx = partial apply for closure #10 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v26;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
        *&aBlock.d = &block_descriptor_177_0;
        v36 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v36 options:0 mass:v29 stiffness:0.0 damping:v31 initialVelocity:v33 animations:v35 completion:0.0];
        _Block_release(v36);
      }

      else
      {
        v97 = one-time initialization token for timingParameters;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = static VerticalToggleSlider.AnimationSpecs.TurnOn.Size.timingParameters;
        [static VerticalToggleSlider.AnimationSpecs.TurnOn.Size.timingParameters settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = partial apply for closure #9 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v12;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
        *&aBlock.d = &block_descriptor_159;
        v108 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (one-time initialization token for timingParameters != -1)
        {
          swift_once();
        }

        v109 = static VerticalToggleSlider.AnimationSpecs.TurnOn.SymbolAndPlatterColor.timingParameters;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = partial apply for closure #11 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
        *&aBlock.d = &block_descriptor_165_0;
        v120 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
        v121 = static OS_dispatch_queue.main.getter();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #12 in VerticalToggleSlider.mode.didset, v122);
      }

LABEL_62:

      return;
    }

    if (v11 != 2)
    {
      if (((a1 ^ v11) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v11 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v11 & 1;
      if (v11)
      {
        v75 = one-time initialization token for timingParameters;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = static VerticalToggleSlider.AnimationSpecs.Expand.SizeAndPosition.timingParameters;
        [static VerticalToggleSlider.AnimationSpecs.Expand.SizeAndPosition.timingParameters settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = partial apply for closure #6 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
        *&aBlock.d = &block_descriptor_123_1;
        v86 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (one-time initialization token for timingParameters != -1)
        {
          swift_once();
        }

        v87 = static VerticalToggleSlider.AnimationSpecs.Expand.ColorAndShadow.timingParameters;
        [static VerticalToggleSlider.AnimationSpecs.Expand.ColorAndShadow.timingParameters settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = partial apply for closure #7 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &block_descriptor_126_0;
      }

      else
      {
        v138 = one-time initialization token for timingParameters;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = static VerticalToggleSlider.AnimationSpecs.Collapse.SizeAndPosition.timingParameters;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = partial apply for closure #6 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
        *&aBlock.d = &block_descriptor_114_2;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = CFRange.init(_:);
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        *&aBlock.d = &block_descriptor_117_1;
        v152 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (one-time initialization token for timingParameters != -1)
        {
          swift_once();
        }

        v153 = static VerticalToggleSlider.AnimationSpecs.Collapse.ColorAndShadow.timingParameters;
        [static VerticalToggleSlider.AnimationSpecs.Collapse.ColorAndShadow.timingParameters settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = partial apply for closure #7 in VerticalToggleSlider.mode.didset;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &block_descriptor_120;
      }

      *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v10 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_62;
    }

    if ((a1 & 1) == 0)
    {
      if (one-time initialization token for timingParameters != -1)
      {
        swift_once();
      }

      v45 = static VerticalToggleSlider.AnimationSpecs.TurnOff.SliderPosition.timingParameters;
      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      v47 = v2;
      [v45 settlingDuration];
      v49 = v48;
      [v45 mass];
      v51 = v50;
      [v45 stiffness];
      v53 = v52;
      [v45 damping];
      v55 = v54;
      *&aBlock.tx = partial apply for closure #1 in VerticalToggleSlider.mode.didset;
      *&aBlock.ty = v46;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock.d = &block_descriptor_132_1;
      v56 = _Block_copy(&aBlock);

      [v10 _animateUsingSpringWithDuration:6 delay:v56 options:0 mass:v49 stiffness:0.0 damping:v51 initialVelocity:v53 animations:v55 completion:0.0];
      _Block_release(v56);
    }

    if (one-time initialization token for timingFunction != -1)
    {
      swift_once();
    }

    v57 = static VerticalToggleSlider.AnimationSpecs.TurnOff.Size.timingFunction;
    *&v58 = COERCE_DOUBLE(swift_allocObject());
    v59 = *&v58;
    v60 = a1 & 1;
    if (a1)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = 0.1;
    }

    *(v58 + 16) = v60;
    *(v58 + 24) = v2;
    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v57];
    *&aBlock.tx = partial apply for closure #2 in VerticalToggleSlider.mode.didset;
    aBlock.ty = v59;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
    *&aBlock.d = &block_descriptor_141_0;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = CFRange.init(_:);
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *&aBlock.d = &block_descriptor_144_0;
    v66 = _Block_copy(&aBlock);

    [v10 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v61];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
    v67 = static OS_dispatch_queue.main.getter();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #4 in VerticalToggleSlider.mode.didset, v68);

    if (!v60)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = partial apply for closure #5 in VerticalToggleSlider.mode.didset;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock.d = &block_descriptor_153_0;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v10 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v37 = [v1 superview];
    [v37 setNeedsLayout];

    v38 = [v1 superview];
    [v38 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v39 = v1[v7];
    v40 = 1.0;
    v41 = 1.0;
    if (v39 != 2 && (v39 & 1) != 0)
    {
      v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v43 = 2.0;
      if ((v42[1] & 1) == 0)
      {
        v43 = *v42;
      }

      v44 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v44[1])
      {
        v40 = 2.0;
      }

      else
      {
        v40 = *v44;
      }

      v41 = v43;
    }

    CGAffineTransformMakeScale(&aBlock, v41, v40);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = VerticalToggleSlider.growView.getter();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    VerticalToggleSlider.updatePackage()();
    LOBYTE(aBlock.a) = 1;
    VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
    v129 = VerticalToggleSlider.levelView.getter();
    v130 = v1[v7];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = VerticalToggleSlider.stretchView.getter();
    static UIView.Corner.rounded.getter();
    v136 = type metadata accessor for UIView.Corner();
    (*(*(v136 - 8) + 56))(v6, 0, 1, v136);
    UIView.corner.setter();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void closure #9 in VerticalToggleSlider.mode.didset(unsigned __int8 *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v30[-v6];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v8 = [a1 superview];
  [v8 setNeedsLayout];

  v9 = [a1 superview];
  [v9 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v10 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v11 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = 1.0;
  v13 = 1.0;
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v14 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v15 = 2.0;
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
    }

    v16 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v16[1])
    {
      v12 = 2.0;
    }

    else
    {
      v12 = *v16;
    }

    v13 = v15;
  }

  CGAffineTransformMakeScale(&v31, v13, v12);
  v17 = *&v31.c;
  v18 = *&v31.tx;
  v19 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = *&v31.a;
  *(v19 + 1) = v17;
  *(v19 + 2) = v18;
  v20 = VerticalToggleSlider.growView.getter();
  v21 = *(v19 + 1);
  *&v31.a = *v19;
  *&v31.c = v21;
  *&v31.tx = *(v19 + 2);
  [v20 setTransform:&v31];

  v22 = VerticalToggleSlider.stretchView.getter();
  static UIView.Corner.rounded.getter();
  v23 = type metadata accessor for UIView.Corner();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  UIView.corner.setter();

  if (a2)
  {
    LOBYTE(v31.a) = 1;
    VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
    v24 = VerticalToggleSlider.levelView.getter();
    v25 = a1[v10];
    v26 = [a1 traitCollection];
    if (v25 == 2)
    {

      v27 = 0.0;
    }

    else if (v25)
    {

      v27 = 1.0;
    }

    else
    {
      v28 = v26;
      v29 = [v26 accessibilityContrast];

      v27 = 0.5;
      if (v29 == 1)
      {
        v27 = 1.0;
      }
    }

    [v24 setAlpha:v27];

    VerticalToggleSlider.updatePackage()();
  }

  else
  {
    LOBYTE(v31.a) = 0;
    VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(1065353216);
  }

  VerticalToggleSlider.updateColors()();
}

uint64_t closure #10 in VerticalToggleSlider.mode.didset()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t closure #11 in VerticalToggleSlider.mode.didset(unsigned __int8 *a1)
{
  v2 = VerticalToggleSlider.levelView.getter();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  VerticalToggleSlider.updatePackage()();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

uint64_t closure #12 in VerticalToggleSlider.mode.didset(void *a1)
{
  if (one-time initialization token for timingFunction != -1)
  {
    swift_once();
  }

  v2 = static VerticalToggleSlider.AnimationSpecs.TurnOn.SliderPosition.timingFunction;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = partial apply for closure #1 in closure #12 in VerticalToggleSlider.mode.didset;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_183_1;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];
}

void closure #1 in VerticalToggleSlider.mode.didset(uint64_t a1)
{
  v2 = VerticalToggleSlider.levelView.getter();
  v3 = VerticalToggleSlider.visualEffectView.getter();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_100610670;
  *v12 = static VerticalToggleSlider.ShapeChange.zero;
  v12[1] = v17;
  VerticalToggleSlider.shapeChange.didset(v13, v14, v15, v16);
}

uint64_t closure #2 in VerticalToggleSlider.mode.didset(char a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v5 = __chkstk_darwin(v4 - 8);
  v10 = v28 - v9;
  if (a1)
  {
    v11 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v8.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v12 = *&qword_100610670;
    *v11 = static VerticalToggleSlider.ShapeChange.zero;
    *(v11 + 1) = v12;
    VerticalToggleSlider.shapeChange.didset(v5, v6, v7, v8);
    LOBYTE(v28[0]) = 1;
    VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
    v13 = VerticalToggleSlider.levelView.getter();
    v14 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v15 = [a2 traitCollection];
    if (v14 == 2)
    {

      v16 = 0.0;
    }

    else if (v14)
    {

      v16 = 1.0;
    }

    else
    {
      v17 = v15;
      v18 = [v15 accessibilityContrast];

      v16 = 0.5;
      if (v18 == 1)
      {
        v16 = 1.0;
      }
    }

    [v13 setAlpha:v16];
  }

  v19 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  v20 = VerticalToggleSlider.growView.getter();
  v21 = *(v19 + 1);
  v28[0] = *v19;
  v28[1] = v21;
  v28[2] = *(v19 + 2);
  [v20 setTransform:v28];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v22 = [a2 superview];
  [v22 setNeedsLayout];

  v23 = [a2 superview];
  [v23 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v24 = VerticalToggleSlider.stretchView.getter();
  static UIView.Corner.rounded.getter();
  v25 = type metadata accessor for UIView.Corner();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  UIView.corner.setter();

  v26 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v26, v28, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v28);
}

void closure #5 in VerticalToggleSlider.mode.didset(unsigned __int8 *a1)
{
  v7 = VerticalToggleSlider.levelView.getter();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void closure #6 in VerticalToggleSlider.mode.didset(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-v5];
  v7 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v8 = 1.0;
  v9 = 1.0;
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v10 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v11 = 2.0;
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
    }

    v12 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v12 + 8))
    {
      v8 = 2.0;
    }

    else
    {
      v8 = *v12;
    }

    v9 = v11;
  }

  CGAffineTransformMakeScale(&v27, v9, v8);
  v13 = *&v27.c;
  v14 = *&v27.tx;
  v15 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v15 = *&v27.a;
  v15[1] = v13;
  v15[2] = v14;
  v16 = VerticalToggleSlider.growView.getter();
  v17 = v15[1];
  *&v27.a = *v15;
  *&v27.c = v17;
  *&v27.tx = v15[2];
  [v16 setTransform:&v27];

  v18 = VerticalToggleSlider.stretchView.getter();
  static UIView.Corner.rounded.getter();
  v19 = type metadata accessor for UIView.Corner();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  UIView.corner.setter();

  if ((a2 & 1) == 0)
  {
    v24 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v23.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v25 = *&qword_100610670;
    *v24 = static VerticalToggleSlider.ShapeChange.zero;
    v24[1] = v25;
    VerticalToggleSlider.shapeChange.didset(v20, v21, v22, v23);
  }
}

uint64_t closure #7 in VerticalToggleSlider.mode.didset(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  VerticalToggleSlider.updateLevelViewPosition(forcedValue:)(0x100000000);
  v4 = VerticalToggleSlider.levelView.getter();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

uint64_t closure #1 in VerticalToggleSlider.updatePackage()(uint64_t result, uint64_t a2)
{
  if (*(result + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_100507B60;
    CoreAnimationPackageView.stateName.didset(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, partial apply for closure #1 in VerticalToggleSlider.didMoveToWindow(), v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void closure #1 in VerticalToggleSlider.didMoveToWindow()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    VerticalToggleSlider.updatePackage()();
  }
}

id @objc VerticalToggleSlider.isEnabled.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id VerticalToggleSlider.isEnabled.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

id VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return VerticalToggleSlider.isHighlighted.didset(v4);
}

id VerticalToggleSlider.isHighlighted.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = objc_opt_self();
    v7 = v2;
    if ([v6 areAnimationsEnabled])
    {
      if (one-time initialization token for timingParameters != -1)
      {
        swift_once();
      }

      v8 = static VerticalToggleSlider.AnimationSpecs.TouchDown.timingParameters;
      [static VerticalToggleSlider.AnimationSpecs.TouchDown.timingParameters settlingDuration];
      v10 = v9;
      [v8 mass];
      v12 = v11;
      [v8 stiffness];
      v14 = v13;
      [v8 damping];
      v16 = v15;
      *&v26.tx = partial apply for closure #1 in VerticalToggleSlider.isHighlighted.didset;
      *&v26.ty = v5;
      *&v26.a = _NSConcreteStackBlock;
      *&v26.b = 1107296256;
      *&v26.c = thunk for @escaping @callee_guaranteed () -> ();
      *&v26.d = &block_descriptor_96;
      v17 = _Block_copy(&v26);

      [v6 _animateUsingSpringWithDuration:6 delay:v17 options:0 mass:v10 stiffness:0.0 damping:v12 initialVelocity:v14 animations:v16 completion:0.0];
      _Block_release(v17);
    }

    else
    {
      if ([v7 isHighlighted])
      {
        CGAffineTransformMakeScale(&v26, 0.95, 0.95);
        v19 = *&v26.a;
        v18 = *&v26.c;
        v20 = *&v26.tx;
      }

      else
      {
        v18 = xmmword_100507B70;
        v19 = xmmword_1005079C0;
        v20 = 0uLL;
      }

      *&v26.a = v19;
      *&v26.c = v18;
      *&v26.tx = v20;
      [v7 setTransform:&v26];
      v21 = *&v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v21)
      {
        v22 = v21;
        if ([v7 isHighlighted])
        {
          CGAffineTransformMakeScale(&v26, 0.9, 0.9);
          v24 = *&v26.a;
          v23 = *&v26.c;
          v25 = *&v26.tx;
        }

        else
        {
          v23 = xmmword_100507B70;
          v24 = xmmword_1005079C0;
          v25 = 0uLL;
        }

        *&v26.a = v24;
        *&v26.c = v23;
        *&v26.tx = v25;
        [v22 setTransform:&v26];
      }
    }
  }

  return result;
}

void closure #1 in VerticalToggleSlider.isHighlighted.didset(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_100507B70;
    v3 = xmmword_1005079C0;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_100507B70;
      v8 = xmmword_1005079C0;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void closure #1 in VerticalToggleSlider.setupInteractions()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v1[v2] == 1)
    {
      [v1 sendActionsForControlEvents:0x10000];
      v3 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v3 != 2);
      VerticalToggleSlider.mode.didset(v3);
      [v1 sendActionsForControlEvents:4096];
      [v1 sendActionsForControlEvents:0x40000];
    }
  }
}

void VerticalToggleSlider.shapeChange.didset(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v10.f64[0] = v56.n128_u64[0];
  *&v10.f64[1] = v57.n128_u64[0];
  *&v11.f64[0] = v58.n128_u64[0];
  *&v11.f64[1] = v59.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v10), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v11)))) & 1) == 0)
  {
    v12 = VerticalToggleSlider.stretchView.getter();
    static UIView.Corner.rounded.getter();
    v13 = type metadata accessor for UIView.Corner();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    UIView.corner.setter();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v9, static VerticalToggleSlider.ShapeChange.zero), vceqq_f64(v9[1], *&qword_100610670)))))
    {
      v43 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v45 = v44;
      v47 = v46;
      v48 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v45 != *v48 || v47 != v48[1])
      {
        [*&v5[v43] setAnchorPoint:?];
        v50 = *&v5[v43];
        [v5 bounds];
        [v50 setFrame:?];
      }

      v51 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v51 = 0x3FF0000000000000;
      *(v51 + 1) = 0;
      *(v51 + 2) = 0;
      *(v51 + 3) = 0x3FF0000000000000;
      *(v51 + 4) = 0;
      *(v51 + 5) = 0;
      v52 = *&v5[v43];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v52 setTransform:{&aBlock, *&v56}];
      v53 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v53)
      {
        v54 = *(v51 + 1);
        *&aBlock.a = *v51;
        *&aBlock.c = v54;
        *&aBlock.tx = *(v51 + 2);
        CGAffineTransformInvert(&v65, &aBlock);
        aBlock = v65;
        [v53 setTransform:&aBlock];
      }

      v55 = *&v5[v43];
      [v5 bounds];
      [v55 setFrame:?];
    }

    else
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in VerticalToggleSlider.shapeChange.didset;
      *(v16 + 24) = v15;
      *&aBlock.tx = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock.ty = v16;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = thunk for @escaping @callee_guaranteed () -> ();
      *&aBlock.d = &block_descriptor_64;
      v17 = _Block_copy(&aBlock);
      v18 = v5;

      [v14 performWithoutAnimation:v17];
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v20 = VerticalToggleSlider.growView.getter();
        [v20 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v67.origin.x = v22;
        v67.origin.y = v24;
        v67.size.width = v26;
        v67.size.height = v28;
        v29 = CGRectGetWidth(v67) + v9->f64[1];
        v30 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v31 = v29 / CGRectGetWidth(v68);
        [*&v18[v30] frame];
        v32 = CGRectGetHeight(v69) + v9->f64[0];
        [*&v18[v30] frame];
        Height = CGRectGetHeight(v70);
        CGAffineTransformMakeScale(&aBlock, v31, v32 / Height);
        v59 = *&aBlock.c;
        v58 = *&aBlock.a;
        v65 = aBlock;
        v34 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v9[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v65, &aBlock, &v62);
        v35 = &v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v36 = v63;
        v37 = v64;
        v38 = v62;
        *v35 = v62;
        *(v35 + 1) = v63;
        *(v35 + 2) = v64;
        v39 = *&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v61.a = v38;
        *&v61.c = v36;
        *&v61.tx = v37;
        [v39 setTransform:&v61];
        v40 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v41 = *&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v41)
        {
          v61 = *v35;
          CGAffineTransformInvert(&v60, &v61);
          v61 = v60;
          [v41 setTransform:&v61];
          v42 = *&v18[v40];
          if (v42)
          {
            *&v61.a = v58;
            *&v61.c = v59;
            *&v61.tx = v34;
            CGAffineTransformInvert(&v60, &v61);
            v61 = v60;
            [v42 setTransform:&v61];
          }
        }
      }
    }
  }
}

void closure #1 in VerticalToggleSlider.shapeChange.didset(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v2 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v2 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = VerticalToggleSlider.stretchView.getter();
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  if (v8 != v5 || v10 != v4)
  {
    v12 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v5, v4}];
    v13 = *&a1[v12];
    [a1 bounds];
    [v13 setFrame:?];
  }
}

id one-time initialization function for timingParameters()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.TouchDown.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.TurnOn.SymbolAndPlatterColor.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.TurnOn.Size.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.TurnOff.SliderPosition.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.Expand.SizeAndPosition.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.Expand.ColorAndShadow.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.Collapse.SizeAndPosition.timingParameters = result;
  return result;
}

{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  static VerticalToggleSlider.AnimationSpecs.Collapse.ColorAndShadow.timingParameters = result;
  return result;
}

id one-time initialization function for timingFunction()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  static VerticalToggleSlider.AnimationSpecs.TurnOn.SliderPosition.timingFunction = result;
  return result;
}

{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  static VerticalToggleSlider.AnimationSpecs.TurnOff.Size.timingFunction = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void VerticalToggleSlider.value.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    VerticalToggleSlider.internalValue.setter(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return VerticalToggleSlider.dragEnded()();
  }

  return result;
}

uint64_t sub_1003CA730()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void specialized closure #2 in VerticalToggleSlider.init(frame:)(unsigned __int8 *a1)
{
  v2 = VerticalToggleSlider.growView.getter();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = VerticalToggleSlider.AnchorPoint.location(for:)(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void specialized VerticalToggleSlider.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_100610670;
  *v5 = static VerticalToggleSlider.ShapeChange.zero;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type VerticalToggleSlider.LongPressMode and conformance VerticalToggleSlider.LongPressMode()
{
  result = lazy protocol witness table cache variable for type VerticalToggleSlider.LongPressMode and conformance VerticalToggleSlider.LongPressMode;
  if (!lazy protocol witness table cache variable for type VerticalToggleSlider.LongPressMode and conformance VerticalToggleSlider.LongPressMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalToggleSlider.LongPressMode and conformance VerticalToggleSlider.LongPressMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalToggleSlider.AnchorPoint and conformance VerticalToggleSlider.AnchorPoint()
{
  result = lazy protocol witness table cache variable for type VerticalToggleSlider.AnchorPoint and conformance VerticalToggleSlider.AnchorPoint;
  if (!lazy protocol witness table cache variable for type VerticalToggleSlider.AnchorPoint and conformance VerticalToggleSlider.AnchorPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalToggleSlider.AnchorPoint and conformance VerticalToggleSlider.AnchorPoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined consume of CAPackageDefinition?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003CAD54()
{

  return swift_deallocObject();
}

uint64_t sub_1003CAD9C()
{

  return swift_deallocObject();
}

uint64_t sub_1003CADEC()
{

  return swift_deallocObject();
}

uint64_t sub_1003CAE2C()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - v4;
  v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode] = 0;
  v6 = &v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  v7 = objc_opt_self();
  v30 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v30;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v35 = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v2 + v15, v5, v31);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = BouncyBarsAsset.init()();
  v17 = v32;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v32;
  v18 = v17;
  v19 = [v18 stops];
  type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v34.receiver = v2;
    v34.super_class = v22;
    v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = WaveformPlayIndicator.bars.getter();
    v2 = result;
    if (!(result >> 62))
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_15:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1004F2400;
      *(v28 + 32) = type metadata accessor for UITraitActiveAppearance();
      *(v28 + 40) = &protocol witness table for UITraitActiveAppearance;
      UIView.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v24 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v21 addSubview:v26];
      [v27 setAlpha:0.0];
    }

    while (v24 != v25);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t WaveformPlayIndicator.bars.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    WaveformPlayIndicator.createBars()();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

Swift::Void __swiftcall WaveformPlayIndicator.fillBarsForMode()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (!*(v0 + v1))
    {
      return;
    }

    v11 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v11 + 8);
    v12 = WaveformPlayIndicator.bars.getter();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        [v16 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return;
  }

  if (v2 == 2)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v0 + v18);
    v19 = WaveformPlayIndicator.bars.getter();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    if (v21 >= 1)
    {
      for (j = 0; j != v21; ++j)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v20 + 8 * j + 32);
        }

        v24 = v23;
        [v23 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = WaveformPlayIndicator.bars.getter();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
LABEL_6:
      if (v7 >= 1)
      {
        for (k = 0; k != v7; ++k)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v6 + 8 * k + 32);
          }

          v10 = v9;
          [v9 setBackgroundColor:v4];
        }

        goto LABEL_34;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_34:
}

void WaveformPlayIndicator.reflectChange(from:to:)(char a1, char a2)
{
  if (a1 == a2 && (a1 != 3 || (WaveformPlayIndicator.hasCannedAnimations.getter() & 1) != 0))
  {
    return;
  }

  v68 = WaveformPlayIndicator.bars.getter();
  type metadata accessor for AnimationGroup();
  v2 = swift_allocObject();
  v3 = v67;
  v4 = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v71 = (v2 + 16);
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v67[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    Task.cancel()();

    v3 = v67;
  }

  *&v3[v5] = 0;

  if (a1 == 3)
  {
    WaveformPlayIndicator.removeCannedAnimations()();
  }

  if (a2 == 1)
  {
    v14 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v14 timingParameters:0.9];

    v16 = swift_allocObject();
    *(v16 + 16) = v67;
    v17 = v67;
    AnimationGroup.add(animator:startDelay:animation:)(v15, partial apply for closure #3 in WaveformPlayIndicator.reflectChange(from:to:), v16, 0.0);
  }

  else if (a2 == 4)
  {
    v6 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v6 timingParameters:0.25];

    v8 = swift_allocObject();
    *(v8 + 16) = v67;
    v76 = partial apply for closure #1 in WaveformPlayIndicator.reflectChange(from:to:);
    v77 = v8;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed () -> ();
    v75 = &block_descriptor_90_0;
    v9 = _Block_copy(&aBlock);
    v10 = v67;

    [v7 addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 4;
    v76 = partial apply for closure #2 in WaveformPlayIndicator.reflectChange(from:to:);
    v77 = v11;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    v75 = &block_descriptor_96_0;
    v12 = _Block_copy(&aBlock);
    v13 = v10;

    [v7 addCompletion:v12];
    _Block_release(v12);
    AnimationGroup.add(animator:startDelay:animation:)(v7, 0, 0, 0.0);
  }

  if (!a1)
  {
    v64 = v4;

    specialized Sequence.reversed()(v18);
    v20 = v19;
    WaveformPlayIndicator.layoutBarsToWaveform()();
    v69 = *(v20 + 16);
    v70 = v20;
    if (v69)
    {
      v4 = 0;
      v21 = (v20 + 40);
      while (v4 < *(v70 + 16))
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = objc_allocWithZone(UICubicTimingParameters);
        v25 = v22;
        v26 = v23;
        v27 = [v24 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v27 timingParameters:0.5];

        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v22;
        v76 = partial apply for closure #4 in WaveformPlayIndicator.reflectChange(from:to:);
        v77 = v29;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = thunk for @escaping @callee_guaranteed () -> ();
        v75 = &block_descriptor_81;
        v30 = _Block_copy(&aBlock);
        swift_retain_n();
        v31 = v26;
        v32 = v25;

        [v28 addAnimations:v30];
        _Block_release(v30);

        swift_beginAccess();
        v33 = *v71;
        v34 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
          *v71 = v33;
        }

        v37 = v33[2];
        v36 = v33[3];
        if (v37 >= v36 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v33);
        }

        v33[2] = (v37 + 1);
        v38 = &v33[2 * v37];
        v38[4] = v34;
        *(v38 + 5) = v4 * 0.03;
        *v71 = v33;
        swift_endAccess();

        v21 += 2;
        if (v69 == ++v4)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v4 = v64;
  }

  v39 = v68;
  if (a2)
  {
    if (a2 == 2)
    {

      v45 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v46 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v45 timingParameters:0.15];

      v47 = swift_allocObject();
      v44 = v67;
      *(v47 + 16) = v67;
      *(v47 + 24) = a1;
      v48 = v67;
      AnimationGroup.add(animator:startDelay:animation:)(v46, partial apply for closure #6 in WaveformPlayIndicator.reflectChange(from:to:), v47, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v40 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v41 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v40 timingParameters:0.15];

        v42 = swift_allocObject();
        *(v42 + 16) = v67;
        v43 = v67;
        AnimationGroup.add(animator:startDelay:animation:)(v41, partial apply for closure #5 in WaveformPlayIndicator.reflectChange(from:to:), v42, 0.0);
      }

      v44 = v67;
    }

    goto LABEL_39;
  }

  if (v68 >> 62)
  {
LABEL_37:
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v68;
    v49 = v54;
    if (!v54)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v51 = v39 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v39 + 8 * v50 + 32);
      }

      v53 = v52;
      ++v50;
      [v52 setAlpha:{0.0, v64}];

      v39 = v68;
    }

    while (v49 != v50);
    goto LABEL_38;
  }

  v49 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_38:

  v44 = v67;
  WaveformPlayIndicator.layoutBarsToWaveform()();
LABEL_39:
  v55 = *&v44[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v55)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v44;
    *(v56 + 24) = v4;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for closure #7 in WaveformPlayIndicator.reflectChange(from:to:);
    *(v57 + 24) = v56;
    swift_beginAccess();
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = *(v55 + 24);
    v59 = v44;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
    if ((v60 & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0);
      *(v55 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
    }

    v62 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2];
    v61 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[3];
    if (v62 >= v61 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0((v61 > 1), v62 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0);
    }

    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2] = (v62 + 1);
    v63 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0[2 * v62];
    v63[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
    v63[5] = v57;
    *(v55 + 24) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_0;
    swift_endAccess();
  }

  else
  {
    AnimationGroup.startAnimation()();
  }
}

uint64_t WaveformPlayIndicator.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaveformPlayIndicator.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  WaveformPlayIndicator.reflectChange(from:to:)(v4, a1);
}

void (*WaveformPlayIndicator.mode.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return WaveformPlayIndicator.mode.modify;
}

void WaveformPlayIndicator.mode.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  v5 = v1[40];
  *(v3 + v2) = v5;
  WaveformPlayIndicator.reflectChange(from:to:)(v4, v5);

  free(v1);
}

void one-time initialization function for overlay()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v1;
  *algn_10063F5B8 = v2;
  qword_10063F5C0 = v4;
  unk_10063F5C8 = v6;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_10063F5B8;
  v2 = qword_10063F5C0;
  v3 = unk_10063F5C8;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)()
{
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WaveformPlayIndicator.ColorPalette()
{
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

void *WaveformPlayIndicator.colorPalette.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  return v2;
}

void WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  specialized WaveformPlayIndicator.colorPalette.setter(a1, a2, a3, a4);
}

void (*WaveformPlayIndicator.colorPalette.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  return WaveformPlayIndicator.colorPalette.modify;
}

void WaveformPlayIndicator.colorPalette.modify(void ***a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v7 = v4;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    specialized WaveformPlayIndicator.colorPalette.setter(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    specialized WaveformPlayIndicator.colorPalette.setter(**a1, v3, v6, v5);
  }

  free(v2);
}

id WaveformPlayIndicator.waveform.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformPlayIndicator.waveform.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v1[v6] == 2)
  {
    v7 = objc_opt_self();
    v8 = *&v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v8 animationDuration];
    v10 = v9;
    [v8 springDamping];
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = partial apply for closure #1 in WaveformPlayIndicator.animateWaveform();
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed () -> ();
    v16[3] = &block_descriptor_65;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];

    _Block_release(v14);
  }

  else
  {
  }
}

void (*WaveformPlayIndicator.waveform.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return WaveformPlayIndicator.waveform.modify;
}

void WaveformPlayIndicator.waveform.modify(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
    swift_beginAccess();
    if (*(v4 + v5) == 2)
    {
      v6 = v3[9];
      v7 = objc_opt_self();
      v8 = *(v6 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings);
      [v8 animationDuration];
      v10 = v9;
      [v8 springDamping];
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v3[4] = closure #1 in WaveformPlayIndicator.animateWaveform()partial apply;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = thunk for @escaping @callee_guaranteed () -> ();
      v3[3] = &block_descriptor_10_2;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t WaveformPlayIndicator.hasCannedAnimations.getter()
{
  v0 = WaveformPlayIndicator.bars.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 layer];
      v8 = String._bridgeToObjectiveC()();

      v9 = [v7 animationForKey:v8];

      if (!v9 || (v9, v10 = [v5 layer], v11 = String._bridgeToObjectiveC()(), , v12 = objc_msgSend(v10, "animationForKey:", v11), v10, v11, !v12) || (v12, v13 = objc_msgSend(v5, "layer"), v14 = String._bridgeToObjectiveC()(), , v15 = objc_msgSend(v13, "animationForKey:", v14), v13, v14, !v15))
      {

        return 0;
      }

      ++v3;
      if (v6 == i)
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

  return 1;
}

uint64_t WaveformPlayIndicator.removeCannedAnimations()()
{
  v0 = WaveformPlayIndicator.bars.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 layer];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v4);

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
        if (!v8)
        {
          break;
        }

LABEL_11:
        v9 = 0;
        v18 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v10 = _swiftEmptyArrayStorage[v9 + 4];
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = String._bridgeToObjectiveC()();
          [v11 removeAnimationForKey:v13];

          v14 = String._bridgeToObjectiveC()();
          [v11 removeAnimationForKey:v14];

          v15 = String._bridgeToObjectiveC()();
          [v11 removeAnimationForKey:v15];

          v16 = [v11 presentationLayer];
          if (v16)
          {
            v17 = v16;
            [v16 frame];
            [v11 setFrame:?];
            [v17 cornerRadius];
            [v11 setCornerRadius:?];
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_23:

        v1 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
  }

  return result;
}

unint64_t closure #1 in WaveformPlayIndicator.reflectChange(from:to:)(uint64_t a1)
{
  WaveformPlayIndicator.layoutBarsToWaveform()();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 16);
  result = WaveformPlayIndicator.bars.getter();
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t WaveformPlayIndicator.layoutBarsToWaveform()()
{
  [v0 bounds];
  Width = CGRectGetWidth(v28);
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  v3 = CGRectGetWidth(v29);
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v0[v4] == 2)
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
    swift_beginAccess();
    v6 = *&v0[v5];
  }

  else
  {
    v6 = [objc_opt_self() zero];
  }

  v27 = v6;
  v7 = WaveformPlayIndicator.bars.getter();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = Width / *&v2;
    Width = v10 * 0.5;
    v11 = v3 / *&v2 - v10 * 0.5;
    v3 = v10 * 0.5 * 0.5;
    v12 = 4;
    v13 = v11 * 0.5;
    while (1)
    {
      v14 = v12 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v8 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v2 = v13 + v3 + v10 * v14;
      [v0 bounds];
      [v16 setCenter:{v2, CGRectGetMidY(v30)}];
      v18 = [v16 layer];
      [v18 setCornerRadius:v10 * 0.5 * 0.5];

      v19 = [v27 amplitudes];
      type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v21 = *(v20 + 8 * v12);
      }

      v22 = v21;

      [v22 doubleValue];
      v24 = v23;

      [v0 bounds];
      Height = CGRectGetHeight(v31);
      if (v24 < 1.0)
      {
        Height = v24 * Height;
      }

      if (Width > Height)
      {
        v2 = v10 * 0.5;
      }

      else
      {
        v2 = Height;
      }

      [v16 bounds];
      [v16 setBounds:?];
      [v16 bounds];
      [v16 setBounds:?];

      ++v12;
      if (v17 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

uint64_t closure #2 in WaveformPlayIndicator.reflectChange(from:to:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  result = swift_beginAccess();
  if (a2[v8] == a3)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = a2;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    *&v11[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v7, &async function pointer to partial apply for closure #1 in WaveformPlayIndicator.makeRepeatingPulseTask(), v13);
  }

  return result;
}

unint64_t closure #3 in WaveformPlayIndicator.reflectChange(from:to:)(uint64_t a1)
{
  WaveformPlayIndicator.layoutBarsToWaveform()();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  result = WaveformPlayIndicator.bars.getter();
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void specialized Sequence.reversed()(unint64_t a1)
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(a1);

  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  v7 = 16 * v2 + 24;
  v23 = v2 >> 1;
  while (1)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v11 = *(v1 + 16);
    if (v4 >= v11)
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_14;
    }

    v12 = *(v1 + v3 + 32);
    v13 = *(v1 + v3 + 40);
    v14 = *(v1 + v7 - 8);
    v15 = *(v1 + v7);
    v16 = v15;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v20 = v1 + v3;
    v21 = *(v1 + v3 + 32);
    v22 = *(v1 + v3 + 40);
    *(v20 + 32) = v19;
    *(v20 + 40) = v15;

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    v8 = (v1 + v7);
    v9 = *(v1 + v7 - 8);
    v10 = *(v1 + v7);
    *(v8 - 1) = v17;
    *v8 = v13;

    v5 = v23;
LABEL_5:
    ++v4;
    --v6;
    v7 -= 16;
    v3 += 16;
    if (v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void closure #5 in WaveformPlayIndicator.reflectChange(from:to:)(uint64_t a1)
{
  WaveformPlayIndicator.layoutBarsToWaveform()();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = WaveformPlayIndicator.bars.getter();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    WaveformPlayIndicator.attachCannedAnimations()();
    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void WaveformPlayIndicator.attachCannedAnimations()()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = specialized RandomNumberGenerator.next<A>(upperBound:)(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v45 = *(&outlined read-only object #0 of WaveformPlayIndicator.attachCannedAnimations() + v3 + 32);
  v4 = WaveformPlayIndicator.bars.getter();
  v1 = v4;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v47[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    v10 = v47[0];
    goto LABEL_15;
  }

LABEL_14:

  v10 = _swiftEmptyArrayStorage;
LABEL_15:
  v42 = v10;
  if (v10 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v44 = v2;
    v43 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v13 = *(v42 + 32 + 8 * v12);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = BouncyBarsAsset.createAnimations(variant:barIndex:)(v45, v12);
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = v16 + 64;
      v19 = 1 << v16[32];
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v16 + 8);
      v2 = (v19 + 63) >> 6;

      v22 = 0;
      if (v21)
      {
        while (1)
        {
          v23 = v22;
LABEL_34:
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = *(*(v17 + 7) + 8 * (v24 | (v23 << 6)));
          v26 = String._bridgeToObjectiveC()();

          [v14 addAnimation:v25 forKey:v26];

          v22 = v23;
          if (!v21)
          {
            goto LABEL_31;
          }
        }
      }

      while (1)
      {
LABEL_31:
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v2)
        {
          break;
        }

        v21 = *&v18[8 * v23];
        ++v22;
        if (v21)
        {
          goto LABEL_34;
        }
      }

      i = v43;
      v2 = v44;
      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(1);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      v29 = [*(*(v17 + 7) + 8 * v27) values];
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v31 + 16))
      {
        goto LABEL_18;
      }

      outlined init with copy of Any(v31 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v32 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

      v34 = [*(*(v17 + 7) + 8 * v32) values];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v36 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      outlined init with copy of Any(v36 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v37 = specialized __RawDictionaryStorage.find<A>(_:)(2);
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = *(*(v17 + 7) + 8 * v37);

      v40 = [v39 values];

      if (!v40)
      {
        goto LABEL_20;
      }

      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v41 + 16))
      {
        goto LABEL_19;
      }

      outlined init with copy of Any(v41 + 32, v47);

      if (swift_dynamicCast())
      {
        [v14 frame];
        [v14 setFrame:?];
        [v14 setCornerRadius:v46];
      }

LABEL_20:

      v12 = v15;
      if (v15 == i)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
}