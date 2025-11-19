uint64_t sub_100A703A0()
{
  sub_10000630C(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate, v9);
  sub_1005B981C(&unk_101A0E8A0);
  type metadata accessor for CRLiOSMiniFormatterPresenter();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *&v8[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v3 topViewController];

      if (v4)
      {
        type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          v6 = *(v5 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
          v7 = v6;

          if (v6)
          {

            return 1;
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_100A704E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100A70634()
{
  v1 = *v0;
  if (*(*v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears) = 1;
  }

  else
  {
    sub_100020E58((v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24));
    sub_100721B14();
  }
}

void sub_100A7071C()
{
  v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter] = 0;
  if (v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears] == 1)
  {
    v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears] = 0;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_100A715C0;
    *(v3 + 24) = v2;
    v7[4] = sub_10002AAE4;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = *"";
    v7[2] = sub_10002AAB8;
    v7[3] = &unk_101893398;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 performWithoutAnimation:v4];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100A708A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders);
  if ((v1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_100A71534(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder);
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100035F90();
      return;
    }

    while (1)
    {

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLiOSMiniFormatterBuilder();
        swift_dynamicCast();
        v13 = v14;
        v11 = v4;
        v12 = v5;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_100A70A98()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 587;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "This method should never be called", 34, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:587 isFatal:0 format:v22 args:v19];

  return 0;
}

uint64_t sub_100A70E30()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24);
  StaticString.description.getter();
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v10;
  v11 = sub_1005CF04C();
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 582;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "This method should never be called", 34, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:582 isFatal:0 format:v22 args:v19];

  return 0;
}

void sub_100A711C8()
{
  v1 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100A712AC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) == 1)
    {
      *(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears) = 1;
    }

    else
    {
      sub_100020E58((a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(a1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24));
      sub_100721B14();
    }
  }
}

void *sub_100A71320(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay);
  v6 = [v5 arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v10 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v11 convertPoint:v5 fromCoordinateSpace:{a1, a2}];
      v24.x = v21;
      v24.y = v22;
      v25.origin.x = v14;
      v25.origin.y = v16;
      v25.size.width = v18;
      v25.size.height = v20;
      if (CGRectContainsPoint(v25, v24))
      {

        return v11;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_100A71534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100A71690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A716D8(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

Swift::Int sub_100A7176C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101491C40[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100A717F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101491C40[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100A71840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D438(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100A71884()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x737569646172;
  if (v1 != 3)
  {
    v4 = 0x7974696361706FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C676E61;
  if (v1 != 1)
  {
    v5 = 0x74657366666FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100A71958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A731C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A71998@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D438(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100A719FC(uint64_t a1)
{
  v2 = sub_100A72340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A71A38(uint64_t a1)
{
  v2 = sub_100A72340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A71A78(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0E930);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100A72340();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v32 = *(v2 + 32);
  v33 = v8;
  v10 = *(v2 + 48);
  v34 = *(v2 + 64);
  v11 = *(v2 + 16);
  v31[0] = *v2;
  v31[1] = v11;
  v12 = *(v2 + 64);
  v28 = v10;
  v29 = v12;
  v25 = v31[0];
  v35 = *(v2 + 80);
  v30 = *(v2 + 80);
  v26 = v9;
  v27 = v32;
  v24 = 0;
  sub_10074A990(v31, &v18);
  sub_1008B28D4();
  v13 = v36;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1008B2660(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1008B2660(&v18);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v2 + 104);
    v16 = 5;
    sub_100A738E4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v17 = *(v2 + 120);
    v16 = 6;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100A71DB4(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_100A71E00(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return sub_100A71A74(v13, v14) & 1;
}

double sub_100A71E74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100A73408(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_100A71EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A73938();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A71F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A73938();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A71F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074933C();
  v7 = sub_100A7398C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A71FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A73938();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100A720DC(uint64_t a1)
{
  v2 = sub_100A72478();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100A7212C()
{
  result = qword_101A0E8B8;
  if (!qword_101A0E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8B8);
  }

  return result;
}

unint64_t sub_100A72188()
{
  result = qword_101A0E8C0;
  if (!qword_101A0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8C0);
  }

  return result;
}

unint64_t sub_100A721E0()
{
  result = qword_101A0E8C8;
  if (!qword_101A0E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8C8);
  }

  return result;
}

unint64_t sub_100A72238()
{
  result = qword_101A0E8D0;
  if (!qword_101A0E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8D0);
  }

  return result;
}

unint64_t sub_100A72290()
{
  result = qword_101A0E8D8;
  if (!qword_101A0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8D8);
  }

  return result;
}

unint64_t sub_100A722E8()
{
  result = qword_101A0E8E0;
  if (!qword_101A0E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8E0);
  }

  return result;
}

unint64_t sub_100A72340()
{
  result = qword_101A0E8E8;
  if (!qword_101A0E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8E8);
  }

  return result;
}

unint64_t sub_100A72398()
{
  result = qword_101A0E8F0;
  if (!qword_101A0E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8F0);
  }

  return result;
}

unint64_t sub_100A723F0()
{
  result = qword_101A0E8F8;
  if (!qword_101A0E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E8F8);
  }

  return result;
}

unint64_t sub_100A72478()
{
  result = qword_101A0E910;
  if (!qword_101A0E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E910);
  }

  return result;
}

unint64_t sub_100A724D0()
{
  result = qword_101A0E918;
  if (!qword_101A0E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E918);
  }

  return result;
}

uint64_t sub_100A72524(void *a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A0E9C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100A73C64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[1] = a2;
    v11 = 1;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100A726BC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6576727563;
  }
}

uint64_t sub_100A726F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6576727563 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A72814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100A72880(uint64_t a1)
{
  v2 = sub_100A73C64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A728BC(uint64_t a1)
{
  v2 = sub_100A73C64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100A728F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100A73E48(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_100A72948(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A74024();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A7299C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A74024();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A729F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A73AFC();
  v7 = sub_100A74078();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A72A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A74024();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100A72B44(uint64_t a1)
{
  v2 = sub_100A73D9C();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100A72B90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v4;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v5 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v5;
  v6 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v6;
  v14[4] = *(a2 + 64);
  v15 = *(a2 + 80);
  v7 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v7;
  if ((sub_1008AFE44(v16, v14) & 1) == 0 || *(a1 + 88) != *(a2 + 88) || *(a1 + 92) != *(a2 + 92) || *(a1 + 96) != *(a2 + 96) || *(a1 + 100) != *(a2 + 100))
  {
    return 0;
  }

  v8 = *(a1 + 112);
  v9 = *(a2 + 112);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  if (COERCE_FLOAT(*(a1 + 104)) != COERCE_FLOAT(*(a2 + 104)))
  {
    return 0;
  }

  v10 = sub_100B3216C(v8, v9);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v11 = *(a1 + 120);
  v12 = *(a2 + 120);

  return sub_100B3216C(v11, v12);
}

float sub_100A72CD4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 angle];
  v5 = v4;
  [a1 offset];
  v7 = v6;
  [a1 radius];
  v9 = v8;
  [a1 opacity];
  v11 = v10;
  if (([a1 isEnabled] & 1) == 0)
  {
    v46 = objc_opt_self();
    v12 = [v46 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v47);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_1005CF000();
    *(inited + 96) = v21;
    v22 = sub_100A739E0(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 48;
    v24 = v47;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "If a shadow is not enabled, it should be nil", 44, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v46 handleFailureInFunction:v31 file:v32 lineNumber:48 isFatal:0 format:v33 args:v30];
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    [v34 curve];
    v36 = v35;

    *&v37 = v36;
    v38 = v37;
    v39 = _swiftEmptyDictionarySingleton;
  }

  else
  {

    v38 = 0;
    v39 = 0;
  }

  result = v11;
  v41 = v9;
  v42 = v7;
  v43 = v48[3];
  v44 = v5;
  *(a2 + 32) = v48[2];
  *(a2 + 48) = v43;
  *(a2 + 64) = v48[4];
  *(a2 + 80) = v49;
  v45 = v48[1];
  *a2 = v48[0];
  *(a2 + 16) = v45;
  *(a2 + 88) = v44;
  *(a2 + 92) = v42;
  *(a2 + 96) = v41;
  *(a2 + 100) = result;
  *(a2 + 104) = v38;
  *(a2 + 112) = v39;
  *(a2 + 120) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100A731C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001015850C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100A73408@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A0E920);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v55 = a1;
  sub_100020E58(a1, v9);
  sub_100A72340();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v55);
  }

  v42 = 0;
  sub_1008B287C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v49 = v43;
  v50 = v44;
  LOBYTE(v32[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v32[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v32[0]) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v32[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v25) = 5;
  sub_100A73828();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v32[0];
  sub_1005B981C(&unk_101A0D960);
  v40 = 6;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v19 = v41;
  v27 = v51;
  v28 = v52;
  v29 = v53;
  *&v30 = v54;
  v25 = v49;
  v26 = v50;
  *(&v30 + 1) = __PAIR64__(v13, v11);
  *v31 = __PAIR64__(v17, v15);
  *&v31[8] = v18;
  *&v31[24] = v41;
  sub_100A7387C(&v25, v32);
  sub_100005070(v55);
  v32[2] = v51;
  v32[3] = v52;
  v32[4] = v53;
  v33 = v54;
  v32[0] = v49;
  v32[1] = v50;
  v34 = v11;
  v35 = v13;
  v36 = v15;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  result = sub_100A738B4(v32);
  v21 = v30;
  a2[4] = v29;
  a2[5] = v21;
  v22 = *&v31[16];
  a2[6] = *v31;
  a2[7] = v22;
  v23 = v26;
  *a2 = v25;
  a2[1] = v23;
  v24 = v28;
  a2[2] = v27;
  a2[3] = v24;
  return result;
}

unint64_t sub_100A73828()
{
  result = qword_101A0E928;
  if (!qword_101A0E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E928);
  }

  return result;
}

unint64_t sub_100A738E4()
{
  result = qword_101A0E938;
  if (!qword_101A0E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E938);
  }

  return result;
}

unint64_t sub_100A73938()
{
  result = qword_101A0E940;
  if (!qword_101A0E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E940);
  }

  return result;
}

unint64_t sub_100A7398C()
{
  result = qword_101A0E948;
  if (!qword_101A0E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E948);
  }

  return result;
}

uint64_t sub_100A739E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A73A4C()
{
  result = qword_101A0E950;
  if (!qword_101A0E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E950);
  }

  return result;
}

unint64_t sub_100A73AA4()
{
  result = qword_101A0E958;
  if (!qword_101A0E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E958);
  }

  return result;
}

unint64_t sub_100A73AFC()
{
  result = qword_101A0E960;
  if (!qword_101A0E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E960);
  }

  return result;
}

unint64_t sub_100A73B5C()
{
  result = qword_101A0E968;
  if (!qword_101A0E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E968);
  }

  return result;
}

unint64_t sub_100A73BB4()
{
  result = qword_101A0E970;
  if (!qword_101A0E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E970);
  }

  return result;
}

unint64_t sub_100A73C0C()
{
  result = qword_101A0E978;
  if (!qword_101A0E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E978);
  }

  return result;
}

unint64_t sub_100A73C64()
{
  result = qword_101A0E980;
  if (!qword_101A0E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E980);
  }

  return result;
}

unint64_t sub_100A73CBC()
{
  result = qword_101A0E988;
  if (!qword_101A0E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E988);
  }

  return result;
}

unint64_t sub_100A73D14()
{
  result = qword_101A0E990;
  if (!qword_101A0E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E990);
  }

  return result;
}

unint64_t sub_100A73D9C()
{
  result = qword_101A0E9A8;
  if (!qword_101A0E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E9A8);
  }

  return result;
}

unint64_t sub_100A73DF4()
{
  result = qword_101A0E9B0;
  if (!qword_101A0E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E9B0);
  }

  return result;
}

void *sub_100A73E48(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0E9B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_100A73C64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    v11 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&unk_101A0D960);
    v10 = 1;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005070(a1);
  }

  return v7;
}

unint64_t sub_100A74024()
{
  result = qword_101A0E9C8;
  if (!qword_101A0E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E9C8);
  }

  return result;
}

unint64_t sub_100A74078()
{
  result = qword_101A0E9D0;
  if (!qword_101A0E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E9D0);
  }

  return result;
}

unint64_t sub_100A740E0()
{
  result = qword_101A0E9D8;
  if (!qword_101A0E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0E9D8);
  }

  return result;
}

uint64_t sub_100A74134(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v30 = *(v5 + 104);
  v30(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v1 + 16);
  v32 = 0;
  v33 = 0xE000000000000000;

  _StringGuts.grow(_:)(24);

  v32 = 0xD000000000000016;
  v33 = 0x8000000101585A20;
  v31 = a1;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = v32;
  v14 = v33;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v15 = sub_10001CC04(v11, v13, v14);

  if (v2)
  {
    return result;
  }

  v17 = *(*(v15 + 16) + 32);
  *v7 = v17;
  v30(v7, v9, v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = v29;
  v29(v7, v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);

  LODWORD(v21) = sub_10001CEC4(v20, v15);

  if (v21 != 101)
  {
    goto LABEL_7;
  }

  v21 = *(*(v15 + 16) + 32);
  *v7 = v21;
  v30(v7, v9, v4);
  v22 = v21;
  v9 = _dispatchPreconditionTest(_:)();
  v19(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    v24 = *(*(v15 + 16) + 32);
    *v7 = v24;
    v30(v7, v9, v4);
    v25 = v24;
    v26 = _dispatchPreconditionTest(_:)();
    v19(v7, v4);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v27 = *(v15 + 24);
  if (v27)
  {
    sqlite3_finalize(v27);
    *(v15 + 24) = 0;
  }
}

uint64_t sub_100A744DC(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v30 = *(v5 + 104);
  v30(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  v32 = 0;
  v33 = 0xE000000000000000;

  _StringGuts.grow(_:)(24);

  v32 = 0xD000000000000016;
  v33 = 0x8000000101585A20;
  v31 = a1;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = v32;
  v14 = v33;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v15 = sub_10001CC04(v11, v13, v14);

  if (v2)
  {
    return result;
  }

  v17 = *(*(v15 + 16) + 32);
  *v7 = v17;
  v30(v7, v9, v4);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = v29;
  v29(v7, v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);

  LODWORD(v21) = sub_10001CEC4(v20, v15);

  if (v21 != 101)
  {
    goto LABEL_7;
  }

  v21 = *(*(v15 + 16) + 32);
  *v7 = v21;
  v30(v7, v9, v4);
  v22 = v21;
  v9 = _dispatchPreconditionTest(_:)();
  v19(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();
    v24 = *(*(v15 + 16) + 32);
    *v7 = v24;
    v30(v7, v9, v4);
    v25 = v24;
    v26 = _dispatchPreconditionTest(_:)();
    v19(v7, v4);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v27 = *(v15 + 24);
  if (v27)
  {
    sqlite3_finalize(v27);
    *(v15 + 24) = 0;
  }
}

uint64_t sub_100A7489C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2;
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = *(v2 + 16);
    type metadata accessor for SQLTransaction();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    *(&v15 - 4) = __chkstk_darwin(inited);
    *(&v15 - 3) = a1;
    *(&v15 - 2) = a2;
    *(&v15 - 1) = &v16;
    swift_retain_n();
    v14 = sub_10002FD6C(sub_100A7AE28, (&v15 - 6));

    swift_setDeallocating();

    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A74A68(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_10003080C();
  if (v4)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if (swift_dynamicCast())
    {
      v9 = sub_10089A9BC(v20, v21, v22);
      v11 = v10;
    }

    else
    {
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v12;
    }

    v13 = *(a4 + 32);
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v15, "Failed transactional database operation with error %@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10089C46C();
    swift_willThrow();
  }

  else
  {
    v8 = a2(v7);
    if (v8)
    {
      sub_100034410();
      v16 = 1;
    }

    else
    {
      v18 = *(a4 + 32);
      v19 = static os_log_type_t.default.getter();
      sub_100005404(v18, &_mh_execute_header, v19, "The block of SQL code returned false. This means we should roll back the transaction", 84, 2, &_swiftEmptyArrayStorage);
      sub_10089C46C();
      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_100A74C6C(char a1, unint64_t a2, char *a3)
{
  v110 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 & 1;
  v113 = a1 & 1;
  v112 = v3;
  v12 = v3[3];
  *v10 = v12;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v31 = v110;
    v109 = v14;
    v35 = objc_opt_self();

    v107 = v35;
    LODWORD(v30) = [v35 _atomicIncrementAssertCount];
    v111[0] = [objc_allocWithZone(NSString) init];
    *&v108 = v10;
    sub_100604538(v10, v111);
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v42 = static OS_os_log.crlAssert;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v30;
      v44 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v44;
      v45 = sub_1005CF04C();
      *(inited + 72) = v36;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v31;
      *(inited + 104) = v45;
      *(inited + 112) = v39;
      *(inited + 120) = v41;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 152) = 211;
      v46 = v111[0];
      *(inited + 216) = v44;
      *(inited + 224) = v45;
      *(inited + 192) = v46;
      v47 = v36;
      v48 = v46;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v42, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v50 = static os_log_type_t.error.getter();
      v51 = v42;
      v52 = v108;
      sub_100005404(v51, &_mh_execute_header, v50, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2, v108);

      sub_10063DF98(v52, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v53 = swift_allocObject();
      v53[2] = 8;
      v53[3] = 0;
      v31 = v53 + 3;
      v53[4] = 0;
      v53[5] = 0;
      v39 = *(v52 + 16);
      if (!v39)
      {
        goto LABEL_71;
      }

      v41 = 0;
      while (1)
      {
        v54 = &v109[40 * v41];
        v36 = *(v54 + 3);
        LODWORD(v30) = sub_100020E58(v54, v36);
        v55 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v56 = *v31;
        v57 = *(v55 + 16);
        v58 = __OFADD__(*v31, v57);
        v59 = *v31 + v57;
        if (v58)
        {
          goto LABEL_61;
        }

        v36 = v55;
        v30 = v53[4];
        if (v30 >= v59)
        {
          goto LABEL_27;
        }

        if (v30 + 0x4000000000000000 < 0)
        {
          goto LABEL_62;
        }

        v60 = v53[5];
        if (2 * v30 > v59)
        {
          v59 = 2 * v30;
        }

        v53[4] = v59;
        if ((v59 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_63;
        }

        v29 = swift_slowAlloc();
        v53[5] = v29;
        if (v60)
        {
          if (v29 != v60 || v29 >= v60 + 8 * v56)
          {
            memmove(v29, v60, 8 * v56);
          }

          v30 = v53;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
          v29 = v53[5];
        }

        if (!v29)
        {
          __break(1u);
LABEL_69:
          swift_once();
          goto LABEL_36;
        }

        v62 = v36[2];
        if (v62)
        {
          break;
        }

LABEL_12:

        if (++v41 == v39)
        {
          goto LABEL_71;
        }
      }

      v63 = v36 + 4;
      v64 = *v31;
      while (1)
      {
        v65 = *v63++;
        *(v29 + 8 * v64) = v65;
        v64 = *v31 + 1;
        if (__OFADD__(*v31, 1))
        {
          break;
        }

        *v31 = v64;
        if (!--v62)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      v109 = v30;
      v66 = v29;
      v67 = objc_opt_self();

      v107 = v67;
      LODWORD(v30) = [v67 _atomicIncrementAssertCount];
      v111[0] = [objc_allocWithZone(NSString) init];
      *&v108 = v66;
      sub_100604538(v66, v111);
      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      v69 = [v68 lastPathComponent];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v70;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_69;
      }

LABEL_36:
      v71 = static OS_os_log.crlAssert;
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_10146CA70;
      *(v72 + 56) = &type metadata for Int32;
      *(v72 + 64) = &protocol witness table for Int32;
      *(v72 + 32) = v30;
      v73 = sub_100006370(0, &qword_1019F4D30);
      *(v72 + 96) = v73;
      v74 = sub_1005CF04C();
      *(v72 + 72) = v36;
      *(v72 + 136) = &type metadata for String;
      *(v72 + 144) = v31;
      *(v72 + 104) = v74;
      *(v72 + 112) = v39;
      *(v72 + 120) = v41;
      *(v72 + 176) = &type metadata for UInt;
      *(v72 + 184) = &protocol witness table for UInt;
      *(v72 + 152) = 230;
      v75 = v111[0];
      *(v72 + 216) = v73;
      *(v72 + 224) = v74;
      *(v72 + 192) = v75;
      v76 = v36;
      v77 = v75;
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v71, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);

      v79 = static os_log_type_t.error.getter();
      v80 = v71;
      v81 = v108;
      sub_100005404(v80, &_mh_execute_header, v79, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2, v108);

      sub_10063DF98(v81, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v82 = swift_allocObject();
      v82[2] = 8;
      v82[3] = 0;
      v31 = v82 + 3;
      v82[4] = 0;
      v82[5] = 0;
      v39 = *(v81 + 16);
      if (!v39)
      {
        while (1)
        {
LABEL_73:
          v101 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v97 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v98 = String._bridgeToObjectiveC()();

          [v107 handleFailureInFunction:v96 file:v97 lineNumber:230 isFatal:1 format:v98 args:v101];
LABEL_72:

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v99, v100);
          v103 = 0;
          v102 = 348;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v41 = 0;
      while (2)
      {
        v83 = &v109[40 * v41];
        v36 = *(v83 + 3);
        LODWORD(v30) = sub_100020E58(v83, v36);
        v84 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v85 = *v31;
        v86 = *(v84 + 16);
        v58 = __OFADD__(*v31, v86);
        v87 = *v31 + v86;
        if (v58)
        {
          goto LABEL_64;
        }

        v36 = v84;
        v30 = v82[4];
        if (v30 >= v87)
        {
LABEL_53:
          v89 = v82[5];
        }

        else
        {
          if (v30 + 0x4000000000000000 < 0)
          {
            goto LABEL_65;
          }

          v88 = v82[5];
          if (2 * v30 > v87)
          {
            v87 = 2 * v30;
          }

          v82[4] = v87;
          if ((v87 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_66;
          }

          v89 = swift_slowAlloc();
          v82[5] = v89;
          if (v88)
          {
            if (v89 != v88 || v89 >= &v88[8 * v85])
            {
              memmove(v89, v88, 8 * v85);
            }

            LODWORD(v30) = v82;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_53;
          }
        }

        if (!v89)
        {
          __break(1u);
LABEL_71:
          v95 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v97 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v98 = String._bridgeToObjectiveC()();

          [v107 handleFailureInFunction:v96 file:v97 lineNumber:211 isFatal:1 format:v98 args:v95];
          goto LABEL_72;
        }

        v91 = v36[2];
        if (!v91)
        {
LABEL_38:

          if (++v41 == v39)
          {
            goto LABEL_73;
          }

          continue;
        }

        break;
      }

      v92 = v36 + 4;
      v93 = *v31;
      while (1)
      {
        v94 = *v92++;
        *&v89[8 * v93] = v94;
        v93 = *v31 + 1;
        if (__OFADD__(*v31, 1))
        {
          break;
        }

        *v31 = v93;
        if (!--v91)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      swift_once();
    }
  }

  v109 = a3;
  v15 = v3[4];
  v16 = sub_1005B981C(&qword_1019F54E0);
  v17 = swift_initStackObject();
  v108 = xmmword_10146C6B0;
  *(v17 + 16) = xmmword_10146C6B0;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v11;
  v18 = v15;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v19, "Migrating database to schema version %{public}d", 47, 2, v17);

  swift_setDeallocating();
  sub_100005070(v17 + 32);
  result = sub_10001D824();
  if (v4)
  {
    return result;
  }

  v21 = result;
  v104 = v18;
  v106 = v16;
  v107 = 0;
  v10 = swift_initStackObject();
  *(v10 + 1) = xmmword_10146D2A0;
  *(v10 + 4) = v21 & 1;
  v14 = (v10 + 32);
  *(v10 + 7) = &type metadata for Int;
  *(v10 + 8) = &protocol witness table for Int;
  *(v10 + 12) = &type metadata for Int;
  *(v10 + 13) = &protocol witness table for Int;
  v22 = v110 & 1;
  *(v10 + 9) = v110 & 1;
  *(v10 + 17) = &type metadata for Int;
  *(v10 + 18) = &protocol witness table for Int;
  *(v10 + 14) = v11;
  v24 = v3[5];
  v23 = v3[6];
  *(v10 + 22) = &type metadata for String;
  v110 = sub_1000053B0();
  *(v10 + 23) = v110;
  v105 = v24;
  *(v10 + 19) = v24;
  *(v10 + 20) = v23;
  v25 = v23;
  if ((v21 & 1) != v22)
  {
    goto LABEL_9;
  }

  swift_setDeallocating();

  sub_1005B981C(&unk_1019F5670);
  v26 = swift_arrayDestroy();
  __chkstk_darwin(v26);
  *(&v104 - 4) = v109;
  *(&v104 - 3) = &v112;
  v102 = &v113;
  v27 = v107;
  result = sub_100A7489C(sub_100A7B458, (&v104 - 6));
  if (!v27)
  {
    v28 = sub_10001D824();
    v107 = 0;
    v29 = swift_initStackObject();
    v109 = (v28 & 1);
    *(v29 + 32) = v109;
    v30 = v29 + 32;
    *(v29 + 16) = xmmword_10146C4D0;
    *(v29 + 56) = &type metadata for Int;
    *(v29 + 64) = &protocol witness table for Int;
    *(v29 + 72) = v11;
    *(v29 + 96) = &type metadata for Int;
    *(v29 + 104) = &protocol witness table for Int;
    v31 = v110;
    *(v29 + 136) = &type metadata for String;
    *(v29 + 144) = v31;
    *(v29 + 112) = v105;
    *(v29 + 120) = v25;
    if ((v28 & 1) != v11)
    {
      goto LABEL_35;
    }

    swift_setDeallocating();

    swift_arrayDestroy();
    v32 = swift_initStackObject();
    *(v32 + 16) = v108;
    *(v32 + 56) = &type metadata for Int;
    *(v32 + 64) = &protocol witness table for Int;
    *(v32 + 32) = v109;
    v33 = v104;
    v34 = static os_log_type_t.default.getter();
    sub_100005404(v33, &_mh_execute_header, v34, "Successfully migrated database to schema version %{public}d", 59, 2, v32);

    swift_setDeallocating();
    return sub_100005070(v32 + 32);
  }

  return result;
}

uint64_t sub_100A759A0(uint64_t a1, char *a2, char *a3)
{
  v110 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a1;
  v112 = v3;
  v11 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    v35 = v105;
    v110 = a3;
    v36 = objc_opt_self();

    *&v108 = v36;
    LODWORD(v29) = [v36 _atomicIncrementAssertCount];
    v111[0] = [objc_allocWithZone(NSString) init];
    v109 = v10;
    sub_100604538(v10, v111);
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v43 = static OS_os_log.crlAssert;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v29;
      v45 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v45;
      v46 = sub_1005CF04C();
      *(inited + 72) = v37;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v35;
      *(inited + 104) = v46;
      *(inited + 112) = v40;
      *(inited + 120) = v42;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 152) = 211;
      v47 = v111[0];
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = v47;
      v48 = v37;
      v49 = v47;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v51 = static os_log_type_t.error.getter();
      v52 = v109;
      sub_100005404(v43, &_mh_execute_header, v51, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database", 129, 2, v109);

      sub_10063DF98(v52, "Current schema version %{public}d doesn't match expected version %{public}d before migration to %{public}d in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v53 = swift_allocObject();
      v53[2] = 8;
      v53[3] = 0;
      v35 = v53 + 3;
      v53[4] = 0;
      v53[5] = 0;
      v40 = *(v52 + 2);
      if (!v40)
      {
        goto LABEL_71;
      }

      v42 = 0;
      while (1)
      {
        v54 = &v110[40 * v42];
        v37 = *(v54 + 3);
        LODWORD(v29) = sub_100020E58(v54, v37);
        v55 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v56 = *v35;
        v57 = *(v55 + 16);
        v58 = __OFADD__(*v35, v57);
        v59 = *v35 + v57;
        if (v58)
        {
          goto LABEL_61;
        }

        v37 = v55;
        v29 = v53[4];
        if (v29 >= v59)
        {
          goto LABEL_27;
        }

        if (v29 + 0x4000000000000000 < 0)
        {
          goto LABEL_62;
        }

        v60 = v53[5];
        if (2 * v29 > v59)
        {
          v59 = 2 * v29;
        }

        v53[4] = v59;
        if ((v59 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_63;
        }

        v28 = swift_slowAlloc();
        v53[5] = v28;
        if (v60)
        {
          if (v28 != v60 || v28 >= v60 + 8 * v56)
          {
            memmove(v28, v60, 8 * v56);
          }

          v29 = v53;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_27:
          v28 = v53[5];
        }

        if (!v28)
        {
          __break(1u);
LABEL_69:
          swift_once();
          goto LABEL_36;
        }

        v62 = v37[2];
        if (v62)
        {
          break;
        }

LABEL_12:

        if (++v42 == v40)
        {
          goto LABEL_71;
        }
      }

      v63 = v37 + 4;
      v30 = *v35;
      while (1)
      {
        v64 = *v63++;
        *(v28 + 8 * v30) = v64;
        v30 = *v35 + 1;
        if (__OFADD__(*v35, 1))
        {
          break;
        }

        *v35 = v30;
        if (!--v62)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      v110 = v29;
      v35 = v30;
      v65 = v28;
      v66 = objc_opt_self();

      *&v108 = v66;
      LODWORD(v29) = [v66 _atomicIncrementAssertCount];
      v111[0] = [objc_allocWithZone(NSString) init];
      v109 = v65;
      sub_100604538(v65, v111);
      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      v68 = [v67 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v69;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_69;
      }

LABEL_36:
      v70 = static OS_os_log.crlAssert;
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_10146CA70;
      *(v71 + 56) = &type metadata for Int32;
      *(v71 + 64) = &protocol witness table for Int32;
      *(v71 + 32) = v29;
      v72 = sub_100006370(0, &qword_1019F4D30);
      *(v71 + 96) = v72;
      v73 = sub_1005CF04C();
      *(v71 + 72) = v37;
      *(v71 + 136) = &type metadata for String;
      *(v71 + 144) = v35;
      *(v71 + 104) = v73;
      *(v71 + 112) = v40;
      *(v71 + 120) = v42;
      *(v71 + 176) = &type metadata for UInt;
      *(v71 + 184) = &protocol witness table for UInt;
      *(v71 + 152) = 230;
      v74 = v111[0];
      *(v71 + 216) = v72;
      *(v71 + 224) = v73;
      *(v71 + 192) = v74;
      v75 = v37;
      v76 = v74;
      v77 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);

      v78 = static os_log_type_t.error.getter();
      v79 = v109;
      sub_100005404(v70, &_mh_execute_header, v78, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database", 121, 2, v109);

      sub_10063DF98(v79, "Queried schema version %{public}d does not match expected (%{public}d) after migration transaction in %{public}@ database");
      type metadata accessor for __VaListBuilder();
      v80 = swift_allocObject();
      v80[2] = 8;
      v80[3] = 0;
      v35 = v80 + 3;
      v80[4] = 0;
      v80[5] = 0;
      v40 = *(v79 + 2);
      if (!v40)
      {
        while (1)
        {
LABEL_73:
          v99 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          [v108 handleFailureInFunction:v94 file:v95 lineNumber:230 isFatal:1 format:v96 args:v99];
LABEL_72:

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v97, v98);
          v101 = 0;
          v100 = 348;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v42 = 0;
      while (2)
      {
        v81 = &v110[40 * v42];
        v37 = *(v81 + 3);
        LODWORD(v29) = sub_100020E58(v81, v37);
        v82 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v83 = *v35;
        v84 = *(v82 + 16);
        v58 = __OFADD__(*v35, v84);
        v85 = *v35 + v84;
        if (v58)
        {
          goto LABEL_64;
        }

        v37 = v82;
        v29 = v80[4];
        if (v29 >= v85)
        {
LABEL_53:
          v87 = v80[5];
        }

        else
        {
          if (v29 + 0x4000000000000000 < 0)
          {
            goto LABEL_65;
          }

          v86 = v80[5];
          if (2 * v29 > v85)
          {
            v85 = 2 * v29;
          }

          v80[4] = v85;
          if ((v85 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_66;
          }

          v87 = swift_slowAlloc();
          v80[5] = v87;
          if (v86)
          {
            if (v87 != v86 || v87 >= &v86[8 * v83])
            {
              memmove(v87, v86, 8 * v83);
            }

            LODWORD(v29) = v80;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_53;
          }
        }

        if (!v87)
        {
          __break(1u);
LABEL_71:
          v93 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v96 = String._bridgeToObjectiveC()();

          [v108 handleFailureInFunction:v94 file:v95 lineNumber:211 isFatal:1 format:v96 args:v93];
          goto LABEL_72;
        }

        v89 = v37[2];
        if (!v89)
        {
LABEL_38:

          if (++v42 == v40)
          {
            goto LABEL_73;
          }

          continue;
        }

        break;
      }

      v90 = v37 + 4;
      v91 = *v35;
      while (1)
      {
        v92 = *v90++;
        *&v87[8 * v91] = v92;
        v91 = *v35 + 1;
        if (__OFADD__(*v35, 1))
        {
          break;
        }

        *v35 = v91;
        if (!--v89)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      swift_once();
    }
  }

  v109 = a3;
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_logCategory);
  v14 = sub_1005B981C(&qword_1019F54E0);
  v15 = swift_initStackObject();
  v108 = xmmword_10146C6B0;
  *(v15 + 16) = xmmword_10146C6B0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  v16 = a1;
  *(v15 + 32) = a1;
  v17 = v13;
  v18 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v18, "Migrating database to schema version %{public}d", 47, 2, v15);

  swift_setDeallocating();
  sub_100005070(v15 + 32);
  result = sub_100022484();
  if (v4)
  {
    return result;
  }

  v20 = result;
  v102 = v17;
  v104 = a1;
  v106 = v14;
  v107 = 0;
  v10 = swift_initStackObject();
  *(v10 + 1) = xmmword_10146D2A0;
  *(v10 + 4) = v20;
  a3 = v10 + 32;
  *(v10 + 7) = &type metadata for Int;
  v113 = v20;
  *(v10 + 12) = &type metadata for Int;
  *(v10 + 13) = &protocol witness table for Int;
  v21 = v110;
  v22 = v110;
  *(v10 + 8) = &protocol witness table for Int;
  *(v10 + 9) = v22;
  *(v10 + 17) = &type metadata for Int;
  *(v10 + 18) = &protocol witness table for Int;
  *(v10 + 14) = v16;
  v24 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName);
  v23 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_storeName + 8);
  *(v10 + 22) = &type metadata for String;
  v105 = sub_1000053B0();
  *(v10 + 23) = v105;
  v103 = v24;
  *(v10 + 19) = v24;
  *(v10 + 20) = v23;
  if (v113 != v21)
  {
    goto LABEL_9;
  }

  swift_setDeallocating();

  sub_1005B981C(&unk_1019F5670);
  v25 = swift_arrayDestroy();
  __chkstk_darwin(v25);
  *(&v102 - 4) = v109;
  *(&v102 - 3) = &v112;
  v100 = &v114;
  v26 = v107;
  result = sub_10002FA9C(sub_100A7B494, (&v102 - 6));
  if (!v26)
  {
    v27 = sub_100022484();
    v107 = 0;
    v28 = swift_initStackObject();
    *(v28 + 32) = v27;
    v29 = v28 + 32;
    *(v28 + 16) = xmmword_10146C4D0;
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 96) = &type metadata for Int;
    *(v28 + 104) = &protocol witness table for Int;
    *(v28 + 72) = v16;
    v30 = v105;
    *(v28 + 136) = &type metadata for String;
    *(v28 + 144) = v30;
    v31 = v104;
    *(v28 + 112) = v103;
    *(v28 + 120) = v23;
    if (v27 != v31)
    {
      goto LABEL_35;
    }

    swift_setDeallocating();

    swift_arrayDestroy();
    v32 = swift_initStackObject();
    *(v32 + 16) = v108;
    *(v32 + 56) = &type metadata for Int;
    *(v32 + 64) = &protocol witness table for Int;
    *(v32 + 32) = v27;
    v33 = v102;
    v34 = static os_log_type_t.default.getter();
    sub_100005404(v33, &_mh_execute_header, v34, "Successfully migrated database to schema version %{public}d", 59, 2, v32);

    swift_setDeallocating();
    return sub_100005070(v32 + 32);
  }

  return result;
}

uint64_t sub_100A76704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = type metadata accessor for DispatchPredicate();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v47 = enum case for DispatchPredicate.onQueue(_:);
  if (!v11)
  {
    v30 = *(v8 + 104);
    goto LABEL_16;
  }

  v41 = v8;
  v42 = a3;
  v12 = v8 + 104;
  v46 = (v8 + 8);
  v43 = type metadata accessor for SQLiteStatement();
  v13 = (a1 + 40);
  v45 = v12;
  v40 = v12 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  while (1)
  {
    v15 = *(v13 - 1);
    v14 = *v13;
    swift_initStackObject();

    v17 = sub_10001CC04(v16, v15, v14);

    if (v4)
    {
      return 1;
    }

    v18 = a2;
    v19 = *(*(v17 + 16) + 32);
    *v10 = v19;
    v20 = v48;
    v44 = *v45;
    v44(v10, v47, v48);
    v21 = v19;
    v22 = _dispatchPreconditionTest(_:)();
    v23 = *v46;
    (*v46)(v10, v20);
    if ((v22 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v24 = *(v17 + 16);

    v25 = sub_10001CEC4(v24, v17);

    if (v25 != 101)
    {
      break;
    }

    v26 = *(*(v17 + 16) + 32);
    *v10 = v26;
    v27 = v48;
    v44(v10, v47, v48);
    v28 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    v23(v10, v27);
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v29 = *(v17 + 24);
    if (v29)
    {
      sqlite3_finalize(v29);
      *(v17 + 24) = 0;
    }

    v13 += 2;
    --v11;
    a2 = v18;
    if (!v11)
    {
      v8 = v41;
      LOBYTE(a3) = v42;
      v30 = v44;
LABEL_16:
      v36 = *(a2 + 24);
      *v10 = v36;
      v37 = v48;
      v30(v10, v47, v48);
      v38 = v36;
      LOBYTE(v36) = _dispatchPreconditionTest(_:)();
      (*(v8 + 8))(v10, v37);
      if (v36)
      {
        sub_100A74134(a3 & 1);
        return 1;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  sub_10089C7D0();
  swift_allocError();
  *v31 = v25;
  *(v31 + 8) = 0xD000000000000020;
  *(v31 + 16) = 0x80000001015859F0;
  swift_willThrow();
  v32 = *(*(v17 + 16) + 32);
  *v10 = v32;
  v33 = v48;
  v44(v10, v47, v48);
  v34 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v23(v10, v33);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v35 = *(v17 + 24);
  if (v35)
  {
    sqlite3_finalize(v35);
    *(v17 + 24) = 0;
  }

  return 1;
}

uint64_t sub_100A76B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = type metadata accessor for DispatchPredicate();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v48 = enum case for DispatchPredicate.onQueue(_:);
  if (!v11)
  {
    v30 = *(v8 + 104);
    goto LABEL_16;
  }

  v42 = a3;
  v44 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database;
  v12 = v8 + 104;
  v41 = v8;
  v47 = (v8 + 8);
  v43 = type metadata accessor for SQLiteStatement();
  v13 = (a1 + 40);
  v46 = v12;
  v40 = v12 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  while (1)
  {
    v15 = *(v13 - 1);
    v14 = *v13;
    swift_initStackObject();

    v17 = sub_10001CC04(v16, v15, v14);

    if (v4)
    {
      return 1;
    }

    v18 = a2;
    v19 = *(*(v17 + 16) + 32);
    *v10 = v19;
    v20 = v49;
    v45 = *v46;
    v45(v10, v48, v49);
    v21 = v19;
    v22 = _dispatchPreconditionTest(_:)();
    v23 = *v47;
    (*v47)(v10, v20);
    if ((v22 & 1) == 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v24 = *(v17 + 16);

    v25 = sub_10001CEC4(v24, v17);

    if (v25 != 101)
    {
      break;
    }

    v26 = *(*(v17 + 16) + 32);
    *v10 = v26;
    v27 = v49;
    v45(v10, v48, v49);
    v28 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    v23(v10, v27);
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v29 = *(v17 + 24);
    if (v29)
    {
      sqlite3_finalize(v29);
      *(v17 + 24) = 0;
    }

    v13 += 2;
    --v11;
    a2 = v18;
    if (!v11)
    {
      v8 = v41;
      LOBYTE(a3) = v42;
      v30 = v45;
LABEL_16:
      v36 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
      *v10 = v36;
      v37 = v49;
      v30(v10, v48, v49);
      v38 = v36;
      LOBYTE(v36) = _dispatchPreconditionTest(_:)();
      (*(v8 + 8))(v10, v37);
      if (v36)
      {
        sub_100A744DC(a3);
        return 1;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  sub_10089C7D0();
  swift_allocError();
  *v31 = v25;
  *(v31 + 8) = 0xD000000000000020;
  *(v31 + 16) = 0x80000001015859F0;
  swift_willThrow();
  v32 = *(*(v17 + 16) + 32);
  *v10 = v32;
  v33 = v49;
  v45(v10, v48, v49);
  v34 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v23(v10, v33);
  if ((v32 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v35 = *(v17 + 24);
  if (v35)
  {
    sqlite3_finalize(v35);
    *(v17 + 24) = 0;
  }

  return 1;
}

uint64_t sub_100A76F6C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = a1 & 1;
    if (a1)
    {
      if (v10 != 1)
      {
        v11 = *(v1 + 32);
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 56) = &type metadata for Int;
        *(inited + 64) = &protocol witness table for Int;
        *(inited + 32) = a1 & 1;
        v13 = static os_log_type_t.error.getter();
        sub_100005404(v11, &_mh_execute_header, v13, "Received invalid currentSchema during _migrateSchema: %{public}d", 64, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        sub_100A7B404();
        swift_allocError();
        *v14 = a1 & 1;
        return swift_willThrow();
      }
    }

    else
    {
      v15 = sub_100A77200(1);
      v17 = v16;
      sub_1005B981C(&unk_1019F61D0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_10146C6B0;
      *(v18 + 32) = v15;
      v19 = v18 + 32;
      *(v18 + 40) = v17;
      sub_100A74C6C(1, v10, v18);
      swift_setDeallocating();
      return sub_100874FB4(v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100A77200(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0xD000000000000015;
  }

  _StringGuts.grow(_:)(112);
  v1._countAndFlagsBits = 0x5420455441455243;
  v1._object = 0xED000020454C4241;
  String.append(_:)(v1);
  v2._object = 0x8000000101585340;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._object = 0x8000000101585360;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0x8000000101585A40;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x6E6F6973726576;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x8000000101585A60;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x7265746E756F63;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v9._object = 0x8000000101585A90;
  String.append(_:)(v9);
  return 0;
}

Swift::Int sub_100A773DC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A77484()
{
  type metadata accessor for UUID();
  sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_100A77528()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100A775CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20))))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A77678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_beginAccess();
  v12 = *(v3 + 56);
  if (!*(v12 + 16))
  {
    goto LABEL_7;
  }

  v13 = sub_1000486F0(a1);
  if ((v14 & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v16 = __OFADD__(v15, a2);
  a2 += v15;
  if (v16)
  {
    __break(1u);
LABEL_7:
    swift_endAccess();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  sub_100A9FE48(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 56) = v27;
  swift_endAccess();
  if (qword_1019F22D8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v18 = static OS_os_log.sideStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;

  sub_100A7A104(v20);

  type metadata accessor for CRLBoardIdentifier(0);
  sub_10001A844(&qword_101A01D20, 255, type metadata accessor for CRLBoardIdentifier);
  v21 = Dictionary.description.getter();
  v23 = v22;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v24 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v24, "In-memory boardLoadMarksCache: %{public}@", 41, 2, inited);
  swift_setDeallocating();
  return sub_100005070(inited + 32);
}

unint64_t sub_100A77988(uint64_t a1, int a2)
{
  v4 = v2;
  v75 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 24);
  *v9 = v10;
  v11 = *(v7 + 104);
  v78 = enum case for DispatchPredicate.onQueue(_:);
  v76 = v11;
  v11(v9);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v7 + 8);
  (v13)(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2)
  {
    v77 = v7 + 104;
    v74 = v13;
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v14._countAndFlagsBits = 0x4144505520202020;
    v14._object = 0xEB00000000204554;
    String.append(_:)(v14);
    v15._object = 0x8000000101585340;
    v15._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x5445532020202020;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x7265746E756F63;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 2112800;
    v18._object = 0xE300000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x7265746E756F63;
    v19._object = 0xE700000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x202020203F202B20;
    v20._object = 0xEF20455245485720;
    String.append(_:)(v20);
    v21._object = 0x8000000101585360;
    v21._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x3F203D3D20;
    v22._object = 0xE500000000000000;
    String.append(_:)(v22);
    LOBYTE(v13) = v3;
    v23 = v79;
    v24 = v80;
    v25 = *(v4 + 16);
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v4 = sub_10001CC04(v26, v23, v24);

    if (!v3)
    {
      v27 = *(*(v4 + 16) + 32);
      *v9 = v27;
      v13 = v76;
      (v76)(v9, v78, v6);
      v28 = v27;
      LOBYTE(v27) = _dispatchPreconditionTest(_:)();
      v74(v9, v6);
      if (v27)
      {
        swift_beginAccess();
        sqlite3_bind_int(*(v4 + 24), 1, a2);
        type metadata accessor for CRLBoardIdentifierStorage(0);
        v29 = sub_10084DAE4();
        v73 = 0;
        v72 = v30;
        v31 = v29;
        v32 = *(*(v4 + 16) + 32);
        *v9 = v32;
        (v13)(v9, v78, v6);
        v33 = v32;
        LOBYTE(v32) = _dispatchPreconditionTest(_:)();
        v34 = v74;
        v74(v9, v6);
        if (v32)
        {

          v35 = v31;
          v36 = v31;
          v37 = v72;
          v38 = v73;
          sub_100DCCAB4(v36, v72, v4, 2);
          v73 = v38;
          sub_10002640C(v35, v37);
          v39 = *(*(v4 + 16) + 32);
          *v9 = v39;
          (v13)(v9, v78, v6);
          v40 = v39;
          LOBYTE(v39) = _dispatchPreconditionTest(_:)();
          v34(v9, v6);
          if (v39)
          {
            v41 = *(v4 + 16);

            v42 = v41;
            v43 = v73;
            v44 = sub_10001CEC4(v42, v4);

            if (v44 != 101)
            {
              sub_10089C7D0();
              swift_allocError();
              *v57 = v44;
              *(v57 + 8) = 0;
              *(v57 + 16) = 0;
              swift_willThrow();
              v58 = *(*(v4 + 16) + 32);
              *v9 = v58;
              (v13)(v9, v78, v6);
              v59 = v58;
              LOBYTE(v58) = _dispatchPreconditionTest(_:)();
              v34(v9, v6);
              if (v58)
              {
                v60 = *(v4 + 24);
                if (v60)
                {
                  sqlite3_finalize(v60);
                  *(v4 + 24) = 0;
                }

                goto LABEL_19;
              }

              goto LABEL_35;
            }

            v45 = *(v25 + 32);
            *v9 = v45;
            v46 = v13;
            v13 = v78;
            v46(v9, v78, v6);
            v47 = v45;
            LOBYTE(v45) = _dispatchPreconditionTest(_:)();
            v34(v9, v6);
            if (v45)
            {
              swift_beginAccess();
              v48 = sqlite3_changes64(*(v25 + 16));
              if (v48 == 1)
              {
                v62 = *(*(v4 + 16) + 32);
                *v9 = v62;
                (v76)(v9, v13, v6);
                v63 = v62;
                LOBYTE(v62) = _dispatchPreconditionTest(_:)();
                v74(v9, v6);
                if (v62)
                {
                  v56 = *(v4 + 24);
                  LOBYTE(v13) = 1;
                  if (v56)
                  {
LABEL_28:
                    sqlite3_finalize(v56);
                    *(v4 + 24) = 0;
                  }

LABEL_19:

                  return v13 & 1;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v73 = v43;
              if (v48)
              {
                v13 = v76;
                if (qword_1019F22D8 == -1)
                {
LABEL_25:
                  v72 = static OS_os_log.sideStore;
                  sub_1005B981C(&qword_1019F54E0);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_10146C6B0;
                  v65 = sub_10084B8C8();
                  v67 = v66;
                  *(inited + 56) = &type metadata for String;
                  *(inited + 64) = sub_1000053B0();
                  *(inited + 32) = v65;
                  *(inited + 40) = v67;
                  v68 = static os_log_type_t.error.getter();
                  sub_100005404(v72, &_mh_execute_header, v68, "Update to board load mark completed, but touched many rows for board id: %{public}@", 83, 2, inited);
                  swift_setDeallocating();
                  sub_100005070(inited + 32);
                  v69 = *(*(v4 + 16) + 32);
                  *v9 = v69;
                  (v13)(v9, v78, v6);
                  v70 = v69;
                  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
                  v74(v9, v6);
                  if ((v69 & 1) == 0)
                  {
                    __break(1u);
                  }

                  v56 = *(v4 + 24);
                  LOBYTE(v13) = 1;
LABEL_27:
                  if (v56)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_19;
                }

LABEL_39:
                swift_once();
                goto LABEL_25;
              }

              v13 = v76;
              if (qword_1019F22D8 == -1)
              {
LABEL_14:
                v72 = static OS_os_log.sideStore;
                sub_1005B981C(&qword_1019F54E0);
                v49 = swift_initStackObject();
                *(v49 + 16) = xmmword_10146C6B0;
                v50 = sub_10084B8C8();
                v52 = v51;
                *(v49 + 56) = &type metadata for String;
                *(v49 + 64) = sub_1000053B0();
                *(v49 + 32) = v50;
                *(v49 + 40) = v52;
                v53 = static os_log_type_t.error.getter();
                sub_100005404(v72, &_mh_execute_header, v53, "Attempted to update board load mark, but row didn't exist for board with id: %{public}@", 87, 2, v49);
                swift_setDeallocating();
                sub_100005070(v49 + 32);
                v54 = *(*(v4 + 16) + 32);
                *v9 = v54;
                (v13)(v9, v78, v6);
                v55 = v54;
                LOBYTE(v54) = _dispatchPreconditionTest(_:)();
                v74(v9, v6);
                if (v54)
                {
                  LOBYTE(v13) = 0;
                  v56 = *(v4 + 24);
                  goto LABEL_27;
                }

                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              swift_once();
              goto LABEL_14;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_100A78348()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v6 = sub_10001CC04(v5, 0xD000000000000024, 0x8000000101585BF0);
  if (!v0)
  {
    v7 = v6;

    v8 = *(*(v7 + 16) + 32);
    *v4 = v8;
    v9 = enum case for DispatchPredicate.onQueue(_:);
    v10 = *(v2 + 104);
    v10(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v11 = v8;
    LOBYTE(v8) = _dispatchPreconditionTest(_:)();
    v31 = *(v2 + 8);
    v31(v4, v1);
    if ((v8 & 1) == 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    v12 = *(v7 + 16);

    v13 = sub_10001CEC4(v12, v7);

    if (v13 == 101)
    {
      v14 = *(*(v7 + 16) + 32);
      *v4 = v14;
      v10(v4, v9, v1);
      v15 = v14;
      v16 = _dispatchPreconditionTest(_:)();
      v31(v4, v1);
      if (v16)
      {
        swift_beginAccess();
        v17 = *(v7 + 24);
        if (v17)
        {
          sqlite3_finalize(v17);
          *(v7 + 24) = 0;
        }
      }

      goto LABEL_15;
    }

    sub_10089C7D0();
    swift_allocError();
    *v19 = v13;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    swift_willThrow();
    v20 = *(*(v7 + 16) + 32);
    *v4 = v20;
    v10(v4, v9, v1);
    v21 = v20;
    v22 = _dispatchPreconditionTest(_:)();
    v31(v4, v1);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    v23 = *(v7 + 24);
    if (v23)
    {
      sqlite3_finalize(v23);
      *(v7 + 24) = 0;
    }
  }

  if (qword_1019F22D8 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.sideStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v26 = Error.localizedDescription.getter();
  v28 = v27;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v26;
  *(inited + 40) = v28;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v29, "Failed to _clearAllBoardLoadMarks with error %@", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return swift_willThrow();
}

uint64_t sub_100A78764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1019F22D8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v12 = static OS_os_log.sideStore;
  v21[0] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v14 = UUID.uuidString.getter();
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 64) = v17;
  *(inited + 72) = a2;
  v18 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v18, "markBoardLoad for board %{public}@ by amount %{public}d", 55, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  v19 = swift_arrayDestroy();
  __chkstk_darwin(v19);
  v21[-4] = v3;
  v21[-3] = a1;
  v21[-2] = a2;
  sub_100A7489C(sub_100A7A068, &v21[-6]);
  return 0;
}

uint64_t sub_100A78AD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10001FF1C();
  result = sub_100A7AE88(a2);
  if (v3)
  {
    return 1;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    sub_100A77988(a2, a3);
    sub_100A77678(a2, a3);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A78B64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A78BBC(uint64_t a1, uint64_t a2)
{
  result = sub_10001A844(&qword_101A0EAA0, a2, type metadata accessor for CRLSideStore);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A78C18()
{
  result = qword_101A0EAA8;
  if (!qword_101A0EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EAA8);
  }

  return result;
}

unint64_t sub_100A78C6C()
{
  result = qword_101A0EAB0;
  if (!qword_101A0EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EAB0);
  }

  return result;
}

unint64_t sub_100A78CC0(uint64_t a1)
{
  result = sub_100A78CE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A78CE8()
{
  result = qword_101A0EB00;
  if (!qword_101A0EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EB00);
  }

  return result;
}

unint64_t sub_100A78D80(void *a1)
{
  a1[1] = sub_100A78DB8();
  a1[2] = sub_100A78E0C();
  result = sub_100A78E60();
  a1[3] = result;
  return result;
}

unint64_t sub_100A78DB8()
{
  result = qword_101A0EB18;
  if (!qword_101A0EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EB18);
  }

  return result;
}

unint64_t sub_100A78E0C()
{
  result = qword_101A0EB20;
  if (!qword_101A0EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EB20);
  }

  return result;
}

unint64_t sub_100A78E60()
{
  result = qword_101A0EB28;
  if (!qword_101A0EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EB28);
  }

  return result;
}

unint64_t sub_100A78EB4()
{
  result = qword_101A0EB30;
  if (!qword_101A0EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EB30);
  }

  return result;
}

uint64_t sub_100A78F6C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 16);
  v8 = *(v7 + 32);
  *v6 = v8;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {

    sub_10089CCDC(v11, v7);

    result = swift_beginAccess();
    *(v7 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A790B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_100A78764(a1, 1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100A79100(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v17[1] = *(v1 + 24);
  sub_10000C69C(a1, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1000253F8(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CRLBoardIdentifier);
  aBlock[4] = sub_100A79494;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101893698;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001A844(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v18);
}

uint64_t sub_100A79494()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = sub_100A78764(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)), -1);
  v4 = v3 & 1;

  return sub_1007987E8(v2, v4);
}

uint64_t sub_100A79530(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 24);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10001A844(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_100A797D8(uint64_t a1)
{
  if (qword_1019F22D8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.sideStore;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "clearBoardLoadMarks", 19, 2, &_swiftEmptyArrayStorage);
  sub_100A78348();
  swift_beginAccess();
  *(a1 + 56) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100A799BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100A7489C(sub_100A7B4C0, a1);
  if (v2)
  {
    if (qword_1019F22D8 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.sideStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v7 = Error.publicDescription.getter(v16, v17);
    v9 = v8;
    *(inited + 56) = &type metadata for String;
    v10 = sub_1000053B0();
    *(inited + 64) = v10;
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    swift_getErrorValue();
    v11 = Error.fullDescription.getter(v15);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    v13 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v13, "cleanUpBoardLoadMarksForAppTermination failed with error %{public} %@", 69, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    result = swift_arrayDestroy();
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v14;
  *(a2 + 8) = v2 != 0;
  return result;
}

uint64_t sub_100A79B7C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v50 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v44 - v6;
  v7 = sub_1005B981C(&qword_101A0EB60);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v44 - v11;
  if (qword_1019F22D8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v12 = static OS_os_log.sideStore;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "cleanUpBoardLoadMarksForAppTermination", 38, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(v14 + 64);
  v45 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v44 = (v16 + 63) >> 6;
  v51 = v14;

  v19 = 0;
  v49 = v4;
  v46 = v9;
  v47 = a1;
  v20 = v9;
  while (1)
  {
    if (!v18)
    {
      if (v44 <= v19 + 1)
      {
        v23 = v19 + 1;
      }

      else
      {
        v23 = v44;
      }

      v24 = v23 - 1;
      while (1)
      {
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v22 >= v44)
        {
          v9 = v4;
          v42 = sub_1005B981C(&qword_101A0EB48);
          v34 = v20;
          (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
          v18 = 0;
          v19 = v24;
          goto LABEL_16;
        }

        v18 = *(v45 + 8 * v22);
        ++v19;
        if (v18)
        {
          v21 = v53;
          v19 = v22;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v21 = v53;
    v22 = v19;
LABEL_15:
    v53 = v21;
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v51;
    v28 = v48;
    sub_10000C69C(*(v51 + 48) + *(v50 + 72) * v26, v48, type metadata accessor for CRLBoardIdentifier);
    v29 = *(*(v27 + 56) + 8 * v26);
    v30 = sub_1005B981C(&qword_101A0EB48);
    v31 = *(v30 + 48);
    v32 = v28;
    v33 = v46;
    sub_1000253F8(v32, v46, type metadata accessor for CRLBoardIdentifier);
    *(v33 + v31) = v29;
    v34 = v33;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);
    v9 = v49;
    a1 = v47;
LABEL_16:
    v20 = v34;
    v35 = v34;
    v36 = v52;
    sub_100A7B4E0(v35, v52);
    v37 = sub_1005B981C(&qword_101A0EB48);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      break;
    }

    v38 = *(v36 + *(v37 + 48));
    v39 = v36;
    v4 = v9;
    sub_1000253F8(v39, v9, type metadata accessor for CRLBoardIdentifier);
    if (v38 == 0x8000000000000000)
    {
      goto LABEL_26;
    }

    v40 = -v38;
    if (-v38 < 0xFFFFFFFF80000000)
    {
      goto LABEL_27;
    }

    if (v40 > 0x7FFFFFFF)
    {
      goto LABEL_28;
    }

    v41 = v53;
    sub_100A77988(v9, v40);
    v9 = v41;
    sub_100025E48(v4, type metadata accessor for CRLBoardIdentifier);
    v53 = v41;
    if (v41)
    {

      return 1;
    }
  }

  *(a1 + 56) = _swiftEmptyDictionarySingleton;

  return 1;
}

void *sub_100A7A08C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100A7A264(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100A7A104(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100A7A264(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100A7A08C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100A7A264(unint64_t *a1, uint64_t a2, void *a3)
{
  v25 = a2;
  v26 = a1;
  v29 = sub_1005B981C(&qword_101A0EB48);
  __chkstk_darwin(v29);
  v5 = &v25 - v4;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = 0;
  v30 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v30;
    sub_10000C69C(v30[6] + *(v28 + 72) * v21, v9, type metadata accessor for CRLBoardIdentifier);
    v23 = *(v22[7] + 8 * v21);
    sub_10000C69C(v9, v5, type metadata accessor for CRLBoardIdentifier);
    *&v5[*(v29 + 48)] = v23;
    sub_10000CAAC(v5, &qword_101A0EB48);
    result = sub_100025E48(v9, type metadata accessor for CRLBoardIdentifier);
    if (v23)
    {
      *(v26 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100A7A86C(v26, v25, v27, v30);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_100A7A86C(v26, v25, v27, v30);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100A7A4C8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1005B981C(&qword_101A0EB68);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v42 = v23;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100A7A86C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v33 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1005B981C(&qword_101A0EB50);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v34 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v37 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v23 = v35;
    v39 = *(v36 + 72);
    sub_10000C69C(v22 + v39 * v21, v35, type metadata accessor for CRLBoardIdentifier);
    v38 = *(a4[7] + 8 * v21);
    sub_1000253F8(v23, v11, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10001A844(&qword_1019FB870, 255, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v14 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      a4 = v34;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v17 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    a4 = v34;
LABEL_26:
    *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1000253F8(v11, *(v14 + 48) + v27 * v39, type metadata accessor for CRLBoardIdentifier);
    *(*(v14 + 56) + 8 * v27) = v38;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v37;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100A7AC0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1005B981C(&qword_101A0EB70);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    v20 = v17;

    result = NSObject._rawHashValue(seed:)(v19);
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100A7AE54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_100030478(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_100A7AE88(unint64_t a1)
{
  v48 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  v8 = *(v4 + 104);
  v50 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v49 = v8;
  v47 = v10;
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v11._object = 0x8000000101585440;
  String.append(_:)(v11);
  v12._object = 0x8000000101585340;
  v12._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x202020202820;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000101585360;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x20202020202CLL;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6E6F6973726576;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x20202020202CLL;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x7265746E756F63;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000016;
  v19._object = 0x8000000101585460;
  String.append(_:)(v19);
  v20 = v51;
  v21 = v52;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);

  if (v2)
  {
    return result;
  }

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v25 = sub_10084DAE4();
  v48 = v26;
  v27 = v25;
  v28 = *(*(v23 + 16) + 32);
  *v6 = v28;
  v49(v6, v50, v3);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v30 = v47;
  v47(v6, v3);
  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

  v31 = v27;
  v32 = v27;
  v33 = v48;
  sub_100DCCAB4(v32, v48, v23, 1);
  sub_10002640C(v31, v33);
  v34 = sub_10001FF1C();
  sub_100034254(v34, 2);
  v35 = *(*(v23 + 16) + 32);
  *v6 = v35;
  v49(v6, v50, v3);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v30(v6, v3);
  if ((v35 & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v37 = *(v23 + 16);

  v38 = sub_10001CEC4(v37, v23);

  if (v38 == 101)
  {
    v39 = *(*(v23 + 16) + 32);
    *v6 = v39;
    v49(v6, v50, v3);
    v40 = v39;
    v41 = _dispatchPreconditionTest(_:)();
    v30(v6, v3);
    if (v41)
    {
      swift_beginAccess();
      v42 = *(v23 + 24);
      if (v42)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

  sub_10089C7D0();
  swift_allocError();
  *v43 = v38;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  swift_willThrow();
  v44 = *(*(v23 + 16) + 32);
  *v6 = v44;
  v49(v6, v50, v3);
  v45 = v44;
  v46 = _dispatchPreconditionTest(_:)();
  v30(v6, v3);
  if ((v46 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v42 = *(v23 + 24);
  if (v42)
  {
LABEL_11:
    sqlite3_finalize(v42);
    *(v23 + 24) = 0;
  }
}

unint64_t sub_100A7B404()
{
  result = qword_101A0EB58;
  if (!qword_101A0EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EB58);
  }

  return result;
}

uint64_t sub_100A7B4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0EB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100A7B5AC()
{
  result = qword_101A0EC10;
  if (!qword_101A0EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EC10);
  }

  return result;
}

unint64_t sub_100A7B690(uint64_t a1)
{
  result = sub_100A7B6B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A7B6B8()
{
  result = qword_101A0EC60;
  if (!qword_101A0EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EC60);
  }

  return result;
}

unint64_t sub_100A7B710()
{
  result = qword_101A0EC68;
  if (!qword_101A0EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0EC68);
  }

  return result;
}

void sub_100A7B780()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
  objc_msgSendSuper2(&v4, "beginMovingKnob");
  v1 = [v0 knob];
  type metadata accessor for CRLUSDZPlayPauseKnob();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked);
    *(v2 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked) = 1;
    if ((v3 & 1) == 0)
    {
      sub_10072A460();
    }
  }
}

void sub_100A7B860()
{
  v1 = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
  v8.receiver = v0;
  v8.super_class = v1;
  objc_msgSendSuper2(&v8, "endMovingKnob");
  v2 = [v0 knob];
  type metadata accessor for CRLUSDZPlayPauseKnob();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    [v0 currentPosition];
    if ([v4 isHitByUnscaledPoint:0 inputType:?])
    {
      v5 = (v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying] & 1) == 0;
      v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying] = v5;
      sub_10072A460();
      sub_100020E58(&v0[OBJC_IVAR____TtC8Freeform27CRLUSDZPlayPauseKnobTracker_delegate], *&v0[OBJC_IVAR____TtC8Freeform27CRLUSDZPlayPauseKnobTracker_delegate + 24]);
      sub_100D145D4(v5);
    }

    v6 = v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked];
    v4[OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isBeingTracked] = 0;
    if (v6 == 1)
    {
      sub_10072A460();
    }

    v7.receiver = v0;
    v7.super_class = v1;
    objc_msgSendSuper2(&v7, "endMovingKnob");
  }
}

id sub_100A7BA40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A7BAFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100A7BB54()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A7BC24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  if ((sub_1011255D0(v13) & 1) == 0)
  {
    sub_100A82188(a1, type metadata accessor for CRLURLItemAtomicDataStruct);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A1C108)
  {
    __break(1u);
    return;
  }

  sub_100A82120(a1, v12, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A82120(v12, v9, type metadata accessor for CRLURLItemAtomicDataStruct);
  swift_beginAccess();
  sub_100A82120(v9, v6, type metadata accessor for CRLURLItemAtomicDataStruct);

  sub_1005B981C(&qword_101A08C60);
  CRRegister.wrappedValue.setter();
  sub_100A82188(v9, type metadata accessor for CRLURLItemAtomicDataStruct);
  swift_endAccess();

  sub_100A82188(v12, type metadata accessor for CRLURLItemAtomicDataStruct);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100A82188(a1, type metadata accessor for CRLURLItemAtomicDataStruct);
    if (v16)
    {
      return;
    }
  }

  else
  {
    sub_100A82188(a1, type metadata accessor for CRLURLItemAtomicDataStruct);
  }

  v17 = *(v2 + OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload);
  *(v2 + OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload) = 0;
}

void sub_100A7BFE4(char *a1)
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A1C108)
  {
    swift_beginAccess();
    v9 = a1;

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v6 + 16))(v8, &v4[*(v2 + 20)], v5);
    sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v6 + 8))(v8, v5);

    v13 = v12;
  }

  else
  {
    __break(1u);
  }
}

_UNKNOWN ****sub_100A7C258()
{
  v1 = v0;
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload;
  v20 = *&v1[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload];
  if (!v20)
  {
    if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A1C108)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A08C60);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100A82120(v4, v7, type metadata accessor for CRLAssetData);
      sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
      v69 = v1;
      v29 = [v1 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v68 = type metadata accessor for CRLAssetManager();
        v52 = objc_allocWithZone(v68);
        swift_unknownObjectWeakInit();
        v53 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v54 = swift_allocObject();
        v67 = v29;
        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v54 + 16) = v55;
        atomic_thread_fence(memory_order_acq_rel);
        *&v52[v53] = v54;
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v52[v56] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v57 = v67;
        swift_unknownObjectWeakAssign();
        v70.receiver = v52;
        v70.super_class = v68;
        v58 = objc_msgSendSuper2(&v70, "init");

        v59 = *&v29[v31];
        *&v29[v31] = v58;
        v33 = v58;

        v32 = 0;
      }

      v60 = *(v30 + 16);
      v61 = v32;
      os_unfair_lock_unlock(v60);

      v62 = v69;
      v63 = sub_1011255E0(v7, v69, v33);

      sub_100A82188(v7, type metadata accessor for CRLAssetData);
      v51 = *(v62 + v19);
      *(v62 + v19) = v63;
      v28 = v63;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v65 = v10;
  v66 = v16;
  v67 = v15;
  v68 = v4;
  v19 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  v10 = sub_100020E58((v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v19);
  v4 = v1;
  v22 = *(v21 + 24);
  v69 = v20;
  v22(v19, v21);
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v20 != &off_101A1C108)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A08C60);
  v23 = v68;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v24 = v65;
  sub_100A82120(v23, v65, type metadata accessor for CRLAssetData);
  sub_100A82188(v23, type metadata accessor for CRLURLItemAtomicDataStruct);
  v26 = v66;
  v25 = v67;
  (*(v66 + 16))(v13, v24, v67);
  sub_100A82188(v24, type metadata accessor for CRLAssetData);
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v13, v25);
  v27(v18, v25);
  if ((v24 & 1) == 0)
  {
    v20 = objc_opt_self();
    LODWORD(v4) = [v20 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v36;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v39 = sub_1005CF000();
      *(inited + 96) = v39;
      v40 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000);
      *(inited + 104) = v40;
      *(inited + 72) = v10;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 47;
      v42 = v71;
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v10;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v49 file:v50 lineNumber:47 isFatal:0 format:v51 args:v48];

      v28 = v69;
LABEL_12:

      return v28;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v69;
}

uint64_t sub_100A7CD48()
{
  v1 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.url.getter();
  v12 = static UTType.== infix(_:_:)();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v5 + 16))(v7, &v3[*(v1 + 20)], v4);
    sub_100A82188(v3, type metadata accessor for CRLURLItemAtomicDataStruct);
    v14 = URL.dataRepresentation.getter();
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A7D164()
{
  v1 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v5 + 16))(v7, &v3[*(v1 + 20)], v4);
    sub_100A82188(v3, type metadata accessor for CRLURLItemAtomicDataStruct);
    URL.absoluteString.getter();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100A7D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v52 = &v46 - v18;
  __chkstk_darwin(v19);
  v24 = &v46 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    v47 = v22;
    v48 = a2;
    v49 = v21;
    v50 = v20;
    v51 = v4;

    v25 = sub_100D1FBA8(1);
    v53 = a4;
    v26 = v25;

    v27 = v26 + *(*v26 + 736);
    swift_beginAccess();
    v57 = v24;
    sub_10000BE14(v27, v13, &unk_101A226A0);

    v28 = sub_1005B981C(&qword_101A01F08);
    CRRegister.wrappedValue.getter();
    v29 = v13;
    v30 = v57;
    sub_10000CAAC(v29, &unk_101A226A0);
    sub_10000BE14(v10, v30, &qword_1019F6990);
    sub_100A82188(v10, type metadata accessor for CRLBoardItemParentAffinity);
    sub_100D2004C(v53);
    if (v5)
    {

      sub_10000CAAC(v30, &qword_1019F6990);
    }

    else
    {
      v53 = v28;
      v54 = v11;
      v31 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v31, 1, v32) == 1)
      {
        v35 = v52;
        sub_10000BE14(v57, v52, &qword_1019F6990);
        if (v34(v31, 1, v32) != 1)
        {
          sub_10000CAAC(v31, &qword_1019F6990);
        }
      }

      else
      {
        v35 = v52;
        (*(v33 + 32))(v52, v31, v32);
        (*(v33 + 56))(v35, 0, 1, v32);
      }

      v36 = v35;
      v37 = v35;
      v38 = v50;
      sub_10000BE14(v36, v50, &qword_1019F6990);
      swift_beginAccess();
      v39 = v49;
      sub_10000BE14(v38, v49, &qword_1019F6990);
      v40 = CRRegister.wrappedValue.modify();
      sub_10002C638(v39, v41, &qword_1019F6990);
      v40(v56, 0);
      sub_10000CAAC(v38, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990);
      v42 = *(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLURLItem());
      *&v43[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v26;
      v44 = type metadata accessor for CRLBoardItemBase(0);
      v55.receiver = v43;
      v55.super_class = v44;
      v45 = v42;
      objc_msgSendSuper2(&v55, "init");
      sub_10000CAAC(v57, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A7DACC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100A7DC30()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 504);

  v2 = v1(0);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLURLItem());
  *&v4[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CRLBoardItemBase(0);
  v5 = v3;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100A7DD24(uint64_t a1)
{
  v3 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_1005B981C(&qword_101A0ED68);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  type metadata accessor for CRLURLItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = sub_1011F0C64(v13, v1);
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v15 == &off_101A1C108)
    {
      v49 = v3;
      v50 = v14;
      v51 = a1;
      v16 = qword_101AD7BB8;
      swift_beginAccess();
      sub_100A82120(v15 + v16, v8, type metadata accessor for CRLURLItemCRDTData);
      v17 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v17 == &off_101A1C108)
      {
        v18 = qword_101AD7BB8;
        swift_beginAccess();
        sub_100A82120(v17 + v18, v5, type metadata accessor for CRLURLItemCRDTData);
        sub_100A821E8(&qword_101A0ED78, type metadata accessor for CRLURLItemCRDTData);
        CRStruct_1.actionUndoingDifference(from:)();
        sub_100A82188(v5, type metadata accessor for CRLURLItemCRDTData);
        sub_100A82188(v8, type metadata accessor for CRLURLItemCRDTData);
        v19 = sub_1005B981C(&qword_101A0ED70);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v11, 1, v19) == 1)
        {
          sub_10000CAAC(v11, &qword_101A0ED68);
          memset(v52, 0, sizeof(v52));
          v53 = 1;
        }

        else
        {
          v53 = v19;
          v21 = sub_10002C58C(v52);
          (*(v20 + 32))(v21, v11, v19);
        }

        v22 = v50;
        swift_beginAccess();
        sub_100BC1DF4(v52, 7);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v24 = objc_opt_self();
  v25 = [v24 _atomicIncrementAssertCount];
  v52[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v52);
  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v27 lastPathComponent];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v32 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v25;
  v34 = sub_1005CF000();
  *(inited + 96) = v34;
  v35 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v35;
  *(inited + 72) = v26;
  *(inited + 136) = &type metadata for String;
  v36 = sub_1000053B0();
  *(inited + 112) = v29;
  *(inited + 120) = v31;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v36;
  *(inited + 152) = 112;
  v37 = v52[0];
  *(inited + 216) = v34;
  *(inited + 224) = v35;
  *(inited + 192) = v37;
  v38 = v26;
  v39 = v37;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v41 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v41, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v42 = swift_allocObject();
  v42[2] = 8;
  v42[3] = 0;
  v42[4] = 0;
  v42[5] = 0;
  v43 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  [v24 handleFailureInFunction:v44 file:v45 lineNumber:112 isFatal:1 format:v46 args:v43];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v47, v48);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100A7E46C(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0ED80);
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = (&v58 - v6);
  v62 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v62);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = sub_1005B981C(&qword_101A0ED88);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v58 - v16);
  type metadata accessor for CRLURLItem();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = &OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v21 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v22 = &off_101A1C108;
    if (*v21 == &off_101A1C108)
    {
      v23 = v18;
      v60 = v17;
      v61 = a1;
      v17 = &qword_101AD7BB8;
      a1 = qword_101AD7BB8;
      swift_beginAccess();
      sub_100A82120(&v21[a1], v11, type metadata accessor for CRLURLItemCRDTData);
      v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v21 = *(v23 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v21 == &off_101A1C108)
      {
        v24 = qword_101AD7BB8;
        swift_beginAccess();
        sub_100A82120(&v21[v24], v8, type metadata accessor for CRLURLItemCRDTData);
        sub_100A821E8(&qword_101A0ED90, type metadata accessor for CRLURLItemCRDTData);
        swift_unknownObjectRetain();
        a1 = v60;
        CRType.observableDifference(from:)();
        sub_100A82188(v8, type metadata accessor for CRLURLItemCRDTData);
        sub_100A82188(v11, type metadata accessor for CRLURLItemCRDTData);
        sub_10000BE14(a1, v14, &qword_101A0ED88);
        if ((*(v63 + 48))(v14, 1, v64) == 1)
        {
          v25 = &qword_101A0ED88;
          v26 = v14;
          goto LABEL_8;
        }

        v17 = v59;
        sub_100A82230(v14, v59);
        v27 = v58;
        sub_10000BE14(v17, v58, &qword_101A0ED80);
        v28 = type metadata accessor for CRValueObservableDifference();
        if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
        {
          sub_10000CAAC(v17, &qword_101A0ED80);
          v25 = &qword_101A01F00;
          v26 = v27;
LABEL_8:
          sub_10000CAAC(v26, v25);
          v21 = _swiftEmptyArrayStorage;
          if (_swiftEmptyArrayStorage[2])
          {
LABEL_9:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = _swiftEmptyDictionarySingleton;
            sub_100A9B080(v21, 7, isUniquelyReferenced_nonNull_native);
            swift_unknownObjectRelease();
            v30 = v65;
            sub_10000CAAC(a1, &qword_101A0ED88);
            return v30;
          }

LABEL_12:
          sub_10000CAAC(a1, &qword_101A0ED88);

          swift_unknownObjectRelease();
          return _swiftEmptyDictionarySingleton;
        }

        sub_10000CAAC(v27, &qword_101A01F00);
        v21 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v19 = *(v21 + 2);
        v20 = *(v21 + 3);
        v22 = (v19 + 1);
        if (v19 < v20 >> 1)
        {
LABEL_11:
          sub_10000CAAC(v17, &qword_101A0ED80);
          *(v21 + 2) = v22;
          v31 = &v21[16 * v19];
          *(v31 + 4) = 0x614463696D6F7461;
          *(v31 + 5) = 0xEA00000000006174;
          if (*(v21 + 2))
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

LABEL_16:
        v21 = sub_100024CBC((v20 > 1), v22, 1, v21);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v33 = objc_opt_self();
  v34 = [v33 _atomicIncrementAssertCount];
  v66 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v66);
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  v37 = [v36 lastPathComponent];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v41 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v34;
  v43 = sub_1005CF000();
  *(inited + 96) = v43;
  v44 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v44;
  *(inited + 72) = v35;
  *(inited + 136) = &type metadata for String;
  v45 = sub_1000053B0();
  *(inited + 112) = v38;
  *(inited + 120) = v40;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v45;
  *(inited + 152) = 124;
  v46 = v66;
  *(inited + 216) = v43;
  *(inited + 224) = v44;
  *(inited + 192) = v46;
  v47 = v35;
  v48 = v46;
  v49 = static os_log_type_t.error.getter();
  sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v50 = static os_log_type_t.error.getter();
  sub_100005404(v41, &_mh_execute_header, v50, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v51 = swift_allocObject();
  v51[2] = 8;
  v51[3] = 0;
  v51[4] = 0;
  v51[5] = 0;
  v52 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v53 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  [v33 handleFailureInFunction:v53 file:v54 lineNumber:124 isFatal:1 format:v55 args:v52];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v56, v57);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100A7EDB8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0ED68);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_1005B981C(&qword_101A0ED70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  result = sub_1009B611C(a1);
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v17 = *(a1 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1007C8124(7);
      if (v19)
      {
        sub_10000BE14(*(v17 + 56) + 32 * v18, &v23, &unk_1019F4D00);

        v25[0] = v23;
        v25[1] = v24;
        if (*(&v24 + 1))
        {
          v20 = swift_dynamicCast();
          v21 = *(v12 + 56);
          v21(v10, v20 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            result = (*(v12 + 32))(v14, v10, v11);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
            {
              (*(v12 + 16))(v7, v14, v11);
              v21(v7, 0, 1, v11);
              swift_beginAccess();
              type metadata accessor for CRLURLItemCRDTData(0);
              sub_100A821E8(&qword_101A0ED78, type metadata accessor for CRLURLItemCRDTData);

              CRStruct_1.apply(_:)();
              swift_endAccess();

              sub_10000CAAC(v7, &qword_101A0ED68);
              return (*(v12 + 8))(v14, v11);
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          return sub_10000CAAC(v10, &qword_101A0ED68);
        }

        sub_10000CAAC(v25, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000CAAC(v10, &qword_101A0ED68);
  }

  return result;
}

uint64_t sub_100A7F1C4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4;
  if (a3 == 7)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      swift_getObjectType();

      return sub_1009BE298(a1, a2, a3, a4, v5);
    }
  }

  v12 = *(a2 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = 0;
  v81 = OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload;
  v82 = a2 + 32;
  v83 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v75 = a1;
  v76 = v5;
  v74 = *(a2 + 16);
  while (1)
  {
    v14 = (v82 + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *v14 == 0x614463696D6F7461 && v15 == 0xEA00000000006174;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = *(v5 + v81);
      *(v5 + v81) = 0;

      v85[3] = &type metadata for Bool;
      LOBYTE(v85[0]) = 1;
      swift_beginAccess();
      sub_10000BE14(v85, v84, &unk_1019F4D00);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a1 + v83);
      *(a1 + v83) = 0x8000000000000000;
      v21 = sub_1007CF108();
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_58;
      }

      v27 = v22;
      if (v20[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = v21;
          sub_100AA3EA4();
          v21 = v73;
        }
      }

      else
      {
        sub_100A890C0(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1007CF108();
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_61;
        }
      }

      if (v27)
      {
        sub_10002C638(v84, v20[7] + 32 * v21, &unk_1019F4D00);
      }

      else
      {
        v20[(v21 >> 6) + 8] |= 1 << v21;
        *(v20[6] + 8 * v21) = 53;
        v29 = (v20[7] + 32 * v21);
        v30 = v84[1];
        *v29 = v84[0];
        v29[1] = v30;
        v31 = v20[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_59;
        }

        v20[2] = v32;
      }

      *(a1 + v83) = v20;
      swift_endAccess();
      result = sub_10000CAAC(v85, &unk_1019F4D00);
      goto LABEL_8;
    }

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 32) = v16;
    v35 = inited + 32;
    v79 = v34;
    *(inited + 64) = v34;
    *(inited + 40) = v15;
    v36 = objc_opt_self();

    v77 = v36;
    v78 = [v36 _atomicIncrementAssertCount];
    v85[0] = [objc_allocWithZone(NSString) init];
    v80 = inited;
    sub_100604538(inited, v85);
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlAssert;
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146CA70;
    *(v44 + 56) = &type metadata for Int32;
    *(v44 + 64) = &protocol witness table for Int32;
    *(v44 + 32) = v78;
    v45 = sub_1005CF000();
    *(v44 + 96) = v45;
    v46 = sub_100A821E8(&qword_1019F52E0, sub_1005CF000);
    *(v44 + 72) = v37;
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = v79;
    *(v44 + 104) = v46;
    *(v44 + 112) = v40;
    *(v44 + 120) = v42;
    *(v44 + 176) = &type metadata for UInt;
    *(v44 + 152) = 168;
    v47 = v85[0];
    *(v44 + 216) = v45;
    *(v44 + 224) = v46;
    *(v44 + 184) = &protocol witness table for UInt;
    *(v44 + 192) = v47;
    v48 = v37;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v51 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v53 = v52 + 3;
    v52[4] = 0;
    v52[5] = 0;
    v54 = *(v80 + 16);
    if (v54)
    {
      break;
    }

LABEL_49:
    v69 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    [v77 handleFailureInFunction:v70 file:v71 lineNumber:168 isFatal:0 format:v72 args:v69];

    swift_setDeallocating();
    result = swift_arrayDestroy();
    a1 = v75;
    v5 = v76;
    v12 = v74;
LABEL_8:
    if (++v13 == v12)
    {
      return result;
    }
  }

  v55 = 0;
  while (1)
  {
    sub_100020E58((v35 + 40 * v55), *(v35 + 40 * v55 + 24));
    v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v57 = *v53;
    v58 = *(v56 + 16);
    v25 = __OFADD__(*v53, v58);
    v59 = *v53 + v58;
    if (v25)
    {
      break;
    }

    v60 = v56;
    v61 = v52[4];
    if (v61 >= v59)
    {
      goto LABEL_42;
    }

    if (v61 + 0x4000000000000000 < 0)
    {
      goto LABEL_56;
    }

    v62 = v52[5];
    if (2 * v61 > v59)
    {
      v59 = 2 * v61;
    }

    v52[4] = v59;
    if ((v59 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v63 = swift_slowAlloc();
    v52[5] = v63;
    if (v62)
    {
      if (v63 != v62 || v63 >= &v62[8 * v57])
      {
        memmove(v63, v62, 8 * v57);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_42:
      v63 = v52[5];
    }

    if (!v63)
    {
      goto LABEL_60;
    }

    v65 = *(v60 + 16);
    if (v65)
    {
      v66 = (v60 + 32);
      v67 = *v53;
      while (1)
      {
        v68 = *v66++;
        *&v63[8 * v67] = v68;
        v67 = *v53 + 1;
        if (__OFADD__(*v53, 1))
        {
          break;
        }

        *v53 = v67;
        if (!--v65)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      break;
    }

LABEL_27:

    if (++v55 == v54)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_100A7FC20()
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1009B4F54();
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    v1 = v9;
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v6 + 16))(v8, &v4[*(v2 + 20)], v5);
    sub_100A82188(v4, type metadata accessor for CRLURLItemAtomicDataStruct);
    v0 = URL.absoluteString.getter();
    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v1 = sub_100024CBC(0, *(v1 + 2) + 1, 1, v1);
LABEL_3:
  v12 = *(v1 + 2);
  v11 = *(v1 + 3);
  if (v12 >= v11 >> 1)
  {
    v1 = sub_100024CBC((v11 > 1), v12 + 1, 1, v1);
  }

  (*(v6 + 8))(v8, v5);
  *(v1 + 2) = v12 + 1;
  v13 = &v1[16 * v12];
  *(v13 + 4) = v0;
  *(v13 + 5) = v4;
  return v1;
}

id sub_100A7FEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLURLItem()
{
  result = qword_101A0ED50;
  if (!qword_101A0ED50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100A7FF8C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v6 = *(v3 + 20);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, &v5[v6], v7);
    sub_100A82188(v5, type metadata accessor for CRLURLItemAtomicDataStruct);
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }
}

id sub_100A80148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v113 = a1;
  v124 = a3;
  v118 = a2;
  v111 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v111);
  v107 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = v89 - v7;
  __chkstk_darwin(v8);
  v109 = v89 - v9;
  v103 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v103);
  v108 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v122 = *(v11 - 8);
  __chkstk_darwin(v11);
  v106 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v89 - v14;
  v102 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v102);
  v112 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = v89 - v18;
  v19 = sub_1005B981C(&unk_101A09DC0);
  v98 = *(v19 - 8);
  v99 = v19;
  __chkstk_darwin(v19);
  v97 = v89 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v94 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v96 = v89 - v25;
  v95 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v95);
  v104 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v105 = v89 - v28;
  __chkstk_darwin(v29);
  v121 = v89 - v30;
  v31 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v31 - 8);
  v114 = v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v89 - v34;
  v36 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v36 - 8);
  v90 = v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v89 - v39;
  v115 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v115);
  v92 = v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v93 = v89 - v43;
  v45 = __chkstk_darwin(v44);
  v123 = v11;
  v119 = v89 - v46;
  v120 = v15;
  if (a4)
  {
    v100 = a4;
  }

  else
  {
    v100 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v116 = *(v22 + 16);
  v117 = v22 + 16;
  v116(v40, v118, v21, v45);
  v125 = v22;
  v47 = *(v22 + 56);
  v47(v40, 0, 1, v21);
  v136 = 1;
  v48 = type metadata accessor for CRLTableAnchorHint();
  v49 = *(v48 - 8);
  v89[0] = *(v49 + 56);
  v89[1] = v49 + 56;
  (v89[0])(v35, 1, 1, v48);
  v101 = a4;
  v50 = v100;
  sub_101271CCC(v50, v145);
  v100 = v50;

  v51 = v90;
  sub_10000BE14(v40, v90, &qword_1019F6990);
  v52 = v21;
  sub_10000BE14(v35, v114, &unk_101A09DD0);
  v53 = v119;
  v47(v119, 1, 1, v21);
  v54 = v115;
  v55 = *(v115 + 28);
  v56 = v53 + *(v115 + 24);
  (v89[0])(v53 + v55, 1, 1, v48);
  *(v53 + *(v54 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v51, v53, &qword_1019F6990);
  sub_10000CAAC(v35, &unk_101A09DD0);
  sub_10000CAAC(v40, &qword_1019F6990);
  v57 = (v53 + *(v54 + 20));
  v58 = v145[1];
  *v57 = v145[0];
  v57[1] = v58;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 48) = 0u;
  *(v56 + 64) = v136;
  v59 = v52;
  sub_10002C638(v114, v53 + v55, &unk_101A09DD0);
  v60 = v93;
  sub_100A82120(v53, v93, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v137);
  v61 = v96;
  UUID.init()();
  v62 = v95;
  v114 = *(v95 + 52);
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v90 = sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  v63 = v121;
  CRRegister.init(wrappedValue:)();
  *(v63 + *(v62 + 56)) = _swiftEmptyDictionarySingleton;
  (v116)(v94, v61, v52);
  CRRegister.init(_:)();
  sub_100A82120(v60, v92, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100A821E8(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v128) = 0;
  CRRegister.init(_:)();
  LOBYTE(v128) = 0;
  CRRegister.init(_:)();
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v64 = v97;
  CRRegister.init(_:)();
  v65 = *(v125 + 8);
  v125 += 8;
  v115 = v65;
  v65(v61, v59);
  sub_100A82188(v60, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v98 + 40))(v63 + v114, v64, v99);
  LOBYTE(v128) = 1;
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  v66 = *(v122 + 2);
  v67 = v120;
  v68 = v123;
  v66(v120, v124);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v69 = sub_1005EB3DC(v59, qword_101AD8F08);
  v70 = v59;
  v91 = v59;
  v71 = v108;
  (v116)(v108, v69, v70);
  v72 = v103;
  v73 = (v71 + *(v103 + 20));
  *v73 = 0;
  v73[1] = 0xE000000000000000;
  *(v71 + *(v72 + 24)) = _swiftEmptyDictionarySingleton;
  v74 = v106;
  (v66)(v106, v67, v68);
  v75 = v109;
  sub_100A82120(v71, v109, type metadata accessor for CRLAssetData);
  v76 = v111;
  (v66)(v75 + *(v111 + 20), v74, v68);
  *(v75 + *(v76 + 24)) = _swiftEmptyDictionarySingleton;
  v77 = v110;
  sub_100A82120(v75, v110, type metadata accessor for CRLURLItemAtomicDataStruct);
  *(v126 + *(v102 + 20)) = _swiftEmptyDictionarySingleton;
  sub_100A82120(v77, v107, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A821E8(&qword_101A0ED60, type metadata accessor for CRLURLItemAtomicDataStruct);
  CRRegister.init(_:)();
  v78 = *(v122 + 1);
  v78(v120, v68);
  v122 = v78;
  sub_100A82188(v77, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A82188(v75, type metadata accessor for CRLURLItemAtomicDataStruct);
  v78(v74, v68);
  sub_100A82188(v71, type metadata accessor for CRLAssetData);
  v79 = v121;
  v80 = v105;
  sub_10000BE14(v121, v105, &unk_101A226A0);
  v81 = v112;
  sub_100A82120(v126, v112, type metadata accessor for CRLURLItemCRDTData);
  *&v128 = 0x1000000000000;
  *(&v128 + 1) = 0x2000400000000;
  v129 = 0x1000000000000uLL;
  LOBYTE(v130) = 1;
  type metadata accessor for CRLURLItemData(0);
  v82 = swift_allocObject();
  sub_100A82120(v81, v82 + qword_101AD7BB8, type metadata accessor for CRLURLItemCRDTData);
  v83 = v104;
  sub_10000BE14(v80, v104, &unk_101A226A0);
  sub_10000BE14(v83, v82 + *(*v82 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v83, &unk_101A226A0);
  sub_100A82188(v81, type metadata accessor for CRLURLItemCRDTData);
  sub_10000CAAC(v80, &unk_101A226A0);
  v84 = sub_100747AF0(&v128, 2);
  v85 = objc_allocWithZone(type metadata accessor for CRLURLItem());
  *&v85[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
  *&v85[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v113;
  *&v85[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v84;
  v86 = type metadata accessor for CRLBoardItemBase(0);
  v127.receiver = v85;
  v127.super_class = v86;
  v87 = objc_msgSendSuper2(&v127, "init");

  v122(v124, v123);
  (v115)(v118, v91);
  sub_100A82188(v126, type metadata accessor for CRLURLItemCRDTData);
  sub_100A82188(v119, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v79, &unk_101A226A0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v87;
}

id sub_100A81180(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v131 = a4;
  v123 = a1;
  v119 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v119);
  v117 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v94 - v10;
  __chkstk_darwin(v11);
  v116 = &v94 - v12;
  v130 = type metadata accessor for URL();
  v122 = *(v130 - 8);
  __chkstk_darwin(v130);
  v115 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v14 - 8);
  v111 = &v94 - v15;
  v110 = type metadata accessor for CRLAssetData();
  v16 = *(v110 - 8);
  __chkstk_darwin(v110);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for CRLURLItemCRDTData(0);
  __chkstk_darwin(v112);
  v120 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v94 - v21;
  v22 = sub_1005B981C(&unk_101A09DC0);
  v106 = *(v22 - 8);
  v107 = v22;
  __chkstk_darwin(v22);
  v105 = &v94 - v23;
  v135 = type metadata accessor for UUID();
  v24 = *(v135 - 8);
  __chkstk_darwin(v135);
  v102 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v104 = &v94 - v27;
  v103 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v103);
  v113 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v114 = &v94 - v30;
  __chkstk_darwin(v31);
  v133 = &v94 - v32;
  v33 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v33 - 8);
  v99 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v97 = &v94 - v36;
  v37 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v37 - 8);
  v98 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v94 - v40;
  v127 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v127);
  v100 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v101 = &v94 - v44;
  v46 = __chkstk_darwin(v45);
  v128 = &v94 - v47;
  v129 = v18;
  v132 = a3;
  v109 = v16;
  if (a5)
  {
    v108 = a5;
  }

  else
  {
    v108 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v125 = *(v24 + 16);
  v126 = (v24 + 16);
  v124 = a2;
  v48 = v135;
  v125(v41, a2, v135, v46);
  v49 = *(v24 + 56);
  v49(v41, 0, 1, v48);
  v145 = 1;
  v50 = type metadata accessor for CRLTableAnchorHint();
  v134 = v24;
  v51 = v50;
  v52 = *(v50 - 8);
  v95 = *(v52 + 56);
  v96 = v52 + 56;
  v53 = v97;
  v95(v97, 1, 1, v50);
  v54 = a5;
  v55 = v108;
  sub_101271CCC(v55, v154);
  v108 = v55;

  v56 = v98;
  sub_10000BE14(v41, v98, &qword_1019F6990);
  v57 = v99;
  sub_10000BE14(v53, v99, &unk_101A09DD0);
  v58 = v128;
  v49(v128, 1, 1, v48);
  v59 = v127;
  v60 = *(v127 + 28);
  v61 = v58 + *(v127 + 24);
  v95((v58 + v60), 1, 1, v51);
  *(v58 + *(v59 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v56, v58, &qword_1019F6990);
  sub_10000CAAC(v53, &unk_101A09DD0);
  sub_10000CAAC(v41, &qword_1019F6990);
  v62 = (v58 + *(v59 + 20));
  v63 = v154[1];
  *v62 = v154[0];
  v62[1] = v63;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  *(v61 + 32) = 0u;
  *(v61 + 48) = 0u;
  *(v61 + 64) = v145;
  sub_10002C638(v57, v58 + v60, &unk_101A09DD0);
  v64 = v101;
  sub_100A82120(v58, v101, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v146);
  v65 = v104;
  UUID.init()();
  v66 = v103;
  v99 = *(v103 + 52);
  v141 = v150;
  v142 = v151;
  v143 = v152;
  v144 = v153;
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v140 = v149;
  sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  v67 = v133;
  CRRegister.init(wrappedValue:)();
  *(v67 + *(v66 + 56)) = _swiftEmptyDictionarySingleton;
  (v125)(v102, v65, v135);
  CRRegister.init(_:)();
  sub_100A82120(v64, v100, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100A821E8(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v137) = 0;
  CRRegister.init(_:)();
  LOBYTE(v137) = 0;
  CRRegister.init(_:)();
  *&v137 = 0;
  *(&v137 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v141 = v150;
  v142 = v151;
  v143 = v152;
  v144 = v153;
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v140 = v149;
  v68 = v105;
  CRRegister.init(_:)();
  v69 = *(v134 + 8);
  v134 += 8;
  v127 = v69;
  v69(v65, v135);
  sub_100A82188(v64, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v106 + 40))(v67 + v99, v68, v107);
  LOBYTE(v137) = 1;
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  v70 = v111;
  sub_10000BE14(v132, v111, &unk_101A1B880);
  v71 = v110;
  v72 = *(v109 + 48);
  if (v72(v70, 1, v110) == 1)
  {
    v73 = v129;
    if (qword_1019F2878 != -1)
    {
      swift_once();
    }

    v74 = v135;
    v75 = sub_1005EB3DC(v135, qword_101AD8F08);
    (v125)(v73, v75, v74);
    v76 = (v73 + *(v71 + 20));
    *v76 = 0;
    v76[1] = 0xE000000000000000;
    *(v73 + *(v71 + 24)) = _swiftEmptyDictionarySingleton;
    if (v72(v70, 1, v71) != 1)
    {
      sub_10000CAAC(v70, &unk_101A1B880);
    }
  }

  else
  {
    v73 = v129;
    sub_1006008F0(v70, v129);
  }

  v77 = v122;
  v78 = *(v122 + 16);
  v79 = v115;
  v80 = v130;
  v78(v115, v131, v130);
  v81 = v116;
  sub_100A82120(v73, v116, type metadata accessor for CRLAssetData);
  v82 = v119;
  v78((v81 + *(v119 + 20)), v79, v80);
  *(v81 + *(v82 + 24)) = _swiftEmptyDictionarySingleton;
  v83 = v118;
  sub_100A82120(v81, v118, type metadata accessor for CRLURLItemAtomicDataStruct);
  v84 = v121;
  *&v121[*(v112 + 20)] = _swiftEmptyDictionarySingleton;
  sub_100A82120(v83, v117, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A821E8(&qword_101A0ED60, type metadata accessor for CRLURLItemAtomicDataStruct);
  CRRegister.init(_:)();
  sub_100A82188(v83, type metadata accessor for CRLURLItemAtomicDataStruct);
  sub_100A82188(v81, type metadata accessor for CRLURLItemAtomicDataStruct);
  v126 = *(v77 + 8);
  v126(v79, v80);
  sub_100A82188(v129, type metadata accessor for CRLAssetData);
  v85 = v114;
  sub_10000BE14(v133, v114, &unk_101A226A0);
  v86 = v120;
  sub_100A82120(v84, v120, type metadata accessor for CRLURLItemCRDTData);
  *&v137 = 0x1000000000000;
  *(&v137 + 1) = 0x2000400000000;
  v138 = 0x1000000000000uLL;
  LOBYTE(v139) = 1;
  type metadata accessor for CRLURLItemData(0);
  v87 = swift_allocObject();
  sub_100A82120(v86, v87 + qword_101AD7BB8, type metadata accessor for CRLURLItemCRDTData);
  v88 = v113;
  sub_10000BE14(v85, v113, &unk_101A226A0);
  sub_10000BE14(v88, v87 + *(*v87 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v88, &unk_101A226A0);
  sub_100A82188(v86, type metadata accessor for CRLURLItemCRDTData);
  sub_10000CAAC(v85, &unk_101A226A0);
  v89 = sub_100747AF0(&v137, 2);
  v90 = objc_allocWithZone(type metadata accessor for CRLURLItem());
  *&v90[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
  *&v90[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v123;
  *&v90[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v89;
  v91 = type metadata accessor for CRLBoardItemBase(0);
  v136.receiver = v90;
  v136.super_class = v91;
  v92 = objc_msgSendSuper2(&v136, "init");

  v126(v131, v130);
  sub_10000CAAC(v132, &unk_101A1B880);
  (v127)(v124, v135);
  sub_100A82188(v84, type metadata accessor for CRLURLItemCRDTData);
  sub_100A82188(v128, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v133, &unk_101A226A0);
  return v92;
}

uint64_t sub_100A82120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A82188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A821E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100A82230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0ED80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100A822A8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113E194(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100AAE438(v5);
  *a1 = v2;
  return result;
}

uint64_t *CRLMathCalculationController.mathHintsModeChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1019F1B88 != -1)
  {
    swift_once();
  }

  return &static CRLMathCalculationController.mathHintsModeChangedNotificationName;
}

uint64_t CalculateResult.crl_nonTrivialFormattedResult.getter()
{
  if ([v0 isTrivial])
  {
    return 0;
  }

  v2 = [v0 formattedResult];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_100A823DC()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v2 - 8);
  v114 = v96 - v3;
  v110 = type metadata accessor for CalculateExpression.TokenType();
  v4 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _swiftEmptyArrayStorage;
  v130 = _swiftEmptyArrayStorage;
  v123 = CalculateExpression.expression.getter();
  v8 = v7;
  CalculateExpression.plain.getter();
  v9 = dispatch thunk of CalculateExpression.PlainExpression.tokens.getter();

  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_65:

    v76 = _swiftEmptyArrayStorage;
    goto LABEL_66;
  }

LABEL_64:
  v82 = v10;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  v10 = v82;
  if (!v11)
  {
    goto LABEL_65;
  }

LABEL_3:
  v96[1] = v1;
  v115 = 0;
  v12 = 0;
  v108 = v10 & 0xC000000000000001;
  v101 = v10;
  v98 = v10 + 32;
  v99 = v10 & 0xFFFFFFFFFFFFFF8;
  v107 = (v4 + 88);
  v106 = enum case for CalculateExpression.TokenType.literal(_:);
  v100 = enum case for CalculateExpression.TokenType.variable(_:);
  v97 = (v4 + 8);
  v13 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v13 = v123 & 0xFFFFFFFFFFFFLL;
  }

  v14 = 11;
  if (((v8 >> 60) & ((v123 & 0x800000000000000) == 0)) == 0)
  {
    v14 = 7;
  }

  v112 = v14 | (v13 << 16);
  v113 = v8;
  v104 = v11;
  v105 = 4 * v13;
  v15 = v6;
  v6 = 15;
  v102 = v15;
  v103 = v15;
  do
  {
    if (v108)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v10;
      v17 = __OFADD__(v12, 1);
      v18 = v12 + 1;
      if (v17)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v12 >= *(v99 + 16))
      {
        goto LABEL_63;
      }

      v16 = *(v98 + 8 * v12);

      v17 = __OFADD__(v12, 1);
      v18 = v12 + 1;
      if (v17)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v19 = dispatch thunk of CalculateExpression.Token.text.getter();
    v21 = v20;
    if (String.count.getter() < 2)
    {
      v117 = 0;
      v118 = 0xE000000000000000;
    }

    else
    {
      v117 = sub_100A88068(v19, v21);
      v118 = v22;
    }

    v4 = [objc_allocWithZone(PKMathRecognitionToken) init];
    v1 = v109;
    CalculateExpression.Token.type.getter();
    v23 = (*v107)(v1, v110);
    if (v23 == v106)
    {
      v10 = [v4 setType:1];
    }

    else if (v23 == v100)
    {
      v10 = [v4 setType:2];
    }

    else
    {
      [v4 setType:0];
      v10 = (*v97)(v109, v110);
    }

    if (v105 < v6 >> 14)
    {
      goto LABEL_62;
    }

    v116 = v18;
    v120 = v4;
    v121 = v16;
    v111 = v6;
    v126 = String.subscript.getter();
    v127 = v24;
    v128 = v25;
    v129 = v26;
    v122 = v19;
    v124 = v19;
    v125 = v21;
    v27 = type metadata accessor for Locale();
    v28 = *(*(v27 - 8) + 56);
    v29 = v114;
    v28(v114, 1, 1, v27);
    sub_1007B01B8();
    v119 = sub_100017CD8();
    v30 = StringProtocol.range<A>(of:options:range:locale:)();
    v32 = v31;
    sub_10000CAAC(v29, &qword_1019F69B8);

    if (v32)
    {

      v33 = v117;
      v21 = v118;
      v34 = HIBYTE(v118) & 0xF;
      if ((v118 & 0x2000000000000000) == 0)
      {
        v34 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (!v34 || (v126 = String.subscript.getter(), v127 = v35, v128 = v36, v129 = v37, v124 = v33, v125 = v21, v38 = v114, v28(v114, 1, 1, v27), v39 = StringProtocol.range<A>(of:options:range:locale:)(), v41 = v40, v42 = v117, sub_10000CAAC(v38, &qword_1019F69B8), , (v41 & 1) != 0))
      {

        v58 = objc_opt_self();
        v59 = [v58 _atomicIncrementAssertCount];
        v126 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v126);
        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v61 = String._bridgeToObjectiveC()();

        v62 = [v61 lastPathComponent];

        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v66 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v59;
        v68 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v68;
        v69 = sub_1005CF04C();
        *(inited + 104) = v69;
        *(inited + 72) = v60;
        *(inited + 136) = &type metadata for String;
        v70 = sub_1000053B0();
        *(inited + 112) = v63;
        *(inited + 120) = v65;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v70;
        *(inited + 152) = 469;
        v71 = v126;
        *(inited + 216) = v68;
        *(inited + 224) = v69;
        *(inited + 192) = v71;
        v72 = v60;
        v73 = v71;
        v74 = static os_log_type_t.error.getter();
        sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v75 = static os_log_type_t.error.getter();
        v76 = _swiftEmptyArrayStorage;
        sub_100005404(v66, &_mh_execute_header, v75, "Error parsing calculate tokens", 30, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v77 = swift_allocObject();
        v77[2] = 8;
        v77[3] = 0;
        v77[4] = 0;
        v77[5] = 0;
        v78 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v79 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v80 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v81 = String._bridgeToObjectiveC()();

        [v58 handleFailureInFunction:v79 file:v80 lineNumber:469 isFatal:0 format:v81 args:v78];

        return v76;
      }
    }

    else
    {

      v42 = v122;
      v39 = v30;
    }

    v43 = v120;
    v1 = _swiftEmptyArrayStorage;
    if ((v21 & 0x1000000000000000) != 0)
    {
      v44 = String.UTF16View._foreignCount()();
    }

    else
    {
      v44 = String.UTF16View._nativeGetOffset(for:)();
    }

    v118 = v44;
    if ([v43 type] || (v4 = *(dispatch thunk of CalculateExpression.Token.errors.getter() + 16), , v4))
    {
      v117 = v39;
      v122 = v42;
      v124 = _swiftEmptyArrayStorage;
      v45 = dispatch thunk of CalculateExpression.Token.errors.getter();
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = v45 + 32;
        do
        {
          swift_getErrorValue();
          swift_errorRetain();
          v48 = Error.localizedDescription.getter();
          v50 = HIBYTE(v49) & 0xF;
          if ((v49 & 0x2000000000000000) == 0)
          {
            v50 = v48 & 0xFFFFFFFFFFFFLL;
          }

          if (v50)
          {
            v51 = [objc_allocWithZone(PKMathRecognitionError) init];
            v52 = String._bridgeToObjectiveC()();

            [v51 setErrorString:v52];

            v53 = v51;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v1 = v124;
          }

          else
          {
          }

          v47 += 8;
          --v46;
        }

        while (v46);
      }

      v8 = v113;
      v126 = v123;
      v127 = v113;
      v54 = String.Index.utf16Offset<A>(in:)();
      v55 = String._bridgeToObjectiveC()();

      v43 = v120;
      [v120 setText:v55];

      [v43 setCharacterRange:{v54, v118}];
      sub_100006370(0, &qword_101A0F1F0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v43 setErrors:isa];

      v4 = v43;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = v130;
      v12 = v116;
      v102 = v130;
      if (v115)
      {

        v115 = 1;
        v103 = v57;
      }

      else
      {
        if (v1 >> 62)
        {
          v4 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v115 = v4 != 0;
        v103 = v57;
      }
    }

    else
    {

      v8 = v113;
      v12 = v116;
    }

    v6 = String.index(_:offsetBy:)();
  }

  while (v12 != v104);

  if (v115)
  {

    return v102;
  }

  v76 = v102;
LABEL_66:
  if (!CalculateExpression.error.getter())
  {
LABEL_74:

    return v76;
  }

  swift_getErrorValue();
  v83 = Error.localizedDescription.getter();
  v85 = v84;

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v86)
  {

    goto LABEL_74;
  }

  v87 = [objc_allocWithZone(PKMathRecognitionError) init];
  v88 = String._bridgeToObjectiveC()();

  [v87 setErrorString:v88];

  v89 = [objc_allocWithZone(PKMathRecognitionToken) init];
  [v89 setType:5];
  [v89 setCharacterRange:{0, String.count.getter()}];
  v90 = String._bridgeToObjectiveC()();

  [v89 setText:v90];

  sub_1005B981C(&unk_1019F4D60);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_101465920;
  *(v91 + 32) = v87;
  sub_100006370(0, &qword_101A0F1F0);
  v92 = v87;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v89 setErrors:v93];

  v94 = v89;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v130;
}

id sub_100A83420(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

Class sub_100A834E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_100006370(0, a4);
  sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_100A835E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  type metadata accessor for UUID();
  sub_100006370(0, a4);
  sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *a6;
  swift_beginAccess();
  *(a1 + v10) = v9;
}

NSString sub_100A836D0()
{
  result = String._bridgeToObjectiveC()();
  static CRLMathCalculationController.mathHintsModeChangedNotificationName = result;
  return result;
}

NSString sub_100A83750()
{
  result = String._bridgeToObjectiveC()();
  static CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName = result;
  return result;
}

uint64_t *CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1019F1B90 != -1)
  {
    swift_once();
  }

  return &static CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName;
}

id sub_100A837FC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

char *sub_100A83880()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v37 = &v34 - v2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  *&v0[v7] = sub_100BD8068(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressions;
  *&v0[v8] = sub_100BD82AC(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroups;
  *&v0[v9] = sub_100BD82D0(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount] = 0;
  sub_1005B981C(&unk_101A0A338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v11 = CalculateKeyAllowPartialExpressions;
  *(inited + 32) = CalculateKeyAllowPartialExpressions;
  v12 = objc_allocWithZone(NSNumber);
  v13 = v11;
  v14 = [v12 initWithBool:1];
  v15 = sub_100006370(0, &qword_1019FF3E0);
  *(inited + 40) = v14;
  v16 = CalculateKeyConvertTrivial;
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = objc_allocWithZone(NSNumber);
  v18 = v16;
  v19 = [v17 initWithBool:1];
  *(inited + 104) = v15;
  *(inited + 80) = v19;
  sub_100BD79F4(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0A348);
  swift_arrayDestroy();
  type metadata accessor for CalculateDocument();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_calculateDocument] = CalculateDocument.init(expressions:options:synchronous:)();
  sub_100006370(0, &qword_1019F2D90);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v20 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v21 = v34;
  v22 = *(v35 + 104);
  v23 = v36;
  v22(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressionsQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v22(v21, v20, v23);
  *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = type metadata accessor for CRLMathCalculationController();
  v39.receiver = v0;
  v39.super_class = v24;
  v25 = objc_msgSendSuper2(&v39, "init");
  v26 = type metadata accessor for TaskPriority();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v29 = v25;
  sub_10064191C(0, 0, v27, &unk_101492808, v28);

  v30 = [objc_opt_self() standardUserDefaults];
  v38 = v30;
  swift_getKeyPath();
  v31 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v32 = *&v29[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver];
  *&v29[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver] = v31;

  return v29;
}

uint64_t sub_100A83E00()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A83E98, v2, v1);
}

uint64_t sub_100A83E98()
{

  if (qword_1019F2080 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100A83F30, 0, 0);
}

uint64_t sub_100A83F30()
{
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100658F10, v2, v1);
}

id CRLMathCalculationController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_mathHintsUserDefaultsObserver];
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLMathCalculationController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void CRLMathCalculationController.beginTrackingResultsFor(expression:containingDrawingLayoutOriginProvider:withSingleDrawingSortIndex:onUpdate:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v58 = a4;
  v59 = a2;
  v60 = type metadata accessor for UUID();
  v12 = *(v60 - 8);
  __chkstk_darwin(v60);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  CalculateExpression.id.getter();
  v18 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v19 = *(v6 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_7;
  }

  v20 = sub_10003E994(v17);
  if ((v21 & 1) == 0)
  {

LABEL_7:
    v57 = *(v12 + 8);
    v50 = v17;
    v51 = v60;
    v57(v50, v60);
    CalculateExpression.id.getter();
    *&v62 = v58;
    *(&v62 + 1) = a5;
    v63 = a1;
    v64 = 0;
    v65 = 0;
    v66 = v59;
    v67 = a3;
    v68 = a6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v7 + v18);
    *(v7 + v18) = 0x8000000000000000;
    sub_100A9F084(&v62, v14, isUniquelyReferenced_nonNull_native);
    v53 = v57;
    v57(v14, v51);
    *(v7 + v18) = v61;
    swift_endAccess();
    v54 = CalculateExpression.id.getter();
    __chkstk_darwin(v54);
    *(&v56 - 4) = a1;
    *(&v56 - 3) = v7;
    *(&v56 - 2) = v14;
    __chkstk_darwin(v55);
    *(&v56 - 4) = v7;
    *(&v56 - 3) = v14;
    *(&v56 - 2) = a1;
    withObservationTracking<A>(_:onChange:)();
    v53(v14, v51);
    return;
  }

  v22 = *(v19 + 56) + (v20 << 6);
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  v59 = *(v12 + 8);

  v25 = v23;
  v26 = v24;

  v59(v17, v60);

  v27 = objc_opt_self();
  v28 = [v27 _atomicIncrementAssertCount];
  *&v62 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v62);
  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v30 lastPathComponent];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v28;
  v37 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v37;
  v38 = sub_1005CF04C();
  *(inited + 104) = v38;
  *(inited + 72) = v29;
  *(inited + 136) = &type metadata for String;
  v39 = sub_1000053B0();
  *(inited + 112) = v32;
  *(inited + 120) = v34;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v39;
  *(inited + 152) = 119;
  v40 = v62;
  *(inited + 216) = v37;
  *(inited + 224) = v38;
  *(inited + 192) = v40;
  v41 = v29;
  v42 = v40;
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Tried to track a CalculateExpression that is already being tracked.", 67, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v45 = swift_allocObject();
  v45[2] = 8;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0;
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  [v27 handleFailureInFunction:v47 file:v48 lineNumber:119 isFatal:0 format:v49 args:v46];
}

uint64_t CRLMathCalculationController.stopTrackingResultsFor(expression:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  CalculateExpression.id.getter();
  swift_beginAccess();
  sub_1006F6F7C(v3, v7);
  v4 = *(v1 + 8);
  v4(v3, v0);
  swift_endAccess();
  sub_10000CAAC(v7, &qword_101A0A308);
  CalculateExpression.id.getter();
  sub_100A86F20(v3);
  v4(v3, v0);
  CalculateExpression.id.getter();
  sub_100A87ADC(v3);
  return (v4)(v3, v0);
}

void sub_100A84964(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_10003E994(a1);
    if (v9)
    {
      v10 = (*(v7 + 56) + (v8 << 6));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = v10[4];
      v43 = v10[5];
      v16 = v10[6];
      v45 = v15;

      v44 = v13;

      *&v47 = v12;
      *(&v47 + 1) = v11;
      v48 = v14;
      v49 = v13;
      v50 = v15;
      v51 = v43;
      v52 = v16;
      v53 = a2;
      swift_beginAccess();

      v17 = v44;
      v18 = v45;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_100A9F084(&v47, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = v46;
      swift_endAccess();

      return;
    }
  }

  v20 = objc_opt_self();
  v21 = [v20 _atomicIncrementAssertCount];
  *&v47 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v47);
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v23 lastPathComponent];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v21;
  v30 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v30;
  v31 = sub_1005CF04C();
  *(inited + 104) = v31;
  *(inited + 72) = v22;
  *(inited + 136) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 112) = v25;
  *(inited + 120) = v27;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v32;
  *(inited + 152) = 143;
  v33 = v47;
  *(inited + 216) = v30;
  *(inited + 224) = v31;
  *(inited + 192) = v33;
  v34 = v22;
  v35 = v33;
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v37, "Tried to update the sort index of an expression that is not being tracked.", 74, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  v38[4] = 0;
  v38[5] = 0;
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  [v20 handleFailureInFunction:v40 file:v41 lineNumber:143 isFatal:0 format:v42 args:v39];
}

uint64_t sub_100A84F54()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_100B39F54(*(v3 + 16), 0);
    v6 = sub_100B3B708(&v10, v5 + 4, v4, v3);
    swift_bridgeObjectRetain_n();
    sub_100035F90();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = v5;
  sub_100A822A8(&v10);

  v7 = *(v10 + 2);
  if (v7)
  {
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 48;
    do
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 64;
      --v7;
    }

    while (v7);
  }

  return dispatch thunk of CalculateDocument.expressions.setter();
}

uint64_t sub_100A8510C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = (*(a1 + 40))();
  v7 = v6;
  v9 = v3();
  if (vabdd_f64(v7, v8) <= 16.0 && v5 != v9)
  {
    goto LABEL_23;
  }

  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
LABEL_23:
    if (sub_1004A48FC())
    {
      if (v9 < v5)
      {
        return 1;
      }

      if (v5 < v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (v5 < v9)
    {
      return 1;
    }

    if (v9 >= v5)
    {
LABEL_14:
      if (v2 >= v4)
      {
        if (v4 >= v2)
        {
          v34 = objc_opt_self();
          v12 = [v34 _atomicIncrementAssertCount];
          v35 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v35);
          StaticString.description.getter();
          v13 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v14 = String._bridgeToObjectiveC()();

          v15 = [v14 lastPathComponent];

          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v19 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v12;
          v21 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v21;
          v22 = sub_1005CF04C();
          *(inited + 104) = v22;
          *(inited + 72) = v13;
          *(inited + 136) = &type metadata for String;
          v23 = sub_1000053B0();
          *(inited + 112) = v16;
          *(inited + 120) = v18;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v23;
          *(inited + 152) = 193;
          v24 = v35;
          *(inited + 216) = v21;
          *(inited + 224) = v22;
          *(inited + 192) = v24;
          v25 = v13;
          v26 = v24;
          v27 = static os_log_type_t.error.getter();
          sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v28 = static os_log_type_t.error.getter();
          sub_100005404(v19, &_mh_execute_header, v28, "Should not get a tie when sorting calculate expressions.", 56, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v29 = swift_allocObject();
          v29[2] = 8;
          v29[3] = 0;
          v29[4] = 0;
          v29[5] = 0;
          v30 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v31 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v32 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v33 = String._bridgeToObjectiveC()();

          [v34 handleFailureInFunction:v31 file:v32 lineNumber:193 isFatal:0 format:v33 args:v30];
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t CRLMathCalculationController.observedExpression(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_10003E994(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  v7 = (*(v4 + 56) + (v5 << 6));
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v14 = v7[6];
  v15 = v7[7];
  v16 = v12;

  swift_retain_n();
  v17 = v11;

LABEL_6:
  v19[0] = v9;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v11;
  v19[4] = v12;
  v19[5] = v13;
  v19[6] = v14;
  v19[7] = v15;
  sub_10000CAAC(v19, &qword_101A0A308);
  return v10;
}

uint64_t CRLMathCalculationController.resultForExpressionWithUUID(_:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_10003E994(a1);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = (*(v6 + 56) + (v7 << 6));
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = v9[4];
  v15 = v9[5];
  v16 = v9[6];
  v17 = v9[7];
  v18 = v13;

  v19 = v14;

  v30[0] = v11;
  v30[1] = v10;
  v30[2] = v12;
  v30[3] = v13;
  v30[4] = v14;
  v30[5] = v15;
  v30[6] = v16;
  v30[7] = v17;

  sub_10000CAAC(v30, &qword_101A0A308);
  v20 = CalculateExpression.result.getter();
  if (!v20)
  {
LABEL_6:

    return 0;
  }

  v21 = v20;
  sub_1005B981C(&qword_101A0EDA8);
  v22 = type metadata accessor for Locale();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10146C6B0;
  (*(v23 + 16))(v25 + v24, a2, v22);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setLocales:isa];

  if ([v21 isTrivial])
  {

    goto LABEL_6;
  }

  v28 = [v21 formattedResult];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v29;
}

void sub_100A85B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CalculateExpression.expression.getter();
  v8 = v7;
  v9 = CalculateExpression.result.getter();
  v10 = CalculateExpression.error.getter();
  if (v10)
  {
    *&v41 = v10;
    sub_1005B981C(&unk_1019F6B40);
    sub_100006370(0, &qword_101A0F2B8);
    if (swift_dynamicCast())
    {
      v11 = v40;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
  swift_beginAccess();
  v14 = *(a2 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_10003E994(a3);
  if ((v16 & 1) == 0)
  {

LABEL_16:

    goto LABEL_17;
  }

  v17 = (*(v14 + 56) + (v15 << 6));
  v34 = a3;
  v35 = *v17;
  v18 = v17[3];
  v32 = v17[4];
  v33 = v17[5];
  v19 = v17[6];
  v20 = v17[7];
  v37 = v17[1];
  v38 = v32;

  v36 = v19;

  v21 = v18;

  if (!v9)
  {
    v22 = v35;
    if (v18)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (v11)
    {
      if (!v32)
      {
        goto LABEL_24;
      }

      sub_100006370(0, &qword_101A0F2B8);
      v26 = v38;
      v27 = v11;
      v28 = static NSObject.== infix(_:_:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v32)
      {
        goto LABEL_24;
      }
    }

LABEL_17:

    return;
  }

  v22 = v35;
  if (v18)
  {
    sub_100006370(0, &qword_101A0F2C0);
    v23 = v21;
    v24 = v9;
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
      goto LABEL_19;
    }
  }

LABEL_24:
  *&v41 = v22;
  *(&v41 + 1) = v37;
  v42 = a1;
  v43 = v9;
  v44 = v11;
  v45 = v33;
  v46 = v36;
  v47 = v20;
  swift_beginAccess();
  v29 = v11;

  v30 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a2 + v13);
  *(a2 + v13) = 0x8000000000000000;
  sub_100A9F084(&v41, v34, isUniquelyReferenced_nonNull_native);
  *(a2 + v13) = v39;
  swift_endAccess();
  if (CalculateExpression.needsEvaluation.getter() & 1) != 0 || (CalculateExpression.isEvaluating.getter())
  {
  }

  else
  {
    v22(a1);
  }
}

uint64_t (*sub_100A85F44(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  return sub_100AB01CC;
}

uint64_t sub_100A860B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressions;
    v11 = result;
    swift_beginAccess();
    v12 = *&v11[v10];

    if (*(v12 + 16))
    {
      sub_10003E994(a2);
      v14 = v13;

      if (v14)
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
        type metadata accessor for MainActor();

        v16 = static MainActor.shared.getter();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = &protocol witness table for MainActor;
        v17[4] = a1;
        v17[5] = a3;
        sub_100641C1C(0, 0, v8, &unk_101492958, v17);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100A86278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A86370, v8, v7);
}

uint64_t sub_100A86370()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    CalculateExpression.id.getter();
    v6 = swift_task_alloc();
    v6[2] = v4;
    v6[3] = Strong;
    v6[4] = v2;
    v7 = swift_task_alloc();
    v7[2] = Strong;
    v7[3] = v2;
    v7[4] = v4;
    withObservationTracking<A>(_:onChange:)();

    (*(v3 + 8))(v2, v5);
  }

  **(v0 + 40) = Strong == 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t CRLMathCalculationController.pkMathRecognitionViewControllerSolvingStyle.getter()
{
  v0 = [CRLMathCalculationController mathHintsMode]_0();
  if (v0 < 4)
  {
    return qword_101492978[v0];
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100A8664C(char a1)
{
  v2 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount);
  v4 = 1;
  if ((a1 & 1) == 0)
  {
    v4 = -1;
  }

  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v7 = v3 > 0;
  *(v1 + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount) = v6;
  sub_100A86778();
  if ((v7 ^ (*&v2[v1] < 1)))
  {
    return;
  }

  v2 = objc_opt_self();
  [v2 begin];
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1019F1B90 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  [v1 postNotificationName:static CRLMathCalculationController.mathHintsSuspensionStatusChangedNotificationName object:0 userInfo:0];

  [v2 commit];
}

void sub_100A86778()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_suspendCount) & 0x8000000000000000) != 0)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 343;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Math solving suspend count should never go below zero. Did you call resumeSolving() without calling suspendSolving()?", 117, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:343 isFatal:0 format:v23 args:v20];
  }
}

uint64_t sub_100A86B1C(void *a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1009A0DE4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101893BD8;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_100A86D4C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressions;
  swift_beginAccess();
  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_100A9CB4C(v11, v8, isUniquelyReferenced_nonNull_native, &qword_101A0F1A0, &unk_1014927F0);
  (*(v5 + 8))(v8, v4);
  *(a1 + v10) = v14;
  return swift_endAccess();
}

uint64_t sub_100A86F88(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v18 = 0;
  v7 = *&v1[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_pkExpressionsQueue];
  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = &v18;
  *(v9 + 24) = v1;
  (*(v4 + 32))(v9 + v8, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100AAFF2C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10002AAE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_101893B88;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

uint64_t sub_100A871D0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v18 = 0;
  v7 = *&v1[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue];
  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = &v18;
  *(v9 + 24) = v1;
  (*(v4 + 32))(v9 + v8, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100AAFE5C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10002AAE4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_101893B10;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

void sub_100A8740C(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  swift_beginAccess();
  v8 = *(a2 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_10003E994(a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *a1;
  *a1 = v11;
}

id sub_100A874C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_100A875CC(uint64_t a1, void *a2)
{
  v23 = a2;
  v4 = type metadata accessor for DispatchQoS();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v2[OBJC_IVAR____TtC8Freeform28CRLMathCalculationController_expressionStrokeGroupsQueue];
  static DispatchWorkItemFlags.barrier.getter();
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v8 + 32))(v16 + v14, v10, v7);
  v17 = v23;
  *(v16 + v15) = v23;
  aBlock[4] = sub_100AAFE44;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101893A98;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  v20 = v2;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v25 + 8))(v6, v26);
  (*(v11 + 8))(v13, v24);
}

uint64_t sub_100A878D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2, v6);
  swift_beginAccess();
  v10 = a3;
  sub_100BC4148(a3, v8);
  return swift_endAccess();
}

uint64_t sub_100A87B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22[0] = a2;
  v22[1] = a3;
  v26 = type metadata accessor for DispatchQoS();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v5[*v22[0]];
  static DispatchWorkItemFlags.barrier.getter();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = v24;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);
  v20 = v5;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v7 + 8))(v9, v26);
  (*(v14 + 8))(v16, v23);
}

uint64_t sub_100A87E14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, char *))
{
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2, v7);
  swift_beginAccess();
  a4(0, v9);
  return swift_endAccess();
}

uint64_t sub_100A87F34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100A88068(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = 4 * v2;
  while (1)
  {
    v4._countAndFlagsBits = String.subscript.getter();
    String.append(_:)(v4);

    if (v3 == String.index(_:offsetBy:)() >> 14)
    {
      break;
    }

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
  }

  return 0;
}

uint64_t sub_100A8812C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1005B981C(&qword_101A0EF08);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100A88504(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = type metadata accessor for UUID();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1005B981C(&qword_101A0EF00);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 8);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v41 = *(*(v7 + 56) + 16 * v21);
      if ((v40 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      v23 = *(v22 + 24);
      ObjectType = swift_getObjectType();
      v25 = v38;
      (*(v23 + 32))(ObjectType, v23);
      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);
      v26 = v39;
      dispatch thunk of Hashable.hash(into:)();
      (*v37)(v25, v26);
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v41;
      ++*(v9 + 16);
      v7 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v3 = v9;
  return result;
}

uint64_t sub_100A888BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1005B981C(&qword_101A0EFB8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_10000BF3C(v21, v30);
      }

      else
      {
        sub_100064288(v21, v30);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_10000BF3C(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100A88CB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1005B981C(&qword_101A0EFB0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 32 * v21);
      if (a2)
      {
        v24 = v23[1];
        v33 = *v23;
        v34 = v24;
      }

      else
      {
        sub_10000BE14(v23, &v33, &unk_1019F4D00);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = (*(v7 + 56) + 32 * v15);
      v17 = v34;
      *v16 = v33;
      v16[1] = v17;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100A890C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1005B981C(&qword_101A0EEF8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      if (a2)
      {
        v24 = v23[1];
        v33 = *v23;
        v34 = v24;
      }

      else
      {
        sub_10000BE14(v23, &v33, &unk_1019F4D00);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 32 * v15);
      v17 = v34;
      *v16 = v33;
      v16[1] = v17;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}