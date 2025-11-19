uint64_t sub_10037D984(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v62 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_28:
      v5 = v6;
      goto LABEL_56;
    }

    v14 = &selRef_initWithString_color_;
    v56 = v4;
    while (1)
    {
      v58 = v6;
      v60 = v5;
      v15 = *v13;
      v16 = *v5;
      v17 = v15;
      v18 = [v16 v14[337]];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = v14;
      v24 = [v17 v14[337]];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v20 != v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_21;
        }
      }

      if (v22 == v28)
      {

LABEL_24:
        v31 = v13;
        v30 = v58;
        v5 = v60;
        v33 = v58 == v13++;
        v32 = v56;
        if (v33)
        {
          goto LABEL_26;
        }

LABEL_25:
        *v30 = *v31;
        goto LABEL_26;
      }

LABEL_21:
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      v30 = v58;
      v31 = v60;
      v5 = v60 + 1;
      v32 = v56;
      if (v58 != v60)
      {
        goto LABEL_25;
      }

LABEL_26:
      v6 = v30 + 1;
      if (v13 < v62)
      {
        v14 = v23;
        if (v5 < v32)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    v34 = a4;
    memmove(a4, __src, 8 * v12);
    a4 = v34;
  }

  v62 = &a4[v12];
  v13 = a4;
  if (v10 >= 8 && v5 > v6)
  {
    v35 = &selRef_initWithString_color_;
    v55 = a4;
    v59 = v6;
LABEL_36:
    v61 = v5;
    v36 = v5 - 1;
    v37 = v4;
    v38 = v62;
    v57 = v5 - 1;
    while (1)
    {
      v39 = *--v38;
      v40 = *v36;
      v41 = v39;
      v42 = v40;
      v43 = [v41 v35[337]];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v42 v35[337]];
      if (v48)
      {
        v49 = v48;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        if (v45 != v50)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v52 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_47;
        }
      }

      if (v47 != v52)
      {
LABEL_47:
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = (v37 - 8);
        if (v53)
        {
          v13 = v55;
          v35 = &selRef_initWithString_color_;
          if (v37 != v61)
          {
            *v4 = *v57;
          }

          if (v62 <= v55 || (v5 = v57, v57 <= v59))
          {
            v5 = v57;
            break;
          }

          goto LABEL_36;
        }

        goto LABEL_48;
      }

      v4 = (v37 - 8);
LABEL_48:
      v13 = v55;
      v36 = v57;
      v35 = &selRef_initWithString_color_;
      if (v62 != v37)
      {
        *v4 = *v38;
      }

      v62 = v38;
      v37 = v4;
      if (v38 <= v55)
      {
        v62 = v38;
        v5 = v61;
        break;
      }
    }
  }

LABEL_56:
  if (v5 != v13 || v5 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v62 - v13));
  }

  return 1;
}

uint64_t *sub_10037DDE0@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *result;
  if (*result >= a2[2] && v3 < a2[3] >> 1)
  {
    v5 = *(a2[1] + 16 * v3);
    *a3 = v5;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037DE34(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v38 = _swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = a1 + 32; ; i += 64)
  {
    sub_10019CEEC(i, &v34);
    v6 = *(&v34 + 1);
    v5 = v35;

    v8 = sub_100297040(v6, v5);
    v9 = v1[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      break;
    }

    v12 = v7;
    if (v1[3] < v11)
    {
      sub_100127DA8(v11, 1);
      v1 = v38;
      v13 = sub_100297040(v6, v5);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

      v8 = v13;
    }

    if (v12)
    {

      v15 = v1[7];
      v30 = v34;
      v31 = v35;
      v32 = v36;
      v33 = v37;
      v16 = *(v15 + 8 * v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 8 * v8) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100357D18(0, *(v16 + 2) + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_100357D18((v18 > 1), v19 + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      *(v16 + 2) = v19 + 1;
      v4 = &v16[64 * v19];
      *(v4 + 4) = v32;
      *(v4 + 5) = v33;
      *(v4 + 2) = v30;
      *(v4 + 3) = v31;
    }

    else
    {
      sub_1000CE6B8(&unk_10191C280);
      v20 = swift_allocObject();
      v21 = v34;
      v22 = v35;
      v20[1] = xmmword_1011E1D30;
      v20[2] = v21;
      v23 = v36;
      v24 = v37;
      v20[3] = v22;
      v20[4] = v23;
      v20[5] = v24;
      v1[(v8 >> 6) + 8] |= 1 << v8;
      v25 = (v1[6] + 16 * v8);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v8) = v20;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10037E080(uint64_t a1)
{
  sub_1000D2DFC(a1, v12, &unk_101908380);
  if (!v13)
  {
    sub_100024F64(v12, &unk_101908380);
    goto LABEL_9;
  }

  sub_100014C84(0, &qword_101917320);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v2 = *&v11[0];
  v3 = OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommandsToHandlers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
LABEL_8:

    goto LABEL_9;
  }

  v5 = sub_10005EBA4(*&v11[0]);
  if ((v6 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_10005EB40(*(v4 + 56) + 40 * v5, v11);

  sub_10005E7BC(v11, v12);
  v7 = v13;
  v8 = v14;
  sub_10005E838(v12, v13);
  v9 = (*(v8 + 16))(v7, v8);

  sub_10004E3D0(v12);
  return v9 & 1;
}

void sub_10037E1E4(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 canStartNewDrag];

  if (!v5)
  {
    return;
  }

  v6 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (!*&v25[0])
  {
    goto LABEL_13;
  }

  if (!*(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
  {

LABEL_13:
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    goto LABEL_14;
  }

  v7 = *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  sub_100368890(*&v25[0], 2, 0, 2, v7, &v26);

  if (!v26)
  {
LABEL_14:
    sub_100024F64(&v26, &qword_101916000);
    return;
  }

  v29[0] = v26;
  v29[1] = v27;
  v29[2] = v28;
  sub_1000D2DFC(v29 + 8, v25, &unk_10191C220);
  sub_10005E7BC(v25, &v26);
  v8 = *(&v27 + 1);
  v9 = v28;
  sub_10005E838(&v26, *(&v27 + 1));
  v10 = (*(v9 + 48))(v8, v9);
  if (!v10)
  {
    sub_10019D044(v29);
    sub_10004E3D0(&v26);
    return;
  }

  v11 = v10;
  [v10 setObserver:v2];
  v12 = *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragItem);
  *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragItem) = v11;
  v13 = v11;

  v14 = [v13 analyticsHelper];
  v15 = [v14 actionDetails];

  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = IndexPath.item.getter();
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  [v15 setResultIndex:v16];

  v17 = v13;
  v18 = [a1 traitCollection];
  v19 = [objc_allocWithZone(DragAndDropPreview) initWithDragAndDropMapItem:v17 traitCollection:v18];

  v20 = *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragPreviewView);
  *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragPreviewView) = v19;
  v21 = v19;

  if (v21)
  {
    [v21 setContentUpdateDelegate:v2];
  }

  v22 = [v17 itemProvider];
  v23 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v22];

  sub_1000CE6B8(&qword_101908400);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1011E47B0;
  *(v24 + 32) = v23;

  sub_10019D044(v29);
  sub_10004E3D0(&v26);
}

void sub_10037E564()
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController_dragItem;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragItem);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 analyticsHelper];
    v5 = [objc_opt_self() sharedService];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v4 eventValue];
    v8 = [v4 actionDetails];
    [v6 captureUserAction:17003 onTarget:8 eventValue:v7 placeActionDetails:v8];
  }

  *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_currentDragSession) = 0;
  swift_unknownObjectRelease();
  v9 = *(v0 + v1);
  *(v0 + v1) = 0;

  v10 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragPreviewView);
  *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragPreviewView) = 0;

  v11 = [objc_opt_self() sharedManager];
  [v11 setDragSession:0];
}

unint64_t sub_10037E6E4()
{
  result = qword_10191C230;
  if (!qword_10191C230)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C230);
  }

  return result;
}

void *sub_10037E7A4(void *result)
{
  if (result)
  {
  }

  return result;
}

void sub_10037E8C8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v15 = sub_10037F46C;
  v16 = v2;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100271778;
  v14 = &unk_101614598;
  v3 = _Block_copy(&v11);
  v4 = v0;

  v5 = [v4 addSectionWithTitle:v1 content:v3];
  _Block_release(v3);

  v6 = String._bridgeToObjectiveC()();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v15 = sub_10037F474;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100271778;
  v14 = &unk_1016145E8;
  v8 = _Block_copy(&v11);
  v9 = v4;

  v10 = [v9 addSectionWithTitle:v6 content:v8];
  _Block_release(v8);
}

void sub_10037EB00(void *a1)
{
  HasValue = _GEOConfigHasValue();
  if (a1)
  {
    v3 = HasValue;
    v4 = String._bridgeToObjectiveC()();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v20 = sub_10037F4A4;
    v21 = v5;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10037EE08;
    v19 = &unk_101614778;
    v6 = _Block_copy(&v16);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_10037F4AC;
    v21 = v7;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1002ABAC8;
    v19 = &unk_1016147A0;
    v8 = _Block_copy(&v16);

    v9 = [a1 addSwitchRowWithTitle:v4 get:v6 set:v8];
    _Block_release(v8);
    _Block_release(v6);

    if (v3)
    {
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();
      v20 = sub_10037EE48;
      v21 = 0;
      v16 = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10037EE74;
      v19 = &unk_101614700;
      v12 = _Block_copy(&v16);
      v20 = sub_10037EEBC;
      v21 = 0;
      v16 = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10037EED4;
      v19 = &unk_101614728;
      v13 = _Block_copy(&v16);
      LODWORD(v14) = 1119092736;
      v15 = [a1 addSliderRowWithTitle:v10 subtitleStringFormat:v11 min:v12 max:v13 get:0.0 set:v14];
      _Block_release(v13);
      _Block_release(v12);
    }
  }
}

uint64_t sub_10037EE08(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

float sub_10037EE74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10037EED4(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

void sub_10037EF28(void *a1)
{
  HasValue = _GEOConfigHasValue();
  if (a1)
  {
    v3 = HasValue;
    v4 = String._bridgeToObjectiveC()();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v21 = sub_10037F4F8;
    v22 = v5;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10037EE08;
    v20 = &unk_101614688;
    v6 = _Block_copy(&v17);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_10037F47C;
    v22 = v7;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1002ABAC8;
    v20 = &unk_1016146D8;
    v8 = _Block_copy(&v17);

    v9 = [a1 addSwitchRowWithTitle:v4 get:v6 set:v8];
    _Block_release(v8);
    _Block_release(v6);

    if (v3)
    {
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();
      v21 = sub_10037F298;
      v22 = 0;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10037EE74;
      v20 = &unk_101614610;
      v12 = _Block_copy(&v17);
      v21 = sub_10037F2C4;
      v22 = 0;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10037EED4;
      v20 = &unk_101614638;
      v13 = _Block_copy(&v17);
      LODWORD(v14) = 1.0;
      LODWORD(v15) = 20.0;
      v16 = [a1 addSliderRowWithTitle:v10 subtitleStringFormat:v11 min:v12 max:v13 get:v14 set:v15];
      _Block_release(v13);
      _Block_release(v12);
    }
  }
}

void sub_10037F21C(char a1)
{
  if (a1)
  {
    GEOConfigSetDouble();
  }

  else
  {
    _GEOConfigRemoveValue();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong rebuildSections];
  }
}

uint64_t sub_10037F520()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10037F594()
{
  v1 = OBJC_IVAR____TtC4Maps26IncidentReportingViewModel__trafficIncidentLayoutItems;
  v2 = sub_1000CE6B8(&qword_101919440);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10037F63C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IncidentReportingViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t TrafficIncidentLayoutItem.richTextViews.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_1019157F0);
  v6 = swift_allocObject();
  v10 = xmmword_1011E1D30;
  *(v6 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  (*(v3 + 104))(v5, enum case for RichTextType.title(_:), v2);
  v8 = [v1 displayText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v5, v2);
  *(v6 + 32) = v7;
  return v6;
}

id TrafficIncidentLayoutItem.imageProvider.getter@<X0>(void *a1@<X8>)
{
  result = [v1 displayImage];
  v4 = result;
  if (result)
  {
    v5 = sub_100014C84(0, &qword_10190AB90);
    result = sub_100059514(&qword_10190DE60, &qword_10190AB90);
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

id sub_10037F9A0@<X0>(void *a1@<X8>)
{
  result = [*v1 displayImage];
  v4 = result;
  if (result)
  {
    v5 = sub_100014C84(0, &qword_10190AB90);
    result = sub_100059514(&qword_10190DE60, &qword_10190AB90);
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

uint64_t sub_10037FA74@<X0>(uint64_t *a1@<X8>)
{
  sub_100014C84(0, &qword_101919470);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for IncidentReportingViewModel()
{
  result = qword_10191C3A8;
  if (!qword_10191C3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10037FB1C()
{
  sub_10030EE10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10037FBAC()
{
  sub_1000CE6B8(&qword_10191C588);
  sub_10038237C();
  return Section<>.init(content:)();
}

uint64_t sub_10037FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  sub_1000CE6B8(&qword_101919438);
  type metadata accessor for NavigationCell();
  sub_1000414C8(&qword_1019194B0, &qword_101919438);
  sub_100381A5C(&qword_10190A030, &type metadata accessor for NavigationCell);
  sub_100059514(&qword_10191C370, &qword_101919470);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10037FDEC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  sub_100014C84(0, &qword_101919470);
  sub_100059514(&qword_10191C5A8, &qword_101919470);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = v9;
  v11 = v9;

  return NavigationCell.init(model:tapHandler:)();
}

uint64_t sub_10037FEF4()
{
  v1 = sub_1000CE6B8(&qword_10191C550);
  __chkstk_darwin(v1);
  v3 = &v11[-v2];
  v4 = sub_1000CE6B8(&qword_10191C558);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = v0[3];
  v12 = *v0;
  v13 = *(v0 + 1);
  v14 = v8;
  sub_1000CE6B8(&qword_10191C560);
  sub_100382260();
  List<>.init(content:)();
  v9 = sub_100382430();
  View.listHasStackBehavior()();
  sub_100024F64(v3, &qword_10191C550);
  v15 = v1;
  v16 = v9;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_100380244(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = [v1 cardPresentationController];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setHideGrabber:1];

  if (*&v1[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_viewModel])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v8 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();

      if (v7)
      {
        return;
      }
    }

    else
    {
      v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5)
      {
        return;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong dismissIncidentReportingViewController:v1];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003803F8(char a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  sub_100380524();
  v3 = [objc_opt_self() sharedLocationManager];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 currentLocation];

  v6 = *&v1[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_incidentLocation];
  *&v1[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_incidentLocation] = v5;

  v7 = [objc_opt_self() sharedService];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 captureUserAction:113 onTarget:0 eventValue:0];

  v9 = [v1 cardPresentationController];
  if (v9)
  {
    v10 = v9;
    [v9 updateHeightForCurrentLayout];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100380524()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_autoDismissDelay);
  sub_100014C84(0, &qword_10190B4F0);
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_100381D94;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100271778;
  v9[3] = &unk_1016147F0;
  v6 = _Block_copy(v9);

  v7 = [v2 scheduledTimerWithTimeInterval:v4 queue:0 repeating:v6 block:v3];
  _Block_release(v6);

  v8 = *(v1 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer);
  *(v1 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer) = v7;
}

void sub_1003806CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        [v2 dismissIncidentReportingViewController:v3];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100380784(uint64_t a1)
{
  if (a1 == 2)
  {
    v4 = [v1 cardPresentationController];
    if (v4)
    {
      v3 = v4;
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    v2 = [v1 cardPresentationController];
    if (v2)
    {
      v3 = v2;
LABEL_7:
      [v3 bottomSafeOffset];

      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

int *sub_10038089C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIHostingControllerSizingOptions();
  sub_100381A5C(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = 0;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 8) = 2;
  *(a1 + result[7]) = 1;
  return result;
}

uint64_t sub_1003809B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ScrollBounceBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000CE6B8(&qword_10191C4C0);
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v15 = v2;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_10191C4C8);
  sub_1003817E0();
  ScrollView.init(_:showsIndicators:content:)();
  v11 = &v10[*(v8 + 36)];
  sub_100380F0C(v2, v11);
  *(v11 + *(sub_1000CE6B8(&qword_10191C4F0) + 36)) = 1;
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v11) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v11)
  {
    Axis.Set.init(rawValue:)();
  }

  a1[3] = sub_1000CE6B8(&qword_10191C4F8);
  v12 = sub_100381970();
  v16 = v8;
  v17 = v12;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.scrollBounceBehavior(_:axes:)();
  (*(v5 + 8))(v7, v4);
  return sub_1000B3B84(v10);
}

uint64_t sub_100380C28@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_viewModel);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for IncidentReportingViewModel();
    sub_100381A5C(&qword_10191C548, type metadata accessor for IncidentReportingViewModel);

    v3 = ObservedObject.init(wrappedValue:)();
    v6 = v5;
    v7 = swift_allocObject();
    result = swift_unknownObjectWeakInit();
    v8 = sub_100381D70;
    v9 = sub_100109FBC;
    v10 = sub_100381D68;
  }

  else
  {
    v6 = 0;
    v10 = 0;
    v4 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a2 = v3;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v4;
  a2[4] = v9;
  a2[5] = 0;
  a2[6] = v8;
  a2[7] = v7;
  return result;
}

void sub_100380D80(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_incidentLocation];
    if (v4)
    {
      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 sharedService];
      if (v7)
      {
        v8 = v7;
        v9 = [a1 incidentTypeAsString];
        if (!v9)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = String._bridgeToObjectiveC()();
        }

        [v8 captureUserAction:2152 onTarget:667 eventValue:v9];

        v10 = OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer;
        v11 = *&v3[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer];
        if (v11)
        {
          [v11 invalidate];
          v12 = *&v3[v10];
        }

        else
        {
          v12 = 0;
        }

        *&v3[v10] = 0;

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          [v13 incidentReportingViewController:v3 selectedTrafficIncidentItem:a1 atLocation:v6];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100380F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for LeadingCardHeader();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000CE6B8(&qword_10191C520);
  __chkstk_darwin(v40);
  v5 = v34 - v4;
  v6 = type metadata accessor for CardHeaderSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v10 - 8);
  v12 = v34 - v11;
  v13 = type metadata accessor for LeadingCardHeaderViewModel();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v46._object = 0x8000000101232260;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v19._object = 0x8000000101232240;
  v20._object = 0x800000010121C0F0;
  v46._countAndFlagsBits = 0xD000000000000021;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, qword_1019600D8, v20, v46);
  v34[0] = v21._object;
  v34[1] = v21._countAndFlagsBits;
  v22 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v23 = type metadata accessor for MapsDesignAccessibilityString();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v12, v22, v23);
  (*(v24 + 56))(v12, 0, 1, v23);
  (*(v7 + 104))(v9, enum case for CardHeaderSize.large(_:), v6);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v26 = v35;
  v25 = v36;
  (*(v35 + 16))(v15, v18, v36);
  v27 = v37;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  sub_100381A5C(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
  v28 = v39;
  View.accessibilityIdentifier(_:)();
  (*(v38 + 8))(v27, v28);
  v29 = &v5[*(v40 + 36)];
  sub_1000CE6B8(&qword_10190AEF0);
  static ContentShapeKinds.interaction.getter();
  *v29 = 0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100381AA4();

  v30 = v42;
  View.onTapGesture(count:perform:)();

  sub_100024F64(v5, &qword_10191C520);
  (*(v26 + 8))(v18, v25);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_1000CE6B8(&qword_10191C540);
  v33 = (v30 + *(result + 36));
  *v33 = sub_100109FBC;
  v33[1] = 0;
  v33[2] = sub_100381C48;
  v33[3] = v31;
  return result;
}

void sub_1003815E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedService];
    if (v2)
    {
      v3 = v2;
      [v2 captureUserAction:4 onTarget:667 eventValue:0];

      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 dismissIncidentReportingViewController:v1];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003816E8()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_incidentReportingDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer);
}

unint64_t sub_1003817E0()
{
  result = qword_10191C4D0;
  if (!qword_10191C4D0)
  {
    sub_1000D6664(&qword_10191C4C8);
    sub_100381864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C4D0);
  }

  return result;
}

unint64_t sub_100381864()
{
  result = qword_10191C4D8;
  if (!qword_10191C4D8)
  {
    sub_1000D6664(&qword_10191C4E0);
    sub_10038191C();
    sub_1000414C8(&qword_10190AED0, &qword_10190AED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C4D8);
  }

  return result;
}

unint64_t sub_10038191C()
{
  result = qword_10191C4E8;
  if (!qword_10191C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C4E8);
  }

  return result;
}

unint64_t sub_100381970()
{
  result = qword_10191C500;
  if (!qword_10191C500)
  {
    sub_1000D6664(&qword_10191C4C0);
    sub_1000414C8(&qword_10191C508, &qword_10191C510);
    sub_1000414C8(&qword_10191C518, &qword_10191C4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C500);
  }

  return result;
}

uint64_t sub_100381A5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100381AA4()
{
  result = qword_10191C528;
  if (!qword_10191C528)
  {
    sub_1000D6664(&qword_10191C520);
    sub_100381B5C();
    sub_1000414C8(&qword_10190AF08, &qword_10190AEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C528);
  }

  return result;
}

unint64_t sub_100381B5C()
{
  result = qword_10191C530;
  if (!qword_10191C530)
  {
    sub_1000D6664(&qword_10191C538);
    sub_100381A5C(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
    sub_100381A5C(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C530);
  }

  return result;
}

uint64_t sub_100381C6C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100381CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100381D9C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000CE6B8(&qword_101919440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_viewModel] = 0;
  *&v0[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_incidentLocation] = 0;
  v6 = OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_autoDismissDelay;
  GEOConfigGetDouble();
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer] = 0;
  *&v0[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_contentHeight] = 0;
  *&v0[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_contentHeaderHeight] = 0;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectWeakAssign();
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedInstance];
  v12 = [v11 currentIncidentsLayout];

  sub_100014C84(0, &qword_101919470);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for IncidentReportingViewModel();
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC4Maps26IncidentReportingViewModel__trafficIncidentLayoutItems;
  v24 = _swiftEmptyArrayStorage;

  sub_1000CE6B8(&qword_101919438);
  Published.init(initialValue:)();
  (*(v3 + 32))(v14 + v15, v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v13;

  static Published.subscript.setter();
  *&v10[OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_viewModel] = v14;

  v16 = [v10 cardPresentationController];
  if (!v16)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16;
  [v16 setBlurInCardView:0];

  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() colorNamed:v18];

  if (!v19)
  {
LABEL_5:
    v22 = [v10 cardPresentationController];

    if (v22)
    {

      [v22 setMaximumLayoutForEdgeInsetUpdate:0];

      return;
    }

    goto LABEL_8;
  }

  v20 = [v10 cardPresentationController];
  if (v20)
  {
    v21 = v20;
    [v20 setCardColor:v19];

    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
}

void sub_100382158()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_incidentLocation) = 0;
  v1 = OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_autoDismissDelay;
  GEOConfigGetDouble();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_dismissTimer) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_contentHeight) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps50NavTrafficIncidentReportingContaineeViewController_contentHeaderHeight) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100382260()
{
  result = qword_10191C568;
  if (!qword_10191C568)
  {
    sub_1000D6664(&qword_10191C560);
    sub_1003822EC();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C568);
  }

  return result;
}

unint64_t sub_1003822EC()
{
  result = qword_10191C570;
  if (!qword_10191C570)
  {
    sub_1000D6664(&qword_10191C578);
    sub_10038237C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C570);
  }

  return result;
}

unint64_t sub_10038237C()
{
  result = qword_10191C580;
  if (!qword_10191C580)
  {
    sub_1000D6664(&qword_10191C588);
    sub_100381A5C(&qword_10190A030, &type metadata accessor for NavigationCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C580);
  }

  return result;
}

unint64_t sub_100382430()
{
  result = qword_10191C590;
  if (!qword_10191C590)
  {
    sub_1000D6664(&qword_10191C550);
    sub_1000414C8(&qword_10191C598, &qword_10191C5A0);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C590);
  }

  return result;
}

unint64_t sub_100382530()
{
  result = qword_10191C5B0;
  if (!qword_10191C5B0)
  {
    sub_1000D6664(&qword_10191C5B8);
    sub_1000D6664(&qword_10191C550);
    sub_100382430();
    swift_getOpaqueTypeConformance2();
    sub_100381A5C(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191C5B0);
  }

  return result;
}

void sub_100382628()
{
  if ((*(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance + 8) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance) + 1;
    v2 = v1 > 3 ? 0 : qword_1011FF0F8[v1];
    v3 = *(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      while (*(v6 + 8 * v5) != v2)
      {
        if (v4 == ++v5)
        {
          return;
        }
      }

      v7 = sub_10038296C();
      v8 = [v7 arrangedSubviews];

      sub_100014C84(0, &qword_10190CA10);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v10 = *(v9 + 8 * v5 + 32);
      }

      v11 = v10;

      v12 = [objc_opt_self() blackColor];
      [v11 setTintColor:v12];

      v13 = OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewXContraint;
      v14 = *(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewXContraint);
      if (v14)
      {
        [v14 setActive:0];
      }

      v15 = sub_100382B54();
      v16 = [v15 centerXAnchor];

      v17 = [v11 centerXAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      v19 = *(v0 + v13);
      *(v0 + v13) = v18;
      v20 = v18;

      if (v20)
      {
        [v20 setActive:1];
      }

      v21 = OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewYContraint;
      v22 = *(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewYContraint);
      if (v22)
      {
        [v22 setActive:0];
      }

      v23 = [*(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___highlightedView) centerYAnchor];
      v24 = [v11 centerYAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];

      v26 = *(v0 + v21);
      *(v0 + v21) = v25;
      v27 = v25;

      if (v27)
      {
        [v27 setActive:1];
      }

      v28 = sub_10038294C();
      [v28 bringSubviewToFront:*(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView)];
    }
  }
}

id sub_10038296C()
{
  v1 = OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityLabel:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setDistribution:3];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100382A6C()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v2];

  [v1 setAlignment:5];
  [v1 setAxis:0];
  [v1 setDistribution:1];
  [v1 setSpacing:10.0];
  return v1;
}

id sub_100382B74(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100382BD4()
{
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_ControlViewEdgeInset] = 0x4000000000000000;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_ControlViewButtonWidth] = 0x4054000000000000;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewWidth] = 0x4053000000000000;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewHeight] = 0x4053000000000000;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_animationDuaration] = 0x3FD0000000000000;
  v1 = OBJC_IVAR____TtC4Maps17VolumeControlView_configuration;
  *&v0[v1] = [objc_opt_self() configurationWithPointSize:4 weight:38.0];
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes] = &off_101600F40;
  v2 = &v0[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypeChangeHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewXContraint] = 0;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewYContraint] = 0;
  v3 = &v0[OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance];
  *v3 = 0;
  v3[8] = 1;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView] = 0;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___labelStackView] = 0;
  *&v0[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___highlightedView] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for VolumeControlView();
  v4 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = [v4 description];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v4 setAccessibilityIdentifier:v6];

  sub_100382DAC();
  return v4;
}

void sub_100382DAC()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = sub_10038294C();
  [v1 addSubview:v2];

  v3 = sub_100382A4C();
  [v1 addSubview:v3];

  v4 = OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___containerView;
  v5 = *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___containerView];
  v6 = sub_10038296C();
  [v5 addSubview:v6];

  v7 = *&v1[v4];
  v8 = sub_100382B54();
  [v7 addSubview:v8];

  v9 = [objc_opt_self() sharedService];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 route];

  if (!v11)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v12 = [v11 transportType];

  v13 = &off_101600F10;
  if (!v12)
  {
    v13 = &off_101600ED8;
  }

  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes] = v13;

  v14 = OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes;
  v15 = *(*&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes] + 16);
  sub_1000CE6B8(&qword_101908400);
  v91 = v14;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E4FD0;
  if (v15 <= 2)
  {
    v17 = [*&v1[v4] widthAnchor];
    v18 = [v1 widthAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 multiplier:0.666666667];
    v20 = &selRef_centerXAnchor;
  }

  else
  {
    v17 = [*&v1[v4] leadingAnchor];
    v18 = [v1 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v20 = &selRef_trailingAnchor;
  }

  v21 = v19;

  *(inited + 32) = v21;
  v22 = [*&v1[v4] *v20];
  v23 = [v1 *v20];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(inited + 40) = v24;
  sub_10003B62C(inited);
  sub_1000CE6B8(&qword_101908400);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1011FF0C0;
  v26 = [*&v1[v4] topAnchor];
  v27 = [v1 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v25 + 32) = v28;
  v29 = [*&v1[v4] heightAnchor];
  v30 = [v29 constraintGreaterThanOrEqualToConstant:80.0];

  *(v25 + 40) = v30;
  v31 = OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView;
  v32 = [*&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView] topAnchor];
  v33 = [*&v1[v4] topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:2.0];

  *(v25 + 48) = v34;
  v35 = [*&v1[v31] bottomAnchor];
  v36 = [*&v1[v4] bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-2.0];

  *(v25 + 56) = v37;
  v38 = [*&v1[v31] leadingAnchor];
  v39 = [*&v1[v4] leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:12.0];

  *(v25 + 64) = v40;
  v89 = v31;
  v41 = [*&v1[v31] trailingAnchor];
  v42 = [*&v1[v4] trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-12.0];

  *(v25 + 72) = v43;
  v44 = OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___labelStackView;
  v45 = &selRef_hasMarkedText;
  v46 = [*&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___labelStackView] topAnchor];
  v47 = [*&v1[v4] bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:10.0];

  *(v25 + 80) = v48;
  v49 = [*&v1[v44] leadingAnchor];
  v50 = [*&v1[v4] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v25 + 88) = v51;
  v52 = [*&v1[v44] trailingAnchor];
  v53 = [*&v1[v4] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v25 + 96) = v54;
  v55 = [*&v1[v44] bottomAnchor];
  v56 = [v1 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-12.0];

  *(v25 + 104) = v57;
  v58 = OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___highlightedView;
  v59 = [*&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___highlightedView] heightAnchor];
  v60 = [v59 constraintEqualToConstant:76.0];

  *(v25 + 112) = v60;
  v61 = [*&v1[v58] widthAnchor];
  v62 = [v61 constraintEqualToConstant:76.0];

  *(v25 + 120) = v62;
  sub_10003B62C(v25);
  v90 = *&v1[v91];
  v63 = *(v90 + 16);
  if (v63)
  {

    v64 = 0;
    do
    {
      v65 = *(v90 + 8 * v64 + 32);
      v92 = v64 + 1;
      v66 = sub_100383E7C(v65, v64);
      sub_1003841F4(v65);
      v68 = v67;
      v69 = *&v1[v89];
      v70 = v66;
      [v69 addArrangedSubview:v70];
      v71 = *&v1[v44];
      v72 = v68;
      [v71 addArrangedSubview:v72];
      v73 = swift_initStackObject();
      *(v73 + 16) = xmmword_1011E47C0;
      v74 = [v70 v45[281]];
      v75 = [v74 constraintEqualToConstant:80.0];

      *(v73 + 32) = v75;
      v76 = [v70 widthAnchor];

      v77 = [v70 v45[281]];
      v78 = v1;
      v79 = v63;
      v80 = v44;
      v81 = v45;
      v82 = [v76 constraintEqualToAnchor:v77];

      *(v73 + 40) = v82;
      v83 = [v72 centerXAnchor];

      v84 = [v70 centerXAnchor];
      v85 = [v83 constraintEqualToAnchor:v84];

      *(v73 + 48) = v85;
      v45 = v81;
      v44 = v80;
      v63 = v79;
      v1 = v78;
      sub_10003B62C(v73);

      v64 = v92;
    }

    while (v63 != v92);
  }

  v86 = objc_opt_self();
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v86 activateConstraints:isa];

  sub_100382628();
  sub_100014C84(0, &qword_10190B4F0);
  v88 = static OS_dispatch_queue.main.getter();
  _GEOConfigAddDelegateListenerForKey();
}

id sub_100383854(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_ControlViewEdgeInset] = 0x4000000000000000;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_ControlViewButtonWidth] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewWidth] = 0x4053000000000000;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewHeight] = 0x4053000000000000;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_animationDuaration] = 0x3FD0000000000000;
  v3 = OBJC_IVAR____TtC4Maps17VolumeControlView_configuration;
  *&v1[v3] = [objc_opt_self() configurationWithPointSize:4 weight:38.0];
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes] = &off_101600F78;
  v4 = &v1[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypeChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewXContraint] = 0;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_highlightViewYContraint] = 0;
  v5 = &v1[OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance];
  *v5 = 0;
  v5[8] = 1;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___buttonStackView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___labelStackView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView____lazy_storage___highlightedView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VolumeControlView();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100382DAC();
  }

  return v7;
}

void sub_1003839F0(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v3 = *&v1[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes];
  if (*(v3 + 16) <= a1)
  {
    goto LABEL_22;
  }

  v4 = *(v3 + 8 * a1 + 32);
  v5 = 1;
  if (v4 != 1)
  {
    v5 = 2;
  }

  v20 = v4;
  if (v4 == 2)
  {
    v5 = 0;
  }

  v6 = &v1[OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance];
  if ((v1[OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance + 8] & 1) != 0 || *v6 != v5)
  {
    *v6 = v5;
    v6[8] = 0;
    sub_100382628();
    v7 = sub_10038296C();
    v8 = [v7 arrangedSubviews];

    sub_100014C84(0, &qword_10190CA10);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = v1;
    if (v2 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v2 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [objc_opt_self() secondaryLabelColor];
        [v12 setTintColor:v14];

        ++v10;
        if (v13 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v21;
    aBlock[4] = sub_100384598;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_101614910;
    v17 = _Block_copy(aBlock);
    v18 = v21;

    [v15 animateWithDuration:v17 animations:0.25];
    _Block_release(v17);
    v19 = *&v18[OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypeChangeHandler];
    if (v19)
    {

      v19(v20);
      sub_1000588AC(v19);
    }
  }
}

id sub_100383D64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeControlView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100383E7C(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTag:a2];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = v5;
  sub_100177214(a1);
  v7 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityLabel:v7];

  v8 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityIdentifier:v8];

  v9 = [objc_opt_self() secondaryLabelColor];
  [v6 setTintColor:v9];

  if (a1 && a1 != 2)
  {
    if (a1 != 1)
    {
      v11 = 0;
      goto LABEL_7;
    }

    _UISolariumEnabled();
  }

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() systemImageNamed:v10];

LABEL_7:
  [v6 setImage:v11 forState:0];

  [v6 addTarget:v2 action:"buttonTapped:" forControlEvents:64];
  v12 = objc_allocWithZone(UISwipeGestureRecognizer);
  v13 = v2;
  v14 = [v12 initWithTarget:v13 action:"swiped:"];
  [v14 setDirection:2];
  [v14 setNumberOfTouchesRequired:1];
  [v6 addGestureRecognizer:v14];
  v15 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v13 action:"swiped:"];

  v16 = v15;
  [v16 setDirection:1];
  [v16 setNumberOfTouchesRequired:1];
  [v6 addGestureRecognizer:v16];

  return v6;
}

void sub_1003841F4(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTextAlignment:1];
  LODWORD(v5) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  v6 = [v2 traitCollection];
  v7 = [v6 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryLarge];

  if (v7)
  {
    v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v7];

    [v4 setFont:v8];
    v9 = [objc_opt_self() labelColor];
    [v4 setTextColor:v9];

    sub_100177214(a1);
    v10 = String._bridgeToObjectiveC()();

    [v4 setText:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003843A4(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 tag];

  if (v5 == -1)
  {
    return;
  }

  if ([a1 direction] != 2)
  {
    goto LABEL_7;
  }

  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
LABEL_7:
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }
  }

  if ((v6 & 0x8000000000000000) == 0 && v6 < *(*(v1 + OBJC_IVAR____TtC4Maps17VolumeControlView_audioTypes) + 16))
  {

    sub_1003839F0(v6);
  }
}

id sub_100384598()
{
  v1 = *(v0 + 16);
  sub_100382628();

  return [v1 layoutIfNeeded];
}

id sub_1003845D8()
{
  v0 = [objc_allocWithZone(UIView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v2];

  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v1 setBackgroundColor:v4];

  v5 = [v1 layer];
  [v5 setCornerRadius:38.0];

  v6 = [v1 layer];
  v7 = [v3 darkGrayColor];
  v8 = [v7 CGColor];

  [v6 setShadowColor:v8];
  v9 = [v1 layer];
  [v9 setShadowOffset:{1.5, 1.5}];

  v10 = [v1 layer];
  [v10 setShadowRadius:2.0];

  v11 = [v1 layer];
  LODWORD(v12) = 1060320051;
  [v11 setShadowOpacity:v12];

  v13 = [v1 layer];
  [v13 setMasksToBounds:0];

  return v1;
}

id sub_100384814()
{
  v0 = [objc_allocWithZone(UIView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v2];

  [v1 setClipsToBounds:1];
  v3 = [v1 layer];
  [v3 setCornerRadius:38.0];

  v4 = [objc_opt_self() tertiarySystemFillColor];
  [v1 setBackgroundColor:v4];

  return v1;
}

id sub_100384930()
{
  v1 = OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView);
  }

  else
  {
    type metadata accessor for FeatureDiscoveryTipkitView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100384AF4()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_100384930();
  [v2 addSubview:v3];

  v4 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E5C00;
  v6 = OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView;
  v7 = [*&v1[OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell____lazy_storage___tipkitView] topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:5.0];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] bottomAnchor];
  v12 = [v1 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-5.0];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v5 + 56) = v22;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

void sub_100384DEC(uint64_t a1)
{
  v2 = v1;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v4.super.isa = qword_1019600D8;
  v38._object = 0x8000000101232630;
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x8000000101232600;
  v6._object = 0x800000010121AF20;
  v38._countAndFlagsBits = 0xD000000000000033;
  v6._countAndFlagsBits = 0x1000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, qword_1019600D8, v6, v38);
  v39._object = 0x80000001012326D0;
  v7._countAndFlagsBits = 0xD000000000000025;
  v7._object = 0x8000000101232670;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x80000001012326A0;
  v39._countAndFlagsBits = 0xD000000000000036;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v4, v8, v39);
  v40._object = 0x8000000101232740;
  v9._countAndFlagsBits = 0x65756E69746E6F43;
  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x8000000101232710;
  v40._countAndFlagsBits = 0xD00000000000003FLL;
  v9._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v4, v9, v40);
  v11 = objc_opt_self();
  v12 = [v2 traitCollection];
  v13 = [v11 preferredFontForTextStyle:UIFontTextStyleLargeTitle compatibleWithTraitCollection:v12];

  v14 = [objc_opt_self() configurationWithFont:v13];
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v31 = v15;
  v17 = [objc_opt_self() _systemImageNamed:v16 withConfiguration:v15];

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = objc_allocWithZone(FeatureDiscoveryModel);
  v21 = v17;

  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v36 = sub_100385484;
  v37 = v19;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100039C64;
  v35 = &unk_101614988;
  v25 = _Block_copy(&aBlock);

  v36 = sub_10038548C;
  v37 = v20;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100039C64;
  v35 = &unk_1016149B0;
  v26 = _Block_copy(&aBlock);

  LOBYTE(v29) = 1;
  v27 = [v30 initWithImage:v21 title:v22 subtitle:v23 actionTitle:v24 actionHandler:v25 bodyTapHandler:0 displayedHandler:0 dismissHandler:v26 disableAffordanceAfterAction:v29];
  _Block_release(v26);
  _Block_release(v25);

  v28 = sub_100384930();
  sub_1002162E0(v27);

  [v2 setNeedsUpdateConfiguration];
}

void sub_1003852B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
    v5 = Strong;
    sub_1000CD9D4(v4);

    if (v4)
    {
      v4(a2);
      sub_1000588AC(v4);
    }
  }
}

void sub_10038534C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC4Maps35LibraryHomeTipkitCollectionViewCell_actionButtonHandler);
    v2 = Strong;
    sub_1000CD9D4(v1);

    if (v1)
    {
      v1(0);
      sub_1000588AC(v1);
    }
  }
}

id sub_1003853DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryHomeTipkitCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003854C0(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_100385588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100386184(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex);
  *(a2 + 8) = v5;
  return result;
}

id sub_100385678@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v17 = v6;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v17;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  v11 = OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_currentContainerSize;
  swift_beginAccess();
  v12 = type metadata accessor for HomePinnedItemRowView();
  v13 = v12[7];
  v14 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v14 - 8) + 16))(a3 + v13, a2 + v11, v14);
  *a3 = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190BC28);
  swift_storeEnumTagMultiPayload();
  *(a3 + v12[5]) = v17;
  v15 = a3 + v12[6];
  *v15 = v18;
  *(v15 + 2) = v19;
  v15[24] = v20;

  return v17;
}

uint64_t sub_100385868@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_100386184(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex + 8);
  *a2 = *(a1 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100385924(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = a4 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex;
  if (*(a4 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex + 8))
  {
    if (!*(result + 8))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100386184(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (*v6 == v4)
    {
      v8 = *(result + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  *v6 = v4;
  *(v6 + 8) = v5;
  return result;
}

uint64_t sub_100385A5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000CE6B8(&qword_10191B220);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = v22 - v4;
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = v22 - v12;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v11);
  v14 = [v1 contentView];
  [v14 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v15 = OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_currentContainerSize;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v15], v6);
  sub_100386184(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  LOBYTE(v14) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v9, v6);
  if ((v14 & 1) == 0)
  {
    swift_beginAccess();
    (*(v7 + 24))(&v1[v15], v13, v6);
    v17 = swift_endAccess();
    v18 = *&v1[OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_viewModel];
    if (v18)
    {
      v22[1] = v22;
      __chkstk_darwin(v17);
      v22[-2] = v18;
      v22[-1] = v1;
      type metadata accessor for HomePinnedItemRowView();
      sub_100386184(&qword_10191B228, type metadata accessor for HomePinnedItemRowView);
      v19 = v18;
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v20 = v24;
      v25[3] = v24;
      v25[4] = sub_10035BD68();
      sub_10001A848(v25);
      UIHostingConfiguration.margins(_:_:)();
      (*(v23 + 8))(v5, v20);
      UICollectionViewCell.contentConfiguration.setter();
    }
  }

  return (v16)(v13, v6);
}

uint64_t sub_1003860B4()
{
  result = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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

uint64_t sub_100386184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003861CC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100388658(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1003864CC()
{
  v1 = v0;
  v58.receiver = v0;
  v58.super_class = type metadata accessor for MapsAppTestLongNavigation();
  result = objc_msgSendSuper2(&v58, "options");
  if (!result)
  {
    goto LABEL_95;
  }

  v3 = result;
  v5 = *&v0[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_testDurationMinutesKey];
  v4 = *&v0[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_testDurationMinutesKey + 8];
  *&v56 = v5;
  *(&v56 + 1) = v4;

  v6 = [v3 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v51 = v57;
  if (!*(&v57 + 1))
  {
    goto LABEL_79;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  result = v55;
  v7 = HIBYTE(v55) & 0xF;
  v8 = v54 & 0xFFFFFFFFFFFFLL;
  if ((v55 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v55) & 0xF;
  }

  else
  {
    v9 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_69;
  }

  if ((v55 & 0x1000000000000000) != 0)
  {
    v13 = sub_100388658(v54, v55, 10);
    v36 = v35;

    if (v36)
    {
      goto LABEL_69;
    }

    goto LABEL_72;
  }

  if ((v55 & 0x2000000000000000) == 0)
  {
    if ((v54 & 0x1000000000000000) != 0)
    {
      v10 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = _StringObject.sharedUTF8.getter();
      result = v55;
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_68;
          }

          v21 = v10 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      goto LABEL_93;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_68;
          }

          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      __break(1u);
      goto LABEL_92;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_68;
      }

      while (1)
      {
        v27 = *v10 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_67;
  }

  *&aBlock = v54;
  *(&aBlock + 1) = v55 & 0xFFFFFFFFFFFFFFLL;
  if (v54 != 43)
  {
    if (v54 == 45)
    {
      if (!v7)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v10 = (v7 - 1);
      if (v7 != 1)
      {
        v13 = 0;
        v17 = &aBlock + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      p_aBlock = &aBlock;
      while (1)
      {
        v30 = *p_aBlock - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++p_aBlock;
        if (!--v7)
        {
LABEL_66:
          LOBYTE(v10) = 0;
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_68:
    LOBYTE(v56) = v10;
    v32 = v10;

    if (v32)
    {
LABEL_69:
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      *&aBlock = v5;
      *(&aBlock + 1) = v4;
      v33 = 0x8000000101232880;
      v34 = 0xD00000000000001BLL;
LABEL_82:
      String.append(_:)(*&v34);
      v42 = String._bridgeToObjectiveC()();

      [v1 failedTestWithReason:v42];

      return 0;
    }

LABEL_72:
    v5 = *&v1[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_avoidTollsKey];
    v4 = *&v1[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_avoidTollsKey + 8];
    *&v56 = v5;
    *(&v56 + 1) = v4;

    v37 = [v3 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v37)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    aBlock = v56;
    v51 = v57;
    if (*(&v57 + 1))
    {
      if (swift_dynamicCast())
      {
        v38 = v55;
        v49 = v54;
        v40 = *&v1[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_ignoreLiveTrafficKey];
        v39 = *&v1[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_ignoreLiveTrafficKey + 8];
        *&v56 = v40;
        *(&v56 + 1) = v39;

        v41 = [v3 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v41)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0u;
          v57 = 0u;
        }

        aBlock = v56;
        v51 = v57;
        if (*(&v57 + 1))
        {
          if (swift_dynamicCast())
          {
            v43 = v54;
            v44 = v55;
            [v1 switchToMapType:*&v1[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_mapTypeDriving]];
            v45 = swift_allocObject();
            v45[2] = v1;
            v45[3] = v3;
            v45[4] = v43;
            v45[5] = v44;
            v45[6] = v49;
            v45[7] = v38;
            v45[8] = v13;
            v52 = sub_100388BE4;
            v53 = v45;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v51 = sub_100039C64;
            *(&v51 + 1) = &unk_101614B40;
            v46 = _Block_copy(&aBlock);
            v47 = v1;
            v48 = v3;

            [v47 addFullyDrawnCallback:v46];

            _Block_release(v46);
            return 1;
          }
        }

        else
        {

          sub_100024F64(&aBlock, &unk_101908380);
        }

        *&aBlock = v40;
        *(&aBlock + 1) = v39;
LABEL_81:

        v34 = 0x6F727020746F6E20;
        v33 = 0xED00006465646976;
        goto LABEL_82;
      }

LABEL_80:
      *&aBlock = v5;
      *(&aBlock + 1) = v4;
      goto LABEL_81;
    }

LABEL_79:
    sub_100024F64(&aBlock, &unk_101908380);
    goto LABEL_80;
  }

  if (v7)
  {
    v10 = (v7 - 1);
    if (v7 != 1)
    {
      v13 = 0;
      v24 = &aBlock + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v10)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100386C18(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v27 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v18 = v25;
  v17[6] = v24;
  v17[7] = v18;
  v17[8] = v26;
  aBlock[4] = sub_100388C4C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101614B90;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

void sub_100386EEC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [a1 startedTest];
  v9 = [a2 _mapstest_originString];
  if (v9)
  {
    v10 = v9;
    v23 = a7;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [a2 _mapstest_destinationString];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = String._bridgeToObjectiveC()();
      v20 = [v19 BOOLValue];

      v21 = String._bridgeToObjectiveC()();
      v22 = [v21 BOOLValue];

      sub_100387070(v11, v13, v16, v18, v20, v22);

      sub_1003873FC(v23);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100387070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v8 = String._bridgeToObjectiveC()();
  [v6 startedSubTest:v8];

  v9 = [objc_allocWithZone(DirectionsPlan) init];
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  [v9 setDisplayMethod:1];
  v11 = [objc_allocWithZone(GEOStorageRouteRequestStorage) init];
  [v10 setRouteRequestStorage:v11];

  v12 = [v10 routeRequestStorage];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  [v12 setTransportType:0];

  v14 = [v10 routeRequestStorage];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(GEOAutomobileOptions) init];
  [v15 setAutomobileOptions:v16];

  v17 = [v10 routeRequestStorage];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 automobileOptions];

  if (!v19)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5)
  {
    v20 = 1;
  }

  else
  {
    v20 = 3;
  }

  [v19 setTrafficType:v20];

  v21 = [v10 routeRequestStorage];
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v21 automobileOptions];

  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = [objc_allocWithZone(GEOUserPreferences) init];
  [v23 setUserPreferences:v24];

  v25 = [v10 routeRequestStorage];
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 automobileOptions];

  if (!v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = [v27 userPreferences];

  if (!v28)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v28 setAvoidTolls:a6 & 1];

  v29 = String._bridgeToObjectiveC()();
  [v10 setOriginString:v29];

  v30 = String._bridgeToObjectiveC()();
  [v10 setDestinationString:v30];

  v31 = [v6 testCoordinator];
  if (!v31)
  {
LABEL_28:
    __break(1u);
    return;
  }

  [v31 setPPTTestDirectionsPlan:v10];

  swift_unknownObjectRelease();
}

void sub_1003873FC(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 startedSubTest:v3];

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v8[4] = sub_1003885A4;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100387CC0;
  v8[3] = &unk_101614AA0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v4 addOnceObserverForName:@"MapsRoutePlanningShowingRoutesNotification" object:0 usingBlock:v6];
  _Block_release(v6);
}

void sub_100387540(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = a3;
  v54 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v41 - v14;
  v15 = sub_1000CE6B8(&qword_10191C780);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  sub_1003885AC(a1, &v41 - v19);
  v21 = type metadata accessor for Notification();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    sub_100024F64(v20, &qword_10191C780);
    aBlock = 0u;
    v56 = 0u;
LABEL_6:
    sub_100024F64(&aBlock, &unk_101908380);
    goto LABEL_7;
  }

  Notification.object.getter();
  (*(v22 + 8))(v20, v21);
  if (!*(&v56 + 1))
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &qword_10191C790);
  if (swift_dynamicCast())
  {
    v24 = v59;
    sub_100014C84(0, &qword_10190B4F0);
    v42 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v9 = 4;
    v25 = v43;
    (*(v43 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v7);
    v26 = v45;
    + infix(_:_:)();
    (*(v25 + 8))(v9, v7);
    v27 = v47;
    v46 = *(v46 + 8);
    (v46)(v12, v47);
    v28 = swift_allocObject();
    v29 = v54;
    v28[2] = v24;
    v28[3] = v29;
    v28[4] = v44;
    v57 = sub_10038861C;
    v58 = v28;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v56 = sub_100039C64;
    *(&v56 + 1) = &unk_101614AF0;
    v30 = _Block_copy(&aBlock);
    v31 = v24;
    v32 = v29;

    v33 = v48;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000DB364();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    v34 = v50;
    v35 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v42;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);

    (*(v52 + 8))(v34, v35);
    (*(v49 + 8))(v33, v51);
    (v46)(v26, v27);
    return;
  }

LABEL_7:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v59 = 0x6465746365707865;
  v60 = 0xE900000000000020;
  sub_1000CE6B8(&qword_10191C788);
  v37._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x20746F67202CLL;
  v38._object = 0xE600000000000000;
  String.append(_:)(v38);
  sub_1003885AC(a1, v17);
  if (v23(v17, 1, v21) == 1)
  {
    sub_100024F64(v17, &qword_10191C780);
    aBlock = 0u;
    v56 = 0u;
    sub_100024F64(&aBlock, &unk_101908380);
  }

  else
  {
    Notification.object.getter();
    sub_100024F64(&aBlock, &unk_101908380);
    (*(v22 + 8))(v17, v21);
  }

  v39._countAndFlagsBits = 0x6C616E6F6974704FLL;
  v39._object = 0xED00003E796E413CLL;
  String.append(_:)(v39);
  v40 = String._bridgeToObjectiveC()();

  [v54 failedTestWithReason:v40];
}

uint64_t sub_100387CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191C780);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Notification();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v7(v6);

  return sub_100024F64(v6, &qword_10191C780);
}

uint64_t sub_100387DF8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for DispatchTime();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_100014C84(0, &qword_10190B4F0);
  v18 = static OS_dispatch_queue.main.getter();
  result = static DispatchTime.now()();
  if ((a1 * 60) >> 64 == (60 * a1) >> 63)
  {
    *v11 = 60 * a1;
    (*(v9 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v8);
    + infix(_:_:)();
    (*(v9 + 8))(v11, v8);
    v28 = *(v12 + 8);
    v20 = v14;
    v21 = v29;
    v28(v20, v29);
    v22 = swift_allocObject();
    v23 = v30;
    *(v22 + 16) = v30;
    aBlock[4] = sub_10038859C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_101614A50;
    v24 = _Block_copy(aBlock);
    v25 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000DB364();
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    v26 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v33 + 8))(v4, v26);
    (*(v31 + 8))(v7, v32);
    return (v28)(v17, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10038825C(void *a1)
{
  result = [a1 testCoordinator];
  if (result)
  {
    [result pptTestEndNavigation];
    swift_unknownObjectRelease();

    return [a1 finishedTest];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003882CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_testDurationMinutesKey];
  *v7 = 0xD000000000000013;
  *(v7 + 1) = 0x8000000101232840;
  v8 = &v4[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_avoidTollsKey];
  *v8 = 0x6C6F5464696F7661;
  *(v8 + 1) = 0xEA0000000000736CLL;
  v9 = &v4[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_ignoreLiveTrafficKey];
  *v9 = 0xD000000000000011;
  *(v9 + 1) = 0x8000000101232860;
  *&v4[OBJC_IVAR____TtC4Maps25MapsAppTestLongNavigation_mapTypeDriving] = 108;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();

    if (a4)
    {
LABEL_3:
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11.super.isa = 0;
LABEL_6:
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MapsAppTestLongNavigation();
  v12 = objc_msgSendSuper2(&v14, "initWithApplication:testName:options:", a1, v10, v11.super.isa);

  swift_unknownObjectRelease();
  if (v12)
  {
  }

  return v12;
}

id sub_1003884DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsAppTestLongNavigation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003885AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191C780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038861C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  [v1 pptTestStartNavigation];
  return sub_100387DF8(v2);
}

unsigned __int8 *sub_100388658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100388C80();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100388BFC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100388C80()
{
  v0 = String.subscript.getter();
  v4 = sub_100388D00(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100388D00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10004E20C(v9, 0), v12 = sub_100388E58(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100388E58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100389078(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100389078(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100389078(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_100389114(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3 >> 60 == 6)
  {
    v4 = *(v1 + 112);
    v5 = *(v1 + 96);
    v17 = *(v1 + 64);
    v19 = *(v1 + 48);
    v21 = *(v1 + 32);
    v6 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v26 = *(v1 + 16);
    v23 = v26;
    v27 = v21;
    v28 = v19;
    v29 = v17;
    v30 = *(v1 + 80);
    v15 = v30;
    *&v31 = v5;
    *(&v31 + 1) = v3 & 0xFFFFFFFFFFFFFFFLL;
    v32 = v4;
    sub_1002E28DC(&v26, v25);
    v8 = v15;
    v7 = v17;
    v10 = v19;
    v9 = v21;
    v11 = v23;
    *&v12 = v5;
    *(&v12 + 1) = v6;
  }

  else if (*(v1 + 128))
  {

    sub_100389114(&v26, v13);
    v22 = v27;
    v24 = v26;
    v18 = v29;
    v20 = v28;
    v14 = v31;
    v16 = v30;
    v4 = v32;

    v12 = v14;
    v8 = v16;
    v7 = v18;
    v10 = v20;
    v9 = v22;
    v11 = v24;
  }

  else
  {
    v4 = 0;
    v11 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 80) = v12;
  *(a1 + 96) = v4;
}

uint64_t sub_10038923C(uint64_t a1)
{
  if (sub_100389644() == a1)
  {
    return 1;
  }

  if (!*(v1 + 128))
  {
    return 0;
  }

  v4 = sub_10038923C(a1);

  return v4 & 1;
}

_OWORD *sub_1003892A4(void *a1)
{
  sub_10038A4F4(a1, v15);
  v13 = v18;
  v14 = v17;
  v2 = v17;
  v3 = v18;
  v4 = [a1 alternativeUnit];
  if (v2 >> 1 != 0xFFFFFFFF || v3 > 1)
  {
    if (v4)
    {

      result = [a1 alternativeUnit];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      type metadata accessor for PlaceSummaryUnit();
      v8 = sub_1003892A4(v7);
    }

    else
    {
      v8 = 0;
    }

    v10 = [a1 layoutPriority];

    type metadata accessor for PlaceSummaryUnit();
    result = swift_allocObject();
    v11 = v15[3];
    result[3] = v15[2];
    result[4] = v11;
    *(result + 10) = v16;
    v12 = v15[1];
    result[1] = v15[0];
    result[2] = v12;
    *(result + 104) = v13;
    *(result + 88) = v14;
    *(result + 15) = v10;
    *(result + 16) = v8;
    return result;
  }

  if (v4)
  {
    v9 = sub_1003892A4(v4);

    if (v9)
    {

      return v9;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1003893F4()
{
  sub_10038B2A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 128);
  *(v0 + 128) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 128);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_100389498()
{
  sub_1003893F4();

  return swift_deallocClassInstance();
}

unint64_t sub_1003894F0(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >> 61 <= 4)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_100389510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100389560(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = 2 * -a2;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003895E0(uint64_t result, uint64_t a2)
{
  if (a2 < 0xA)
  {
    v2 = *(result + 88) & 1 | (a2 << 60);
    *(result + 72) &= 1uLL;
    *(result + 88) = v2;
  }

  else
  {
    *result = (a2 - 10);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = xmmword_1011FF250;
  }

  return result;
}

uint64_t sub_100389644()
{
  v1 = v0[13];
  v2 = v1 >> 60;
  if ((v1 >> 60) <= 4)
  {
    if (v2 == 3)
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }

    if (v2 == 2)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }

    if (v2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    if (v2 <= 1)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else if (v2 > 7)
  {
    v8 = v0[2];
    if (v2 == 8)
    {
      if (v0[2])
      {
        return 17;
      }

      else
      {
        return 16;
      }
    }

    else if (v2 == 9)
    {
      return 24;
    }

    else
    {
      v9 = v0[14];
      v11 = v0[11];
      v10 = v0[12];
      v13 = v0[7];
      v12 = v0[8];
      v14 = v0[5];
      v15 = v0[6];
      v16 = v0[10] | v0[9];
      v17 = v0[3];
      v18 = v0[4];
      if (v1 != 0xA000000000000000 || v9 | v8 | v10 | v11 | v16 | v12 | v13 | v15 | v14 | v18 | v17)
      {
        v19 = v11 | v10 | v16 | v12 | v13 | v15 | v14 | v18 | v17;
        if (v9 || v1 != 0xA000000000000000 || v8 != 1 || v19)
        {
          if (v9 || v1 != 0xA000000000000000 || v8 != 2 || v19)
          {
            if (v9 || v1 != 0xA000000000000000 || v8 != 3 || v19)
            {
              if (v9 || v1 != 0xA000000000000000 || v8 != 4 || v19)
              {
                if (v9 || v1 != 0xA000000000000000 || v8 != 5 || v19)
                {
                  if (v9 || v1 != 0xA000000000000000 || v8 != 6 || v19)
                  {
                    if (v9 || v1 != 0xA000000000000000 || v8 != 7 || v19)
                    {
                      if (v9 || v1 != 0xA000000000000000 || v8 != 8 || v19)
                      {
                        if (v9 || v1 != 0xA000000000000000 || v8 != 9 || v19)
                        {
                          if (v9 || v1 != 0xA000000000000000 || v8 != 10 || v19)
                          {
                            if (v9 || v1 != 0xA000000000000000 || v8 != 11 || v19)
                            {
                              if (v9 || v1 != 0xA000000000000000 || v8 != 12 || v19)
                              {
                                if (v9 || v1 != 0xA000000000000000 || v8 != 13 || v19)
                                {
                                  if (v9 || v1 != 0xA000000000000000 || v8 != 14 || v19)
                                  {
                                    if (v9 || v1 != 0xA000000000000000 || v8 != 15 || v19)
                                    {
                                      if (v9 || v1 != 0xA000000000000000 || v8 != 16 || v19)
                                      {
                                        if (v9 || v1 != 0xA000000000000000 || v8 != 17 || v19)
                                        {
                                          if (v9 || v1 != 0xA000000000000000 || v8 != 18 || v19)
                                          {
                                            if (v9 || v1 != 0xA000000000000000 || v8 != 19 || v19)
                                            {
                                              if (v9 || v1 != 0xA000000000000000 || v8 != 20 || v19)
                                              {
                                                if (v9 || v1 != 0xA000000000000000 || v8 != 21 || v19)
                                                {
                                                  if (v9 || v1 != 0xA000000000000000 || v8 != 22 || v19)
                                                  {
                                                    if (v9 || v1 != 0xA000000000000000 || v8 != 23 || v19)
                                                    {
                                                      if (v9 || v1 != 0xA000000000000000 || v8 != 24 || v19)
                                                      {
                                                        if (v9 || v1 != 0xA000000000000000 || v8 != 25 || v19)
                                                        {
                                                          if (v9 || v1 != 0xA000000000000000 || v8 != 26 || v19)
                                                          {
                                                            if (v9 || v1 != 0xA000000000000000 || v8 != 27 || v19)
                                                            {
                                                              if (v9 || v1 != 0xA000000000000000 || v8 != 28 || v19)
                                                              {
                                                                if (v9 || v1 != 0xA000000000000000 || v8 != 29 || v19)
                                                                {
                                                                  if (v9 || v1 != 0xA000000000000000 || v8 != 30 || v19)
                                                                  {
                                                                    if (v9 || v1 != 0xA000000000000000 || v8 != 31 || v19)
                                                                    {
                                                                      if (v19)
                                                                      {
                                                                        v20 = 0;
                                                                      }

                                                                      else
                                                                      {
                                                                        v20 = v8 == 32;
                                                                      }

                                                                      if (v20 && v1 == 0xA000000000000000 && v9 == 0)
                                                                      {
                                                                        return 30;
                                                                      }

                                                                      else
                                                                      {
                                                                        return 36;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      return 29;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    return 28;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  return 27;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                return 26;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              return 25;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            return 33;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          return 32;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        return 45;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      return 44;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    return 43;
                                                  }
                                                }

                                                else
                                                {
                                                  return 42;
                                                }
                                              }

                                              else
                                              {
                                                return 39;
                                              }
                                            }

                                            else
                                            {
                                              return 40;
                                            }
                                          }

                                          else
                                          {
                                            return 38;
                                          }
                                        }

                                        else
                                        {
                                          return 37;
                                        }
                                      }

                                      else
                                      {
                                        return 35;
                                      }
                                    }

                                    else
                                    {
                                      return 34;
                                    }
                                  }

                                  else
                                  {
                                    return 31;
                                  }
                                }

                                else
                                {
                                  return 11;
                                }
                              }

                              else
                              {
                                return 23;
                              }
                            }

                            else
                            {
                              return 22;
                            }
                          }

                          else
                          {
                            return 21;
                          }
                        }

                        else
                        {
                          return 20;
                        }
                      }

                      else
                      {
                        return 19;
                      }
                    }

                    else
                    {
                      return 18;
                    }
                  }

                  else
                  {
                    return 13;
                  }
                }

                else
                {
                  return 12;
                }
              }

              else
              {
                return 9;
              }
            }

            else
            {
              return 8;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (v2 == 6)
    {
      v3 = 14;
    }

    else
    {
      v3 = 15;
    }

    if (v2 == 5)
    {
      return 10;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_100389BE0()
{
  v1 = v0[13];
  v2 = v1 >> 60;
  if ((v1 >> 60) <= 4)
  {
    v5 = 0x5241444E4F434553;
    v6 = 0x5352554F48;
    v7 = 0x53534552444441;
    if (v2 != 3)
    {
      v7 = 0x53474E49544152;
    }

    if (v2 != 2)
    {
      v6 = v7;
    }

    if (v2)
    {
      v5 = 0x45434E4154534944;
    }

    if (v2 <= 1)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if (v2 <= 7)
    {
      v3 = 0x474E49525453;
      if (v2 != 6)
      {
        v3 = 0x4F5F524556524553;
      }

      if (v2 == 5)
      {
        return 0x5F44455441525543;
      }

      else
      {
        return v3;
      }
    }

    if (v2 == 8)
    {
      return 0x4D4E4941544E4F43;
    }

    if (v2 == 9)
    {
      return 0x44494F54434146;
    }

    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[10] | v0[9];
    v16 = v0[4];
    v18 = v0[2];
    v17 = v0[3];
    if (v1 == 0xA000000000000000 && !(v8 | v18 | v9 | v10 | v15 | v11 | v12 | v14 | v13 | v16 | v17))
    {
      return 1162690894;
    }

    v19 = v10 | v9 | v15 | v11 | v12 | v14 | v13 | v16 | v17;
    if (!v8 && v1 == 0xA000000000000000 && v18 == 1 && !v19)
    {
      return 0x59524F4745544143;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 2 && !v19)
    {
      return 0x4543495250;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 3 && !v19)
    {
      return 0x5F5449534E415254;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 4 && !v19)
    {
      return 0xD000000000000015;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 5 && !v19)
    {
      return 0xD000000000000012;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 6 && !v19)
    {
      return 0xD000000000000022;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 7 && !v19)
    {
      return 0x544E45434552;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 8 && !v19)
    {
      return 0x4847494C48474948;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 9 && !v19)
    {
      return 0xD000000000000010;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 10 && !v19)
    {
      return 0x454853494C425550;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 11 && !v19)
    {
      return 0xD000000000000019;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 12 && !v19)
    {
      return 0xD000000000000015;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 13 && !v19)
    {
      return 0xD000000000000022;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 14 && !v19)
    {
      return 0xD000000000000012;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 15 && !v19)
    {
      return 0xD000000000000011;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 16 && !v19)
    {
      return 0xD000000000000013;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 17 && !v19)
    {
      return 0x435F534F544F4850;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 18 && !v19)
    {
      return 0x59545F4554554F52;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 19 && !v19)
    {
      return 0x454C5F4554554F52;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 20 && !v19)
    {
      return 0x55445F4554554F52;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 21 && !v19)
    {
      return 0xD000000000000019;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 22 && !v19)
    {
      return 0x5F524553555F4E49;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 23 && !v19)
    {
      return 0x544F4E5F52455355;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 24 && !v19)
    {
      return 0x5F44455449534956;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 25 && !v19)
    {
      return 0xD00000000000001ALL;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 26 && !v19)
    {
      return 0xD000000000000012;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 27 && !v19)
    {
      return 0xD000000000000023;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 28 && !v19)
    {
      return 0xD000000000000021;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 29 && !v19)
    {
      return 0xD000000000000028;
    }

    if (!v8 && v1 == 0xA000000000000000 && v18 == 30 && !v19)
    {
      return 0xD000000000000010;
    }

    if (v8 || v1 != 0xA000000000000000 || v18 != 31 || v19)
    {
      result = 0x5F53534552444441;
      if (!v8 && v1 == 0xA000000000000000 && v18 == 32 && !v19)
      {
        return 0xD00000000000001FLL;
      }
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  return result;
}

uint64_t sub_10038A4F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 type];
  v5 = 0;
  v6 = 0x1FFFFFFFELL;
  v7 = v4 - 1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  result = 0;
  v18 = 0;
  switch(v7)
  {
    case 0u:
      result = [a1 name];
      if (!result)
      {
        goto LABEL_105;
      }

      v5 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      goto LABEL_87;
    case 1u:
      result = [a1 category];
      if (!result)
      {
        goto LABEL_111;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 1;
      goto LABEL_87;
    case 2u:
      result = [a1 distance];
      if (!result)
      {
        goto LABEL_109;
      }

      v27 = result;
      v5 = [result maximumDistanceInMeters];

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v18 = 0;
      v6 = 0x1FFFFFFFELL;
      if (v5)
      {
        v6 = 0;
      }

      result = (v5 != 0) << 60;
      goto LABEL_87;
    case 3u:
      result = [a1 price];
      if (!result)
      {
        goto LABEL_102;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 2;
      goto LABEL_87;
    case 4u:
      result = [a1 hours];
      if (!result)
      {
        goto LABEL_103;
      }

      v23 = sub_100131E00(result);
      if (v16 == 1)
      {
        goto LABEL_62;
      }

      v8 = v16;
      v6 = 0;
      v5 = v23 & 1;
      result = 0x2000000000000000;
      goto LABEL_87;
    case 5u:
      result = [a1 address];
      if (!result)
      {
        goto LABEL_113;
      }

      v8 = result;
      v28 = [result type];

      v5 = v28 - 1;
      if (v5 >= 4)
      {
        goto LABEL_62;
      }

      v6 = 0;
      result = 0x3000000000000000;
      goto LABEL_87;
    case 6u:
      result = [a1 ratings];
      if (!result)
      {
        goto LABEL_100;
      }

      v8 = result;
      LODWORD(v5) = [result shouldShowRatingCount];

      v6 = 0;
      v5 = v5;
      result = 0x4000000000000000;
      goto LABEL_87;
    case 7u:
      result = [a1 transitShields];
      if (!result)
      {
        goto LABEL_101;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 3;
      goto LABEL_87;
    case 8u:
      result = [a1 userGeneratedGuides];
      if (!result)
      {
        goto LABEL_107;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 4;
      goto LABEL_87;
    case 9u:
      result = [a1 curatedGuides];
      if (!result)
      {
        goto LABEL_106;
      }

      v8 = result;
      if ([result hasMinNumGuides])
      {
        LODWORD(v5) = [v8 minNumGuides];

        v6 = 0;
        v5 = v5;
      }

      else
      {

        v5 = 0;
        v6 = 0;
      }

      result = 0x5000000000000000;
      goto LABEL_87;
    case 0xAu:
      result = [a1 evChargersNumber];
      if (!result)
      {
        goto LABEL_116;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 5;
      goto LABEL_87;
    case 0xBu:
      result = [a1 ugcUserSubmittedRecommendations];
      if (!result)
      {
        goto LABEL_95;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 6;
      goto LABEL_87;
    case 0xCu:
      result = [a1 string];
      if (!result)
      {
        goto LABEL_94;
      }

      sub_10023ED70(result, &v29);
      v8 = v30;
      if (v30)
      {
        v18 = v41;
        v16 = v39;
        v14 = v36;
        v15 = v37;
        v12 = v34;
        v13 = v35;
        v10 = v32;
        v11 = v33;
        v6 = v38 & 1;
        result = v40 & 1 | 0x6000000000000000;
        v9 = v31;
        v5 = v29;
        goto LABEL_87;
      }

      v5 = 0;
      goto LABEL_86;
    case 0xDu:
      result = [a1 serverOverride];
      if (!result)
      {
        goto LABEL_118;
      }

      v8 = result;
      LODWORD(v5) = [result serverOverrideIdentifier];

      v6 = 0;
      v5 = v5;
      result = 0x7000000000000000;
      goto LABEL_87;
    case 0xEu:
      result = [a1 containment];
      if (!result)
      {
        goto LABEL_108;
      }

      v24 = result;
      v25 = [result containmentType];

      v26 = v25 - 1;
      if (v25 - 1 >= 4)
      {
LABEL_62:
        v5 = 0;
        v8 = 0;
LABEL_86:
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        result = 0;
        v18 = 0;
        v6 = 0x1FFFFFFFELL;
      }

      else
      {
        v5 = qword_1011FF3C8[v26];
        v8 = qword_1011FF428[v26];
        v6 = qword_1011FF3E8[v26];
        result = qword_1011FF408[v26];
        v9 = v8;
        v10 = v8;
        v11 = v8;
        v12 = v8;
        v13 = v8;
        v14 = v8;
        v15 = v8;
        v16 = v8;
        v18 = v8;
      }

      goto LABEL_87;
    case 0xFu:
      result = [a1 recent];
      if (!result)
      {
        goto LABEL_110;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 7;
      goto LABEL_87;
    case 0x10u:
      result = [a1 highlightMain];
      if (!result)
      {
        goto LABEL_117;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 8;
      goto LABEL_87;
    case 0x11u:
      result = [a1 highlightExtra];
      if (!result)
      {
        goto LABEL_114;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 9;
      goto LABEL_87;
    case 0x12u:
      result = [a1 publisherNameForGuide];
      if (result)
      {

        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v6 = 0;
        v16 = 0;
        v18 = 0;
        result = 0xA000000000000000;
        v5 = 10;
LABEL_87:
        *a2 = v5;
        a2[1] = v8;
        a2[2] = v9;
        a2[3] = v10;
        a2[4] = v11;
        a2[5] = v12;
        a2[6] = v13;
        a2[7] = v14;
        a2[8] = v15;
        a2[9] = v6;
        a2[10] = v16;
        a2[11] = result;
        a2[12] = v18;
      }

      else
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
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
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
      }

      return result;
    case 0x13u:
      result = [a1 numPlacesInGuide];
      if (!result)
      {
        goto LABEL_97;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 11;
      goto LABEL_87;
    case 0x14u:
      result = [a1 publisherDescription];
      if (!result)
      {
        goto LABEL_119;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 12;
      goto LABEL_87;
    case 0x15u:
      result = [a1 secondaryName];
      if (!result)
      {
        goto LABEL_89;
      }

      v19 = result;
      v20 = [result symbolName];
      if (v20)
      {
        v21 = v20;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v22;
      }

      else
      {

        v5 = 0;
        v8 = 0;
      }

      v6 = 0;
      result = 0;
      goto LABEL_87;
    case 0x16u:
      result = [a1 factoid];
      if (!result)
      {
        goto LABEL_96;
      }

      v8 = result;
      LODWORD(v5) = [result factoidIndex];

      v6 = 0;
      v5 = v5;
      result = 0x9000000000000000;
      goto LABEL_87;
    case 0x18u:
      result = [a1 realTimeEvChargerAvailability];
      if (!result)
      {
        goto LABEL_91;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 13;
      goto LABEL_87;
    case 0x19u:
      result = [a1 detourTime];
      if (!result)
      {
        goto LABEL_104;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 14;
      goto LABEL_87;
    case 0x1Au:
      result = [a1 hikingDifficulty];
      if (!result)
      {
        goto LABEL_90;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 15;
      goto LABEL_87;
    case 0x1Bu:
      result = [a1 hikingTrailLength];
      if (!result)
      {
        goto LABEL_121;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 16;
      goto LABEL_87;
    case 0x1Cu:
      result = [a1 photoCarousel];
      if (!result)
      {
        goto LABEL_120;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 17;
      goto LABEL_87;
    case 0x1Du:
      result = [a1 inUserLibrary];
      if (!result)
      {
        goto LABEL_93;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 22;
      goto LABEL_87;
    case 0x1Eu:
      result = [a1 userNote];
      if (!result)
      {
        goto LABEL_98;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 23;
      goto LABEL_87;
    case 0x1Fu:
      result = [a1 hikeRouteElevationGainLoss];
      if (!result)
      {
        goto LABEL_112;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 21;
      goto LABEL_87;
    case 0x20u:
      result = [a1 hikeRouteType];
      if (!result)
      {
        goto LABEL_99;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 18;
      goto LABEL_87;
    case 0x21u:
      result = [a1 hikeRouteDuration];
      if (!result)
      {
        goto LABEL_122;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 20;
      goto LABEL_87;
    case 0x22u:
      result = [a1 hikeRouteLength];
      if (!result)
      {
        goto LABEL_92;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 19;
      goto LABEL_87;
    case 0x23u:
      result = [a1 visitedPlace];
      if (!result)
      {
        goto LABEL_115;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v18 = 0;
      result = 0xA000000000000000;
      v5 = 24;
      goto LABEL_87;
    default:
      goto LABEL_87;
  }
}

void sub_10038B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13)
{
  v13 = a12 >> 60;
  if (a12 >> 60 == 6)
  {
  }

  else if (v13 == 2 || !v13)
  {
  }
}

id sub_10038B4A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryTemplateFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10038B500(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_29:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_30:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (!v5)
  {
    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = *(a1 + 8 * v4 + 32);

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_20;
    }

LABEL_10:
    if (v2)
    {
      if (v9 >= _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    if (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 < 0)
      {
        goto LABEL_27;
      }

      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    *(v8 + 128) = v6;

LABEL_6:

    ++v4;
    if (v9 == v3)
    {
      goto LABEL_21;
    }
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v8 = result;
  v9 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  if (v5)
  {
    goto LABEL_31;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10038B6F8(void *a1)
{
  v1 = [a1 mapItem];
  if (v1 && (v2 = v1, v3 = [v1 _venueInfo], v2, v3) && (v4 = objc_msgSend(v3, "contents"), swift_unknownObjectRelease(), v4) && (v5 = objc_msgSend(v4, "items"), swift_unknownObjectRelease(), v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v5, v7 = *(v6 + 16), , v7))
  {
    sub_1000CE6B8(&qword_10191AF00);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1011E1D60;
    sub_1000CE6B8(&qword_101908400);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1011E47B0;
    type metadata accessor for PlaceSummaryUnit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0xA000000000000000;
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
    *(v10 + 112) = 0;
    *(v9 + 32) = v10;
    *(v8 + 32) = v9;
    *(v8 + 40) = 0;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1011E47B0;
    v12 = swift_allocObject();
    *(v12 + 16) = 26;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0xA000000000000000;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v11 + 32) = v12;
    *(v8 + 48) = v11;
    v13 = (v8 + 57);
    *(v8 + 56) = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10191AF00);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1011E1D40;
    sub_1000CE6B8(&qword_101908400);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1011E47B0;
    type metadata accessor for PlaceSummaryUnit();
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    *(v15 + 96) = 0;
    *(v15 + 104) = 0xA000000000000000;
    *(v15 + 120) = 0;
    *(v15 + 128) = 0;
    *(v15 + 112) = 0;
    *(v14 + 32) = v15;
    *(v8 + 32) = v14;
    *(v8 + 40) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1011E4FD0;
    v17 = swift_allocObject();
    *(v17 + 16) = 1;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 104) = 0xA000000000000000;
    *(v17 + 112) = 0;
    *(v17 + 120) = 0;
    *(v17 + 128) = 0;
    *(v16 + 32) = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = 25;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0xA000000000000000;
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    *(v18 + 128) = 0;
    *(v16 + 40) = v18;
    *(v8 + 48) = v16;
    *(v8 + 56) = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1011E4FD0;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E4FD0;
    v21 = swift_allocObject();
    *(v21 + 16) = 6;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0xA000000000000000;
    *(v21 + 112) = 0;
    *(v21 + 120) = 0;
    *(v21 + 128) = 0;
    *(inited + 32) = v21;
    v22 = swift_allocObject();
    v22[2] = 1;
    v22[11] = 0;
    v22[13] = 0x4000000000000000;
    v22[15] = 0;
    v22[16] = 0;
    *(inited + 40) = v22;
    v23 = sub_10038B500(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v19 + 32) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = 2;
    *(v24 + 24) = 0u;
    *(v24 + 40) = 0u;
    *(v24 + 56) = 0u;
    *(v24 + 72) = 0u;
    *(v24 + 88) = 0u;
    *(v24 + 104) = 0xA000000000000000;
    *(v24 + 112) = 0;
    *(v24 + 120) = 0;
    *(v24 + 128) = 0;
    *(v19 + 40) = v24;
    *(v8 + 64) = v19;
    v13 = (v8 + 73);
    *(v8 + 72) = 0;
  }

  *v13 = 0;
  v25 = type metadata accessor for PlaceSummaryTemplateEntry();
  v26 = objc_allocWithZone(v25);
  if (*(v8 + 16))
  {
    v26[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v26[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v8;
    *&v26[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = &off_101600680;
    *&v26[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = 0;
    v28.receiver = v26;
    v28.super_class = v25;
    return objc_msgSendSuper2(&v28, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038BBFC(void *a1)
{
  sub_1000CE6B8(&qword_10191AF00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E7D60;
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0xA000000000000000;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0;
  *(v3 + 32) = v4;
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E7420;
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0xA000000000000000;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  v7[2] = 402336;
  v7[11] = 0;
  v7[13] = 0x1000000000000000;
  v7[15] = 0;
  v7[16] = 0;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 2;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0xA000000000000000;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v5 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 18;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0xA000000000000000;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  *(v5 + 56) = v9;
  v10 = swift_allocObject();
  v10[2] = 1;
  v10[11] = 0;
  v10[13] = 0x3000000000000000;
  v10[15] = 0;
  v10[16] = 0;
  *(v5 + 64) = v10;
  *(v2 + 48) = v5;
  *(v2 + 56) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E47C0;
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 104) = 0xA000000000000000;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = &off_1016006A8;
  v13[11] = 0;
  v13[13] = 0x2000000000000000;
  v13[15] = 0;
  v13[16] = 0;
  *(v12 + 128) = v13;
  *(v11 + 32) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 19;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0xA000000000000000;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v11 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 21;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 104) = 0xA000000000000000;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  *(v11 + 48) = v15;
  *(v2 + 64) = v11;
  *(v2 + 72) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1011FF480;
  v17 = swift_allocObject();
  *(v17 + 16) = 6;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0xA000000000000000;
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 128) = 0;
  *(v16 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = 4;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 104) = 0xA000000000000000;
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v18 + 128) = 0;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = 13;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0xA000000000000000;
  *(v19 + 112) = 0;
  *(v19 + 120) = 0;
  *(v19 + 128) = 0;
  *(v16 + 48) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = 5;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0xA000000000000000;
  *(v20 + 112) = 0;
  *(v20 + 120) = 0;
  *(v20 + 128) = 0;
  *(v16 + 56) = v20;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[11] = 0;
  v21[13] = 0x5000000000000000;
  v21[15] = 0;
  v21[16] = 0;
  *(v16 + 64) = v21;
  v22 = swift_allocObject();
  v22[2] = 1;
  v22[11] = 0;
  v22[13] = 0x4000000000000000;
  v22[15] = 0;
  v22[16] = 0;
  *(v16 + 72) = v22;
  v23 = sub_10038B500(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1011E47B0;
  *(v24 + 32) = v23;
  *(v2 + 80) = v24;
  *(v2 + 88) = 1;
  v25 = &off_1016006D0;
  if (a1)
  {
    if ([a1 representsIntermediateStop])
    {
      v25 = &off_1016006F8;
    }

    else
    {
      result = [a1 mapItem];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v27 = result;
      v28 = [result _hasHikeInfo];

      if (v28)
      {
        v25 = &off_101600720;
      }
    }
  }

  v29 = type metadata accessor for PlaceSummaryTemplateEntry();
  v30 = objc_allocWithZone(v29);
  if (*(v2 + 16))
  {
    v30[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v30[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v2;
    *&v30[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = v25;
    *&v30[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = 0;
    v31.receiver = v30;
    v31.super_class = v29;
    return objc_msgSendSuper2(&v31, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

void sub_10038C204(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + 16);
  if (v15)
  {
    v3 = 0;
    v4 = a2 + 32;
    v14 = a2 + 32;
    while (2)
    {
      v5 = (v4 + 24 * v3);
      v6 = *v5;
      v7 = v5[1];
      v8 = *v5 & 0xFFFFFFFFFFFFFF8;
      if (*v5 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v3;
      swift_bridgeObjectRetain_n();
      v16 = v7;

      for (i = 0; v9 != i; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v8 + 16))
          {
            goto LABEL_19;
          }

          v11 = *(v6 + 8 * i + 32);
        }

        v12 = v11;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        v13 = [v11 isEqualToGEOMapItemIdentifier:a1];

        if (v13)
        {

          swift_bridgeObjectRelease_n();
          return;
        }
      }

      swift_bridgeObjectRelease_n();
      v4 = v14;
      if (v3 != v15)
      {
        continue;
      }

      break;
    }
  }
}

void *sub_10038C380(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = a2 + 32 + 24 * i;
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = *(v5 + 16);
        v7 = (v5 + 32);
        while (v6)
        {
          v8 = *v7++;
          --v6;
          if (v8 == a1)
          {
            v9 = *(v4 + 8);
            v10 = v9;
            return v9;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10038C3FC(uint64_t a1, uint64_t a2)
{
  if (String.count.getter() <= 0)
  {
    return 0;
  }

  type metadata accessor for PlaceSummaryUnit();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = xmmword_1011FF490;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0;

  return v4;
}

id sub_10038C4A0(uint64_t a1, uint64_t a2)
{
  result = sub_10038C3FC(a1, a2);
  if (result)
  {
    v3 = result;
    sub_1000CE6B8(&qword_10191AF00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1011E1D60;
    sub_1000CE6B8(&qword_101908400);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1011E47B0;
    type metadata accessor for PlaceSummaryUnit();
    v6 = swift_allocObject();
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0;
    *(v6 + 104) = 0xA000000000000000;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    *(v6 + 112) = 0;
    *(v5 + 32) = v6;
    *(v4 + 32) = v5;
    *(v4 + 40) = 0;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1011E47B0;
    *(v7 + 32) = v3;
    *(v4 + 48) = v7;
    *(v4 + 56) = 0;
    v8 = type metadata accessor for PlaceSummaryTemplateEntry();
    v9 = objc_allocWithZone(v8);
    if (*(v4 + 16))
    {
      v9[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
      *&v9[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v4;
      *&v9[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = &off_101600770;
      *&v9[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = 0;
      v10.receiver = v9;
      v10.super_class = v8;
      return objc_msgSendSuper2(&v10, "init");
    }

    else
    {

      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  return result;
}

id sub_10038C644()
{
  sub_1000CE6B8(&qword_10191AF00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E7D60;
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0xA000000000000000;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 0;
  *(v1 + 32) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 14;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0xA000000000000000;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v5[2] = 402336;
  v5[11] = 0;
  v5[13] = 0x1000000000000000;
  v5[15] = 0;
  v5[16] = 0;
  *(v3 + 40) = v5;
  v6 = swift_allocObject();
  v6[2] = 1;
  v6[11] = 0;
  v6[13] = 0x3000000000000000;
  v6[15] = 0;
  v6[16] = 0;
  *(v3 + 48) = v6;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E47B0;
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 104) = 0xA000000000000000;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = &off_101600798;
  v9[11] = 0;
  v9[13] = 0x2000000000000000;
  v9[15] = 0;
  v9[16] = 0;
  *(v8 + 128) = v9;
  *(v7 + 32) = v8;
  *(v0 + 64) = v7;
  *(v0 + 72) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E7920;
  v11 = swift_allocObject();
  *(v11 + 16) = 6;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = 0xA000000000000000;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v10 + 32) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 13;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0xA000000000000000;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  *(v10 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 5;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0xA000000000000000;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0;
  *(v13 + 128) = 0;
  *(v10 + 48) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 19;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0xA000000000000000;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v10 + 56) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 20;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 104) = 0xA000000000000000;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  *(v10 + 64) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 21;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0xA000000000000000;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v10 + 72) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = 18;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0xA000000000000000;
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 128) = 0;
  *(v10 + 80) = v17;
  v18 = swift_allocObject();
  v18[2] = 1;
  v18[11] = 0;
  v18[13] = 0x4000000000000000;
  v18[15] = 0;
  v18[16] = 0;
  *(v10 + 88) = v18;
  v19 = sub_10038B500(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1011E47B0;
  *(v20 + 32) = v19;
  *(v0 + 80) = v20;
  *(v0 + 88) = 1;
  v21 = type metadata accessor for PlaceSummaryTemplateEntry();
  v22 = objc_allocWithZone(v21);
  if (*(v0 + 16))
  {
    v22[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v22[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v0;
    *&v22[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = &off_1016007C0;
    *&v22[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = 0;
    v24.receiver = v22;
    v24.super_class = v21;
    return objc_msgSendSuper2(&v24, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

unsigned __int8 *sub_10038CB6C(id a1, void *a2, char a3)
{
  if (a2)
  {
    if (*(a2 + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_useCase) == 2)
    {
      v4 = a2;
      v5 = [a1 mapItem];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 _geoMapItem];

        if (v7)
        {
          v8 = [v7 _identifier];
          swift_unknownObjectRelease();
          if (v8)
          {
            sub_10038C204(v8, *(v4 + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_templatePairs));
            v10 = v9;

            if (v10)
            {
LABEL_11:
              v16 = [objc_opt_self() currentDevice];
              v17 = [v16 userInterfaceIdiom];

              v40 = v10;
              v18 = *&v10[OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_entries];
              if (v18 >> 62)
              {
                goto LABEL_57;
              }

              v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
              v41 = v4;
              if (v17 == 5)
              {
                v20 = 2;
              }

              else
              {
                v20 = 1;
              }

              if (v19)
              {
                v17 = 0;
                v21 = 0;
                v4 = &OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType;
                while (1)
                {
                  if ((v18 & 0xC000000000000001) != 0)
                  {
                    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v23 = (v17 + 1);
                    if (__OFADD__(v17, 1))
                    {
LABEL_32:
                      __break(1u);
                      goto LABEL_33;
                    }
                  }

                  else
                  {
                    if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
LABEL_57:
                      v19 = _CocoaArrayWrapper.endIndex.getter();
                      goto LABEL_13;
                    }

                    v22 = *(v18 + 8 * v17 + 32);
                    v23 = (v17 + 1);
                    if (__OFADD__(v17, 1))
                    {
                      goto LABEL_32;
                    }
                  }

                  v24 = v22[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType];
                  if (v20 == v24)
                  {
                    v38 = v22;

                    return v38;
                  }

                  if (v24 == 3 && v21 == 0)
                  {
                    v17 = v23;
                    v21 = v22;
                    if (v23 == v19)
                    {
                      goto LABEL_53;
                    }
                  }

                  else
                  {

                    ++v17;
                    if (v23 == v19)
                    {
                      v22 = v21;
                      goto LABEL_53;
                    }
                  }
                }
              }

              v22 = 0;
LABEL_53:
              v39 = v22;

              if (v39)
              {

                return v39;
              }

              v36 = sub_10038BBFC(a1);

              return v36;
            }
          }
        }
      }

      v11 = [a1 mapItem];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 _geoMapItem];

        if (v13)
        {
          v14 = [v13 _placeType];
          swift_unknownObjectRelease();
          v15 = sub_10038C380(v14, *(v4 + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_templatePairs));
          if (v15)
          {
            v10 = v15;
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v4 = a2;
    }

    v36 = sub_10038BBFC(a1);

    return v36;
  }

LABEL_33:
  v26 = a3;
  v27 = [a1 autocompletePerson];
  if (!v27)
  {
    goto LABEL_42;
  }

  v28 = v27;
  if (!*&v27[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact])
  {

LABEL_42:
    if (v26)
    {

      return sub_10038C644();
    }

    else
    {

      return sub_10038BBFC(a1);
    }
  }

  v29 = [a1 autocompletePerson];
  if (v29)
  {
    v30 = v29;
    v31 = sub_100509AEC();

    if ([a1 locationType] == 4)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = sub_10038C4A0(v32, v33);

      return v34;
    }
  }

  v37 = sub_10038E778(&off_101600748, 0);

  return v37;
}

id sub_10038CFCC()
{
  sub_1000CE6B8(&qword_10191AF00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v2 = swift_allocObject();
  *(v2 + 16) = 8;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0xA000000000000000;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v1 + 32) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 9;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0xA000000000000000;
  v5 = swift_allocObject();
  v5[2] = 3;
  v5[11] = 0;
  v5[13] = 0x3000000000000000;
  v5[15] = 0;
  v5[16] = 0;
  *(v4 + 128) = v5;
  *(v3 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  v6 = type metadata accessor for PlaceSummaryTemplateEntry();
  v7 = objc_allocWithZone(v6);
  if (*(v0 + 16))
  {
    v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v0;
    *&v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = &off_101600810;
    v9.receiver = v7;
    v9.super_class = v6;
    return objc_msgSendSuper2(&v9, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038D1E8()
{
  sub_1000CE6B8(&qword_10191AF00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v2 = swift_allocObject();
  *(v2 + 16) = 8;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0xA000000000000000;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v1 + 32) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E4FD0;
  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0xA000000000000000;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 11;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0xA000000000000000;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v3 + 40) = v5;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  v6 = type metadata accessor for PlaceSummaryTemplateEntry();
  v7 = objc_allocWithZone(v6);
  if (*(v0 + 16))
  {
    v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v0;
    *&v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v7[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = &off_101600860;
    v9.receiver = v7;
    v9.super_class = v6;
    return objc_msgSendSuper2(&v9, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038D410(void *a1, char a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 directionIntent];
    if (v4)
    {

      v5 = sub_10038E384(8, 9, &off_1016007E8);
LABEL_10:
      v9 = v5;

      return v9;
    }

    v6 = [v3 clientResolved];
    if (v6)
    {

      v5 = sub_10038CFCC();
      goto LABEL_10;
    }

    v7 = [v3 publisherResult];
    if (v7)
    {

      v5 = sub_10038E384(8, 12, &off_101600838);
      goto LABEL_10;
    }

    v8 = [v3 collectionResult];
    if (v8)
    {

      v5 = sub_10038D1E8();
      goto LABEL_10;
    }

    v11 = [v3 mapItem];
    if (!v11)
    {
      v5 = sub_10038E384(8, 9, 0);
      goto LABEL_10;
    }

    v12 = v11;
  }

  sub_1000CE6B8(&qword_10191AF00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v15 = swift_allocObject();
  *(v15 + 16) = 8;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 104) = 0xA000000000000000;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0xA000000000000000;
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v16 + 112) = 0;
  *(v15 + 128) = v16;
  *(v14 + 32) = v15;
  *(v13 + 32) = v14;
  *(v13 + 40) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E7420;
  v18 = swift_allocObject();
  *(v18 + 16) = 3;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 104) = 0xA000000000000000;
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v18 + 128) = 0;
  *(v17 + 32) = v18;
  v19 = swift_allocObject();
  v19[2] = 402336;
  v19[11] = 0;
  v19[13] = 0x1000000000000000;
  v19[15] = 0;
  v19[16] = 0;
  *(v17 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = 7;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = 0xA000000000000000;
  *(v20 + 112) = 0;
  *(v20 + 120) = 0;
  *(v20 + 128) = 0;
  *(v17 + 48) = v20;
  v21 = swift_allocObject();
  v21[2] = 2;
  v21[11] = 0;
  v21[13] = 0x3000000000000000;
  v21[15] = 0;
  v21[16] = 0;
  *(v17 + 56) = v21;
  v22 = swift_allocObject();
  v22[2] = 1;
  v22[3] = &off_101600888;
  v22[11] = 0;
  v22[13] = 0x2000000000000000;
  v22[15] = 0;
  v22[16] = 0;
  *(v17 + 64) = v22;
  *(v13 + 48) = v17;
  *(v13 + 56) = 0;
  if ((a2 & 1) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1011E47C0;
    v24 = swift_allocObject();
    *(v24 + 16) = 4;
    *(v24 + 24) = 0u;
    *(v24 + 40) = 0u;
    *(v24 + 56) = 0u;
    *(v24 + 72) = 0u;
    *(v24 + 88) = 0u;
    *(v24 + 104) = 0xA000000000000000;
    *(v24 + 112) = 0;
    *(v24 + 120) = 0;
    *(v24 + 128) = 0;
    *(v23 + 32) = v24;
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[11] = 0;
    v25[13] = 0x5000000000000000;
    v25[15] = 0;
    v25[16] = 0;
    *(v23 + 40) = v25;
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[11] = 0;
    v26[13] = 0x8000000000000000;
    v26[15] = 0;
    v26[16] = 0;
    *(v23 + 48) = v26;
    v27 = sub_10038B500(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1011E47B0;
    *(v28 + 32) = v27;
    v30 = *(v13 + 16);
    v29 = *(v13 + 24);
    if (v30 >= v29 >> 1)
    {
      v34 = v28;
      v13 = sub_1003558A4((v29 > 1), v30 + 1, 1, v13);
      v28 = v34;
    }

    *(v13 + 16) = v30 + 1;
    v31 = v13 + 16 * v30;
    *(v31 + 32) = v28;
    *(v31 + 40) = 1;
  }

  v32 = type metadata accessor for PlaceSummaryTemplateEntry();
  v33 = objc_allocWithZone(v32);
  if (*(v13 + 16))
  {
    v33[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v33[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v13;
    *&v33[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v33[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = &off_1016008B0;
    v35.receiver = v33;
    v35.super_class = v32;
    return objc_msgSendSuper2(&v35, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

unsigned __int8 *sub_10038D978(void *a1, void *a2)
{
  if (!a2)
  {
LABEL_27:

    return sub_10038D410(a1, a2);
  }

  if (*(a2 + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_useCase) != 1)
  {
    v3 = a2;
    goto LABEL_31;
  }

  v3 = a2;
  v4 = sub_100298E74();
  if (!v4)
  {
LABEL_31:
    v19 = sub_10038D410(a1, 0);

    return v19;
  }

  v5 = v4;
  v6 = *&v3[OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_templatePairs];

  sub_10038C204(v5, v6);
  v8 = v7;

  if (!v8)
  {
    v20 = sub_10038D410(a1, 0);

    return v20;
  }

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = *(v8 + OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_entries);
  if (v11 >> 62)
  {
    goto LABEL_41;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v22 = v8;
  v23 = v5;
  v24 = v3;
  if (v10 == 5)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v12)
  {
    v10 = 0;
    v14 = 0;
    v3 = (v11 & 0xC000000000000001);
    v8 = &OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType;
    while (1)
    {
      if (v3)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_41:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_7;
        }

        v15 = *(v11 + 8 * v10 + 32);
        v5 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }
      }

      v16 = v15[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType];
      if (v13 == v16)
      {
        v21 = v15;

        goto LABEL_37;
      }

      if (v16 == 3 && v14 == 0)
      {
        v10 = v5;
        v14 = v15;
        if (v5 == v12)
        {
          goto LABEL_35;
        }
      }

      else
      {

        ++v10;
        if (v5 == v12)
        {
          v15 = v14;
          goto LABEL_35;
        }
      }
    }
  }

  v15 = 0;
LABEL_35:
  v21 = v15;

  if (!v21)
  {
    v20 = sub_10038D410(a1, 0);

    return v20;
  }

LABEL_37:
  return v21;
}

id sub_10038DC4C(char a1)
{
  sub_1000CE6B8(&qword_101908400);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1011E4FD0;
    type metadata accessor for PlaceSummaryUnit();
    v3 = swift_allocObject();
    *(v3 + 16) = 7;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0xA000000000000000;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 128) = 0;
    v4 = (v2 + 40);
    *(v2 + 32) = v3;
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1011E47B0;
    v4 = (v2 + 32);
    type metadata accessor for PlaceSummaryUnit();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = 27;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0xA000000000000000;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *v4 = v5;
  sub_1000CE6B8(&qword_10191AF00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0xA000000000000000;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 112) = 0;
  *(v7 + 32) = v8;
  *(v6 + 32) = v7;
  *(v6 + 40) = 0;
  *(v6 + 48) = v2;
  *(v6 + 56) = 0;
  v9 = type metadata accessor for PlaceSummaryTemplateEntry();
  v10 = objc_allocWithZone(v9);
  if (*(v6 + 16))
  {
    v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v6;
    *&v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = &off_101600900;
    v12.receiver = v10;
    v12.super_class = v9;
    return objc_msgSendSuper2(&v12, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038DEB8(char a1)
{
  sub_1000CE6B8(&qword_101908400);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1011E47C0;
    type metadata accessor for PlaceSummaryUnit();
    v3 = swift_allocObject();
    v3[2] = 402336;
    v3[11] = 0;
    v3[13] = 0x1000000000000000;
    v3[15] = 0;
    v3[16] = 0;
    *(v2 + 32) = v3;
    v4 = swift_allocObject();
    *(v4 + 16) = 7;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0xA000000000000000;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
    v5 = (v2 + 48);
    *(v2 + 40) = v4;
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1011E4FD0;
    type metadata accessor for PlaceSummaryUnit();
    v6 = swift_allocObject();
    v6[2] = 402336;
    v6[11] = 0;
    v6[13] = 0x1000000000000000;
    v6[15] = 0;
    v6[16] = 0;
    v5 = (v2 + 40);
    *(v2 + 32) = v6;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = 28;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0xA000000000000000;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *v5 = v7;
  sub_1000CE6B8(&qword_10191AF00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0xA000000000000000;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 112) = 0;
  *(v9 + 32) = v10;
  *(v8 + 32) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = v2;
  *(v8 + 56) = 0;
  v11 = type metadata accessor for PlaceSummaryTemplateEntry();
  v12 = objc_allocWithZone(v11);
  if (*(v8 + 16))
  {
    v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v8;
    *&v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = &off_101600928;
    v14.receiver = v12;
    v14.super_class = v11;
    return objc_msgSendSuper2(&v14, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038E194(uint64_t a1)
{
  sub_1000CE6B8(&qword_10191AF00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0xA000000000000000;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0;
  *(v3 + 32) = v4;
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E47B0;
  v6 = swift_allocObject();
  v6[2] = 2;
  v6[11] = 0;
  v6[13] = 0x3000000000000000;
  v6[15] = 0;
  v6[16] = 0;
  *(v5 + 32) = v6;
  *(v2 + 48) = v5;
  *(v2 + 56) = 0;
  v7 = type metadata accessor for PlaceSummaryTemplateEntry();
  v8 = objc_allocWithZone(v7);
  if (*(v2 + 16))
  {
    v8[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v8[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v2;
    *&v8[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v8[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = a1;
    v10.receiver = v8;
    v10.super_class = v7;
    return objc_msgSendSuper2(&v10, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038E384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_10191AF00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0xA000000000000000;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v7 + 32) = v8;
  *(v6 + 32) = v7;
  *(v6 + 40) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E47B0;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0xA000000000000000;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v9 + 32) = v10;
  *(v6 + 48) = v9;
  *(v6 + 56) = 0;
  v11 = type metadata accessor for PlaceSummaryTemplateEntry();
  v12 = objc_allocWithZone(v11);
  if (*(v6 + 16))
  {
    v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v6;
    *&v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v12[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = a3;
    v14.receiver = v12;
    v14.super_class = v11;
    return objc_msgSendSuper2(&v14, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038E584(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_10191AF00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0xA000000000000000;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 0;
  *(v5 + 32) = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E47B0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0xA000000000000000;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v7 + 32) = v8;
  *(v4 + 48) = v7;
  *(v4 + 56) = 0;
  v9 = type metadata accessor for PlaceSummaryTemplateEntry();
  v10 = objc_allocWithZone(v9);
  if (*(v4 + 16))
  {
    v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v4;
    *&v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v10[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = a2;
    v12.receiver = v10;
    v12.super_class = v9;
    return objc_msgSendSuper2(&v12, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038E778(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_10191AF00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D60;
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E47B0;
  type metadata accessor for PlaceSummaryUnit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0xA000000000000000;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 0;
  *(v5 + 32) = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E4FD0;
  v8 = swift_allocObject();
  v8[2] = 402336;
  v8[11] = 0;
  v8[13] = 0x1000000000000000;
  v8[15] = 0;
  v8[16] = 0;
  *(v7 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 33;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0xA000000000000000;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = 0;
  *(v7 + 40) = v9;
  *(v4 + 48) = v7;
  *(v4 + 56) = 0;
  v10 = type metadata accessor for PlaceSummaryTemplateEntry();
  v11 = objc_allocWithZone(v10);
  if (*(v4 + 16))
  {
    v11[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v11[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v4;
    *&v11[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = a1;
    *&v11[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = a2;
    v13.receiver = v11;
    v13.super_class = v10;
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10038E990(uint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v24 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = a1 + 40;
  while (2)
  {
    v5 = (v4 + 16 * v3);
    v6 = v3;
    while (1)
    {
      if (v6 >= v2)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (v10)
        {
          goto LABEL_14;
        }

        goto LABEL_32;
      }

      v3 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      if (String.count.getter() >= 1)
      {
        break;
      }

      ++v6;
      v5 += 2;
      if (v3 == v2)
      {
        goto LABEL_12;
      }
    }

    v23 = 1;
    type metadata accessor for PlaceSummaryUnit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0;
    *(v9 + 88) = 1;
    *(v9 + 96) = xmmword_1011FF490;
    *(v9 + 120) = 0;
    *(v9 + 128) = 0;
    *(v9 + 112) = 0;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v24;
    if (v3 != v2)
    {
      continue;
    }

    break;
  }

LABEL_12:
  if (v1 >> 62)
  {
    goto LABEL_31;
  }

  v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_14:
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v13 = *(v1 + 8 * v11 + 32);

        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_29;
        }
      }

      sub_1000CE6B8(&qword_101908400);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1011E47B0;
      *(v15 + 32) = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1003558A4(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_1003558A4((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 20) = 0;
      ++v11;
      if (v14 == v10)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_32:
  v12 = _swiftEmptyArrayStorage;
LABEL_33:

  if (*(v12 + 2))
  {
    v19 = type metadata accessor for PlaceSummaryTemplateEntry();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = 1;
    *&v20[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v12;
    *&v20[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = 0;
    *&v20[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = &off_101600A40;
    v22.receiver = v20;
    v22.super_class = v19;
    return objc_msgSendSuper2(&v22, "init");
  }

  else
  {

    return 0;
  }
}

Swift::Void __swiftcall UIView._maps_applyGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = &protocol witness table for _Glass;
  sub_10001A848(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

uint64_t UIView._maps_applyGlassBackground(forButton:buttonBackgroundType:allowAdaptive:isCarPlay:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v19 = a2;
  v6 = type metadata accessor for _Glass._GlassVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for _Glass();
  __chkstk_darwin(v11);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a4)
    {
      v15 = v12;
      static _Glass._GlassVariant.regular.getter();
      _Glass._GlassVariant.adaptive(_:)();
      (*(v7 + 8))(v9, v6);
      _Glass.init(_:smoothness:)();
      v21 = v11;
      v22 = &protocol witness table for _Glass;
      sub_10001A848(v20);
      _Glass.flexible(_:)();
      (*(v15 + 8))(v14, v11);
    }

    else if (v19 == 1)
    {
      v17 = v12;
      static _Glass._GlassVariant.regular.getter();
      _Glass._GlassVariant.subvariant(_:)();
      (*(v7 + 8))(v9, v6);
      _Glass.init(_:smoothness:)();
      v21 = v11;
      v22 = &protocol witness table for _Glass;
      sub_10001A848(v20);
      _Glass.flexible(_:)();
      (*(v17 + 8))(v14, v11);
    }

    else
    {
      v16 = v12;
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v21 = v11;
      v22 = &protocol witness table for _Glass;
      sub_10001A848(v20);
      _Glass.flexible(_:)();
      (*(v16 + 8))(v14, v11);
    }
  }

  else
  {
    static _Glass._GlassVariant.regular.getter();
    _Glass._GlassVariant.adaptive(_:)();
    (*(v7 + 8))(v9, v6);
    v21 = v11;
    v22 = &protocol witness table for _Glass;
    sub_10001A848(v20);
    _Glass.init(_:smoothness:)();
  }

  return UIView._background.setter();
}

Swift::Void __swiftcall UIView._maps_applyGlassBackground(forButton:withColor:allowAdaptive:isCarPlay:)(Swift::Bool forButton, UIColor withColor, Swift::Bool allowAdaptive, Swift::Bool isCarPlay)
{
  v18[1] = allowAdaptive;
  isa = withColor.super.isa;
  v6 = type metadata accessor for _Glass._GlassVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for _Glass();
  v20 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v18 - v15;
  if (_UISolariumEnabled())
  {
    if (forButton)
    {
      static _Glass._GlassVariant.regular.getter();
      if (isCarPlay)
      {
        _Glass._GlassVariant.adaptive(_:)();
        (*(v7 + 8))(v9, v6);
      }

      _Glass.init(_:smoothness:)();
      _Glass.tint(_:)();
      v17 = *(v20 + 8);
      v17(v13, v11);
      v22 = v11;
      v23 = &protocol witness table for _Glass;
      sub_10001A848(v21);
      _Glass.flexible(_:)();
      v17(v16, v11);
    }

    else
    {
      static _Glass._GlassVariant.regular.getter();
      _Glass._GlassVariant.adaptive(_:)();
      (*(v7 + 8))(v9, v6);
      _Glass.init(_:smoothness:)();
      v22 = v11;
      v23 = &protocol witness table for _Glass;
      sub_10001A848(v21);
      _Glass.tint(_:)();
      (*(v20 + 8))(v16, v11);
    }

    UIView._background.setter();
  }
}

uint64_t sub_10038F548()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  static _Glass._GlassVariant.regular.getter();
  _Glass._GlassVariant.forceScrim()();
  (*(v1 + 8))(v3, v0);
  v7[3] = type metadata accessor for _Glass();
  v7[4] = &protocol witness table for _Glass;
  sub_10001A848(v7);
  _Glass.init(_:smoothness:)();
  return UIView._background.setter();
}

void sub_10038F678(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v7 = a1;
  static _Glass._GlassVariant.regular.getter();
  _Glass._GlassVariant.forceScrim()();
  (*(v3 + 8))(v5, v2);
  v9[3] = type metadata accessor for _Glass();
  v9[4] = &protocol witness table for _Glass;
  sub_10001A848(v9);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

Swift::Void __swiftcall UIView._maps_applyGlassGroup()()
{
  v0[3] = type metadata accessor for _GlassGroup();
  v0[4] = &protocol witness table for _GlassGroup;
  sub_10001A848(v0);
  _GlassGroup.init(foreground:)();
  UIView._background.setter();
}

void sub_10038F930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100391B10();
  }
}

id sub_10038F984()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_currentLocaleBlockObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver:v2];
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer;
  if (*&v1[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *&v1[v5] = 0;
    swift_unknownObjectRelease();
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for WeatherConditionsDataProvider();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10038FBA0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled) != (a1 & 1))
  {
    v2 = v1;
    if (*(v1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled))
    {
      if (qword_1019067B0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_101960138);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Enabling weather conditions data provider", v6, 2u);
      }

      sub_100390208();
    }

    else
    {
      if (qword_1019067B0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_101960138);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Disabling weather conditions data provider", v10, 2u);
      }

      v11 = OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer;
      if (*(v2 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        *(v2 + v11) = 0;

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10038FDD4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100391E50;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101614D58;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100041288(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_10004EC58(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_1003900B4(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_observers) allObjects];
  sub_1000CE6B8(&unk_10191C980);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_weatherConditions;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v7 weatherConditionsDataProviderDidChangeWeatherConditions:*(a1 + v6)];
      swift_unknownObjectRelease();
      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_100390208()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v1 - 8);
  __chkstk_darwin(v1);
  v58 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v57 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchTimeInterval();
  v55 = *(v61 - 8);
  v5 = __chkstk_darwin(v61);
  v54 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = (v49 - v7);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v49 - v14;
  v15 = type metadata accessor for Date();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled) != 1)
  {
    return;
  }

  v51 = v3;
  v52 = v1;
  v22 = OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer;
  v50 = *(v0 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_updatingTimer);
  v60 = v0;
  if (v50 || (v49[1] = sub_100014C84(0, &unk_101909C10), aBlock[0] = &_swiftEmptyArrayStorage, v49[0] = sub_100041288(&unk_101918E60, &type metadata accessor for OS_dispatch_source.TimerFlags), sub_1000CE6B8(&unk_101909C20), sub_10004EC58(&qword_101918E70, &unk_101909C20), dispatch thunk of SetAlgebra.init<A>(_:)(), sub_100014C84(0, &qword_10190B4F0), v23 = static OS_dispatch_queue.main.getter(), v24 = static OS_dispatch_source.makeTimerSource(flags:queue:)(), v23, (*(v19 + 8))(v21, v18), *(v60 + v22) = v24, swift_unknownObjectRelease(), v0 = v60, *(v60 + v22)))
  {
    v25 = *(v0 + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_weatherConditions);
    if (v25)
    {
      swift_unknownObjectRetain();
      v26 = [v25 expirationDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceNow.getter();
      v28 = v27;
      (*(v53 + 8))(v17, v15);
      if (v28 + 60.0 > 60.0)
      {
        v29 = v28 + 60.0;
      }

      else
      {
        v29 = 60.0;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v29 = 60.0;
    }

    v30 = v63;
    static DispatchTime.now()();
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        *v8 = v29;
        v31 = v55;
        v21 = *(v55 + 13);
        v32 = v61;
        (v21)(v8, enum case for DispatchTimeInterval.seconds(_:), v61);
        + infix(_:_:)();
        v18 = v31[1];
        (v18)(v8, v32);
        v33 = *(v64 + 8);
        v64 += 8;
        v55 = v33;
        v33(v13, v30);
        if (qword_1019067B0 == -1)
        {
LABEL_13:
          v34 = type metadata accessor for Logger();
          sub_100021540(v34, qword_101960138);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 134217984;
            *(v37 + 4) = v29;
            _os_log_impl(&_mh_execute_header, v35, v36, "Scheduling weather conditions refresh in %f seconds", v37, 0xCu);
          }

          swift_getObjectType();
          v38 = v61;
          (v21)(v8, enum case for DispatchTimeInterval.never(_:), v61);
          v39 = v54;
          *v54 = 30;
          (v21)(v39, enum case for DispatchTimeInterval.nanoseconds(_:), v38);
          v40 = v62;
          OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
          (v18)(v39, v38);
          (v18)(v8, v38);
          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_100391E48;
          aBlock[5] = v41;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100039C64;
          aBlock[3] = &unk_101614D08;
          v42 = _Block_copy(aBlock);

          v43 = v56;
          static DispatchQoS.unspecified.getter();
          v44 = v58;
          sub_100059410();
          OS_dispatch_source.setEventHandler(qos:flags:handler:)();
          _Block_release(v42);
          (*(v59 + 8))(v44, v52);
          (*(v57 + 8))(v43, v51);

          if (v50)
          {
            v55(v40, v63);
            swift_unknownObjectRelease();
          }

          else
          {
            OS_dispatch_source.resume()();
            swift_unknownObjectRelease();
            v55(v40, v63);
          }

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_1019067B0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100021540(v45, qword_101960138);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Failed to create timer to refresh weather conditions", v48, 2u);
  }
}

void sub_100390BDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_lastSavedLocation);
    if (v2)
    {
      v3 = qword_1019067B0;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_101960138);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Scheduled weather conditions refresh", v8, 2u);
      }

      sub_100390D20(v4);
    }

    else
    {
      v4 = Strong;
    }
  }
}

uint64_t sub_100390D20(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100014C84(0, &qword_10190B4F0);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = [objc_opt_self() sharedManager];
    v14 = [v13 shouldShowWeatherConditions];

    if (v14 && v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_enabled] == 1)
    {
      if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(*&v2[OBJC_IVAR____TtC4Maps29WeatherConditionsDataProvider_traitEnvironment]))
      {
        v15 = _UISolariumEnabled();
      }

      else
      {
        v15 = 1;
      }

      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = v2;
      *(v17 + 40) = a1;
      *(v17 + 48) = v15;
      v18 = v2;
      v19 = a1;
      sub_10020AAE4(0, 0, v6, &unk_1011FF508, v17);
    }

    else
    {
      return sub_10004EE78(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100390FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 224) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = type metadata accessor for Date();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  v8 = type metadata accessor for WeatherMetadata();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  v9 = sub_1000CE6B8(&qword_10191C968);
  *(v6 + 80) = v9;
  *(v6 + 88) = *(v9 - 8);
  *(v6 + 96) = swift_task_alloc();
  v10 = type metadata accessor for WeatherCondition();
  *(v6 + 104) = v10;
  *(v6 + 112) = *(v10 - 8);
  *(v6 + 120) = swift_task_alloc();
  v11 = type metadata accessor for WeatherConditionIcon();
  *(v6 + 128) = v11;
  *(v6 + 136) = *(v11 - 8);
  *(v6 + 144) = swift_task_alloc();
  v12 = sub_1000CE6B8(&unk_10191C970);
  *(v6 + 152) = v12;
  *(v6 + 160) = *(v12 - 8);
  *(v6 + 168) = swift_task_alloc();
  v13 = type metadata accessor for CurrentWeather();
  *(v6 + 176) = v13;
  *(v6 + 184) = *(v13 - 8);
  *(v6 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1003912BC, 0, 0);
}