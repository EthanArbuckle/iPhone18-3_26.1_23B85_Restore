unint64_t sub_1001735B4()
{
  result = qword_10190D8D0;
  if (!qword_10190D8D0)
  {
    type metadata accessor for CarHomeContentListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D8D0);
  }

  return result;
}

Swift::Int sub_10017360C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100173680()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unsigned __int8 *sub_1001736C4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

void sub_1001737D8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_containerStyle;
  if ((*(v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_containerStyle + 8) & 1) != 0 || *v2 != a1)
  {
    *v2 = a1;
    *(v2 + 8) = 0;
    v3 = *(v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
    if (v3)
    {
      v5 = v3;
      sub_100540ACC(a1, 0);
    }

    sub_10003B82C();
  }
}

void sub_1001738D0(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_animationCount];
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_animationCount] = v8;
  }

  if ((a2 & 1) == 0)
  {
    [a3 setHidden:0];
  }
}

void sub_100173960()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
    if (v2)
    {
      v3 = [v2 view];
      if (v3)
      {
        v4 = 0.0;
        if ((v1[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden] & 1) == 0)
        {
          v4 = *&v1[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha];
        }

        v5 = v3;
        [v3 setAlpha:v4];
      }
    }
  }
}

void sub_100173A0C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_animationCount];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *&Strong[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_animationCount] = v7;
      if (!v7)
      {
        v8 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden;
        if (Strong[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden] == 1)
        {
          v9 = *&Strong[OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController];
          v10 = 1;
          if (v9)
          {
            v9[OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state] = 1;
            v11 = Strong;
            v12 = v9;
            sub_100037794();

            v13 = v11;
            v10 = v11[v8];
          }

          else
          {
            v13 = Strong;
          }

          [a3 setHidden:v10];
          Strong = v13;
        }
      }
    }
  }
}

void sub_100173AF0(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_bottomConstraint) setConstant:?];
  v2 = *(a1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100173C9C(double a1)
{
  v2 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha;
  if (*(v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha) != a1)
  {
    *(v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayAlpha) = a1;
    v3 = *(v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
    if (v3)
    {
      v4 = [v3 view];
      if (v4)
      {
        v5 = 0.0;
        if ((*(v1 + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_overlayHidden) & 1) == 0)
        {
          v5 = *(v1 + v2);
        }

        v6 = v4;
        [v4 setAlpha:v5];
      }
    }
  }
}

id sub_100173E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RedoSearchChromeOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100173EE0()
{
  result = qword_10190D9B8;
  if (!qword_10190D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D9B8);
  }

  return result;
}

uint64_t sub_100173F54()
{
  v1 = OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_constraints;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    if (v3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        return result;
      }
    }

    v4 = objc_opt_self();
    sub_100014C84(0, &qword_10190B720);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 deactivateConstraints:isa];

    v7 = sub_100173740();
    if (*v6)
    {
      *v6 = &_swiftEmptyArrayStorage;
    }

    (v7)(v8, 0);
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_10017407C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 shouldStartRedoSearch];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10017412C()
{
  swift_getKeyPath();
  sub_100174C68(&qword_10190DA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001741C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100174C68(&qword_10190DA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel__richTextViews);
}

uint64_t sub_100174264()
{
  swift_getKeyPath();
  sub_100174C68(&qword_10190DA30);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10017431C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_suggestion];
  v3 = v0;
  v4 = String._bridgeToObjectiveC()();
  [v2 removeObserver:v3 forKeyPath:v4];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t type metadata accessor for CarSuggestionRowViewModel()
{
  result = qword_10190DA18;
  if (!qword_10190DA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100174598()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_suggestion) subtitle];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CE6B8(&unk_1019157F0);
    v9 = swift_allocObject();
    v14 = xmmword_1011E1D30;
    *(v9 + 16) = xmmword_1011E1D30;
    sub_1000CE6B8(&qword_10190A070);
    type metadata accessor for RichTextViewModel();
    v10 = swift_allocObject();
    *(v10 + 16) = v14;
    (*(v3 + 104))(v6, enum case for RichTextType.line(_:), v2);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v3 + 8))(v6, v2);
    *(v9 + 32) = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15 = v1;
    sub_100174C68(&qword_10190DA30);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    v15 = v1;
    sub_100174C68(&qword_10190DA30);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100174A5C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100174B40()
{
  v1 = *(*v0 + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_title);

  return v1;
}

uint64_t sub_100174B80()
{
  swift_getKeyPath();
  sub_100174C68(&qword_10190DA30);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100174C18@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_100174C68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CarSuggestionRowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100174CC4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel__richTextViews) = *(v0 + 24);
}

uint64_t type metadata accessor for HomePinnedItemShelfView()
{
  result = qword_10190DA90;
  if (!qword_10190DA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100174D94()
{
  type metadata accessor for HomePinnedItemCarouselViewModel();
  if (v0 <= 0x3F)
  {
    sub_100174E30();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100174E30()
{
  if (!qword_10190DAA0)
  {
    sub_1000D6664(&qword_101922B10);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10190DAA0);
    }
  }
}

uint64_t sub_100174EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = type metadata accessor for HomePinnedItemShelfView();
  v75 = *(v73 - 8);
  v4 = *(v75 + 64);
  __chkstk_darwin(v73);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColumnViewConfig();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  v12 = *v1;
  swift_getKeyPath();
  *&v87 = v12;
  sub_10017671C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems);
  v83 = (v13 >> 62);
  if (v13 >> 62)
  {
    goto LABEL_147;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v84 = i;
    if (i < 1)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = __OFADD__(v16, 3);
      v16 += 3;
      if (v18)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v15;
      if (v16 >= i)
      {
        goto LABEL_11;
      }
    }

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
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
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
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    ;
  }

  v17 = 0;
LABEL_11:
  v79 = v17;
  *&v87 = _swiftEmptyArrayStorage;
  v19 = v17 & ~(v17 >> 63);

  sub_1005114B4(0, v19, 0);
  if (v79 < 0)
  {
    __break(1u);
LABEL_149:
    swift_unknownObjectRelease();
    __break(1u);
LABEL_150:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v67 = v4;
  v4 = v87;
  v72 = a1;
  v76 = v6;
  v71 = v7;
  v70 = v2;
  v69 = v11;
  v68 = v5;
  if (!v79)
  {
    v22 = v84;
    if (v84 < 1)
    {
      goto LABEL_128;
    }

    v37 = 0;
    v82 = v13 & 0xC000000000000001;
    v7 = v13 & 0xFFFFFFFFFFFFFF8;
    v11 = v83;
LABEL_73:
    if (v13 < 0)
    {
      v38 = v13;
    }

    else
    {
      v38 = v7;
    }

    v79 = v7 + 32;
    v80 = v38;
    v5 = v37 + 3;
    v81 = v37;
    v85 = v7;
    while (1)
    {
      if (v22 >= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v22;
      }

      a1 = v37 + 3;
      if (__OFADD__(v37, 3))
      {
        goto LABEL_136;
      }

      if (v22 >= a1)
      {
        v2 = v37 + 3;
      }

      else
      {
        v2 = v22;
      }

      if (v2 < v37)
      {
        goto LABEL_137;
      }

      if (v11)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *(v7 + 16);
      }

      if (v39 < v37)
      {
        goto LABEL_138;
      }

      if (v81 < 0)
      {
        goto LABEL_139;
      }

      if (v11)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v40 = *(v7 + 16);
      }

      if (v40 < v2)
      {
        goto LABEL_140;
      }

      if (!v82 || v37 == v2)
      {

        if (!v11)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v37 >= v2)
        {
          goto LABEL_145;
        }

        type metadata accessor for HomePinnedItemModel();

        v41 = v37;
        do
        {
          v42 = v41 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v41);
          v41 = v42;
        }

        while (v6 != v42);
        if (!v11)
        {
LABEL_100:
          v43 = (2 * v2) | 1;
          v11 = v85;
          v2 = v79;
          v7 = v43 >> 1;
          if ((v43 & 1) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_101;
        }
      }

      v11 = _CocoaArrayWrapper.subscript.getter();
      v2 = v47;
      v37 = v48;
      v7 = v49 >> 1;
      if ((v49 & 1) == 0)
      {
LABEL_109:
        v45 = v7 - v37;
        v6 = __OFSUB__(v7, v37);
        swift_unknownObjectRetain();
        if (v6)
        {
          goto LABEL_144;
        }

        if (!v45)
        {
          goto LABEL_122;
        }

        goto LABEL_114;
      }

LABEL_101:
      v78 = v2;
      v6 = type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v44 = swift_dynamicCastClass();
      if (!v44)
      {
        swift_unknownObjectRelease();
        v44 = _swiftEmptyArrayStorage;
      }

      v2 = v44[2];
      swift_unknownObjectRelease_n();

      v45 = v7 - v37;
      if (__OFSUB__(v7, v37))
      {
        goto LABEL_146;
      }

      if (v2 != v45)
      {
        v2 = v78;
        if (!v45)
        {
LABEL_122:
          swift_unknownObjectRelease();
LABEL_123:
          v46 = _swiftEmptyArrayStorage;
LABEL_124:
          swift_unknownObjectRelease();
          goto LABEL_125;
        }

LABEL_114:
        if (v45 < 1)
        {
          v46 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_1000CE6B8(&qword_101908400);
          v46 = swift_allocObject();
          v50 = j__malloc_size(v46);
          v51 = v50 - 32;
          if (v50 < 32)
          {
            v51 = v50 - 25;
          }

          v46[2] = v45;
          v46[3] = (2 * (v51 >> 3)) | 1;
        }

        swift_unknownObjectRelease();
        if (v37 == v7)
        {
          goto LABEL_150;
        }

        type metadata accessor for HomePinnedItemModel();
        swift_arrayInitWithCopy();
        goto LABEL_124;
      }

      v46 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v46)
      {
        goto LABEL_123;
      }

LABEL_125:
      *&v87 = v4;
      v53 = *(v4 + 16);
      v52 = *(v4 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1005114B4((v52 > 1), v53 + 1, 1);
        v4 = v87;
      }

      *(v4 + 16) = v53 + 1;
      *(v4 + 8 * v53 + 32) = v46;
      v5 += 3;
      v37 = a1;
      v11 = v83;
      v22 = v84;
      v7 = v85;
      if (a1 >= v84)
      {
        goto LABEL_128;
      }
    }
  }

  a1 = 0;
  v20 = 0;
  v82 = v13 & 0xC000000000000001;
  v7 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 < 0)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v80 = v21;
  v78 = v7 + 32;
  v11 = v83;
  v22 = v84;
  v85 = v13 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v20 >= v22)
    {
      goto LABEL_130;
    }

    v6 = v20 + 3;
    if (__OFADD__(v20, 3))
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v20 + 3;
    }

    if (__OFADD__(v20, 3))
    {
      goto LABEL_131;
    }

    if (v22 >= v6)
    {
      v2 = v20 + 3;
    }

    else
    {
      v2 = v22;
    }

    if (v2 < v20)
    {
      goto LABEL_132;
    }

    if (v11)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *(v7 + 16);
    }

    if (v23 < v20)
    {
      goto LABEL_133;
    }

    if (v20 < 0)
    {
      goto LABEL_134;
    }

    if (v11)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *(v7 + 16);
    }

    if (v24 < v2)
    {
      goto LABEL_135;
    }

    v81 = v20 + 3;
    if (!v82 || v20 == v2)
    {

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v20 >= v2)
      {
        goto LABEL_142;
      }

      type metadata accessor for HomePinnedItemModel();

      v25 = v20;
      do
      {
        v26 = v25 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v25);
        v25 = v26;
      }

      while (v2 != v26);
      if (!v11)
      {
LABEL_41:
        v27 = (2 * v2) | 1;
        v11 = v7;
        v2 = v78;
        if ((v27 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }
    }

    v11 = _CocoaArrayWrapper.subscript.getter();
    v2 = v30;
    v20 = v31;
    v27 = v32;
    if ((v32 & 1) == 0)
    {
LABEL_50:
      v7 = v27 >> 1;
      v18 = __OFSUB__(v27 >> 1, v20);
      v29 = (v27 >> 1) - v20;
      v6 = v18;
      swift_unknownObjectRetain();
      if (v6)
      {
        goto LABEL_141;
      }

      if (v29)
      {
LABEL_55:
        if (v29 < 1)
        {
          v6 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_1000CE6B8(&qword_101908400);
          v6 = swift_allocObject();
          v33 = j__malloc_size(v6);
          v34 = v33 - 32;
          if (v33 < 32)
          {
            v34 = v33 - 25;
          }

          *(v6 + 16) = v29;
          *(v6 + 24) = (2 * (v34 >> 3)) | 1;
        }

        swift_unknownObjectRelease();
        if (v20 == v7)
        {
          goto LABEL_149;
        }

        type metadata accessor for HomePinnedItemModel();
        swift_arrayInitWithCopy();
        goto LABEL_65;
      }

      goto LABEL_63;
    }

LABEL_42:
    v77 = v2;
    v6 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = _swiftEmptyArrayStorage;
    }

    v2 = v28[2];
    swift_unknownObjectRelease_n();

    v7 = v27 >> 1;
    v18 = __OFSUB__(v27 >> 1, v20);
    v29 = (v27 >> 1) - v20;
    if (v18)
    {
      goto LABEL_143;
    }

    if (v2 == v29)
    {
      v6 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v6)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v2 = v77;
    if (v29)
    {
      goto LABEL_55;
    }

LABEL_63:
    swift_unknownObjectRelease();
LABEL_64:
    v6 = _swiftEmptyArrayStorage;
LABEL_65:
    swift_unknownObjectRelease();
LABEL_66:
    *&v87 = v4;
    v36 = *(v4 + 16);
    v35 = *(v4 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1005114B4((v35 > 1), v36 + 1, 1);
      v4 = v87;
    }

    ++a1;
    *(v4 + 16) = v36 + 1;
    *(v4 + 8 * v36 + 32) = v6;
    v20 = v5;
    v11 = v83;
    v22 = v84;
    v7 = v85;
  }

  while (a1 != v79);
  if (v5 < v84)
  {
    v37 = v81;
    goto LABEL_73;
  }

LABEL_128:

  v54 = v70;
  v55 = v69;
  static MapsDesignConstants.ColumnViews.MapsHome.pinnedItemsColumnViewConfig(itemCount:containerSize:)();
  v56 = v71;
  (*(v71 + 16))(v74, v55, v76);
  v57 = *(v54 + 24);
  v58 = *(v54 + 32);
  v87 = *(v54 + 8);
  v88 = v57;
  v89 = v58;
  sub_1000CE6B8(&qword_10190DAE0);
  Binding.projectedValue.getter();
  v85 = v86;
  v59 = v68;
  sub_10017629C(v54, v68);
  v60 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v4;
  sub_100176300(v59, v61 + v60);
  sub_1001763E8();
  v62 = v72;
  ColumnView.init(config:scrollIndex:columnBuilder:)();
  v63 = static Animation.default.getter();
  (*(v56 + 8))(v55, v76);
  result = sub_1000CE6B8(&qword_10190DAF0);
  v65 = (v62 + *(result + 36));
  v66 = v84;
  *v65 = v63;
  v65[1] = v66;
  return result;
}

void sub_100175928(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for HomePinnedItemShelfView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    v11 = *(a2 + 8 * a1 + 32);
    sub_10017629C(a3, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = swift_allocObject();
    sub_100176300(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    *a4 = v11;
    a4[1] = sub_10017643C;
    a4[2] = v13;

    return;
  }

  __break(1u);
}

uint64_t sub_100175A5C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10017671C(&qword_101916010, type metadata accessor for HomePinnedItemModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  if (*(a1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isAddNewFavorite) == 1)
  {
    swift_getKeyPath();
    sub_10017671C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v4 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectAddNewPinnedItem);
    if (!v6)
    {
      return result;
    }

    v6(v4);
    v7 = v6;
  }

  else
  {
    swift_getKeyPath();
    sub_10017671C(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v4 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectOpenPinnedItem);
    if (!v8)
    {
      return result;
    }

    v8(v4, a1);
    v7 = v8;
  }

  return sub_1000588AC(v7);
}

uint64_t sub_100175C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10190DB10);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_1000CE6B8(&qword_10190DB18);
  v13[1] = a1;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  swift_bridgeObjectRetain_n();

  sub_1000CE6B8(&qword_10190DB20);
  sub_1000CE6B8(&qword_10190DB28);
  sub_1000414C8(&qword_10190DB30, &qword_10190DB20);
  sub_1001765C8();
  sub_10017671C(&qword_10190DB48, type metadata accessor for HomePinnedItemModel);
  ForEach<>.init(_:content:)();
  v10 = [objc_opt_self() mainScreen];
  v11 = [v10 traitCollection];

  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  sub_1000414C8(&qword_10190DB50, &qword_10190DB10);
  View.insetGroupedSectionBackground(cornerRadius:)();
  return sub_1001766B4(v8);
}

uint64_t sub_100175EF0@<X0>(void **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PlaceCell();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v27[4] = type metadata accessor for HomePinnedItemModel();
  v27[5] = sub_10017671C(&qword_10190DB58, type metadata accessor for HomePinnedItemModel);
  v27[1] = v14;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v14;
  v16 = v14;

  PlaceCell.init(model:tapHandler:)();
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v26 = v16;
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a2 + 32);
    v19 = v16;
    v20 = v18;
LABEL_6:
    v21 = v20;
    v22 = static NSObject.== infix(_:_:)();

LABEL_9:
    KeyPath = swift_getKeyPath();
    v24 = (a5 + *(sub_1000CE6B8(&qword_10190DB28) + 36));
    v25 = type metadata accessor for TopCellDividierModifier();
    *(v24 + *(v25 + 20)) = KeyPath;
    sub_1000CE6B8(&qword_10190BC28);
    swift_storeEnumTagMultiPayload();
    *v24 = swift_getKeyPath();
    sub_1000CE6B8(&qword_10190CBC8);
    swift_storeEnumTagMultiPayload();
    *(v24 + *(v25 + 24)) = v22 & 1;
    return (*(v11 + 32))(a5, v13, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001761C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10017671C(&qword_101916010, type metadata accessor for HomePinnedItemModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isAddNewFavorite);
  return result;
}

uint64_t sub_10017629C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePinnedItemShelfView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100176300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePinnedItemShelfView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100176364(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HomePinnedItemShelfView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_100175928(a1, v6, v7, a2);
}

unint64_t sub_1001763E8()
{
  result = qword_10190DAE8;
  if (!qword_10190DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DAE8);
  }

  return result;
}

uint64_t sub_10017643C(uint64_t a1)
{
  v3 = *(type metadata accessor for HomePinnedItemShelfView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100175A5C(a1, v4);
}

unint64_t sub_1001764BC()
{
  result = qword_10190DAF8;
  if (!qword_10190DAF8)
  {
    sub_1000D6664(&qword_10190DAF0);
    sub_1000414C8(&qword_10190DB00, &qword_10190DB08);
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DAF8);
  }

  return result;
}

unint64_t sub_1001765C8()
{
  result = qword_10190DB38;
  if (!qword_10190DB38)
  {
    sub_1000D6664(&qword_10190DB28);
    sub_10017671C(&qword_10190D640, &type metadata accessor for PlaceCell);
    sub_10017671C(&qword_10190DB40, type metadata accessor for TopCellDividierModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DB38);
  }

  return result;
}

uint64_t sub_1001766B4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190DB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017671C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100176920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10017700C(a3);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_100176984(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

id sub_100176ADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavAudioControlFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100176B38(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = "audioTypeNotification";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "audioTypeNotification";
      }

      v2.super.isa = qword_1019600D8;
      v9 = 0x800000010121FA60;
      v3 = 1952870227;
      goto LABEL_13;
    case 1:
      v1 = "softer voice volume";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "softer voice volume";
      }

      v2.super.isa = qword_1019600D8;
      v9 = 0x800000010121FAB0;
      v4 = 0x6C616D726F4ELL;
      goto LABEL_14;
    case 2:
      v1 = "normal voice volume";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "normal voice volume";
      }

      v2.super.isa = qword_1019600D8;
      v9 = 0x800000010121FB00;
      v3 = 1685417804;
LABEL_13:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
LABEL_14:
      v5._object = (v1 | 0x8000000000000000);
      v6 = 0xD000000000000023;
      v5._countAndFlagsBits = 0xD000000000000018;
      v7 = 0xE600000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v2, *&v4, *(&v9 - 1))._countAndFlagsBits;
  }

  return 0;
}

uint64_t sub_100176D0C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1819033902;
    case 2:
      return 0x656E6F4E2ELL;
    case 1:
      return 0x4F737472656C412ELL;
  }

  _StringGuts.grow(_:)(48);
  v2._object = 0x800000010121FB60;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  type metadata accessor for NavAudioType(0);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x800000010121FB80;
  String.append(_:)(v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100176E44(uint64_t a1)
{
  if (a1 && a1 != 2)
  {
    if (a1 != 1)
    {
      return 0;
    }

    _UISolariumEnabled();
  }

  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t sub_100176F28(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = 0x752E332E65766177;
  v4 = 0x6C2E332E65766177;
  if (a1 != 1)
  {
    v4 = 0;
  }

  if (a1 == 2)
  {
    v5 = 0x6D726F6665766177;
  }

  else
  {
    v5 = v4;
  }

  if (a1)
  {
    v3 = v5;
  }

  if (a1 == 1)
  {
    v6 = 0x6D726F6665766177;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 2)
  {
    v7 = 0x6D726F6665766177;
  }

  else
  {
    v7 = v6;
  }

  if (a1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x6D726F6665766177;
  }

  if (v2)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10017700C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x800000010121BEA0;
      v3 = 0x797420646574754DLL;
      v5 = 0x646574754DLL;
      v4 = 0xEA00000000006570;
      v6 = 0xE500000000000000;
      goto LABEL_13;
    case 1:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v3 = 0xD000000000000010;
      v8 = 0x800000010121BE20;
      v5 = 0x4F20737472656C41;
      v6 = 0xEB00000000796C6ELL;
      v4 = 0x800000010121BE00;
LABEL_13:
      v2 = 0xD00000000000001DLL;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v5, *&v2)._countAndFlagsBits;
    case 0:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v2 = 0xD000000000000019;
      v8 = 0x800000010121BF20;
      v3 = 0x20646574756D6E55;
      v4 = 0xEC00000065707974;
      v5 = 0x646574756D6E55;
      v6 = 0xE700000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v5, *&v2)._countAndFlagsBits;
  }

  return 0;
}

uint64_t sub_100177220@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_viewModel);
  a1[3] = &type metadata for CarHomeListDetailView;
  a1[4] = sub_100177958();
  *a1 = v3;
}

id sub_100177278(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CarHomeListDetailViewModel();
  v6 = swift_allocObject();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *&v2[OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_viewModel] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1001773A0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_viewModel];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1[6];
  v1[6] = sub_1001779AC;
  v1[7] = v2;

  sub_1000588AC(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v1[8];
  v1[8] = sub_1001779B4;
  v1[9] = v4;

  sub_1000588AC(v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v1[10];
  v1[10] = sub_1001779BC;
  v1[11] = v6;

  sub_1000588AC(v7);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v1[12];
  v1[12] = sub_1001779C4;
  v1[13] = v8;

  sub_1000588AC(v9);
}

void sub_100177554(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v5 = [objc_opt_self() sharedInstance];
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v5;
      [v5 displayRoutePlanningForDestination:a2];

      v4 = v6;
    }
  }
}

void sub_10017760C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004F41E4(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100177698(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100339B34(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100177724(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10039B200(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100177828()
{

  v1 = v0 + OBJC_IVAR____TtC4Maps31CarHomeListDetailViewController_actionDelegate;

  return sub_1000A09E0(v1);
}

uint64_t type metadata accessor for CarHomeListDetailViewController()
{
  result = qword_10190DBB0;
  if (!qword_10190DBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100177958()
{
  result = qword_10190DBC0;
  if (!qword_10190DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DBC0);
  }

  return result;
}

uint64_t sub_100177A38@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_viewModel);
  a1[3] = &type metadata for CapsuleOptionsSelectorView;
  a1[4] = sub_100178338();
  *a1 = v3;
}

id sub_100177A90()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result setPresentedModally:1];

  result = [v0 cardPresentationController];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  [result setDefaultContaineeLayout:5];

  result = [v0 cardPresentationController];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result setTakesAvailableHeight:1];

  result = [v0 cardPresentationController];
  if (result)
  {
    v5 = result;
    [result setHideGrabber:1];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001783B4(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100177CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_completion);
    if (v8)
    {

      v8(a1, a2, a3);
      sub_1000588AC(v8);
    }
  }
}

int *sub_100177DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    sub_1001783B4(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
    sub_1000CE6B8(&unk_10190B9B0);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 0;
  }

  else
  {
    sub_1000CE6B8(&unk_10190B9A0);
    type metadata accessor for UIHostingControllerSizingOptions();
    *(swift_allocObject() + 16) = xmmword_1011E1D60;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    sub_1001783B4(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
    sub_1000CE6B8(&unk_10190B9B0);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 1;
  }

  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = v5;
  v7 = a1 + result[6];
  *v7 = 0;
  *(v7 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

uint64_t sub_100178038()
{
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_completion));
}

uint64_t sub_1001780F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001783B4(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100178438;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1001781DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001783FC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1001783B4(&qword_10190DC08, type metadata accessor for CapsuleOptionsSelectorViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_100178338()
{
  result = qword_10190DC00;
  if (!qword_10190DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DC00);
  }

  return result;
}

uint64_t sub_1001783B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001783FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return v4(v6);
}

unint64_t sub_1001784EC()
{
  v1 = v0;
  *buf = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v2 = *(v0 + OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel);
  if (v2 > 0)
  {
    if (v2 == 1)
    {
      v3 = @"Incidents Only";
      goto LABEL_11;
    }

    if (v2 == 2)
    {
      v3 = @"Full";
      goto LABEL_11;
    }

LABEL_8:
    v3 = [NSString stringWithFormat:@"UNKNOWN: %lu", *(v0 + OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel)];
    goto LABEL_12;
  }

  if (v2 == -1)
  {
    v3 = @"No Override";
    goto LABEL_11;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  v3 = @"None";
LABEL_11:
  v4 = v3;
LABEL_12:
  v5 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *buf = v7;
  v27 = v9;
  sub_1000CE6B8(&unk_10190D010);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x74536E676973202CLL;
  v11._object = 0xED0000203A656C79;
  String.append(_:)(v11);
  v12 = *(v1 + OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_navigationSignStyle);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = @".Mini";
    }

    else
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10017A7C0(buf, "NSString * _Nonnull NSStringFromCarNavigationGuidanceSignStyle(CarNavigationGuidanceSignStyle)", "CarNavigationGuidanceSign.h", 37);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = v16;
          sub_10017A7EC(buf, v16);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v13 = @".Unknown";
    }
  }

  else
  {
    v13 = @".Default";
  }

  v18 = v13;
  v19 = v13;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return 0xD000000000000010;
}

void sub_10017881C(void *a1)
{
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_navigationSignStyle);
  v6 = String._bridgeToObjectiveC()();
  [a1 encodeInteger:v5 forKey:v6];
}

id sub_100178998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationModeGuidanceConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001789F0(void *a1)
{
  if (qword_101906590 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10190DC18);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = v4;
    sub_1000CE6B8(&qword_10190DD30);
    v10 = String.init<A>(describing:)();
    v12 = sub_10004DEB8(v10, v11, &v41);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = *&v5[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration];
    v14 = String.init<A>(describing:)();
    v16 = sub_10004DEB8(v14, v15, &v41);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "didSet initialGuidanceConfiguration from: %s to: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration;
  v18 = *&v5[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration];
  if (v18)
  {
    v19 = objc_opt_self();
    v41 = 0;
    v20 = v18;
    v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v41];
    v22 = v41;
    if (v21)
    {
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = *&v5[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults];
      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = String._bridgeToObjectiveC()();
      [v26 setObject:isa forKey:v28];

      sub_1000D41B4(v23, v25);
    }

    else
    {
      v31 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v32 = v5;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v41 = v36;
        *v35 = 136315138;
        v37 = *&v5[v17];
        sub_1000CE6B8(&qword_10190DD30);
        v38 = String.init<A>(describing:)();
        v40 = sub_10004DEB8(v38, v39, &v41);

        *(v35 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v33, v34, "failed to persist initialGuidanceConfiguration in user defaults: %s", v35, 0xCu);
        sub_10004E3D0(v36);
      }
    }
  }

  else
  {
    v29 = *&v5[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults];
    v30 = String._bridgeToObjectiveC()();
    [v29 setURL:0 forKey:v30];
  }
}

void sub_100178E34()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation) == 1)
  {
    v1 = v0;
    if (qword_101906590 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10190DC18);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "user modified config during active nav -> will not persist configuration as we don't want to revert", v5, 2u);
    }

    v6 = *(v1 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults);
    v7 = String._bridgeToObjectiveC()();
    [v6 setURL:0 forKey:v7];
  }
}

id sub_100178F90()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userDefaults];
  v2 = v0;

  v3 = String._bridgeToObjectiveC()();

  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for NavigationAlertsOnlyOverrideSynchronizationTask();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_100179190(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_isApplyingConfiguration;
  *(v2 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_isApplyingConfiguration) = 1;
  if (qword_101906590 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_10190DC18);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v19 = v4;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10004DEB8(v13, v15, &v20);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "applyConfiguration: Will apply configuration override to: %s", v9, 0xCu);
    sub_10004E3D0(v10);

    v4 = v19;
  }

  v17 = *(v2 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioPreferences);
  result = [v17 guidanceLevelForTransportType:0];
  if (result != *&v6[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel])
  {
    [v17 setGuidanceLevel:? forTransportType:?];
    result = [v17 synchronize];
  }

  *(v2 + v4) = 0;
  return result;
}

void sub_10017939C(uint64_t a1, void *a2, uint64_t a3, Class isa, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  if (!a2)
  {
LABEL_22:
    sub_10017A750(a3, v42);
    v25 = v43;
    if (v43)
    {
      v26 = sub_10005E838(v42, v43);
      v27 = *(v25 - 8);
      v28 = __chkstk_darwin(v26);
      v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30, v28);
      v31 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v27 + 8))(v30, v25);
      sub_10004E3D0(v42);
      if (!isa)
      {
LABEL_25:
        v32 = type metadata accessor for NavigationAlertsOnlyOverrideSynchronizationTask();
        v41.receiver = v6;
        v41.super_class = v32;
        objc_msgSendSuper2(&v41, "observeValueForKeyPath:ofObject:change:context:", v10, v31, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v31 = 0;
      if (!isa)
      {
        goto LABEL_25;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10017A6F8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_25;
  }

  v12 = *&v6[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioKey] == a1 && *&v6[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioKey + 8] == a2;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v10 = String._bridgeToObjectiveC()();
    goto LABEL_22;
  }

  if (qword_101906590 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_10190DC18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "observeValue: called for audioKey, will reload values from default", v16, 2u);
  }

  [*&v6[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioPreferences] loadValuesFromDefaults];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong currentNavigationSession], v18, v19))
  {

    if ((v6[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_isApplyingConfiguration] & 1) == 0 && *&v6[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration])
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_10004DEB8(a1, v10, v42);
        _os_log_impl(&_mh_execute_header, v20, v21, "observeValue: was called for %s during an Alerts Only navigation session -> We will not reset initial settings after nav ends", v22, 0xCu);
        sub_10004E3D0(v23);
      }

      v6[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation] = 1;

      sub_100178E34();
      return;
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  v40 = v6;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v35 = 136315906;
    *(v35 + 4) = sub_10004DEB8(a1, v10, v42);
    *(v35 + 12) = 1024;
    *(v35 + 14) = v24;
    *(v35 + 18) = 1024;
    *(v35 + 20) = v40[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_isApplyingConfiguration];

    *(v35 + 24) = 2080;
    v36 = *&v40[OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration];
    sub_1000CE6B8(&qword_10190DD30);
    v37 = String.init<A>(describing:)();
    v39 = sub_10004DEB8(v37, v38, v42);

    *(v35 + 26) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "observeValue: was called for %s, but it was ignored. isNavigating: %{BOOL}d, isApplyingConfiguration: %{BOOL}d, initialGuidanceConfiguration: %s", v35, 0x22u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100179A94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration);
  if (v3)
  {
    v4 = (v0 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation);
    v5 = *(v0 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation);
    v6 = qword_101906590;
    v7 = v3;
    if (v5 == 1)
    {
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100021540(v8, qword_10190DC18);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "navigaitonWillEnd: navigation started with an override, but the user changed configuration during nav -> will not restore initial settings", v11, 2u);
      }

      v12 = *(v1 + v2);
      *(v1 + v2) = 0;
      v13 = v12;
    }

    else
    {
      if (v6 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100021540(v19, qword_10190DC18);
      v20 = v7;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v23 = 136315138;
        v31 = v4;
        v24 = v20;
        v25 = [v24 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = sub_10004DEB8(v26, v28, &v32);

        *(v23 + 4) = v29;
        v4 = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "navigationWillEnd: navigation started with an override and the user did not change config during nav -> will apply back previous configuration (%s)", v23, 0xCu);
        sub_10004E3D0(v30);
      }

      sub_100179190(v20);
      v12 = *(v1 + v2);
      *(v1 + v2) = 0;
      v13 = v12;
    }

    sub_1001789F0(v13);
  }

  else
  {
    if (qword_101906590 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100021540(v14, qword_10190DC18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "navigationWillEnd: did not have an initialGuidanceConfiguration so we were not overriding. -> nothing to do", v17, 2u);
    }

    v18 = *(v1 + v2);
    *(v1 + v2) = 0;
    sub_1001789F0(v18);

    v4 = (v1 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation);
  }

  *v4 = 0;

  sub_100178E34();
}

void sub_100179F04(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_userModifiedConfigurationDuringNavigation) = 0;
  sub_100178E34();
  v4 = [a1 configuration];
  LODWORD(a1) = [v4 isETAOnlyMode];

  if (a1)
  {
    v5 = [*(v2 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_audioPreferences) guidanceLevelForTransportType:0];
    v6 = type metadata accessor for NavigationModeGuidanceConfiguration();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel] = v5;
    *&v7[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_navigationSignStyle] = 0;
    v44.receiver = v7;
    v44.super_class = v6;
    v8 = objc_msgSendSuper2(&v44, "init");
    v9 = sub_10017A5CC(v8);
    if (v9)
    {
      v10 = qword_101906590;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100021540(v12, qword_10190DC18);
      v13 = v8;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        osloga = v11;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v43 = v17;
        *v16 = 136315138;
        v18 = v13;
        v19 = [v18 description];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_10004DEB8(v20, v22, &v43);

        *(v16 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v14, v15, "navigationStarted: NavigationSession started in ETA only mode. Will save current configuration before overriding: %s", v16, 0xCu);
        sub_10004E3D0(v17);

        v11 = osloga;
      }

      v24 = *(v2 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration);
      *(v2 + OBJC_IVAR____TtC4Maps47NavigationAlertsOnlyOverrideSynchronizationTask_initialGuidanceConfiguration) = v13;
      v25 = v13;
      sub_1001789F0(v24);

      sub_100179190(v11);
    }

    else
    {
      if (qword_101906590 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100021540(v29, qword_10190DC18);
      v30 = v8;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v43 = v34;
        *v33 = 136315138;
        v35 = v30;
        v36 = [v35 description];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = sub_10004DEB8(v37, v39, &v43);

        *(v33 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v31, v32, "navigationStarted: NavigationSession started in ETA only mode, but current configuration (%s) did not need to be overridden.", v33, 0xCu);
        sub_10004E3D0(v34);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_101906590 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100021540(v26, qword_10190DC18);
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v27, "navigationStarted: session was not launched in ETA only mode. Nothing to do.", v28, 2u);
    }
  }
}

void sub_10017A4E0(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 decodeIntegerForKey:v3];

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [a1 decodeIntegerForKey:v5];

    *&v1[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel] = v4;
    *&v1[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_navigationSignStyle] = v6;
    v7.receiver = v1;
    v7.super_class = type metadata accessor for NavigationModeGuidanceConfiguration();
    objc_msgSendSuper2(&v7, "init");
  }
}

id sub_10017A5CC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel) == 1 && !*(a1 + OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_navigationSignStyle))
  {
    return 0;
  }

  v1 = type metadata accessor for NavigationModeGuidanceConfiguration();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_guidanceLevel] = 1;
  *&v2[OBJC_IVAR____TtC4Maps35NavigationModeGuidanceConfiguration_navigationSignStyle] = 0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, "init");
}

unint64_t sub_10017A658()
{
  result = qword_10190DD40;
  if (!qword_10190DD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190DD40);
  }

  return result;
}

uint64_t sub_10017A6A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10017A6F8()
{
  result = qword_1019086F0;
  if (!qword_1019086F0)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019086F0);
  }

  return result;
}

uint64_t sub_10017A750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101908380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10017A7C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  return result;
}

double sub_10017A7EC(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

id sub_10017A800()
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for HomeListCompositionalLayout();
  v2 = objc_msgSendSuper2(&v10, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  v3 = [v0 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 dataSource];
    if (v5)
    {
      v6 = v5;
      v7 = IndexPath.section.getter();
      if (([v6 respondsToSelector:"numberOfSectionsInCollectionView:"] & 1) != 0 && v7 < objc_msgSend(v6, "numberOfSectionsInCollectionView:", v4) && !objc_msgSend(v6, "collectionView:numberOfItemsInSection:", v4, v7) && v2)
      {
        v8 = v2;
        [v8 setAlpha:0.0];
      }

      swift_unknownObjectRelease();
    }
  }

  return v2;
}

id sub_10017AA34()
{
  v1 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for HomeListCompositionalLayout();
  v3 = objc_msgSendSuper2(&v11, "finalLayoutAttributesForDisappearingDecorationElementOfKind:atIndexPath:", v1, isa);

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 dataSource];
    if (v6)
    {
      v7 = v6;
      v8 = IndexPath.section.getter();
      if (([v7 respondsToSelector:"numberOfSectionsInCollectionView:"] & 1) != 0 && v8 < objc_msgSend(v7, "numberOfSectionsInCollectionView:", v5) && !objc_msgSend(v7, "collectionView:numberOfItemsInSection:", v5, v8) && v3)
      {
        v9 = v3;
        [v9 setAlpha:0.0];
      }

      swift_unknownObjectRelease();
    }
  }

  return v3;
}

id sub_10017AEE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListCompositionalLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10017AF14()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void *sub_10017AF5C()
{
  v1 = [v0 focusItemContainer];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  if (qword_101906750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101960090);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "============= focusOrderSubItems for %@ =============", v7, 0xCu);
    sub_100024F64(v8, &qword_1019144F0);
  }

  v10 = sub_10017E264();
  sub_10017D88C(v2, 0, v10, v11, v12, v13);
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "=============        Final Items             =============", v18, 2u);
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    sub_1000CE6B8(&qword_101914ED0);
    v23 = Array.description.getter();
    v25 = sub_10004DEB8(v23, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s", v21, 0xCu);
    sub_10004E3D0(v22);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "=============            End                 ============= ", v28, 2u);
  }

  swift_unknownObjectRelease();
  return v15;
}

uint64_t CarHostingViewController.headerViewModel.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*CarHostingViewController.headerHandler.getter())(uint64_t, uint64_t, uint64_t)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_10017E260;
}

__CFString *CarHostingViewController.updateHeader(title:primaryAccessory:secondaryAccessory:leadingImage:handler:)(int a1, uint64_t a2, id a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (!a2 && ![a3 type])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v8;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v31;
    return static Published.subscript.setter();
  }

  v33 = a6;
  if (!sub_100240A90(a3))
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  if (a4)
  {
LABEL_9:
    v13 = a4;
    if (sub_100240A90(v13))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

LABEL_14:
  v14 = v8;
  if (v8)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_20;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_20:

    goto LABEL_22;
  }

  v19 = @"<nil>";
  v20 = @"<nil>";
LABEL_22:

  result = v19;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v22 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (a5)
  {
    sub_1000F1178();
    sub_10017DE78(&qword_10190DE60, sub_1000F1178);
    v23 = a5;
  }

  else
  {
    v23 = 0;
  }

  v35 = v23;
  type metadata accessor for CarHeaderViewModel();
  swift_allocObject();

  v24 = a5;
  CarHeaderViewModel.init(id:title:leadingButtons:trailingButtons:leadingImage:titleVisible:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (!v35)
  {
    v27 = v33;
    v26 = a7;
    goto LABEL_30;
  }

  sub_10017DE78(&unk_10190DE50, &type metadata accessor for CarHeaderViewModel);

  v25 = dispatch thunk of static Equatable.== infix(_:_:)();

  v27 = v33;
  v26 = a7;
  if ((v25 & 1) == 0)
  {
LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v14;
    static Published.subscript.setter();
    goto LABEL_31;
  }

LABEL_31:
  swift_getKeyPath();
  swift_getKeyPath();
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v26;
  }

  v30 = v14;
  sub_1000CD9D4(v27);
  static Published.subscript.setter();
}

uint64_t CarHostingViewController.sizingOptions()()
{
  sub_1000CE6B8(&unk_10190B9A0);
  type metadata accessor for UIHostingControllerSizingOptions();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_10017DE78(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10017BB34@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10017BBB4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t property wrapper backing initializer of CarHostingViewController.headerHandler(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1000CE6B8(&qword_10190DE98);
  return Published.init(initialValue:)();
}

double sub_10017BCC0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10017BD40(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10017E308;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1000CD9D4(v3);
  v9 = v7;
  return static Published.subscript.setter();
}

Swift::Void __swiftcall CarHostingViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for CarHostingViewController();
  v38.receiver = v0;
  v38.super_class = v4;
  objc_msgSendSuper2(&v38, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [objc_opt_self() sharedInstance];
  if (!v9)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 hasLimitedUI];

  UIViewController.traitOverrides.getter();
  sub_10017DE24();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v1 selector:"externalDeviceDidUpdate:" name:@"MapsExternalDeviceUpdated" object:0];

  sub_10017DE78(&qword_10190DEA8, type metadata accessor for CarHostingViewController);
  v12 = v1;
  ObservedObject.init(wrappedValue:)();
  sub_10017DEC0();
  AnyView.init<A>(_:)();
  v13 = objc_allocWithZone(sub_1000CE6B8(&unk_10190DEB8));
  v14 = UIHostingController.init(rootView:)();
  v15 = [v14 view];
  if (!v15)
  {
LABEL_10:

    return;
  }

  v16 = v15;
  sub_1000CE6B8(&unk_10190B9A0);
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_10017DE78(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000CE6B8(&unk_10190B9B0);
  sub_1000414C8(&qword_10190DE80, &unk_10190B9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  [v12 addChildViewController:v14];
  v17 = [v12 view];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  [v17 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
  [v16 setOpaque:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v7 clearColor];
  [v16 setBackgroundColor:v27];

  v28 = [v12 view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  [v28 addSubview:v16];

  v30 = [v12 view];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = v30;
  [v30 sendSubviewToBack:v16];

  v32 = [v12 view];
  LODWORD(v33) = 1148846080;
  v34 = [v16 _maps_constraintsEqualToEdgesOfView:v32 priority:v33];

  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = [v34 allConstraints];
  if (v35)
  {
    v36 = v35;

    [objc_opt_self() activateConstraints:v36];
    [v14 didMoveToParentViewController:v12];

    v37 = *&v12[OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController];
    *&v12[OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController] = v14;
    v14 = v37;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10017C468()
{
  sub_10017DE24();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

void *_s4Maps24CarHostingViewControllerC18focusOrderSubItemsSaySo11UIFocusItem_pGvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = sub_10017AF5C();

  return v3;
}

void *CarHostingViewController.preferredFocusEnvironments.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController);
  if (v1)
  {
    sub_1000CE6B8(&qword_101908400);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_1011E47B0;
    v2[4] = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v1;
  return v2;
}

Class sub_10017C808(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController];
  if (v1)
  {
    v2 = a1;
    v3 = v1;
    sub_10017AF5C();
  }

  sub_1000CE6B8(&qword_101914ED0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

id CollectionPickerContaineeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CarHostingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v20[1] = a1;
  v6 = sub_1000CE6B8(&qword_10190DEC8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v10 = sub_1000CE6B8(&qword_10190DED0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  *&v3[OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController] = 0;
  v14 = OBJC_IVAR____TtC4Maps24CarHostingViewController__headerViewModel;
  v22 = 0;
  sub_1000CE6B8(&qword_10190DE90);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v3[v14], v13, v10);
  v15 = OBJC_IVAR____TtC4Maps24CarHostingViewController__headerHandler;
  v22 = 0;
  v23 = 0;
  sub_1000CE6B8(&qword_10190DE98);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v3[v15], v9, v6);
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for CarHostingViewController();
  v21.receiver = v3;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v16, a3);

  return v18;
}

id CarEVChargingAvailabilityView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id CarHostingViewController.init(coder:)(void *a1)
{
  v3 = sub_1000CE6B8(&qword_10190DEC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = sub_1000CE6B8(&qword_10190DED0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  *&v1[OBJC_IVAR____TtC4Maps24CarHostingViewController_hostingController] = 0;
  v11 = OBJC_IVAR____TtC4Maps24CarHostingViewController__headerViewModel;
  v17 = 0;
  sub_1000CE6B8(&qword_10190DE90);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v1[v11], v10, v7);
  v12 = OBJC_IVAR____TtC4Maps24CarHostingViewController__headerHandler;
  v17 = 0;
  v18 = 0;
  sub_1000CE6B8(&qword_10190DE98);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v12], v6, v3);
  v13 = type metadata accessor for CarHostingViewController();
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

id CarHostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarHostingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017CF6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CarHostingViewController();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017CFAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CarHeader();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_10190DF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27[-1] - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v27[0])
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = a2;
    CarHeader.init(model:tapHandler:)();
    (*(v7 + 32))(v15, v9, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = (*(v7 + 56))(v15, v18, 1, v6);
  (*((swift_isaMask & *a2) + 0xE0))(v27, v19);
  v20 = sub_10005E838(v27, v27[3]);
  v21 = __chkstk_darwin(v20);
  (*(v23 + 16))(&v27[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v24 = AnyView.init<A>(_:)();
  sub_10004E3D0(v27);
  sub_10017E18C(v15, v12);
  sub_10017E18C(v12, a3);
  *(a3 + *(sub_1000CE6B8(&qword_10190DF98) + 48)) = v24;

  sub_100024F64(v15, &qword_10190DF90);

  return sub_100024F64(v12, &qword_10190DF90);
}

uint64_t sub_10017D324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarInputType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v14[0];
  if (v14[0])
  {
    (*(v5 + 104))(v7, enum case for CarInputType.touch(_:), v4);
    v10 = static CarInputType.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    v11 = 1;
    if ((v10 & 1) == 0)
    {
      v11 = 2;
    }

    v14[0] = a1;
    v14[1] = a2;
    v13 = v11;
    v9(v14, &v13);
    return sub_1000588AC(v9);
  }

  return result;
}

uint64_t sub_10017D4C4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_1000CE6B8(&qword_10190DF88);
  return sub_10017CFAC(v4, v3, a1 + *(v5 + 44));
}

void sub_10017D524()
{
  v0 = type metadata accessor for UITraitOverrides();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIViewController.traitOverrides.getter();
  sub_10017DE24();
  v4 = dispatch thunk of UIMutableTraits.subscript.getter();
  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 hasLimitedUI];

    if ((v4 & 1) != v7)
    {
      UIViewController.traitOverrides.getter();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIViewController.traitOverrides.setter();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10017D798()
{
  sub_10017E204();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10017D7D4@<X0>(_BYTE *a1@<X8>)
{
  sub_10017DE24();
  result = UITraitCollection.subscript.getter();
  *a1 = result & 1;
  return result;
}

void sub_10017D88C(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = [a1 focusItemsInRect:?];
  sub_1000CE6B8(&qword_101914ED0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = _swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
    goto LABEL_36;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_37:

    return;
  }

LABEL_3:
  if ((a2 & 0x8000000000000000) == 0)
  {
    v14 = objc_opt_self();
    v15 = 0;
    v48 = v12 & 0xC000000000000001;
    v42 = v12 + 32;
    v43 = v12 & 0xFFFFFFFFFFFFFF8;
    v46 = a2 + 1;
    v16 = __OFADD__(a2, 1);
    v47 = v16;
    v44 = v12;
    v45 = a2;
    while (1)
    {
      if (v48)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v15 >= *(v43 + 16))
        {
          goto LABEL_35;
        }

        v17 = *(v42 + 8 * v15);
        swift_unknownObjectRetain();
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (!v13)
          {
            goto LABEL_37;
          }

          goto LABEL_3;
        }
      }

      v52 = v19;
      v20 = [v17 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v50 = [v17 canBecomeFocused];
      [v17 frame];
      v23 = NSStringFromCGRect(v57);
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v54 = 0;
      v55 = 0xE000000000000000;
      if (a2)
      {
        swift_beginAccess();
        v26 = a2;
        do
        {
          v27._countAndFlagsBits = 757935484;
          v27._object = 0xE400000000000000;
          String.append(_:)(v27);
          --v26;
        }

        while (v26);
        swift_endAccess();
      }

      if (qword_101906750 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100021540(v28, qword_101960090);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v53[0] = swift_slowAlloc();
        *v31 = 136315906;
        swift_beginAccess();
        v32 = v14;
        v33 = v13;
        v35 = v54;
        v34 = v55;

        v36 = sub_10004DEB8(v35, v34, v53);

        *(v31 + 4) = v36;
        v13 = v33;
        v14 = v32;
        *(v31 + 12) = 2080;
        v37 = sub_10004DEB8(v51, v22, v53);

        *(v31 + 14) = v37;
        *(v31 + 22) = 1024;
        *(v31 + 24) = v50;
        *(v31 + 28) = 2080;
        v38 = sub_10004DEB8(v49, v25, v53);

        *(v31 + 30) = v38;
        v12 = v44;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s%s (focusable: %{BOOL}d, frame: %s", v31, 0x26u);
        swift_arrayDestroy();

        a2 = v45;
      }

      else
      {
      }

      if (![v14 shouldFilterUnfocusableItems] || objc_msgSend(v17, "canBecomeFocused"))
      {
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v39 = swift_dynamicCastObjCProtocolConditional();
      if (v39)
      {
        if (v47)
        {
          goto LABEL_34;
        }

        v40 = v39;
        swift_unknownObjectRetain();
        v41 = sub_10017D88C(v40, v46, a3, a4, a5, a6);
        sub_100247098(v41);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      v15 = v52;
      if (v52 == v13)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for CarHostingViewController()
{
  result = qword_10190DF60;
  if (!qword_10190DF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10017DE24()
{
  result = qword_10190DEA0;
  if (!qword_10190DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DEA0);
  }

  return result;
}

uint64_t sub_10017DE78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10017DEC0()
{
  result = qword_10190DEB0;
  if (!qword_10190DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DEB0);
  }

  return result;
}

void sub_10017DF1C()
{
  sub_10017E020(319, &qword_10190DF70, &qword_10190DE90);
  if (v0 <= 0x3F)
  {
    sub_10017E020(319, &qword_10190DF78, &qword_10190DE98);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10017E020(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000D6664(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10017E074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10017E0BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10017E11C()
{
  result = qword_10190DF80;
  if (!qword_10190DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DF80);
  }

  return result;
}

uint64_t sub_10017E18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190DF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017E204()
{
  result = qword_10190DFA0;
  if (!qword_10190DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DFA0);
  }

  return result;
}

uint64_t sub_10017E2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

void sub_10017E31C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RichTextType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017F024(a1, a2);
  v8 = type metadata accessor for CarRecentRowViewModel();
  v9 = v8[5];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(a2 + v9, a1, v10);
  v11 = sub_100273C24();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v14 = v12;
  }

  v15 = (a2 + v8[6]);
  *v15 = v13;
  v15[1] = v14;
  v16 = sub_100273E78();
  if (v16)
  {
    v17 = v16;
    v18 = a2 + v8[7];
    *(v18 + 24) = &type metadata for StyleAttributesImageProvider;
    *(v18 + 32) = sub_10017F24C();
    *v18 = v17;
    *(v18 + 8) = 1;
  }

  else
  {
    v19 = (a2 + v8[7]);
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() imageNamed:v20];

    v19[3] = &type metadata for MapsStaticImageProvider;
    v19[4] = sub_10017F0D4();
    *v19 = v21;
    v19[1] = 0;
  }

  v22 = a1 + *(type metadata accessor for MyRecentsDataProvider.Recent(0) + 24);
  v23 = *v22;
  v24 = *(v22 + 8);
  if (v24 > 1)
  {
    if (v24 != 2)
    {
LABEL_11:
      sub_10017F128(a1);
      v25 = _swiftEmptyArrayStorage;
      goto LABEL_49;
    }

    v29 = [swift_unknownObjectRetain() locationDisplayString];
    if (!v29)
    {
      sub_1000D87F0(v23, 2u);
      goto LABEL_11;
    }

    v30 = v7;
    v31 = v29;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v32;
    if (String.count.getter() >= 1)
    {
      sub_1000CE6B8(&qword_10190A070);
      type metadata accessor for RichTextViewModel();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1011E1D30;
      (*(v5 + 104))(v30, enum case for RichTextType.line(_:), v4);
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      (*(v5 + 8))(v30, v4);
      v25 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        v25 = sub_100356AC0((v34 > 1), v35 + 1, 1, v25);
      }

      sub_1000D87F0(v23, 2u);
      v25[2] = v35 + 1;
      v25[v35 + 4] = v33;
      sub_10017F128(a1);
      goto LABEL_49;
    }

    sub_1000D87F0(v23, 2u);

    v28 = 0;
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  if (!v24)
  {
    v26 = [swift_unknownObjectRetain() geoMapItem];
    if (!v26)
    {
      sub_1000D87F0(v23, 0);
      goto LABEL_11;
    }

    v80 = v5;
    v81 = v4;
    v27 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v26 isPlaceHolderPlace:0];
    swift_unknownObjectRelease();
    sub_1000D87F0(v23, 0);
    v28 = 0;
    v25 = _swiftEmptyArrayStorage;
    if (!v27)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v80 = v5;
  v81 = v4;
  v36 = [swift_unknownObjectRetain() waypoints];
  sub_1000D2DB0();
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v37 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38 >= 3)
  {
    v39 = [v23 waypoints];
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v40 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v41 - 2;
    if (__OFSUB__(v41, 2))
    {
      __break(1u);
    }

    else if (qword_101906768 == -1)
    {
LABEL_28:
      v43 = qword_1019600D8;
      v44 = String._bridgeToObjectiveC()();
      v45 = String._bridgeToObjectiveC()();
      v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0);
      v47 = swift_allocObject();
      v78 = xmmword_1011E1D30;
      *(v47 + 16) = xmmword_1011E1D30;
      *(v47 + 56) = &type metadata for Int;
      *(v47 + 64) = &protocol witness table for Int;
      *(v47 + 32) = v42;
      v79 = static String.localizedStringWithFormat(_:_:)();

      sub_1000CE6B8(&qword_10190A070);
      type metadata accessor for RichTextViewModel();
      v48 = swift_allocObject();
      *(v48 + 16) = v78;
      v49 = v80;
      v50 = v7;
      v51 = v7;
      v52 = v81;
      (*(v80 + 104))(v50, enum case for RichTextType.line(_:), v81);
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      (*(v49 + 8))(v51, v52);
      v25 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
      v54 = v25[2];
      v53 = v25[3];
      if (v54 >= v53 >> 1)
      {
        v25 = sub_100356AC0((v53 > 1), v54 + 1, 1, v25);
      }

      v25[2] = v54 + 1;
      v25[v54 + 4] = v48;
      v7 = v51;
      goto LABEL_32;
    }

    swift_once();
    goto LABEL_28;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_32:
  v55 = [v23 endWaypoint];
  v28 = [objc_allocWithZone(SearchResult) initWithComposedWaypoint:v55];

  sub_1000D87F0(v23, 1u);
  if (!v28)
  {
    goto LABEL_47;
  }

  v56 = v28;
  v57 = [v56 composedWaypoint];
  if (v57)
  {
    v58 = v57;
    objc_opt_self();
    v59 = swift_dynamicCastObjCClass();
    if (v59)
    {
      *&v78 = v58;
      v79 = v56;
      v60 = [v59 route];
      sub_1000CE6B8(&qword_10190A070);
      v61 = *(type metadata accessor for RichTextViewModel() - 8);
      v75[1] = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1011E1D30;
      v63 = v80;
      (*(v80 + 104))(v7, enum case for RichTextType.line(_:), v81);
      v77 = v60;
      v64 = [v60 distanceAndElevationString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = v62;
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      (*(v63 + 8))(v7, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100356AC0(0, v25[2] + 1, 1, v25);
      }

      v66 = v25[2];
      v65 = v25[3];
      if (v66 >= v65 >> 1)
      {
        v25 = sub_100356AC0((v65 > 1), v66 + 1, 1, v25);
      }

      v67 = v79;
      v25[2] = v66 + 1;
      v25[v66 + 4] = v76;
      sub_10017F128(a1);

      goto LABEL_49;
    }
  }

  v27 = [v56 mapItem];

  if (!v27)
  {
LABEL_47:
    sub_10017F128(a1);
    goto LABEL_48;
  }

LABEL_45:
  if (v25[2])
  {
    sub_10017F128(a1);

LABEL_48:
    goto LABEL_49;
  }

  sub_1000CE6B8(&qword_10190A070);
  v68 = *(type metadata accessor for RichTextViewModel() - 8);
  v77 = ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v69 = swift_allocObject();
  v69[1] = xmmword_1011E1D30;
  v70 = v27;
  v71 = v80;
  (*(v80 + 104))(v7, enum case for RichTextType.line(_:), v81);
  *&v78 = v70;
  v72 = [v70 _maps_addressFormattedAsStreetOnly];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = v69;
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v71 + 8))(v7, v81);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_100356AC0(0, v25[2] + 1, 1, v25);
  }

  v74 = v25[2];
  v73 = v25[3];
  if (v74 >= v73 >> 1)
  {
    v25 = sub_100356AC0((v73 > 1), v74 + 1, 1, v25);
  }

  sub_10017F128(a1);
  v25[2] = v74 + 1;
  v25[v74 + 4] = v79;
LABEL_49:
  *(a2 + v8[8]) = v25;
}

uint64_t sub_10017F024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CarRecentRowViewModel()
{
  result = qword_10190E098;
  if (!qword_10190E098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10017F0D4()
{
  result = qword_10190E030;
  if (!qword_10190E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E030);
  }

  return result;
}

uint64_t sub_10017F128(uint64_t a1)
{
  v2 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017F194(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_10017F1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_10017F24C()
{
  result = qword_10190E038;
  if (!qword_10190E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E038);
  }

  return result;
}

void sub_10017F2C8()
{
  type metadata accessor for MyRecentsDataProvider.Recent(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_10017F3EC();
      if (v2 <= 0x3F)
      {
        sub_10017F43C(319, &qword_10190E0A8, &unk_101921E30, &unk_1011F6860, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10017F43C(319, &qword_10190E0B0, &unk_10190E0B8, &unk_1011EB120, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10017F3EC()
{
  if (!qword_10190FBF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10190FBF0);
    }
  }
}

void sub_10017F43C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000D6664(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10017F530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017F588(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10017F5D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10017F628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Calendar();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for WatchPlaceNavAndPhoneViewModel.Config();
  __chkstk_darwin(v5 - 8);
  v6 = a1[1];
  v8 = a1[3];
  v7 = a1[4];
  swift_unknownObjectRetain();
  v9 = v6;
  v10 = v7;
  v11 = v8;
  static Calendar.autoupdatingCurrent.getter();
  WatchPlaceNavAndPhoneViewModel.Config.init(calendar:)();
  type metadata accessor for WatchPlaceNavAndPhoneViewModel();
  swift_allocObject();
  v12 = WatchPlaceNavAndPhoneViewModel.init(placeItem:availability:locationManager:config:etaProvider:)();
  if (v12)
  {
    v13 = v12;
    sub_1000CE6B8(&unk_101924FE0);
    v14 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1011E1D30;
    *(v16 + v15) = v13;
    type metadata accessor for CarPlaceRowItem.ContentType(0);
    swift_storeEnumTagMultiPayload();
    v17 = type metadata accessor for CarPlaceSection();
    UUID.init()();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v16;
    *(a2 + 24) = 0;
    v18 = (a2 + *(v17 + 32));
    *v18 = 0xD000000000000015;
    v18[1] = 0x80000001012203A0;
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }

  else
  {
    v20 = type metadata accessor for CarPlaceSection();
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }
}

uint64_t sub_10017F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WatchPlaceAcceptsPaymentsViewModel();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WatchPlaceAccoladesViewModel();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WatchPlaceHoursViewModel();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WatchPlaceRatingRowViewModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WatchPlaceRibbonItemSpecialization();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for WatchPlaceRibbonItemSpecialization.label(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = *v19;
    v22 = WatchPlaceRibbonItemViewModel.title.getter();
    v24 = v23;
    sub_1000CE6B8(&unk_101924FE0);
    v25 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1011E1D30;
    *(v27 + v26) = v21;
    type metadata accessor for CarPlaceRowItem.ContentType(0);
    swift_storeEnumTagMultiPayload();
    v28 = type metadata accessor for CarPlaceSection();
    UUID.init()();
    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 16) = v27;
    *(a2 + 24) = 0;
    v29 = (a2 + *(v28 + 32));
    *v29 = 0xD000000000000013;
    v29[1] = 0x8000000101220380;
    return (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
  }

  if (v20 == enum case for WatchPlaceRibbonItemSpecialization.rating(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v12 + 32))(v14, v19, v11);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v82._object = 0xEC000000776F6E4BLL;
    v31._countAndFlagsBits = 0x73676E69746152;
    v82._countAndFlagsBits = 0x206F7420646F6F47;
    v32._countAndFlagsBits = 0xD000000000000013;
    v32._object = 0x8000000101220360;
    v31._object = 0xE700000000000000;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, qword_1019600D8, v31, v82);
    sub_1000CE6B8(&unk_101924FE0);
    v34 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1011E1D30;
    (*(v12 + 16))(v36 + v35, v14, v11);
    type metadata accessor for CarPlaceRowItem.ContentType(0);
    swift_storeEnumTagMultiPayload();
    v37 = type metadata accessor for CarPlaceSection();
    UUID.init()();
    (*(v12 + 8))(v14, v11);
    *a2 = v33;
    *(a2 + 16) = v36;
    *(a2 + 24) = 0;
    v38 = (a2 + *(v37 + 32));
    v39 = 0xEF73676E69746152;
LABEL_11:
    *v38 = 0x6563616C50726143;
    v38[1] = v39;
    v48 = *(*(v37 - 8) + 56);
    v49 = a2;
    v50 = v37;
    return v48(v49, 0, 1, v50);
  }

  if (v20 == enum case for WatchPlaceRibbonItemSpecialization.hours(_:))
  {
    (*(v16 + 96))(v19, v15);
    v41 = v80;
    v40 = v81;
    (*(v80 + 32))(v10, v19, v81);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v83._object = 0xE500000000000000;
    v42._countAndFlagsBits = 0x7372756F48;
    v43._countAndFlagsBits = 0xD000000000000011;
    v43._object = 0x8000000101220340;
    v42._object = 0xE500000000000000;
    v83._countAndFlagsBits = 0x7372756F48;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, qword_1019600D8, v42, v83);
    sub_1000CE6B8(&unk_101924FE0);
    v45 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1011E1D30;
    (*(v41 + 16))(v47 + v46, v10, v40);
    type metadata accessor for CarPlaceRowItem.ContentType(0);
    swift_storeEnumTagMultiPayload();
    v37 = type metadata accessor for CarPlaceSection();
    UUID.init()();
    (*(v41 + 8))(v10, v40);
    *a2 = v44;
    *(a2 + 16) = v47;
    *(a2 + 24) = 0;
    v38 = (a2 + *(v37 + 32));
    v39 = 0xED00007372756F48;
    goto LABEL_11;
  }

  if (v20 == enum case for WatchPlaceRibbonItemSpecialization.accolades(_:))
  {
    (*(v16 + 96))(v19, v15);
    v51 = v77;
    v52 = v78;
    v53 = v79;
    (*(v78 + 32))(v77, v19, v79);
    v81 = WatchPlaceAccoladesViewModel.title.getter();
    v55 = v54;
    sub_1000CE6B8(&unk_101924FE0);
    v56 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1011E1D30;
    (*(v52 + 16))(v58 + v57, v51, v53);
    type metadata accessor for CarPlaceRowItem.ContentType(0);
    swift_storeEnumTagMultiPayload();
    v59 = type metadata accessor for CarPlaceSection();
    UUID.init()();
    (*(v52 + 8))(v51, v53);
    *a2 = v81;
    *(a2 + 8) = v55;
    *(a2 + 16) = v58;
    *(a2 + 24) = 0;
    v60 = (a2 + *(v59 + 32));
    *v60 = 0xD000000000000011;
    v60[1] = 0x8000000101220320;
    v48 = *(*(v59 - 8) + 56);
    v49 = a2;
LABEL_19:
    v50 = v59;
    return v48(v49, 0, 1, v50);
  }

  v61 = a2;
  if (v20 == enum case for WatchPlaceRibbonItemSpecialization.acceptsPayments(_:))
  {
    (*(v16 + 96))(v19, v15);
    v62 = v74;
    v63 = v75;
    v64 = v76;
    (*(v75 + 32))(v74, v19, v76);
    v65 = 0x80000001012202E0;
    if (qword_101906768 != -1)
    {
      swift_once();
      v65 = 0x80000001012202E0;
    }

    v84._object = 0x80000001012202E0;
    v66._countAndFlagsBits = 0xD00000000000001CLL;
    v66._object = 0x80000001012202C0;
    v67 = 0xD000000000000010;
    v84._countAndFlagsBits = 0xD000000000000010;
    v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, qword_1019600D8, *(&v65 - 1), v84);
    sub_1000CE6B8(&unk_101924FE0);
    v69 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
    v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1011E1D30;
    (*(v63 + 16))(v71 + v70, v62, v64);
    type metadata accessor for CarPlaceRowItem.ContentType(0);
    swift_storeEnumTagMultiPayload();
    v59 = type metadata accessor for CarPlaceSection();
    UUID.init()();
    (*(v63 + 8))(v62, v64);
    *v61 = v68;
    *(v61 + 16) = v71;
    *(v61 + 24) = 0;
    v72 = (v61 + *(v59 + 32));
    *v72 = 0xD000000000000017;
    v72[1] = 0x8000000101220300;
    v48 = *(*(v59 - 8) + 56);
    v49 = v61;
    goto LABEL_19;
  }

  v73 = type metadata accessor for CarPlaceSection();
  (*(*(v73 - 8) + 56))(a2, 1, 1, v73);
  return (*(v16 + 8))(v19, v15);
}

id sub_1001805B4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WatchPlaceDataAmenityItemViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CarPlaceRowItem(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [*a1 mapItem];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = static WatchPlaceDataAmenityItemViewModel.createAmenityViewModels(from:)();

  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v35 = a2;
      v39 = _swiftEmptyArrayStorage;
      sub_1005114F4(0, v16, 0);
      v17 = v39;
      v19 = *(v5 + 16);
      v18 = v5 + 16;
      v20 = *(v18 + 64);
      v34 = v15;
      v21 = v15 + ((v20 + 32) & ~v20);
      v36 = *(v18 + 56);
      v37 = v19;
      v38 = v18;
      v22 = (v18 + 16);
      do
      {
        v37(v7, v21, v4);
        v12[3] = v4;
        v12[4] = &protocol witness table for WatchPlaceDataAmenityItemViewModel;
        v23 = sub_10001A848(v12);
        (*v22)(v23, v7, v4);
        type metadata accessor for CarPlaceRowItem.ContentType(0);
        swift_storeEnumTagMultiPayload();
        v39 = v17;
        v25 = v17[2];
        v24 = v17[3];
        if (v25 >= v24 >> 1)
        {
          sub_1005114F4(v24 > 1, v25 + 1, 1);
          v17 = v39;
        }

        v17[2] = v25 + 1;
        sub_1001812B0(v12, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, type metadata accessor for CarPlaceRowItem);
        v21 += v36;
        --v16;
      }

      while (v16);

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v26._object = 0xEC000000776F6E4BLL;
      v41._object = 0xEC000000776F6E4BLL;
      v26._countAndFlagsBits = 0x206F7420646F6F47;
      v27._countAndFlagsBits = 0xD000000000000018;
      v27._object = 0x8000000101220280;
      v41._countAndFlagsBits = 0x206F7420646F6F47;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, qword_1019600D8, v26, v41);
      v29 = type metadata accessor for CarPlaceSection();
      v30 = v35;
      UUID.init()();
      *v30 = v28;
      *(v30 + 16) = v17;
      *(v30 + 24) = 0;
      v31 = (v30 + *(v29 + 32));
      *v31 = 0xD000000000000011;
      v31[1] = 0x80000001012202A0;
      return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
    }
  }

  v32 = type metadata accessor for CarPlaceSection();
  v33 = *(*(v32 - 8) + 56);

  return v33(a2, 1, 1, v32);
}

id sub_1001809E0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&unk_10190E100);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for WatchPlaceAddressViewModel();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 mapItem];
  if (result)
  {
    WatchPlaceAddressViewModel.init(mapItem:)();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100024F64(v6, &unk_10190E100);
      v13 = type metadata accessor for CarPlaceSection();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v25._object = 0xE700000000000000;
      v14._countAndFlagsBits = 0x73736572646441;
      v15._object = 0x8000000101220260;
      v15._countAndFlagsBits = 0xD000000000000013;
      v14._object = 0xE700000000000000;
      v25._countAndFlagsBits = 0x73736572646441;
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v14, v25);
      sub_1000CE6B8(&unk_101924FE0);
      v17 = *(type metadata accessor for CarPlaceRowItem(0) - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1011E1D30;
      v20 = (v19 + v18);
      v20[3] = v7;
      v20[4] = &protocol witness table for WatchPlaceAddressViewModel;
      v21 = sub_10001A848(v20);
      (*(v8 + 16))(v21, v11, v7);
      type metadata accessor for CarPlaceRowItem.ContentType(0);
      swift_storeEnumTagMultiPayload();
      v22 = type metadata accessor for CarPlaceSection();
      UUID.init()();
      (*(v8 + 8))(v11, v7);
      *a2 = v16;
      *(a2 + 16) = v19;
      *(a2 + 24) = 0;
      v23 = (a2 + *(v22 + 32));
      *v23 = 0x6563616C50726143;
      v23[1] = 0xEF73736572646441;
      return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100180DA4(void *a1, void *a2, void *a3, void *a4)
{
  v42 = a4;
  v7 = sub_1000CE6B8(&unk_10190E110);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v44 = type metadata accessor for CarPlaceSection();
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = &v34 - v12;
  v39 = type metadata accessor for WatchPlaceRibbonItemSpecialization();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlaceRibbonItemBuilder.Configuration();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for PlaceRibbonItemBuilder();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 mapItem])
  {
LABEL_16:
    __break(1u);

    (*v18)(v15, v17);

    __break(1u);
    return result;
  }

  v35 = v18;
  v36 = v17;
  v22 = a2;
  v23 = v42;
  v24 = a3;
  PlaceRibbonItemBuilder.Configuration.init(mapItem:availability:locationManager:etaProvider:)();
  PlaceRibbonItemBuilder.init(configuration:)();
  v34 = v21;
  v25 = PlaceRibbonItemBuilder.createRibbonItems()();
  v42 = *(v25 + 16);
  if (v42)
  {
    v26 = 0;
    v41 = v13 + 16;
    v18 = (v13 + 8);
    v17 = v39;
    v27 = (v40 + 48);
    v28 = _swiftEmptyArrayStorage;
    v37 = v9;
    while (v26 < *(v25 + 16))
    {
      (*(v13 + 16))(v15, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v26, v17);
      sub_10017F8C4(v15, v9);
      (*v18)(v15, v17);
      if ((*v27)(v9, 1, v44) == 1)
      {
        sub_100024F64(v9, &unk_10190E110);
      }

      else
      {
        v29 = v9;
        v30 = v38;
        sub_1001812B0(v29, v38, type metadata accessor for CarPlaceSection);
        sub_1001812B0(v30, v43, type metadata accessor for CarPlaceSection);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_100356AE4(0, v28[2] + 1, 1, v28);
        }

        v32 = v28[2];
        v31 = v28[3];
        if (v32 >= v31 >> 1)
        {
          v28 = sub_100356AE4(v31 > 1, v32 + 1, 1, v28);
        }

        v28[2] = v32 + 1;
        sub_1001812B0(v43, v28 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, type metadata accessor for CarPlaceSection);
        v9 = v37;
        v17 = v39;
      }

      if (v42 == ++v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_14:

  v35[1](v34, v36);
  return v28;
}

uint64_t sub_1001812B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_100181370(void *a1, uint8_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for SearchResultsLogicController());
  v9 = a1;
  v10 = a3;
  *&v4[OBJC_IVAR____TtC4Maps20SearchResultsContext_logicController] = sub_1000FB560(v9, a2, v10);
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, "init");

  v12 = *&v11[OBJC_IVAR____TtC4Maps20SearchResultsContext_logicController];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = (v12 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler);
  v15 = *(v12 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler);
  v16 = v14[1];
  *v14 = sub_100182004;
  v14[1] = v13;
  v17 = v11;
  sub_1000D3B90(v15, v16);
  return v17;
}

uint64_t sub_1001815C4(void *a1)
{
  v2 = v1;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960018);
  v5 = static os_log_type_t.info.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, v5, "[SearchResultContext] Entering stack with %@", v8, 0xCu);
    sub_1000DCD10(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC4Maps20SearchResultsContext_logicController);
  v12 = v6;
  sub_1000FB44C(v6);
  [v12 registerAdditionalMapViewDelegate:*(v11 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_mapViewController)];
  v13 = sub_1000D0EC4(_swiftEmptyArrayStorage);
  sub_1000FB9E8(v13, 0);
}

void sub_1001817C8(void *a1, void *a2)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101960018);
  v5 = static os_log_type_t.info.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, v5, "[SearchResultContext] Leaving stack with %@", v8, 0xCu);
    sub_1000DCD10(v9);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  v15[4] = sub_100181FFC;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002ABAC8;
  v15[3] = &unk_101607418;
  v13 = _Block_copy(v15);
  v14 = v6;

  [a2 addCompletion:v13];
  _Block_release(v13);
}

void sub_1001819DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC4Maps20SearchResultsContext_logicController;
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC4Maps20SearchResultsContext_logicController);
    sub_1000FBE30();

    [a3 unregisterAdditionalMapViewDelegate:*(*&v6[v5] + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_mapViewController)];
  }
}

void *sub_100181AF4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC4Maps20SearchResultsContext_logicController) + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_router);
  if (*(v1 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state) && *(v1 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state) != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
}

void sub_100181BFC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (!v2)
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = [v2 searchResultsItemSource];

    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 searchPinsManager];

  if (!v7)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = [v7 droppedPinsItemSource];

  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void sub_100181E48()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_101960018);
  v1 = static os_log_type_t.info.getter();
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, v1, "[SearchResultContext] Search here overlay pressed", v3, 2u);
  }

  sub_1000FBFF4();
}

void sub_100181F80(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong popContext:a1 animated:1 completion:0];
  }
}

void sub_100182128()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (!v2)
    {
      __break(1u);
      goto LABEL_33;
    }

    v3 = [v2 collectionPinsItemSource];

    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [v5 searchPinsManager];

  if (!v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = [v7 searchResultsItemSource];

  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_13:
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [v10 searchPinsManager];

  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = [v12 singleSearchResultItemSource];

  if (v13)
  {
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_19:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 searchPinsManager];

  if (!v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = [v17 droppedPinsItemSource];

  if (v18)
  {
    v19 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_25:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v22 = [v20 searchPinsManager];

  if (!v22)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v23 = [v22 searchResultsItemSource];

  if (v23)
  {
    v24 = v23;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void sub_1001825E8(uint64_t a1, char a2)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem);
  sub_100503C08(v3, a2);
}

void sub_100182764(void *a1)
{
  v1 = [a1 searchPinsManager];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 singleSearchResultItemSource];

    if (v3)
    {
      sub_100014C84(0, &qword_10190E160);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v3 setSearchResults:isa];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001828A4()
{
  v1 = OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration;
  v2 = *(*(v0 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem);
  sub_100503ADC(v2);

  v3 = *(v0 + v1);
  v4 = *(v3 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory);
  v6 = *(v3 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent);
  v7 = *(v3 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally);
  v8 = type metadata accessor for PlaceCardContextContainee.PlaceCardModel();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_placeItem] = v4;
  v9[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_shouldSaveToHistory] = v5;
  *&v9[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_excludedContent] = v6;
  v9[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_presentedModally] = v7;
  v9[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_buildingMultistopRoute] = 0;
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = v4;
  v11 = objc_msgSendSuper2(&v12, "init");
  sub_1003C43C8(v11);
}

void sub_1001829E0(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_100182B70;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100039C64;
  v14 = &unk_101607490;
  v5 = _Block_copy(&v11);
  v6 = a1;

  [a2 addPreparation:v5];
  _Block_release(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  v15 = sub_10010E4B0;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100039C64;
  v14 = &unk_1016074E0;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = a2;

  [v10 addAnimations:v8];
  _Block_release(v8);
}

id sub_100182B94()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_mapModificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_clearHistoryAlertProvider] = 0;
  type metadata accessor for VisitHistoryHomeViewModel();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_viewModel] = sub_1004125DC();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, "initWithNibName:bundle:", 0, 0);
  sub_1003A7704(v2);
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v2;
}

uint64_t sub_100182DF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_viewModel);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for VisitHistoryHomeView(0);
  a1[3] = v5;
  a1[4] = sub_100186B40(&qword_10190E1C0, type metadata accessor for VisitHistoryHomeView);
  v6 = sub_10001A848(a1);
  *(v6 + v5[10]) = KeyPath;
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v5[11]) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10191DF80);
  swift_storeEnumTagMultiPayload();
  *v6 = v3;

  State.init(wrappedValue:)();
  *(v6 + 1) = v10;
  v6[3] = v11;
  State.init(wrappedValue:)();
  *(v6 + 32) = v10;
  v6[5] = *(&v10 + 1);
  State.init(wrappedValue:)();
  *(v6 + 48) = v10;
  v6[7] = *(&v10 + 1);
  v7 = v5[8];
  *(v6 + v7) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190CBC8);
  swift_storeEnumTagMultiPayload();
  v8 = v6 + v5[9];
  result = swift_getKeyPath();
  *v8 = result;
  v8[8] = 0;
  return result;
}

uint64_t sub_10018304C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didResignCurrent");
  v1 = *&v0[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_viewModel];
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 112))
  {

    Task.cancel()();
  }

  return result;
}

uint64_t sub_10018318C()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10040ED8C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10040EF50();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100183970()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10018F080();
  }
}

void sub_1001839C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7[0] = a1;
      v8 = 1;
      sub_100443BCC(v7);
      swift_unknownObjectRelease();
      sub_1000F1E68(v7);
    }

    v4 = [objc_opt_self() sharedService];
    if (v4)
    {
      v5 = v4;
      v6 = String._bridgeToObjectiveC()();
      [v5 captureUserAction:507 onTarget:147 eventValue:v6];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100183AD0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = a1[2];
      v4 = a1[3];
      v6 = a1[4];
      v11[0] = v5;
      v11[1] = v4;
      v11[2] = v6;
      v12 = 0;

      v7 = v6;
      sub_100443BCC(v11);
      swift_unknownObjectRelease();
      sub_1000F1E68(v11);
    }

    v8 = [objc_opt_self() sharedService];
    if (v8)
    {
      v9 = v8;
      v10 = String._bridgeToObjectiveC()();
      [v9 captureUserAction:507 onTarget:147 eventValue:v10];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100183BE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a3(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100183C7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      v7 = 3;
      sub_100443BCC(v5);
      swift_unknownObjectRelease();
      sub_1000F1E68(v5);
    }

    v2 = [objc_opt_self() sharedService];
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      [v3 captureUserAction:507 onTarget:147 eventValue:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100183D88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
      v7 = objc_allocWithZone(MKMapItem);
      v8 = v6;
      v9 = [v7 initWithGeoMapItem:v8 isPlaceHolderPlace:0];
      if (v9)
      {
        v10 = v9;
        v11 = [v5 iosBasedChromeViewController];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 appCoordinator];

          if (v13)
          {
            v14 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:v10];
            v15 = type metadata accessor for PlaceCardContextConfiguration();
            v16 = objc_allocWithZone(v15);
            v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
            *&v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v14;
            v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
            *&v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
            v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
            v25.receiver = v16;
            v25.super_class = v15;
            v17 = v14;
            v18 = objc_msgSendSuper2(&v25, "init");
            [v13 displayPlaceCardWithConfiguration:{v18, v25.receiver, v25.super_class}];

            v10 = v18;
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v19 = *(*&v3[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_viewModel] + 72);
    swift_getKeyPath();
    v26 = v19;
    sub_100186B40(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v19 + 104);

    swift_getKeyPath();
    v26 = v20;
    sub_100186B40(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v20 + 96);

    if (v21)
    {
      String.count.getter();
    }

    v22 = [objc_opt_self() sharedService];
    if (v22)
    {
      v23 = v22;
      v24 = String._bridgeToObjectiveC()();
      [v23 captureUserAction:478 onTarget:147 eventValue:v24];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100184150(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10005EB40(a1, v4);
      v4[40] = 2;
      sub_100443BCC(v4);

      swift_unknownObjectRelease();
      sub_1000F1E68(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1001841FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    BOOL = GEOConfigGetBOOL();
    type metadata accessor for VisitHistoryClearAllConfirmationAlertProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = BOOL;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v5 + 32) = sub_100186A34;
    *(v5 + 40) = v6;

    sub_1000588AC(0);

    *&v3[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_clearHistoryAlertProvider] = v5;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = sub_1001FD42C();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v7 = v7;
        [v9 _maps_topMostPresentViewController:v7 animated:1 completion:0];
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001843AC(unsigned __int8 a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a1;
    if (a1 - 1 <= 1)
    {
      v8 = *(result + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_viewModel);
      swift_getKeyPath();
      v13 = v8;
      sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v8 + 112))
      {

        Task.cancel()();
      }

      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      type metadata accessor for MainActor();

      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v8;
      v12 = sub_10020AAE4(0, 0, v4, &unk_1011EB658, v11);
      sub_100410EAC(v12);
      if (v7 == 2)
      {
        +[VisitedPlacesUIUtilities openMapsSettingsURL]_0();
      }
    }

    *&v6[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_clearHistoryAlertProvider] = 0;
  }

  return result;
}

void sub_1001845F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_10044417C(sub_100186A00, v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1001846C4(char a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_10040F114(a1);
  }

  return result;
}

void sub_100184744()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong cardPresentationController];
    if (v2)
    {
      v3 = v2;
      [v2 wantsLayout:3];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001847F8()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_actionDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_mapModificationDelegate);
}

uint64_t sub_1001848E8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = swift_allocObject();
    swift_weakInit();

    sub_100444318(a2, sub_100186834, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001849A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_100186B40(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = sub_100196024(a1, a2, a3);

    if (v7)
    {
      sub_100260674();
    }
  }

  return result;
}

uint64_t sub_100184AB8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = swift_allocObject();
    swift_weakInit();

    sub_100444598(a2, sub_100184D94, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100184B78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10025D810(a1);
  }

  return result;
}

uint64_t sub_100184BE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_viewModel);
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 72);
    swift_getKeyPath();
    sub_100186B40(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v2 + 112);
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v1 + 56);
  }

  return v3;
}

uint64_t sub_100184D9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100184E4C()
{
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100184F1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

uint64_t sub_100184FC8()
{
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100185094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100185180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1001852DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186BBC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1001853C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100186BB4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100185524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 160);
  v5 = *(v3 + 168);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100185610(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10018576C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186CEC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100185858(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1001859B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 192);
  v5 = *(v3 + 200);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186B88;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100185AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100185BFC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 208);
  v5 = *(v3 + 216);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100185CE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100185E44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 240);
  v5 = *(v3 + 248);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186A08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100185F30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000F1DB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10018608C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 256);
  v5 = *(v3 + 264);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100186178(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1001862D4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 272);
  v5 = *(v3 + 280);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186B18;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1001863C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100186AF0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10018651C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 288);
  v5 = *(v3 + 296);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100186608(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100186764@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100186B40(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 320);
  return result;
}

uint64_t sub_100186A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100414C38(a1, v4, v5, v6);
}

uint64_t sub_100186B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100186CF0()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InterfaceIdiom();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  type metadata accessor for VisitHistoryFilterView(0);
  sub_100155054(v11);
  static InterfaceIdiom.mac.getter();
  sub_10018D32C(&qword_10190CC98, &type metadata accessor for InterfaceIdiom);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12)
  {
    v13(v11, v5);
    LOBYTE(v14) = 1;
  }

  else
  {
    static InterfaceIdiom.pad.getter();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v8, v5);
    if (v15)
    {
      v13(v11, v5);
    }

    else
    {
      static InterfaceIdiom.vision.getter();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v8, v5);
      v13(v11, v5);
      if ((v16 & 1) == 0)
      {
        LOBYTE(v14) = 0;
        return v14 & 1;
      }
    }

    v14 = *(v1 + 72);
    if (*(v1 + 80) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A1574(v14, 0);
      (*(v19 + 8))(v4, v2);
      LOBYTE(v14) = v20;
    }
  }

  return v14 & 1;
}

uint64_t sub_100187040@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = type metadata accessor for VisitHistoryFilterView(0);
  v20[0] = *(v2 - 8);
  v3 = *(v20[0] + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1000CE6B8(&qword_10190E288);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v21 = v1;
  sub_1000CE6B8(&qword_10190E290);
  v7 = sub_1000D6664(&qword_10190E298);
  v8 = sub_10018C114();
  *&v23 = v7;
  *(&v23 + 1) = v8;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v9 = *(v1 + 8);
  *&v23 = *v1;
  *(&v23 + 1) = v9;
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  v10 = *(v22 + 96);

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);

  *&v23 = 0xD000000000000017;
  *(&v23 + 1) = 0x80000001012205A0;
  v13._countAndFlagsBits = v12;
  v13._object = v11;
  String.append(_:)(v13);

  v14 = *(&v23 + 1);
  v15 = &v6[*(v4 + 36)];
  *v15 = v23;
  *(v15 + 1) = v14;
  v15[16] = 9;
  v16 = *(v1 + 32);
  v23 = *(v1 + 16);
  v24 = v16;
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.getter();
  v23 = v22;
  sub_10018C620(v1, v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryFilterView);
  v17 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
  v18 = swift_allocObject();
  sub_10018CBB0(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for VisitHistoryFilterView);
  sub_10018C3B8();
  View.onChange<A>(of:initial:_:)();

  return sub_100024F64(v6, &qword_10190E288);
}

uint64_t sub_100187374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContainerBackgroundPlacement();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000CE6B8(&qword_10190CED8);
  __chkstk_darwin(v38);
  v9 = &v34 - v8;
  v10 = sub_1000CE6B8(&qword_10190CED0);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_1000CE6B8(&qword_10190CEB8);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v39 = sub_1000CE6B8(&qword_10190E2A8);
  __chkstk_darwin(v39);
  v17 = &v34 - v16;
  v44 = sub_1000CE6B8(&qword_10190E298);
  __chkstk_darwin(v44);
  v19 = &v34 - v18;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v20 = sub_1000CE6B8(&qword_10190E2F8);
  sub_100187A54(a1, &v9[*(v20 + 44)]);
  v48 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_1000414C8(&qword_10190CEE0, &qword_10190CED8);
  View.containerBackground<A>(_:for:)();
  (*(v42 + 8))(v7, v43);

  sub_100024F64(v9, &qword_10190CED8);
  v47 = a1;
  sub_10015000C(0, sub_10018C470, v15);
  v21 = v12;
  v22 = v19;
  (*(v40 + 8))(v21, v41);
  v46 = a1;
  sub_100151048(0, sub_10018C478, v17);
  sub_100024F64(v15, &qword_10190CEB8);
  v23 = &v17[*(v39 + 36)];
  *v23 = static HorizontalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = sub_1000CE6B8(&qword_10190E300);
  sub_100188E98(a1, &v23[*(v24 + 44)]);
  v23[*(sub_1000CE6B8(&qword_10190E2D0) + 36)] = 1;
  v25 = (a1 + *(type metadata accessor for VisitHistoryFilterView(0) + 40));
  v27 = *v25;
  v26 = v25[1];
  v48 = v27;
  v49 = v26;
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  sub_10018C208();
  View.actionBar(_:onSelect:)();

  sub_100024F64(v17, &qword_10190E2A8);
  KeyPath = swift_getKeyPath();
  v29 = *(a1 + 72);
  if (*(a1 + 80) != 1)
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v31 = v35;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A1574(v29, 0);
    (*(v36 + 8))(v31, v37);
    LOBYTE(v29) = v48;
  }

  v32 = v22 + *(v44 + 36);
  *v32 = KeyPath;
  *(v32 + 8) = v29 & 1;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  sub_10018C114();
  View.toolbarVisibility(_:for:)();

  return sub_100024F64(v22, &qword_10190E298);
}

uint64_t sub_100187A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = type metadata accessor for Font.TextStyle();
  v3 = *(v63 - 8);
  __chkstk_darwin(v63);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for VisitHistoryFilterListView(0);
  __chkstk_darwin(v69);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v58 - v9);
  v66 = sub_1000CE6B8(&qword_10190E328);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v58 - v11;
  v12 = sub_1000CE6B8(&qword_10190CC58);
  __chkstk_darwin(v12 - 8);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v58 - v15;
  v61 = type metadata accessor for InterfaceIdiom();
  v16 = *(v61 - 8);
  __chkstk_darwin(v61);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_1000CE6B8(&qword_10190E330);
  __chkstk_darwin(v22 - 8);
  v68 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v67 = &v58 - v25;
  v26 = a1;
  if (sub_100186CF0() & 1) != 0 && (type metadata accessor for VisitHistoryFilterView(0), sub_100155054(v21), static InterfaceIdiom.mac.getter(), v27 = static InterfaceIdiom.== infix(_:_:)(), v60 = v5, v28 = *(v16 + 8), v29 = v18, v30 = v61, v28(v29, v61), v28(v21, v30), v5 = v60, (v27))
  {
    v31 = v62;
    sub_1001881FC(v62);
    v32 = v26[1];
    v33 = v26;
    v74 = *v26;
    v75 = v32;
    sub_1000CE6B8(&qword_10190E2D8);
    State.wrappedValue.getter();
    type metadata accessor for VisitHistoryFilterViewModel(0);
    State.init(wrappedValue:)();
    v34 = v74;
    v35 = v75;
    LODWORD(v61) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v74) = 0;
    v44 = v58;
    sub_1000D2DFC(v31, v58, &qword_10190CC58);
    v45 = v59;
    sub_1000D2DFC(v44, v59, &qword_10190CC58);
    v46 = (v45 + *(sub_1000CE6B8(&qword_10190E348) + 48));
    *&v71 = v34;
    *(&v71 + 1) = v35;
    LOBYTE(v31) = v61;
    LOBYTE(v72) = v61;
    *(&v72 + 1) = *v70;
    DWORD1(v72) = *&v70[3];
    *(&v72 + 1) = v37;
    *v73 = v39;
    *&v73[8] = v41;
    *&v73[16] = v43;
    v73[24] = 0;
    v47 = *v73;
    v48 = v72;
    *v46 = v71;
    v46[1] = v48;
    v46[2] = v47;
    *(v46 + 41) = *&v73[9];
    sub_1000D2DFC(&v71, &v74, &qword_10190E350);
    sub_100024F64(v62, &qword_10190CC58);
    v74 = v34;
    v75 = v35;
    v5 = v60;
    v76 = v31;
    *v77 = *v70;
    *&v77[3] = *&v70[3];
    v78 = v37;
    v79 = v39;
    v80 = v41;
    v81 = v43;
    v82 = 0;
    sub_100024F64(&v74, &qword_10190E350);
    sub_100024F64(v44, &qword_10190CC58);
    v49 = v67;
    sub_1000F11C4(v45, v67, &qword_10190E328);
    (*(v65 + 56))(v49, 0, 1, v66);
  }

  else
  {
    v33 = v26;
    v49 = v67;
    (*(v65 + 56))(v67, 1, 1, v66);
  }

  v50 = v33[1];
  v74 = *v33;
  v75 = v50;
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  type metadata accessor for VisitHistoryFilterViewModel(0);
  State.init(wrappedValue:)();
  v51 = v75;
  *v10 = v74;
  v10[1] = v51;
  v74 = 0x4062C00000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v63);
  sub_10018C5CC();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v52 = v49;
  v53 = v49;
  v54 = v68;
  sub_1000D2DFC(v52, v68, &qword_10190E330);
  sub_10018C620(v10, v7, type metadata accessor for VisitHistoryFilterListView);
  v55 = v64;
  sub_1000D2DFC(v54, v64, &qword_10190E330);
  v56 = sub_1000CE6B8(&qword_10190E340);
  sub_10018C620(v7, v55 + *(v56 + 48), type metadata accessor for VisitHistoryFilterListView);
  sub_10018C688(v10);
  sub_100024F64(v53, &qword_10190E330);
  sub_10018C688(v7);
  return sub_100024F64(v54, &qword_10190E330);
}

uint64_t sub_1001881FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VisitHistoryFilterView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *(v1 + 32);
  v40 = *(v1 + 16);
  v41 = v6;
  sub_1000CE6B8(&qword_10190CCA0);
  State.projectedValue.getter();
  v34 = v37;
  v35 = v36;
  v32 = v39;
  v33 = v38;
  v7 = *(v1 + 64);
  LOBYTE(v40) = *(v1 + 56);
  *(&v40 + 1) = v7;
  sub_1000CE6B8(&qword_10190A140);
  State.projectedValue.getter();
  v8 = v37;
  v31 = v36;
  v30 = v38;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v42._object = 0x8000000101220630;
  v9._object = 0x80000001012205E0;
  v10._object = 0x8000000101220610;
  v42._countAndFlagsBits = 0xD00000000000003BLL;
  v9._countAndFlagsBits = 0xD000000000000029;
  v10._countAndFlagsBits = 0x100000000000001BLL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v42);
  v12 = type metadata accessor for LibrarySearchBar(0);
  sub_100155054(a1 + *(v12 + 28));
  sub_10018C620(v1, &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VisitHistoryFilterView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_10018CBB0(&v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for VisitHistoryFilterView);
  v15 = v34;
  *a1 = v35;
  *(a1 + 8) = v15;
  v16 = v32;
  *(a1 + 16) = v33;
  *(a1 + 24) = v16;
  *(a1 + 32) = v31;
  *(a1 + 40) = v8;
  *(a1 + 48) = v30;
  *(a1 + 56) = v11;
  v17 = (a1 + *(v12 + 32));
  *v17 = sub_10018C4F0;
  v17[1] = v14;
  v18 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = sub_1000CE6B8(&qword_10190CC58);
  v28 = a1 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1001884F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v42 = a3;
  v4 = type metadata accessor for VisitHistoryFilterView(0);
  v37 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v38 = v5;
  v39 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFieldPlacement();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190CEC8);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = *(a2 + 32);
  v47 = *(a2 + 16);
  v48 = v12;
  sub_1000CE6B8(&qword_10190CCA0);
  State.projectedValue.getter();
  v28 = v45;
  v29 = v46;
  v30 = a2;
  v13 = *(a2 + 48);
  v32 = *(a2 + 40);
  LOBYTE(v47._countAndFlagsBits) = v32;
  v33 = v13;
  v47._object = v13;
  v31 = sub_1000CE6B8(&qword_10190A140);
  State.projectedValue.getter();
  v27 = v45;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v49._object = 0x8000000101220630;
  v14._object = 0x80000001012205E0;
  v15._object = 0x8000000101220610;
  v49._countAndFlagsBits = 0xD00000000000003BLL;
  v14._countAndFlagsBits = 0xD000000000000029;
  v15._countAndFlagsBits = 0x100000000000001BLL;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v49);
  v26[1] = v16._object;
  v47 = v16;
  static SearchFieldPlacement.automatic.getter();
  v26[0] = sub_1000CE6B8(&qword_10190CED0);
  v17 = sub_1000D6664(&qword_10190CED8);
  v18 = sub_1000414C8(&qword_10190CEE0, &qword_10190CED8);
  v43 = v17;
  v44 = &type metadata for Color;
  v45 = v18;
  v46 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1000E5580();
  View.searchable<A>(text:isPresented:placement:prompt:)();

  (*(v34 + 8))(v8, v35);

  LOBYTE(v43) = v32;
  v44 = v33;
  State.wrappedValue.getter();
  v20 = v39;
  sub_10018C620(v30, v39, type metadata accessor for VisitHistoryFilterView);
  v21 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v22 = swift_allocObject();
  sub_10018CBB0(v20, v22 + v21, type metadata accessor for VisitHistoryFilterView);
  v43 = v26[0];
  v44 = &type metadata for String;
  v45 = OpaqueTypeConformance2;
  v46 = v25;
  swift_getOpaqueTypeConformance2();
  v23 = v41;
  View.onChange<A>(of:initial:_:)();

  return (*(v40 + 8))(v11, v23);
}

uint64_t sub_100188A68()
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  if (v3 != 1)
  {
  }

  swift_getKeyPath();
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v3 + 176);
  if (!v0)
  {
  }

  v0(v1);

  return sub_1000588AC(v0);
}

uint64_t sub_100188BA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisitHistoryFilterView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v10 = *(a2 + 64);
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  v9[16] = v9[15];
  sub_10018C620(a2, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VisitHistoryFilterView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10018CBB0(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for VisitHistoryFilterView);
  sub_1000CE6B8(&qword_10190CEB8);
  sub_10015710C();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_100188D58()
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  if (v3 != 1)
  {
  }

  swift_getKeyPath();
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v3 + 176);
  if (!v0)
  {
  }

  v0(v1);

  return sub_1000588AC(v0);
}

uint64_t sub_100188E98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v82 = type metadata accessor for EnvironmentValues();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000CE6B8(&qword_10190CC58);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v79 = &v76 - v4;
  v100 = type metadata accessor for InterfaceIdiom();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v76 - v7;
  v8 = sub_1000CE6B8(&qword_10190E308);
  __chkstk_darwin(v8 - 8);
  v102 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v76 - v11;
  v94 = type metadata accessor for VisitHistoryFilterView(0);
  v92 = *(v94 - 8);
  v12 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CardHeaderSize();
  v13 = *(v89 - 8);
  __chkstk_darwin(v89);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - v17;
  v84 = &v76 - v17;
  v19 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v19 - 8);
  v90 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1000CE6B8(&qword_10190A5F8) - 8;
  __chkstk_darwin(v88);
  v101 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v76 - v23;
  v85 = a1;
  v26 = a1[1];
  *&v107 = *a1;
  v25 = v107;
  *(&v107 + 1) = v26;
  v27 = sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  v28 = *(v104 + 96);

  v29 = *(v28 + 40);
  v87 = *(v28 + 32);
  v86 = v29;

  v30 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  v78 = v25;
  *&v107 = v25;
  *(&v107 + 1) = v26;
  v77 = v26;
  v76 = v27;
  State.wrappedValue.getter();
  v31 = *(v104 + 96);

  swift_getKeyPath();
  *&v107 = v31;
  sub_10018D32C(&qword_10190E310, type metadata accessor for VisitHistoryFilterViewModel.HeaderViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = *(v31 + 48);

  (*(v13 + 104))(v15, enum case for CardHeaderSize.medium(_:), v89);
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v32 = v85;
  v33 = v91;
  sub_10018C620(v85, v91, type metadata accessor for VisitHistoryFilterView);
  v34 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v35 = swift_allocObject() + v34;
  v36 = v93;
  sub_10018CBB0(v33, v35, type metadata accessor for VisitHistoryFilterView);
  static CardButtonViewModel.close(tintColor:enabled:action:)();
  v37 = v32;

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v38 = v24;
  v39 = &v24[*(v88 + 44)];
  *v39 = 0xD000000000000012;
  *(v39 + 1) = 0x80000001012205C0;
  v39[16] = 12;
  v40 = sub_100186CF0();
  v41 = 1;
  if (v40)
  {
    v42 = v97;
    sub_100155054(v97);
    v43 = v98;
    static InterfaceIdiom.mac.getter();
    sub_10018D32C(&qword_10190CC98, &type metadata accessor for InterfaceIdiom);
    v44 = v100;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v99 + 8);
    v46(v43, v44);
    v46(v42, v44);
    if (v45)
    {
      v41 = 1;
    }

    else
    {
      v47 = v79;
      sub_1001881FC(v79);
      sub_1000F11C4(v47, v36, &qword_10190CC58);
      v41 = 0;
    }
  }

  (*(v95 + 56))(v36, v41, 1, v96);
  v48 = *(v37 + 72);
  if (*(v37 + 80) == 1)
  {
    v113 = v48 & 1;
    if ((v48 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v80;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A1574(v48, 0);
    (*(v81 + 8))(v50, v82);
    if (v113 != 1)
    {
      goto LABEL_10;
    }
  }

  v51 = v97;
  sub_100155054(v97);
  v52 = v98;
  static InterfaceIdiom.mac.getter();
  sub_10018D32C(&qword_10190CC98, &type metadata accessor for InterfaceIdiom);
  v53 = v100;
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v99 + 8);
  v55(v52, v53);
  v55(v51, v53);
  if ((v54 & 1) == 0)
  {
    *&v107 = v78;
    *(&v107 + 1) = v77;
    State.wrappedValue.getter();
    type metadata accessor for VisitHistoryFilterViewModel(0);
    State.init(wrappedValue:)();
    v99 = *(&v107 + 1);
    v100 = v107;
    v60 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    LOBYTE(v107) = 0;
    v98 = v60;
    goto LABEL_12;
  }

LABEL_10:
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
LABEL_12:
  v65 = v101;
  sub_1000D2DFC(v38, v101, &qword_10190A5F8);
  v66 = v102;
  sub_1000D2DFC(v36, v102, &qword_10190E308);
  v67 = v103;
  sub_1000D2DFC(v65, v103, &qword_10190A5F8);
  v68 = v36;
  v69 = sub_1000CE6B8(&qword_10190E318);
  sub_1000D2DFC(v66, v67 + *(v69 + 48), &qword_10190E308);
  v70 = (v67 + *(v69 + 64));
  v71 = v100;
  v72 = v99;
  *&v104 = v100;
  *(&v104 + 1) = v99;
  v73 = v98;
  *&v105 = v98;
  *(&v105 + 1) = v56;
  *v106 = v57;
  *&v106[8] = v58;
  *&v106[16] = v59;
  v106[24] = 0;
  v74 = v105;
  *v70 = v104;
  v70[1] = v74;
  v70[2] = *v106;
  *(v70 + 41) = *&v106[9];
  sub_1000D2DFC(&v104, &v107, &qword_10190E320);
  sub_100024F64(v68, &qword_10190E308);
  sub_100024F64(v38, &qword_10190A5F8);
  *&v107 = v71;
  *(&v107 + 1) = v72;
  *&v108 = v73;
  *(&v108 + 1) = v56;
  v109 = v57;
  v110 = v58;
  v111 = v59;
  v112 = 0;
  sub_100024F64(&v107, &qword_10190E320);
  sub_100024F64(v66, &qword_10190E308);
  return sub_100024F64(v65, &qword_10190A5F8);
}

uint64_t sub_100189BF8()
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v2 + 144);
  if (!v0)
  {
  }

  v0();

  return sub_1000588AC(v0);
}

uint64_t sub_100189CFC()
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.getter();
  sub_10025DAB8(v1, v2);
}

uint64_t sub_100189DA8()
{
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.setter();
  sub_1000CE6B8(&qword_10190A140);
  return State.wrappedValue.setter();
}

uint64_t sub_100189E44@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VisitHistoryFilterViewModel(0);
  State.init(wrappedValue:)();
  *a1 = v6;
  State.init(wrappedValue:)();
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  State.init(wrappedValue:)();
  *(a1 + 40) = v6;
  *(a1 + 48) = *(&v6 + 1);
  State.init(wrappedValue:)();
  *(a1 + 56) = v6;
  *(a1 + 64) = *(&v6 + 1);
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  v2 = type metadata accessor for VisitHistoryFilterView(0);
  v3 = *(v2 + 36);
  *(a1 + v3) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190CBC8);
  swift_storeEnumTagMultiPayload();
  v4 = (a1 + *(v2 + 40));
  type metadata accessor for ActionBarViewModel();
  result = State.init(wrappedValue:)();
  *v4 = v6;
  return result;
}

uint64_t sub_100189FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FilterBarViewModel();
  __chkstk_darwin(v6 - 8);
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100194FC0();

  FilterBarViewModel.init(options:accessibilityIdentifier:)();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  FilterBar.init(model:allowGlass:tapHandler:)();
  v8 = static Color.clear.getter();
  LOBYTE(a1) = static Edge.Set.all.getter();
  result = sub_1000CE6B8(&qword_10190E528);
  v10 = a3 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = a1;
  return result;
}

uint64_t sub_10018A1A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  sub_10025E094(a1, a2, a3, a4);
}

uint64_t sub_10018A230@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v72 = sub_1000CE6B8(&qword_10190E3E8);
  __chkstk_darwin(v72);
  v60 = &v55 - v2;
  v3 = sub_1000CE6B8(&qword_10191D860);
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v55 - v6;
  v67 = sub_1000CE6B8(&qword_10190E3F0);
  __chkstk_darwin(v67);
  v61 = (&v55 - v7);
  v69 = sub_1000CE6B8(&qword_10190E3F8);
  __chkstk_darwin(v69);
  v70 = &v55 - v8;
  v64 = sub_1000CE6B8(&qword_10190E400);
  __chkstk_darwin(v64);
  v65 = &v55 - v9;
  v68 = sub_1000CE6B8(&qword_10190E408);
  __chkstk_darwin(v68);
  v66 = &v55 - v10;
  v11 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v11 - 8);
  v62 = &v55 - v12;
  v13 = type metadata accessor for EmptyStateViewModel.Icon();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v17 - 8);
  v63 = sub_1000CE6B8(&qword_10190E410);
  __chkstk_darwin(v63);
  v19 = &v55 - v18;
  v21 = *v1;
  v20 = v1[1];
  v56 = v1;
  v74 = v21;
  v75 = v20;
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  v22 = sub_10025E404();

  if (v22)
  {
    *v16 = 0x697966696E67616DLL;
    v16[1] = 0xEF7373616C67676ELL;
    (*(v14 + 104))(v16, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v13);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v23.super.isa = qword_1019600D8;
    v76._object = 0x80000001012206D0;
    v24._countAndFlagsBits = 0x6C75736552206F4ELL;
    v25._countAndFlagsBits = 0xD000000000000036;
    v25._object = 0x8000000101220690;
    v76._countAndFlagsBits = 0xD000000000000080;
    v24._object = 0xEA00000000007374;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, qword_1019600D8, v24, v76);
    v77._object = 0x80000001012207C0;
    v26._countAndFlagsBits = 0xD00000000000003DLL;
    v26._object = 0x8000000101220760;
    v27._countAndFlagsBits = 0xD00000000000001BLL;
    v27._object = 0x80000001012207A0;
    v77._countAndFlagsBits = 0xD00000000000007DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v23, v27, v77);
    v28 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
    (*(*(v28 - 8) + 56))(v62, 1, 1, v28);
    EmptyStateViewModel.init(icon:title:details:button:)();
    EmptyStateView.init(model:)();
    v29 = &v19[*(v63 + 36)];
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x8000000101220670;
    v29[16] = 13;
    v30 = &qword_10190E410;
    sub_1000D2DFC(v19, v65, &qword_10190E410);
    swift_storeEnumTagMultiPayload();
    sub_10018C8F8();
    sub_10018C9B4();
    v31 = v66;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v31, v70, &qword_10190E408);
    swift_storeEnumTagMultiPayload();
    sub_10018C86C();
    sub_10018CA6C();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v31, &qword_10190E408);
    v32 = v19;
    return sub_100024F64(v32, v30);
  }

  v74 = v21;
  v75 = v20;
  State.wrappedValue.getter();
  v33 = v73;
  swift_getKeyPath();
  v74 = v33;
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + 224);

  if (v34 == 1)
  {
    v36 = static HorizontalAlignment.center.getter();
    v37 = v61;
    *v61 = v36;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    v38 = v37 + *(sub_1000CE6B8(&qword_10190E478) + 44);
    v39 = v55;
    ProgressView<>.init<>()();
    v41 = v57;
    v40 = v58;
    v42 = *(v58 + 16);
    v43 = v59;
    v42(v57, v39, v59);
    v42(v38, v41, v43);
    v44 = v38 + *(sub_1000CE6B8(&qword_10190E480) + 48);
    *v44 = 0;
    *(v44 + 8) = 1;
    v45 = *(v40 + 8);
    v45(v39, v43);
    v45(v41, v43);
    LOBYTE(v38) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v46 = v37 + *(v67 + 36);
    *v46 = v38;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    v30 = &qword_10190E3F0;
    sub_1000D2DFC(v37, v65, &qword_10190E3F0);
    swift_storeEnumTagMultiPayload();
    sub_10018C8F8();
    sub_10018C9B4();
    v51 = v66;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v51, v70, &qword_10190E408);
    swift_storeEnumTagMultiPayload();
    sub_10018C86C();
    sub_10018CA6C();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v51, &qword_10190E408);
    v32 = v37;
    return sub_100024F64(v32, v30);
  }

  __chkstk_darwin(v35);
  sub_1000CE6B8(&qword_10190E418);
  sub_1000414C8(&qword_10190E420, &qword_10190E418);
  v53 = v60;
  List<>.init(content:)();
  v54 = v53 + *(v72 + 36);
  *v54 = 0xD000000000000010;
  *(v54 + 8) = 0x8000000101220670;
  *(v54 + 16) = 13;
  sub_1000D2DFC(v53, v70, &qword_10190E3E8);
  swift_storeEnumTagMultiPayload();
  sub_10018C86C();
  sub_10018CA6C();
  _ConditionalContent<>.init(storage:)();
  return sub_100024F64(v53, &qword_10190E3E8);
}

uint64_t sub_10018ACF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1000CE6B8(&qword_10190E488);
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = v41 - v4;
  v52 = sub_1000CE6B8(&qword_10190E490);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = v41 - v5;
  v6 = sub_1000CE6B8(&qword_10190E498);
  __chkstk_darwin(v6 - 8);
  v53 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = v41 - v9;
  v10 = type metadata accessor for VisitHistoryFilterListView(0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000CE6B8(&qword_10190E4A0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v49 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  v18 = *a1;
  v47 = a1[1];
  v48 = v18;
  v56 = v18;
  v57 = v47;
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  v19 = v55;
  swift_getKeyPath();
  v56 = v19;
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 112);

  v56 = v20;
  v41[1] = a1;
  sub_10018C620(a1, v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryFilterListView);
  v21 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v22 = swift_allocObject();
  sub_10018CBB0(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for VisitHistoryFilterListView);
  sub_1000CE6B8(&qword_10190E4A8);
  sub_1000CE6B8(&qword_10190E4B0);
  sub_1000414C8(&qword_10190E4B8, &qword_10190E4A8);
  sub_10018CC98();
  sub_10018D32C(&qword_10190E4E8, type metadata accessor for VisitHistoryItem);
  ForEach<>.init(_:content:)();
  v23 = &v17[*(v13 + 44)];
  *v23 = xmmword_1011EB6B0;
  v23[16] = 1;
  v56 = v48;
  v57 = v47;
  State.wrappedValue.getter();
  v24 = v55;
  swift_getKeyPath();
  v56 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 224) == 1)
  {

    v25 = 1;
    v27 = v51;
    v26 = v52;
  }

  else
  {
    swift_getKeyPath();
    v56 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v24 + 112);
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v51;

    if (v29 >= 1000)
    {
      __chkstk_darwin(v30);
      sub_1000CE6B8(&qword_10190E4F0);
      sub_1000414C8(&qword_10190E4F8, &qword_10190E4F0);
      v31 = v43;
      Section<>.init(content:)();
      sub_10018CEA4();
      v32 = v42;
      v33 = v45;
      View.listSectionCornerRadius(_:)();
      (*(v44 + 8))(v31, v33);
      v56 = static Color.clear.getter();
      v34 = AnyView.init<A>(_:)();
      v35 = v52;
      *(v32 + *(v52 + 36)) = v34;
      sub_1000A5EB4(v32, v27);
      v26 = v35;
      v25 = 0;
    }

    else
    {
      v25 = 1;
      v26 = v52;
    }
  }

  (*(v50 + 56))(v27, v25, 1, v26);
  v36 = v49;
  sub_1000D2DFC(v17, v49, &qword_10190E4A0);
  v37 = v53;
  sub_1000D2DFC(v27, v53, &qword_10190E498);
  v38 = v54;
  sub_1000D2DFC(v36, v54, &qword_10190E4A0);
  v39 = sub_1000CE6B8(&qword_10190E508);
  sub_1000D2DFC(v37, v38 + *(v39 + 48), &qword_10190E498);
  sub_100024F64(v27, &qword_10190E498);
  sub_100024F64(v17, &qword_10190E4A0);
  sub_100024F64(v37, &qword_10190E498);
  return sub_100024F64(v36, &qword_10190E4A0);
}

uint64_t sub_10018B4D0()
{
  sub_1000CE6B8(&qword_10190E4E0);
  sub_10018CDB4();
  return Section<>.init(content:)();
}

uint64_t sub_10018B544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VisitHistoryFilterListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[4] = type metadata accessor for VisitHistoryItem();
  v17[5] = sub_10018D32C(&qword_10190E520, type metadata accessor for VisitHistoryItem);
  v17[1] = a1;
  sub_10018C620(a2, v9, type metadata accessor for VisitHistoryFilterListView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_10018CBB0(v9, v12 + v10, type metadata accessor for VisitHistoryFilterListView);
  *(v12 + v11) = a1;
  swift_retain_n();
  PlaceCell.init(model:tapHandler:)();
  KeyPath = swift_getKeyPath();
  sub_10018C620(a2, v9, type metadata accessor for VisitHistoryFilterListView);
  v14 = swift_allocObject();
  sub_10018CBB0(v9, v14 + v10, type metadata accessor for VisitHistoryFilterListView);
  *(v14 + v11) = a1;
  v15 = (a3 + *(sub_1000CE6B8(&qword_10190E4E0) + 36));
  *v15 = KeyPath;
  v15[1] = sub_10018D104;
  v15[2] = v14;
}

void sub_10018B76C(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10018D32C(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v6 + 160);
  if (v3)
  {

    v3(a2);
    sub_1000588AC(v3);
  }

  v4 = [objc_opt_self() sharedService];
  if (v4)
  {
    v5 = v4;
    [v4 captureUserAction:2007 onTarget:0 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10018B8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  sub_1002F1E40(a1, a3);
}

double sub_10018B928@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1000CE6B8(&qword_10190E510);
  *&result = sub_10018B980(a1, a2 + *(v4 + 44)).n128_u64[0];
  return result;
}

__n128 sub_10018B980@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for EmptyStateViewModel.Icon();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for EmptyStateView();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0xD000000000000028;
  v8[1] = 0x8000000101220840;
  (*(v6 + 104))(v8, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v5, v12);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v15.super.isa = qword_1019600D8;
  v35._object = 0x80000001012208B0;
  v16._countAndFlagsBits = 0x5420666F20646E45;
  v16._object = 0xEF64616F52206568;
  v17._countAndFlagsBits = 0xD00000000000003BLL;
  v17._object = 0x8000000101220870;
  v35._countAndFlagsBits = 0xD00000000000006CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v16, v35);
  v36._object = 0x8000000101220990;
  v18._countAndFlagsBits = 0xD00000000000003DLL;
  v18._object = 0x8000000101220920;
  v19._countAndFlagsBits = 0xD000000000000029;
  v19._object = 0x8000000101220960;
  v36._countAndFlagsBits = 0xD00000000000003FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v15, v19, v36);
  v20 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  EmptyStateViewModel.init(icon:title:details:button:)();
  EmptyStateView.init(model:)();
  type metadata accessor for VisitHistoryFilterListView(0);
  sub_1000CE6B8(&qword_10190F6E0);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v27;
  (*(v11 + 32))(v27, v14, v10);
  v22 = v21 + *(sub_1000CE6B8(&qword_10190E518) + 36);
  v23 = v33;
  *(v22 + 64) = v32;
  *(v22 + 80) = v23;
  *(v22 + 96) = v34;
  v24 = v29;
  *v22 = v28;
  *(v22 + 16) = v24;
  result = v31;
  *(v22 + 32) = v30;
  *(v22 + 48) = result;
  return result;
}

void sub_10018BE5C()
{
  sub_10018C08C(319, &qword_10190E238, type metadata accessor for VisitHistoryFilterViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10018C03C(319, &qword_10190CAC8, &type metadata for String, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_10018C03C(319, &unk_10191DAC0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10018C03C(319, &unk_10190E240, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10018C08C(319, &unk_10190CAE8, &type metadata accessor for InterfaceIdiom, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10018C08C(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10018C03C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10018C08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_10018C114()
{
  result = qword_10190E2A0;
  if (!qword_10190E2A0)
  {
    sub_1000D6664(&qword_10190E298);
    sub_1000D6664(&qword_10190E2A8);
    sub_10018C208();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101916F20, &qword_10190CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E2A0);
  }

  return result;
}

unint64_t sub_10018C208()
{
  result = qword_10190E2B0;
  if (!qword_10190E2B0)
  {
    sub_1000D6664(&qword_10190E2A8);
    sub_10018C2C0();
    sub_1000414C8(&qword_10190E2C8, &qword_10190E2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E2B0);
  }

  return result;
}

unint64_t sub_10018C2C0()
{
  result = qword_10190E2B8;
  if (!qword_10190E2B8)
  {
    sub_1000D6664(&qword_10190E2C0);
    sub_1000D6664(&qword_10190CEB8);
    sub_10015710C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E2B8);
  }

  return result;
}

unint64_t sub_10018C3B8()
{
  result = qword_10190E2E0;
  if (!qword_10190E2E0)
  {
    sub_1000D6664(&qword_10190E288);
    sub_1000414C8(&qword_10190E2E8, &qword_10190E2F0);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E2E0);
  }

  return result;
}

uint64_t sub_10018C480()
{
  type metadata accessor for VisitHistoryFilterView(0);

  return sub_100189BF8();
}

uint64_t sub_10018C508(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VisitHistoryFilterView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10018C5CC()
{
  result = qword_10190E338;
  if (!qword_10190E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E338);
  }

  return result;
}

uint64_t sub_10018C620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018C688(uint64_t a1)
{
  v2 = type metadata accessor for VisitHistoryFilterListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10018C70C()
{
  sub_10018C08C(319, &qword_10190E238, type metadata accessor for VisitHistoryFilterViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10018C7C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10018C7C0()
{
  if (!qword_10191DE90)
  {
    sub_10018C5CC();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_10191DE90);
    }
  }
}

unint64_t sub_10018C86C()
{
  result = qword_10190E428;
  if (!qword_10190E428)
  {
    sub_1000D6664(&qword_10190E408);
    sub_10018C8F8();
    sub_10018C9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E428);
  }

  return result;
}

unint64_t sub_10018C8F8()
{
  result = qword_10190E430;
  if (!qword_10190E430)
  {
    sub_1000D6664(&qword_10190E410);
    sub_10018D32C(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E430);
  }

  return result;
}

unint64_t sub_10018C9B4()
{
  result = qword_10190E438;
  if (!qword_10190E438)
  {
    sub_1000D6664(&qword_10190E3F0);
    sub_1000414C8(&qword_10190E440, &qword_10190E448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E438);
  }

  return result;
}

unint64_t sub_10018CA6C()
{
  result = qword_10190E450;
  if (!qword_10190E450)
  {
    sub_1000D6664(&qword_10190E3E8);
    sub_10018CAF8();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E450);
  }

  return result;
}

unint64_t sub_10018CAF8()
{
  result = qword_10190E458;
  if (!qword_10190E458)
  {
    sub_1000D6664(&qword_10190E460);
    sub_1000414C8(&qword_10190E468, &qword_10190E470);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E458);
  }

  return result;
}

uint64_t sub_10018CBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018CC18()
{
  type metadata accessor for VisitHistoryFilterListView(0);

  return sub_10018B4D0();
}

unint64_t sub_10018CC98()
{
  result = qword_10190E4C0;
  if (!qword_10190E4C0)
  {
    sub_1000D6664(&qword_10190E4B0);
    sub_10018CD24();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E4C0);
  }

  return result;
}

unint64_t sub_10018CD24()
{
  result = qword_10190E4C8;
  if (!qword_10190E4C8)
  {
    sub_1000D6664(&qword_10190E4D0);
    sub_10018CDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E4C8);
  }

  return result;
}

unint64_t sub_10018CDB4()
{
  result = qword_10190E4D8;
  if (!qword_10190E4D8)
  {
    sub_1000D6664(&qword_10190E4E0);
    sub_10018D32C(&qword_10190D640, &type metadata accessor for PlaceCell);
    sub_1000414C8(&unk_10190D690, &qword_10190BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E4D8);
  }

  return result;
}

unint64_t sub_10018CEA4()
{
  result = qword_10190E500;
  if (!qword_10190E500)
  {
    sub_1000D6664(&qword_10190E488);
    sub_1000414C8(&qword_10190E4F8, &qword_10190E4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E500);
  }

  return result;
}

void sub_10018CF68()
{
  v1 = *(type metadata accessor for VisitHistoryFilterListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10018B76C(v0 + v2, v3);
}

uint64_t sub_10018CFF4()
{
  v1 = (type metadata accessor for VisitHistoryFilterListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_1000CE6B8(&qword_10190F6E0);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10018D104(uint64_t a1)
{
  v3 = *(type metadata accessor for VisitHistoryFilterListView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10018B8B0(a1, v1 + v4, v5);
}

unint64_t sub_10018D1B8()
{
  result = qword_10190E530;
  if (!qword_10190E530)
  {
    sub_1000D6664(&qword_10190E538);
    sub_10018C86C();
    sub_10018CA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E530);
  }

  return result;
}

unint64_t sub_10018D244()
{
  result = qword_10190E540;
  if (!qword_10190E540)
  {
    sub_1000D6664(&qword_10190E528);
    sub_10018D32C(&qword_10191DB00, &type metadata accessor for FilterBar);
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E540);
  }

  return result;
}

uint64_t sub_10018D32C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10018D420(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  *v8 = v6;
  v8[1] = v7;
  v9 = a1;

  sub_10018D9D4();
}

Class sub_10018D528()
{
  sub_100014C84(0, &qword_101909920);

  v0.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

void sub_10018D5A4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100014C84(0, &qword_101909920);
  *&a1[*a4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;

  sub_10018D9D4();
}

id sub_10018D778()
{
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerHostingController] = 0;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_header] = 0;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerSize] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_title];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_titleCustomAXID];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_subtitle];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_showTitle] = 1;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_leadingButtons] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_trailingButtons] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate] = 0;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MapsSubtitleHeaderView();
  return objc_msgSendSuper2(&v5, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

id sub_10018D87C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerHostingController] = 0;
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_header] = 0;
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerSize] = 0;
  v9 = &v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_title];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_titleCustomAXID];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_subtitle];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_showTitle] = 1;
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_leadingButtons] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_trailingButtons] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate] = 0;
  *&v4[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MapsSubtitleHeaderView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

uint64_t sub_10018D9D4()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v1 - 8);
  v141 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for CenteredCardHeaderNavigation();
  __chkstk_darwin(v140);
  v139 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v138 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v127 - v8;
  v10 = type metadata accessor for CardHeaderTextViewModel();
  v153 = *(v10 - 8);
  __chkstk_darwin(v10);
  v137 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v152 = &v127 - v13;
  v14 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v14 - 8);
  v136 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v127 - v17;
  __chkstk_darwin(v18);
  v150 = &v127 - v19;
  __chkstk_darwin(v20);
  v151 = (&v127 - v21);
  v157 = type metadata accessor for CardButtonViewModel();
  v22 = *(v157 - 8);
  __chkstk_darwin(v157);
  v129 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v128 = &v127 - v25;
  v26 = type metadata accessor for CardHeaderSize();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v134 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v127 - v30;
  v34 = __chkstk_darwin(v32);
  v35 = &v127 - v33;
  v142 = OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerHostingController;
  v36 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerHostingController];
  v154 = v10;
  if (v36)
  {
    v37 = v9;
    v38 = v5;
    v39 = v4;
    v40 = &v127 - v33;
    v41 = v27;
    v42 = v26;
    v43 = [v36 view];
    if (!v43)
    {
      __break(1u);
LABEL_64:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_65;
    }

    v44 = v43;
    [v43 removeFromSuperview];

    v45 = *&v0[v142];
    v26 = v42;
    v27 = v41;
    v35 = v40;
    v4 = v39;
    v5 = v38;
    v9 = v37;
    if (v45)
    {
      [v45 removeFromParentViewController];
    }
  }

  v132 = OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_header;
  *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_header] = 0;

  v46 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerSize];
  if (!v46)
  {
    v47 = &enum case for CardHeaderSize.medium(_:);
LABEL_9:
    (*(v27 + 104))(v31, *v47, v26);
    (*(v27 + 32))(v35, v31, v26);
    v48 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_title + 8];
    if (v48)
    {
      v131 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_title];
      v144 = v48;
    }

    else
    {
      v131 = 0;
      v144 = 0xE000000000000000;
    }

    v145 = v35;
    v49 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_subtitle + 8];
    v130 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_subtitle];
    v158 = v0;
    v50 = *&v0[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_leadingButtons];
    v149 = v4;
    v133 = v5;
    v147 = v26;
    v148 = v9;
    v146 = v27;
    v51 = v50 & 0xFFFFFFFFFFFFFF8;
    if (v50 >> 62)
    {
LABEL_61:
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v143 = v49;

    v49 = 0;
    v156 = _swiftEmptyArrayStorage;
    while (v52 != v49)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *(v51 + 16))
        {
          goto LABEL_58;
        }

        v53 = *(v50 + 8 * v49 + 32);
      }

      v54 = v53;
      v55 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v56 = [v53 integerValue];

      ++v49;
      if (v56 < 0xD)
      {
        v57 = v156;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_100356B7C(0, *(v57 + 2) + 1, 1, v57);
        }

        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        v156 = v57;
        if (v59 >= v58 >> 1)
        {
          v156 = sub_100356B7C((v58 > 1), v59 + 1, 1, v156);
        }

        v60 = v156;
        *(v156 + 2) = v59 + 1;
        *&v60[8 * v59 + 32] = v56;
        v49 = v55;
      }
    }

    v50 = *&v158[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_trailingButtons];
    v51 = v50 & 0xFFFFFFFFFFFFFF8;
    if (v50 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = 0;
    v155 = _swiftEmptyArrayStorage;
    while (v61 != v49)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v62 = *(v50 + 8 * v49 + 32);
      }

      v63 = v62;
      v64 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_59;
      }

      v65 = [v62 integerValue];

      ++v49;
      if (v65 < 0xD)
      {
        v66 = v155;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_100356B7C(0, *(v66 + 2) + 1, 1, v66);
        }

        v68 = *(v66 + 2);
        v67 = *(v66 + 3);
        v155 = v66;
        if (v68 >= v67 >> 1)
        {
          v155 = sub_100356B7C((v67 > 1), v68 + 1, 1, v155);
        }

        v69 = v155;
        *(v155 + 2) = v68 + 1;
        *&v69[8 * v68 + 32] = v65;
        v49 = v64;
      }
    }

    v70 = *(v156 + 2);
    if (v70)
    {
      v159 = _swiftEmptyArrayStorage;
      sub_10051161C(0, v70, 0);
      v71 = v159;
      v72 = 32;
      v73 = v128;
      do
      {
        v74 = *&v156[v72];
        v75 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        *(v76 + 24) = v74;

        sub_10051908C(0, sub_10018EE08, v76, v74);

        v159 = v71;
        v78 = v71[2];
        v77 = v71[3];
        if (v78 >= v77 >> 1)
        {
          sub_10051161C(v77 > 1, v78 + 1, 1);
          v71 = v159;
        }

        v71[2] = v78 + 1;
        (*(v22 + 32))(v71 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v78, v73, v157);
        v72 += 8;
        --v70;
      }

      while (v70);
    }

    v79 = *(v155 + 2);
    v80 = v158;
    if (v79)
    {
      v159 = _swiftEmptyArrayStorage;
      sub_10051161C(0, v79, 0);
      v81 = v159;
      v82 = 32;
      v83 = v129;
      do
      {
        v84 = *&v155[v82];
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = swift_allocObject();
        *(v86 + 16) = v85;
        *(v86 + 24) = v84;

        sub_10051908C(0, sub_10018EE2C, v86, v84);

        v159 = v81;
        v88 = v81[2];
        v87 = v81[3];
        if (v88 >= v87 >> 1)
        {
          sub_10051161C(v87 > 1, v88 + 1, 1);
          v81 = v159;
        }

        v81[2] = v88 + 1;
        (*(v22 + 32))(v81 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v88, v83, v157);
        v82 += 8;
        --v79;
        v80 = v158;
      }

      while (v79);
    }

    v89 = *&v80[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_titleCustomAXID + 8];
    v90 = v151;
    if (v89)
    {
      *v151 = *&v80[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_titleCustomAXID];
      v90[1] = v89;
      v91 = enum case for MapsDesignAccessibilityString.custom(_:);
      v92 = type metadata accessor for MapsDesignAccessibilityString();
      v93 = *(v92 - 8);
      (*(v93 + 104))(v90, v91, v92);
      (*(v93 + 56))(v90, 0, 1, v92);
    }

    else
    {
      v92 = type metadata accessor for MapsDesignAccessibilityString();
      (*(*(v92 - 8) + 56))(v90, 1, 1, v92);
    }

    sub_10018EE50(v90, v150);

    v158 = static HorizontalAlignment.center.getter();
    v94 = enum case for MapsDesignAccessibilityString.subtitleLabel(_:);
    type metadata accessor for MapsDesignAccessibilityString();
    v95 = *(v92 - 8);
    v96 = *(v95 + 104);
    v97 = v135;
    v96(v135, v94, v92);
    v98 = *(v95 + 56);
    v98(v97, 0, 1, v92);
    v99 = v136;
    v96(v136, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v92);
    v98(v99, 0, 1, v92);
    v100 = v152;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    (*(v153 + 16))(v137, v100, v154);
    (*(v146 + 16))(v134, v145, v147);

    v101 = v148;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    v102 = v133;
    (*(v133 + 16))(v138, v101, v149);
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    sub_10018EEC0();
    v103 = AnyView.init<A>(_:)();
    *&v80[v132] = v103;

    v159 = v103;
    v104 = objc_allocWithZone(sub_1000CE6B8(&unk_10190DEB8));

    v105 = UIHostingController.init(rootView:)();
    v106 = *&v80[v142];
    *&v80[v142] = v105;
    v107 = v105;

    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    v108 = [v107 view];
    if (v108)
    {
      v109 = v108;

      [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
      v110 = [objc_opt_self() clearColor];
      [v109 setBackgroundColor:v110];

      [v80 addSubview:v109];
      v158 = objc_opt_self();
      sub_1000CE6B8(&qword_101908400);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1011E5C00;
      v112 = [v109 leadingAnchor];
      v113 = [v80 leadingAnchor];
      v114 = v80;
      v115 = [v112 constraintEqualToAnchor:v113];

      *(v111 + 32) = v115;
      v116 = [v109 trailingAnchor];
      v117 = [v114 trailingAnchor];
      v118 = [v116 constraintEqualToAnchor:v117];

      *(v111 + 40) = v118;
      v119 = [v109 topAnchor];
      v120 = [v114 topAnchor];
      v121 = [v119 constraintEqualToAnchor:v120];

      *(v111 + 48) = v121;
      v122 = [v109 bottomAnchor];
      v123 = [v114 bottomAnchor];
      v124 = [v122 constraintEqualToAnchor:v123];

      *(v111 + 56) = v124;
      sub_100014C84(0, &qword_10190B720);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v158 activateConstraints:isa];

      [*&v114[OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController] addChildViewController:v107];

      (*(v102 + 8))(v148, v149);
      (*(v153 + 8))(v152, v154);
      sub_10018EF18(v151);
      return (*(v146 + 8))(v145, v147);
    }

    goto LABEL_64;
  }

  if (v46 == 1)
  {
    v47 = &enum case for CardHeaderSize.large(_:);
    goto LABEL_9;
  }

LABEL_65:
  v159 = v46;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_10018EC4C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate);
    if (v8)
    {
      if ([*(Strong + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate) respondsToSelector:*a4])
      {
        [v8 *a4];
      }
    }
  }
}

id sub_10018ECE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSubtitleHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018EE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101910FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018EEC0()
{
  result = qword_10190CC10;
  if (!qword_10190CC10)
  {
    type metadata accessor for CenteredCardHeaderNavigation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CC10);
  }

  return result;
}

uint64_t sub_10018EF18(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_101910FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10018EF80()
{
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_header) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerSize) = 0;
  v1 = (v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_titleCustomAXID);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_subtitle);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_showTitle) = 1;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_leadingButtons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_trailingButtons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

int64_t sub_10018F0A0(uint64_t (*a1)(void))
{
  v2 = a1();
  sub_100193144(v2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [objc_opt_self() searchInfoWithResults:isa];

  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong injectSearchPinsFromSearchInfo:v4];
      swift_unknownObjectRelease();
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v10 >= 5)
      {
        v17 = 5;
      }

      else
      {
        v17 = v10;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v8 = v17;
      }

      else
      {
        v8 = 5;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result >= v8)
      {
LABEL_9:
        if ((v2 & 0xC000000000000001) != 0 && v8)
        {
          sub_10019152C();

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v8 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v8 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
              if (v8 != 3)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(3);
                if (v8 != 4)
                {
                  _ArrayBuffer._typeCheckSlowPath(_:)(4);
                }
              }
            }
          }
        }

        else
        {
        }

        if (v6)
        {
          v9 = _CocoaArrayWrapper.subscript.getter();
          v1 = v11;
          v6 = v12;
          v10 = v13;
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
          v1 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
          v10 = (2 * v8) | 1;
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {

LABEL_35:

          return swift_unknownObjectRelease();
        }

        if ((v10 & 1) == 0)
        {
          swift_unknownObjectRetain();
LABEL_26:
          sub_100415E5C(v9, v1, v6, v10);
          goto LABEL_33;
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          swift_unknownObjectRelease();
          v14 = _swiftEmptyArrayStorage;
        }

        v15 = v14[2];

        if (!__OFSUB__(v10 >> 1, v6))
        {
          if (v15 == (v10 >> 1) - v6)
          {
            v16 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v16)
            {
LABEL_34:
              sub_100263B90();

              swift_unknownObjectRelease();
              goto LABEL_35;
            }

LABEL_33:
            swift_unknownObjectRelease();
            goto LABEL_34;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 5)
      {
        v8 = 5;
      }

      else
      {
        v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    return result;
  }
}

char *sub_10018F40C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_mapModificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100191458(a1, v8);
  type metadata accessor for VisitHistoryFilterViewModel(0);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_viewModel] = sub_10025F348(v8);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_1003A7704(v4);
  v5 = *&v4[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_viewModel];
  swift_getKeyPath();
  v8[0] = v5;
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000F1E68(a1);

  return v4;
}

uint64_t sub_10018F64C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ActionBarItemType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_101908400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E47B0;
  (*(v3 + 104))(v5, enum case for ActionBarItemType.search(_:), v2);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();

  *(v6 + 32) = ActionBarItemViewModel.init(_:)();
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  a1[3] = type metadata accessor for VisitHistoryFilterView(0);
  a1[4] = sub_1001914D4(qword_10190E608, type metadata accessor for VisitHistoryFilterView);
  v7 = sub_10001A848(a1);
  return sub_100189E44(v7);
}

uint64_t sub_10018F828(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "willBecomeCurrent:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_viewModel];
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v3 + 120) & 1) == 0)
  {
    sub_100260674();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v3 + 121) & 1) == 0)
  {
    return sub_100260974();
  }

  return result;
}

uint64_t sub_10018FA00()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10018FD60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10018F0A0(sub_100190844);
  }
}

void sub_10018FDD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(*(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56);
      v7 = objc_allocWithZone(MKMapItem);
      v8 = v6;
      v9 = [v7 initWithGeoMapItem:v8 isPlaceHolderPlace:0];
      if (v9)
      {
        v10 = v9;
        v11 = [v5 iosBasedChromeViewController];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 appCoordinator];

          if (v13)
          {
            v14 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:v10];
            v15 = type metadata accessor for PlaceCardContextConfiguration();
            v16 = objc_allocWithZone(v15);
            v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
            *&v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v14;
            v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
            *&v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
            v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
            v24.receiver = v16;
            v24.super_class = v15;
            v17 = v14;
            v18 = objc_msgSendSuper2(&v24, "init");
            [v13 displayPlaceCardWithConfiguration:{v18, v24.receiver, v24.super_class}];

            v10 = v18;
          }
        }
      }

      swift_unknownObjectRelease();
    }

    v19 = [objc_opt_self() sharedService];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    sub_100191458(*&v3[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_viewModel] + 48, v30);
    sub_100191458(v30, v28);
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        sub_10005E7BC(v28, v25);
        v21 = v26;
        v22 = v27;
        sub_10005E838(v25, v26);
        (*(v22 + 40))(v21, v22);
        sub_1000F1E68(v30);
        sub_10004E3D0(v25);
LABEL_16:
        v23 = String._bridgeToObjectiveC()();

        [v20 captureUserAction:478 onTarget:147 eventValue:v23];

        return;
      }
    }

    else if (!v29)
    {
      sub_1000F1E68(v28);
    }

    sub_1000F1E68(v30);
    goto LABEL_16;
  }
}

uint64_t sub_10019015C()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_actionDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_mapModificationDelegate);
}

uint64_t sub_10019022C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = swift_allocObject();
    swift_weakInit();

    sub_100444318(a2, sub_100191450, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001902EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = sub_100196024(a1, a2, a3);

    if (v7)
    {
      sub_100260674();
    }
  }

  return result;
}

uint64_t sub_1001903FC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = swift_allocObject();
    swift_weakInit();

    sub_100444598(a2, sub_100184D94, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001904C4()
{
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

void *sub_100190574()
{
  v24 = &_swiftEmptySetSingleton;
  v23 = _swiftEmptyArrayStorage;
  v0 = sub_100184BE0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          break;
        }

        goto LABEL_12;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(v1 + 32 + 8 * v3);

      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        break;
      }

LABEL_12:
      v6 = v24;
      v7 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_place;
      v8 = [*(*(v4 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) _muid];
      if (*(v6 + 2))
      {
        v9 = v8;
        v10 = static Hasher._hash(seed:_:)();
        v11 = -1 << v6[32];
        v12 = v10 & ~v11;
        if ((*&v6[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12))
        {
          v13 = ~v11;
          while (*(*(v6 + 6) + 8 * v12) != v9)
          {
            v12 = (v12 + 1) & v13;
            if (((*&v6[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_5;
        }
      }

LABEL_17:
      v14 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:*(*(v4 + v7) + 56) isPlaceHolderPlace:0];
      if (v14)
      {
        v15 = v14;
        v16 = [objc_allocWithZone(SearchResult) initWithMapItem:v14];
        if (!v16)
        {

          goto LABEL_5;
        }

        v17 = v16;
        sub_100307530(&v22, [*(*(v4 + v7) + 56) _muid]);
        v18 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = v23;
        if (v3 == i)
        {
LABEL_22:

          v19 = v21;
          goto LABEL_27;
        }
      }

      else
      {
LABEL_5:

        if (v3 == i)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_27:

  return v19;
}