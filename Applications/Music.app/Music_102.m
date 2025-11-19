uint64_t sub_100B15404(void *a1)
{
  v1 = [a1 children];
  sub_100009F78(0, &qword_1011B7C30);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_100B154F8;
}

void sub_100B154F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_10004ADE8(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    sub_10004ADFC(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

void *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  sub_100009F78(0, &qword_1011B15B8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      sub_100B15734(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void sub_100B15734(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  sub_10010FC20(&qword_1011B5630);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6C0;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_100009F78(0, &qword_1011B15B8);
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v17 = v16;

      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6C0;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_100B15B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3.value = 1;
  v4 = _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(v3, sub_100B1776C, v2);

  return v4;
}

uint64_t sub_100B15C1C(uint64_t a1)
{
  sub_100009F78(0, &qword_1011B15A8);
  sub_10010FC20(&qword_1011B5630);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = sub_100B182E4;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100B127D0;
  aBlock[3] = &unk_1010E2758;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(preferredElementSize + 32) = v6;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v14, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_1011B7C30);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  v2 = sub_10010FC20(&qword_1011B15D0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIButton.configuration.getter();
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    static UIButton.Configuration.plain()();
    if (v12(v7, 1, v8) != 1)
    {
      sub_1000095E8(v7, &qword_1011B15D0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  a1(v11);
  (*(v9 + 16))(v5, v11, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  UIButton.configuration.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v9 = qword_10121B340;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 keyCommandWithInput:v11 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14];

  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  v15 = qword_1011B15A0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100B181D4;
  *(v16 + 24) = v8;
  v19[1] = sub_100031C9C;
  v19[2] = v16;

  sub_10010FC20(&qword_1011B15D8);
  v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v13, v15, v17, 3);

  swift_unknownObjectRelease();

  return v13;
}

void sub_100B165DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActive:1];
    v2 = [v1 searchBar];
    [v2 becomeFirstResponder];

    v3 = UISearchController.searchText.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = [v1 searchBar];
        v9 = [v8 searchTextField];

        [v9 selectAll:v1];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    static CharacterSet.newlines.getter();
    sub_1000098E0();
    v11 = StringProtocol.trimmingCharacters(in:)();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = String._bridgeToObjectiveC()();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14];

  v15 = qword_1011B0520;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1011B15A0;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  sub_10010FC20(&qword_1011B15D8);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  v6 = qword_1011B15A0;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_10010FC20(&qword_1011B15D8);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_100020438(a1);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011B15A0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10010FC20(&qword_1011B15D8);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_100031BE4;
    }
  }

  else
  {
    sub_1000095E8(v5, &qword_1011B7C70);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return sub_100B16CC0;
}

void sub_100B16CC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_100030444(**a1);
    if (qword_1011B0520 != -1)
    {
      swift_once();
    }

    v5 = qword_1011B15A0;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v6;

      sub_10010FC20(&qword_1011B15D8);
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_100020438(v4);
    v11 = *v2;
  }

  else
  {
    if (qword_1011B0520 != -1)
    {
      swift_once();
    }

    v8 = qword_1011B15A0;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v9;

      sub_10010FC20(&qword_1011B15D8);
      v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
  }

  sub_100020438(v11);

  free(v2);
}

uint64_t sub_100B16EA8()
{
  result = swift_slowAlloc();
  qword_1011B15A0 = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void sub_100B16F18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v4 = v3;
    v3(v5);

    sub_100020438(v4);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  sub_10010FC20(&qword_1011B15E0);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_100EBDC20;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = sub_100B17774(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011B15E8);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10010FC20(&qword_1011B15F0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10010FC20(&qword_1011B15F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10010FC20(&qword_1011B1600);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_100B1789C(v8);
  swift_setDeallocating();
  sub_1000095E8(v8 + 32, &qword_1011B1608);
  _s3__C13AttributeNameVMa_0(0);
  sub_100B181DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100B18234;
}

uint64_t sub_100B17268(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10010FC20(&unk_1011B7C20);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for UIPointerEffect();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (a4)
  {
    v22 = a4;
    v39.origin.x = v15;
    v39.origin.y = v17;
    v39.size.width = v19;
    v39.size.height = v21;
    Width = CGRectGetWidth(v39);
    [v22 frame];
    v25 = Width - v24;
    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    Height = CGRectGetHeight(v40);
    [v22 frame];
    v28 = v27;

    v15 = sub_100058728(v15, v17, v19, v21, (Height - v28) * 0.5, v25 * 0.5);
    v17 = v29;
    v19 = v30;
    v21 = v31;
  }

  (*(v11 + 16))(v13, a2, v10);
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v32 = CGRectGetWidth(v41);
  v42.origin.x = v15;
  v42.origin.y = v17;
  v42.size.width = v19;
  v42.size.height = v21;
  v33 = CGRectGetHeight(v42);
  if (v33 < v32)
  {
    v32 = v33;
  }

  sub_100009F78(0, &qword_1011B1628);
  *v9 = v15;
  *(v9 + 1) = v17;
  *(v9 + 2) = v19;
  *(v9 + 3) = v21;
  *(v9 + 4) = v32 * 0.5;
  v34 = enum case for UIPointerShape.roundedRect(_:);
  v35 = type metadata accessor for UIPointerShape();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v9, v34, v35);
  (*(v36 + 56))(v9, 0, 1, v35);
  return UIPointerStyle.init(effect:shape:)();
}

uint64_t sub_100B1755C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100B176EC();
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011B15C0);
            v9 = sub_100AA5424(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_1011B15B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100B176EC()
{
  result = qword_1011B15C8;
  if (!qword_1011B15C8)
  {
    sub_1001109D0(&qword_1011B15C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B15C8);
  }

  return result;
}

unint64_t sub_100B17774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1638);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011B15E8);
      v5 = v11;
      result = sub_100BB440C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100B1789C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1630);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011B1608);
      v5 = v11;
      result = sub_100BB440C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100B179C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1610);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100BB2BEC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Class _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(UIMenuIdentifier_optional a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &aBlock[-1] - v12;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v11, v13, v7);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v14 = qword_10121B340;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  sub_100009F78(0, &qword_1011B15B8);
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  sub_10010FC20(&qword_1011B5630);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6C0;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_100B18314;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100B127D0;
  aBlock[3] = &unk_1010E2708;
  v23 = _Block_copy(aBlock);

  v24 = [v21 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v20 + 32) = v24;
  sub_100009F78(0, &qword_1011B15A8);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v35, a1, 0xFFFFFFFFFFFFFFFFLL, v20, v32).super.super.isa;
  v27 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  v30 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v15, v17, v19, 0, isa, 1, v28, v29);
  [(objc_class *)v30 setPreferredMenuElementOrder:2];
  return v30;
}

id _sSo12UIKeyCommandC11MusicCoreUIE07findKeyB0yAByABcFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v12 = qword_10121B340;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 keyCommandWithInput:v14 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v16 = v15;
  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17];

  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  v18 = qword_1011B15A0;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v22[1] = sub_100875A24;
  v22[2] = v19;

  sub_10010FC20(&qword_1011B15D8);
  v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v16, v18, v20, 3);
  swift_unknownObjectRelease();

  return v16;
}

unint64_t sub_100B181DC()
{
  result = qword_1011B0BC0;
  if (!qword_1011B0BC0)
  {
    _s3__C13AttributeNameVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B0BC0);
  }

  return result;
}

uint64_t sub_100B18258(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void sub_100B183BC()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = sub_1007F132C;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10003640C;
  v5[3] = &unk_1010E27F8;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_10121B5E8 = v3 & 1;
  qword_10121B5F0 = v4;
}

uint64_t static UIView.Border.artwork.getter()
{
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_10121B5F0;
  return v0;
}

void sub_100B1851C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B1650 = v1 == 6;
}

uint64_t sub_100B18580()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.extraSmall);
  sub_1000060E4(v0, static UIView.Corner.extraSmall);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B1866C()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.small);
  sub_1000060E4(v0, static UIView.Corner.small);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B18734()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.medium);
  sub_1000060E4(v0, static UIView.Corner.medium);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B187FC()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.large);
  sub_1000060E4(v0, static UIView.Corner.large);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B188E8()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.extraLarge);
  sub_1000060E4(v0, static UIView.Corner.extraLarge);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B189B0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for UIView.Corner();

  return sub_1000060E4(v3, a2);
}

uint64_t sub_100B18A28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UIView.Corner();
  v6 = sub_1000060E4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (qword_1011B0560 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id sub_100B18BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_100B11BFC();
  if (v7 == 2)
  {
    v8 = 250;
    v9 = 45;
    v10 = 72;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

void *HI.Color.prominentBackgroundColor.unsafeMutableAddressor()
{
  if (qword_1011B0568 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t sub_100B18D20@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_100B18D4C@<D0>(double *a1@<X8>)
{
  result = dbl_100F009C0[*v1];
  *a1 = result;
  return result;
}

Swift::Int sub_100B18E34(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F00980[a2]);
  return Hasher._finalize()();
}

double sub_100B18E84(unsigned __int8 a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_100F00940[a1];
      }

      v4 = a1;
      result = 3.0;
      v5 = 4.0;
      if (a1 != 2)
      {
        v5 = 2.0;
      }

      v6 = 1.0;
      if (a2)
      {
        v6 = 3.0;
      }

      if (!a1)
      {
        result = v6;
      }

      goto LABEL_49;
    }

    if (!a3)
    {
      return dbl_100F00920[a1];
    }

    v4 = a1;
    result = 1.0;
    v5 = 3.0;
    v11 = 4.0;
    if ((a2 & 1) == 0)
    {
      v11 = 1.0;
    }

    if (a1 != 2)
    {
      v5 = v11;
    }

    v12 = 2.0;
LABEL_47:
    if (v4)
    {
      result = v12;
    }

LABEL_49:
    if (v4 > 1)
    {
      return v5;
    }

    return result;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      return dbl_100F00960[a1];
    }

    v4 = a1;
    result = 3.0;
    v5 = 7.0;
    v13 = 5.0;
    if (a2)
    {
      v13 = 9.0;
    }

    if (a1 != 2)
    {
      v5 = v13;
    }

    v12 = 6.0;
    goto LABEL_47;
  }

  result = 7.0;
  v7 = 8.0;
  v8 = 6.0;
  if (a2)
  {
    v8 = 28.0;
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  v9 = 4.0;
  if (a2)
  {
    v9 = 7.0;
  }

  if (a1)
  {
    v9 = 7.0;
  }

  if (a1 <= 1u)
  {
    v7 = v9;
  }

  v10 = 5.0;
  if (a2)
  {
    result = 15.0;
  }

  if (a1 == 2)
  {
    result = 12.0;
  }

  if (a1)
  {
    v10 = 10.0;
  }

  if (a1 <= 1u)
  {
    result = v10;
  }

  if (a3 == 6)
  {
    return v7;
  }

  return result;
}

void HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a5 <= 374.0)
  {
    v13 = 0;
    v10 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v10 = 12.0;
  v11 = 20.0;
  if (a5 <= 500.0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 <= 726.0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v10 = 20.0;
  if (a5 <= 981.0)
  {
    v13 = 3;
LABEL_18:
    v11 = 34.0;
    goto LABEL_19;
  }

  if (a5 <= 1194.0)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (a5 <= 2500.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (a5 > 1500.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 5;
  }

  v11 = 34.0;
LABEL_19:
  v14 = a5 - (v11 + v11);
  if (a3)
  {
    v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v15 scaledValueForValue:1.0];
    v17 = v16;

    v18 = round(sub_100B18E84(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = sub_100B18E84(a1, a2 & 1, v13);
  }

  v19 = 1.0;
  if (v13 <= 4)
  {
    v20 = 3.0;
    if (((a1 == 3) & a2) == 0)
    {
      v20 = 1.0;
    }

    v22 = 2.0;
    if (((a1 == 0) & a2) == 0)
    {
      v22 = 1.0;
    }

    if (v13 == 2)
    {
      v19 = v22;
    }

    v21 = v13 == 1;
    goto LABEL_40;
  }

  if (v13 == 5)
  {
    v23 = ((a1 == 3) & a2) == 0;
  }

  else
  {
    if (v13 != 6)
    {
      v20 = 1.0;
      if (((a1 == 3) & a2) != 0)
      {
        v20 = 2.0;
      }

      v21 = v13 == 7;
LABEL_40:
      if (v21)
      {
        v19 = v20;
      }

      goto LABEL_46;
    }

    if (a1)
    {
      v20 = 5.0;
      if ((a2 & 1) == 0)
      {
        v20 = 1.0;
      }

      v21 = a1 == 3;
      goto LABEL_40;
    }

    v23 = (a2 & 1) == 0;
  }

  if (!v23)
  {
    v19 = 2.0;
  }

LABEL_46:
  v24 = (v14 - v10 * (v18 + -1.0)) / v18 * v19;
  v25 = v19 + -1.0;
  if (v25 > 0.0)
  {
    v24 = v24 + v10 * v25;
  }

  v26 = v18 == 1.0 || v24 > 300.0;
  if ((a3 & 1) == 0)
  {
    v26 = 0;
  }

  *a4 = a5;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 25) = a1;
  *(a4 + 26) = a2 & 1;
  *(a4 + 32) = v14;
  *(a4 + 40) = v18;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
}

void HI.Grid.Metrics.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(qword_100F00980[*(v0 + 24)]);
  Hasher._combine(_:)(*(v0 + 25));
  Hasher._combine(_:)(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100B19484()
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B194C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (qword_1011B0570 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double sub_100B1966C()
{
  if (qword_1011B0570 != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_10121B690 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (qword_1011B0578 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (qword_1011B0578 != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1478);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_100B19D2C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100B19D9C(v4);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v8, enum case for DynamicTypeSize.accessibility1(_:), v5);
    sub_100B19E04();
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if ((v12 & 1) == 0)
    {
      return 924.0;
    }
  }

  return 784.0;
}

uint64_t *HI.BottomPlayer.buttonSpacing.unsafeMutableAddressor()
{
  if (qword_1011B0580 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (qword_1011B0588 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double sub_100B19AB0(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 > 3)
  {
    if (*(a2 + 24) > 5u)
    {
      if (v3 == 6)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) > 1u)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == *(a2 + 25) && ((*(a1 + 26) ^ *(a2 + 26)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return (*(a1 + 56) ^ *(a2 + 56) ^ 1) & 1;
  }

  return 0;
}

uint64_t _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 500.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  if (a1 == 1194.0)
  {
    return 4;
  }

  if (a1 == 2501.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2500.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1500.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B19D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B19D9C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100B19E04()
{
  result = qword_1011B1658;
  if (!qword_1011B1658)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1658);
  }

  return result;
}

unint64_t sub_100B19E8C()
{
  result = qword_1011B1670;
  if (!qword_1011B1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1670);
  }

  return result;
}

unint64_t sub_100B19F14()
{
  result = qword_1011B1688;
  if (!qword_1011B1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1688);
  }

  return result;
}

unint64_t sub_100B19F6C()
{
  result = qword_1011B1690;
  if (!qword_1011B1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1690);
  }

  return result;
}

__n128 sub_100B1A000(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100B1A01C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 26);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100B1A070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 1;
    }
  }

  return result;
}

double sub_100B1A150(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == 6)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == 6)
    {
      return 512.0;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        return 512.0;
      }

      goto LABEL_9;
    }

    result = 712.0;
    if (a3 & 1 | (*&a1 <= 1194.0))
    {
      return 540.0;
    }
  }

  return result;
}

double static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = sub_100B1A150(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (qword_1011B0590 != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&qword_10121B6A8 + *&qword_10121B6A8 > v11)
    {
      return v11 - (*&qword_10121B6A8 + *&qword_10121B6A8);
    }
  }

  return v8;
}

unint64_t sub_100B1A3F4()
{
  result = qword_1011B1698;
  if (!qword_1011B1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1698);
  }

  return result;
}

uint64_t sub_100B1A46C()
{
  _StringGuts.grow(_:)(42);

  v0._countAndFlagsBits = Song.title.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x64692E676E6F7320;
  v1._object = 0xE90000000000003DLL;
  String.append(_:)(v1);
  Song.id.getter();
  v2 = MusicItemID.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._object = 0x8000000100E651A0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  Song.catalogID.getter();
  sub_10010FC20(&qword_1011B1780);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = type metadata accessor for URL();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = type metadata accessor for String.Encoding();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = type metadata accessor for Song();
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(sub_100B1A80C, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011B16C8);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100B1D508, 0, 0);
}

uint64_t sub_100B1A80C()
{
  v40 = v0;
  if (Song.hasLyrics.getter() & 1) != 0 || (Song.hasCustomLyrics.getter())
  {
    sub_10010FC20(&qword_1011B5630);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_1011B16A8);
    *(v1 + 32) = static PartialMusicProperty<A>.customLyrics.getter();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = sub_100B23174();
    *v2 = v0;
    v2[1] = sub_100B1AC84;
    v4 = v0[88];
    v5 = v0[78];

    return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Song, &protocol witness table for Song, v3);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[72];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[65];
    v13 = v0[64];
    v14 = Logger.lyrics.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v14, v11);
    (*(v7 + 16))(v6, v13, v8);
    v15 = v12;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[83];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[72];
    v23 = v0[70];
    v24 = v0[69];
    if (v18)
    {
      v38 = v0[72];
      v25 = v0[65];
      v37 = v0[69];
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v0[57] = v25;
      v27 = String.init<A>(describing:)();
      v29 = sub_100010744(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = sub_100B1A46C();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = sub_100010744(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    sub_100B23120();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_100B1AC84()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_100B1C4C8;
  }

  else
  {

    v2 = sub_100B1ADA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B1ADA0()
{
  v139 = v0;
  v1 = Song.customLyrics.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (String.trim()(), v9 = sub_100B1CE8C(), , (v9 & 1) != 0) && (v10 = *(v0 + 616), v11 = *(v0 + 608), v12 = *(v0 + 600), static String.Encoding.utf8.getter(), v13 = String.data(using:allowLossyConversion:)(), v15 = v14, *(v0 + 736) = v13, *(v0 + 744) = v14, (*(v11 + 8))(v10, v12), v15 >> 60 != 15))
      {

        v115 = objc_allocWithZone(MSVLyricsTTMLParser);
        sub_10002BC44(v13, v15);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v117 = [v115 initWithTTMLData:isa];
        *(v0 + 752) = v117;

        sub_100029CA4(v13, v15);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_100B1BCA0;
        v118 = swift_continuation_init();
        *(v0 + 392) = sub_10010FC20(&qword_1011B16C0);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_100B1CFE8;
        *(v0 + 360) = &unk_1010E2BE0;
        *(v0 + 368) = v118;
        [v117 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v16 = *(v0 + 8);

        return v16(v3, v4, 0);
      }
    }
  }

  if ((Song.hasLyrics.getter() & 1) == 0)
  {
    v53 = *(v0 + 704);
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 632);
    v57 = *(v0 + 624);
    v58 = *(v0 + 592);
    v59 = *(v0 + 560);
    v60 = *(v0 + 552);
    v132 = *(v0 + 680);
    v136 = *(v0 + 520);
    v61 = *(v0 + 512);
    v62 = Logger.lyrics.unsafeMutableAddressor();
    (*(v59 + 16))(v58, v62, v60);
    v63 = *(v56 + 16);
    v63(v54, v61, v57);
    v63(v55, v53, v57);
    v63(v132, v61, v57);
    v64 = v136;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 696);
    v69 = *(v0 + 688);
    v137 = *(v0 + 680);
    v70 = *(v0 + 632);
    v71 = *(v0 + 624);
    v72 = *(v0 + 592);
    v73 = *(v0 + 560);
    v74 = *(v0 + 552);
    if (v67)
    {
      v133 = *(v0 + 592);
      v75 = *(v0 + 520);
      v131 = *(v0 + 552);
      v76 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v76 = 136446978;
      *(v0 + 464) = v75;
      v77 = String.init<A>(describing:)();
      v127 = v66;
      v79 = sub_100010744(v77, v78, v138);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2082;
      v80 = Song.hasCustomLyrics.getter();
      if (v80)
      {
        v81 = 1702195828;
      }

      else
      {
        v81 = 0x65736C6166;
      }

      if (v80)
      {
        v82 = 0xE400000000000000;
      }

      else
      {
        v82 = 0xE500000000000000;
      }

      loga = v65;
      v83 = *(v70 + 8);
      v83(v68, v71);
      v84 = sub_100010744(v81, v82, v138);

      *(v76 + 14) = v84;
      *(v76 + 22) = 2082;
      *(v0 + 424) = Song.customLyrics.getter();
      *(v0 + 432) = v85;
      sub_10010FC20(&qword_1011B7770);
      v86 = String.init<A>(describing:)();
      v88 = v87;
      v83(v69, v71);
      v89 = sub_100010744(v86, v88, v138);

      *(v76 + 24) = v89;
      *(v76 + 32) = 2082;
      v90 = sub_100B1A46C();
      v92 = v91;
      v83(v137, v71);
      v93 = sub_100010744(v90, v92, v138);

      *(v76 + 34) = v93;
      _os_log_impl(&_mh_execute_header, loga, v127, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v76, 0x2Au);
      swift_arrayDestroy();

      (*(v73 + 8))(v133, v131);
    }

    else
    {

      v83 = *(v70 + 8);
      v83(v137, v71);
      v83(v69, v71);
      v83(v68, v71);
      (*(v73 + 8))(v72, v74);
    }

    v108 = *(v0 + 704);
    v109 = *(v0 + 624);
    sub_100B23120();
    swift_allocError();
    *v110 = 1;
    swift_willThrow();
    v83(v108, v109);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter((v0 + 208));
  sub_100014984(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);
    v21 = *(v0 + 584);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v134 = *(v0 + 520);
    v24 = *(v0 + 512);
    v25 = [objc_opt_self() sharedController];
    v26 = [v25 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter((v0 + 80));
    sub_100014984(v0 + 80);
    v130 = *(v0 + 88);
    v27 = Logger.lyrics.unsafeMutableAddressor();
    (*(v22 + 16))(v21, v27, v23);
    (*(v19 + 16))(v18, v24, v20);
    v28 = v134;
    v29 = v26;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 672);
    v34 = *(v0 + 632);
    v35 = *(v0 + 624);
    v36 = *(v0 + 584);
    v37 = *(v0 + 560);
    v38 = *(v0 + 552);
    if (v32)
    {
      v129 = v31;
      v39 = *(v0 + 520);
      log = *(v0 + 624);
      v40 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v40 = 136446978;
      *(v0 + 472) = v39;
      v41 = String.init<A>(describing:)();
      v135 = v36;
      v128 = v38;
      v43 = sub_100010744(v41, v42, v138);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v0 + 480) = v29;
      v44 = v29;
      sub_10010FC20(&qword_1011B16B8);
      v45 = String.init<A>(describing:)();
      v47 = sub_100010744(v45, v46, v138);

      *(v40 + 14) = v47;
      *(v40 + 22) = 1026;
      *(v40 + 24) = WORD1(v130) & 1;
      *(v40 + 28) = 2082;
      v48 = sub_100B1A46C();
      v50 = v49;
      v51 = *(v34 + 8);
      v51(v33, log);
      v52 = sub_100010744(v48, v50, v138);

      *(v40 + 30) = v52;
      _os_log_impl(&_mh_execute_header, v30, v129, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v40, 0x26u);
      swift_arrayDestroy();

      (*(v37 + 8))(v135, v128);
    }

    else
    {

      v51 = *(v34 + 8);
      v51(v33, v35);
      (*(v37 + 8))(v36, v38);
    }

    v111 = *(v0 + 704);
    v112 = *(v0 + 624);
    sub_100B23120();
    swift_allocError();
    *v113 = 2;
    swift_willThrow();

    v51(v111, v112);
LABEL_36:

    v114 = *(v0 + 8);

    return v114();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v94 = Song.catalogID.getter();
  *(v0 + 768) = v95;
  if (!v95)
  {
    goto LABEL_29;
  }

  v96 = v94;
  v97 = v95;
  v98 = *(v0 + 728);
  _StringGuts.grow(_:)(30);

  v138[0] = 0xD000000000000017;
  v138[1] = 0x8000000100E650C0;
  v99._countAndFlagsBits = v96;
  v99._object = v97;
  String.append(_:)(v99);
  v100._countAndFlagsBits = 0x6C6D74742ELL;
  v100._object = 0xE500000000000000;
  String.append(_:)(v100);
  URL.init(fileURLWithPath:)();

  v101 = Data.init(contentsOf:options:)();
  *(v0 + 776) = v101;
  *(v0 + 784) = v102;
  if (v98)
  {
    v103 = *(v0 + 544);
    v104 = *(v0 + 536);
    v105 = *(v0 + 528);

    (*(v104 + 8))(v103, v105);
LABEL_29:
    v106 = swift_task_alloc();
    *(v0 + 816) = v106;
    *v106 = v0;
    v106[1] = sub_100B1C238;
    v107 = *(v0 + 512);

    return sub_100B1DDCC(v107);
  }

  v119 = v101;
  v120 = v102;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v121 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v122 = BagProvider.bag.getter();

  (*(*v121 + 120))(v122);

  v123 = swift_task_alloc();
  *(v0 + 792) = v123;
  v123[2] = v119;
  v123[3] = v120;
  v123[4] = v96;
  v123[5] = v97;
  v124 = swift_task_alloc();
  *(v0 + 800) = v124;
  *v124 = v0;
  v124[1] = sub_100B1BF68;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x8000000100E650E0, sub_100B231CC, v123, &type metadata for LyricsLoader.Result);
}

uint64_t sub_100B1BCA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_100B1C60C;
  }

  else
  {
    v2 = sub_100B1BDB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B1BDB0()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  sub_100029CA4(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_100B1BF68()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_100B1CBC8;
  }

  else
  {
    v2 = sub_100B1C0B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B1C0B8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_10002C064(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_100B1C238(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_100B1CD34;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_100B1C360;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B1C360()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_100B1C4C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B1C60C()
{
  v66 = v0;
  v1 = v0[82];
  v58 = v0[81];
  v60 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v62 = v0[80];
  v64 = v0[65];
  v7 = v0[64];
  swift_willThrow();
  v8 = Logger.lyrics.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v9(v58, v60, v3);
  v9(v62, v7, v3);
  v10 = v64;
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[95];
    v14 = v0[82];
    v56 = v0[81];
    v57 = v0[80];
    v15 = v0[79];
    v16 = v0[78];
    v59 = v0[70];
    v61 = v0[69];
    v63 = v0[71];
    v17 = v0[65];
    v18 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v18 = 136447234;
    v0[62] = v17;
    v19 = String.init<A>(describing:)();
    v21 = sub_100010744(v19, v20, v65);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v0[63] = v13;
    swift_errorRetain();
    sub_10010FC20(&qword_1011B62D0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100010744(v22, v23, v65);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = Song.hasCustomLyrics.getter();
    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = *(v15 + 8);
    v28(v14, v16);
    v29 = sub_100010744(v26, v27, v65);

    *(v18 + 24) = v29;
    *(v18 + 32) = 2082;
    v0[55] = Song.customLyrics.getter();
    v0[56] = v30;
    sub_10010FC20(&qword_1011B7770);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v28(v56, v16);
    v34 = sub_100010744(v31, v33, v65);

    *(v18 + 34) = v34;
    *(v18 + 42) = 2082;
    v35 = sub_100B1A46C();
    v37 = v36;
    v28(v57, v16);
    v38 = sub_100010744(v35, v37, v65);

    *(v18 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v11, v12, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v18, 0x34u);
    swift_arrayDestroy();

    (*(v59 + 8))(v63, v61);
  }

  else
  {
    v39 = v0[82];
    v40 = v0[81];
    v41 = v0[80];
    v42 = v0[79];
    v43 = v0[78];
    v44 = v0[71];
    v45 = v11;
    v46 = v0[70];
    v47 = v0[69];

    v28 = *(v42 + 8);
    v28(v41, v43);
    v28(v40, v43);
    v28(v39, v43);
    (*(v46 + 8))(v44, v47);
  }

  v48 = v0[94];
  v49 = v0[93];
  v50 = v0[92];
  v51 = v0[88];
  v52 = v0[78];
  sub_100B23120();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();

  sub_100029CA4(v50, v49);
  v28(v51, v52);

  v54 = v0[1];

  return v54();
}

uint64_t sub_100B1CBC8()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_10002C064(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100B1CD34()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100B1CE8C()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_100B1CFE8(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011B62D0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100B1D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_1011B1720);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_100B245AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010E2D50;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_100B1D2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    sub_10010FC20(&qword_1011B1720);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      sub_100B23120();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    sub_10010FC20(&qword_1011B1720);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100B1D508()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 32), &qword_1011B16C8);
    sub_100B23120();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_100B1D698;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_100B1D698(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_100B1D870;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_100B1D7D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100B1D7D4()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_100B1D870()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_10010FC20(&qword_1011B5F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBEF50;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  sub_10010FC20(&qword_1011B16D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6B0;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBEF50;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  *(v13 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 56) = v15;
  *(v13 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 72) = v16;
  *(v13 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 88) = v17;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6B0;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100EBC6B0;
  *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBC6B0;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_10000C1BC(v23);
  swift_setDeallocating();
  sub_1000095E8(v23 + 32, &qword_1011B16D8);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  sub_100B244A4();
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_10000C1BC(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011B16D8);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_100B1DDCC(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = type metadata accessor for String.Encoding();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = type metadata accessor for Song();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = type metadata accessor for MusicDataResponse();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = type metadata accessor for MusicDataRequest();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = type metadata accessor for URLQueryItem();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1728);
  v2[111] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1730);
  v2[112] = swift_task_alloc();
  v10 = type metadata accessor for Locale.Language();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1738);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1740);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_10010FC20(&qword_1011B0C20);
  v2[130] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_100B1E400, 0, 0);
}

uint64_t sub_100B1E400()
{
  v264 = v0;
  v1 = v0;
  Song.catalogID.getter();
  v261 = v0;
  if (!v2)
  {
    v51 = v0[90];
    v52 = v0[87];
    v53 = v0[86];
    v54 = Logger.lyrics.unsafeMutableAddressor();
    (*(v52 + 16))(v51, v54, v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "fetchStoreLyrics: song has no storeID", v57, 2u);
    }

    v58 = v1[90];
    v59 = v1[87];
    v60 = v1[86];

    (*(v59 + 8))(v58, v60);
    sub_100B23120();
    swift_allocError();
    v62 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v3 = BagProvider.bag.getter();
  v0[135] = v3;

  if (!v3)
  {
    v63 = v0[91];
    v64 = v0[87];
    v65 = v0[86];

    v66 = Logger.lyrics.unsafeMutableAddressor();
    (*(v64 + 16))(v63, v66, v65);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "fetchStoreLyrics: Bag is nil", v69, 2u);
    }

    v70 = v1[91];
    v71 = v1[87];
    v72 = v1[86];

    (*(v71 + 8))(v70, v72);
    sub_100B23120();
    swift_allocError();
    v62 = 3;
LABEL_21:
    *v61 = v62;
    swift_willThrow();
LABEL_27:

    v84 = v261[1];

    return v84();
  }

  v4 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v5 = *(**v4 + 120);

  v6 = v3;
  v5(v3);

  v7 = [v6 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v7)
  {
LABEL_23:

LABEL_24:
    v73 = v1[92];
    v74 = v1[87];
    v75 = v1[86];
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "fetchStoreLyrics: Unable to get the domain from the bag", v79, 2u);
    }

    v80 = v1[92];
    v81 = v1[87];
    v82 = v1[86];

    (*(v81 + 8))(v80, v82);
    sub_100B23120();
    swift_allocError();
    *v83 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [v6 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v12 || (v13 = v12, v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v13, v15 = sub_100B917DC(v14), , !v15))
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v15 + 16))
  {

    goto LABEL_31;
  }

  v18 = sub_10000F8B8(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_31:

    v1 = v261;
    goto LABEL_24;
  }

  v1 = v261;
  v21 = v261 + 75;
  sub_1000160F8(*(v15 + 56) + 40 * v18, (v261 + 23));

  sub_10010FC20(&qword_1011B1748);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *v21;
  if (!*(*v21 + 16) || (v23 = sub_10000F8B8(0x746C7561666564, 0xE700000000000000), (v24 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_1000160F8(*(v22 + 56) + 40 * v23, (v261 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v256 = v261[132];
  v258 = v261[131];
  v254 = v261[130];
  v25 = v261[62];
  v26 = v261[63];
  _StringGuts.grow(_:)(49);

  v262 = 0x2F2F3A7370747468;
  v263 = 0xE800000000000000;
  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x617461632F31762FLL;
  v28._object = 0xEC0000002F676F6CLL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v9;
  v29._object = v11;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x2F73676E6F732FLL;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31 = MusicItemID.description.getter();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._object = 0x8000000100E65160;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  URL.init(string:)();
  if ((*(v256 + 48))(v254, 1, v258) == 1)
  {
    v36 = v261[130];
    v37 = v261[93];
    v38 = v261[87];
    v39 = v261[86];

    sub_1000095E8(v36, &qword_1011B0C20);
    v40 = Logger.lyrics.unsafeMutableAddressor();
    (*(v38 + 16))(v37, v40, v39);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v261[93];
    v45 = v261[87];
    v46 = v261[86];
    if (v43)
    {
      v47 = v261[93];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v262 = v49;
      *v48 = 136446210;
      v50 = sub_100010744(0x2F2F3A7370747468, 0xE800000000000000, &v262);

      *(v48 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "fetchStoreLyrics: Couldn't build URL: %{public}s", v48, 0xCu);
      sub_10000959C(v49);

      (*(v45 + 8))(v47, v46);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    sub_100B23120();
    swift_allocError();
    *v182 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v86 = v261[134];
  v87 = v261[132];
  v88 = v261[131];
  v89 = v261[130];
  v90 = v261[129];
  v91 = v261[124];
  v259 = v261[123];

  (*(v87 + 32))(v86, v89, v88);
  v245 = *(v91 + 56);
  v245(v90, 1, 1, v259);
  v92 = static Locale.preferredLanguages.getter();
  v93 = v92;
  v94 = *(v92 + 16);
  if (!v94)
  {
    v239 = 0;
    v240 = _swiftEmptyArrayStorage;
    v253 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v239 = 0;
  v95 = 0;
  v96 = v261[124];
  v249 = (v96 + 48);
  v244 = (v96 + 16);
  v97 = (v261[114] + 8);
  v98 = (v96 + 8);
  v99 = v92 + 40;
  v247 = -v94;
  v248 = v98;
  v240 = _swiftEmptyArrayStorage;
  v253 = _swiftEmptyArrayStorage;
  v250 = v92;
  v238 = v92 + 40;
  do
  {
    v100 = v99 + 16 * v95;
    v101 = v95 + 1;
    while (1)
    {
      v260 = v101;
      if ((v101 - 1) >= *(v93 + 16))
      {
        __break(1u);
      }

      v104 = v97;
      v105 = v1[129];
      v106 = v1[128];
      v107 = v1[123];
      v257 = v100;

      Locale.init(identifier:)();
      sub_100B24680(v105, v106);
      if ((*v249)(v106, 1, v107) == 1)
      {
        v108 = v1[129];
        v109 = v1[128];
        v110 = v1[126];
        v111 = v1[123];
        sub_1000095E8(v108, &qword_1011B1740);
        sub_1000095E8(v109, &qword_1011B1740);
        (*v244)(v108, v110, v111);
        v245(v108, 0, 1, v111);
      }

      else
      {
        sub_1000095E8(v1[128], &qword_1011B1740);
      }

      v112 = v1[122];
      v113 = v1[119];
      v114 = v1[113];
      Locale.language.getter();
      Locale.Language.languageCode.getter();
      v255 = *v97;
      (*v97)(v113, v114);
      v115 = type metadata accessor for Locale.LanguageCode();
      v116 = *(v115 - 8);
      v252 = *(v116 + 48);
      v251 = v116;
      if (v252(v112, 1, v115) == 1)
      {
        sub_1000095E8(v1[122], &qword_1011B1738);
      }

      else
      {
        v117 = v1[122];
        v118 = Locale.LanguageCode.identifier.getter();
        v119 = v116;
        v120 = v118;
        v122 = v121;
        (*(v119 + 8))(v117, v115);
        v1[64] = Locale.identifier.getter();
        v1[65] = v123;
        v1[56] = 45;
        v1[57] = 0xE100000000000000;
        sub_1000098E0();
        LOBYTE(v117) = StringProtocol.contains<A>(_:)();

        if (v117)
        {

          v124 = Locale.identifier.getter();
          v126 = v125;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v253 = sub_100BF9974(0, *(v253 + 2) + 1, 1, v253);
          }

          v128 = *(v253 + 2);
          v127 = *(v253 + 3);
          if (v128 >= v127 >> 1)
          {
            v253 = sub_100BF9974((v127 > 1), v128 + 1, 1, v253);
          }

          *(v253 + 2) = v128 + 1;
          v129 = &v253[16 * v128];
          *(v129 + 4) = v124;
          *(v129 + 5) = v126;
        }

        else
        {
          v130 = v1[112];
          v262 = v120;
          v263 = v122;
          v131._countAndFlagsBits = 45;
          v131._object = 0xE100000000000000;
          String.append(_:)(v131);
          Locale.region.getter();
          v132 = type metadata accessor for Locale.Region();
          v133 = v1;
          v134 = *(v132 - 8);
          v135 = (*(v134 + 48))(v130, 1, v132);
          v136 = v133[112];
          if (v135 == 1)
          {
            sub_1000095E8(v136, &qword_1011B1730);
            v138 = String.uppercased()();
            countAndFlagsBits = v138._countAndFlagsBits;
            object = v138._object;
          }

          else
          {
            v140 = Locale.Region.identifier.getter();
            object = v141;
            (*(v134 + 8))(v136, v132);
            countAndFlagsBits = v140;
          }

          v142 = object;
          String.append(_:)(*&countAndFlagsBits);

          v143 = v262;
          v144 = v263;
          v1 = v261;
          v97 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v253 = sub_100BF9974(0, *(v253 + 2) + 1, 1, v253);
          }

          v146 = *(v253 + 2);
          v145 = *(v253 + 3);
          if (v146 >= v145 >> 1)
          {
            v253 = sub_100BF9974((v145 > 1), v146 + 1, 1, v253);
          }

          *(v253 + 2) = v146 + 1;
          v147 = &v253[16 * v146];
          *(v147 + 4) = v143;
          *(v147 + 5) = v144;
        }
      }

      *(v1 + 1194) = 6;
      v148 = sub_100025D88();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v148) & 1) == 0)
      {
        (*v248)(v1[126], v1[123]);
LABEL_63:
        v93 = v250;
LABEL_64:
        v103 = v260;
        goto LABEL_37;
      }

      v246 = v115;
      v149 = v1[118];
      v150 = v1[113];
      v151 = v1[111];
      Locale.language.getter();
      Locale.Language.script.getter();
      v255(v149, v150);
      v152 = type metadata accessor for Locale.Script();
      v153 = v97;
      v154 = *(v152 - 8);
      if ((*(v154 + 48))(v151, 1, v152) != 1)
      {
        break;
      }

      v102 = v1[111];
      (*v248)(v1[126], v1[123]);
      sub_1000095E8(v102, &qword_1011B1728);
      v93 = v250;
      v103 = v260;
      v97 = v153;
LABEL_37:
      v100 = v257 + 16;
      v101 = v103 + 1;
      if (v247 + v101 == 1)
      {
        goto LABEL_84;
      }
    }

    v155 = v1[121];
    v156 = v1;
    v157 = v1[117];
    v242 = v156[113];
    v158 = v156[111];
    v241 = Locale.Script.identifier.getter();
    v243 = v159;
    (*(v154 + 8))(v158, v152);
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    v255(v157, v242);
    v97 = v153;
    if (v252(v155, 1, v246) == 1)
    {
      v160 = v156[121];
      (*v248)(v156[126], v156[123]);

      sub_1000095E8(v160, &qword_1011B1738);
      v1 = v156;
      goto LABEL_63;
    }

    v161 = v156[121];
    v162 = Locale.LanguageCode.identifier.getter();
    v164 = v163;
    (*(v251 + 8))(v161, v246);
    v165 = Lyrics.scriptMap.unsafeMutableAddressor();
    v166 = *v165;
    v1 = v156;
    if (*(*v165 + 16))
    {

      v167 = v243;
      v168 = sub_10000F8B8(v241, v243);
      if (v169)
      {
        v170 = (*(v166 + 56) + 16 * v168);
        v171 = v170[1];
        v241 = *v170;

        v167 = v171;
      }
    }

    else
    {
      v167 = v243;
    }

    v262 = v162;
    v263 = v164;
    v172._countAndFlagsBits = 45;
    v172._object = 0xE100000000000000;
    String.append(_:)(v172);
    v173._countAndFlagsBits = v241;
    v173._object = v167;
    String.append(_:)(v173);
    v174 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v240 = sub_100BF9974(0, *(v240 + 2) + 1, 1, v240);
    }

    v176 = *(v240 + 2);
    v175 = *(v240 + 3);
    if (v176 >= v175 >> 1)
    {
      v240 = sub_100BF9974((v175 > 1), v176 + 1, 1, v240);
    }

    *(v240 + 2) = v176 + 1;
    v177 = &v240[16 * v176];
    *(v177 + 4) = v162;
    *(v177 + 5) = v174;
    v178 = Lyrics.defaultScript.unsafeMutableAddressor();
    v179 = v1[126];
    v180 = v1[123];
    if (v241 != *v178 || v167 != *(v178 + 1))
    {
      v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v248)(v179, v180);
      v93 = v250;
      if (v181)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v248)(v179, v180);
    v93 = v250;
LABEL_79:
    v239 = 1;
    v95 = v260;
    v99 = v238;
  }

  while (v247 + v260);
LABEL_84:
  v183 = v1[129];
  v184 = v1[127];
  v185 = v1[124];
  v186 = v1[123];

  sub_100B24680(v183, v184);
  if ((*(v185 + 48))(v184, 1, v186) == 1)
  {
    sub_1000095E8(v1[127], &qword_1011B1740);
  }

  else
  {
    (*(v1[124] + 32))(v1[125], v1[127], v1[123]);
    if ((v239 & 1) != 0 || (v187 = v1[116], v188 = v1[114], v189 = v1[113], v190 = *v4, , Locale.language.getter(), v191 = (*(*v190 + 256))(v187), , v192 = *(v188 + 8), v192(v187, v189), (v191 & 1) == 0))
    {
      (*(v1[124] + 8))(v1[125], v1[123]);
    }

    else
    {
      v193 = v1[120];
      v194 = v1[115];
      v195 = v1[113];
      Locale.language.getter();
      Locale.Language.languageCode.getter();
      v192(v194, v195);
      v196 = type metadata accessor for Locale.LanguageCode();
      v197 = *(v196 - 8);
      if ((*(v197 + 48))(v193, 1, v196) == 1)
      {
        v198 = v1[120];
        (*(v1[124] + 8))(v1[125], v1[123]);
        sub_1000095E8(v198, &qword_1011B1738);
      }

      else
      {
        v224 = v1[120];
        v225 = Locale.LanguageCode.identifier.getter();
        v227 = v226;
        (*(v197 + 8))(v224, v196);
        v262 = v225;
        v263 = v227;
        v228._countAndFlagsBits = 45;
        v228._object = 0xE100000000000000;
        String.append(_:)(v228);
        v229 = Lyrics.defaultScript.unsafeMutableAddressor();
        v231 = *v229;
        v230 = v229[1];

        v232._countAndFlagsBits = v231;
        v232._object = v230;
        String.append(_:)(v232);

        v234 = v262;
        v233 = v227;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = sub_100BF9974(0, *(v240 + 2) + 1, 1, v240);
        }

        v236 = *(v240 + 2);
        v235 = *(v240 + 3);
        if (v236 >= v235 >> 1)
        {
          v240 = sub_100BF9974((v235 > 1), v236 + 1, 1, v240);
        }

        v1 = v261;
        (*(v261[124] + 8))(v261[125], v261[123]);
        *(v240 + 2) = v236 + 1;
        v237 = &v240[16 * v236];
        *(v237 + 4) = v234;
        *(v237 + 5) = v233;
      }
    }
  }

  v1[72] = v253;
  sub_10010FC20(&qword_1011B1758);
  sub_100B246F0();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  v199 = sub_100BF9A80(0, 1, 1, _swiftEmptyArrayStorage);
  v201 = *(v199 + 2);
  v200 = *(v199 + 3);
  if (v201 >= v200 >> 1)
  {
    v199 = sub_100BF9A80(v200 > 1, v201 + 1, 1, v199);
  }

  v202 = v1[110];
  v203 = v1[107];
  v204 = v1[106];
  *(v199 + 2) = v201 + 1;
  v206 = *(v203 + 32);
  v203 += 32;
  v205 = v206;
  v207 = (*(v203 + 48) + 32) & ~*(v203 + 48);
  v208 = *(v203 + 40);
  v206(&v199[v207 + v208 * v201], v202, v204);
  *(v1 + 1193) = 6;
  v209 = sub_100025D88();
  v1[136] = v209;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v209))
  {
    v1[76] = v240;
    BidirectionalCollection<>.joined(separator:)();

    URLQueryItem.init(name:value:)();

    v211 = *(v199 + 2);
    v210 = *(v199 + 3);
    if (v211 >= v210 >> 1)
    {
      v199 = sub_100BF9A80(v210 > 1, v211 + 1, 1, v199);
    }

    v212 = v1[109];
    v213 = v1[106];
    *(v199 + 2) = v211 + 1;
    v205(&v199[v207 + v211 * v208], v212, v213);
    URLQueryItem.init(name:value:)();
    v215 = *(v199 + 2);
    v214 = *(v199 + 3);
    if (v215 >= v214 >> 1)
    {
      v199 = sub_100BF9A80(v214 > 1, v215 + 1, 1, v199);
    }

    v216 = v1[108];
    v217 = v1[106];
    *(v199 + 2) = v215 + 1;
    v205(&v199[v207 + v215 * v208], v216, v217);
  }

  else
  {
  }

  v218 = v1[105];
  v219 = v1[104];
  v220 = v1[103];
  v221 = v1[102];
  URL.appending(queryItems:)();

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  (*(v220 + 16))(v219, v218, v221);
  MusicDataRequest.init(urlRequest:)();
  v222 = swift_task_alloc();
  v1[137] = v222;
  *v222 = v1;
  v222[1] = sub_100B1FF30;
  v223 = v1[98];

  return MusicDataRequest.response()(v223);
}

uint64_t sub_100B1FF30()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_100B21420;
  }

  else
  {
    v2 = sub_100B20070;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B20070()
{
  v123 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v121 = 0x3C726564616F4CLL;
  v122 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v122;
  v109 = v121;
  v11 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v11;
  v12 = *(v2 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v114 = v11;
  v112 = v12;
  v12(v1);
  (*(v4 + 16))(v3, v7, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 760);
  v17 = *(v0 + 696);
  v117 = *(v0 + 688);
  v18 = *(v0 + 680);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  if (v15)
  {
    v107 = *(v0 + 760);
    v21 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = sub_100010744(v109, v10, &v121);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2082;
    v23 = sub_100B1A46C();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_100010744(v23, v25, &v121);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = *(v17 + 8);
    v27(v107, v117);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v27 = *(v17 + 8);
    v27(v16, v117);
  }

  *(v0 + 1136) = v27;
  v28 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v29 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v28);
  if (v29)
  {
    v30 = 0xD000000000000011;
  }

  else
  {
    v30 = 1819112564;
  }

  if (v29)
  {
    v31 = 0x8000000100E65180;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  v32 = objc_opt_self();
  v33 = MusicDataResponse.data.getter();
  v35 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002C064(v33, v35);
  *(v0 + 536) = 0;
  v37 = [v32 JSONObjectWithData:isa options:0 error:v0 + 536];

  v38 = *(v0 + 536);
  if (!v37)
  {
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = v38;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v58 + 8))(v57, v59);
LABEL_37:
    v75 = *(v0 + 712);
    v76 = *(v0 + 696);
    v77 = *(v0 + 688);
    v78 = Logger.lyrics.unsafeMutableAddressor();
    (*(v76 + 16))(v75, v78, v77);
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138543362;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v83;
      *v82 = v83;
      _os_log_impl(&_mh_execute_header, v79, v80, "Data request error: %{public}@", v81, 0xCu);
      sub_1000095E8(v82, &qword_1011B1160);
    }

    v108 = *(v0 + 1080);
    v84 = *(v0 + 1056);
    v116 = *(v0 + 1048);
    v120 = *(v0 + 1072);
    v113 = *(v0 + 840);
    v115 = *(v0 + 1032);
    v85 = *(v0 + 824);
    v111 = *(v0 + 816);
    v86 = *(v0 + 808);
    v87 = *(v0 + 800);
    v88 = *(v0 + 792);
    v89 = v79;
    v90 = *(v0 + 712);
    v91 = *(v0 + 696);
    v92 = *(v0 + 688);

    (*(v91 + 8))(v90, v92);
    swift_willThrow();

    (*(v87 + 8))(v86, v88);
    (*(v85 + 8))(v113, v111);
    sub_1000095E8(v115, &qword_1011B1740);
    (*(v84 + 8))(v120, v116);

    v93 = *(v0 + 8);

    return v93();
  }

  v39 = v38;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10010FC20(&qword_1011B1768);
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 528);
  }

  else
  {
    v40 = 0;
  }

  if (!v40 || !*(v40 + 16))
  {
    goto LABEL_32;
  }

  v41 = sub_10000F8B8(1635017060, 0xE400000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = v0 + 616;
  sub_10000DD18(*(v40 + 56) + 32 * v41, v0 + 384);

  sub_10010FC20(&qword_1011B1778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v43 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_10000DD18(*v43 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = *(v0 + 552);
  if (!*(v44 + 16))
  {
    goto LABEL_44;
  }

  v45 = sub_10000F8B8(0x7475626972747461, 0xEA00000000007365);
  if ((v46 & 1) == 0)
  {
    goto LABEL_44;
  }

  v47 = (v0 + 568);
  sub_10000DD18(*(v44 + 56) + 32 * v45, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v48 = *v47;
  if (!*(*v47 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v49 = sub_10000F8B8(v30, v31);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_10000DD18(*(v48 + 56) + 32 * v49, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v118 = v27;
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v110 = *(v0 + 640);
  static String.Encoding.utf8.getter();
  v54 = String.data(using:allowLossyConversion:)();
  v56 = v55;

  *(v0 + 1144) = v54;
  *(v0 + 1152) = v56;
  (*(v53 + 8))(v52, v110);
  if (v56 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v27 = v118;
LABEL_33:
    v112(*(v0 + 752), v114, *(v0 + 688));

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 752);
    v65 = *(v0 + 688);
    if (v63)
    {
      v66 = swift_slowAlloc();
      v119 = v27;
      v67 = swift_slowAlloc();
      v121 = v67;
      *v66 = 136446210;
      *(v0 + 544) = v40;
      sub_10010FC20(&qword_1011B1770);
      v68 = String.init<A>(describing:)();
      v70 = sub_100010744(v68, v69, &v121);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Invalid response: %{public}s", v66, 0xCu);
      sub_10000959C(v67);

      v119(v64, v65);
    }

    else
    {

      v27(v64, v65);
    }

    v71 = *(v0 + 784);
    v72 = *(v0 + 776);
    v73 = *(v0 + 768);
    sub_100B23120();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    (*(v72 + 8))(v71, v73);
    goto LABEL_37;
  }

  v27 = v118;
  if (!*(v48 + 16) || (v95 = sub_10000F8B8(0x6172615079616C70, 0xEA0000000000736DLL), (v96 & 1) == 0))
  {
    sub_100029CA4(v54, v56);
    goto LABEL_32;
  }

  v97 = v56;
  v98 = (v0 + 584);
  sub_10000DD18(*(v48 + 56) + 32 * v95, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v99 = *v98;
  if (!*(*v98 + 16) || (v100 = sub_10000F8B8(25705, 0xE200000000000000), (v101 & 1) == 0))
  {
    sub_100029CA4(v54, v97);
    goto LABEL_27;
  }

  sub_10000DD18(*(v99 + 56) + 32 * v100, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_100029CA4(v54, v97);
    goto LABEL_28;
  }

  v102 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v102;
  v103 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_10002BC44(v54, v97);
  v104 = Data._bridgeToObjectiveC()().super.isa;
  v105 = [v103 initWithTTMLData:v104];
  *(v0 + 1176) = v105;

  sub_100029CA4(v54, v97);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_100B20F1C;
  v106 = swift_continuation_init();
  *(v0 + 136) = sub_10010FC20(&qword_1011B16C0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100B1CFE8;
  *(v0 + 104) = &unk_1010E2D78;
  *(v0 + 112) = v106;
  [v105 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100B20F1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_100B2186C;
  }

  else
  {
    v2 = sub_100B21060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B21060()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_100029CA4(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_1000095E8(v21, &qword_1011B1740);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100B21420()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Data request error: %{public}@", v7, 0xCu);
    sub_1000095E8(v8, &qword_1011B1160);
  }

  v10 = v0[135];
  v11 = v0[132];
  v25 = v0[131];
  v26 = v0[134];
  v23 = v0[105];
  v24 = v0[129];
  v12 = v5;
  v13 = v0[103];
  v22 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];

  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v23, v22);
  sub_1000095E8(v24, &qword_1011B1740);
  (*(v11 + 8))(v26, v25);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100B2186C()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[88];
  v4 = v0[86];
  swift_willThrow();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Parsing error: %{public}@", v7, 0xCu);
    sub_1000095E8(v8, &qword_1011B1160);
  }

  v10 = v0[147];
  v11 = v0[144];
  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[97];
  v42 = v0[96];
  v44 = v0[98];
  v15 = v0[88];
  v16 = v0[86];

  v13(v15, v16);
  swift_willThrow();

  sub_100029CA4(v12, v11);
  (*(v14 + 8))(v44, v42);
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];
  v20 = Logger.lyrics.unsafeMutableAddressor();
  (*(v18 + 16))(v17, v20, v19);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Data request error: %{public}@", v23, 0xCu);
    sub_1000095E8(v24, &qword_1011B1160);
  }

  v26 = v0[135];
  v27 = v0[132];
  v41 = v0[131];
  v43 = v0[134];
  v39 = v0[105];
  v40 = v0[129];
  v28 = v21;
  v29 = v0[103];
  v38 = v0[102];
  v30 = v0[101];
  v31 = v0[100];
  v32 = v0[99];
  v33 = v0[89];
  v34 = v0[87];
  v35 = v0[86];

  (*(v34 + 8))(v33, v35);
  swift_willThrow();

  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v39, v38);
  sub_1000095E8(v40, &qword_1011B1740);
  (*(v27 + 8))(v43, v41);

  v36 = v0[1];

  return v36();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  v196 = v2;
  v197 = v3;
  __chkstk_darwin(v2);
  v5 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v194 = &v185 - v7;
  __chkstk_darwin(v8);
  v193 = (&v185 - v9);
  __chkstk_darwin(v10);
  v192 = (&v185 - v11);
  __chkstk_darwin(v12);
  v187 = &v185 - v13;
  __chkstk_darwin(v14);
  v186 = &v185 - v15;
  __chkstk_darwin(v16);
  v18 = &v185 - v17;
  __chkstk_darwin(v19);
  v21 = &v185 - v20;
  __chkstk_darwin(v22);
  v189 = (&v185 - v23);
  __chkstk_darwin(v24);
  v188 = &v185 - v25;
  __chkstk_darwin(v26);
  v191 = &v185 - v27;
  __chkstk_darwin(v28);
  v30 = &v185 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v199 = v31;
  v200 = v32;
  __chkstk_darwin(v31);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v195 = &v185 - v36;
  __chkstk_darwin(v37);
  v190 = &v185 - v38;
  __chkstk_darwin(v39);
  v41 = &v185 - v40;
  __chkstk_darwin(v42);
  v44 = &v185 - v43;
  __chkstk_darwin(v45);
  v47 = &v185 - v46;
  if ((Song.hasLyrics.getter() & 1) == 0 && (Song.hasCustomLyrics.getter() & 1) == 0)
  {
    v75 = Logger.lyrics.unsafeMutableAddressor();
    v76 = v199;
    v77 = v200;
    (*(v200 + 16))(v34, v75, v199);
    v78 = v196;
    v79 = v197;
    (*(v197 + 16))(v5, a1, v196);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v204[0] = v83;
      *v82 = 136446210;
      v84 = sub_100B1A46C();
      v85 = v78;
      v87 = v86;
      (*(v79 + 8))(v5, v85);
      v88 = sub_100010744(v84, v87, v204);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v80, v81, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v82, 0xCu);
      sub_10000959C(v83);

      (*(v200 + 8))(v34, v199);
    }

    else
    {

      (*(v79 + 8))(v5, v78);
      (*(v77 + 8))(v34, v76);
    }

    v159 = 0;
    return v159 & 1;
  }

  v198 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v48 = BagProvider.bag.getter();

  if (v48)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v48] & 1) == 0)
    {
      v89 = [v48 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v90 = v198;
      v91 = v196;
      if (v89)
      {

        v92 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v47, v92, v199);
        v93 = v197;
        v94 = *(v197 + 16);
        v94(v30, v90, v91);
        v95 = v191;
        v94(v191, v90, v91);
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v195 = v48;
          v99 = v98;
          v194 = swift_slowAlloc();
          *&v204[0] = v194;
          *v99 = 136446466;
          v193 = v96;
          v100 = Song.hasCustomLyrics.getter();
          if (v100)
          {
            v101 = 1702195828;
          }

          else
          {
            v101 = 0x65736C6166;
          }

          LODWORD(v192) = v97;
          v102 = v91;
          if (v100)
          {
            v103 = 0xE400000000000000;
          }

          else
          {
            v103 = 0xE500000000000000;
          }

          v104 = *(v93 + 8);
          v104(v30, v102);
          v105 = sub_100010744(v101, v103, v204);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2082;
          v106 = sub_100B1A46C();
          v108 = v107;
          v104(v95, v102);
          v109 = sub_100010744(v106, v108, v204);

          *(v99 + 14) = v109;
          v110 = v193;
          _os_log_impl(&_mh_execute_header, v193, v192, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v99, 0x16u);
          swift_arrayDestroy();

          v48 = v195;
        }

        else
        {

          v180 = *(v93 + 8);
          v180(v95, v91);
          v180(v30, v91);
        }

        (*(v200 + 8))(v47, v199);
      }

      else
      {
        v160 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v44, v160, v199);
        v161 = v197;
        v162 = *(v197 + 16);
        v163 = v188;
        v162(v188, v90, v91);
        v164 = v189;
        v162(v189, v90, v91);
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v195 = v48;
          v168 = v167;
          v193 = swift_slowAlloc();
          *&v204[0] = v193;
          *v168 = 136446466;
          v192 = v165;
          v169 = Song.hasCustomLyrics.getter();
          if (v169)
          {
            v170 = 1702195828;
          }

          else
          {
            v170 = 0x65736C6166;
          }

          v194 = v44;
          v171 = v164;
          if (v169)
          {
            v172 = 0xE400000000000000;
          }

          else
          {
            v172 = 0xE500000000000000;
          }

          LODWORD(v191) = v166;
          v173 = *(v161 + 8);
          v173(v163, v91);
          v174 = sub_100010744(v170, v172, v204);

          *(v168 + 4) = v174;
          *(v168 + 12) = 2082;
          v175 = sub_100B1A46C();
          v177 = v176;
          v173(v171, v91);
          v178 = sub_100010744(v175, v177, v204);

          *(v168 + 14) = v178;
          v179 = v192;
          _os_log_impl(&_mh_execute_header, v192, v191, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v168, 0x16u);
          swift_arrayDestroy();

          v48 = v195;

          (*(v200 + 8))(v194, v199);
        }

        else
        {

          v181 = *(v161 + 8);
          v181(v164, v91);
          v181(v163, v91);
          (*(v200 + 8))(v44, v199);
        }
      }

      v182 = Song.hasCustomLyrics.getter();

      v159 = v182;
      return v159 & 1;
    }

    v49 = v199;
    v50 = v200;
    v52 = v196;
    v51 = v197;
    v53 = v192;
  }

  else
  {
    v54 = Logger.lyrics.unsafeMutableAddressor();
    v55 = v199;
    (*(v200 + 16))(v41, v54, v199);
    v51 = v197;
    v56 = v198;
    v57 = *(v197 + 16);
    v58 = v196;
    v57(v21, v198, v196);
    v57(v18, v56, v58);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v204[0] = v191;
      *v61 = 136446466;
      v189 = v59;
      v62 = Song.hasCustomLyrics.getter();
      if (v62)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = v196;
      LODWORD(v188) = v60;
      v66 = *(v197 + 8);
      v66(v21, v196);
      v67 = sub_100010744(v63, v64, v204);
      v51 = v197;

      *(v61 + 4) = v67;
      *(v61 + 12) = 2082;
      v68 = sub_100B1A46C();
      v70 = v69;
      v66(v18, v65);
      v71 = v199;
      v50 = v200;
      v72 = sub_100010744(v68, v70, v204);

      *(v61 + 14) = v72;
      v73 = v189;
      _os_log_impl(&_mh_execute_header, v189, v188, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v61, 0x16u);
      swift_arrayDestroy();

      v74 = v41;
      v49 = v71;
      (*(v50 + 8))(v74, v71);
      v52 = v65;
      v53 = v192;
    }

    else
    {

      v111 = *(v51 + 8);
      v112 = v18;
      v52 = v196;
      v111(v112, v196);
      v111(v21, v52);
      v113 = v200;
      (*(v200 + 8))(v41, v55);
      v53 = v192;
      v49 = v55;
      v50 = v113;
    }
  }

  v114 = Song.hasLyrics.getter();
  v115 = v195;
  v116 = v193;
  if (v114 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v202), v117 = v203, , sub_100014984(v202), v118 = sub_10048BBDC(2, v117), , (v118))
  {
    static ApplicationCapabilities.shared.getter(v204);
    sub_100014984(v204);
    if (BYTE10(v204[0]))
    {
      v159 = 1;
      return v159 & 1;
    }

    v119 = Logger.lyrics.unsafeMutableAddressor();
    v120 = v190;
    (*(v50 + 16))(v190, v119, v49);
    v121 = *(v51 + 16);
    v122 = v186;
    v123 = v198;
    v121(v186, v198, v52);
    v124 = v51;
    v125 = v49;
    v126 = v187;
    v121(v187, v123, v52);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v129 = 67240450;
      v130 = Song.hasCustomLyrics.getter() & 1;
      v131 = *(v124 + 8);
      v131(v122, v52);
      *(v129 + 4) = v130;
      *(v129 + 8) = 2082;
      v132 = sub_100B1A46C();
      v133 = v126;
      v134 = v200;
      v136 = v135;
      v131(v133, v52);
      v137 = sub_100010744(v132, v136, &v201);

      *(v129 + 10) = v137;
      _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v129, 0x12u);
      sub_10000959C(v197);

      (*(v134 + 8))(v190, v199);
    }

    else
    {
      v184 = *(v124 + 8);
      v184(v122, v52);

      v184(v126, v52);
      (*(v200 + 8))(v120, v125);
    }
  }

  else
  {
    v138 = Logger.lyrics.unsafeMutableAddressor();
    (*(v50 + 16))(v115, v138, v49);
    v139 = *(v51 + 16);
    v140 = v198;
    v139(v53, v198, v52);
    v141 = v116;
    v139(v116, v140, v52);
    v142 = v194;
    v139(v194, v140, v52);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v145 = 67240962;
      LODWORD(v192) = v144;
      v146 = Song.hasCustomLyrics.getter() & 1;
      v147 = *(v51 + 8);
      v147(v53, v52);
      *(v145 + 4) = v146;
      v148 = v141;
      v149 = v200;
      *(v145 + 8) = 1026;
      v150 = Song.hasLyrics.getter() & 1;
      v147(v148, v52);
      *(v145 + 10) = v150;
      *(v145 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v204);
      v151 = v205;

      sub_100014984(v204);
      v152 = sub_10048BBDC(2, v151);

      *(v145 + 16) = v152 & 1;
      *(v145 + 20) = 2082;
      v153 = v194;
      v154 = sub_100B1A46C();
      v156 = v155;
      v147(v153, v52);
      v157 = sub_100010744(v154, v156, &v201);

      *(v145 + 22) = v157;
      _os_log_impl(&_mh_execute_header, v143, v192, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v145, 0x1Eu);
      sub_10000959C(v197);

      (*(v149 + 8))(v195, v199);
    }

    else
    {
      v158 = *(v51 + 8);
      v158(v141, v52);
      v158(v53, v52);

      v158(v142, v52);
      (*(v200 + 8))(v115, v199);
    }
  }

  v159 = Song.hasCustomLyrics.getter();
  return v159 & 1;
}

unint64_t sub_100B23120()
{
  result = qword_1011B16A0;
  if (!qword_1011B16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B16A0);
  }

  return result;
}

unint64_t sub_100B23174()
{
  result = qword_1011B16B0;
  if (!qword_1011B16B0)
  {
    type metadata accessor for Song();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B16B0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v194 = type metadata accessor for Logger();
  v2 = *(v194 - 8);
  __chkstk_darwin(v194);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v185 - v6;
  __chkstk_darwin(v8);
  v10 = &v185 - v9;
  __chkstk_darwin(v11);
  v13 = &v185 - v12;
  __chkstk_darwin(v14);
  v16 = &v185 - v15;
  __chkstk_darwin(v17);
  v19 = &v185 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v185 - v22;
  v193 = [a1 lyrics];
  if (v193)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v191 = v10;
    v192 = v2;
    v36 = v193;
    v37 = [v193 hasLibraryLyrics];
    if (([v36 hasStoreLyrics] & 1) == 0 && !v37)
    {
      v38 = Logger.lyrics.unsafeMutableAddressor();
      v39 = v192;
      v40 = v194;
      (*(v192 + 16))(v7, v38, v194);
      v41 = a1;
      v42 = v193;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v198[0] = v193;
        *v45 = 67240962;
        *(v45 + 4) = [v42 hasLibraryLyrics];
        *(v45 + 8) = 1026;
        *(v45 + 10) = [v42 hasStoreLyrics];

        *(v45 + 14) = 2082;
        v46 = [v41 title];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0;
        }

        *&v200[0] = v48;
        *(&v200[0] + 1) = v50;
        sub_10010FC20(&qword_1011B7770);
        v92 = String.init<A>(describing:)();
        v94 = sub_100010744(v92, v93, v198);

        *(v45 + 16) = v94;
        *(v45 + 24) = 2082;
        v95 = [v41 identifiers];
        v96 = [v95 description];
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;

        v100 = sub_100010744(v97, v99, v198);

        *(v45 + 26) = v100;
        _os_log_impl(&_mh_execute_header, v43, v44, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v45, 0x22u);
        swift_arrayDestroy();

        (*(v192 + 8))(v7, v194);
      }

      else
      {

        (*(v39 + 8))(v7, v40);
      }

      return 0;
    }

    v190 = v37;
    BagProvider.shared.unsafeMutableAddressor();

    v51 = BagProvider.bag.getter();

    if (v51)
    {
      v52 = [objc_opt_self() supportsLyricsForURLBag:v51];
      v53 = v192;
      if ((v52 & 1) == 0)
      {
        v191 = v51;
        v79 = [v51 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v79)
        {

          v80 = Logger.lyrics.unsafeMutableAddressor();
          v81 = v194;
          (*(v53 + 16))(v23, v80, v194);
          v82 = v53;
          v83 = a1;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v86 = 67240706;
            *(v86 + 4) = v190;
            *(v86 + 8) = 2082;
            v87 = [v83 title];
            if (v87)
            {
              v88 = v87;
              v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = v90;
            }

            else
            {
              v89 = 0;
              v91 = 0;
            }

            *&v200[0] = v89;
            *(&v200[0] + 1) = v91;
            sub_10010FC20(&qword_1011B7770);
            v158 = String.init<A>(describing:)();
            v160 = sub_100010744(v158, v159, v198);

            *(v86 + 10) = v160;
            *(v86 + 18) = 2082;
            v161 = [v83 identifiers];
            v162 = [v161 description];
            v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v165 = v164;

            v166 = sub_100010744(v163, v165, v198);

            *(v86 + 20) = v166;
            _os_log_impl(&_mh_execute_header, v84, v85, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v86, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v23, v194);
            return v190;
          }

          (*(v82 + 8))(v23, v81);
        }

        else
        {
          v101 = Logger.lyrics.unsafeMutableAddressor();
          v102 = v194;
          (*(v53 + 16))(v19, v101, v194);
          v103 = v53;
          v104 = a1;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v107 = 67240706;
            *(v107 + 4) = v190;
            *(v107 + 8) = 2082;
            v108 = [v104 title];
            if (v108)
            {
              v109 = v108;
              v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v111;
            }

            else
            {
              v110 = 0;
              v112 = 0;
            }

            *&v200[0] = v110;
            *(&v200[0] + 1) = v112;
            sub_10010FC20(&qword_1011B7770);
            v167 = String.init<A>(describing:)();
            v169 = sub_100010744(v167, v168, v198);

            *(v107 + 10) = v169;
            *(v107 + 18) = 2082;
            v170 = [v104 identifiers];
            v171 = [v170 description];
            v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v174 = v173;

            v175 = sub_100010744(v172, v174, v198);

            *(v107 + 20) = v175;
            _os_log_impl(&_mh_execute_header, v105, v106, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v107, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v19, v194);
            return v190;
          }

          (*(v103 + 8))(v19, v102);
        }

        return v190;
      }

      v54 = v13;

      v55 = v194;
    }

    else
    {
      v66 = Logger.lyrics.unsafeMutableAddressor();
      v53 = v192;
      v55 = v194;
      (*(v192 + 16))(v16, v66, v194);
      v67 = a1;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();

      v54 = v13;
      if (os_log_type_enabled(v68, v69))
      {
        v187 = v69;
        v188 = v13;
        v189 = v68;
        v70 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v198[0] = v186;
        *v70 = 67240706;
        *(v70 + 4) = v190;
        v71 = v70;
        *(v70 + 8) = 2082;
        v72 = v67;
        v73 = [v67 title];
        v74 = &selRef_setPhotosHeaderMetadata_;
        if (v73)
        {
          v75 = v73;
          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        *&v200[0] = v76;
        *(&v200[0] + 1) = v78;
        sub_10010FC20(&qword_1011B7770);
        v113 = String.init<A>(describing:)();
        v115 = sub_100010744(v113, v114, v198);

        *(v71 + 10) = v115;
        *(v71 + 18) = 2082;
        v116 = [v72 identifiers];
        v117 = [v116 description];
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121 = sub_100010744(v118, v120, v198);

        *(v71 + 20) = v121;
        v122 = v189;
        _os_log_impl(&_mh_execute_header, v189, v187, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v71, 0x1Cu);
        swift_arrayDestroy();

        v55 = v194;
        (*(v53 + 8))(v16, v194);
        v54 = v188;
LABEL_38:
        if ([v193 v74[125]] && (static ApplicationCapabilities.shared.getter(v198), v123 = v199, , sub_100014984(v198), v124 = sub_10048BBDC(2, v123), , (v124 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v200);
          sub_100014984(v200);
          if (BYTE10(v200[0]))
          {

            return 1;
          }

          v125 = Logger.lyrics.unsafeMutableAddressor();
          (*(v53 + 16))(v54, v125, v55);
          v126 = a1;
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v197 = v191;
            *v129 = 67240706;
            *(v129 + 4) = v190;
            *(v129 + 8) = 2082;
            v130 = [v126 title];
            if (v130)
            {
              v131 = v130;
              v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v134 = v133;
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            v195 = v132;
            v196 = v134;
            sub_10010FC20(&qword_1011B7770);
            v176 = String.init<A>(describing:)();
            v178 = sub_100010744(v176, v177, &v197);

            *(v129 + 10) = v178;
            *(v129 + 18) = 2082;
            v179 = [v126 identifiers];
            v180 = [v179 description];
            v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v183 = v182;

            v184 = sub_100010744(v181, v183, &v197);

            *(v129 + 20) = v184;
            _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v129, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v54, v194);
            return v190;
          }

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          v135 = Logger.lyrics.unsafeMutableAddressor();
          v136 = v191;
          (*(v53 + 16))(v191, v135, v55);
          v137 = a1;
          v138 = v193;
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v197 = v193;
            *v141 = 67241218;
            *(v141 + 4) = v190;
            *(v141 + 8) = 1026;
            *(v141 + 10) = [v138 v74[125]];

            *(v141 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v200);
            v142 = v201;

            sub_100014984(v200);
            v143 = sub_10048BBDC(2, v142);

            *(v141 + 16) = v143 & 1;
            *(v141 + 20) = 2082;
            v144 = [v137 title];
            if (v144)
            {
              v145 = v144;
              v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v148 = v147;
            }

            else
            {
              v146 = 0;
              v148 = 0;
            }

            v195 = v146;
            v196 = v148;
            sub_10010FC20(&qword_1011B7770);
            v149 = String.init<A>(describing:)();
            v151 = sub_100010744(v149, v150, &v197);

            *(v141 + 22) = v151;
            *(v141 + 30) = 2082;
            v152 = [v137 identifiers];
            v153 = [v152 description];
            v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v156 = v155;

            v157 = sub_100010744(v154, v156, &v197);

            *(v141 + 32) = v157;
            _os_log_impl(&_mh_execute_header, v139, v140, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v141, 0x28u);
            swift_arrayDestroy();

            (*(v192 + 8))(v191, v194);
            return v190;
          }

          (*(v53 + 8))(v136, v55);
        }

        return v190;
      }

      (*(v53 + 8))(v16, v55);
    }

    v74 = &selRef_setPhotosHeaderMetadata_;
    goto LABEL_38;
  }

LABEL_4:
  v24 = Logger.lyrics.unsafeMutableAddressor();
  v25 = v194;
  (*(v2 + 16))(v4, v24, v194);
  v26 = v2;
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v192 = v26;
    v30 = swift_slowAlloc();
    *&v198[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = [v27 title];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    *&v200[0] = v33;
    *(&v200[0] + 1) = v35;
    sub_10010FC20(&qword_1011B7770);
    v56 = String.init<A>(describing:)();
    v58 = sub_100010744(v56, v57, v198);

    *(v30 + 4) = v58;
    *(v30 + 12) = 2082;
    v59 = [v27 identifiers];
    v60 = [v59 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = sub_100010744(v61, v63, v198);

    *(v30 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v192 + 8))(v4, v194);
  }

  else
  {

    (*(v26 + 8))(v4, v25);
  }

  return 0;
}

unint64_t sub_100B244A4()
{
  result = qword_1011B16E0;
  if (!qword_1011B16E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B16E0);
  }

  return result;
}

unint64_t sub_100B24518()
{
  result = qword_1011B16F0;
  if (!qword_1011B16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B16F0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_100B245AC(void *a1, uint64_t a2)
{
  v5 = *(sub_10010FC20(&qword_1011B1720) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_100B1D2E4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100B24668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100B24680(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B246F0()
{
  result = qword_1011B1760;
  if (!qword_1011B1760)
  {
    sub_1001109D0(&qword_1011B1758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1760);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = type metadata accessor for ScenePhase();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = type metadata accessor for Song();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  ObservationRegistrar.init()();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_100B259F4, v20);

  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v1;
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_100B31D14(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State);
  v10 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v8, a1);
  sub_100B31D7C(v8, type metadata accessor for Lyrics.StateManager.State);
  if (v10)
  {
    sub_100B31D14(a1, v8, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v8, v1 + v9, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v5);
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v8, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_100B31D7C(a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100B24E94(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100B24FB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100B25114(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_100009F78(0, &qword_1011B1DD0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100B25288(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1810);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v63 = v18;
    v20 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    v59 = v19;
    v60 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_100B31D14(v18 + v21, v16, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v16, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v16, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return sub_100B31D7C(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    }

    v57 = v4;
    v58 = a1;
    v22 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    v26 = v13[32];
    v27 = *(sub_10010FC20(&qword_1011B17F8) + 48);
    v28 = type metadata accessor for Song();
    v29 = (*(*(v28 - 8) + 8))(&v13[v27], v28);
    if (v26 != 1)
    {
    }

    v30 = v23;
    v55 = v25;
    v56 = v24;
    v31 = (*v22 + 312);
    v32 = *v31;
    v33 = v31;
    (*v31)(v29);
    v34 = type metadata accessor for Lyrics.Transliteration(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v53 = v34;
    if ((v36)(v10, 1) == 1)
    {

      sub_100B32A58(v22, v30, v55, v56, 1);
      v37 = v10;
    }

    else
    {
      v52 = v35;
      v50 = v33;
      v51 = v32;
      v54 = v22;
      sub_1000095E8(v10, &qword_1011B1810);
      v38 = sub_100BE4230(3, v58);
      v39 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v39) = v39(3) & 1;

      if (v38 == v39)
      {
        sub_100B32A58(v54, v30, v55, v56, 1);
      }

      v58 = v30;
      (*(*v54 + 440))(v40);
      swift_getKeyPath();
      v62 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_1000089F8(v18 + v41, v7, &qword_1011B1810);
      v42 = v53;
      v43 = v36(v7, 1, v53);
      sub_1000095E8(v7, &qword_1011B1810);
      v44 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v45 = swift_beginAccess();
      if (*(v18 + v44) == 1)
      {
        *(v18 + v44) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v50 - 2) = v18;
        *(&v50 - 8) = 1;
        v61 = v18;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v47 = v57;
      if (v43 == 1)
      {
        (*(v52 + 56))(v57, 1, 1, v42);
        v48 = v54;
      }

      else
      {
        v48 = v54;
        v51(v45);
      }

      v49 = swift_getKeyPath();
      __chkstk_darwin(v49);
      *(&v50 - 2) = v18;
      *(&v50 - 1) = v47;
      v61 = v18;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      sub_100B32A58(v48, v58, v55, v56, 1);

      v37 = v47;
    }

    return sub_1000095E8(v37, &qword_1011B1810);
  }

  return result;
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  v1 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B31D14(v0, v3, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100B31D7C(v3, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v4 = *v3;
  v5 = v3[32];
  v6 = *(sub_10010FC20(&qword_1011B17F8) + 48);
  v7 = type metadata accessor for Song();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_100B25B54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011B1E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v79[-v5];
  v7 = type metadata accessor for ScenePhase();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v85);
  v93 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10010FC20(&qword_1011B1810);
  __chkstk_darwin(v10 - 8);
  v88 = &v79[-v11];
  v12 = sub_10010FC20(&qword_1011B1808);
  __chkstk_darwin(v12 - 8);
  v87 = &v79[-v13];
  v100 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v100);
  v90 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v79[-v16];
  v18 = type metadata accessor for Logger();
  v96 = *(v18 - 8);
  v97 = v18;
  __chkstk_darwin(v18);
  v20 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v99);
  v86 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v79[-v23];
  __chkstk_darwin(v25);
  v27 = &v79[-v26];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v102[3] = v2;
  v29 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  v89 = v28;
  v94 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v98 = v30;
  sub_100B31D14(v30, v27, type metadata accessor for Lyrics.StateManager.State);
  v95 = a1;
  LOBYTE(v30) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v27, a1);
  result = sub_100B31D7C(v27, type metadata accessor for Lyrics.StateManager.State);
  if ((v30 & 1) == 0)
  {
    v83 = v7;
    v84 = v6;
    v32 = Logger.lyrics.unsafeMutableAddressor();
    (*(v96 + 16))(v20, v32, v97);
    sub_100B31D14(v95, v24, type metadata accessor for Lyrics.StateManager.State);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v35 = 136446466;
      sub_100B31D14(v24, v27, type metadata accessor for Lyrics.StateManager.State);
      v36 = String.init<A>(describing:)();
      v81 = v33;
      v37 = v36;
      v80 = v34;
      v39 = v38;
      sub_100B31D7C(v24, type metadata accessor for Lyrics.StateManager.State);
      v40 = sub_100010744(v37, v39, v102);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      swift_getKeyPath();
      v101 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = v98;
      sub_100B31D14(v98, v27, type metadata accessor for Lyrics.StateManager.State);
      v42 = String.init<A>(describing:)();
      v44 = sub_100010744(v42, v43, v102);

      *(v35 + 14) = v44;
      v45 = v81;
      _os_log_impl(&_mh_execute_header, v81, v80, "[State] changed from %{public}s to %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v96 + 8))(v20, v97);
    }

    else
    {

      sub_100B31D7C(v24, type metadata accessor for Lyrics.StateManager.State);
      (*(v96 + 8))(v20, v97);
      v41 = v98;
    }

    swift_getKeyPath();
    v102[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v86;
    sub_100B31D14(v41, v86, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v46, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v46, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v17;
      v48 = v17[32];
      v49 = *(sub_10010FC20(&qword_1011B17F8) + 48);
      v50 = type metadata accessor for Song();
      (*(*(v50 - 8) + 8))(&v17[v49], v50);
      if (v48)
      {
        v51 = v90;
        v52 = v88;
        if (v47)
        {
          v53 = *(*v47 + 288);

          v55 = v87;
          v53(v54);

          v56 = type metadata accessor for Lyrics.Translation(0);
          v57 = 1;
          v58 = (*(*(v56 - 8) + 48))(v55, 1, v56);
          sub_1000095E8(v55, &qword_1011B1808);
          if (v58 != 1)
          {
            goto LABEL_17;
          }

          v59 = *(*v47 + 312);

          v59(v60);

          v61 = type metadata accessor for Lyrics.Transliteration(0);
          v57 = 1;
          if ((*(*(v61 - 8) + 48))(v52, 1, v61) != 1)
          {
LABEL_16:
            sub_1000095E8(v52, &qword_1011B1810);
LABEL_17:
            v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v57 == *(v2 + v65))
            {
              *(v2 + v65) = v57;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              *&v79[-16] = v2;
              v79[-8] = v57;
              v101 = v2;
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            v67 = v84;
            swift_getKeyPath();
            v101 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v68 = v98;
            sub_100B31D14(v98, v51, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v101 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v69 = v68 + *(v99 + 20);
            v70 = v93;
            sub_100B31D14(v69, v93, type metadata accessor for Lyrics.StateManager.State.Display);
            v72 = v91;
            v71 = v92;
            v73 = v83;
            (*(v92 + 104))(v91, enum case for ScenePhase.active(_:), v83);
            v74 = static ScenePhase.== infix(_:_:)();
            (*(v71 + 8))(v72, v73);
            if ((v74 & 1) != 0 && v70[*(v85 + 20)] == 1)
            {
              v75 = v70[*(v85 + 24)];
            }

            else
            {
              v75 = 0;
            }

            sub_100B31D7C(v70, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_100B32E78(v51, v67);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_100B32A58(*v67, *(v67 + 8), *(v67 + 16), *(v67 + 24), *(v67 + 32));
                v77 = *(sub_10010FC20(&qword_1011B17F8) + 48);
                v78 = type metadata accessor for Song();
                (*(*(v78 - 8) + 8))(v67 + v77, v78);
                if (v75)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_100B31D7C(v67, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_100B2F81C(v95);
LABEL_30:
            sub_100B2EEF8();
          }

LABEL_15:
          v57 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v62 = type metadata accessor for Lyrics.Translation(0);
        v63 = v87;
        (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
        sub_1000095E8(v63, &qword_1011B1808);
        v64 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v64 - 8) + 56))(v52, 1, 1, v64);
        goto LABEL_15;
      }

      v51 = v90;
    }

    else
    {
      sub_100B31D7C(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v51 = v90;
    }

    v52 = v88;
    goto LABEL_14;
  }

  return result;
}

void (*sub_100B26860(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_100B31D14(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_100B26988;
}

void sub_100B26988(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_100B31D14(*(*a1 + 96), v6, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v5);
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_100B31D14(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v6);
  }

  sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State);
  sub_100B31D7C(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_100B31D14(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100B26BD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_100B31D14(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100B26CB0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B31D14(a1, v4, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v4);
}

uint64_t sub_100B26D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_100B31D14(a2, &v12[-v8], type metadata accessor for Lyrics.StateManager.State);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_100B31D14(a1 + v10, v6, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_100B32284(v9, a1 + v10, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_100B25B54(v6);
  sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State);
  return sub_100B31D7C(v9, type metadata accessor for Lyrics.StateManager.State);
}

void (*Lyrics.StateManager.state.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B26860(v4);
  return sub_100B26FCC;
}

uint64_t sub_100B26FD8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B1810);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v60 = v55 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v55 - v9;
  __chkstk_darwin(v8);
  v12 = v55 - v11;
  v13 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v16 - 8);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v65 = v1;
  v61 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  v62 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = [v21 vocalsControlCommand];
    if (v22)
    {
      v23 = [v22 isActive];
      swift_unknownObjectRelease();
      if (v23)
      {
        swift_getKeyPath();
        v64 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_100B31D14(v1 + v24, v18, type metadata accessor for Lyrics.StateManager.State);
        sub_100B31D14(v18, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_100B31D7C(v18, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v15;
          v26 = *(v15 + 1);
          v27 = *(v15 + 3);
          v58 = *(v15 + 2);
          v59 = v27;
          v28 = v15[32];
          v29 = *(sub_10010FC20(&qword_1011B17F8) + 48);
          v30 = type metadata accessor for Song();
          v31 = (*(*(v30 - 8) + 8))(&v15[v29], v30);
          if (v28 == 1)
          {
            v57 = v26;
            v32 = (*v25 + 312);
            v56 = *v32;
            v55[1] = v32;
            v56(v31);
            v33 = type metadata accessor for Lyrics.Transliteration(0);
            v34 = *(*(v33 - 8) + 48);
            if (v34(v12, 1, v33) == 1)
            {
              sub_100B32A58(v25, v57, v58, v59, 1);
              sub_1000095E8(v12, &qword_1011B1810);
            }

            else
            {
              v55[0] = v25;
              sub_1000095E8(v12, &qword_1011B1810);
              swift_getKeyPath();
              v64 = v1;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v46 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_1000089F8(v1 + v46, v10, &qword_1011B1810);
              v47 = v34(v10, 1, v33);
              v48 = v57;
              if (v47 == 1)
              {
                sub_1000095E8(v10, &qword_1011B1810);
                v49 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v49) = v49(2);

                v52 = v58;
                v51 = v59;
                if ((v49 & 1) == 0)
                {
                  v44 = v60;
                  v53 = v55[0];
                  v56(v50);
                  KeyPath = swift_getKeyPath();
                  __chkstk_darwin(KeyPath);
                  v55[-2] = v1;
                  v55[-1] = v44;
                  v64 = v1;
                  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                  sub_100B32A58(v53, v48, v52, v51, 1);
                  goto LABEL_16;
                }

                sub_100B32A58(v55[0], v48, v58, v59, 1);
              }

              else
              {
                sub_100B32A58(v55[0], v57, v58, v59, 1);
                sub_1000095E8(v10, &qword_1011B1810);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_100B31D7C(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v64 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v1 + v35, v5, &qword_1011B1810);
  v36 = type metadata accessor for Lyrics.Transliteration(0);
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v5, 1, v36);
  result = sub_1000095E8(v5, &qword_1011B1810);
  if (v38 != 1)
  {
    v40 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v40) = v40(1);

    if ((v40 & 1) == 0)
    {
      swift_getKeyPath();
      v63 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *(v1 + v20);
      if (!v41 || (v42 = [v41 vocalsControlCommand]) == 0 || (v43 = objc_msgSend(v42, "isActive"), result = swift_unknownObjectRelease(), (v43 & 1) == 0))
      {
        v44 = v60;
        (*(v37 + 56))(v60, 1, 1, v36);
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v55[-2] = v1;
        v55[-1] = v44;
        v63 = v1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
LABEL_16:

        return sub_1000095E8(v44, &qword_1011B1810);
      }
    }
  }

  return result;
}

uint64_t (*sub_100B278B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100B27918;
}

uint64_t sub_100B27918(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100B26FD8();
  }

  return result;
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_100B27A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009F78(0, &qword_1011B1800);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_100B26FD8();
}

uint64_t sub_100B27C94(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  return sub_100B26FD8();
}

void (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B278B4(v4);
  return sub_100B27E44;
}

uint64_t sub_100B27E50(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_10010FC20(&qword_1011B16C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v41 = v2;
  v19 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  v38 = v18;
  v39 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(&v2[v20], v11, &qword_1011B16C8);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_1011B16C8);
  }

  else
  {
    v35 = v5;
    v22 = *(v13 + 32);
    v22(v17, v11, v12);
    sub_1000089F8(v37, v8, &qword_1011B16C8);
    if (v21(v8, 1, v12) == 1)
    {
      (*(v13 + 8))(v17, v12);
      sub_1000095E8(v8, &qword_1011B16C8);
    }

    else
    {
      v23 = v36;
      v22(v36, v8, v12);
      sub_100B32BB0(&qword_1011B1DE0, &type metadata accessor for Song);
      if (static MusicItem<>.==~ infix(_:_:)())
      {
        v24 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v17);
        v25 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v23);
        v26 = *(v13 + 8);
        v26(v23, v12);
        result = (v26)(v17, v12);
        v5 = v35;
        if (((v24 ^ v25) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v28 = *(v13 + 8);
      v28(v23, v12);
      v28(v17, v12);
    }

    v5 = v35;
  }

LABEL_10:
  swift_getKeyPath();
  v40 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    Task.cancel()();
    if (*&v2[v29])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v35 - 2) = v2;
      *(&v35 - 1) = 0;
      v40 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  type metadata accessor for MainActor();

  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v2;
  sub_100B284E0(0, 0, v5, &unk_100F01188, v33);

  sub_100B2B790(v34);
}

uint64_t sub_100B28434()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_100B2BB9C();
}

uint64_t sub_100B284E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000089F8(a3, v25 - v10, &qword_1011B62E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000095E8(v11, &qword_1011B62E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000095E8(a3, &qword_1011B62E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011B62E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100B287E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000089F8(a3, v25 - v10, &qword_1011B62E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000095E8(v11, &qword_1011B62E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10010FC20(&qword_1011B1DE8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000095E8(a3, &qword_1011B62E0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011B62E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&qword_1011B1DE8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100B28AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000089F8(a3, v25 - v10, &qword_1011B62E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000095E8(v11, &qword_1011B62E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10010FC20(&unk_1011B4540);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000095E8(a3, &qword_1011B62E0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011B62E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10010FC20(&unk_1011B4540);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void (*sub_100B28E08(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B16C8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_1011B16C8);
  return sub_100B28F38;
}

void sub_100B28F38(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1000089F8(*(*a1 + 96), v6, &qword_1011B16C8);
    sub_1000089F8(v7 + v4, v5, &qword_1011B16C8);
    swift_beginAccess();
    sub_1002190E0(v6, v7 + v4, &qword_1011B16C8);
    swift_endAccess();
    sub_100B27E50(v5);
    sub_1000095E8(v5, &qword_1011B16C8);
  }

  else
  {
    sub_1000089F8(v7 + v4, v6, &qword_1011B16C8);
    swift_beginAccess();
    sub_1002190E0(v3, v7 + v4, &qword_1011B16C8);
    swift_endAccess();
    sub_100B27E50(v6);
  }

  sub_1000095E8(v6, &qword_1011B16C8);
  sub_1000095E8(v3, &qword_1011B16C8);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_100B290D0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B16C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000089F8(a1, &v6 - v3, &qword_1011B16C8);
  return Lyrics.StateManager.song.setter(v4);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011B16C8);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011B16C8);
  v10 = sub_100B31DF8(v8, a1);
  sub_1000095E8(v8, &qword_1011B16C8);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v8, &qword_1011B16C8);
    sub_1000089F8(v1 + v9, v5, &qword_1011B16C8);
    swift_beginAccess();
    sub_1002190E0(v8, v1 + v9, &qword_1011B16C8);
    swift_endAccess();
    sub_100B27E50(v5);
    sub_1000095E8(v5, &qword_1011B16C8);
    sub_1000095E8(v8, &qword_1011B16C8);
  }

  return sub_1000095E8(a1, &qword_1011B16C8);
}

uint64_t sub_100B293E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B16C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_1000089F8(a2, &v12[-v8], &qword_1011B16C8);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(a1 + v10, v6, &qword_1011B16C8);
  swift_beginAccess();
  sub_1002190E0(v9, a1 + v10, &qword_1011B16C8);
  swift_endAccess();
  sub_100B27E50(v6);
  sub_1000095E8(v6, &qword_1011B16C8);
  return sub_1000095E8(v9, &qword_1011B16C8);
}

void (*Lyrics.StateManager.song.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B28E08(v4);
  return sub_100B2967C;
}

void (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29688();
  return sub_100B29834;
}

uint64_t sub_100B298B4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_100B29968@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29840();
  return sub_100B29B68;
}

void (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29B74();
  return sub_100B29D60;
}

uint64_t sub_100B29DF0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1000089F8(v9 + v7, a3, a2);
}

uint64_t sub_100B29ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v7 + v8, a4, a3);
}

void (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29D6C();
  return sub_100B2A11C;
}

uint64_t sub_100B2A1AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_10010FC20(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  sub_1000089F8(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v10, a5);
}

uint64_t sub_100B2A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(a1, a4);
}

void (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B2A128();
  return sub_100B2A538;
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_100B284E0(0, 0, v4, &unk_100F00E00, v7);
}

uint64_t sub_100B2A668()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_100B2BB9C();
}

uint64_t sub_100B2A714()
{
  v1 = type metadata accessor for ScenePhase();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B4900);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v28 = type metadata accessor for Lyrics.StateManager.State(0);
  v11 = *(v28 + 24);
  sub_1000089F8(v0 + v11, v10, &qword_1011B4900);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v10, 1, v12);
  v15 = v10;
  v16 = v0;
  sub_1000095E8(v15, &qword_1011B4900);
  if (v14 == 1)
  {
    sub_100B31D14(v0, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100B32A58(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), v5[32]);
      v17 = *(sub_10010FC20(&qword_1011B17F8) + 48);
      v18 = type metadata accessor for Song();
      (*(*(v18 - 8) + 8))(&v5[v17], v18);
      v19 = v29;
      v20 = v0 + *(v28 + 20);
      v22 = v30;
      v21 = v31;
      (*(v30 + 104))(v29, enum case for ScenePhase.active(_:), v31);
      LOBYTE(v17) = static ScenePhase.== infix(_:_:)();
      (*(v22 + 8))(v19, v21);
      if (v17)
      {
        v23 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v20 + *(v23 + 20)) == 1 && *(v20 + *(v23 + 24)) == 1)
        {
          v24 = v27;
          static Date.now.getter();
          (*(v13 + 56))(v24, 0, 1, v12);
          return sub_100B32D10(v24, v16 + v11);
        }
      }
    }

    else
    {
      sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_1000095E8(v16 + v11, &qword_1011B4900);
  return (*(v13 + 56))(v16 + v11, 1, 1, v12);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_100B31D14(v1, &v11 - v7, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B32284(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D14(v1, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  v9 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v5, v8);
  sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v9 & 1) == 0)
  {
    sub_100B2A714();
  }

  sub_100B31D7C(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_100B31D7C(v8, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_100B31D14(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_100B2AD84;
}

void sub_100B2AD84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    sub_100B31D14((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
    sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      sub_100B2A714();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    sub_100B31D7C(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    sub_100B31D14(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v17, v16);
    sub_100B31D7C(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      sub_100B2A714();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  sub_100B31D7C(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D7C(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_100B31D14(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_100B32284(a1, v1 + v9, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_100B31D14(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && v5[*(v3 + 20)] == v8[*(v3 + 20)])
  {
    v11 = v5[*(v3 + 24)];
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v11 == v8[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_100B2A714();
LABEL_5:
  sub_100B31D7C(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_100B31D7C(v8, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_100B31D14(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_100B2B228;
}

void sub_100B2B228(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100B31D14(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    sub_100B31D7C(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B31D14(v2, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0uLL;
  if (!result)
  {
    result = sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v10 = -1;
    v13 = 0uLL;
    goto LABEL_6;
  }

  v9 = *v6;
  v14 = *(v6 + 1);
  v15 = v9;
  v10 = v6[32];
  v11 = *(sub_10010FC20(&qword_1011B17F8) + 48);
  v12 = type metadata accessor for Song();
  result = (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = v14;
  v8 = v15;
LABEL_6:
  *a1 = v8;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100B2B69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100B2B71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

uint64_t sub_100B2B790(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_100B2B934()
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100B2B9D8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_100B2BA90()
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100B2BB9C()
{
  v1[74] = v0;
  sub_10010FC20(&qword_1011B1810);
  v1[75] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1808);
  v1[76] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_10010FC20(&qword_1011B16C8);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[119] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_100B2BF74, v5, v4);
}

uint64_t sub_100B2BF74()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &qword_1011B16C8);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_1000095E8(v7, &qword_1011B16C8);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[69] = v10;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_100B31D14(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_100B2A714();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_100B31D7C(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v13);
    sub_100B31D7C(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[55] = v24;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_100B31D14(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_100B2A714();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    sub_100B31D7C(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v30);
    sub_100B31D7C(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song);
      v60 = v44;
      v62 = v42;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_100010744(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      sub_10000959C(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_100B2CA3C;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_100B2CA3C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_100B2E178;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_100B2CB6C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100B2CB6C()
{
  v163 = v0;

  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10011895C(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000089F8(v8 + v5, v7, &qword_1011B16C8);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10011895C(v10, v9, v12 & 1);
    sub_1000095E8(v11, &qword_1011B16C8);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_100B32BB0(&qword_1011B1DE0, &type metadata accessor for Song);
  v13 = static MusicItem<>.==~ infix(_:_:)();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_10011895C(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_10021D0C0(v16, v15, v14 & 1);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_10011895C(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_100010744(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_10021D0C0(v23, v134, v132 & 1);
    v31 = String.init<A>(describing:)();
    v33 = sub_100010744(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(sub_10010FC20(&qword_1011B17F8) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100B31D14(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D14(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B32284(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_100B2A714();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_100B31D7C(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D7C(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D14(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_100B32284(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_100B25B54(v47);
      sub_100B31D7C(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D7C(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_10011895C(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(sub_10010FC20(&qword_1011B17F8) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_10021D0C0(v110, v133, 1);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100B31D14(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D14(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B32284(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_100B2A714();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_100B31D7C(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D7C(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D14(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_100B32284(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_100B25B54(v124);
      sub_100B31D7C(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D7C(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_10011895C(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(sub_10010FC20(&qword_1011B17F8) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_10021D0C0(v95, v136, 1);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100B31D14(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_100B2A714();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_100B31D7C(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v107);
    sub_100B31D7C(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000095E8(v70, &qword_1011B1808);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000095E8(v77, &qword_1011B1810);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(sub_10010FC20(&qword_1011B17F8) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  sub_100B31D14(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_100B31D14(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B32284(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_100B2A714();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_100B31D7C(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D7C(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D14(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_100B32284(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_100B25B54(v92);
  sub_100B31D7C(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_100B31D7C(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_10011895C(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_100B2E178()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song);
      v69 = v19;
      v71 = v15;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_100010744(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = String.init<A>(describing:)();
      v27 = sub_100010744(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100B31D14(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_100B2A714();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_100B31D7C(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v48);
    sub_100B31D7C(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_100010744(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = String.init<A>(describing:)();
      v41 = sub_100010744(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100B31D14(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_100B2A714();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_100B31D7C(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v63);
    sub_100B31D7C(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_100B2ED84(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_100B2EE34@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_100B2EEF8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B0C20);
  __chkstk_darwin(v2 - 8);
  v53 = &v47[-v3];
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&qword_1011B1818);
  __chkstk_darwin(v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = type metadata accessor for MetricsEvent.Page(0);
  v54 = *(*(v13 - 8) + 56);
  v54(v12, 1, 1, v13);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v57 = v1;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  v55 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_100B31D14(v1 + v15, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v6 + 1);
      v18 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v6[32] != 1)
      {
        sub_100B32A58(*v6, v17, v18, v19, 0);
        sub_1000095E8(v12, &qword_1011B1818);
        v23 = type metadata accessor for URL();
        v24 = *(*(v23 - 8) + 56);
        goto LABEL_24;
      }

      v49 = *v6;
      v50 = v17;
      v51 = v18;
      v52 = v19;
      swift_getKeyPath();
      *&v57 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v21 = *(v1 + v20);
      if (v21 && (v22 = [v21 vocalsControlCommand]) != 0)
      {
        v48 = [v22 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 1;
      }

      swift_getKeyPath();
      *&v57 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(v1 + v20);
      if (v25)
      {
        v26 = [v25 playingItem];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 metadataObject];

          if (v28)
          {
            v29 = [v28 innermostModelObject];

            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = [v30 lyrics];

              if (v31)
              {
                v32 = [v31 hasStoreLyrics];

                v33 = v32 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v57);
                sub_100014984(&v57);
                if (*(v49 + 56))
                {
                  v34 = (v58 == 1) & ~(v48 | v33);
                  if (*(v49 + 56) == 1)
                  {
                    sub_100B32A58(v49, v50, v51, v52, 1);
                    sub_1000095E8(v12, &qword_1011B1818);
                    v35 = type metadata accessor for URL();
                    v36 = v53;
                    (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
                    v37 = 0x8000000100E51C70;
                    v46 = v34;
                    v38 = v9;
                    v39 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_100B32A58(v49, v50, v51, v52, 1);
                    sub_1000095E8(v12, &qword_1011B1818);
                    v41 = type metadata accessor for URL();
                    v36 = v53;
                    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
                    v46 = v34;
                    v39 = 0x795373636972794CLL;
                    v37 = 0xEE00656C62616C6CLL;
                    v38 = v9;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v39, v37, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v38, 1, 0, 0, v46);
                  goto LABEL_27;
                }

                sub_100B32A58(v49, v50, v51, v52, 1);
                sub_1000095E8(v12, &qword_1011B1818);
                v23 = type metadata accessor for URL();
                v24 = *(*(v23 - 8) + 56);
LABEL_24:
                v40 = v53;
                v24(v53, 1, 1, v23);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v40, 0, 0, 0, v9, 1, 0, 0, 2);
LABEL_27:
                v54(v9, 0, 1, v13);
                sub_100B32B00(v9, v12);
                v42 = *(sub_10010FC20(&qword_1011B17F8) + 48);
                v43 = type metadata accessor for Song();
                (*(*(v43 - 8) + 8))(&v6[v42], v43);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v33 = 1;
      goto LABEL_20;
    }

    sub_1000095E8(v12, &qword_1011B1818);
  }

  else
  {
    sub_1000095E8(v12, &qword_1011B1818);
    sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v54(v12, 1, 1, v13);
LABEL_28:
  sub_1000089F8(v12, v9, &qword_1011B1818);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v56 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v12, &qword_1011B1818);
  return sub_1000095E8(v9, &qword_1011B1818);
}

uint64_t sub_100B2F81C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1DC8);
  __chkstk_darwin(v2 - 8);
  v170 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v171 = &v162 - v5;
  v6 = sub_10010FC20(&qword_1011B1738);
  __chkstk_darwin(v6 - 8);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v162 - v10;
  v12 = sub_10010FC20(&qword_1011B1810);
  __chkstk_darwin(v12 - 8);
  v177 = &v162 - v13;
  v14 = sub_10010FC20(&qword_1011B1808);
  __chkstk_darwin(v14 - 8);
  v176 = &v162 - v15;
  v16 = sub_10010FC20(&qword_1011B16C8);
  __chkstk_darwin(v16 - 8);
  v175 = &v162 - v17;
  v188 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v188);
  v189 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v187 = &v162 - v20;
  __chkstk_darwin(v21);
  v173 = &v162 - v22;
  v192 = type metadata accessor for Logger();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v162 - v25;
  __chkstk_darwin(v26);
  v174 = &v162 - v27;
  v28 = sub_10010FC20(&qword_1011B4900);
  __chkstk_darwin(v28 - 8);
  v180 = &v162 - v29;
  v184 = type metadata accessor for Date();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for ScenePhase();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v33);
  v35 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Song();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_100B31D14(a1, v35, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100B31D7C(v35, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v56 = v192;
    v55 = v190;
LABEL_12:
    v57 = Logger.lyrics.unsafeMutableAddressor();
    v58 = v191;
    (*(v55 + 16))(v191, v57, v56);
    v59 = v189;
    sub_100B31D14(v40, v189, type metadata accessor for Lyrics.StateManager.State);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v55;
      v64 = swift_slowAlloc();
      v196 = v64;
      *v62 = 136446210;
      sub_100B31D14(v59, v187, type metadata accessor for Lyrics.StateManager.State);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      sub_100B31D7C(v59, type metadata accessor for Lyrics.StateManager.State);
      v68 = sub_100010744(v65, v67, &v196);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "Skipping Reporting lyrics for state=%{public}s", v62, 0xCu);
      sub_10000959C(v64);

      return (*(v63 + 8))(v191, v192);
    }

    else
    {

      sub_100B31D7C(v59, type metadata accessor for Lyrics.StateManager.State);
      return (*(v55 + 8))(v58, v56);
    }
  }

  v163 = v11;
  v162 = v8;
  v41 = *(v35 + 1);
  v178 = *v35;
  v172 = v41;
  v42 = *(v35 + 2);
  v43 = *(v35 + 3);
  v44 = v35[32];
  v45 = sub_10010FC20(&qword_1011B17F8);
  (*(v37 + 32))(v39, &v35[*(v45 + 48)], v36);
  if ((Song.hasLyrics.getter() & 1) == 0)
  {
    (*(v37 + 8))(v39, v36);
    sub_100B32A58(v178, v172, v42, v43, v44);
    goto LABEL_11;
  }

  v164 = v42;
  v165 = v43;
  v167 = v44;
  v168 = v39;
  v166 = v37;
  v169 = v36;
  v46 = v40 + *(v188 + 20);
  v47 = v185;
  v48 = v186;
  (v185[13])(v32, enum case for ScenePhase.active(_:), v186);
  v49 = static ScenePhase.== infix(_:_:)();
  v47[1](v32, v48);
  if ((v49 & 1) == 0 || (v50 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v46 + *(v50 + 20)) != 1) || *(v46 + *(v50 + 24)) != 1)
  {
    sub_100B32A58(v178, v172, v164, v165, v167);
    (*(v166 + 8))(v168, v169);
    goto LABEL_11;
  }

  v51 = v180;
  sub_1000089F8(v40 + *(v188 + 24), v180, &qword_1011B4900);
  v52 = v183;
  v53 = v184;
  v54 = (*(v183 + 48))(v51, 1, v184);
  v55 = v190;
  if (v54 == 1)
  {
    (*(v166 + 8))(v168, v169);
    sub_100B32A58(v178, v172, v164, v165, v167);
    sub_1000095E8(v51, &qword_1011B4900);
    v56 = v192;
    goto LABEL_12;
  }

  (*(v52 + 32))(v182, v51, v53);
  v70 = Logger.lyrics.unsafeMutableAddressor();
  v71 = *(v55 + 16);
  v72 = v174;
  v186 = v70;
  v73 = v192;
  v185 = v71;
  v180 = v55 + 16;
  (v71)(v174);
  v74 = v173;
  sub_100B31D14(v40, v173, type metadata accessor for Lyrics.StateManager.State);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v196 = v78;
    *v77 = 136446210;
    sub_100B31D14(v74, v187, type metadata accessor for Lyrics.StateManager.State);
    v79 = String.init<A>(describing:)();
    v81 = v80;
    v73 = v192;
    sub_100B31D7C(v74, type metadata accessor for Lyrics.StateManager.State);
    v82 = v79;
    v55 = v190;
    v83 = sub_100010744(v82, v81, &v196);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Reporting lyrics for state=%{public}s", v77, 0xCu);
    sub_10000959C(v78);
  }

  else
  {

    sub_100B31D7C(v74, type metadata accessor for Lyrics.StateManager.State);
  }

  v188 = *(v55 + 8);
  (v188)(v72, v73);
  v84 = v165;
  Date.timeIntervalSinceNow.getter();
  v86 = -v85;
  v87 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v88 = v166;
  v89 = v175;
  v90 = v169;
  (*(v166 + 16))(v175, v168, v169);
  (*(v88 + 56))(v89, 0, 1, v90);
  MPCReportingLyricsViewEvent.song.setter();
  swift_getKeyPath();
  v91 = v181;
  v196 = v181;
  v189 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v92 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v93 = *(v91 + v92);
  if (v93)
  {
    v94 = v93;
    v95 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v95 = 0;
  }

  [v87 setModelPlayEvent:v95];

  [v87 setVisibleDuration:v86];
  swift_getKeyPath();
  v191 = v87;
  v96 = v181;
  v195[4] = v181;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v97 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v98 = v176;
  sub_1000089F8(v96 + v97, v176, &qword_1011B1808);
  v99 = type metadata accessor for Lyrics.Translation(0);
  v100 = (*(*(v99 - 8) + 48))(v98, 1, v99) != 1;
  sub_1000095E8(v98, &qword_1011B1808);
  [v191 setDisplayTranslationEnabled:v100];
  swift_getKeyPath();
  v195[1] = v96;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v101 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v102 = v96 + v101;
  v103 = v177;
  sub_1000089F8(v102, v177, &qword_1011B1810);
  v104 = type metadata accessor for Lyrics.Transliteration(0);
  v105 = (*(*(v104 - 8) + 48))(v103, 1, v104) != 1;
  v106 = v191;
  sub_1000095E8(v103, &qword_1011B1810);
  [v106 setDisplayTransliterationEnabled:v105];
  if (v167)
  {
    v107 = v178;
    v108 = v192;
    if (*(v178 + 24))
    {
      sub_100B32AA4(v178, v172, v164, v84, 1);

      v109 = String._bridgeToObjectiveC()();
    }

    else
    {

      v109 = 0;
    }

    v118 = v171;
    [v191 setLyricsID:v109];

    (*(*v107 + 232))();
    v119 = type metadata accessor for Locale.Language();
    v120 = *(v119 - 8);
    if ((*(v120 + 48))(v118, 1, v119) == 1)
    {
      sub_1000095E8(v118, &qword_1011B1DC8);
      v121 = 0;
      v122 = v164;
      v123 = v172;
    }

    else
    {
      v124 = v163;
      Locale.Language.languageCode.getter();
      (*(v120 + 8))(v118, v119);
      v125 = type metadata accessor for Locale.LanguageCode();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v124, 1, v125) == 1)
      {
        sub_1000095E8(v124, &qword_1011B1738);
        v121 = 0;
      }

      else
      {
        Locale.LanguageCode.identifier.getter();
        (*(v126 + 8))(v124, v125);
        v121 = String._bridgeToObjectiveC()();
      }

      v84 = v165;
      v122 = v164;
      v123 = v172;
      v108 = v192;
    }

    v106 = v191;
    [v191 setLanguage:v121];

    v130 = v178;
    [v106 setDisplayType:*(v178 + 56)];
    sub_100B32A58(v130, v123, v122, v84, 1);
    v110 = v179;
  }

  else
  {
    v110 = v179;
    v108 = v192;
    if (v84 && v84[3])
    {

      v111 = String._bridgeToObjectiveC()();
    }

    else
    {

      v111 = 0;
    }

    [v106 setLyricsID:v111];

    if (v84)
    {
      v112 = *(*v84 + 232);

      v114 = v170;
      v112(v113);

      v115 = type metadata accessor for Locale.Language();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        sub_1000095E8(v114, &qword_1011B1DC8);
        v117 = 0;
        v110 = v179;
        v108 = v192;
      }

      else
      {
        v127 = v162;
        Locale.Language.languageCode.getter();
        (*(v116 + 8))(v114, v115);
        v128 = type metadata accessor for Locale.LanguageCode();
        v129 = *(v128 - 8);
        if ((*(v129 + 48))(v127, 1, v128) == 1)
        {
          sub_1000095E8(v127, &qword_1011B1738);
          v117 = 0;
        }

        else
        {
          Locale.LanguageCode.identifier.getter();
          (*(v129 + 8))(v127, v128);
          v117 = String._bridgeToObjectiveC()();
        }

        v110 = v179;
        v84 = v165;
        v106 = v191;
        v108 = v192;
      }
    }

    else
    {
      v117 = 0;
    }

    [v106 setLanguage:v117];

    [v106 setDisplayType:0];
  }

  v131 = String._bridgeToObjectiveC()();
  [v106 setFeatureName:v131];

  [v106 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v132 = v181;
  v193 = v181;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v132 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v106];
  (v185)(v110, v186, v108);
  v133 = v106;
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v195[0] = swift_slowAlloc();
    *v136 = 136446978;
    v193 = [v133 displayType];
    _s3__C38MPCReportingLyricsViewEventDisplayTypeOMa_0(0);
    v137 = String.init<A>(describing:)();
    v139 = sub_100010744(v137, v138, v195);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2082;
    v140 = [v133 lyricsID];
    if (v140)
    {
      v141 = v140;
      v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v143;
    }

    else
    {
      v142 = 0;
      v144 = 0;
    }

    v193 = v142;
    v194 = v144;
    sub_10010FC20(&qword_1011B7770);
    v147 = String.init<A>(describing:)();
    v149 = sub_100010744(v147, v148, v195);

    *(v136 + 14) = v149;
    *(v136 + 22) = 2082;
    [v133 visibleDuration];
    v150 = Double.description.getter();
    v152 = sub_100010744(v150, v151, v195);

    *(v136 + 24) = v152;
    *(v136 + 32) = 2082;
    v153 = [v133 modelSong];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 humanDescription];

      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v158 = v157;
    }

    else
    {
      v156 = 0;
      v158 = 0;
    }

    v193 = v156;
    v194 = v158;
    v159 = String.init<A>(describing:)();
    v161 = sub_100010744(v159, v160, v195);

    *(v136 + 34) = v161;
    _os_log_impl(&_mh_execute_header, v134, v135, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v136, 0x2Au);
    swift_arrayDestroy();

    sub_100B32A58(v178, v172, v164, v165, v167);
    v145 = v179;
    v146 = v192;
  }

  else
  {

    sub_100B32A58(v178, v172, v164, v84, v167);
    v145 = v110;
    v146 = v108;
  }

  (v188)(v145, v146);
  (*(v183 + 8))(v182, v184);
  return (*(v166 + 8))(v168, v169);
}