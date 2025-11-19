id outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_10038BA64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return outlined init with copy of NowPlaying.TrackMetadata(v3 + v4, a2, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t type metadata completion function for NowPlaying.TrackTitleStackView()
{
  result = type metadata accessor for NowPlaying.TrackMetadata(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17TransitionContextV7Content33_8F7564099BF3006270956A38774C94CALLVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata completion function for NowPlaying.TrackTitleStackView.Label()
{
  _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMa_0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMa_0()
{
  if (!_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgML_0)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgML_0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy96_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes.Marquee(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes.Marquee(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Gliss.Transition<>.Output()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy152_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Gliss.Transition<>.Output(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Gliss.Transition<>.Output(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 152) = v3;
  return result;
}

uint64_t sub_10038BFDC()
{
  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t outlined copy of NowPlaying.TrackTitleStackView.TransitionContext?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(a3);
  }

  return result;
}

uint64_t outlined consume of NowPlaying.TrackTitleStackView.TransitionContext?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(a3);
  }

  return result;
}

id PassthroughView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    type metadata accessor for UIView();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id PassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *SymbolButton.__allocating_init(intent:)(int a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init(intent:materialColor:)(a1, 2, v4);
  v5 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v6 = specialized SymbolButton.init(configuration:handler:)(v4, 0, 0);
  v7 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v8 = *v7;
  *v7 = closure #1 in SymbolButton.init(intent:);
  v7[1] = 0;
  v9 = v6;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12);

  return v9;
}

uint64_t SymbolButton.Configuration.init(intent:materialColor:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized SymbolButton.Symbol.init()(v29);
  v12 = v29[5];
  *(a3 + 64) = v29[4];
  *(a3 + 80) = v12;
  *(a3 + 96) = v29[6];
  v13 = v30;
  v14 = v29[1];
  *a3 = v29[0];
  *(a3 + 16) = v14;
  v15 = v29[3];
  *(a3 + 32) = v29[2];
  *(a3 + 48) = v15;
  *(a3 + 112) = v13;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = UIFontTextStyleSubheadline;
  *(a3 + 144) = UIFontWeightSemibold;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3FF0000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v16 = v9[11];
  v17 = type metadata accessor for UIView.Corner();
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  v18 = a3 + v9[12];
  *(v18 + 48) = 0;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  v19 = (a3 + v9[13]);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 1;
  *(a3 + v9[14]) = 0x4010000000000000;
  *(a3 + v9[15]) = vdupq_n_s64(0x4040000000000000uLL);
  v20 = a3 + v9[16];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = (a3 + v9[17]);
  v22 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v21 = *&NSDirectionalEdgeInsetsZero.top;
  v21[1] = v22;
  v23 = a3 + v9[18];
  *v23 = 1;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(a3 + v9[19]) = 0x3FF0000000000000;
  *(a3 + v9[20]) = 0;
  *(a3 + v9[21]) = 2;
  v24 = UIFontTextStyleSubheadline;
  SymbolButton.Configuration.init()(v11);
  closure #1 in SymbolButton.Configuration.init(intent:materialColor:)(v11, v27, v28);
  outlined destroy of SymbolButton.Configuration(a3, type metadata accessor for SymbolButton.Configuration);
  outlined init with take of SymbolButton.Configuration(v11, a3);
  v25 = [objc_opt_self() currentTraitCollection];
  UIViewConfigurationState.init(traitCollection:)();
  SymbolButton.Configuration.update(for:)();
  return (*(v5 + 8))(v7, v4);
}

void SymbolButton.Configuration.update(for:)()
{
  v1 = v0;
  v2 = UIViewConfigurationState.traitCollection.getter();
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    if (*(v0 + 232) == 1 || (v4 = *(v0 + 256), v4 == 2))
    {
      if (UIViewConfigurationState.isHighlighted.getter() & 1) != 0 || (UIViewConfigurationState.isSelected.getter())
      {
        if (one-time initialization token for pressed != -1)
        {
          swift_once();
        }

        v5 = static UIColor.MusicTint.pressed;
        v6 = *(v1 + 112);
        v7 = static UIColor.MusicTint.pressed;

        *(v1 + 112) = v5;
        *(v1 + 176) = v5;
      }

      else
      {

        *(v0 + 112) = 0;
        *(v0 + 176) = 0;
      }
    }

    else
    {
      v8 = objc_opt_self();
      if (v4)
      {
        v9 = v8;
        v10 = [v8 blackColor];

        *(v0 + 112) = v10;
        v11 = [v9 blackColor];

        *(v0 + 176) = v11;
        [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v13 = v12;
        v15 = v14;
        v17 = v16 & 1;

        *(v0 + 280) = v13;
        *(v0 + 288) = v17;
        *(v0 + 296) = v15;
        LOBYTE(v13) = UIViewConfigurationState.isHighlighted.getter();
        type metadata accessor for UIColor();
        v18 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(19, 19, 20, 1.0);
        if (v13)
        {
          v19 = 0x3FD5C28F5C28F5C3;
        }

        else
        {
          v19 = 0x3FD3333333333333;
        }

        outlined consume of SymbolButton.Background?(*(v1 + 200), *(v1 + 208));
        *(v1 + 200) = v19;
        *(v1 + 208) = v18;
      }

      else
      {
        v20 = v8;
        v21 = [v8 whiteColor];

        *(v0 + 112) = v21;
        v22 = [v20 whiteColor];

        *(v0 + 176) = v22;
        [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v24 = v23;
        v26 = v25;
        v28 = v27 & 1;

        *(v0 + 280) = v24;
        *(v0 + 288) = v28;
        *(v0 + 296) = v26;
        v29 = UIViewConfigurationState.isHighlighted.getter();
        v30 = [v20 whiteColor];
        if (v29)
        {
          v31 = 0x3FD0A3D70A3D70A4;
        }

        else
        {
          v31 = 0x3FCC28F5C28F5C29;
        }

        outlined consume of SymbolButton.Background?(*(v1 + 200), *(v1 + 208));
        *(v1 + 200) = v31;
        *(v1 + 208) = v30;
      }

      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
    }
  }
}

uint64_t SymbolButton.Intent.accessibilityIdentifier.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v1 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

void SymbolButton.update(to:)(int a1)
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v1 + v9, v5);
  if (*(v5 + 29) == 1)
  {
    outlined destroy of SymbolButton.Configuration(v5, type metadata accessor for SymbolButton.Configuration);
    v10 = 2;
  }

  else
  {
    v11 = v5[256];
    outlined destroy of SymbolButton.Configuration(v5, type metadata accessor for SymbolButton.Configuration);
    if (v11 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = (v11 & 1) == 0;
    }
  }

  SymbolButton.Configuration.init(intent:materialColor:)(a1, v10, v8);
  SymbolButton.setConfiguration(_:animation:updates:)(v8, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  outlined destroy of SymbolButton.Configuration(v8, type metadata accessor for SymbolButton.Configuration);
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v12 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v12 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v13 = *v12;
  v14 = v12[1];

  type metadata accessor for SymbolButton(0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v13, v14);
}

uint64_t SymbolButton.materialColor.getter()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v0 + v4, v3);
  if (*(v3 + 29) == 1)
  {
    outlined destroy of SymbolButton.Configuration(v3, type metadata accessor for SymbolButton.Configuration);
    return 2;
  }

  else
  {
    v6 = v3[256];
    outlined destroy of SymbolButton.Configuration(v3, type metadata accessor for SymbolButton.Configuration);
    if (v6 == 2)
    {
      return 2;
    }

    else
    {
      return (v6 & 1) == 0;
    }
  }
}

void SymbolButton.materialColor.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI12SymbolButtonC13ConfigurationVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v1 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 != 6)
  {
    if (a1 == 2)
    {
      v20 = 0;
      v21 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 2;
      v26 = 0;
      v27 = 0;
      closure #1 in SymbolButton.Material.init(materialColor:)(&v22, a1 & 1);
      v16 = v22;
      v20 = v24;
      v21 = v23;
      v13 = v25;
      v14 = v26;
      v15 = v27;
    }

    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    outlined init with copy of SymbolButton.Configuration(v1 + v17, v10);
    outlined consume of SymbolButton.Material?(v10[29], v10[30], v10[31]);
    v18 = v20;
    v19 = v21;
    v10[29] = v16;
    v10[30] = v19;
    v10[31] = v18;
    v10[32] = v13;
    v10[33] = v14;
    v10[34] = v15;
    SymbolButton.setConfiguration(_:animation:updates:)(v10, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    outlined destroy of SymbolButton.Configuration(v10, type metadata accessor for SymbolButton.Configuration);
    (*(v7 + 56))(v5, 1, 1, v6);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v5, 0, 0, 0, 1);
    outlined destroy of TaskPriority?(v5, &_s11MusicCoreUI12SymbolButtonC13ConfigurationVSgMd);
  }
}

void (*SymbolButton.materialColor.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 32) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v1 + v8, v7);
  if (*(v7 + 232) == 1)
  {
    outlined destroy of SymbolButton.Configuration(v7, type metadata accessor for SymbolButton.Configuration);
    v9 = 2;
  }

  else
  {
    v10 = *(v7 + 256);
    outlined destroy of SymbolButton.Configuration(v7, type metadata accessor for SymbolButton.Configuration);
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = (v10 & 1) == 0;
    }
  }

  *(v4 + 40) = v9;
  return SymbolButton.materialColor.modify;
}

void SymbolButton.materialColor.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  SymbolButton.materialColor.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t SymbolButton.Intent.title.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t SymbolButton.Intent.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x656C6666756873;
  }

  return 0x69732E656C707061;
}

unint64_t SymbolButton.Intent.id.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t SymbolButton.Intent.actionDetailsPlayType.getter(char a1)
{
  if (a1 == 1)
  {
    return 0x41656C6666756873;
  }

  else
  {
    return 7105633;
  }
}

uint64_t SymbolButton.Intent.actionType.getter(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    return 64;
  }

  else
  {
    return 31;
  }
}

unint64_t protocol witness for Identifiable.id.getter in conformance SymbolButton.Intent@<X0>(unint64_t *a1@<X8>)
{
  result = SymbolButton.Intent.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t closure #1 in SymbolButton.Material.init(materialColor:)(uint64_t a1, char a2)
{
  *(a1 + 24) = (a2 & 1) == 0;
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];

  *a1 = v3;
  v4 = [objc_opt_self() colorEffectSaturate:1.6];

  *(a1 + 8) = v4;
  _StringGuts.grow(_:)(19);

  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x80000001004D32D0;
  return result;
}

double closure #1 in SymbolButton.Configuration.init(intent:materialColor:)(uint64_t a1, char a2, int a3)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  specialized SymbolButton.Symbol.init()(&v48);
  v56 = v48;
  v8 = v49;
  v9 = v52;
  outlined destroy of TaskPriority?(&v56, &_sSSSgMd_0);
  v10 = a2;
  v11 = *&aPlayFilshuffle[8 * a2];
  v12 = *&aAppleSil[8 * a2 + 8];
  v55 = v50;
  v13 = UIFontTextStyleSubheadline;
  outlined destroy of SymbolButton.Configuration(&v55, type metadata accessor for UIFontTextStyle);
  v14 = *(a1 + 80);
  v45[4] = *(a1 + 64);
  v45[5] = v14;
  v45[6] = *(a1 + 96);
  v46 = *(a1 + 112);
  v15 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v15;
  v16 = *(a1 + 48);
  v45[2] = *(a1 + 32);
  v45[3] = v16;
  outlined destroy of SymbolButton.Symbol(v45);
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v8;
  *(a1 + 24) = v13;
  *(a1 + 32) = v51;
  *(a1 + 48) = 6;
  *(a1 + 56) = v9;
  *(a1 + 64) = xmmword_100507AA0;
  *(a1 + 80) = 1;
  *(a1 + 81) = v53;
  *(a1 + 97) = *v54;
  *(a1 + 112) = *&v54[15];
  v17 = SymbolButton.Intent.title.getter();
  v19 = v18;

  v20 = UIFontTextStyleBody;

  v21 = *(a1 + 136);
  v22 = *(a1 + 168);
  v47[2] = *(a1 + 152);
  v47[3] = v22;
  v47[4] = *(a1 + 184);
  v47[0] = *(a1 + 120);
  v47[1] = v21;
  outlined destroy of SymbolButton.Title(v47);
  *(a1 + 120) = v17;
  *(a1 + 128) = v19;
  *(a1 + 136) = v20;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v23 = [objc_opt_self() currentTraitCollection];
  v24 = [v23 userInterfaceIdiom];

  if (v24 != 6)
  {
    if (v38 == 2)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 2;
      v43 = 0;
      v44 = 0;
      closure #1 in SymbolButton.Material.init(materialColor:)(&v39, v38 & 1);
      v30 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
      v29 = v44;
    }

    outlined consume of SymbolButton.Material?(*(a1 + 232), *(a1 + 240), *(a1 + 248));
    *(a1 + 232) = v30;
    *(a1 + 240) = v25;
    *(a1 + 248) = v26;
    *(a1 + 256) = v27;
    *(a1 + 264) = v28;
    *(a1 + 272) = v29;
  }

  if (one-time initialization token for capsule != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for UIView.Corner();
  v32 = __swift_project_value_buffer(v31, static UIView.Corner.capsule);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v7, v32, v31);
  (*(v33 + 56))(v7, 0, 1, v31);
  v34 = type metadata accessor for SymbolButton.Configuration(0);
  outlined assign with take of UIView.Corner?(v7, a1 + v34[9]);
  *(a1 + v34[12]) = qword_1005123E8[v10];
  *(a1 + v34[13]) = vdupq_n_s64(0x4048000000000000uLL);
  v35 = (a1 + v34[15]);
  result = 0.0;
  *v35 = xmmword_100507AB0;
  v35[1] = xmmword_100507AB0;
  return result;
}

Swift::Int static PlayIntentButtonStack.playShuffle(_:)()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(&outlined read-only object #0 of static PlayIntentButtonStack.playShuffle(_:));

  return v0;
}

Swift::Int static PlayIntentButtonStack.sing(_:)()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(&outlined read-only object #0 of static PlayIntentButtonStack.sing(_:));

  return v0;
}

Swift::Int PlayIntentButtonStack.init(_:handler:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1;
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = static Axis.Set.horizontal.getter();
  v9 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v8)
  {
    v9 = Axis.Set.init(rawValue:)();
  }

  *a4 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA0D0PAAE011dynamicTypeF0yQrqd__SXRd__AA07DynamickF0O5BoundRtd__lFQOyAA15ModifiedContentVyAEy_AA07_LayoutH0Vy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAU06SymbolU0C0T0OGSSAU0stU7WrapperVGGAA06_FixedfP0VG_SNyANGQo__A15_tGGMd);
  return closure #1 in PlayIntentButtonStack.body.getter(a1, a2, a3, &a4[*(v10 + 44)]);
}

uint64_t closure #1 in PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAQ06SymbolS0C0R0OGSSAQ0qrS7WrapperVGGAA06_FixedfM0VG_SNyAFGQo_Md);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  __chkstk_darwin(v18);
  v20 = &v25 - v19;
  PlayIntentButtonStack.stack(iconOnly:)(0, a1, a2, a3, &v25 - v19);
  PlayIntentButtonStack.stack(iconOnly:)(1, a1, a2, a3, v17);
  v21 = *(v9 + 16);
  v21(v14, v20, v8);
  v21(v11, v17, v8);
  v21(a4, v14, v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAQ06SymbolS0C0R0OGSSAQ0qrS7WrapperVGGAA06_FixedfM0VG_SNyAFGQo__A11_tMd);
  v21(&a4[*(v22 + 48)], v11, v8);
  v23 = *(v9 + 8);
  v23(v17, v8);
  v23(v20, v8);
  v23(v11, v8);
  return (v23)(v14, v8);
}

uint64_t PlayIntentButtonStack.stack(iconOnly:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
  __chkstk_darwin(v51);
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v48 = &v43[-v11];
  v12 = type metadata accessor for DynamicTypeSize();
  v57 = *(v12 - 8);
  __chkstk_darwin(v12);
  v56 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v55 = &v43[-v15];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd);
  __chkstk_darwin(v49);
  v47 = &v43[-v16];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMd);
  __chkstk_darwin(v53);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMd);
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  v54 = v18;
  *v18 = 0x4030000000000000;
  v22 = *(a2 + 16);
  v58 = v23;
  v59 = &v43[-v20];
  if (v22)
  {
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt1g5(v22, 0);
    v25 = specialized Sequence._copySequenceContents(initializing:)(&v60, v24 + 32, v22, a2);

    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    if (v25 != v22)
    {
      goto LABEL_8;
    }

    v19 = v58;
    v21 = v59;
    a3 = v45;
    a4 = v46;
    LOBYTE(a1) = v44;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v60 = v24;
  specialized MutableCollection<>.sort(by:)(&v60);
  v26 = swift_allocObject();
  *(v26 + 16) = a1 & 1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MusicCoreUI12SymbolButtonC6IntentOGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [SymbolButton.Intent] and conformance [A], &_sSay11MusicCoreUI12SymbolButtonC6IntentOGMd);
  lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();
  lazy protocol witness table accessor for type SymbolButton.Intent and conformance SymbolButton.Intent();
  v27 = v54;
  ForEach<>.init(_:content:)();
  v28 = *(a2 + 16) < 2uLL;
  outlined init with take of URL?(v27, v21, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMd);
  v29 = &v21[*(v19 + 36)];
  *v29 = v28;
  v29[1] = 1;
  v30 = v57;
  v31 = *(v57 + 104);
  v32 = v55;
  v31(v55, enum case for DynamicTypeSize.xSmall(_:), v12);
  v33 = v56;
  v31(v56, enum case for DynamicTypeSize.accessibility2(_:), v12);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v34 = *(v30 + 32);
    v35 = v48;
    v34(v48, v32, v12);
    v36 = v51;
    v34((v35 + *(v51 + 48)), v33, v12);
    v37 = v50;
    outlined init with copy of TaskPriority?(v35, v50, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
    v38 = *(v36 + 48);
    v39 = v47;
    v34(v47, v37, v12);
    v40 = *(v30 + 8);
    v40(&v37[v38], v12);
    outlined init with take of URL?(v35, v37, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd);
    v34((v39 + *(v49 + 36)), &v37[*(v36 + 48)], v12);
    v40(v37, v12);
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
    v41 = v59;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of TaskPriority?(v39, &_sSNy7SwiftUI15DynamicTypeSizeOGMd);
    return outlined destroy of TaskPriority?(v41, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMd);
  }

  __break(1u);
LABEL_8:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t PlayIntentButtonWrapper.init(intent:iconOnly:handler:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t PlayIntentButtonStack.SmartHStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, double a7)
{
  v42 = a6;
  v41 = a4;
  v40 = a3;
  v39 = a2;
  v38[1] = a1;
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LayoutSubviews();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = v38 - v20;
  v22 = *(v14 + 16);
  v43 = a5;
  v22(v16, a5, v13, v19);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v23 = *(v18 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  v24 = 0.0;
  v25 = 0.0;
  if (*&v21[v23] != v45[0])
  {
    v26 = (v10 + 16);
    v27 = (v10 + 8);
    do
    {
      v28 = dispatch thunk of Collection.subscript.read();
      (*v26)(v12);
      v28(v45, 0);
      dispatch thunk of Collection.formIndex(after:)();
      static ProposedViewSize.zero.getter();
      LOBYTE(v45[0]) = v29 & 1;
      v44 = v30 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v32 = v31;
      v34 = v33;
      (*v27)(v12, v9);
      if (v25 <= v32)
      {
        v25 = v32;
      }

      if (v24 <= v34)
      {
        v24 = v34;
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v21[v23] != v45[0]);
  }

  outlined destroy of TaskPriority?(v21, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v35 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v37 = v42;
    *v42 = v25;
    v37[1] = v25 * v35 + (result - 1) * a7;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance PlayIntentButtonStack.SmartHStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance PlayIntentButtonStack.SmartHStack(a1, a2, a3, a4, a5, a6, a7, a8, a9, &Layout.explicitAlignment(of:in:proposal:subviews:cache:));
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance PlayIntentButtonStack.SmartHStack(a1, a2, a3, a4, a5, a6, a7, a8, a9, &Layout.explicitAlignment(of:in:proposal:subviews:cache:));
}

void (*protocol witness for Animatable.animatableData.modify in conformance PlayIntentButtonStack.SmartHStack(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

uint64_t protocol witness for View.body.getter in conformance PlayIntentButtonStack@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = static Axis.Set.horizontal.getter();
  v7 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v6)
  {
    v7 = Axis.Set.init(rawValue:)();
  }

  *a1 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA0D0PAAE011dynamicTypeF0yQrqd__SXRd__AA07DynamickF0O5BoundRtd__lFQOyAA15ModifiedContentVyAEy_AA07_LayoutH0Vy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAU06SymbolU0C0T0OGSSAU0stU7WrapperVGGAA06_FixedfP0VG_SNyANGQo__A15_tGGMd);
  return closure #1 in PlayIntentButtonStack.body.getter(v3, v4, v5, &a1[*(v8 + 44)]);
}

uint64_t EnvironmentValues.playIntentButtonMaterial.getter()
{
  lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.playIntentButtonMaterial : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

char *PlayIntentButtonWrapper.makeUIView(context:)()
{
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(*v0);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t PlayIntentButtonWrapper.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SymbolButton.update(to:)(*v2);
  v23 = v2[32];
  v11 = *(v2 + 3);
  v22 = v11;
  if (v23 != 1)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TaskPriority?(&v22, &_s7SwiftUI11EnvironmentVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v11) = v21[40];
  }

  SymbolButton.materialColor.setter(v11);
  v13 = v2[1];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(a1 + v14, v6);
  v6[184] = v13;
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  outlined destroy of SymbolButton.Configuration(v6, type metadata accessor for SymbolButton.Configuration);
  outlined init with copy of SymbolButton.Configuration(a1 + v14, v6);
  *(v6 + 24) = 1;
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  outlined destroy of SymbolButton.Configuration(v6, type metadata accessor for SymbolButton.Configuration);
  v15 = *(v2 + 1);
  v16 = swift_allocObject();
  v17 = *(v2 + 1);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v17;
  *(v16 + 48) = v2[32];
  v18 = (a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  swift_beginAccess();
  v19 = *v18;
  *v18 = partial apply for closure #1 in PlayIntentButtonWrapper.updateUIView(_:context:);
  v18[1] = v16;
  outlined init with copy of TaskPriority?(&v22, v21, &_s7SwiftUI11EnvironmentVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v15);
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19);
}

double PlayIntentButtonWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    if (result > *&a1)
    {
      v8 = result;
    }

    else
    {
      v8 = *&a1;
    }

    if (*&a1 != INFINITY)
    {
      return v8;
    }
  }

  return result;
}

char *protocol witness for UIViewRepresentable.makeUIView(context:) in conformance PlayIntentButtonWrapper()
{
  v3 = *v0;
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(v3);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlayIntentButtonWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlayIntentButtonWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PlayIntentButtonWrapper()
{
  lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t View.playIntentButtonMaterial(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance PlayIntentButtonMaterialKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type SymbolButton.MaterialColor? and conformance <A> A?();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.playIntentButtonMaterial.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.playIntentButtonMaterial.modify;
}

uint64_t static PlayIntentLayoutHelper.Configuration.with(_:)(void (*a1)(unsigned __int16 *))
{
  v2 = 513;
  v3 = 0x4030000000000000;
  a1(&v2);
  return v2;
}

uint64_t PlayIntentLayoutHelper.configuration.setter(uint64_t result, double a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

char *PlayIntentLayoutHelper.init()()
{
  type metadata accessor for SymbolButton(0);
  v0 = SymbolButton.__allocating_init(intent:)(0);
  SymbolButton.__allocating_init(intent:)(1);
  return v0;
}

uint64_t PlayIntentLayoutHelper.layout(in:rect:)(void *a1, double *a2, void *a3, void *a4, int a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2FF0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = a3;
  v14 = a4;
  specialized static PlayIntentLayoutHelper.layout(_:in:rect:configuration:)(inited, a1, a2, a5, a6);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t PlaybackIntentDescriptor.configure(for:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = PlaybackIntentDescriptor.intent.getter();
  [v3 setShuffleMode:v2 == 1];
  [v3 setRepeatMode:0];

  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = v2 == 2;
  return result;
}

id MPCPlaybackIntent.configure(for:)(char a1)
{
  [v1 setShuffleMode:a1 == 1];

  return [v1 setRepeatMode:0];
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t _sSa6remove2atxSi_tFSnySiG_Tgq5_0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

uint64_t outlined init with copy of SymbolButton.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *outlined consume of SymbolButton.Material?(void *result, void *a2, void *a3)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10039043C@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey()
{
  result = lazy protocol witness table cache variable for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey);
  }

  return result;
}

uint64_t sub_10039052C()
{
  if (*(v0 + 24))
  {
  }

  outlined consume of Environment<Bool>.Content(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PlayIntentButtonWrapper.updateUIView(_:context:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t specialized PlayIntentButtonStack.SmartHStack.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v40 = type metadata accessor for ViewDimensions();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LayoutSubview();
  v36 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LayoutSubviews();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v36 - v24;
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  CGRectGetWidth(v44);
  v41 = a2;
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v38 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 16))(v21, a1, v18);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v26 = *(v23 + 44);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v25[v26] != v42[0])
  {
    ++v37;
    v38 = (v36 + 2);
    ++v36;
    v27 = a3;
    do
    {
      v28 = dispatch thunk of Collection.subscript.read();
      (*v38)(v17);
      v28(v42, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v45.origin.x = a3;
      v45.origin.y = a4;
      v45.size.width = a5;
      v45.size.height = a6;
      CGRectGetHeight(v45);
      static UnitPoint.topLeading.getter();
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      v29 = v18;
      v30 = v15;
      v31 = v39;
      LayoutSubview.dimensions(in:)();
      ViewDimensions.width.getter();
      v33 = v32;
      v34 = v31;
      v15 = v30;
      v18 = v29;
      (*v37)(v34, v40);
      (*v36)(v17, v15);
      v27 = v27 + v33 + a7;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v25[v26] != v42[0]);
  }

  return outlined destroy of TaskPriority?(v25, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
}

char *specialized static PlayIntentLayoutHelper.layout(_:in:rect:configuration:)(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v77 = a5;
  LODWORD(v75) = a4;
  v5 = a3;
  v82 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = *&v5;
    v81 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_15;
        }

        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v17 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 = v81;
      }

      ++v15;
      if (v5 == i)
      {
        v19 = v83;
        *&v5 = v80;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  v20 = v82;
  [v82 bounds];
  v80 = v22;
  v81 = v21;
  v78 = v24;
  v79 = v23;
  v25 = [v20 traitCollection];
  [v25 displayScale];

  v76 = [v20 effectiveUserInterfaceLayoutDirection];
  result = [v20 layoutMargins];
  v28 = v27;
  Width = v29;
  v32 = v31;
  LODWORD(v33) = v19 < 0 || (v19 & 0x4000000000000000) != 0;
  if (v33 == 1)
  {
    goto LABEL_90;
  }

  v34 = *(v19 + 16);
  v35 = v34 - 1;
  if (!__OFSUB__(v34, 1))
  {
    while (1)
    {
      v73 = v35;
      if (*(v5 + 32))
      {
        v8 = UIEdgeInsetsInsetRect(*&v81, v80, v79, v78, v28, Width);
        v7 = v36;
        v10 = v37;
        v9 = v38;
      }

      if (v33)
      {
        *&v5 = COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter());
      }

      else
      {
        v5 = *(v19 + 16);
      }

      v74 = v34;
      if (*&v5 == 0.0)
      {
        break;
      }

      v39 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v19 + 16))
          {
            goto LABEL_85;
          }

          v40 = *(v19 + 8 * v39 + 32);
        }

        v33 = v40;
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v42 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        outlined init with copy of SymbolButton.Configuration(v33 + v42, v13);
        v13[184] = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v13, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        outlined destroy of SymbolButton.Configuration(v13, type metadata accessor for SymbolButton.Configuration);
        [v33 intrinsicContentSize];
        v28 = v43;
        CGFloat.ceilingValue(scale:)();
        Width = Width + v44;
        CGFloat.ceilingValue(scale:)();
        v46 = v45;

        ++v39;
        if (v41 == v5)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v74 = v32;
      result = _CocoaArrayWrapper.endIndex.getter();
      v32 = v74;
      v34 = result;
      v35 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v46 = 0.0;
LABEL_38:
    v47 = LOBYTE(v75);
    v48 = BYTE1(v75);
    v49 = (v73 & ~(v73 >> 63)) * v77;
    if (BYTE1(v75))
    {
      v50 = v74;
      if (BYTE1(v75) == 1)
      {
        v51 = 0;
        Width = v49 + v46 * v74;
      }

      else
      {
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        CGRectGetWidth(v84);
        CGFloat.ceilingValue(scale:)();
        v46 = v52;
        v85.origin.x = v8;
        v85.origin.y = v7;
        v85.size.width = v10;
        v85.size.height = v9;
        Width = CGRectGetWidth(v85);
        v51 = 0;
      }
    }

    else
    {
      Width = v49 + Width;
      v51 = 1;
      v46 = 0.0;
      v50 = v74;
    }

    v86.origin.x = v8;
    v86.origin.y = v7;
    v86.size.width = v10;
    v86.size.height = v9;
    v53 = Width - CGRectGetWidth(v86);
    if (v53 < 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v53;
    }

    if ((v51 & 1) == 0 && v28 > 0.0)
    {
      CGFloat.ceilingValue(scale:)();
      v46 = v46 - v54;
      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      Width = CGRectGetWidth(v87);
    }

    if (v48 != 2 && v47)
    {
      if (v47 != 1)
      {
        v92.origin.x = v8;
        v92.origin.y = v7;
        v92.size.width = v10;
        v92.size.height = v9;
        v8 = CGRectGetMaxX(v92) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }
      }

      v88.origin.x = v8;
      v88.origin.y = v7;
      v88.size.width = v10;
      v88.size.height = v9;
      CGRectGetWidth(v88);
      CGFloat.floorValue(scale:)();
      v8 = v8 + v55;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v33 = 0;
      v56 = v50;
      v57 = 0;
      v58 = v19 & 0xC000000000000001;
      v75 = v28 / v56;
      while (1)
      {
        if (v58)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v19 + 16))
          {
            goto LABEL_87;
          }

          v60 = *(v19 + 8 * v33 + 32);
        }

        v61 = v60;
        v62 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          goto LABEL_86;
        }

        v63 = [v60 superview];
        if (!v63 || (v64 = v63, v63, v64 != v82))
        {
          [v82 addSubview:v61];
        }

        v28 = v46;
        if (v51)
        {
          [v61 intrinsicContentSize];
          v66 = v65;
          CGFloat.ceilingValue(scale:)();
          v28 = v66 - v67;
        }

        CGRect.applyingLayoutDirection(_:inBounds:)();
        [v61 setFrame:?];
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v28;
        v90.size.height = v9;
        CGRectGetWidth(v90);
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v28;
        v91.size.height = v9;
        v10 = CGRectGetWidth(v91);
        if (v57)
        {

          if (v62 == v5)
          {
            if (v74 < 2)
            {
            }

LABEL_74:
            for (j = 0; ; ++j)
            {
              if (v58)
              {
                v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (j >= *(v19 + 16))
                {
                  goto LABEL_89;
                }

                v69 = *(v19 + 8 * j + 32);
              }

              v33 = v69;
              v70 = j + 1;
              if (__OFADD__(j, 1))
              {
                break;
              }

              v71 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              outlined init with copy of SymbolButton.Configuration(v33 + v71, v13);
              v13[184] = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v13, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              outlined destroy of SymbolButton.Configuration(v13, type metadata accessor for SymbolButton.Configuration);
              if (v70 == v5)
              {
              }
            }

            goto LABEL_88;
          }

          v57 = 1;
        }

        else
        {
          [v61 intrinsicContentSize];
          Width = v59;
          v89.origin.x = v8;
          v89.origin.y = v7;
          v89.size.width = v28;
          v89.size.height = v9;
          v28 = CGRectGetWidth(v89);

          v57 = v28 < Width;
          if (v62 == v5)
          {
            if (v28 >= Width || v74 <= 1)
            {
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v77;
        ++v33;
      }
    }
  }

LABEL_92:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Intent and conformance SymbolButton.Intent()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent;
  if (!lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent;
  if (!lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor()
{
  result = lazy protocol witness table cache variable for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor;
  if (!lazy protocol witness table cache variable for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper()
{
  result = lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment()
{
  result = lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment;
  if (!lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution()
{
  result = lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution;
  if (!lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI12SymbolButtonC6IntentOIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PlayIntentButtonWrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for PlayIntentButtonWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10039167C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolButton.MaterialColor?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd);
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack()
{
  result = lazy protocol witness table cache variable for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.MaterialColor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SymbolButton.MaterialColor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SymbolButton.MaterialColor? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11MusicCoreUI12SymbolButtonC13MaterialColorOSgMd);
    lazy protocol witness table accessor for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.MaterialColor? and conformance <A> A?);
  }

  return result;
}

uint64_t sub_100391878()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlayIntentButtonStack.stack(iconOnly:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
}

uint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMd);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _LayoutRoot<PlayIntentButtonStack.SmartHStack> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGMd);
    lazy protocol witness table accessor for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay09MusicCoreB012SymbolButtonC6IntentOGSSAD04PlayiH7WrapperVGMd);
    lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of SymbolButton.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SymbolButton.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  outlined init with copy of PlaylistCovers.CarouselItem(&v13, v12);
  outlined destroy of PlaylistCovers.CarouselItem(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v32 = a1[4];
  v33 = v3;
  v4 = a1[7];
  v34 = a1[6];
  v35 = v4;
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  v6 = a1[3];
  v30 = a1[2];
  v31 = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v28) == 1)
  {
    v7 = a2[5];
    v40 = a2[4];
    v41 = v7;
    v8 = a2[7];
    v42 = a2[6];
    v43 = v8;
    v9 = a2[1];
    v36 = *a2;
    v37 = v9;
    v10 = a2[3];
    v38 = a2[2];
    v39 = v10;
    v11 = _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v36) == 1;
  }

  else
  {
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v25;
      v27[7] = v26;
      v27[0] = v19;
      v27[1] = v20;
      v27[2] = v21;
      v27[3] = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(&v36, v27);
    }
  }

  return v11 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.CarouselItem.CarouselItemType(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v38 = a1[4];
  v39 = v3;
  v4 = a1[7];
  v40 = a1[6];
  v41 = v4;
  v5 = a1[1];
  v34 = *a1;
  v35 = v5;
  v6 = a1[3];
  v36 = a1[2];
  v37 = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v34) == 1)
  {
    v7 = a2[5];
    v30 = a2[4];
    v31 = v7;
    v8 = a2[7];
    v32 = a2[6];
    v33 = v8;
    v9 = a2[1];
    v26 = *a2;
    v27 = v9;
    v10 = a2[3];
    v28 = a2[2];
    v29 = v10;
    v11 = _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v26) == 1;
  }

  else
  {
    v25[4] = v38;
    v25[5] = v39;
    v25[6] = v40;
    v25[7] = v41;
    v25[0] = v34;
    v25[1] = v35;
    v25[2] = v36;
    v25[3] = v37;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      v26 = v17;
      v27 = v18;
      v28 = v19;
      v29 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v25, &v26);
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

uint64_t PlaylistCovers.CarouselItem.hash(into:)()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v6) != 1)
  {
  }

  String.hash(into:)();
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v25 = a1[4];
  v26 = v3;
  v4 = a1[7];
  v27 = a1[6];
  v28 = v4;
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = a1[3];
  v23 = a1[2];
  v24 = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v21) == 1)
  {
    v7 = a2[5];
    v33 = a2[4];
    v34 = v7;
    v8 = a2[7];
    v35 = a2[6];
    v36 = v8;
    v9 = a2[1];
    v29 = *a2;
    v30 = v9;
    v10 = a2[3];
    v31 = a2[2];
    v32 = v10;
    v11 = _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v29) == 1;
  }

  else
  {
    v19[4] = v25;
    v19[5] = v26;
    v19[6] = v27;
    v19[7] = v28;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v31 = a2[2];
    v32 = v14;
    v29 = v12;
    v30 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v35 = a2[6];
    v36 = v17;
    v33 = v15;
    v34 = v16;
    if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v29) == 1)
    {
      v11 = 0;
    }

    else
    {
      v20[4] = v33;
      v20[5] = v34;
      v20[6] = v35;
      v20[7] = v36;
      v20[0] = v29;
      v20[1] = v30;
      v20[2] = v31;
      v20[3] = v32;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v19, v20);
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v25 = v1[4];
  v26 = v3;
  v4 = v1[7];
  v27 = v1[6];
  v28 = v4;
  v5 = v1[1];
  v22[0] = *v1;
  v22[1] = v5;
  v6 = v1[3];
  v23 = v1[2];
  v24 = v6;
  v35 = v27;
  v36 = v4;
  v33 = v25;
  v34 = v3;
  v31 = v23;
  v32 = v6;
  v29 = v22[0];
  v30 = v5;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v29) == 1)
  {
    _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(&v37);
  }

  else
  {
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v8 = &v14;
    CFRange.init(_:)(*(&v7 - 1));
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v21;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
  }

  outlined init with copy of PlaylistCovers.CarouselItem.CarouselItemType(v22, &v14);
  v9 = v42;
  a1[4] = v41;
  a1[5] = v9;
  v10 = v44;
  a1[6] = v43;
  a1[7] = v10;
  v11 = v38;
  *a1 = v37;
  a1[1] = v11;
  result = *&v39;
  v13 = v40;
  a1[2] = v39;
  a1[3] = v13;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(&v9);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  outlined init with copy of PlaylistCovers.CarouselItem(&v17, v8);
  outlined destroy of PlaylistCovers.CarouselItem(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = a1;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v6 + 16))(v8, v11, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v13 = static NSBundle.module;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  v17 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v12, 0x6954736B63617254, 0xEB0000000064656CLL, v14, v16, *v17, v17[1], v17[2], &v24, v17[3]);
  v18.location = &v24;
  CFRange.init(_:)(v18);
  v41[4] = v28;
  v41[5] = v29;
  v41[6] = v30;
  v41[7] = v31;
  v41[0] = v24;
  v41[1] = v25;
  v41[2] = v26;
  v41[3] = v27;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = 0;
  v42 = 0;

  outlined init with copy of PlaylistCovers.CarouselItem(&v32, v23);
  outlined destroy of PlaylistCovers.CarouselItem(v41);
  v19 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v19;
  *(a2 + 128) = v40;
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  v21 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v21;
  result = v33;
  *a2 = v32;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v6) != 1)
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance PlaylistCovers.CarouselItem@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v9) == 1)
  {
    result = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaylistCovers.CarouselItem()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v6) != 1)
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(static PlaylistCovers.carouselItems(from:playlistTitle:size:), 0, 0);
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMd);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemVGMd);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = static PlaylistCovers.carouselItems(from:playlistTitle:size:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &async function pointer to partial apply for closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:), v7, v6);
}

{

  return _swift_task_switch(static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), 0, 0);
}

uint64_t closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_GMd);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:), 0, 0);
}

uint64_t closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = type metadata accessor for TaskPriority();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      outlined init with copy of PlaylistCovers.Cover.Representation(v0 + 1280, v0 + 1448);
      outlined init with copy of PlaylistCovers.Cover.Representation(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      outlined destroy of TaskPriority?(v19, &_sScPSgMd_1);

      outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    _sScPSgWOc_0(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1736), &_sScPSgMd_1);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
        *(v26 + 24) = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMd);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1280);
        outlined destroy of TaskPriority?(v28, &_sScPSgMd_1);
        goto LABEL_4;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMd);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = lazy protocol witness table accessor for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = CFRange.init(_:);
  }

  else
  {
    v6 = closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v115 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v109 = v0 + 1088;
    v110 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v114 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v112 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v114;
    v113 = v12;
    v108 = v13;
    v111 = v112;
    v18 = v14;
    v19 = v0 + 1392;
    v107 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 1008);
    *(v0 + 864) = *(v0 + 992);
    *(v0 + 880) = v25;
    v26.location = v0 + 832;
    CFRange.init(_:)(v26);
    v27 = *(v0 + 896);
    v28 = *(v0 + 912);
    *(v0 + 352) = v27;
    *(v0 + 368) = v28;
    v29 = *(v0 + 928);
    v30 = *(v0 + 944);
    *(v0 + 384) = v29;
    *(v0 + 400) = v30;
    v31 = *(v0 + 832);
    v32 = *(v0 + 848);
    *(v0 + 288) = v31;
    *(v0 + 304) = v32;
    v33 = *(v0 + 864);
    v34 = *(v0 + 880);
    *(v0 + 320) = v33;
    *(v0 + 336) = v34;
    *(v0 + 424) = v31;
    *(v0 + 440) = v32;
    *(v0 + 456) = v33;
    *(v0 + 472) = v34;
    *(v0 + 488) = v27;
    *(v0 + 504) = v28;
    *(v0 + 520) = v29;
    *(v0 + 536) = v30;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    outlined init with copy of PlaylistCovers.CarouselItem(v0 + 424, v0 + 560);
    outlined destroy of PlaylistCovers.CarouselItem(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v115;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 1392);
    v38 = *(v115 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v37;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v41)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
        if ((v12 & 1) != (v42 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v71 = *v3;
          v72 = *(*v3 + 56) + 136 * v36;
          *(v0 + 696) = *v72;
          v73 = *(v72 + 64);
          v75 = *(v72 + 16);
          v74 = *(v72 + 32);
          *(v0 + 744) = *(v72 + 48);
          *(v0 + 760) = v73;
          *(v0 + 712) = v75;
          *(v0 + 728) = v74;
          v77 = *(v72 + 96);
          v76 = *(v72 + 112);
          v78 = *(v72 + 80);
          *(v0 + 824) = *(v72 + 128);
          *(v0 + 792) = v77;
          *(v0 + 808) = v76;
          *(v0 + 776) = v78;
          *v72 = *v2;
          v79 = *(v2 + 16);
          v80 = *(v2 + 32);
          v81 = *(v2 + 64);
          *(v72 + 48) = *(v2 + 48);
          *(v72 + 64) = v81;
          *(v72 + 16) = v79;
          *(v72 + 32) = v80;
          v82 = *(v2 + 80);
          v83 = *(v2 + 96);
          v84 = *(v2 + 112);
          *(v72 + 128) = *(v2 + 128);
          *(v72 + 96) = v83;
          *(v72 + 112) = v84;
          *(v72 + 80) = v82;
          outlined destroy of PlaylistCovers.CarouselItem(v0 + 696);

          outlined destroy of TaskPriority?(v110, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMd);
          goto LABEL_36;
        }

LABEL_34:
        v71 = *v3;
        *(*v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v89 = v71[6] + 56 * v36;
        v90 = *v19;
        v91 = *(v19 + 16);
        v92 = *(v19 + 32);
        *(v89 + 48) = *(v19 + 48);
        *(v89 + 16) = v91;
        *(v89 + 32) = v92;
        *v89 = v90;
        v93 = v71[7] + 136 * v36;
        *v93 = *v2;
        v94 = *(v2 + 16);
        v95 = *(v2 + 32);
        v96 = *(v2 + 64);
        *(v93 + 48) = *(v2 + 48);
        *(v93 + 64) = v96;
        *(v93 + 16) = v94;
        *(v93 + 32) = v95;
        v97 = *(v2 + 80);
        v98 = *(v2 + 96);
        v99 = *(v2 + 112);
        *(v93 + 128) = *(v2 + 128);
        *(v93 + 96) = v98;
        *(v93 + 112) = v99;
        *(v93 + 80) = v97;

        v100 = outlined destroy of TaskPriority?(v110, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMd);
        v103 = v71[2];
        v40 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v40)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
        }

        v71[2] = v104;
LABEL_36:
        *(v0 + 1784) = v71;
        v105 = lazy protocol witness table accessor for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator();
        v106 = swift_task_alloc();
        *(v0 + 1792) = v106;
        *v106 = v0;
        v106[1] = closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
        v101 = *(v0 + 1752);
        v100 = v109;
        v102 = v105;

        return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v87 = v21;
    v88 = v36;
    specialized _NativeDictionary.copy()();
    v36 = v88;
    v21 = v87;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v44 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v45 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v45;
  v46 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v46;
  v36 = outlined destroy of TaskPriority?(v0 + 1152, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMd);
  if (!v44)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = v0 + 1336;
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = 56;
  do
  {
    v47 = *(v0 + 1776);
    v48 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v47)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v49 = *v48;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2);
      *(v0 + 1384) = *(v48 + 6);
      *(v0 + 1352) = v50;
      *(v0 + 1368) = v51;
      *v19 = v49;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v48 += 56;
      if (v3 == v47)
      {
        goto LABEL_27;
      }
    }

    outlined init with copy of PlaylistCovers.Cover.Representation(v0 + 1336, v0 + 1560);
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 1336);
    if ((v53 & 1) == 0)
    {
      v36 = outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1336);
      v47 = *(v0 + 1776);
      goto LABEL_11;
    }

    v54 = *(v2 + 56) + 136 * v52;
    *(v0 + 16) = *v54;
    v55 = *(v54 + 16);
    v56 = *(v54 + 32);
    v57 = *(v54 + 64);
    *(v0 + 64) = *(v54 + 48);
    *(v0 + 80) = v57;
    *(v0 + 32) = v55;
    *(v0 + 48) = v56;
    v58 = *(v54 + 80);
    v59 = *(v54 + 96);
    v60 = *(v54 + 112);
    *(v0 + 144) = *(v54 + 128);
    *(v0 + 112) = v59;
    *(v0 + 128) = v60;
    *(v0 + 96) = v58;
    outlined init with copy of PlaylistCovers.CarouselItem(v0 + 16, v0 + 152);
    outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1336);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      v21 = v36;
    }

    v62 = v21[2];
    v61 = v21[3];
    if (v62 >= v61 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v21);
      v21 = v36;
    }

    v63 = *(v0 + 1776);
    v21[2] = (v62 + 1);
    v64 = &v21[17 * v62];
    *(v64 + 2) = *(v0 + 16);
    v65 = *(v0 + 32);
    v66 = *(v0 + 48);
    v67 = *(v0 + 80);
    *(v64 + 5) = *(v0 + 64);
    *(v64 + 6) = v67;
    *(v64 + 3) = v65;
    *(v64 + 4) = v66;
    v68 = *(v0 + 96);
    v69 = *(v0 + 112);
    v70 = *(v0 + 128);
    v64[20] = *(v0 + 144);
    *(v64 + 8) = v69;
    *(v64 + 9) = v70;
    *(v64 + 7) = v68;
  }

  while (v3 != v63);
LABEL_27:
  v85 = *(v0 + 1680);

  *v85 = v21;

  v86 = *(v0 + 8);

  return v86();
}

uint64_t partial apply for closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO5CoverV14RepresentationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.CarouselItem(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for PlaylistCovers.CarouselItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.CarouselItem.CarouselItemType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaylistCovers.CarouselItem.CarouselItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PlaylistCovers.CarouselItem.CarouselItemType(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:), 0, 0);
}

uint64_t closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  _sSo29UIGraphicsImageRendererFormatCMa_0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  outlined init with copy of PlaylistCovers.Cover.Representation(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  v14 = static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);

  *(v6 + 56) = v14;
  v15 = *(v0 + 1);

  return v15();
}

uint64_t sub_100393EA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t _sScPSgWOc_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003940BC()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t _sSo29UIGraphicsImageRendererFormatCMa_0()
{
  result = _sSo29UIGraphicsImageRendererFormatCML_0;
  if (!_sSo29UIGraphicsImageRendererFormatCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo29UIGraphicsImageRendererFormatCML_0);
  }

  return result;
}

uint64_t ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:);
  *(v17 + 24) = v11;
  aBlock[4] = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_60;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v22 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v24.receiver = v7;
      v24.super_class = v6;
      v23 = objc_msgSendSuper2(&v24, "initWithEffect:", v22);

      return v23;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 1.0;
  v28.size.height = 1.0;
  if (CGRectIsEmpty(v28))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)partial apply;
  *(v19 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_14_1;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v24 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v26.receiver = v9;
      v26.super_class = v4;
      v25 = objc_msgSendSuper2(&v26, "initWithEffect:", v24);

      return v25;
    }

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance ProgressiveBlur(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ProgressiveBlur(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ProgressiveBlur(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ProgressiveBlur()
{
  lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double ProgressiveBlurView.Edge.startPoint.getter(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

uint64_t ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)partial apply;
  *(v17 + 24) = v11;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_25;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v22 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v4;
      v24.super_class = type metadata accessor for ProgressiveBlurView();
      v23 = objc_msgSendSuper2(&v24, "initWithEffect:", v22);

      return v23;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)partial apply;
  *(v16 + 24) = v15;
  v20[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v20[3] = &block_descriptor_36_2;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{ProgressiveBlurView.Edge.startPoint.getter(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{ProgressiveBlurView.Edge.startPoint.getter(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004F2EF0;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _sSo10CGColorRefaMa_0(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004F2F10;
  *(v28 + 32) = a3;
  type metadata accessor for CAMediaTimingFunction();
  v29 = a3;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_1003954A0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur()
{
  result = lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur;
  if (!lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur;
  if (!lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge()
{
  result = lazy protocol witness table cache variable for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge;
  if (!lazy protocol witness table cache variable for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t type metadata accessor for CAMediaTimingFunction()
{
  result = lazy cache variable for type metadata for CAMediaTimingFunction;
  if (!lazy cache variable for type metadata for CAMediaTimingFunction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAMediaTimingFunction);
  }

  return result;
}

id one-time initialization function for blurEffect(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v2[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v2[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  *&v2[v7] = v10;
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v2[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (one-time initialization token for blurEffect != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() effectForBlurEffect:static QRCodeOverlayViewController.Specs.blurEffect];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v2[v16] = [objc_allocWithZone(UIScrollView) init];
  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v38);
    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v21 = v38[1];
      v20 = v38[2];
      v22 = v38[0];
    }

    else
    {
      v20 = a1[2];
      v18 = a1[3];
      v22 = *a1;
      v21 = a1[1];
      outlined init with copy of QRCode(a1, v36);
      v19 = 76;
    }

    v25 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v25 = v22;
    *(v25 + 1) = v21;
    *(v25 + 2) = v20;
    *(v25 + 3) = v18;
    *(v25 + 4) = v19;
  }

  else
  {
    v23 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v24 = *(a1 + 1);
    *v23 = *a1;
    *(v23 + 1) = v24;
    *(v23 + 4) = a1[4];
    outlined init with copy of QRCode(a1, v38);
  }

  v26 = type metadata accessor for QRCodeOverlayViewController();
  v37.receiver = v2;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v28 = *&v27[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  v29 = v27;
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();

  [v30 setText:v31];

  v32 = *&v29[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004F2400;
  *(v34 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  outlined destroy of QRCode(a1);

  return v29;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
  type metadata accessor for UIAction(0, &_sSo8UIActionCML_0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v44.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, partial apply for closure #1 in QRCodeOverlayViewController.viewDidLoad(), v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_0);
  v23 = v22;
  v24 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void closure #1 in QRCodeOverlayViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for QRCodeOverlayViewController();
  v46.receiver = v2;
  v46.super_class = v7;
  objc_msgSendSuper2(&v46, "viewIsAppearing:", a1);
  v8 = [objc_allocWithZone(UIView) init];
  v9 = [v2 traitCollection];
  [v9 userInterfaceIdiom];

  static UIView.Corner.value(_:continuous:)();
  v10 = type metadata accessor for UIView.Corner();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  UIView.corner.setter();
  v11 = [v8 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  [v8 setClipsToBounds:1];
  [v8 setAlpha:0.0];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v8 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v13 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v8;
  v14 = v8;

  v15 = [v2 traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 != 3)
  {
    v33 = objc_opt_self();
    v34 = [v33 whiteColor];
    [v14 setBackgroundColor:v34];

    v35 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v35 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v37 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v37] addSubview:v14];
    [*&v2[v37] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v38 = *&v2[v37];
    v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v38 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v40 = [*&v2[v39] contentView];
    [v40 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v41 = *&v2[v12];
    v42 = [v33 blackColor];
    v43 = *&v41[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v41[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v42;
    v44 = v42;

    QRCodeOverlayViewController.ContainerView.updateColor()();
    v31 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v32 = [v33 blackColor];
    [v31 setTintColor:v32];
    goto LABEL_6;
  }

  v17 = *&v2[v12];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 labelColor];
  v21 = *&v19[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v19[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v20;
  v22 = v20;

  QRCodeOverlayViewController.ContainerView.updateColor()();
  v23 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v24 = [v18 labelColor];
  [v23 setTintColor:v24];

  v25 = objc_allocWithZone(UIColor);
  aBlock[4] = closure #1 in QRCodeOverlayViewController.viewIsAppearing(_:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  aBlock[3] = &block_descriptor_61;
  v26 = _Block_copy(aBlock);
  v27 = [v25 initWithDynamicProvider:v26];
  _Block_release(v26);

  [v14 setBackgroundColor:v27];

  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    [v28 addSubview:v14];

    v30 = [v2 view];
    if (v30)
    {
      v31 = v30;
      v32 = *&v2[v12];
      [v31 addSubview:v32];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id closure #1 in QRCodeOverlayViewController.viewIsAppearing(_:)(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = partial apply for closure #1 in QRCodeOverlayViewController.viewDidAppear(_:);
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_6_2;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

void closure #1 in QRCodeOverlayViewController.viewDidAppear(_:)(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    if (one-time initialization token for carPlayBlurEffect != -1)
    {
      swift_once();
    }

    v5 = &static QRCodeOverlayViewController.Specs.carPlayBlurEffect;
  }

  else
  {
    if (one-time initialization token for blurEffect != -1)
    {
      swift_once();
    }

    v5 = &static QRCodeOverlayViewController.Specs.blurEffect;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v183.receiver = v0;
  v183.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v183, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != 3)
  {
    if (!v4)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    [v4 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (one-time initialization token for qrCodeHorizontalPadding != -1)
    {
      swift_once();
    }

    if (one-time initialization token for qrCodeBackgroundPadding != -1)
    {
      swift_once();
    }

    v34 = *&static QRCodeOverlayViewController.Specs.qrCodeBackgroundPadding;
    v35 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v186 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v187 = v35;
    v188 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    outlined init with copy of QRCode(&v186, &v182);
    if (one-time initialization token for qrCodeMaxWidth != -1)
    {
      swift_once();
    }

    v203.origin.x = v27;
    v203.origin.y = v29;
    v203.size.width = v31;
    v203.size.height = v33;
    CGRectGetWidth(v203);
    v204.origin.x = v27;
    v204.origin.y = v29;
    v204.size.width = v31;
    v204.size.height = v33;
    CGRectGetHeight(v204);
    v36 = [v1 traitCollection];
    [v36 displayScale];

    v37 = QRCode.dotAdjustedWidth(with:scale:)();
    outlined destroy of QRCode(&v186);
    v205.origin.x = v27;
    v205.origin.y = v29;
    v205.size.width = v31;
    v205.size.height = v33;
    Width = CGRectGetWidth(v205);
    v39 = [v1 view];
    if (!v39)
    {
      goto LABEL_44;
    }

    v40 = v39;
    [v39 safeAreaInsets];
    v42 = v41;

    v43 = [v1 view];
    if (!v43)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v44 = v43;
    v181 = v37;
    v45 = v34 + v34 + v37;
    [v43 safeAreaInsets];

    v46 = UIEdgeInsetsInsetRect(v27, v29, v31, v33, v42, (Width - v45) * 0.5);
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v179 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v49, v51}];
    v54 = v53;
    v55 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v50, v52}];
    if (one-time initialization token for titleTopPadding != -1)
    {
      v174 = v56;
      swift_once();
      v56 = v174;
    }

    v176 = v45 + *&static QRCodeOverlayViewController.Specs.titleTopPadding;
    v57 = v54 + v45 + *&static QRCodeOverlayViewController.Specs.titleTopPadding;
    if (one-time initialization token for subtitleTopPadding != -1)
    {
      v175 = v56;
      swift_once();
      v56 = v175;
    }

    v180 = v54;
    v178 = *&static QRCodeOverlayViewController.Specs.subtitleTopPadding;
    v58 = v56 + v57 + *&static QRCodeOverlayViewController.Specs.subtitleTopPadding;
    if (one-time initialization token for scrollContentViewVerticalPadding != -1)
    {
      swift_once();
    }

    v59 = v58 + *&static QRCodeOverlayViewController.Specs.scrollContentViewVerticalPadding + *&static QRCodeOverlayViewController.Specs.scrollContentViewVerticalPadding;
    v206.origin.x = v46;
    v206.origin.y = v48;
    v206.size.width = v50;
    v206.size.height = v52;
    v60 = CGRectGetWidth(v206);
    v61 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v46, v48, v50, v52}];
    [*&v1[v61] setContentSize:{v60, v59}];
    v207.origin.x = v46;
    v207.origin.y = v48;
    v207.size.width = v50;
    v207.size.height = v52;
    CGRectGetHeight(v207);
    v62 = *&v1[v61];
    v63 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v64 = v62;
    CGRect.centeringAlong(axes:in:)();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;

    [v63 setFrame:{v66, v68, v70, v72}];
    v73 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v77 = v76;
    v78 = v74;
    v79 = v75;
    v80 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v81 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v177 = v82;
    if (v81)
    {
      v83 = *&v1[v73];
      v84 = v81;
      v85 = v83;
      CGRect.centeringAlong(axes:in:)();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;

      [v84 setFrame:{v87, v89, v91, v93}];
      v94 = *&v1[v80];
      v95 = v79 - v176;
      v96 = v176 + v78;
      v97 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v94)
      {
        v98 = v97;
        [v94 bounds];
LABEL_31:
        v99 = v55;
        v100 = [v1 traitCollection];
        [v100 displayScale];

        CGRect.centeringAlong(axes:bounds:scale:)();
        [v98 setFrame:*&v181];

        v101 = *&v1[v179];
        v208.origin.x = v77;
        v208.origin.y = v96;
        v208.size.width = v177;
        v208.size.height = v95;
        CGRectGetMinY(v208);
        v102 = *&v1[v73];
        CGRect.centeringAlong(axes:in:)();
        v104 = v103;
        v106 = v105;
        v108 = v107;
        v110 = v109;

        [v101 setFrame:{v104, v106, v108, v110}];
        v111 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v112 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v209.origin.x = v77;
        v209.origin.y = v180 + v178 + v96;
        v209.size.width = v177;
        v209.size.height = v95 - (v180 + v178);
        CGRectGetMinY(v209);
        v113 = *&v1[v73];
        CGRect.centeringAlong(axes:in:)();
        v115 = v114;
        v117 = v116;
        v119 = v118;
        v121 = v120;

        [v112 setFrame:{v115, v117, v119, v121}];
        v122 = *&v1[v111];
        v24 = *&v1[v99];
        [v122 bounds];
        goto LABEL_32;
      }
    }

    else
    {
      v95 = v75 - v176;
      v96 = v176 + v74;
      v97 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v98 = v97;
    goto LABEL_31;
  }

  if (!v4)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (one-time initialization token for carPlayQRCodePadding != -1)
  {
    swift_once();
  }

  if (one-time initialization token for qrCodeBackgroundPaddingCarPlay != -1)
  {
    swift_once();
  }

  v15 = *&static QRCodeOverlayViewController.Specs.qrCodeBackgroundPaddingCarPlay;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v186 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v187 = v16;
  v188 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  outlined init with copy of QRCode(&v186, &v182);
  if (one-time initialization token for qrCodeMaxWidth != -1)
  {
    swift_once();
  }

  v201.origin.x = v8;
  v201.origin.y = v10;
  v201.size.width = v12;
  v201.size.height = v14;
  CGRectGetWidth(v201);
  v202.origin.x = v8;
  v202.origin.y = v10;
  v202.size.width = v12;
  v202.size.height = v14;
  CGRectGetHeight(v202);
  v17 = [v1 traitCollection];
  [v17 displayScale];

  v18 = QRCode.dotAdjustedWidth(with:scale:)();
  outlined destroy of QRCode(&v186);
  v19 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v20 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v21 = [v1 traitCollection];
  [v21 displayScale];

  CGRect.centeringAlong(axes:bounds:scale:)();
  [v20 setFrame:*&v18];

  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v22)
  {
    v23 = *&v1[v19];
    v24 = v22;
    [v23 frame];
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v25, v15);
    CGRect.outset(by:for:)();
LABEL_32:
    [v24 setFrame:?];
  }

  v123 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v124 = [v1 view];
  if (!v124)
  {
    __break(1u);
    goto LABEL_42;
  }

  v125 = v124;
  [v124 bounds];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;

  [v123 setFrame:{v127, v129, v131, v133}];
  v134 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v135 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v136 = CGRectGetWidth(v210) * 0.3;
    if (one-time initialization token for logoMaxWidth != -1)
    {
      swift_once();
    }

    v137 = *&static QRCodeOverlayViewController.Specs.logoMaxWidth;
    if (*&static QRCodeOverlayViewController.Specs.logoMaxWidth < v136)
    {
      v136 = *&static QRCodeOverlayViewController.Specs.logoMaxWidth;
    }

    v138 = *&v1[v135];
    CGRect.centeringAlong(axes:in:)();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v146 = v145;

    v147 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v140, v142, v144, v146}];
    CGAffineTransformMakeScale(&v182, v136 / v137, v136 / v137);
    a = v182.a;
    b = v182.b;
    c = v182.c;
    d = v182.d;
    tx = v182.tx;
    ty = v182.ty;
    v154 = *(v134 + 1);
    v184[0] = *v134;
    v184[1] = v154;
    v185 = *(v134 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100507AC0;
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v189.x = 12.0;
    v189.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v189, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v190.x = 12.0;
    v190.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v190, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v191.y = 6.0;
    v191.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v191, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v192.y = 0.0;
    v192.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v192, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v193.y = 0.0;
    v193.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v193, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v194.x = 85.0;
    v194.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v194, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v195.x = 36.0;
    v195.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v195, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v196.x = 36.0;
    v196.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v196, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v197.x = 0.0;
    v197.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v197, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v198.x = 0.0;
    v198.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v198, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v199.x = 12.0;
    v199.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v199, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v200.x = 12.0;
    v200.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v200, &v182);
    v156 = *&v1[v147];
    outlined init with copy of QRCode(v184, &v182);
    [v156 frame];
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    [*&v1[v135] bounds];
    v169 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v158, v160, v162, v164, v165, v166, v167, v168);
    outlined destroy of QRCode(v184);
    swift_setDeallocating();
    v170 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v169];
    v171 = *&v1[v170];
    v172 = *&v1[v135];
    v173 = v171;
    [v172 bounds];
    [v173 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = partial apply for closure #1 in QRCodeOverlayViewController.dismissAnimated();
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed () -> ();
  v11 = &block_descriptor_12_0;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = partial apply for closure #2 in QRCodeOverlayViewController.dismissAnimated();
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v11 = &block_descriptor_18_0;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

id closure #1 in QRCodeOverlayViewController.dismissAnimated()(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  result = [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *QRCodeOverlayViewController.ContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004F3040;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  v35[3] = v14;
  v35[0] = v18;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CATransaction);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(partial apply for closure #1 in QRCodeOverlayViewController.ContainerView.layoutSubviews());
}

void closure #1 in QRCodeOverlayViewController.ContainerView.layoutSubviews()(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void QRCodeOverlayViewController.ContainerView.updateColor()()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id QRCodeOverlayViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a2, 0);
    (*(v8 + 8))(v10, v7);
    a2 = v19[1];
  }

  if (a2)
  {
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);

    v15 = UIColor.init(_:)();
    v16 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v15;
    v17 = v15;

    QRCodeOverlayViewController.ContainerView.updateColor()();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a3, 0);
    (*(v10 + 8))(v12, v9);
    a3 = v19[1];
  }

  if (a3)
  {
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);

    v16 = UIColor.init(_:)();
    v17 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v16;
    v18 = v16;

    QRCodeOverlayViewController.ContainerView.updateColor()();
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance QRCodeOverlayViewController.ImageViewRepresentable()
{
  lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void specialized closure #1 in QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003992B0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100399318()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable()
{
  result = lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable;
  if (!lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable;
  if (!lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for QRCodeOverlayViewController.ImageViewRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized QRCodeOverlayViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (one-time initialization token for blurEffect != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:static QRCodeOverlayViewController.Specs.blurEffect];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized QRCodeOverlayViewController.ContainerView.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMd);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB09RadiosityO0cD0VGMd);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMd) + 36));
  *v23 = partial apply for closure #2 in Radiosity.ViewModifier.body(content:);
  v23[1] = v18;
  outlined init with copy of Radiosity.Specs(v26, v25);
  return outlined init with copy of Radiosity.ViewModifier(v3, v25);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance Radiosity.ViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMd);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB09RadiosityO0cD0VGMd);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMd) + 36));
  *v22 = closure #2 in Radiosity.ViewModifier.body(content:)partial apply;
  v22[1] = v17;
  outlined init with copy of Radiosity.Specs(v34, v24);
  return outlined init with copy of Radiosity.ViewModifier(&v25, v24);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Radiosity.View<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Radiosity.View<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance Radiosity.View<A>()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id Radiosity.UIView.isRadiosityEnabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  result = swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[direct field offset for Radiosity.UIView.dropShadow]];
      return [v1 addSubview:*&v1[direct field offset for Radiosity.UIView.radiosity]];
    }

    else
    {
      [*&v1[direct field offset for Radiosity.UIView.dropShadow] removeFromSuperview];
      return [*&v1[direct field offset for Radiosity.UIView.radiosity] removeFromSuperview];
    }
  }

  return result;
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return Radiosity.UIView.isRadiosityEnabled.didset(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return Radiosity.UIView.isRadiosityEnabled.modify;
}

void Radiosity.UIView.isRadiosityEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void Radiosity.UIView.specs.didset(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  Radiosity.UIView.updateDropShadow(requireReinstallation:)(v5);
  Radiosity.UIView.updateRadiosity()();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  specialized Radiosity.UIView.specs.getter(v8);
  outlined init with copy of Radiosity.Specs(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  specialized Radiosity.UIView.specs.setter(a1);

  return outlined destroy of Radiosity.Specs(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  outlined init with copy of Radiosity.Specs(v4, (v4 + 32));
  return Radiosity.UIView.specs.modify;
}

void Radiosity.UIView.specs.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    outlined init with copy of Radiosity.Specs((v2 + 8), (v2 + 40));
    specialized Radiosity.UIView.specs.setter(v2 + 8);
    outlined destroy of Radiosity.Specs((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    specialized Radiosity.UIView.specs.setter(v2 + 16);
    v11 = (v2 + 16);
  }

  outlined destroy of Radiosity.Specs(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderArtwork != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for Radiosity.UIView.content] = a1;
  v9 = &v4[direct field offset for Radiosity.UIView.specs];
  v10 = *(a3 + 80);
  v9[4] = *(a3 + 64);
  v9[5] = v10;
  v11 = *(a3 + 112);
  v9[6] = *(a3 + 96);
  v9[7] = v11;
  v12 = *(a3 + 16);
  *v9 = *a3;
  v9[1] = v12;
  v13 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v13;
  v4[direct field offset for Radiosity.UIView.isRadiosityEnabled] = a2;
  if (*(a3 + 72))
  {
    v14 = objc_allocWithZone(UIView);
    v15 = a1;
    outlined init with copy of Radiosity.Specs(a3, v31);
    v16 = [v14 init];
  }

  else
  {
    v17 = objc_allocWithZone(_UIPortalView);
    v18 = a1;
    outlined init with copy of Radiosity.Specs(a3, v31);
    v16 = [v17 initWithSourceView:v18];
  }

  v19 = v16;
  *&v4[direct field offset for Radiosity.UIView.dropShadow] = v16;
  v20 = objc_allocWithZone(_UIPortalView);
  v21 = a1;
  v22 = v19;
  v23 = [v20 initWithSourceView:v21];
  *&v4[direct field offset for Radiosity.UIView.radiosity] = v23;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for Radiosity.UIView();
  v24 = v23;
  v25 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 addSubview:{v21, v30.receiver, v30.super_class}];
  if (a2)
  {
    [v25 addSubview:v22];
    [v25 addSubview:v24];
  }

  [v25 bounds];
  [v21 setFrame:?];
  [v21 setAutoresizingMask:18];

  Radiosity.UIView.updateDropShadow(requireReinstallation:)(0);
  Radiosity.UIView.updateRadiosity()();
  v26 = [v25 traitCollection];
  v27 = [v26 userInterfaceStyle];

  Radiosity.UIView.updateUserInterfaceStyle(userInterfaceStyle:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004F2400;
  *(v28 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v28 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  outlined destroy of Radiosity.Specs(a3);

  return v25;
}

double @objc Radiosity.UIView.intrinsicContentSize.getter(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for Radiosity.UIView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  Radiosity.UIView.updateDropShadow(requireReinstallation:)(0);
  Radiosity.UIView.updateRadiosity()();
}

void @objc Radiosity.UIView.layoutSubviews()(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void Radiosity.UIView.dropShadow.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for Radiosity.UIView.dropShadow);
  *(v1 + direct field offset for Radiosity.UIView.dropShadow) = a1;
}

void Radiosity.UIView.updateDropShadow(requireReinstallation:)(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[direct field offset for Radiosity.UIView.dropShadow] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[direct field offset for Radiosity.UIView.dropShadow];
    *&v2[direct field offset for Radiosity.UIView.dropShadow] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  outlined init with copy of Radiosity.Specs(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  outlined destroy of Radiosity.Specs(&v50);
  v23 = *&v2[direct field offset for Radiosity.UIView.dropShadow];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = outlined init with copy of Radiosity.Specs.Shadow.DrawMode(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    outlined destroy of Radiosity.Specs.Shadow.DrawMode(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    outlined init with copy of Radiosity.Specs.Shadow.DrawMode(&v56, v48);
    v44 = closure #1 in Radiosity.UIView.updateDropShadow(requireReinstallation:)(v42, v43, v2);
    outlined destroy of Radiosity.Specs.Shadow.DrawMode(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id closure #1 in Radiosity.UIView.updateDropShadow(requireReinstallation:)(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, v18[8]);
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void Radiosity.UIView.updateRadiosity()()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v44 = *(v2 + 4);
  v45 = v3;
  v4 = *(v2 + 7);
  v46 = *(v2 + 6);
  v47 = v4;
  v5 = *(v2 + 1);
  *&v42.a = *v2;
  *&v42.c = v5;
  v6 = *(v2 + 3);
  *&v42.tx = *(v2 + 2);
  v43 = v6;
  outlined init with copy of Radiosity.Specs(&v42, &rect[3]);
  [v1 bounds];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  *&rect[3] = v42;
  v49 = CGRectApplyAffineTransform(v48, &rect[3]);
  v11 = v49.origin.x;
  rect[0] = *&v49.origin.x;
  rect[2] = *&v49.origin.y;
  v12 = v49.size.width;
  v13 = v49.size.height;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v49));
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetWidth(v50);
  v51.origin.x = v11;
  *&v51.origin.y = rect[2];
  v51.size.width = v12;
  v51.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v51)) * 0.5;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v16 = CGRectGetHeight(v52);
  *&v53.origin.x = rect[0];
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v17 = CGRectGetHeight(v53);
  outlined destroy of Radiosity.Specs(&v42);
  v18 = *&v1[direct field offset for Radiosity.UIView.radiosity];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2EF0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = type metadata accessor for CAFilter();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = Double._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void Radiosity.UIView.updateUserInterfaceStyle(userInterfaceStyle:)(uint64_t a1)
{
  Radiosity.UIView.updateRadiosity()();
  v3 = [*(v1 + direct field offset for Radiosity.UIView.dropShadow) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + direct field offset for Radiosity.UIView.radiosity) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Radiosity.UIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void @objc Radiosity.UIView.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  outlined destroy of Radiosity.Specs(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = outlined copy of (@escaping @callee_guaranteed () -> ())?(v7);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  State.init(wrappedValue:)();
  LOBYTE(v3) = v12[0];
  *(&v3 + 1) = *(&v12[0] + 1);
  outlined init with copy of Radiosity.Specs(a1, v12);
  View.modifier<A>(_:)();
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = v3;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[0] = v4;
  v12[1] = v5;
  return outlined destroy of Radiosity.ViewModifier(v12);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  outlined init with copy of Radiosity.Specs(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 one-time initialization function for containerDetailHeaderArtwork()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_10063F2F0 = v5;
  qword_10063F300 = *&tx;
  unk_10063F308 = *&ty;
  dword_10063F310 = 1050253722;
  qword_10063F318 = v3;
  unk_10063F320 = 0x402E000000000000;
  qword_10063F328 = 0;
  unk_10063F330 = 0;
  qword_10063F338 = closure #3 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork;
  unk_10063F340 = 0;
  qword_10063F348 = closure #4 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork;
  unk_10063F350 = 0;
  qword_10063F358 = 0x4040000000000000;
  return result;
}

float closure #3 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_100512E84[a1];
  }
}

double closure #4 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_100512E90[a1];
  }
}

__n128 one-time initialization function for nowPlaying()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_10063F370 = v5;
  qword_10063F380 = *&tx;
  unk_10063F388 = *&ty;
  dword_10063F390 = 1053609165;
  qword_10063F398 = v3;
  unk_10063F3A0 = 0x402E000000000000;
  qword_10063F3A8 = 0;
  unk_10063F3B0 = 0;
  qword_10063F3B8 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_10063F3C0 = 0;
  qword_10063F3C8 = closure #3 in variable initialization expression of static Radiosity.Specs.nowPlaying;
  unk_10063F3D0 = 0;
  qword_10063F3D8 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t static Radiosity.Specs.containerDetailHeaderArtwork.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return outlined init with copy of Radiosity.Specs(a2, v4);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    outlined init with copy of Radiosity.Specs(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    outlined init with copy of Radiosity.Specs(v5, v19);
    outlined destroy of Radiosity.Specs.Shadow.DrawMode(&v28);
    v10 = partial apply for closure #1 in closure #1 in Radiosity.Specs.pathShadow(for:);
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id closure #1 in closure #1 in Radiosity.Specs.pathShadow(for:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  UIEdgeInsets.init(edges:inset:)();
  v19 = [v13 bezierPathWithRoundedRect:UIEdgeInsetsInsetRect(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  v21 = [v19 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  return v15;
}

_BYTE *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance RadiosityEnabledPreferenceKey(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 specialized Radiosity.UIView.specs.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id specialized Radiosity.View.makeUIView(context:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for _UIHostingView();
  v8 = type metadata accessor for Radiosity.UIView();
  (*(v5 + 16))(v7, v2, v4);
  v9 = _UIHostingView.__allocating_init(rootView:)();
  v10 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v11 = *(v2 + v10 + 80);
  v18[4] = *(v2 + v10 + 64);
  v18[5] = v11;
  v12 = *(v2 + v10 + 112);
  v18[6] = *(v2 + v10 + 96);
  v18[7] = v12;
  v13 = *(v2 + v10 + 16);
  v18[0] = *(v2 + v10);
  v18[1] = v13;
  v14 = *(v2 + v10 + 48);
  v18[2] = *(v2 + v10 + 32);
  v18[3] = v14;
  outlined init with copy of Radiosity.Specs(v18, v17);
  v15 = objc_allocWithZone(v8);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v9, v3, v18);
}

uint64_t specialized Radiosity.UIView.specs.setter(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  outlined init with copy of Radiosity.Specs(v14, v13);
  outlined init with copy of Radiosity.Specs(a1, v13);
  outlined destroy of Radiosity.Specs(v21);
  Radiosity.UIView.specs.didset(v14);
  return outlined destroy of Radiosity.Specs(v14);
}

id specialized Radiosity.View.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  dispatch thunk of _UIHostingView.rootView.setter();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v15[4] = v8[4];
  v15[5] = v9;
  v10 = v8[7];
  v15[6] = v8[6];
  v15[7] = v10;
  v11 = v8[1];
  v15[0] = *v8;
  v15[1] = v11;
  v12 = v8[3];
  v15[2] = v8[2];
  v15[3] = v12;
  outlined init with copy of Radiosity.Specs(v15, v14);
  specialized Radiosity.UIView.specs.setter(v15);
  outlined destroy of Radiosity.Specs(v15);
  return Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void specialized closure #1 in Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  Radiosity.UIView.updateUserInterfaceStyle(userInterfaceStyle:)(v2);
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI9RadiosityO5SpecsV6ShadowV8DrawModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.ViewModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radiosity.ViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.Specs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radiosity.Specs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.Specs.Shadow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radiosity.Specs.Shadow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.Specs.Shadow.DrawMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Radiosity.Specs.Shadow.DrawMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Radiosity.Specs.Shadow.DrawMode(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>> and conformance Radiosity.View<A>, &_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<RadiosityEnabledPreferenceKey> and conformance _PreferenceActionModifier<A>, &_s7SwiftUI25_PreferenceActionModifierVy09MusicCoreB0016RadiosityEnabledC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10039C9E4()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier()
{
  result = lazy protocol witness table cache variable for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier;
  if (!lazy protocol witness table cache variable for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier);
  }

  return result;
}

uint64_t type metadata completion function for Radiosity.View()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.View(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double storeEnumTagSinglePayload for Radiosity.View(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t type metadata accessor for CAFilter()
{
  result = lazy cache variable for type metadata for CAFilter;
  if (!lazy cache variable for type metadata for CAFilter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFilter);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for Reactions.StackView.Model.reaction : Reactions.StackView.Model@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Reactions.StackView.Model.reaction : Reactions.StackView.Model()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.reaction.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for Reactions.StackView.Model.count : Reactions.StackView.Model@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for Reactions.StackView.Model.count : Reactions.StackView.Model()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.count.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*Reactions.StackView.Model.count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for Reactions.StackView.Model.userImage : Reactions.StackView.Model@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for Reactions.StackView.Model.userImage : Reactions.StackView.Model(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.userImage.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIImageCSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIImageCSg_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$videoBounds.modify;
}

uint64_t Reactions.StackView.Model.isReacting.setter()
{
  return Reactions.StackView.Model.isReacting.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.videoBounds.modify;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
  Published.init(initialValue:)();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd_0);
  Published.init(initialValue:)();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
  Published.init(initialValue:)();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd_0);
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Reactions.StackView.Model@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model()
{
  type metadata accessor for Reactions.StackView.Model(0);
  lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type Reactions.StackView.Model and conformance Reactions.StackView.Model, type metadata accessor for Reactions.StackView.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Reactions.StackView.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type Reactions.StackView.Model and conformance Reactions.StackView.Model, type metadata accessor for Reactions.StackView.Model);

  return ObservedObject.projectedValue.getter();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type Reactions.StackView.Model and conformance Reactions.StackView.Model, type metadata accessor for Reactions.StackView.Model);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v10;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t Reactions.StackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd);
  __chkstk_darwin(v2 - 8);
  v99 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = (&v90 - v5);
  v6 = type metadata accessor for Reactions.StackView(0);
  v103 = *(v6 - 8);
  __chkstk_darwin(v6);
  v104 = v7;
  v105 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAIyAIyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeQ5StyleVyAOGAA6CircleVGG_AIyArTyAVyAA03AnyqU0VGAYGGtGGAA013_TraitWritingR0VyAA010TransitionX3KeyVGGGMd);
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v107 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v90 - v13;
  v98 = type metadata accessor for DynamicTypeSize();
  v15 = *(v98 - 8);
  __chkstk_darwin(v98);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BlendMode();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v20;
  v22 = __chkstk_darwin(v21);
  v23 = *(v19 + 104);
  v112 = &v90 - v24;
  v23(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v114;
  v27 = *(v1 + 16);
  if (v27 < v114)
  {
    v26 = *(v1 + 16);
  }

  v28 = __OFSUB__(v26, 1);
  v29 = v26 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v97 = v1;
    v95 = *(v1 + 48);
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    v32 = *(v1 + 40);
    KeyPath = v29;
    v92 = v17;
    v94 = v27;
    _s7SwiftUI11EnvironmentV12wrappedValuexvgAA15DynamicTypeSizeO_Tg5_0(v17);
    v110 = v19;
    v93 = *(v15 + 16);
    v33 = v17;
    v34 = v98;
    v93(v14, v33, v98);
    v111 = v18;
    v91 = *(v15 + 56);
    v91(v14, 0, 1, v34);
    v35 = UIContentSizeCategory.init(_:)();
    v36 = objc_opt_self();
    v37 = [v36 traitCollectionWithPreferredContentSizeCategory:v35];
    v38 = objc_opt_self();
    v39 = [v38 defaultMetrics];
    [v39 scaledValueForValue:v37 compatibleWithTraitCollection:v30];
    v41 = v40;

    v42 = v14;
    v43 = v14;
    v44 = v92;
    v93(v42, v92, v34);
    v45 = v110;
    v46 = v113;
    v91(v43, 0, 1, v34);
    v47 = v111;
    v48 = UIContentSizeCategory.init(_:)();
    v49 = [v36 traitCollectionWithPreferredContentSizeCategory:v48];
    v50 = [v38 defaultMetrics];
    [v50 scaledValueForValue:v49 compatibleWithTraitCollection:v32];
    v52 = v51;

    (*(v15 + 8))(v44, v34);
    v53 = v94;
    *&v117 = v94;
    *(&v117 + 1) = v41;
    *&v118 = v31;
    *(&v118 + 1) = v52;
    LODWORD(v49) = v95;
    v119 = v95;
    *v46 = static VerticalAlignment.center.getter();
    *(v46 + 8) = v31 - v41;
    *(v46 + 16) = 0;
    v93 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAIyASyASyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeU5StyleVyAWGAA6CircleVGG_ASyAZA0_yA2_yAA03AnyuY0VGA5_GGtGGAA013_TraitWritingV0VyAA18TransitionTraitKeyVGGGAUyAIyA7__ASyASyASyAA5GroupVyAA012_ConditionalO0VyASyAA010_AnimationD0VyAA4TextVGA19_GASyASyAA5ImageVAA011_ForegroundyV0VyAWGGAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGA43_GAYGA11_GASyASyASyASyASyASyA33_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyA5_GG09MusicCoreB006BorderdV033_F5ED3014321945F1E2BE58A044A15282LLVGA16_yAA14ZIndexTraitKeyVGGA19_GAYGSgtGGtGGMd) + 44));
    if (v49)
    {
      v54 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v54 = v53;
    }

    v98 = v54;
    *&v114 = 0;
    *(&v114 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v55 = v97;
    v56 = v105;
    outlined init with copy of Reactions.StackView(v97, v105);
    v57 = v102;
    v58 = v112;
    (*(v45 + 16))(v102, v112, v47);
    v59 = (*(v103 + 80) + 49) & ~*(v103 + 80);
    v60 = (v104 + *(v45 + 80) + v59) & ~*(v45 + 80);
    v61 = swift_allocObject();
    v62 = v118;
    *(v61 + 16) = v117;
    *(v61 + 32) = v62;
    *(v61 + 48) = v119;
    outlined init with take of Reactions.StackView(v56, v61 + v59);
    (*(v45 + 32))(v61 + v60, v57, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySnySiGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMd);
    lazy protocol witness table accessor for type ReversedCollection<Range<Int>> and conformance <> ReversedCollection<A>();
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v63 = v106;
    ForEach<>.init(_:id:content:)();
    v64 = static Alignment.center.getter();
    v65 = v100;
    *v100 = v64;
    *(v65 + 8) = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeO5StyleVyAMGAA6CircleVGG_AKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA010_AnimationD0VyAA4TextVGAA013_TraitWritingP0VyAA010TransitionY3KeyVGGAKyAKyAA5ImageVAA011_ForegroundsP0VyAMGGAA015_EnvironmentKeyzP0VyAA4FontVSgGGGGA24_GAOGARyATyAA03AnyoS0VGAWGGAKyAKyAKyAKyAKyAKyA14_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyAWGG09MusicCoreB006BorderdP033_F5ED3014321945F1E2BE58A044A15282LLVGA8_yAA06ZIndexY3KeyVGGA11_GAOGSgtGGMd);
    closure #2 in closure #1 in Reactions.StackView.body.getter(&v117, v55, v58, v65 + *(v67 + 44));
    v69 = v108;
    v68 = v109;
    v70 = *(v108 + 16);
    v71 = v107;
    v70(v107, v63, v109);
    v72 = v99;
    outlined init with copy of TaskPriority?(v65, v99, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd);
    v73 = v93;
    *v93 = 0;
    *(v73 + 8) = 1;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAKyAKyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeR5StyleVyAQGAA6CircleVGG_AKyAtVyAXyAA03AnyrV0VGA_GGtGGAA013_TraitWritingS0VyAA010TransitionY3KeyVGGGAMyAOyA1__AKyAKyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA010_AnimationL0VyAA4TextVGA13_GAKyAKyAA5ImageVAA011_ForegroundvS0VyAQGGAA015_EnvironmentKeyzS0VyAA4FontVSgGGGGA37_GASGA5_GAKyAKyAKyAKyAKyAKyA27_AA012_AspectRatioO0VGAA20_MaskAlignmentEffectVyA_GG09MusicCoreB006BorderlS033_F5ED3014321945F1E2BE58A044A15282LLVGA10_yAA06ZIndexY3KeyVGGA13_GASGSgtGGtMd);
    v70(v73 + *(v74 + 48), v71, v68);
    outlined init with copy of TaskPriority?(v72, v73 + *(v74 + 64), &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd);
    outlined destroy of TaskPriority?(v65, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd);
    v75 = *(v69 + 8);
    v75(v63, v68);
    outlined destroy of TaskPriority?(v72, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd);
    v75(v71, v68);
    result = v98 + 1;
    if (!__OFADD__(v98, 1))
    {
      Int.seconds.getter(result);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiACyAA6ZStackVyAGyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeS5StyleVyASGAA6CircleVGG_ACyAvXyAZyAA03AnysW0VGA1_GGtGGAA013_TraitWritingT0VyAA010TransitionZ3KeyVGGGAQyAGyA3__ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA010_AnimationG0VyAA4TextVGA15_GACyACyAA5ImageVAA011_ForegroundwT0VyASGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGGGA39_GAUGA7_GACyACyACyACyACyACyA29_AA012_AspectRatioP0VGAA20_MaskAlignmentEffectVyA1_GG09MusicCoreB006BordergT033_F5ED3014321945F1E2BE58A044A15282LLVGA12_yAA06ZIndexZ3KeyVGGA15_GAUGSgtGGtGGAUGMd);
      v77 = v113;
      v78 = (v113 + *(v76 + 36));
      v79 = v115;
      *v78 = v114;
      v78[1] = v79;
      v78[2] = v116;
      v80 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiACyAA6ZStackVyAGyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeS5StyleVyASGAA6CircleVGG_ACyAvXyAZyAA03AnysW0VGA1_GGtGGAA013_TraitWritingT0VyAA010TransitionZ3KeyVGGGAQyAGyA3__ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA010_AnimationG0VyAA4TextVGA15_GACyACyAA5ImageVAA011_ForegroundwT0VyASGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGGGA39_GAUGA7_GACyACyACyACyACyACyA29_AA012_AspectRatioP0VGAA20_MaskAlignmentEffectVyA1_GG09MusicCoreB006BordergT033_F5ED3014321945F1E2BE58A044A15282LLVGA12_yAA06ZIndexZ3KeyVGGA15_GAUGSgtGGtGGAUGAA08_PaddingP0VGMd) + 36);
      *v89 = v80;
      *(v89 + 8) = v82;
      *(v89 + 16) = v84;
      *(v89 + 24) = v86;
      *(v89 + 32) = v88;
      *(v89 + 40) = 0;
      return (*(v110 + 8))(v112, v111);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v5 = type metadata accessor for ScaleTransition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10TransitionPAAE9animationyQrAA9AnimationVSgFQOyAA05ScaleC0V_Qo_Md);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  *a3 = static Alignment.center.getter();
  a3[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeO5StyleVyAMGAA6CircleVGG_AKyApRyATyAA03AnyoS0VGAWGGtGGMd);
  closure #1 in closure #1 in closure #1 in Reactions.StackView.body.getter(a1, v22, a3 + *(v17 + 44));
  static UnitPoint.center.getter();
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v18 = lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, &type metadata accessor for ScaleTransition);
  Transition.animation(_:)();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v12, v15, v9);
  v23 = v5;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = AnyTransition.init<A>(_:)();
  (*(v10 + 8))(v15, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMd);
  *(a3 + *(result + 36)) = v19;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v46 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v40 = v47[1];
  LODWORD(v39) = v48;
  v15 = v49;
  v38 = v50;
  v37 = v51;
  v36 = v52;
  v16 = static Color.white.getter();
  v17 = &v14[*(v10 + 44)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd) + 36);
  v19 = enum case for BlendMode.destinationOut(_:);
  v20 = type metadata accessor for BlendMode();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA5ColorVGAA6CircleVGMd) + 56)) = 256;
  v22 = v40;
  *v14 = v41;
  *(v14 + 1) = v22;
  v14[16] = v39;
  *(v14 + 3) = v15;
  v14[32] = v38;
  v23 = v36;
  *(v14 + 5) = v37;
  *(v14 + 6) = v23;
  v41 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = v53;
  LOBYTE(v15) = v54;
  v25 = v55;
  LOBYTE(v19) = v56;
  v40 = v57;
  v39 = v58;
  Reactions.StackView.backgroundColor.getter(v47);
  v26 = v47[0];
  v27 = &v8[*(v4 + 44)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA03AnyeF0VGMd);
  (*(v21 + 16))(v27 + *(v28 + 36), v44, v20);
  *v27 = v26;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA03AnyeI0VGAA6CircleVGMd) + 56)) = 256;
  v29 = v42;
  *v8 = v41;
  *(v8 + 1) = v24;
  v8[16] = v15;
  *(v8 + 3) = v25;
  v8[32] = v19;
  v30 = v39;
  *(v8 + 5) = v40;
  *(v8 + 6) = v30;
  outlined init with copy of TaskPriority?(v14, v29, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v31 = v45;
  outlined init with copy of TaskPriority?(v8, v45, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd);
  v32 = v46;
  outlined init with copy of TaskPriority?(v29, v46, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGG_ACyAhJyALyAA03AnyjN0VGAOGGtMd);
  outlined init with copy of TaskPriority?(v31, v32 + *(v33 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd);
  outlined destroy of TaskPriority?(v8, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd);
  outlined destroy of TaskPriority?(v14, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  outlined destroy of TaskPriority?(v31, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd);
  return outlined destroy of TaskPriority?(v29, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
}

uint64_t Reactions.StackView.backgroundColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ColorSchemeO_AA0cD8ContrastOtMd);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v22 = &v21 - v5;
  v6 = type metadata accessor for ColorSchemeContrast();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  specialized Environment.wrappedValue.getter(v13);
  specialized Environment.wrappedValue.getter(v9);
  v14 = *(v4 + 56);
  v15 = v11;
  v16 = v22;
  (*(v15 + 32))(v22, v13, v10);
  (*(v7 + 32))(v16 + v14, v9, v6);
  v17 = (*(v15 + 88))(v16, v10);
  if (v17 == enum case for ColorScheme.light(_:))
  {
    if ((*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
    {
      v18 = [objc_opt_self() secondarySystemFillColor];
      v24 = Color.init(_:)();
LABEL_7:
      *v23 = AnyShapeStyle.init<A>(_:)();
      return (*(v15 + 8))(v16, v10);
    }
  }

  else if (v17 == enum case for ColorScheme.dark(_:) && (*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v24) = static HierarchicalShapeStyle.quinary.getter();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v24) = static HierarchicalShapeStyle.quaternary.getter();
  }

  else
  {
    v20 = [objc_opt_self() secondarySystemFillColor];
    v24 = Color.init(_:)();
  }

  *v23 = AnyShapeStyle.init<A>(_:)();
  return outlined destroy of TaskPriority?(v16, &_s7SwiftUI11ColorSchemeO_AA0cD8ContrastOtMd);
}

uint64_t closure #2 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v91 = a3;
  v85 = a1;
  v94 = a4;
  v81 = type metadata accessor for ScaleTransition();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10TransitionPAAE9animationyQrAA9AnimationVSgFQOyAA05ScaleC0V_Qo_Md);
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  __chkstk_darwin(v12 - 8);
  v88 = &v71 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd) - 8;
  __chkstk_darwin(v89);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v95 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v92 = static Color.clear.getter();
  v24 = *(a1 + 8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = v123;
  LODWORD(v87) = v124;
  v86 = v125;
  LODWORD(v84) = v126;
  v82 = v128;
  *&v83 = v127;
  v26 = static Color.white.getter();
  v27 = &v23[*(v19 + 44)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd) + 36);
  v29 = enum case for BlendMode.destinationOut(_:);
  v30 = type metadata accessor for BlendMode();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA5ColorVGAA6CircleVGMd) + 56)) = 256;
  *v23 = v92;
  *(v23 + 1) = v25;
  v23[16] = v87;
  *(v23 + 3) = v86;
  v23[32] = v84;
  v32 = v82;
  *(v23 + 5) = v83;
  *(v23 + 6) = v32;
  v92 = v23;
  closure #1 in closure #2 in closure #1 in Reactions.StackView.body.getter(&v129);
  v86 = *(&v131 + 1);
  v87 = v131;
  LOBYTE(v27) = v132;
  v33 = type metadata accessor for Font.Design();
  v83 = v130;
  v84 = v129;
  v34 = v88;
  (*(*(v33 - 8) + 56))(v88, 1, 1, v33);
  v35 = static Font.system(size:weight:design:)();
  outlined destroy of TaskPriority?(v34, &_s7SwiftUI4FontV6DesignOSgMd);
  KeyPath = swift_getKeyPath();
  LOBYTE(v129) = v27;
  static Alignment.center.getter();
  v88 = v24;
  _FrameLayout.init(width:height:alignment:)();
  Reactions.StackView.backgroundColor.getter(&v129);
  v37 = v129;
  v38 = &v17[*(v89 + 44)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA03AnyeF0VGMd);
  (*(v31 + 16))(&v38[*(v39 + 36)], v91, v30);
  *v38 = v37;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA03AnyeI0VGAA6CircleVGMd) + 56)] = 256;
  v40 = v83;
  *v17 = v84;
  *(v17 + 1) = v40;
  v41 = v86;
  *(v17 + 4) = v87;
  *(v17 + 5) = v41;
  v17[48] = v27;
  *(v17 + 7) = KeyPath;
  *(v17 + 8) = v35;
  v42 = v140;
  *(v17 + 72) = v139;
  *(v17 + 88) = v42;
  v43 = v17;
  *(v17 + 104) = v141;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v44 = v129;
  if (!v129)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v129 != 1)
  {

LABEL_5:
    _s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgWOi0_(&v129);
    goto LABEL_6;
  }

  v45 = v44;
  Image.init(uiImage:)();
  v47 = v72;
  v46 = v73;
  v48 = v74;
  (*(v73 + 104))(v72, enum case for Image.ResizingMode.stretch(_:), v74);
  v91 = Image.resizable(capInsets:resizingMode:)();

  (*(v46 + 8))(v47, v48);
  v49 = static Alignment.center.getter();
  v89 = v50;
  v90 = v49;
  static Color.black.getter();
  v87 = Color.opacity(_:)();

  static UnitPoint.center.getter();
  v51 = v75;
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v52 = lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, &type metadata accessor for ScaleTransition);
  v53 = v77;
  v54 = v81;
  Transition.animation(_:)();

  (*(v78 + 8))(v51, v54);
  v55 = v79;
  v56 = v80;
  (*(v79 + 16))(v76, v53, v80);
  *&v129 = v54;
  *(&v129 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = AnyTransition.init<A>(_:)();
  (*(v55 + 8))(v53, v56);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *(v122 + 8) = v106;
  v116 = v91;
  LOWORD(v117) = 257;
  *(&v117 + 1) = v90;
  *&v118 = v89;
  *(&v118 + 1) = v87;
  *&v119 = 0x3FE0000000000000;
  BYTE8(v119) = 0;
  v120 = 0uLL;
  LOBYTE(v121) = 2;
  *(&v121 + 1) = 0x3FF0000000000000;
  *&v122[0] = v57;
  *(&v122[1] + 8) = v107;
  *(&v122[2] + 8) = v108;
  v58.location = &v116;
  CFRange.init(_:)(v58);
  v135 = v122[0];
  v136 = v122[1];
  v137 = v122[2];
  v138 = *&v122[3];
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v134 = v121;
  v129 = v116;
  v130 = v117;
LABEL_6:
  v59 = v92;
  v60 = v95;
  outlined init with copy of TaskPriority?(v92, v95, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v61 = v93;
  outlined init with copy of TaskPriority?(v43, v93, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd);
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v105 = v138;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v101 = v134;
  v96 = v129;
  v97 = v130;
  v62 = v60;
  v63 = v94;
  outlined init with copy of TaskPriority?(v62, v94, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGG_ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA013_TraitWritingK0VyAA010TransitionU3KeyVGGACyACyAA5ImageVAA011_ForegroundnK0VyAEGGAA012_EnvironmentxvK0VyAA4FontVSgGGGGA16_GAGGAJyALyAA03AnyjN0VGAOGGACyACyACyACyACyACyA6_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyAOGG09MusicCoreB006BordersK033_F5ED3014321945F1E2BE58A044A15282LLVGA0_yAA06ZIndexuX0VGGA3_GAGGSgtMd);
  outlined init with copy of TaskPriority?(v61, v63 + *(v64 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd);
  v65 = v63 + *(v64 + 64);
  v112 = v102;
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v110 = v100;
  v111 = v101;
  v108 = v98;
  v109 = v99;
  v106 = v96;
  v107 = v97;
  outlined init with copy of TaskPriority?(&v106, &v116, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgMd);
  outlined destroy of TaskPriority?(v43, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd);
  outlined destroy of TaskPriority?(v59, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
  v66 = v113;
  *(v65 + 96) = v112;
  *(v65 + 112) = v66;
  *(v65 + 128) = v114;
  *(v65 + 144) = v115;
  v67 = v109;
  *(v65 + 32) = v108;
  *(v65 + 48) = v67;
  v68 = v111;
  *(v65 + 64) = v110;
  *(v65 + 80) = v68;
  v69 = v107;
  *v65 = v106;
  *(v65 + 16) = v69;
  v122[0] = v102;
  v122[1] = v103;
  v122[2] = v104;
  *&v122[3] = v105;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v121 = v101;
  v116 = v96;
  v117 = v97;
  outlined destroy of TaskPriority?(&v116, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgMd);
  outlined destroy of TaskPriority?(v61, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd);
  return outlined destroy of TaskPriority?(v95, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd);
}

double closure #1 in closure #2 in closure #1 in Reactions.StackView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScaleTransition();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v35 + 1))
  {
    _sS2SSysWl_0();
    v9 = Text.init<A>(_:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = static Animation.easeInOut(duration:)();
    static UnitPoint.center.getter();
    ScaleTransition.init(_:anchor:)();
    (*(v3 + 16))(v5, v8, v2);
    lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, &type metadata accessor for ScaleTransition);
    v17 = AnyTransition.init<A>(_:)();
    (*(v3 + 8))(v8, v2);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = Image.init(_internalSystemName:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v35 == 1)
    {
      v19 = static Color.primary.getter();
    }

    else
    {
      v19 = static Color.accentColor.getter();
    }

    v20 = v19;
    v21 = static Font.callout.getter();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionH3KeyVGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingH0VyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<_AnimationView<Text>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t outlined init with copy of Reactions.StackView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A1C0C()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for BlendMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t outlined init with take of Reactions.StackView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for BlendMode() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #1 in closure #1 in Reactions.StackView.body.getter(v1 + v4, v7, a1);
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<Range<Int>> and conformance <> ReversedCollection<A>()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<Range<Int>> and conformance <> ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<Range<Int>> and conformance <> ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySnySiGGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<Range<Int>> and conformance <> ReversedCollection<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd_0);
    _sS2iSZsWl_0();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAlNyAPyAA03AnymQ0VGASGGtGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reactions.StackView.Specs.SizingMode and conformance Reactions.StackView.Specs.SizingMode()
{
  result = lazy protocol witness table cache variable for type Reactions.StackView.Specs.SizingMode and conformance Reactions.StackView.Specs.SizingMode;
  if (!lazy protocol witness table cache variable for type Reactions.StackView.Specs.SizingMode and conformance Reactions.StackView.Specs.SizingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Reactions.StackView.Specs.SizingMode and conformance Reactions.StackView.Specs.SizingMode);
  }

  return result;
}

uint64_t sub_1003A22F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}