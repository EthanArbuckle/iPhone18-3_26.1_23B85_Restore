id sub_1001FBFE4(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder;
  v2[OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder] = a2;
  v4 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderTextView];
  result = [v2 text];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10 || (v11 = 1.0, v2[v3] == 1))
    {
      v11 = 0.0;
    }

    return [v4 setAlpha:v11];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s17SequoiaTranslator19PlaceholderTextViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderTextView;
  v2 = [objc_allocWithZone(UITextView) init];
  [v2 setUserInteractionEnabled:0];
  [v2 setBackgroundColor:0];
  [v2 setEditable:0];
  [v2 setSelectable:0];
  [v2 setAutoresizingMask:18];

  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder) = 0;
  v3 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholder);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001FC224()
{
  result = qword_1003B7B58;
  if (!qword_1003B7B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B7B58);
  }

  return result;
}

char *sub_1001FC270()
{
  sub_100005AD4(&qword_1003BBD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002D3160;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v43 = v2;

  v4 = sub_1001FC704();
  if (!v4)
  {
    v4 = sub_1001FCC90();
  }

  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_39;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v6; i = v1)
  {
    v7 = 0;
    v41 = v5 & 0xFFFFFFFFFFFFFF8;
    v42 = v5 & 0xC000000000000001;
    v1 = v43;
    v8 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v8 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 * v8;
    v9 = 0.0;
    v10 = _swiftEmptyArrayStorage;
    v40 = v5;
    while (1)
    {
      v45 = v10;
      if (v42)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v41 + 16))
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      dispatch thunk of WordTimingInfo.textRange.getter();
      Range<>.init(_:in:)();
      if (v15)
      {

        if (qword_1003A92B0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000078E8(v29, qword_1003D2920);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        v32 = i;
        if (os_log_type_enabled(v30, v31))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Range didn't match display text", v33, 2u);
        }

        goto LABEL_31;
      }

      v16 = v14;
      v17 = v3;
      String.subscript.getter();
      v18 = static String._fromSubstring(_:)();
      v20 = v19;

      v44 = v12;
      dispatch thunk of WordTimingInfo.startTime.getter();
      v22 = v21 - v9;
      if (v22 < 0.0)
      {

        if (qword_1003A92B0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_1000078E8(v34, qword_1003D2920);
        v30 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        v32 = i;
        if (os_log_type_enabled(v30, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v30, v35, "Calculated negative timeSinceLastWord", v36, 2u);
        }

LABEL_31:

        return v32;
      }

      v10 = v45;
      if (v39 <= v16 >> 14)
      {
        v24 = 0;
      }

      else if (String.subscript.getter() == 32 && v23 == 0xE100000000000000)
      {

        v24 = 1;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10028D350(0, *(v45 + 2) + 1, 1, v45);
      }

      v26 = *(v10 + 2);
      v25 = *(v10 + 3);
      if (v26 >= v25 >> 1)
      {
        v10 = sub_10028D350((v25 > 1), v26 + 1, 1, v10);
      }

      *(v10 + 2) = v26 + 1;
      v27 = &v10[32 * v26];
      *(v27 + 4) = v18;
      *(v27 + 5) = v20;
      *(v27 + 6) = v22;
      v27[56] = v24 & 1;
      dispatch thunk of WordTimingInfo.startTime.getter();
      v9 = v28;

      ++v7;
      v5 = v40;
      v3 = v17;
      v1 = v43;
      if (v13 == v6)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_41:

  return v10;
}

unint64_t sub_1001FC704()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1001FC764(v0);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;

    sub_1001FD5D0(v3);
  }

  sub_1001FD5E0(v1);
  return v2;
}

unint64_t sub_1001FC764(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D2920);
    v10 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v10, v20, "There is no given word timing info", v21, 2u);
    }

    goto LABEL_38;
  }

  v3 = *(v1 + 8 * v2 + 24);

  if (v3 >> 62)
  {
LABEL_25:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_26:
    length = 0;
    v10 = 0;
LABEL_27:
    if (length == String.count.getter())
    {
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000078E8(v26, qword_1003D2920);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        if (v3 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v30;

        *(v29 + 12) = 2048;
        *(v29 + 14) = String.count.getter();

        _os_log_impl(&_mh_execute_header, v27, v28, "WordTimingInfo is valid. count: %ld. displayText.count: %ld", v29, 0x16u);
      }

      else
      {
      }

      return v3;
    }

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000078E8(v31, qword_1003D2920);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "WordTimingInfo invalid, union of ranges do not match display text length", v34, 2u);
    }

LABEL_38:
    return 0;
  }

LABEL_4:
  v5 = 0;
  location = 0;
  length = 0;
  v8 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v3 + 8 * v5 + 32);
    }

    v10 = v9;
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v39.location = dispatch thunk of WordTimingInfo.textRange.getter();
    v39.length = v12;
    v37.location = location;
    v37.length = length;
    v13 = NSUnionRange(v37, v39);
    location = v13.location;
    length = v13.length;
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v5;
    v8 = v10;
    if (v11 == v4)
    {
      goto LABEL_27;
    }
  }

  v14 = dispatch thunk of WordTimingInfo.textRange.getter();
  v15 = v10;
  v17 = v16;
  v36 = v15;
  v40.location = dispatch thunk of WordTimingInfo.textRange.getter();
  v40.length = v18;
  v38.location = v14;
  v38.length = v17;
  if (NSIntersectionRange(v38, v40).length <= 0)
  {

    v10 = v15;
    goto LABEL_5;
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000078E8(v22, qword_1003D2920);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "WordTimingInfo invalid, text range overlaps with previous one", v25, 2u);
  }

  return 0;
}

void *sub_1001FCC90()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = sub_1001FCCF0(v0);
    *(v0 + 136) = v1;
  }

  return v1;
}

void *sub_1001FCCF0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = v44 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001FD514(a1 + 88, v48);
  if (!v49)
  {
    sub_100009EBC(v48, &unk_1003B9EC0);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_16;
  }

  sub_1000085CC(v48, v49);
  dispatch thunk of TranslationResult.locale.getter();
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_100008664(v48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_16:
    sub_100009EBC(v4, &qword_1003AFCE0);
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000078E8(v24, qword_1003D2920);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "WordTimingInfo does not have valid locale return []", v27, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v46 = v6;
  v47 = v5;
  (*(v6 + 32))(v8, v4, v5);
  v9 = String._bridgeToObjectiveC()();
  v45 = v8;
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v11 = [v9 lt_wordRangesWithoutOmittingPunctuationWithLocale:isa];

  sub_1001FD584();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v44[1] = a1;
    v48[0] = _swiftEmptyArrayStorage;
    sub_1000C4DD4(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v14 = 0;
    v15 = v48[0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 rangeValue];
      v20 = v19;

      v48[0] = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000C4DD4((v21 > 1), v22 + 1, 1);
        v15 = v48[0];
      }

      ++v14;
      v15[2] = v22 + 1;
      v23 = &v15[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
    }

    while (v13 != v14);

    v29 = v15[2];
    if (v29)
    {
      goto LABEL_23;
    }

LABEL_29:

    if (qword_1003A92B0 == -1)
    {
LABEL_30:
      v36 = type metadata accessor for Logger();
      sub_1000078E8(v36, qword_1003D2920);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v41 = v46;
      v40 = v47;
      v42 = v45;
      if (v39)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "No words in display text", v43, 2u);
      }

      (*(v41 + 8))(v42, v40);
      return _swiftEmptyArrayStorage;
    }

LABEL_35:
    swift_once();
    goto LABEL_30;
  }

  v15 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage[2];
  if (!v29)
  {
    goto LABEL_29;
  }

LABEL_23:
  v48[0] = _swiftEmptyArrayStorage;
  v30 = type metadata accessor for WordTimingInfo();
  v31 = 0;
  v32 = v15 + 5;
  do
  {
    v33 = objc_allocWithZone(v30);
    v34 = WordTimingInfo.init(startTiming:textRange:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v31;
    v32 += 2;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v29 != v31);
  v35 = v48[0];

  (*(v46 + 8))(v45, v47);
  return v35;
}

uint64_t sub_1001FD30C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 144);
  v7 = v6;
  if (v6 == 1)
  {
    sub_100005AD4(&qword_1003AF470);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002D3160;
    UUID.init()();
    v8 = UUID.uuidString.getter();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    *(v7 + 48) = xmmword_1002D9150;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 64) = 0;
    v11 = *(v1 + 144);
    *(v1 + 144) = v7;

    sub_1001FD5D0(v11);
  }

  sub_1001FD5E0(v6);
  return v7;
}

uint64_t sub_1001FD468()
{

  sub_100009EBC(v0 + 48, &unk_1003AECE0);
  sub_100009EBC(v0 + 88, &unk_1003B9EC0);
  sub_1001FD5D0(*(v0 + 128));

  sub_1001FD5D0(*(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1001FD514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003B9EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001FD584()
{
  result = qword_1003B5150;
  if (!qword_1003B5150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B5150);
  }

  return result;
}

uint64_t sub_1001FD5D0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001FD5E0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001FD5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1001FD638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001FD6B8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v100 = sub_100005AD4(&qword_1003B7CA8);
  __chkstk_darwin(v100);
  v99 = &v88[-v3];
  v101 = sub_100005AD4(&qword_1003B7CB0);
  v4 = __chkstk_darwin(v101);
  v103 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v102 = &v88[-v6];
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_100005AD4(&qword_1003B7CB8);
  __chkstk_darwin(v97);
  v12 = &v88[-v11];
  v13 = sub_100005AD4(&qword_1003B7CC0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v88[-v18];
  v20 = sub_100005AD4(&qword_1003B7CC8);
  v21 = __chkstk_darwin(v20 - 8);
  v98 = &v88[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = a1[1];
  v105 = &v88[-v24];
  v106 = v23;
  if (v23 == 2)
  {
    (*(v14 + 56))();
    v25 = *(a1 + 3);
  }

  else
  {
    v93 = v19;
    v94 = v17;
    v95 = v14;
    *&v96 = v13;
    v111 = sub_1000314A0(v23);
    v112 = v26;
    sub_10001F278();
    v27 = Text.init<A>(_:)();
    v92 = v12;
    v91 = v7;
    v29 = v28;
    v31 = v30;
    static Font.caption2.getter();
    v32 = v10;
    v33 = Text.font(_:)();
    v35 = v34;
    v89 = v36;
    v90 = v37;

    v38 = v29;
    v39 = v92;
    sub_10002EA54(v27, v38, v31 & 1);

    v111 = v33;
    v112 = v35;
    v40 = v89 & 1;
    LOBYTE(v113) = v89 & 1;
    v114 = v90;
    v41 = v91;
    (*(v8 + 104))(v32, enum case for DynamicTypeSize.medium(_:), v91);
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v32, v41);
    sub_10002EA54(v33, v35, v40);

    KeyPath = swift_getKeyPath();
    v43 = v39 + *(v97 + 36);
    *v43 = KeyPath;
    *(v43 + 8) = 1;
    *(v43 + 16) = 0;
    v25 = *(a1 + 3);
    v44 = v25;
    if (!v25)
    {
      v44 = static Color.accentColor.getter();
    }

    v45 = swift_getKeyPath();
    v46 = v94;
    sub_100023BD4(v39, v94, &qword_1003B7CB8);
    v47 = v96;
    v48 = (v46 + *(v96 + 36));
    *v48 = v45;
    v48[1] = v44;
    v49 = v46;
    v50 = v93;
    sub_100023BD4(v49, v93, &qword_1003B7CC0);
    v51 = v50;
    v52 = v105;
    sub_100023BD4(v51, v105, &qword_1003B7CC0);
    (*(v95 + 56))(v52, 0, 1, v47);
  }

  v53 = *a1;
  v54 = a1[32];
  v55 = *(a1 + 5);
  v56 = a1[48];
  v57 = swift_allocObject();
  v58 = *(a1 + 1);
  *(v57 + 16) = *a1;
  *(v57 + 32) = v58;
  *(v57 + 48) = *(a1 + 2);
  *(v57 + 64) = a1[48];
  v111 = v25;
  LOBYTE(v112) = v53;
  BYTE1(v112) = v54;
  v113 = v55;
  LOBYTE(v114) = v56;
  v115 = sub_1001FE170;
  v116 = v57;
  v59 = objc_opt_self();
  swift_retain_n();

  v60 = [v59 mainBundle];
  v117._object = 0xE000000000000000;
  v61._object = 0x80000001002F0FA0;
  v61._countAndFlagsBits = 0xD00000000000001ELL;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v117._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v117);

  v97 = sub_100005AD4(&qword_1003A9AB0);
  v63 = swift_allocObject();
  v96 = xmmword_1002D3160;
  *(v63 + 16) = xmmword_1002D3160;
  v64 = sub_1000314A0(v106);
  v66 = v65;
  *(v63 + 56) = &type metadata for String;
  v67 = sub_100031CD0();
  *(v63 + 64) = v67;
  *(v63 + 32) = v64;
  *(v63 + 40) = v66;
  v68 = String.init(format:_:)();
  v70 = v69;

  v109 = v68;
  v110 = v70;
  sub_10001F278();
  v71 = Text.init<A>(_:)();
  v73 = v72;
  LOBYTE(v66) = v74;
  sub_1001FE19C();
  v75 = v99;
  View.accessibility(label:)();
  sub_10002EA54(v71, v73, v66 & 1);

  v76 = swift_allocObject();
  *(v76 + 16) = v96;
  v77 = sub_1000314A0(v106);
  *(v76 + 56) = &type metadata for String;
  *(v76 + 64) = v67;
  *(v76 + 32) = v77;
  *(v76 + 40) = v78;
  v111 = String.init(format:_:)();
  v112 = v79;
  v109 = 32;
  v110 = 0xE100000000000000;
  v107 = 95;
  v108 = 0xE100000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v80 = v102;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_100009EBC(v75, &qword_1003B7CA8);
  if (qword_1003A91D8 != -1)
  {
    swift_once();
  }

  v81 = (v80 + *(v101 + 36));
  *v81 = qword_1003D2580;
  v81[1] = sub_1000823C8;
  v81[2] = 0;
  v82 = v105;
  v83 = v98;
  sub_1001FE1F0(v105, v98);
  v84 = v103;
  sub_1001FE260(v80, v103);
  v85 = v104;
  sub_1001FE1F0(v83, v104);
  v86 = sub_100005AD4(&qword_1003B7CD8);
  sub_1001FE260(v84, v85 + *(v86 + 48));
  sub_100009EBC(v80, &qword_1003B7CB0);
  sub_1001FE2D0(v82);
  sub_100009EBC(v84, &qword_1003B7CB0);
  return sub_1001FE2D0(v83);
}

uint64_t sub_1001FE050@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = *(v1 + 32);
  v9 = *(v1 + 48);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v4 = sub_100005AD4(&qword_1003B7C90);
  sub_1001FD6B8(v8, a1 + *(v4 + 44));
  *(a1 + *(sub_100005AD4(&qword_1003B7C98) + 36)) = 257;
  v5 = static VerticalAlignment.center.getter();
  result = sub_100005AD4(&qword_1003B7CA0);
  v7 = (a1 + *(result + 36));
  *v7 = v5;
  v7[1] = variable initialization expression of PTFarFieldMetrics.spl;
  v7[2] = 0;
  return result;
}

uint64_t sub_1001FE130()
{

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_1001FE19C()
{
  result = qword_1003B7CD0;
  if (!qword_1003B7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7CD0);
  }

  return result;
}

uint64_t sub_1001FE1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B7CC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FE260(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B7CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FE2D0(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B7CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001FE33C()
{
  result = qword_1003B7CE0;
  if (!qword_1003B7CE0)
  {
    sub_100005EA8(&qword_1003B7CA0);
    sub_1001FE3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7CE0);
  }

  return result;
}

unint64_t sub_1001FE3C8()
{
  result = qword_1003B7CE8;
  if (!qword_1003B7CE8)
  {
    sub_100005EA8(&qword_1003B7C98);
    sub_1001FE454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7CE8);
  }

  return result;
}

unint64_t sub_1001FE454()
{
  result = qword_1003B7CF0;
  if (!qword_1003B7CF0)
  {
    sub_100005EA8(&qword_1003B7CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7CF0);
  }

  return result;
}

Class sub_1001FE4B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B7DF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  type metadata accessor for ExpandedHitAreaButton();
  sub_10000A2CC(0, &qword_1003A9940);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v50.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v50).super.super.super.super.isa;
  [(objc_class *)v10.super.super.super.super.isa setShowsMenuAsPrimaryAction:0];
  if ((v2[3] & 1) == 0)
  {
    v11 = -v2[2];
    v12 = (v10.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator21ExpandedHitAreaButton_hitAreaInsets);
    *v12 = v11;
    v12[1] = v11;
    v12[2] = v11;
    v12[3] = v11;
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    isa = v10.super.super.super.super.isa;
    v48 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v44 = 0x80000001002F1080;
    v45 = "PLAYBACK_RATE_SPEED_HALF";
    v43 = objc_opt_self();
    v42 = objc_opt_self();
    v13 = 0;
    v49 = *v2;
    v41 = xmmword_1002D3160;
    do
    {
      v14 = v13 + 1;
      v15 = *(&off_10037DC28 + v13 + 32);
      v16 = [v43 mainBundle];
      v52._object = v44;
      v17._object = (v45 | 0x8000000000000000);
      v52._countAndFlagsBits = 0xD00000000000001FLL;
      v17._countAndFlagsBits = 0xD000000000000013;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v52);

      sub_100005AD4(&qword_1003A9AB0);
      v19 = swift_allocObject();
      *(v19 + 16) = v41;
      v20 = sub_1000314A0(v15);
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_100031CD0();
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      String.init(format:_:)();

      v23 = String._bridgeToObjectiveC()();
      v24 = [v42 systemImageNamed:v23];

      v25 = swift_allocObject();
      v26 = *(v2 + 1);
      *(v25 + 16) = *v2;
      *(v25 + 32) = v26;
      *(v25 + 48) = *(v2 + 2);
      *(v25 + 64) = v15;
      sub_1001FF328(&v49, v47);

      v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v47[0] = 0;
      v47[1] = 0xE000000000000000;
      v28 = v27;
      v29._countAndFlagsBits = 0x6574615279616C70;
      v29._object = 0xE90000000000005FLL;
      String.append(_:)(v29);
      v46 = v15;
      _print_unlocked<A, B>(_:_:)();
      v30 = String._bridgeToObjectiveC()();

      [v28 setAccessibilityIdentifier:v30];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 = v14;
    }

    while (v14 != 4);
    v31 = v48;
    if ((v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
    {
      sub_10000A2CC(0, &unk_1003B2900);
      v10.super.super.super.super.isa = isa;
      v37 = isa;

      v33 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v10.super.super.super.super.isa = isa;
      v32 = isa;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_10000A2CC(0, &unk_1003B2900);
      v33 = v31;
    }

    sub_10000A2CC(0, &qword_1003AB700);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v51.value.super.isa = 0;
    v51.is_nil = 0;
    v35 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v51, 0, 0xFFFFFFFFFFFFFFFFLL, v33, v38).super.super.isa;
    [(objc_class *)v10.super.super.super.super.isa setMenu:v35];
  }

  return v10.super.super.super.super.isa;
}

uint64_t sub_1001FEA88()
{
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D28F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "UIKit play button tap", v3, 2u);
  }

  sub_100005AD4(&qword_1003B7DF0);
  UIViewRepresentableContext.coordinator.getter();
  v4 = *(v6 + 16);

  v4(0, 1);
}

uint64_t sub_1001FEBF0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  type metadata accessor for PlayButtonWithRatesMenu.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

uint64_t sub_1001FEC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001FEFE4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001FECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001FEFE4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001FED10()
{
  sub_1001FEFE4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_1001FEEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandedHitAreaButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001FEF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001FEF84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001FEFE4()
{
  result = qword_1003B7DE8;
  if (!qword_1003B7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7DE8);
  }

  return result;
}

void sub_1001FF038(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = [objc_opt_self() configurationWithPointSize:26.0];
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() _systemImageNamed:v5 withConfiguration:v8];

  [a1 setImage:v6 forState:0];
  if (a3)
  {
    sub_10000A2CC(0, &qword_1003B2990);
    swift_retain_n();
    v7 = UIColor.init(_:)();
    [a1 setTintColor:v7];
  }
}

uint64_t sub_1001FF19C()
{
  v1 = sub_100005AD4(&qword_1003B7DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001FF230()
{
  sub_100005AD4(&qword_1003B7DF0);

  return sub_1001FEA88();
}

uint64_t sub_1001FF2AC()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1001FF328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B7DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001FF4B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PortraitOnlyAlertController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t PTBroadcastPlayButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PTBroadcastPlayButton();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_1001FF6E0(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001FF748(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v14 = v1;
  Button.init(action:label:)();
  v8 = static Color.secondaryTranslateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v15 = v8;
  v10 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003B5BF8);
  v12 = (a1 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t type metadata accessor for PTBroadcastPlayButton()
{
  result = qword_1003B7E80;
  if (!qword_1003B7E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FF6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PTBroadcastPlayButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FF748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PTBroadcastPlayButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FF7B0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001FF808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1001FF6E0(v2, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001FF748(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v14 = v2;
  Button.init(action:label:)();
  v8 = static Color.secondaryTranslateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v15 = v8;
  v10 = AnyShapeStyle.init<A>(_:)();
  result = sub_100005AD4(&qword_1003B5BF8);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  return result;
}

uint64_t sub_1001FF9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayButton.Size();
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

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1001FFAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayButton.Size();
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
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1001FFB5C()
{
  v1 = type metadata accessor for PTBroadcastPlayButton();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = type metadata accessor for PlayButton.Size();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  if (*(v0 + v4 + *(v2 + 32)))
  {
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001FFC5C()
{
  v1 = type metadata accessor for PTBroadcastPlayButton();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1001FFCDC(char a1, char a2)
{
  v5 = sub_100005AD4(&qword_1003B5130);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v39 = &v38 - v10;
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v38 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v38 - v22;
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      v24 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart;
      swift_beginAccess();
      sub_100081AB8(v2 + v24, v8);
      if ((*(v14 + 48))(v8, 1, v13) == 1)
      {
        sub_10010A82C(v8);
      }

      else
      {
        (*(v14 + 32))(v17, v8, v13);
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v27 = v26;
        v28 = *(v14 + 8);
        v28(v20, v13);
        v28(v17, v13);
        *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration) = v27 + *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration);
      }

      v29 = *(v14 + 56);
      v30 = v39;
      v29(v39, 1, 1, v13);
      v31 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
      swift_beginAccess();
      sub_100081B28(v30, v2 + v31);
      swift_endAccess();
      static Date.now.getter();
      v29(v30, 0, 1, v13);
      swift_beginAccess();
      v32 = v2 + v31;
LABEL_12:
      sub_100081B28(v30, v32);
      result = swift_endAccess();
    }
  }

  else if (a2)
  {
    v25 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
    swift_beginAccess();
    sub_100081AB8(v2 + v25, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10010A82C(v12);
    }

    else
    {
      (*(v14 + 32))(v23, v12, v13);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v34 = v33;
      v35 = *(v14 + 8);
      v35(v20, v13);
      v35(v23, v13);
      *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration) = v34 + *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration);
    }

    v36 = *(v14 + 56);
    v30 = v39;
    v36(v39, 1, 1, v13);
    swift_beginAccess();
    sub_100081B28(v30, v2 + v25);
    swift_endAccess();
    static Date.now.getter();
    v36(v30, 0, 1, v13);
    v37 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart;
    swift_beginAccess();
    v32 = v2 + v37;
    goto LABEL_12;
  }

  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_farFieldInputSource) = a2 & 1;
  return result;
}

uint64_t PTFarFieldMetrics.deinit()
{
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart);
  return v0;
}

uint64_t PTFarFieldMetrics.__deallocating_deinit()
{
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PTFarFieldMetrics()
{
  result = qword_1003B7EE8;
  if (!qword_1003B7EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020028C()
{
  sub_10010A704();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100200350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);
}

uint64_t sub_1002003F8()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130);
  v3 = __chkstk_darwin(v2 - 8);
  v78 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v79 = &v73 - v6;
  v7 = __chkstk_darwin(v5);
  v77 = &v73 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v73 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v73 - v13;
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v76 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v75 = &v73 - v22;
  v23 = __chkstk_darwin(v21);
  v74 = &v73 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v73 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v73 - v29;
  __chkstk_darwin(v28);
  v32 = &v73 - v31;
  v33 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionStart;
  swift_beginAccess();
  sub_100081AB8(v1 + v33, v16);
  v81 = *(v18 + 48);
  v80 = v18 + 48;
  if (v81(v16, 1, v17) == 1)
  {
    sub_10010A82C(v16);
  }

  else
  {
    (*(v18 + 32))(v32, v16, v17);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v35 = v34;
    v73 = v18;
    v36 = *(v18 + 8);
    v36(v30, v17);
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionDuration) = v35;
    if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_coachingPrompts))
    {
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v38 = v37;
      v36(v30, v17);
      v36(v32, v17);
      *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_durationSessionAtCoachingPromptSecs) = v38;
    }

    else
    {
      v36(v32, v17);
    }

    v18 = v73;
  }

  v39 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADStart;
  swift_beginAccess();
  sub_100081AB8(v1 + v39, v14);
  if (v81(v14, 1, v17) == 1)
  {
    sub_10010A82C(v14);
  }

  else
  {
    (*(v18 + 32))(v27, v14, v17);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v41 = v40;
    v42 = *(v18 + 8);
    v42(v30, v17);
    v42(v27, v17);
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADDuration) = v41 + *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADDuration);
  }

  v43 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVAStart;
  swift_beginAccess();
  sub_100081AB8(v1 + v43, v11);
  if (v81(v11, 1, v17) == 1)
  {
    sub_10010A82C(v11);
  }

  else
  {
    v44 = v74;
    (*(v18 + 32))(v74, v11, v17);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v46 = v45;
    v47 = *(v18 + 8);
    v47(v30, v17);
    v47(v44, v17);
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVADuration) = v46 + *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVADuration);
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v48 = qword_1003D2470;
  swift_getKeyPath();
  v82 = v48;
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v48 + 96);
  v50 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsMicDuration;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsMicDuration) = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration);
  v51 = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration);
  v74 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneMicDuration;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneMicDuration) = v51;
  v52 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
  swift_beginAccess();
  v53 = v77;
  sub_100081AB8(v49 + v52, v77);
  if (v81(v53, 1, v17) == 1)
  {

    sub_10010A82C(v53);
  }

  else
  {
    v54 = v75;
    (*(v18 + 32))(v75, v53, v17);

    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v56 = v55;
    v57 = v18;
    v58 = *(v18 + 8);
    v58(v30, v17);
    v58(v54, v17);
    v18 = v57;
    *(v1 + v50) = v56 + *(v1 + v50);
    v59 = v79;
    (*(v57 + 56))(v79, 1, 1, v17);
    swift_beginAccess();
    sub_100081B28(v59, v49 + v52);
    swift_endAccess();
  }

  v60 = v78;
  v61 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart;
  swift_beginAccess();
  sub_100081AB8(v49 + v61, v60);
  if (v81(v60, 1, v17) == 1)
  {
    sub_10010A82C(v60);
  }

  else
  {
    v62 = v76;
    (*(v18 + 32))(v76, v60, v17);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v64 = v63;
    v65 = *(v18 + 8);
    v65(v30, v17);
    v65(v62, v17);
    *&v74[v1] = v64 + *&v74[v1];
    v66 = v79;
    (*(v18 + 56))(v79, 1, 1, v17);
    swift_beginAccess();
    sub_100081B28(v66, v49 + v61);
    swift_endAccess();
  }

  v67 = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR + 4);
  v68 = v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsSNR;
  *v68 = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsSNR);
  *(v68 + 4) = v67;
  v69 = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR + 4);
  v70 = v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneSNR;
  *v70 = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneSNR);
  *(v70 + 4) = v69;
  v71 = *(v49 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_spl);

  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_spl) = v71;
  return result;
}

uint64_t sub_100200D54()
{
  v1 = sub_100005AD4(&qword_1003B5130);
  v2 = __chkstk_darwin(v1 - 8);
  v22[0] = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = v22 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = v22 - v8;
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVAStart;
  swift_beginAccess();
  sub_100081AB8(v0 + v12, v11);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  sub_10010A82C(v11);
  if (v16 == 1)
  {
    static Date.now.getter();
    (*(v14 + 56))(v9, 0, 1, v13);
    swift_beginAccess();
    sub_100081B28(v9, v0 + v12);
    swift_endAccess();
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v17 = qword_1003D2470;
  swift_getKeyPath();
  v22[4] = v17;
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + 96);
  if (*(v18 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_farFieldInputSource))
  {
    v19 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart;
    swift_beginAccess();
    v20 = v18 + v19;
    v6 = v22[0];
  }

  else
  {
    v19 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
    swift_beginAccess();
    v20 = v18 + v19;
  }

  sub_100081AB8(v20, v6);
  if (v15(v6, 1, v13) != 1)
  {
    return sub_10010A82C(v6);
  }

  sub_10010A82C(v6);
  static Date.now.getter();
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100081B28(v9, v18 + v19);
  swift_endAccess();
}

uint64_t sub_1002010A8()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v47 - v7;
  v9 = __chkstk_darwin(v6);
  v53 = &v47 - v10;
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v49 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v48 = &v47 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v47 - v20;
  __chkstk_darwin(v19);
  v23 = &v47 - v22;
  v24 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVAStart;
  swift_beginAccess();
  sub_100081AB8(v1 + v24, v12);
  v52 = *(v14 + 48);
  v25 = v52(v12, 1, v13);
  v51 = v5;
  if (v25 == 1)
  {
    sub_10010A82C(v12);
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v27 = v26;
    v28 = *(v14 + 8);
    v28(v21, v13);
    v28(v23, v13);
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVADuration) = v27 + *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVADuration);
  }

  v29 = v53;
  v50 = *(v14 + 56);
  v50(v53, 1, 1, v13);
  swift_beginAccess();
  sub_100081B28(v29, v1 + v24);
  swift_endAccess();
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v30 = qword_1003D2470;
  swift_getKeyPath();
  v54 = v30;
  sub_10001AB60();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v30 + 96);
  v32 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicStart;
  swift_beginAccess();
  v33 = v8;
  sub_100081AB8(v31 + v32, v8);
  if (v52(v8, 1, v13) == 1)
  {

    sub_10010A82C(v8);
  }

  else
  {
    v34 = v48;
    (*(v14 + 32))(v48, v33, v13);

    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v36 = v35;
    v37 = *(v14 + 8);
    v37(v21, v13);
    v37(v34, v13);
    *(v31 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration) = v36 + *(v31 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_airPodsMicDuration);
    v38 = v53;
    v50(v53, 1, 1, v13);
    swift_beginAccess();
    sub_100081B28(v38, v31 + v32);
    swift_endAccess();
  }

  v39 = v51;
  v40 = OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicStart;
  swift_beginAccess();
  sub_100081AB8(v31 + v40, v39);
  if (v52(v39, 1, v13) == 1)
  {

    return sub_10010A82C(v39);
  }

  else
  {
    v42 = v49;
    (*(v14 + 32))(v49, v39, v13);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v44 = v43;
    v45 = *(v14 + 8);
    v45(v21, v13);
    v45(v42, v13);
    *(v31 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration) = v44 + *(v31 + OBJC_IVAR____TtC17SequoiaTranslator17PTFarFieldMetrics_iPhoneMicDuration);
    v46 = v53;
    v50(v53, 1, 1, v13);
    swift_beginAccess();
    sub_100081B28(v46, v31 + v40);
    swift_endAccess();
  }
}

uint64_t sub_1002016B8(char a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_100005AD4(&qword_1003B5130);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v31 = &v30 - v15;
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADStart;
  v19 = (v4 + 48);
  if (a1)
  {
    swift_beginAccess();
    sub_100081AB8(v1 + v18, v17);
    v20 = (*v19)(v17, 1, v3);
    result = sub_10010A82C(v17);
    if (v20 == 1)
    {
      v22 = v31;
      static Date.now.getter();
      (*(v4 + 56))(v22, 0, 1, v3);
      swift_beginAccess();
      sub_100081B28(v22, v1 + v18);
      result = swift_endAccess();
      v23 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_ovadStarts);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_ovadStarts) = v25;
      }
    }
  }

  else
  {
    swift_beginAccess();
    sub_100081AB8(v1 + v18, v13);
    if ((*v19)(v13, 1, v3) == 1)
    {
      sub_10010A82C(v13);
    }

    else
    {
      (*(v4 + 32))(v9, v13, v3);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v27 = v26;
      v28 = *(v4 + 8);
      v28(v7, v3);
      v28(v9, v3);
      *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADDuration) = v27 + *(v1 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADDuration);
    }

    v29 = v31;
    (*(v4 + 56))(v31, 1, 1, v3);
    swift_beginAccess();
    sub_100081B28(v29, v1 + v18);
    return swift_endAccess();
  }

  return result;
}

uint64_t PTSessionMetrics.deinit()
{
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionStart);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADStart);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVAStart);
  return v0;
}

uint64_t PTSessionMetrics.__deallocating_deinit()
{
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionStart);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADStart);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVAStart);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PTSessionMetrics()
{
  result = qword_1003B80C0;
  if (!qword_1003B80C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100201B38()
{
  sub_10010A704();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100201C4C()
{
  *(v0 + 16) = 516;
  v1 = OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionStart;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADStart, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVAStart, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_sessionDuration) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_OVADDuration) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_FarFieldVADuration) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsMicDuration) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneMicDuration) = 0;
  v4 = v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airPodsSNR;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_iPhoneSNR;
  *v5 = 0;
  *(v5 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_spl) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_languageSwitches) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_ovadStarts) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_averageTTSCharacterCount) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_coachingPrompts) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_durationSessionAtCoachingPromptSecs) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_airpodsModel) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount) = 0;
  return v0;
}

uint64_t sub_100201DEC(int a1)
{
  sub_100005AD4(&qword_1003A9AB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002D3160;
  *(v2 + 56) = &type metadata for UInt32;
  *(v2 + 64) = &protocol witness table for UInt32;
  *(v2 + 32) = a1;
  v3 = String.init(format:_:)();
  v5 = v4;
  v6 = v3 == 0x343130327830 && v4 == 0xE600000000000000;
  if (v6 || (v7 = v3, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v7 == 0x343230327830 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v7 == 0x423130327830 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0x303230327830 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (v7 == 0x373230327830 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0x383230327830 && v5 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100202030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 88));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100202100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 88)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PTSessionSummary()
{
  result = qword_1003B8438;
  if (!qword_1003B8438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100202204()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    sub_1002022F8();
    if (v1 <= 0x3F)
    {
      sub_100202348();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002022F8()
{
  if (!qword_1003B8448)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B8448);
    }
  }
}

void sub_100202348()
{
  if (!qword_1003B8450)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B8450);
    }
  }
}

void sub_1002023B8()
{
  v1 = v0;
  v2 = type metadata accessor for PTSessionSummary();
  v3 = *(v0 + v2[22]);
  v4 = Locale.identifier.getter();
  if (*(v3 + 16))
  {
    v6 = sub_10028DD34(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = [objc_allocWithZone(NSNumber) initWithInteger:*(*(v3 + 56) + 8 * v6)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10029163C(v9, 0x614C656372756F73, 0xEE0065676175676ELL, isUniquelyReferenced_nonNull_native);
    }
  }

  else
  {
  }

  v11 = Locale.identifier.getter();
  if (*(v3 + 16))
  {
    v13 = sub_10028DD34(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = [objc_allocWithZone(NSNumber) initWithInteger:*(*(v3 + 56) + 8 * v13)];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_10029163C(v16, 0x614C746567726174, 0xEE0065676175676ELL, v17);
    }
  }

  else
  {
  }

  v18 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[6])];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v18, 0x5372656767697274, 0xED0000656372756FLL, v19);
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[7])];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v20, 0xD000000000000011, 0x80000001002FA1B0, v21);
  v22 = *(v1 + v2[8]);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v23 = [objc_allocWithZone(NSNumber) initWithInteger:v22];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v23, 0xD000000000000013, 0x80000001002FA2D0, v24);
  v25 = *(v1 + v2[9]);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v26 = [objc_allocWithZone(NSNumber) initWithInteger:v25];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v26, 0x6E6F697461727564, 0xEC0000004441564FLL, v27);
  v28 = *(v1 + v2[10]);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v29 = [objc_allocWithZone(NSNumber) initWithInteger:v28];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v29, 0x6E6F697461727564, 0xEC00000044415654, v30);
  v31 = *(v1 + v2[11]);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v32 = [objc_allocWithZone(NSNumber) initWithInteger:v31];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v32, 0xD000000000000012, 0x80000001002FA2F0, v33);
  v34 = *(v1 + v2[12]);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v35 = [objc_allocWithZone(NSNumber) initWithInteger:v34];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v35, 0xD000000000000011, 0x80000001002FA310, v36);
  v37 = *(v1 + v2[20]);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v38 = [objc_allocWithZone(NSNumber) initWithInteger:v37];
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_10029163C(v38, 0xD000000000000023, 0x80000001002FA280, v39);
  v40 = v1 + v2[13];
  if ((*(v40 + 4) & 1) == 0)
  {
    v41 = *v40;
    if ((~LODWORD(v41) & 0x7F800000) == 0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v42 = v41;
    if (v41 <= -9.2234e18)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v41 >= 9.2234e18)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v43 = [objc_allocWithZone(NSNumber) initWithInteger:v42];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_10029163C(v43, 0x6F50726941726E73, 0xEA00000000007364, v44);
  }

  v45 = v1 + v2[14];
  if (*(v45 + 4))
  {
LABEL_37:
    v49 = *(v1 + v2[15]);
    if ((LODWORD(v49) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v49 > -9.2234e18)
      {
        if (v49 < 9.2234e18)
        {
          v50 = [objc_allocWithZone(NSNumber) initWithInteger:v49];
          v51 = swift_isUniquelyReferenced_nonNull_native();
          sub_10029163C(v50, 7106675, 0xE300000000000000, v51);
          v52 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[16])];
          v53 = swift_isUniquelyReferenced_nonNull_native();
          sub_10029163C(v52, 0xD000000000000013, 0x80000001002FA330, v53);
          v54 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[17])];
          v55 = swift_isUniquelyReferenced_nonNull_native();
          sub_10029163C(v54, 0x534441564F6D756ELL, 0xED00007374726174, v55);
          v56 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[18])];
          v57 = swift_isUniquelyReferenced_nonNull_native();
          sub_10029163C(v56, 0x6F57737454677661, 0xEF746E756F436472, v57);
          v58 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[19])];
          v59 = swift_isUniquelyReferenced_nonNull_native();
          sub_10029163C(v58, 0xD000000000000017, 0x80000001002FA350, v59);
          v60 = [objc_allocWithZone(NSNumber) initWithInteger:*(v1 + v2[21])];
          v61 = swift_isUniquelyReferenced_nonNull_native();
          sub_10029163C(v60, 0x4D73646F70726961, 0xEC0000006C65646FLL, v61);
          return;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v46 = roundf(*v45);
  if ((LODWORD(v46) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v46 <= -9.2234e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v46 < 9.2234e18)
  {
    v47 = [objc_allocWithZone(NSNumber) initWithInteger:v46];
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_10029163C(v47, 0x656E6F6850726E73, 0xE800000000000000, v48);
    goto LABEL_37;
  }

LABEL_67:
  __break(1u);
}

unint64_t sub_100202D98@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100202EA0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100202DC8()
{
  result = qword_1003B84C8;
  if (!qword_1003B84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B84C8);
  }

  return result;
}

unint64_t sub_100202E1C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100202EB0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100202E4C()
{
  result = qword_1003B84D0;
  if (!qword_1003B84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B84D0);
  }

  return result;
}

unint64_t sub_100202EA0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100202EB0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_100202FE4(void *a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_sizingConstraints;
  sub_100033604();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 removeConstraints:isa];

  v5 = v1[OBJC_IVAR____TtC17SequoiaTranslator22ReadableWidthContainer_readableWidthEnabled];
  sub_100005AD4(&unk_1003AFCC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D53E0;
  v7 = [a1 topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  if (v5 == 1)
  {
    v10 = [a1 bottomAnchor];
    v11 = [v1 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v6 + 40) = v12;
    v13 = [a1 centerXAnchor];
    v14 = [v1 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v6 + 48) = v15;
    v16 = [a1 widthAnchor];
    v17 = [v1 readableContentGuide];
    v18 = [v17 widthAnchor];

    v19 = [v16 constraintEqualToAnchor:v18 multiplier:1.0];
  }

  else
  {
    v20 = [a1 leadingAnchor];
    v21 = [v1 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v6 + 40) = v22;
    v23 = [a1 trailingAnchor];
    v24 = [v1 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v6 + 48) = v25;
    v16 = [a1 bottomAnchor];
    v18 = [v1 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
  }

  v26 = v19;

  *(v6 + 56) = v26;
  *&v1[v3] = v6;

  v27 = objc_opt_self();

  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:v28];
}

id sub_1002033B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadableWidthContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100203458(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v36 = a8;
  v37 = a5;
  v40 = a4;
  v41 = a7;
  v38 = a3;
  v39 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin(v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005AD4(&qword_1003B8518);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v35 - v19;
  (*(v17 + 16))(v35 - v19, a1, v16);
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v17 + 32))(v23 + v21, v20, v16);
  v24 = v36;
  *(v23 + v22) = v36;
  v35[1] = *&a2[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue];
  v25 = swift_allocObject();
  v27 = v37;
  v26 = v38;
  v25[2] = a2;
  v25[3] = v27;
  v25[4] = sub_100203C00;
  v25[5] = v23;
  v29 = v39;
  v28 = v40;
  v30 = v41;
  v25[6] = v39;
  v25[7] = v30;
  v25[8] = v26;
  v25[9] = v28;
  aBlock[4] = sub_100203D20;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003896F8;
  v31 = _Block_copy(aBlock);
  v32 = v24;
  v33 = a2;

  sub_10001AD18(v29);

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v44 + 8))(v12, v10);
  (*(v42 + 8))(v15, v43);
}

uint64_t sub_100203828(uint64_t a1, void *a2, float a3, uint64_t a4, void *a5)
{
  v9 = sub_100005AD4(&qword_1003B8520);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2890);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Recording helper error: %@", v17, 0xCu);
      sub_1000DDF70(v18);
    }

    v28 = a1;
LABEL_7:
    sub_100005AD4(&qword_1003B8518);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  if (!a2)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000078E8(v23, qword_1003D2890);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Ending listening.", v26, 2u);
    }

    v28 = 0;
    goto LABEL_7;
  }

  v21 = v11;
  v22 = a2;
  [a5 appendAudioPCMBuffer:v22];
  *&v28 = a3;
  sub_100005AD4(&qword_1003B8518);
  AsyncThrowingStream.Continuation.yield(_:)();

  return (*(v10 + 8))(v13, v21);
}

uint64_t sub_100203B58()
{
  v1 = sub_100005AD4(&qword_1003B8518);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100203C00(uint64_t a1, void *a2, float a3)
{
  v7 = *(sub_100005AD4(&qword_1003B8518) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100203828(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_100203CC8()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100203D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100203D4C(uint64_t a1)
{
  v13 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v10 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_firstAudioSample] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFormat] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFilePlayer] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_averagePowerChannel0] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_normalizedPowerChannel0] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_nextAudioFileIndex] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_randomFile] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultRawInputAudioFile] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryRawInputAudioFile] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAUSNROutputAudioFile] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAUSNROutputAudioFile] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAveragePowerChannel0] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryNormalizedPowerChannel0] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_reportingTask] = 0;
  v9 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue;
  sub_10000A2CC(0, &qword_1003A9C40);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100210870(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005AD4(&qword_1003AED80);
  sub_1000A5708(&qword_1003AED88, &qword_1003AED80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *&v1[v9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = &v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper____lazy_storage___snrAudioComponentDescription];
  *(v6 + 4) = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[20] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_deviceHelper] = v13;
  v7 = type metadata accessor for RecordingHelper();
  v14.receiver = v1;
  v14.super_class = v7;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_100204108()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_reportingTask])
  {

    Task.cancel()();
  }

  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine];
  if (v2 && [v2 isRunning])
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2890);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling recognition on RecordingHelper deinit", v6, 2u);
    }

    sub_10020C1A0();
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for RecordingHelper();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_1002043C0()
{
  v0 = sub_100005AD4(&qword_1003AB2D8);
  v1 = __chkstk_darwin(v0 - 8);
  v70 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v65 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v72 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v73 = &v65 - v13;
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 stringForKey:v18];

  if (v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  URL.init(string:)();

  v20 = *(v6 + 48);
  if (v20(v4, 1, v5) == 1)
  {

    sub_100009EBC(v4, &qword_1003AB2D8);
    return 0;
  }

  v67 = v9;
  v66 = *(v6 + 32);
  v66(v15, v4, v5);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v74 = 0;
  v24 = [v16 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:0 error:&v74];

  v25 = v74;
  v68 = v16;
  if (!v24)
  {
    v35 = v74;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v6 + 8))(v15, v5);
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000078E8(v58, qword_1003D2890);
    swift_errorRetain();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = _convertErrorToNSError(_:)();
      *(v61 + 4) = v63;
      *v62 = v63;
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to get next audio file: %@", v61, 0xCu);
      sub_100009EBC(v62, &unk_1003AECA0);
    }

    else
    {
    }

    return 0;
  }

  v65 = v15;
  v69 = v6;
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v25;

  v28 = v71;
  v29 = *(v26 + 16);
  if (v71[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_randomFile] != 1)
  {
    v30 = v72;
    if (!v29)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v36 = *&v71[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_nextAudioFileIndex] % v29;
    v37 = v69;
    v38 = v73;
    if (v36 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    (*(v69 + 16))(v73, v26 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v36, v5);

LABEL_18:
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000078E8(v40, qword_1003D2890);
    v72 = *(v37 + 16);
    (v72)(v30, v38, v5);
    v41 = v28;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v30;
      v71 = swift_slowAlloc();
      v74 = v71;
      *v44 = 134349314;
      *(v44 + 4) = *&v41[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_nextAudioFileIndex];

      *(v44 + 12) = 2082;
      v46 = URL.path.getter();
      v48 = v47;
      v49 = *(v69 + 8);
      v49(v45, v5);
      v50 = sub_10028D78C(v46, v48, &v74);

      *(v44 + 14) = v50;
      v51 = &off_1003B8000;
      _os_log_impl(&_mh_execute_header, v42, v43, "next audio file index: %{public}ld; audio file to play: %{public}s", v44, 0x16u);
      sub_100008664(v71);

      v38 = v73;
    }

    else
    {

      v51 = &off_1003B8000;
      v49 = *(v37 + 8);
      v49(v30, v5);
    }

    v52 = v51[177];
    v53 = *&v52[v41];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (!v54)
    {
      *&v52[v41] = v55;
      v56 = v67;
      (v72)(v67, v38, v5);
      v57 = objc_allocWithZone(AVAudioFile);
      v64 = sub_10020FDC4(v56);

      v49(v38, v5);
      v49(v65, v5);
      return v64;
    }

    __break(1u);
    goto LABEL_32;
  }

  v30 = v72;
  if (v29)
  {
    v31 = sub_100210360(v29);
    v32 = v70;
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v31 >= *(v26 + 16))
    {
      goto LABEL_35;
    }

    v33 = v69;
    (*(v69 + 16))(v70, v26 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v31, v5);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v69;
    v32 = v70;
  }

  (*(v33 + 56))(v32, v34, 1, v5);
  result = (v20)(v32, 1, v5);
  if (result != 1)
  {

    v38 = v73;
    v66(v73, v32, v5);
    v37 = v69;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_100204CB0(void *a1)
{

  sub_100204D90(a1, &OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_averagePowerChannel0, &OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_normalizedPowerChannel0, "Default device Average Power: %f");
}

void sub_100204D20(void *a1)
{

  sub_100204D90(a1, &OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAveragePowerChannel0, &OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryNormalizedPowerChannel0, "Auxiliary device Average Power: %f");
}

void sub_100204D90(void *a1, uint64_t *a2, void *a3, const char *a4)
{
  v8 = v4;
  v10 = [a1 floatChannelData];
  if (v10)
  {
    v11 = *v10;
    __C = 0.0;
    vDSP_maxv(v11, 1, &__C, [a1 frameLength]);
    v12 = *a2;
    v13 = *&v8[*a2] * 0.7;
    if (__C == 0.0)
    {
      v14 = -30.0;
    }

    else
    {
      v14 = (log10f(__C) * 20.0) * 0.3;
    }

    *&v8[v12] = v13 + v14;
    sub_1000EE208();
    BinaryFloatingPoint.clip(to:)();
    *&v8[*a3] = v20;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D2890);
  v16 = v8;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = *&v16[*a2];
    _os_log_impl(&_mh_execute_header, v17, v18, a4, v19, 0xCu);
  }
}

void sub_100204FC8()
{
  v1 = v0;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2890);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring auxiliary audio session", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  v8 = [v6 auxiliarySession];
  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession);
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession) = v8;
  v10 = v8;

  if (v10)
  {
    sub_100005AD4(&qword_1003B8818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002D1370;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    [v7 opaqueSessionID];
    *(inited + 48) = UInt32._bridgeToObjectiveC()();
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v13;
    *(inited + 72) = UInt._bridgeToObjectiveC()();
    sub_100292A44(inited);
    swift_setDeallocating();
    sub_100005AD4(&qword_1003B8820);
    swift_arrayDestroy();
    sub_10000A2CC(0, &qword_1003AED20);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = 0;
    v15 = [v10 setConformsToSessionBehavior:isa error:&v43];

    if (v15)
    {
      v16 = v43;
    }

    else
    {
      v18 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't forward audio interruptions from auxiliary session to shared session", v21, 2u);
      }
    }

    v43 = 0;
    v22 = [v10 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeDefault options:131081 error:&v43];
    v23 = v43;
    if (v22)
    {
      v24 = objc_allocWithZone(AVAudioSessionRouteControl);
      v25 = v23;
      v26 = [v24 init];
      [v26 setRouteControlOptions:1];
      v43 = 0;
      v27 = [v10 setPreferredRouteControlConfig:v26 error:&v43];
      v28 = v43;
      if (v27 && (v43 = 0, v29 = v28, v30 = [v10 setActive:1 error:&v43], v28 = v43, v30))
      {
        v31 = objc_allocWithZone(AVAudioEngine);
        v32 = v28;
        v33 = [v31 init];
        v34 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine;
        v35 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine);
        *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine) = v33;
        v36 = v33;

        [v36 setAudioSession:v10];
        v37 = *(v1 + v34);
        if (v37)
        {
          v38 = v37;
          v39 = [v38 inputNode];
        }

        else
        {

          v39 = 0;
        }

        v42 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode);
        *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode) = v39;
      }

      else
      {
        v41 = v28;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      v40 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_1002103EC();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
  }
}

void sub_100205524(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode];
  if (!v3)
  {
    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D2938);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid audio tap node from auxiliary session engine", v15, 2u);
    }

    sub_1002103EC();
    v16 = swift_allocError();
    *v17 = 0;
    sub_10001A654(1, 0, v16, 0.0);

    return;
  }

  v4 = v1;
  v5 = v3;
  v6 = [v5 inputFormatForBus:0];
  v7 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine];
  if (v7)
  {
    v8 = [v7 inputNode];
    sub_10000A2CC(0, &qword_1003B8810);
    v9 = v5;
    v10 = static NSObject.== infix(_:_:)();

    v11 = v6;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = v5;
  }

  v19 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU];
  v11 = v6;
  if (v19)
  {
    v11 = *(v19 + 48);
    if (!v11)
    {
      v11 = v6;
    }
  }

LABEL_16:
  v20 = v11;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000078E8(v21, qword_1003D2890);
  v56 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v56;
    *v25 = v56;
    v26 = v56;
    _os_log_impl(&_mh_execute_header, v22, v23, "auxiliaryRecordingFormat: %@", v24, 0xCu);
    sub_100009EBC(v25, &unk_1003AECA0);
  }

  if (![v56 channelCount] || (objc_msgSend(v56, "sampleRate"), v27 <= 0.0))
  {

    if (qword_1003A92B8 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v21, qword_1003D2938);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Got an incorrect format from inputNode.outputFormat(forBus: 0)", v33, 2u);
    }

    sub_1002103EC();
    v34 = swift_allocError();
    *v35 = 1;
    sub_10001A654(1, 0, v34, 0.0);

    return;
  }

  v28 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU];
  if (v28)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      sub_10000A2CC(0, &qword_1003B8810);
      v30 = v29;
      LODWORD(v29) = static NSObject.== infix(_:_:)();
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  sub_100205D5C(1u, v56, v29 & 1);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  if (_LTIsInternalInstall())
  {
    v37 = [objc_opt_self() standardUserDefaults];
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 BOOLForKey:v38];

    if (v29 & 1 | ((v39 & 1) == 0))
    {
      v55 = 0;
    }

    else
    {
      v40 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryRawInputAudioFile;
      swift_beginAccess();
      v41 = *&v4[v40];
      *(v36 + 16) = v41;
      v55 = v41;
    }

    if (!_LTIsInternalInstall())
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v55 = 0;
  if (_LTIsInternalInstall())
  {
LABEL_40:
    v42 = [objc_opt_self() standardUserDefaults];
    v43 = String._bridgeToObjectiveC()();
    v44 = [v42 BOOLForKey:v43];

    if ((v44 & v29) == 1)
    {
      v45 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAUSNROutputAudioFile;
      swift_beginAccess();
      v46 = *&v4[v45];
      *(v36 + 16) = v46;
      v47 = v46;
    }
  }

LABEL_42:
  v48 = [objc_opt_self() standardUserDefaults];
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 integerForKey:v49];

  if ((v50 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v50))
  {
    v51 = swift_allocObject();
    v51[2] = v36;
    v51[3] = v4;
    v51[4] = a1;
    v51[5] = v56;
    aBlock[4] = sub_100210558;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100206EA4;
    aBlock[3] = &unk_100389A40;
    v52 = _Block_copy(aBlock);
    v53 = v56;

    v54 = v4;

    [v5 installTapOnBus:0 bufferSize:v50 format:v53 block:v52];
    _Block_release(v52);

    return;
  }

  __break(1u);
}

void sub_100205D5C(unsigned __int8 a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v122) = a3;
  v118 = a2;
  LODWORD(v121) = a1;
  v5 = sub_100005AD4(&qword_1003AB2D8);
  __chkstk_darwin(v5 - 8);
  v119 = &v113 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v114 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v116 = (&v113 - v12);
  v13 = __chkstk_darwin(v11);
  v15 = &v113 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v113 - v17;
  v19 = __chkstk_darwin(v16);
  v115 = &v113 - v20;
  __chkstk_darwin(v19);
  v117 = &v113 - v21;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &selRef_oneSelectedWithSender_;
  if (_LTIsInternalInstall())
  {
    v27 = [objc_opt_self() standardUserDefaults];
    v120 = v18;
    v28 = v27;
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 BOOLForKey:v29];

    v18 = v120;
    v26 = &selRef_oneSelectedWithSender_;
    if (v30)
    {
      if (v121)
      {
        v48 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryRawInputAudioFile;
        swift_beginAccess();
        v44 = (v4 + v48);
        v45 = 0x80000001002FA990;
        v46 = v122 & 1;
        v47 = 1;
        v43 = 0xD000000000000013;
      }

      else
      {
        Date.init()();
        v31 = [objc_allocWithZone(NSDateFormatter) init];
        v32 = String._bridgeToObjectiveC()();
        v113 = v31;
        [v31 setDateFormat:v32];

        isa = Date._bridgeToObjectiveC()().super.isa;
        v34 = [v31 stringFromDate:isa];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v15;
        v37 = v8;
        v38 = v4;
        v39 = v7;
        v41 = v40;

        qword_1003B8528 = v35;
        qword_1003B8530 = v41;
        v26 = &selRef_oneSelectedWithSender_;
        v7 = v39;
        v4 = v38;
        v8 = v37;
        v15 = v36;

        (*(v23 + 8))(v25, v22);
        v42 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultRawInputAudioFile;
        swift_beginAccess();
        v43 = 0xD000000000000011;
        v44 = (v4 + v42);
        v45 = 0x80000001002FA9B0;
        v46 = v122 & 1;
        v47 = 0;
      }

      sub_10020F3F4(v47, v44, 0, 1, v43, v45, v46);
      swift_endAccess();
      v18 = v120;
    }
  }

  if (_LTIsInternalInstall())
  {
    v49 = [objc_opt_self() v26[8]];
    v50 = v18;
    v51 = String._bridgeToObjectiveC()();
    v52 = [v49 BOOLForKey:v51];

    if (v52)
    {
      if (v122)
      {
        if (v121)
        {
          v68 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAUSNROutputAudioFile;
          swift_beginAccess();
          sub_100210564();
          if (v69)
          {
            v70 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine);
            if (v70)
            {
              v122 = v4;
              v71 = v8;
              v123 = qword_1003B8528;
              v124 = qword_1003B8530;
              v121 = v70;

              v57 = v118;
              v72._countAndFlagsBits = 95;
              v72._object = 0xE100000000000000;
              String.append(_:)(v72);
              v73._countAndFlagsBits = 0xD000000000000016;
              v73._object = 0x80000001002FA950;
              String.append(_:)(v73);
              v74._countAndFlagsBits = 1717658414;
              v74._object = 0xE400000000000000;
              String.append(_:)(v74);
              v75 = v119;
              URL.init(fileURLWithPath:)();

              (*(v71 + 56))(v75, 0, 1, v7);
              URL.init(fileURLWithPath:isDirectory:relativeTo:)();

              sub_100009EBC(v75, &qword_1003AB2D8);
              v76 = *(v71 + 16);
              v77 = v116;
              v76(v116, v15, v7);
              v78 = [v57 settings];
              static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v79 = objc_allocWithZone(AVAudioFile);
              v80 = sub_10020FF10(v77);
              v120 = v15;
              if (v80)
              {
                v119 = v80;

                if (qword_1003A9280 != -1)
                {
                  swift_once();
                }

                v95 = type metadata accessor for Logger();
                sub_1000078E8(v95, qword_1003D2890);
                v96 = v114;
                v76(v114, v120, v7);
                v97 = v57;
                v98 = Logger.logObject.getter();
                v99 = v7;
                v100 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v98, v100))
                {
                  v101 = swift_slowAlloc();
                  v117 = swift_slowAlloc();
                  v118 = swift_slowAlloc();
                  v123 = v118;
                  *v101 = 136446466;
                  v116 = v98;
                  v102 = v99;
                  v103 = URL.description.getter();
                  v105 = v104;
                  v106 = *(v71 + 8);
                  v106(v96, v102);
                  v107 = sub_10028D78C(v103, v105, &v123);

                  *(v101 + 4) = v107;
                  *(v101 + 12) = 2112;
                  *(v101 + 14) = v97;
                  v108 = v117;
                  *v117 = v97;
                  v109 = v97;
                  v110 = v116;
                  _os_log_impl(&_mh_execute_header, v116, v100, "Created audio file: %{public}s with format: %@", v101, 0x16u);
                  sub_100009EBC(v108, &unk_1003AECA0);

                  sub_100008664(v118);
                }

                else
                {

                  v106 = *(v71 + 8);
                  v106(v96, v99);
                  v102 = v99;
                }

                v112 = v121;
                *(v122 + v68) = v119;

                v106(v120, v102);
                goto LABEL_36;
              }

              (*(v71 + 8))(v120, v7);
LABEL_31:

              goto LABEL_36;
            }

            goto LABEL_17;
          }
        }

        else
        {
          v53 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAUSNROutputAudioFile;
          swift_beginAccess();
          sub_100210564();
          if (v54)
          {
            v55 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine);
            if (v55)
            {
              v120 = v53;
              v122 = v4;
              v123 = qword_1003B8528;
              v124 = qword_1003B8530;
              v121 = v55;
              v56 = v8;
              v57 = v118;

              v58._countAndFlagsBits = 95;
              v58._object = 0xE100000000000000;
              String.append(_:)(v58);
              v59._countAndFlagsBits = 0xD000000000000014;
              v59._object = 0x80000001002FA970;
              String.append(_:)(v59);
              v60._countAndFlagsBits = 1717658414;
              v60._object = 0xE400000000000000;
              String.append(_:)(v60);
              v61 = v119;
              URL.init(fileURLWithPath:)();

              (*(v56 + 56))(v61, 0, 1, v7);
              v62 = v117;
              URL.init(fileURLWithPath:isDirectory:relativeTo:)();

              sub_100009EBC(v61, &qword_1003AB2D8);
              v63 = *(v56 + 16);
              v64 = v115;
              v63(v115, v62, v7);
              v65 = [v57 settings];
              static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v66 = objc_allocWithZone(AVAudioFile);
              v67 = sub_10020FF10(v64);
              if (v67)
              {
                v119 = v67;

                if (qword_1003A9280 != -1)
                {
                  swift_once();
                }

                v81 = type metadata accessor for Logger();
                sub_1000078E8(v81, qword_1003D2890);
                v63(v50, v62, v7);
                v82 = v57;
                v83 = Logger.logObject.getter();
                v84 = static os_log_type_t.info.getter();

                v85 = v7;
                if (os_log_type_enabled(v83, v84))
                {
                  v86 = swift_slowAlloc();
                  v116 = swift_slowAlloc();
                  v118 = swift_slowAlloc();
                  v123 = v118;
                  *v86 = 136446466;
                  v87 = v7;
                  v88 = URL.description.getter();
                  v90 = v89;
                  v91 = *(v56 + 8);
                  v91(v50, v87);
                  v92 = sub_10028D78C(v88, v90, &v123);

                  *(v86 + 4) = v92;
                  v85 = v87;
                  *(v86 + 12) = 2112;
                  *(v86 + 14) = v82;
                  v93 = v116;
                  v116->isa = v82;
                  v94 = v82;
                  _os_log_impl(&_mh_execute_header, v83, v84, "Created audio file: %{public}s with format: %@", v86, 0x16u);
                  sub_100009EBC(v93, &unk_1003AECA0);

                  sub_100008664(v118);

                  v62 = v117;
                }

                else
                {

                  v91 = *(v56 + 8);
                  v91(v50, v85);
                }

                v111 = v121;
                *&v120[v122] = v119;

                v91(v62, v85);
                goto LABEL_36;
              }

              (*(v56 + 8))(v62, v7);
              goto LABEL_31;
            }

LABEL_17:
          }
        }

LABEL_36:
        swift_endAccess();
      }
    }
  }
}

void sub_100206B08(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2938);
  v9 = a1;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v9;
    v14[1] = v10;
    v15 = v9;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Auxiliary Session installTap buffer: %@ time: %@", v13, 0x16u);
    sub_100005AD4(&unk_1003AECA0);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v17 = *(a3 + 16);
  if (v17)
  {
    v25 = 0;
    if ([v17 writeFromBuffer:v9 error:&v25])
    {
      v18 = v25;
    }

    else
    {
      v19 = v25;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9280 != -1)
      {
        swift_once();
      }

      sub_1000078E8(v8, qword_1003D2890);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = _convertErrorToNSError(_:)();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Could not write file to buffer: %@", v22, 0xCu);
        sub_100009EBC(v23, &unk_1003AECA0);
      }

      else
      {
      }
    }
  }

  if (*(a4 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU))
  {

    sub_10020EE18();
  }

  sub_100204D20(v9);
  sub_10001A654(1, v9, 0, *(a4 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryNormalizedPowerChannel0));
}

void sub_100206EA4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_100206F28(uint64_t a1)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100204FC8();
  if (v2)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D2890);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to config auxiliary session: %@", v15, 0xCu);
      sub_100009EBC(v16, &unk_1003AECA0);
    }

    return swift_willThrow();
  }

  v70 = v7;
  v19 = v1;
  v20 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine];
  if (!v20)
  {
    sub_1002103EC();
    swift_allocError();
    *v50 = 3;
    return swift_willThrow();
  }

  v66 = v9;
  v67 = v8;
  v68 = v5;
  v69 = v4;
  v72 = &type metadata for TranslateFeatures;
  v73 = sub_100009DF8();
  LOBYTE(aBlock[0]) = 13;
  v21 = v20;
  v22 = isFeatureEnabled(_:)();
  sub_100008664(aBlock);
  if (v22)
  {
    v65 = v21;
    v23 = objc_opt_self();
    v24 = [v23 standardUserDefaults];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 BOOLForKey:v25];

    v64 = v11;
    if (v26)
    {
      v27 = v65;
      v28 = [v23 standardUserDefaults];
      v29 = String._bridgeToObjectiveC()();
      v30 = [v28 integerForKey:v29];

      if (v30 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v30 <= 0x7FFFFFFF)
      {
        v11 = v19;
        type metadata accessor for RecordingHelper.AudioUnitForTranslation();
        v31 = swift_allocObject();
        sub_10020DFEC(v27, 1, v30);
        v21 = v65;
        v32 = v27;
        v58 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU;
        *&v11[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU] = v31;

        v59 = *&v11[v58];
        v44 = a1;
        if (v59 && (v60 = *(v59 + 16)) != 0)
        {
          v61 = v60;
        }

        else
        {
          v60 = [v32 inputNode];
        }

        v48 = v70;
        v62 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode];
        *&v11[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode] = v60;

        v49 = v64;
        goto LABEL_24;
      }

      __break(1u);
      swift_once();
      v33 = type metadata accessor for Logger();
      sub_1000078E8(v33, qword_1003D2890);
      swift_errorRetain();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        swift_errorRetain();
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v38;
        *v37 = v38;
        _os_log_impl(&_mh_execute_header, v34, v35, "Recoverable Error : Failed to Initialize SNR Audio Units For Auxiliary Input. %@", v36, 0xCu);
        sub_100009EBC(v37, &unk_1003AECA0);
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "SNR/SPL reporting will be affected and iPhone mic input will not be filtered through SNR Audio Unit", v41, 2u);
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = a1;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "iPhone mic input will contain background noise", v45, 2u);
      }

      v46 = [v19 inputNode];

      v47 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode];
      *&v11[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode] = v46;

      v48 = v70;
      v49 = v64;
      v21 = v65;
      goto LABEL_24;
    }

    v21 = v65;
    v51 = [v65 inputNode];
    v11 = v19;
    v52 = *&v19[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode];
    *&v19[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode] = v51;

    *&v19[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU] = 0;

    v44 = a1;
    v48 = v70;
    v49 = v64;
  }

  else
  {
    v44 = a1;
    v48 = v70;
    v49 = v11;
    v11 = v19;
  }

LABEL_24:
  v70 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue];
  v53 = swift_allocObject();
  v53[2] = v11;
  v53[3] = v21;
  v53[4] = v44;
  v73 = sub_100210488;
  v74 = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  v72 = &unk_100389978;
  v54 = _Block_copy(aBlock);
  v55 = v21;
  v56 = v11;

  static DispatchQoS.unspecified.getter();
  v75 = _swiftEmptyArrayStorage;
  sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  v57 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);

  (*(v68 + 8))(v48, v57);
  (*(v66 + 8))(v49, v67);
}

void sub_10020782C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine);
  if (v4 && [v4 isRunning])
  {
    v7 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU);
    if (v7 && (v8 = *(v7 + 16)) != 0)
    {
      v9 = v8;
    }

    else
    {
      v8 = [a2 inputNode];
    }

    v10 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode);
    *(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode) = v8;

    sub_100205524(a3);
    v28[0] = 0;
    v11 = [a2 startAndReturnError:v28];
    v12 = v28[0];
    if (v11)
    {
      v28[3] = &type metadata for TranslateFeatures;
      v28[4] = sub_100009DF8();
      LOBYTE(v28[0]) = 13;
      v13 = v12;
      v14 = isFeatureEnabled(_:)();
      sub_100008664(v28);
      if (v14)
      {
        sub_100209D40();
      }

      else
      {
        if (qword_1003A9280 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000078E8(v24, qword_1003D2890);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "SNR and SPL reporting is disabled", v27, 2u);
        }
      }
    }

    else
    {
      v15 = v28[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9280 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D2890);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to start auxiliary audio engine: %@", v19, 0xCu);
        sub_100009EBC(v20, &unk_1003AECA0);
      }

      sub_1002103EC();
      v22 = swift_allocError();
      *v23 = 3;
      sub_10001A654(1, 0, v22, 0.0);
    }
  }
}

void sub_100207BB4(_BYTE *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine;
  v13 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine];
  if (v13 && [v13 isRunning])
  {
    sub_10020BFC8();
  }

  a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_firstAudioSample] = 1;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v195 = type metadata accessor for Logger();
  v14 = sub_1000078E8(v195, qword_1003D2890);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Configure audio session (recording)", v17, 2u);
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v18 = qword_1003D2470;
  v200 = [objc_opt_self() sharedInstance];
  if (a2 < 0)
  {
    v197 = v14;
    v21 = v18;
    if (_LTIsInternalInstall() && (v22 = [objc_opt_self() standardUserDefaults], v23 = String._bridgeToObjectiveC()(), v24 = objc_msgSend(v22, "BOOLForKey:", v23), v22, v23, (v24 & 1) != 0))
    {
      v19 = 0;
      v20 = 12;
      v18 = v21;
    }

    else
    {
      v25 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_deviceHelper];
      swift_getKeyPath();
      v201[0] = v25;
      sub_100210870(&qword_1003AE978, type metadata accessor for DeviceHelper);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = (v25 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
      swift_beginAccess();
      v27 = v26[2];
      v28 = *v26;
      v203 = v26[1];
      v204 = v27;
      aBlock = v28;
      v29 = v26[3];
      v30 = v26[4];
      v31 = v26[5];
      *&v207[9] = *(v26 + 89);
      v206 = v30;
      *v207 = v31;
      v205 = v29;
      if (!*(&aBlock + 1))
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Owner audio device not found", v48, 2u);
        }

        sub_1002108B8();
        v49 = swift_allocError();
        *v50 = 0;
        swift_willThrow();
        v199 = 0;
        goto LABEL_39;
      }

      v18 = v21;
      if ((v207[24] & 1) == 0)
      {

        v51 = *&v207[8];
        v52 = *&v207[16];

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Device does not support Personal Translator", v55, 2u);
        }

        sub_1002108B8();
        v49 = swift_allocError();
        *v56 = 1;
        swift_willThrow();
        sub_100009EBC(&aBlock, &qword_1003A93C8);
        v199 = 0;
        goto LABEL_39;
      }

      v201[3] = &type metadata for TranslateFeatures;
      v201[4] = sub_100009DF8();
      LOBYTE(v201[0]) = 12;
      v19 = isFeatureEnabled(_:)();
      sub_100008664(v201);
      v20 = 262148;
    }

    v14 = v197;
  }

  else
  {
    v19 = 0;
    v20 = 12;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;

  v199 = v19;
  if (v19)
  {
    v33 = &AVAudioSessionModeVoiceChat;
  }

  else
  {
    v33 = &AVAudioSessionModeDefault;
  }

  sub_100014D5C(v19 & 1, sub_1002107A4, v32);

  v34 = *v33;
  *&aBlock = 0;
  if (![v200 setCategory:AVAudioSessionCategoryPlayAndRecord mode:v34 options:v20 error:&aBlock] || (v190 = v18, v35 = aBlock, v36 = v200, sub_1000D20D8(v200, a2), *&aBlock = 0, v37 = objc_msgSend(v200, "setActive:error:", 1, &aBlock), v38 = aBlock, !v37))
  {
    v57 = aBlock;
    v49 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_39:
    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&aBlock = v62;
      *v60 = 138412546;
      v63 = _convertErrorToNSError(_:)();
      *(v60 + 4) = v63;
      *v61 = v63;
      *(v60 + 12) = 2080;
      LOBYTE(v201[0]) = v199 & 1;
      v64 = String.init<A>(describing:)();
      v66 = sub_10028D78C(v64, v65, &aBlock);

      *(v60 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to change audio category: %@ audio routing processing mode %s", v60, 0x16u);
      sub_100009EBC(v61, &unk_1003AECA0);

      sub_100008664(v62);
    }

    swift_errorRetain();
    sub_10001A654(0, 0, v49, 0.0);

    return;
  }

  *(&v203 + 1) = &type metadata for TranslateFeatures;
  v39 = sub_100009DF8();
  *&v204 = v39;
  LOBYTE(aBlock) = 9;
  v40 = v38;
  v41 = isFeatureEnabled(_:)();
  sub_100008664(&aBlock);
  if (a2 & 0x80) == 0 && (v41)
  {
    v42 = *&a1[v12];
    if (!v42 || ([v42 isRunning] & 1) == 0)
    {
      sub_100278D7C(0, 0, 0);
    }
  }

  v43 = *&a1[v12];
  if (v43)
  {
    v44 = *&a1[v12];
    v45 = v44;
  }

  else
  {
    v45 = [objc_allocWithZone(AVAudioEngine) init];
    v44 = 0;
    v43 = *&a1[v12];
  }

  *&a1[v12] = v45;
  v67 = v44;
  v68 = v45;

  v189 = objc_opt_self();
  v69 = [v189 standardUserDefaults];
  v70 = String._bridgeToObjectiveC()();
  v71 = [v69 BOOLForKey:v70];

  v72 = &off_1003B8000;
  if (!v71)
  {
    v86 = [v68 inputNode];
    v87 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode];
    *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode] = v86;

    [v68 reset];
    [v68 prepare];
LABEL_49:
    if (v199)
    {
      goto LABEL_53;
    }

LABEL_63:
    v109 = v200;
    goto LABEL_79;
  }

  v73 = sub_1002043C0();
  v72 = &off_1003B8000;
  if (!v73)
  {
    goto LABEL_49;
  }

  v74 = v73;
  v75 = [objc_allocWithZone(AVAudioPlayerNode) init];
  v76 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFilePlayer;
  v77 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFilePlayer];
  *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFilePlayer] = v75;

  v78 = [v74 processingFormat];
  v79 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFormat;
  v80 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFormat];
  *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFormat] = v78;

  v81 = *&a1[v76];
  if (v81)
  {
    v82 = v68;
    v83 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode];
    *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode] = v81;
    v84 = v81;

    v68 = v82;
    v36 = [v82 mainMixerNode];
    [v68 attachNode:v84];
    if (!*&a1[v79])
    {
      __break(1u);
      return;
    }

    [v68 connect:v84 to:v36 format:?];
    [v68 prepare];
    *&v204 = nullsub_1;
    *(&v204 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v203 = sub_100096948;
    *(&v203 + 1) = &unk_100389B30;
    v85 = _Block_copy(&aBlock);
    [v84 scheduleFile:v74 atTime:0 completionHandler:v85];

    _Block_release(v85);
  }

  else
  {
  }

  v72 = &off_1003B8000;
  if ((v199 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_53:
  *(&v203 + 1) = &type metadata for TranslateFeatures;
  *&v204 = v39;
  LOBYTE(aBlock) = 13;
  v88 = isFeatureEnabled(_:)();
  sub_100008664(&aBlock);
  if ((v88 & 1) == 0)
  {
    goto LABEL_63;
  }

  v188 = v68;
  v89 = [v189 standardUserDefaults];
  v68 = "r.RecordingHelper";
  v90 = String._bridgeToObjectiveC()();
  v36 = &selRef_oneSelectedWithSender_;
  v91 = [v89 integerForKey:v90];

  if (v91 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_115;
  }

  if (v91 > 0x7FFFFFFF)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v92 = sub_1000D8BAC();
  if ((v92 & 0x100000000) != 0)
  {
    v68 = v188;
    goto LABEL_71;
  }

  v93 = v92;
  sub_100005AD4(&qword_1003A9AB0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1002D3160;
  *(v94 + 56) = &type metadata for UInt32;
  *(v94 + 64) = &protocol witness table for UInt32;
  *(v94 + 32) = v93;
  v95 = String.init(format:_:)();
  v97 = v96;
  if (qword_1003A92B8 != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    sub_1000078E8(v195, qword_1003D2938);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      bufa = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *&aBlock = v184;
      *bufa = 136315138;
      sub_10022B350();
      v186 = v97;
      v100 = v95;
      v101 = Dictionary.description.getter();
      v103 = v102;

      v104 = v101;
      v95 = v100;
      v36 = &selRef_oneSelectedWithSender_;
      v105 = sub_10028D78C(v104, v103, &aBlock);

      *(bufa + 4) = v105;
      v97 = v186;
      _os_log_impl(&_mh_execute_header, v98, v99, "Using available AirPods model specific sensitivities: %s", bufa, 0xCu);
      sub_100008664(v184);
    }

    v106 = sub_10022B350();
    if (*(v106 + 16) && (v107 = sub_10028DD34(v95, v97), (v108 & 1) != 0))
    {
      LODWORD(v91) = *(*(v106 + 56) + 4 * v107);

      v68 = v188;
    }

    else
    {

      v110 = [v189 standardUserDefaults];
      v111 = String._bridgeToObjectiveC()();
      v91 = [v110 v36[9]];

      if (v91 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_121:
        __break(1u);
      }

      v68 = v188;
      if (v91 > 0x7FFFFFFF)
      {
        goto LABEL_121;
      }
    }

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v36 = v97;
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v116 = v95;
      v117 = v115;
      *&aBlock = v115;
      *v114 = 136315394;
      v198 = v113;
      v118 = sub_10028D78C(v116, v36, &aBlock);

      *(v114 + 4) = v118;
      *(v114 + 12) = 1024;
      *(v114 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v112, v198, "Using audio productID: %s has SPL Sensitivity: %d", v114, 0x12u);
      sub_100008664(v117);
    }

    else
    {
    }

LABEL_71:
    if (qword_1003A92B8 != -1)
    {
LABEL_116:
      swift_once();
    }

    sub_1000078E8(v195, qword_1003D2938);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 67109120;
      *(v121 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v119, v120, "Using AirPods SPL Sensitivity: %d", v121, 8u);
    }

    type metadata accessor for RecordingHelper.AudioUnitForTranslation();
    v122 = swift_allocObject();
    v123 = v68;
    sub_10020DFEC(v123, 0, v91);
    v124 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU;
    *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU] = v122;

    v125 = *&a1[v124];
    v109 = v200;
    if (v125 && (v126 = *(v125 + 16)) != 0)
    {
      v127 = v126;
    }

    else
    {
      v126 = [v123 inputNode];
    }

    v72 = &off_1003B8000;
    v128 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode];
    *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode] = v126;

LABEL_79:
    v129 = *(v72[174] + a1);
    if (!v129)
    {
      break;
    }

    v97 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFilePlayer;
    v130 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioFilePlayer];
    v131 = v129;
    v95 = v131;
    v132 = &selRef_inputFormatForBus_;
    if (v130)
    {
      v132 = &selRef_outputFormatForBus_;
    }

    v195 = [v131 *v132];
    if (![v195 channelCount] || (objc_msgSend(v195, "sampleRate"), v133 <= 0.0))
    {
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "Got an incorrect format from inputNode.outputFormat(forBus: 0)", v139, 2u);
      }

      sub_1002103EC();
      v140 = swift_allocError();
      *v141 = 1;
      sub_10001A654(0, 0, v140, 0.0);

      return;
    }

    v134 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU];
    v185 = v95;
    if (v134)
    {
      v135 = *(v134 + 16);
      if (v135)
      {
        sub_10000A2CC(0, &qword_1003B8810);
        v136 = v95;
        v95 = v135;
        LODWORD(v135) = static NSObject.== infix(_:_:)();
      }
    }

    else
    {
      LODWORD(v135) = 0;
    }

    sub_100205D5C(0, v195, v135 & 1);
    v187 = swift_allocObject();
    *(v187 + 16) = 0;
    if (_LTIsInternalInstall() && (v147 = [v189 standardUserDefaults], v148 = String._bridgeToObjectiveC()(), v95 = objc_msgSend(v147, "BOOLForKey:", v148), v147, v148, !(v135 & 1 | ((v95 & 1) == 0))))
    {
      v150 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultRawInputAudioFile;
      swift_beginAccess();
      v151 = *&a1[v150];
      *(v187 + 16) = v151;
      v149 = v151;
    }

    else
    {
      v149 = 0;
    }

    v188 = v68;
    if (_LTIsInternalInstall())
    {
      v152 = [v189 standardUserDefaults];
      v95 = String._bridgeToObjectiveC()();
      v153 = v14;
      v154 = [v152 BOOLForKey:v95];

      v155 = v154 & v135;
      v14 = v153;
      if (v155 == 1)
      {
        v156 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAUSNROutputAudioFile;
        swift_beginAccess();
        v157 = *&a1[v156];
        *(v187 + 16) = v157;
        v158 = v157;
      }
    }

    v159 = [v189 standardUserDefaults];
    v160 = String._bridgeToObjectiveC()();
    v161 = [v159 integerForKey:v160];

    if ((v161 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v181 = v97;
      buf = v161;
      if (!(v161 >> 32))
      {
        v162 = swift_allocObject();
        v162[2] = a1;
        v162[3] = a5;
        v162[4] = a6;
        v162[5] = a7;
        v162[6] = a8;
        v162[7] = v187;
        v162[8] = v190;
        v162[9] = v195;
        *&v204 = sub_100210834;
        *(&v204 + 1) = v162;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v203 = sub_100206EA4;
        *(&v203 + 1) = &unk_100389B08;
        v163 = _Block_copy(&aBlock);
        v164 = v195;
        v196 = a1;
        sub_10001AD18(a5);

        v165 = v164;

        [v185 installTapOnBus:0 bufferSize:buf format:v164 block:v163];
        _Block_release(v163);

        if (v199)
        {
          sub_100206F28(v190);
        }

        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&_mh_execute_header, v166, v167, "Starting audio engine...", v168, 2u);
        }

        *&aBlock = 0;
        if ([v188 startAndReturnError:&aBlock])
        {
          v169 = aBlock;
          v170 = [v189 standardUserDefaults];
          v171 = String._bridgeToObjectiveC()();
          v172 = [v170 BOOLForKey:v171];

          if (v172)
          {
            [*&a1[v181] play];
          }

          [v196 _accessibilityDidStartListening];
        }

        else
        {
          v173 = aBlock;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *v176 = 138412290;
            v178 = _convertErrorToNSError(_:)();
            *(v176 + 4) = v178;
            *v177 = v178;
            _os_log_impl(&_mh_execute_header, v174, v175, "Failed to start audio engine: %@", v176, 0xCu);
            sub_100009EBC(v177, &unk_1003AECA0);
          }

          sub_1002103EC();
          v179 = swift_allocError();
          *v180 = 2;
          sub_10001A654(0, 0, v179, 0.0);
        }

        return;
      }
    }

    __break(1u);
LABEL_119:
    swift_once();
  }

  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&_mh_execute_header, v142, v143, "Invalid audio tap node from default session engine", v144, 2u);
    v109 = v200;
  }

  sub_1002103EC();
  v145 = swift_allocError();
  *v146 = 0;
  sub_10001A654(0, 0, v145, 0.0);
}

void sub_1002097C0(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v11 = a1;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_firstAudioSample;
  if (*(a3 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_firstAudioSample) == 1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2890);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Calling sessionActivationCompletionHandler", v19, 2u);
    }

    if (a4)
    {
      a4(a6, a7);
    }

    *(a3 + v12) = 0;
    v11 = a1;
    v8 = a8;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000078E8(v20, qword_1003D2890);
  v21 = v11;
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v21;
    v26[1] = v22;
    v27 = v21;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Default Session installTap buffer: %@ time: %@", v25, 0x16u);
    sub_100005AD4(&unk_1003AECA0);
    swift_arrayDestroy();
  }

  if (*(a3 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU))
  {

    sub_10020EE18();
  }

  sub_100204CB0(v21);
  swift_beginAccess();
  v29 = *(v8 + 16);
  if (v29)
  {
    v39 = 0;
    if ([v29 writeFromBuffer:v21 error:&v39])
    {
      v30 = v39;
    }

    else
    {
      v31 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = _convertErrorToNSError(_:)();
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Could not write file to buffer: %@", v34, 0xCu);
        sub_100009EBC(v35, &unk_1003AECA0);
      }

      else
      {
      }
    }
  }

  sub_10001A654(0, v21, 0, *(a3 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_normalizedPowerChannel0));
}

uint64_t sub_100209D40()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D2938);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v0;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    static Date.now.getter();
    sub_100210870(&qword_1003B8800, &type metadata accessor for Date);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_10028D78C(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Schedule Reporting SPL and SNR after 8 seconds from now %s", v13, 0xCu);
    sub_100008664(v14);

    v1 = v23;
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;
  v21 = v1;
  *&v21[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_reportingTask] = sub_10005E36C(0, 0, v4, &unk_1002E88A8, v20);
}

uint64_t sub_10020A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10020A25C, 0, 0);
}

uint64_t sub_10020A25C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_10020A328;

  return sub_1001F2A0C(8000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10020A328()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[28];
  v5 = v2[26];
  v6 = v2[25];
  if (v0)
  {

    v7 = *(v5 + 8);
    v3[31] = v7;
    v7(v4, v6);
    v8 = sub_10020A8D0;
  }

  else
  {
    v9 = *(v5 + 8);
    v3[30] = v9;
    v9(v4, v6);
    v8 = sub_10020A4C4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10020A4C4()
{
  *(v0 + 256) = *(v0 + 240);
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v20 = *(v0 + 120);
    *(v0 + 264) = *&v3[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue];
    v15 = *(v0 + 192);
    v16 = *(v0 + 184);
    v17 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v0 + 48) = sub_100210358;
    *(v0 + 56) = v7;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100096948;
    *(v0 + 40) = &unk_100389928;
    v8 = _Block_copy((v0 + 16));
    v9 = v3;
    static DispatchQoS.unspecified.getter();
    *(v0 + 104) = _swiftEmptyArrayStorage;
    sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v8);
    (*(v4 + 8))(v5, v6);
    (*(v16 + 8))(v15, v17);

    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_1002E87C0;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v10 = sub_100210870(&qword_1003B48E8, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100210870(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v19 + 8);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v18, v20);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_10020ACDC;
    v13 = *(v0 + 200);
    v14 = *(v0 + 144);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v0 + 64, v13, v10);
  }
}

uint64_t sub_10020A8D0()
{
  *(v0 + 256) = *(v0 + 248);
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v20 = *(v0 + 120);
    *(v0 + 264) = *&v3[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue];
    v15 = *(v0 + 192);
    v16 = *(v0 + 184);
    v17 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v0 + 48) = sub_100210358;
    *(v0 + 56) = v7;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100096948;
    *(v0 + 40) = &unk_100389928;
    v8 = _Block_copy((v0 + 16));
    v9 = v3;
    static DispatchQoS.unspecified.getter();
    *(v0 + 104) = _swiftEmptyArrayStorage;
    sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v8);
    (*(v4 + 8))(v5, v6);
    (*(v16 + 8))(v15, v17);

    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_1002E87C0;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v10 = sub_100210870(&qword_1003B48E8, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100210870(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v19 + 8);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v18, v20);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_10020ACDC;
    v13 = *(v0 + 200);
    v14 = *(v0 + 144);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v0 + 64, v13, v10);
  }
}

uint64_t sub_10020ACDC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[18];
    v5 = v2[15];

    v3(v4, v5);
    v6 = sub_10020B23C;
  }

  else
  {
    v7 = v2[32];
    v8 = v2[27];
    v9 = v2[25];
    (v2[34])(v2[18], v2[15]);
    v7(v8, v9);
    v6 = sub_10020AE50;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10020AE50()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v15 = *(v0 + 192);
    v16 = *(v0 + 184);
    v17 = *(v0 + 176);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    v18 = *(v0 + 136);
    v20 = *(v0 + 128);
    v6 = *(v0 + 112);
    v19 = *(v0 + 120);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v0 + 48) = sub_100210358;
    *(v0 + 56) = v7;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100096948;
    *(v0 + 40) = &unk_100389928;
    v8 = _Block_copy((v0 + 16));
    v9 = v6;
    static DispatchQoS.unspecified.getter();
    *(v0 + 104) = _swiftEmptyArrayStorage;
    sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v8);
    (*(v3 + 8))(v4, v5);
    (*(v16 + 8))(v15, v17);

    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_1002E87C0;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v10 = sub_100210870(&qword_1003B48E8, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100210870(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v20 + 8);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v18, v19);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_10020ACDC;
    v13 = *(v0 + 200);
    v14 = *(v0 + 144);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v0 + 64, v13, v10);
  }
}

uint64_t sub_10020B23C()
{
  (*(v0 + 256))(*(v0 + 216), *(v0 + 200));
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v15 = *(v0 + 192);
    v16 = *(v0 + 184);
    v17 = *(v0 + 176);
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    v18 = *(v0 + 136);
    v20 = *(v0 + 128);
    v6 = *(v0 + 112);
    v19 = *(v0 + 120);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v0 + 48) = sub_100210358;
    *(v0 + 56) = v7;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100096948;
    *(v0 + 40) = &unk_100389928;
    v8 = _Block_copy((v0 + 16));
    v9 = v6;
    static DispatchQoS.unspecified.getter();
    *(v0 + 104) = _swiftEmptyArrayStorage;
    sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v8);
    (*(v3 + 8))(v4, v5);
    (*(v16 + 8))(v15, v17);

    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_1002E87C0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;
    v10 = sub_100210870(&qword_1003B48E8, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100210870(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v20 + 8);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v18, v19);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_10020ACDC;
    v13 = *(v0 + 200);
    v14 = *(v0 + 144);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v0 + 64, v13, v10);
  }
}

void sub_10020B638(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A92B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_1000078E8(v6, qword_1003D2938);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v33 = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    static Date.now.getter();
    sub_100210870(&qword_1003B8800, &type metadata accessor for Date);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v16 = sub_10028D78C(v13, v15, &v34);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reporting SPL and SNR %s", v11, 0xCu);
    sub_100008664(v12);
  }

  v17 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine);
  if (v17 && [v17 isRunning])
  {
    if (qword_1003A9170 != -1)
    {
      swift_once();
    }

    v18 = 10.0;
    if (*(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU))
    {
      v19 = sub_10020F198();
      v21 = v20;
    }

    else
    {
      v21 = 40.0;
      v19 = 10.0;
    }

    if (*(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU))
    {
      v18 = sub_10020F198();
      v23 = v22;
    }

    else
    {
      v23 = 40.0;
    }

    sub_1000194E0(0, v19);
    sub_1000197E4(0, v21);
    v24 = [objc_opt_self() standardUserDefaults];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 BOOLForKey:v25];

    if (v26)
    {
      sub_1000194E0(1, v18);
      sub_1000197E4(1, v23);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        *(v29 + 4) = v18;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v27, v28, "Auxiliary Session Reported SNR: %f SPL: %f", v29, 0x16u);
      }
    }

    static Date.now.getter();
    sub_10022AB28(v5);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = v19;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v30, v31, "Default Session Reported SNR: %f SPL: %f", v32, 0x16u);
    }
  }
}

uint64_t sub_10020BB08()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v14 = *(v4 - 8);
  v15 = v4;
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_reportingTask))
  {

    Task.cancel()();
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2890);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopping audio recording", v10, 2u);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10021024C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003898B0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v3, v1);
  (*(v14 + 8))(v6, v15);
}

void sub_10020BED4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultRawInputAudioFile;
    swift_beginAccess();
    v3 = *&v1[v2];
    *&v1[v2] = 0;

    v4 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryRawInputAudioFile;
    swift_beginAccess();
    v5 = *&v1[v4];
    *&v1[v4] = 0;

    v6 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAUSNROutputAudioFile;
    swift_beginAccess();
    v7 = *&v1[v6];
    *&v1[v6] = 0;

    v8 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAUSNROutputAudioFile;
    swift_beginAccess();
    v9 = *&v1[v8];
    *&v1[v8] = 0;

    sub_10020BFC8();
  }
}

id sub_10020BFC8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2890);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Cancelling audio recognition", v9, 2u);
  }

  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue);
  *v5 = v10;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    return sub_10020C1A0();
  }

  __break(1u);
  return result;
}

id sub_10020C1A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine;
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode;
    v5 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioTapNode];
    v6 = v3;
    if (v5)
    {
      [v5 removeTapOnBus:0];
    }

    v7 = [v3 inputNode];
    [v7 removeTapOnBus:0];

    [v3 pause];
    [v3 reset];

    v8 = *&v1[v2];
    *&v1[v2] = 0;

    v9 = *&v1[v4];
    *&v1[v4] = 0;
  }

  v10 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine;
  v11 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine];
  if (v11)
  {
    v12 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode;
    v13 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioTapNode];
    v14 = v11;
    if (v13)
    {
      [v13 removeTapOnBus:0];
    }

    v15 = [v11 inputNode];
    [v15 removeTapOnBus:0];

    [v11 stop];
    v16 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession];
    if (v16)
    {
      v34[0] = 0;
      v17 = v16;
      if (([v17 setActive:0 withOptions:1 error:v34] & 1) == 0)
      {
        v27 = v34[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1003A9280 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_1000078E8(v28, qword_1003D2890);
        swift_errorRetain();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412290;
          swift_errorRetain();
          v33 = _swift_stdlib_bridgeErrorToNSError();
          *(v31 + 4) = v33;
          *v32 = v33;
          _os_log_impl(&_mh_execute_header, v29, v30, "Failed to deactivate auxiliary audio session: %@", v31, 0xCu);
          sub_100009EBC(v32, &unk_1003AECA0);
        }

        else
        {
        }

        goto LABEL_12;
      }

      v18 = v34[0];
    }

LABEL_12:
    v19 = *&v1[v12];
    *&v1[v12] = 0;

    v20 = *&v1[v10];
    *&v1[v10] = 0;
  }

  v34[3] = &type metadata for TranslateFeatures;
  v34[4] = sub_100009DF8();
  LOBYTE(v34[0]) = 13;
  v21 = isFeatureEnabled(_:)();
  sub_100008664(v34);
  if (v21)
  {
    v22 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU;
    v23 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_defaultAU];
    if (v23 && *(v23 + 72))
    {

      Task.cancel()();
    }

    v24 = OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU;
    v25 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAU];
    if (v25 && *(v25 + 72))
    {

      Task.cancel()();
    }

    *&v1[v22] = 0;

    *&v1[v24] = 0;
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  sub_100015C7C();
  return [v1 _accessibilityDidStopListening];
}

uint64_t sub_10020C640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_10021016C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003897E8;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_10020C914(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v50 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine);
  if (v15 && [v15 isRunning])
  {
    sub_10020BFC8();
  }

  if ((a2 & 2) != 0)
  {
    return v50(0);
  }

  v47 = v12;
  v48 = v11;
  v49 = v8;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2890);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Configuring audio session (TTS)", v19, 2u);
  }

  v20 = [objc_opt_self() sharedInstance];
  v21 = v20;
  if ((a2 & 0x10) != 0)
  {
    aBlock = 0;
    if ([v20 setCategory:AVAudioSessionCategoryPlayback withOptions:0 error:&aBlock])
    {
      v28 = aBlock;
      sub_1000D20D8(v21, a2);
      goto LABEL_25;
    }

LABEL_20:
    v29 = aBlock;
    v30 = _convertNSErrorToError(_:)();

LABEL_21:
    swift_willThrow();
    v46 = v21;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = _convertErrorToNSError(_:)();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to change audio category: %@", v33, 0xCu);
      sub_100009EBC(v34, &unk_1003AECA0);
    }

    sub_10000A2CC(0, &qword_1003A9C40);
    v36 = static OS_dispatch_queue.main.getter();
    v37 = swift_allocObject();
    v37[2] = v50;
    v37[3] = a4;
    v37[4] = v30;
    v55 = sub_1002101B8;
    v56 = v37;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100096948;
    v54 = &unk_100389838;
    v38 = _Block_copy(&aBlock);

    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v38);

    goto LABEL_24;
  }

  if (sub_1000D1EB0())
  {
    v22 = 44;
  }

  else
  {
    v22 = 12;
  }

  aBlock = 0;
  if (![v21 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:v22 error:&aBlock])
  {
    goto LABEL_20;
  }

  v23 = aBlock;
  sub_1000D20D8(v21, a2);
  if ((a2 & 0x20) != 0)
  {
    aBlock = 0;
    v24 = [v21 overrideOutputAudioPort:1936747378 error:&aBlock];
    v25 = aBlock;
    if (!v24)
    {
LABEL_27:
      v44 = v25;
      v30 = _convertNSErrorToError(_:)();

      goto LABEL_21;
    }

    v26 = aBlock;
  }

LABEL_25:
  aBlock = 0;
  v39 = [v21 setActive:1 error:&aBlock];
  v25 = aBlock;
  if (!v39)
  {
    goto LABEL_27;
  }

  sub_10000A2CC(0, &qword_1003A9C40);
  v40 = v25;
  v41 = static OS_dispatch_queue.main.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = v50;
  *(v42 + 24) = a4;
  v55 = sub_100210220;
  v56 = v42;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100096948;
  v54 = &unk_100389888;
  v43 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

LABEL_24:
  (*(v49 + 8))(v10, v7);
  return (*(v47 + 8))(v14, v48);
}

uint64_t sub_10020D144(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_recordingQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100210108;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100389798;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100210870(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_10020D444(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D2890);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Deactivating audio session", v8, 2u);
    }

    if (a2)
    {
      sub_10020BFC8();
    }

    v9 = [objc_opt_self() sharedInstance];
    v26 = 0;
    if ([v9 setActive:0 withOptions:1 error:&v26])
    {
      v10 = v26;
    }

    else
    {
      v11 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = _convertErrorToNSError(_:)();
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to deactivate audio session: %@", v14, 0xCu);
        sub_100009EBC(v15, &unk_1003AECA0);
      }

      else
      {
      }
    }

    v17 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession];
    if (v17)
    {
      v18 = v17;
      if (([v18 isActive] & 1) == 0)
      {
LABEL_17:

        return;
      }

      v26 = 0;
      if ([v18 setActive:0 withOptions:1 error:&v26])
      {
        v19 = v26;
        goto LABEL_17;
      }

      v20 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A92B8 != -1)
      {
        swift_once();
      }

      sub_1000078E8(v5, qword_1003D2938);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = _convertErrorToNSError(_:)();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to deactivate auxiliary audio session: %@", v23, 0xCu);
        sub_100009EBC(v24, &unk_1003AECA0);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10020D8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005AD4(&qword_1003AF688);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_10020C640(a3, sub_10020F378, v10);
}

uint64_t sub_10020DA78()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 84);
  }

  *(v0 + 84) = xmmword_1002E87D0;
  *(v0 + 100) = 0;
  *(v0 + 104) = 0;
  return 0x736E726561756678;
}

void sub_10020DAC4(void *a1, uint64_t a2)
{
  [a1 attachNode:a2];
  v5 = [a1 inputNode];
  v6 = [v5 inputFormatForBus:0];

  [v6 sampleRate];
  v8 = v7;

  v9 = [objc_allocWithZone(AVAudioFormat) initStandardFormatWithSampleRate:1 channels:v8];
  v10 = *(v2 + 48);
  *(v2 + 48) = v9;

  v11 = [a1 inputNode];
  v12 = [a1 inputNode];
  v13 = [v12 inputFormatForBus:0];

  [a1 connect:v11 to:a2 format:v13];
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000078E8(v14, qword_1003D2890);
  v15 = a1;
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v17 = 136315394;
    v20 = String.init<A>(describing:)();
    v22 = sub_10028D78C(v20, v21, &v26);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = [v15 inputNode];
    v24 = [v23 inputFormatForBus:0];

    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&_mh_execute_header, oslog, v16, "Finished connecting nodes for %s to engine with format %@", v17, 0x16u);
    sub_100009EBC(v18, &unk_1003AECA0);

    sub_100008664(v19);
  }

  else
  {
  }
}

uint64_t sub_10020DDFC()
{
  v1 = v0;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2890);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(describing:)();
    v9 = sub_10028D78C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinitializing AudioUnitForTranslation %s", v5, 0xCu);
    sub_100008664(v6);
  }

  return v1;
}

uint64_t sub_10020DF94()
{
  sub_10020DDFC();

  return swift_deallocClassInstance();
}

uint64_t sub_10020DFEC(void *a1, char a2, int a3)
{
  v5 = v4;
  v6 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = &selRef_oneSelectedWithSender_;
  v11 = [v8 integerForKey:v9];

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v11)
  {
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v12[2] = v11;
    memset_pattern16(v12 + 4, &unk_1002E87E0, 4 * v11);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  *(v6 + 32) = v12;
  v13 = [v7 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 integerForKey:v14];

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if (v15)
  {
    v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v16[2] = v15;
    memset_pattern16(v16 + 4, &unk_1002E87F0, 4 * v15);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  *(v6 + 40) = v16;
  *(v6 + 48) = 0;
  *(v6 + 56) = 960;
  v17 = [v7 standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  v5 = &selRef_optionButtonPressedWithSender_;
  [v17 doubleForKey:v18];
  v20 = v19;

  v21 = v20;
  *(v6 + 60) = v21;
  v22 = [v7 standardUserDefaults];
  v23 = String._bridgeToObjectiveC()();
  [v22 doubleForKey:v23];
  v25 = v24;

  v26 = v25;
  *(v6 + 64) = v26;
  *(v6 + 68) = 0;
  *(v6 + 72) = 0;
  v27 = [v7 standardUserDefaults];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 integerForKey:v28];

  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (HIDWORD(v29))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v6 + 80) = v29;
  *(v6 + 92) = 0;
  *(v6 + 84) = 0;
  *(v6 + 100) = 0;
  *(v6 + 104) = 1;
  v30 = sub_10020DA78();
  v32 = v31;
  v34 = v33;
  *(v6 + 24) = a2 & 1;
  v35 = [a1 inputNode];
  v5 = [v35 inputFormatForBus:0];

  v10 = &selRef_optionButtonPressedWithSender_;
  if (![v5 channelCount] || (objc_msgSend(v5, "sampleRate"), v36 <= 0.0))
  {
    if (qword_1003A9280 == -1)
    {
LABEL_25:
      v49 = type metadata accessor for Logger();
      sub_1000078E8(v49, qword_1003D2890);
      v50 = v5;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 67109376;
        *(v53 + 4) = [v50 v10[217]];

        *(v53 + 8) = 2048;
        [v50 sampleRate];
        *(v53 + 10) = v54;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to Instantiate AudioUnitForTranslation: incorrect input node format CH:%u SR:%f", v53, 0x12u);
      }

      else
      {

        v51 = v50;
      }

      sub_1002103EC();
      swift_allocError();
      *v55 = 1;
      swift_willThrow();

      return v6;
    }

LABEL_34:
    swift_once();
    goto LABEL_25;
  }

  v37 = objc_opt_self();
  v38 = swift_allocObject();
  *(v38 + 16) = v6;
  *(v38 + 24) = a3;
  *(v38 + 28) = a2 & 1;
  *(v38 + 32) = a1;
  v64 = sub_1002104F4;
  v65 = v38;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_10001A5C8;
  v63 = &unk_1003899C8;
  v39 = _Block_copy(&aBlock);

  v40 = a1;

  aBlock = v30;
  v61 = v32;
  LODWORD(v62) = v34;
  [v37 instantiateWithComponentDescription:&aBlock options:1 completionHandler:v39];
  _Block_release(v39);
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000078E8(v41, qword_1003D2890);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    if (*(v6 + 24))
    {
      v46 = 0xD000000000000011;
    }

    else
    {
      v46 = 0x20746C7561666544;
    }

    if (*(v6 + 24))
    {
      v47 = 0x80000001002FA7B0;
    }

    else
    {
      v47 = 0xEF6E6F6973736553;
    }

    v48 = sub_10028D78C(v46, v47, &aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Instantiated Audio Unit for %s", v44, 0xCu);
    sub_100008664(v45);
  }

  return v6;
}

void sub_10020E724(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, NSObject *a6)
{
  v11 = *(a3 + 16);
  *(a3 + 16) = a1;
  v12 = a1;

  if (a2 || !a1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000078E8(v45, qword_1003D2890);
    swift_errorRetain();
    osloga = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      inData = a2;
      v55 = v48;
      *v47 = 136315138;
      swift_errorRetain();
      sub_100005AD4(&unk_1003AECD0);
      v49 = String.init<A>(describing:)();
      v51 = sub_10028D78C(v49, v50, &v55);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, osloga, v46, "SNR instantiation failed: %s", v47, 0xCu);
      sub_100008664(v48);
    }

    else
    {
    }
  }

  else
  {
    oslog = a6;
    v13 = [v12 AUAudioUnit];
    [v13 setMaximumFramesToRender:960];

    v14 = [v12 AUAudioUnit];
    v15 = [v14 parameterTree];

    if (v15)
    {
      v16 = [v15 parameterWithID:1 scope:0 element:0];

      if (v16)
      {
        LODWORD(v17) = *(a3 + 60);
        [v16 setValue:v17];
      }
    }

    v18 = [v12 AUAudioUnit];
    v19 = [v18 parameterTree];

    if (v19)
    {
      v20 = [v19 parameterWithID:2 scope:0 element:0];

      if (v20)
      {
        [v20 setValue:0.0];
      }
    }

    v21 = [v12 AUAudioUnit];
    v22 = [v21 parameterTree];

    if (v22)
    {
      v23 = [v22 parameterWithID:3 scope:0 element:0];

      if (v23)
      {
        [v23 setValue:0.0];
      }
    }

    v24 = [v12 AUAudioUnit];
    v25 = [v24 parameterTree];

    if (v25)
    {
      v26 = [v25 parameterWithID:5 scope:0 element:0];

      if (v26)
      {
        *&v27 = a4;
        [v26 setValue:v27];
      }
    }

    v28 = [v12 AUAudioUnit];
    v29 = [v28 parameterTree];

    if (v29)
    {
      v30 = [v29 parameterWithID:6 scope:0 element:0];

      if (v30)
      {
        LODWORD(v31) = *(a3 + 64);
        [v30 setValue:v31];
      }
    }

    v32 = [objc_opt_self() standardUserDefaults];
    v33 = String._bridgeToObjectiveC()();
    [v32 doubleForKey:v33];
    v35 = v34;

    v36 = [v12 AUAudioUnit];
    v37 = [v36 parameterTree];

    if (v37)
    {
      v38 = [v37 parameterWithID:7 scope:0 element:0];

      if (v38)
      {
        *&v39 = v35;
        [v38 setValue:v39];
      }
    }

    v40 = [v12 audioUnit];
    LODWORD(inData) = 1;
    AudioUnitSetProperty(v40, 0x6E73706Cu, 0, 0, &inData, 4u);
    if (_LTIsInternalInstall())
    {
      v41 = [objc_opt_self() standardUserDefaults];
      v42 = String._bridgeToObjectiveC()();
      v43 = [v41 BOOLForKey:v42];

      if (v43)
      {
        v44 = String._bridgeToObjectiveC()();

        v55 = v44;
        AudioUnitSetProperty(v40, 0x61636170u, 0, 0, &v55, 8u);
      }
    }

    sub_10020DAC4(oslog, v12);
  }
}

void sub_10020EE18()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 AUAudioUnit];
    v4 = [v3 parameterTree];

    v5 = 10.0;
    if (v4)
    {
      v6 = [v4 parameterWithAddress:0];

      if (v6)
      {
        [v6 value];
        v5 = v7;
      }
    }

    v8 = *(v1 + 16);
    if (v8)
    {
      v9 = [v8 AUAudioUnit];
      v10 = [v9 parameterTree];

      if (v10)
      {
        v11 = [v10 parameterWithAddress:4];

        if (v11)
        {
          [v11 value];
          v13 = v12;

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v5 = 10.0;
  }

  v13 = 40.0;
LABEL_11:
  v14 = *(v1 + 68);
  v15 = *(v1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1000A396C(v15);
  }

  if (*(v15 + 2) <= v14)
  {
    __break(1u);
  }

  else
  {
    *&v15[4 * v14 + 32] = v5;
    *(v1 + 32) = v15;
    v14 = *(v1 + 68);
    v15 = *(v1 + 40);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 40) = v15;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  v15 = sub_1000A396C(v15);
LABEL_15:
  if (*(v15 + 2) <= v14)
  {
    __break(1u);
    goto LABEL_33;
  }

  *&v15[4 * v14 + 32] = v13;
  *(v1 + 40) = v15;
  v18 = *(v1 + 68);
  v19 = __CFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = *(v1 + 80);
  if (v21)
  {
    *(v1 + 68) = v20 % v21;
    if (qword_1003A92B8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_19:
  v22 = type metadata accessor for Logger();
  sub_1000078E8(v22, qword_1003D2938);

  oslog = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315650;
    if (*(v1 + 24))
    {
      v26 = 0xD000000000000011;
    }

    else
    {
      v26 = 0x20746C7561666544;
    }

    if (*(v1 + 24))
    {
      v27 = 0x80000001002FA7B0;
    }

    else
    {
      v27 = 0xEF6E6F6973736553;
    }

    v28 = sub_10028D78C(v26, v27, &v30);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v5;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v23, "%s SNR: %f SPL: %f", v24, 0x20u);
    sub_100008664(v25);
  }
}

float sub_10020F198()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = 0.0;
  if (v2)
  {
    if (v2 <= 7)
    {
      v4 = 0;
LABEL_7:
      v7 = v2 - v4;
      v8 = (v1 + 4 * v4 + 32);
      do
      {
        v9 = *v8++;
        v3 = v3 + v9;
        --v7;
      }

      while (v7);
      goto LABEL_9;
    }

    v4 = v2 & 0x7FFFFFFFFFFFFFF8;
    v5 = v1 + 48;
    v6 = v2 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v3 = (((((((v3 + COERCE_FLOAT(*(v5 - 16))) + COERCE_FLOAT(HIDWORD(*(v5 - 16)))) + COERCE_FLOAT(*(v5 - 8))) + COERCE_FLOAT(HIDWORD(*(v5 - 16)))) + COERCE_FLOAT(*v5)) + COERCE_FLOAT(HIDWORD(*v5))) + COERCE_FLOAT(*(v5 + 8))) + COERCE_FLOAT(HIDWORD(*v5));
      v5 += 32;
      v6 -= 8;
    }

    while (v6);
    if (v2 != v4)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v10 = *(v0 + 40);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return v3 / *(v0 + 80);
  }

  if (v11 <= 7)
  {
    v12 = 0;
    v13 = 0.0;
LABEL_15:
    v16 = v11 - v12;
    v17 = (v10 + 4 * v12 + 32);
    do
    {
      v18 = *v17++;
      v13 = v13 + v18;
      --v16;
    }

    while (v16);
    return v3 / *(v0 + 80);
  }

  v12 = v11 & 0x7FFFFFFFFFFFFFF8;
  v14 = v10 + 48;
  v13 = 0.0;
  v15 = v11 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v13 = (((((((v13 + COERCE_FLOAT(*(v14 - 16))) + COERCE_FLOAT(HIDWORD(*(v14 - 16)))) + COERCE_FLOAT(*(v14 - 8))) + COERCE_FLOAT(HIDWORD(*(v14 - 16)))) + COERCE_FLOAT(*v14)) + COERCE_FLOAT(HIDWORD(*v14))) + COERCE_FLOAT(*(v14 + 8))) + COERCE_FLOAT(HIDWORD(*v14));
    v14 += 32;
    v15 -= 8;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_15;
  }

  return v3 / *(v0 + 80);
}

uint64_t sub_10020F2E4()
{
  v1 = sub_100005AD4(&qword_1003AF688);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10020F378()
{
  sub_100005AD4(&qword_1003AF688);

  return sub_1000CC648();
}

void sub_10020F3F4(char a1, id *a2, id a3, int a4, uint64_t a5, void *a6, int a7)
{
  v69 = a7;
  v74 = a4;
  v70 = a2;
  v12 = sub_100005AD4(&qword_1003AB2D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v72 = v15;
  v73 = v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v66 - v21;
  __chkstk_darwin(v20);
  v71 = &v66 - v23;
  sub_100210564();
  if (v24)
  {
    v25 = &OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_audioEngine;
    if (a1)
    {
      v25 = &OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioEngine;
    }

    v26 = *(v7 + *v25);
    if (v26)
    {
      v68 = *(v7 + *v25);
      if (v74)
      {
        v27 = [v26 inputNode];
        a3 = [v27 inputFormatForBus:0];

        if (a3)
        {
LABEL_7:
          aBlock = qword_1003B8528;
          v76 = qword_1003B8530;

          v28._countAndFlagsBits = 95;
          v28._object = 0xE100000000000000;
          String.append(_:)(v28);
          v29._countAndFlagsBits = a5;
          v29._object = a6;
          String.append(_:)(v29);
          v30._countAndFlagsBits = 1717658414;
          v30._object = 0xE400000000000000;
          String.append(_:)(v30);
          URL.init(fileURLWithPath:)();

          v32 = v72;
          v31 = v73;
          (*(v73 + 56))(v14, 0, 1, v72);
          v33 = v71;
          URL.init(fileURLWithPath:isDirectory:relativeTo:)();

          v34 = v14;
          v35 = v33;
          sub_100009EBC(v34, &qword_1003AB2D8);
          v36 = *(v31 + 16);
          v36(v22, v33, v32);
          v37 = [a3 settings];
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = objc_allocWithZone(AVAudioFile);
          v39 = sub_10020FF10(v22);
          if (!v39)
          {
            (*(v31 + 8))(v35, v32);

            return;
          }

          v67 = v39;

          if (qword_1003A9280 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_1000078E8(v43, qword_1003D2890);
          v36(v19, v35, v32);
          v44 = a3;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            aBlock = v66;
            *v47 = 136446466;
            v49 = URL.description.getter();
            v51 = v50;
            v52 = v44;
            v53 = *(v73 + 8);
            v53(v19, v72);
            v54 = sub_10028D78C(v49, v51, &aBlock);

            *(v47 + 4) = v54;
            *(v47 + 12) = 2112;
            *(v47 + 14) = v52;
            *v48 = a3;
            v55 = v53;
            v44 = v52;
            v56 = v52;
            _os_log_impl(&_mh_execute_header, v45, v46, "Created audio file: %{public}s with format: %@", v47, 0x16u);
            sub_100009EBC(v48, &unk_1003AECA0);
            v35 = v71;

            sub_100008664(v66);
            v32 = v72;
          }

          else
          {

            v55 = *(v73 + 8);
            v55(v19, v32);
          }

          v57 = v67;
          *v70 = v67;
          if (v74 & 1) != 0 && (v69)
          {
            v58 = v57;
            v59 = [v68 inputNode];
            v60 = [objc_opt_self() standardUserDefaults];
            v61 = String._bridgeToObjectiveC()();
            v62 = [v60 integerForKey:v61];

            if ((v62 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (!HIDWORD(v62))
            {
              v63 = swift_allocObject();
              *(v63 + 16) = v58;
              v79 = sub_10021079C;
              v80 = v63;
              aBlock = _NSConcreteStackBlock;
              v76 = 1107296256;
              v77 = sub_100206EA4;
              v78 = &unk_100389A90;
              v64 = _Block_copy(&aBlock);
              v65 = v44;

              [v59 installTapOnBus:0 bufferSize:v62 format:v65 block:v64];

              _Block_release(v64);
LABEL_28:
              v55(v35, v32);
              return;
            }

            __break(1u);
            return;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v40 = a3;
        v41 = v68;
        if (a3)
        {
          goto LABEL_7;
        }
      }

      v42 = v68;
    }

    else
    {
    }
  }
}

void sub_10020FBA8(uint64_t a1, int a2, id a3)
{
  v10 = 0;
  if ([a3 writeFromBuffer:a1 error:&v10])
  {

    _objc_retain_x1();
  }

  else
  {
    v3 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000078E8(v4, qword_1003D2890);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not write file to buffer: %@", v7, 0xCu);
      sub_100009EBC(v8, &unk_1003AECA0);
    }

    else
    {
    }
  }
}

id sub_10020FDC4(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReading:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_10020FF10(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = 0;
  v7 = [v2 initForWriting:v5 settings:isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = type metadata accessor for URL();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_100210098()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002100D0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100210114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021012C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100210178()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002101E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021026C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_10020A070(a1, v4, v5, v6);
}

uint64_t sub_100210320()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100210360(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002103EC()
{
  result = qword_1003B8808;
  if (!qword_1003B8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8808);
  }

  return result;
}

uint64_t sub_100210440()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002104AC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100210508()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100210564()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_1003A92F8 != -1)
    {
      swift_once();
    }

    v3 = qword_1003D2A80;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 fileExistsAtPath:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 defaultManager];
    v9 = String._bridgeToObjectiveC()();
    v14 = 0;
    v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v14];

    if (v10)
    {
      v11 = v14;
    }

    else
    {
      v12 = v14;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      return 0;
    }
  }

  return v3;
}

uint64_t sub_1002107CC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100210870(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002108B8()
{
  result = qword_1003B8828;
  if (!qword_1003B8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8828);
  }

  return result;
}

unint64_t sub_100210930()
{
  result = qword_1003B8830;
  if (!qword_1003B8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8830);
  }

  return result;
}

unint64_t sub_100210988()
{
  result = qword_1003B8838;
  if (!qword_1003B8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8838);
  }

  return result;
}

unint64_t sub_100210A64()
{
  result = qword_1003B8840;
  if (!qword_1003B8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8840);
  }

  return result;
}

id sub_100210AB8()
{
  v0 = objc_allocWithZone(type metadata accessor for TranslationListController());

  return sub_1002A49B8(v1);
}

uint64_t sub_100210AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100210BE8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100210B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100210BE8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100210BC0()
{
  sub_100210BE8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100210BE8()
{
  result = qword_1003B8848;
  if (!qword_1003B8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8848);
  }

  return result;
}

char *sub_100210C3C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  __chkstk_darwin(v1);
  v26 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_token] = -1;
  v22 = OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_queue;
  v11 = sub_100026AA0();
  v21[0] = "board.ringerstate";
  v21[1] = v11;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002119F4(&qword_1003AED78, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005AD4(&qword_1003AED80);
  sub_1000A5708(&qword_1003AED88, &qword_1003AED80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *&v0[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver__muted] = 0;
  v12 = type metadata accessor for RingerSwitchObserver();
  v31.receiver = v0;
  v31.super_class = v12;
  v13 = objc_msgSendSuper2(&v31, "init");
  sub_1002112A8();
  v14 = *&v13[OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_queue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002119EC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100389CF0;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1002119F4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_1000A5708(&qword_1003AB9A0, &unk_1003A9C50);
  v19 = v26;
  v18 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v28 + 8))(v19, v18);
  (*(v24 + 8))(v10, v25);

  return v13;
}

void sub_100211144()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10021166C(*(Strong + OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_token));
  }
}

id sub_1002111C8()
{
  v1 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_token];
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RingerSwitchObserver();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002112A8()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_token;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_token) == -1)
  {
    out_token = -1;
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1002119CC;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100211618;
    aBlock[3] = &unk_100389CC8;
    v4 = _Block_copy(aBlock);

    v5 = String.utf8CString.getter();
    v6 = notify_register_dispatch((v5 + 32), &out_token, v2, v4);

    _Block_release(v4);
    if (v6)
    {
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000078E8(v7, qword_1003D28F0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67240192;
        *(v10 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to register for ringer switch state change: %{public}u", v10, 8u);
      }
    }

    else
    {
      v11 = v0;
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000078E8(v12, qword_1003D28F0);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67240192;
        swift_beginAccess();
        *(v15 + 4) = out_token;
        _os_log_impl(&_mh_execute_header, v13, v14, "Monitor ringer switch state change with token: %{public}d", v15, 8u);
      }

      swift_beginAccess();
      *(v11 + v1) = out_token;
    }
  }
}

void sub_1002115BC(int a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10021166C(a1);
  }
}

uint64_t sub_100211618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10021166C(int a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&state64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 == -1)
  {
    return;
  }

  state64 = 0;
  state = notify_get_state(a1, &state64);
  if (state)
  {
    a1 = state;
    if (qword_1003A92A0 == -1)
    {
LABEL_5:
      v10 = type metadata accessor for Logger();
      sub_1000078E8(v10, qword_1003D28F0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67240192;
        *(v13 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v11, v12, "Failed to get ringer switch state: %{public}u", v13, 8u);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v14 = v1;
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D28F0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    swift_beginAccess();
    *(v18 + 4) = state64;
    _os_log_impl(&_mh_execute_header, v16, v17, "Ringer switch state: %{public}llu", v18, 0xCu);
  }

  swift_beginAccess();
  *(v14 + OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver__muted) = state64 == 0;
}

uint64_t sub_100211994()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002119D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002119F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100211A70@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v6 = 0.75;
  }

  else
  {
    v6 = 1.0;
  }

  static UnitPoint.center.getter();
  v8 = v7;
  v10 = v9;
  (*(v3 + 32))(a1, v5, v2);
  result = sub_100005AD4(&qword_1003B8890);
  v12 = a1 + *(result + 36);
  *v12 = v6;
  *(v12 + 8) = v6;
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  return result;
}

unint64_t sub_100211B9C()
{
  result = qword_1003B8898;
  if (!qword_1003B8898)
  {
    sub_100005EA8(&qword_1003B8890);
    sub_100211C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8898);
  }

  return result;
}

unint64_t sub_100211C28()
{
  result = qword_1003AB640;
  if (!qword_1003AB640)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB640);
  }

  return result;
}

uint64_t sub_100211D0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100211D84()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__liveTranslationViewVisible;
  v2 = sub_100005AD4(&unk_1003B8DF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__personalTranslatorLockScreenBroadcastTranslation;
  v5 = sub_100005AD4(&qword_1003B8BA8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__personalTranslatorBroadcastTranslation, v5);
  v6(v0 + OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__broadcastTranslation, v5);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__faceToFaceVisible, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__showingAudioRouting, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__clearConfirmationVisible, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__favoritesSheetVisible, v2);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__interruptionEvent;
  v8 = sub_100005AD4(&qword_1003B8BA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SceneContext()
{
  result = qword_1003B8910;
  if (!qword_1003B8910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100211FE0()
{
  sub_1000C1BC0();
  if (v0 <= 0x3F)
  {
    sub_1002120F0();
    if (v1 <= 0x3F)
    {
      sub_100212154();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002120F0()
{
  if (!qword_1003B8920)
  {
    sub_100005EA8(&qword_1003AA748);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B8920);
    }
  }
}

void sub_100212154()
{
  if (!qword_1003B8928)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B8928);
    }
  }
}

uint64_t sub_1002121AC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B8BA0);
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v34 - v3;
  v4 = type metadata accessor for UUID();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = __chkstk_darwin(v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v34 - v7;
  v36 = sub_100005AD4(&qword_1003B8BA8);
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v34 - v9;
  v11 = sub_100005AD4(&unk_1003B8DF0);
  v35 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__liveTranslationViewVisible;
  LOBYTE(v44) = 0;
  Published.init(initialValue:)();
  v16 = *(v12 + 32);
  v16(v0 + v15, v14, v11);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__personalTranslatorLockScreenBroadcastTranslation;
  v44 = 0;
  v45 = 0;
  sub_100005AD4(&qword_1003AA748);
  Published.init(initialValue:)();
  v18 = *(v8 + 32);
  v19 = v0 + v17;
  v20 = v36;
  v18(v19, v10, v36);
  v21 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__personalTranslatorBroadcastTranslation;
  v44 = 0;
  v45 = 0;
  Published.init(initialValue:)();
  v18(v1 + v21, v10, v20);
  v22 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__broadcastTranslation;
  v44 = 0;
  v45 = 0;
  Published.init(initialValue:)();
  v18(v1 + v22, v10, v20);
  v23 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__faceToFaceVisible;
  LOBYTE(v44) = 0;
  Published.init(initialValue:)();
  v24 = v35;
  v16(v1 + v23, v14, v35);
  v25 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__showingAudioRouting;
  LOBYTE(v44) = 0;
  Published.init(initialValue:)();
  v16(v1 + v25, v14, v24);
  v26 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__clearConfirmationVisible;
  LOBYTE(v44) = 0;
  Published.init(initialValue:)();
  v16(v1 + v26, v14, v24);
  v27 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__favoritesSheetVisible;
  LOBYTE(v44) = 0;
  Published.init(initialValue:)();
  v16(v1 + v27, v14, v24);
  v28 = OBJC_IVAR____TtC17SequoiaTranslator12SceneContext__interruptionEvent;
  v29 = v37;
  UUID.init()();
  v30 = v39;
  v31 = v40;
  (*(v39 + 16))(v38, v29, v40);
  v32 = v41;
  Published.init(initialValue:)();
  (*(v30 + 8))(v29, v31);
  (*(v42 + 32))(v1 + v28, v32, v43);
  return v1;
}

uint64_t sub_100212678@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SceneContext();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002126B8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  UUID.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v1 + 16))(v4, v6, v0);

  static Published.subscript.setter();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100212804@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100212884(char *a1)
{
  sub_100212CFC(*a1);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100212914(uint64_t *a1)
{
  sub_100212ED0(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return static Published.subscript.setter();
}

uint64_t sub_1002129B8(void *a1)
{
  if (*a1)
  {
    v1 = objc_opt_self();
    swift_unknownObjectRetain();
    v2 = [v1 sharedApplication];
    [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100212A90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100212B10(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9(v6, v8, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v8, v2);
}

void sub_100212CFC(char a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() sharedApplication];
    [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2920);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x656C6269736976;
    }

    else
    {
      v7 = 0x6973697620746F6ELL;
    }

    if (a1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEB00000000656C62;
    }

    v9 = sub_10028D78C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "liveTranslationViewVisible set %s", v5, 0xCu);
    sub_100008664(v6);
  }
}

void sub_100212ED0(uint64_t a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() sharedApplication];
    [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D2920);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x65756C6176206F74;
    }

    else
    {
      v7 = 0x6C696E206F74;
    }

    if (a1)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    v9 = sub_10028D78C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "personalTranslatorBroadcastTranslation set %s", v5, 0xCu);
    sub_100008664(v6);
  }
}

uint64_t sub_1002130B0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000C81C0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000C81C0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10021D7CC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000C81C0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1002131CC(uint64_t a1)
{
  v32 = type metadata accessor for URLQueryItem();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = _swiftEmptyArrayStorage;
  sub_1000C4DF4(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    URLQueryItem.init(name:value:)();

    v35 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      sub_1000C4DF4(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    v7[2] = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1000C81C0(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_1000C81C0(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100213518(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

BOOL sub_10021360C()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 2 && v2 != 0;
}

id sub_1002136FC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sharedTranslationOptions;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sharedTranslationOptions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sharedTranslationOptions);
  }

  else
  {
    v4 = v0;
    sub_10000A2CC(0, &qword_1003BB780);
    v5 = sub_10000B55C();
    if (v5)
    {
      v6 = v5;
      v7 = sub_10000A9C4();
    }

    else
    {
      v7 = [objc_allocWithZone(type metadata accessor for SharedTranslationOptions()) init];
    }

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1002137B0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___store;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___store))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___store);
  }

  else
  {
    v3 = v0;
    sub_10000A2CC(0, &qword_1003BB780);
    v4 = sub_10000B55C();
    if (v4)
    {
      v2 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_store);
      v5 = v4;
    }

    else
    {
      type metadata accessor for TranslationStoreCoreData();
      swift_allocObject();
      v2 = TranslationStoreCoreData.init(inMemoryOnly:)();
    }

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100213878()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession);
  }

  else
  {
    v3 = sub_1002137B0();
    type metadata accessor for TranslationAppSession();
    v4 = swift_allocObject();
    v2 = sub_10021D9F0(v3, 1, v4, 480.0);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_10021390C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___favoritesImporter;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___favoritesImporter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___favoritesImporter);
  }

  else
  {
    v4 = v0;
    v5 = sub_1002137B0();
    v6 = objc_allocWithZone(type metadata accessor for FavoritesImporter());
    v7 = sub_1000FF5C8(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_100213990()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sessionManager;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sessionManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___sessionManager);
  }

  else
  {
    v3 = v0;
    sub_10000A2CC(0, &qword_1003BB780);
    v4 = sub_10000B55C();
    if (v4)
    {
      v5 = v4;
      v2 = sub_10000AB7C();
    }

    else
    {
      v6 = sub_1002137B0();
      type metadata accessor for TranslationSessionManager();
      v7 = swift_allocObject();
      v2 = sub_10021CE24(v6, v7, 480.0);
    }

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100213A64@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.managedObjectContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100213ABC(unint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  v3 = __chkstk_darwin(v2 - 8);
  v150 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v151 = &v135 - v5;
  v161 = type metadata accessor for URLQueryItem();
  v6 = *(v161 - 8);
  v7 = __chkstk_darwin(v161);
  v154 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v140 = &v135 - v10;
  v11 = __chkstk_darwin(v9);
  v155 = &v135 - v12;
  v13 = __chkstk_darwin(v11);
  v141 = &v135 - v14;
  v15 = __chkstk_darwin(v13);
  v156 = &v135 - v16;
  v17 = __chkstk_darwin(v15);
  v142 = &v135 - v18;
  v19 = __chkstk_darwin(v17);
  v157 = &v135 - v20;
  v21 = __chkstk_darwin(v19);
  v143 = &v135 - v22;
  v23 = __chkstk_darwin(v21);
  v158 = &v135 - v24;
  v25 = __chkstk_darwin(v23);
  v144 = &v135 - v26;
  v27 = __chkstk_darwin(v25);
  v159 = &v135 - v28;
  v29 = __chkstk_darwin(v27);
  v145 = &v135 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v135 - v32;
  __chkstk_darwin(v31);
  v146 = &v135 - v34;
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100005AD4(&qword_1003B8CE0);
  __chkstk_darwin(v39 - 8);
  v41 = &v135 - v40;
  v42 = type metadata accessor for URLComponents();
  v152 = *(v42 - 8);
  v153 = v42;
  v43 = __chkstk_darwin(v42);
  v45 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v160 = &v135 - v46;
  if (qword_1003A9200 != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v47 = type metadata accessor for Logger();
    v48 = sub_1000078E8(v47, qword_1003D2710);

    v148 = v48;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    v51 = os_log_type_enabled(v49, v50);
    v149 = v45;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v139 = v35;
      v53 = v52;
      v54 = swift_slowAlloc();
      v136 = v38;
      v55 = v54;
      v163[0] = v54;
      *v53 = 136380675;
      v138 = v33;
      v137 = v36;
      sub_10000A2CC(0, &qword_1003B8CC8);
      sub_1000819A8(&unk_1003B8CD0, &qword_1003B8CC8);
      v56 = Set.description.getter();
      v58 = sub_10028D78C(v56, v57, v163);

      *(v53 + 4) = v58;
      v36 = v137;
      v33 = v138;
      _os_log_impl(&_mh_execute_header, v49, v50, "handleURLContexts %{private}s", v53, 0xCu);
      sub_100008664(v55);
      v38 = v136;

      v35 = v139;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = __CocoaSet.count.getter();
      if (result < 1)
      {
        return result;
      }
    }

    else
    {
      result = *(a1 + 16);
      if (result < 1)
      {
        return result;
      }
    }

    result = sub_1002130B0(a1);
    if (!result)
    {
      break;
    }

    v60 = result;
    v61 = [result URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v62 = *(v36 + 8);
    v36 += 8;
    v62(v38, v35);
    v64 = v152;
    v63 = v153;
    if ((*(v152 + 48))(v41, 1, v153) == 1)
    {
      v65 = &qword_1003B8CE0;
      v66 = v41;
      return sub_100009EBC(v66, v65);
    }

    (*(v64 + 32))(v160, v41, v63);
    v67 = URLComponents.queryItems.getter();
    if (v67)
    {
      v45 = v67;
      v38 = *(v67 + 16);
      if (v38)
      {
        a1 = 0;
        v35 = 0x614C656372756F73;
        v41 = v6 + 8;
        while (a1 < *(v45 + 16))
        {
          (*(v6 + 16))(v33, v45 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1, v161);
          if (URLQueryItem.name.getter() == 0x614C656372756F73 && v68 == 0xEE0065676175676ELL)
          {

LABEL_22:

            v69 = v146;
            v70 = v33;
            v71 = v161;
            (*(v6 + 32))(v146, v70, v161);
            v138 = URLQueryItem.value.getter();
            v139 = v72;
            (*(v6 + 8))(v69, v71);
            goto LABEL_23;
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            goto LABEL_22;
          }

          ++a1;
          (*v41)(v33, v161);
          if (v38 == a1)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_118;
      }

LABEL_19:
    }

    v138 = 0;
    v139 = 0;
LABEL_23:
    v73 = URLComponents.queryItems.getter();
    if (v73)
    {
      v33 = v73;
      v41 = *(v73 + 16);
      if (v41)
      {
        v38 = 0;
        v45 = 0xEE0065676175676ELL;
        a1 = v6 + 16;
        v36 = v6 + 8;
        while (v38 < *(v33 + 2))
        {
          (*(v6 + 16))(v159, &v33[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v38], v161);
          if (URLQueryItem.name.getter() == 0x614C746567726174 && v74 == 0xEE0065676175676ELL)
          {

LABEL_34:

            v75 = v145;
            v76 = v161;
            (*(v6 + 32))(v145, v159, v161);
            v137 = URLQueryItem.value.getter();
            v146 = v77;
            (*(v6 + 8))(v75, v76);
            goto LABEL_35;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_34;
          }

          ++v38;
          (*v36)(v159, v161);
          if (v41 == v38)
          {
            goto LABEL_31;
          }
        }

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
        goto LABEL_123;
      }

LABEL_31:
    }

    v137 = 0;
    v146 = 0;
LABEL_35:
    v78 = URLComponents.queryItems.getter();
    if (v78)
    {
      v33 = v78;
      v41 = *(v78 + 16);
      if (v41)
      {
        v38 = 0;
        v45 = 0xEC000000656C6163;
        a1 = v6 + 16;
        v36 = v6 + 8;
        while (v38 < *(v33 + 2))
        {
          (*(v6 + 16))(v158, &v33[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v38], v161);
          if (URLQueryItem.name.getter() == 0x6F4C656372756F73 && v79 == 0xEC000000656C6163)
          {

LABEL_45:

            v80 = v144;
            v81 = v161;
            (*(v6 + 32))(v144, v158, v161);
            URLQueryItem.value.getter();
            v83 = v82;
            (*(v6 + 8))(v80, v81);
            if (!v83)
            {
              goto LABEL_47;
            }

            Locale.init(identifier:)();
            v84 = 0;
            goto LABEL_48;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_45;
          }

          ++v38;
          (*v36)(v158, v161);
          if (v41 == v38)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_119;
      }

LABEL_43:
    }

LABEL_47:
    v84 = 1;
LABEL_48:
    v85 = type metadata accessor for Locale();
    v158 = *(v85 - 8);
    v35 = *(v158 + 7);
    v86 = v158 + 56;
    v45 = 1;
    (v35)(v151, v84, 1, v85);
    v87 = URLComponents.queryItems.getter();
    v159 = v85;
    if (v87)
    {
      v33 = v87;
      v144 = v86;
      v145 = v35;
      a1 = *(v87 + 16);
      if (a1)
      {
        v36 = 0;
        v45 = 0xEC000000656C6163;
        v41 = v6 + 16;
        v38 = v6 + 8;
        while (v36 < *(v33 + 2))
        {
          (*(v6 + 16))(v157, &v33[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36], v161);
          if (URLQueryItem.name.getter() == 0x6F4C746567726174 && v88 == 0xEC000000656C6163)
          {

LABEL_58:

            v89 = v143;
            v90 = v161;
            (*(v6 + 32))(v143, v157, v161);
            URLQueryItem.value.getter();
            v92 = v91;
            (*(v6 + 8))(v89, v90);
            if (!v92)
            {
              goto LABEL_60;
            }

            Locale.init(identifier:)();
            v45 = 0;
            goto LABEL_61;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_58;
          }

          ++v36;
          (*v38)(v157, v161);
          if (a1 == v36)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_120;
      }

LABEL_56:

LABEL_60:
      v45 = 1;
LABEL_61:
      v85 = v159;
      v35 = v145;
    }

    (v35)(v150, v45, 1, v85);
    v93 = URLComponents.queryItems.getter();
    if (v93)
    {
      v33 = v93;
      v35 = *(v93 + 16);
      if (v35)
      {
        v36 = 0;
        v41 = 1954047348;
        v38 = v6 + 16;
        a1 = 0xE400000000000000;
        while (v36 < *(v33 + 2))
        {
          (*(v6 + 16))(v156, &v33[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36], v161);
          if (URLQueryItem.name.getter() == 1954047348 && v94 == 0xE400000000000000)
          {

LABEL_73:

            v95 = v142;
            v45 = v161;
            (*(v6 + 32))(v142, v156, v161);
            v145 = URLQueryItem.value.getter();
            v157 = v96;
            (*(v6 + 8))(v95, v45);
            goto LABEL_74;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            goto LABEL_73;
          }

          ++v36;
          (*(v6 + 8))(v156, v161);
          if (v35 == v36)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_121;
      }

LABEL_70:
    }

    v145 = 0;
    v157 = 0;
LABEL_74:
    v97 = URLComponents.queryItems.getter();
    if (v97)
    {
      v98 = v97;
      v33 = *(v97 + 16);
      if (v33)
      {
        v41 = 0;
        v38 = 0xEA00000000007478;
        v35 = 0x6554746567726174;
        a1 = v6 + 16;
        v36 = v6 + 8;
        while (v41 < *(v98 + 16))
        {
          (*(v6 + 16))(v155, v98 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v41, v161);
          if (URLQueryItem.name.getter() == 0x6554746567726174 && v99 == 0xEA00000000007478)
          {

LABEL_85:

            v100 = v141;
            v45 = v161;
            (*(v6 + 32))(v141, v155, v161);
            v155 = URLQueryItem.value.getter();
            v156 = v101;
            (*(v6 + 8))(v100, v45);
            goto LABEL_86;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            goto LABEL_85;
          }

          ++v41;
          (*v36)(v155, v161);
          if (v33 == v41)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_122;
      }

LABEL_82:
    }

    v155 = 0;
    v156 = 0;
LABEL_86:
    v102 = URLComponents.queryItems.getter();
    v36 = v102;
    if (!v102)
    {
      v104 = 0;
LABEL_98:
      v109 = v152;
      v108 = v153;
      v110 = v149;
      (*(v152 + 16))(v149, v160, v153);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v161 = v104;
        v114 = v113;
        v115 = swift_slowAlloc();
        v163[0] = v115;
        *v114 = 136380675;
        v162 = URLComponents.queryItems.getter();
        sub_100005AD4(&qword_1003B8CE8);
        v116 = String.init<A>(describing:)();
        v118 = v117;
        v154 = v36;
        v119 = *(v109 + 8);
        v119(v110, v108);
        v120 = sub_10028D78C(v116, v118, v163);

        *(v114 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v111, v112, "handleURLContexts parameters: %{private}s", v114, 0xCu);
        sub_100008664(v115);

        v104 = v161;

        v121 = v119;
        v36 = v154;
        v123 = v158;
        v122 = v159;
        if (!v154)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v104 == 0x416576696C2D5450 && v36 == 0xEF79746976697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v104 == 0xD000000000000012 && v36 == 0x80000001002FAEE0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          swift_getKeyPath();
          swift_getKeyPath();
          *v163 = xmmword_1002D3310;

          static Published.subscript.setter();
          goto LABEL_112;
        }
      }

      else
      {

        v121 = *(v109 + 8);
        v121(v110, v108);
        v123 = v158;
        v122 = v159;
        if (v36)
        {
          goto LABEL_102;
        }
      }

LABEL_109:
      v124 = *(v123 + 6);
      if (v124(v151, 1, v122) == 1 || v124(v150, 1, v122) == 1)
      {
        v125 = swift_allocObject();
        v126 = v147;
        v127 = v138;
        v125[2] = v147;
        v125[3] = v127;
        v128 = v137;
        v125[4] = v139;
        v125[5] = v128;
        v129 = v145;
        v125[6] = v146;
        v125[7] = v129;
        v131 = v155;
        v130 = v156;
        v125[8] = v157;
        v125[9] = v131;
        v125[10] = v130;
        v125[11] = v104;
        v125[12] = v36;
        v132 = v126;
        sub_10021E988(sub_100220858, v125);

LABEL_112:
        v121(v160, v153);
        sub_100009EBC(v151, &qword_1003AFCE0);
        v66 = v150;
      }

      else
      {

        v133 = v150;
        v134 = v151;
        sub_10021842C(v151, v150, v145, v157, v155, v156, v104, v36);

        v121(v160, v153);
        sub_100009EBC(v134, &qword_1003AFCE0);
        v66 = v133;
      }

      v65 = &qword_1003AFCE0;
      return sub_100009EBC(v66, v65);
    }

    v35 = *(v102 + 16);
    if (!v35)
    {
LABEL_94:

      v104 = 0;
      v36 = 0;
      goto LABEL_98;
    }

    v41 = 0;
    v38 = 6517363;
    a1 = v6 + 16;
    v33 = 0xE300000000000000;
    while (v41 < *(v36 + 16))
    {
      (*(v6 + 16))(v154, v36 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v41, v161);
      if (URLQueryItem.name.getter() == 6517363 && v103 == 0xE300000000000000)
      {

LABEL_97:

        v105 = v140;
        v106 = v161;
        (*(v6 + 32))(v140, v154, v161);
        v104 = URLQueryItem.value.getter();
        v36 = v107;
        (*(v6 + 8))(v105, v106);
        goto LABEL_98;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {
        goto LABEL_97;
      }

      ++v41;
      (*(v6 + 8))(v154, v161);
      if (v35 == v41)
      {
        goto LABEL_94;
      }
    }

LABEL_123:
    __break(1u);
LABEL_124:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_1002153D0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v162 = *(v0 - 8);
  __chkstk_darwin(v0);
  v161 = (&v119 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_100005AD4(&unk_1003B8C90);
  v3 = __chkstk_darwin(v2 - 8);
  v121 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v126 = &v119 - v6;
  v7 = __chkstk_darwin(v5);
  v131 = &v119 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v119 - v10;
  v12 = __chkstk_darwin(v9);
  v139 = &v119 - v13;
  __chkstk_darwin(v12);
  v134 = &v119 - v14;
  v15 = type metadata accessor for StoredTranslationResult();
  v137 = *(v15 - 1);
  v16 = __chkstk_darwin(v15);
  v123 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v125 = &v119 - v19;
  v20 = __chkstk_darwin(v18);
  v128 = &v119 - v21;
  v22 = __chkstk_darwin(v20);
  v130 = &v119 - v23;
  __chkstk_darwin(v22);
  v25 = &v119 - v24;
  v160 = type metadata accessor for SpeechResultOrigin();
  v26 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Locale();
  __chkstk_darwin(v28 - 8);
  v158 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StoredSpeechResult();
  v133 = *(v30 - 1);
  v31 = __chkstk_darwin(v30);
  v122 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v124 = &v119 - v34;
  v35 = __chkstk_darwin(v33);
  v127 = &v119 - v36;
  v37 = __chkstk_darwin(v35);
  v129 = &v119 - v38;
  __chkstk_darwin(v37);
  v132 = &v119 - v39;
  v40 = [objc_opt_self() standardUserDefaults];
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 objectForKey:v41];

  if (!v42)
  {
    v171 = 0u;
    v172 = 0u;
    return sub_100009EBC(&v171, &unk_1003AB9C0);
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009EBC(&v171, &unk_1003AB9C0);
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v119 = v25;
  v120 = v11;
  v138 = v0;
  v43 = type metadata accessor for Logger();
  sub_1000078E8(v43, qword_1003D2770);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Inject fake session history", v46, 2u);
  }

  Locale.init(identifier:)();
  v48 = *(v26 + 104);
  v47 = (v26 + 104);
  v155 = enum case for SpeechResultOrigin.text(_:);
  v156 = v47;
  v154 = v48;
  v48(v159);
  v49 = v132;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  Locale.init(identifier:)();
  v50 = v119;
  StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  v51 = v157;
  v52 = sub_100213878();
  v53 = type metadata accessor for UUID();
  v54 = *(v53 - 8);
  v152 = *(v54 + 56);
  v153 = v53;
  v151 = v54 + 56;
  v152(v134, 1, 1);
  *(&v172 + 1) = v30;
  v148 = sub_1002206C0(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  v173 = v148;
  v55 = sub_100050D60(&v171);
  v149 = *(v133 + 16);
  v150 = v133 + 16;
  v149(v55, v49, v30);
  v169 = v15;
  v145 = sub_1002206C0(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
  v170 = v145;
  v56 = sub_100050D60(v168);
  v146 = *(v137 + 16);
  v147 = v137 + 16;
  v146(v56, v50, v15);
  v144 = sub_10000A2CC(0, &qword_1003A9C40);
  v57 = static OS_dispatch_queue.main.getter();
  v59 = v161;
  v58 = v162;
  *v161 = v57;
  v60 = *(v58 + 104);
  v142 = enum case for DispatchPredicate.onQueue(_:);
  v61 = v138;
  v143 = v58 + 104;
  v141 = v60;
  v60(v59);
  v62 = _dispatchPreconditionTest(_:)();
  v64 = *(v58 + 8);
  KeyPath = v58 + 8;
  v162 = KeyPath;
  v140 = v64;
  v64(v59, v61);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  sub_100031DD8(&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store], &v165);
  sub_1000085CC(&v165, v167);
  v65 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
  v135 = v30;
  v136 = v15;
  if (!v65)
  {

    sub_100009EBC(v134, &unk_1003B8C90);
    sub_100008664(&v165);
    goto LABEL_15;
  }

  v47 = v65;
  sub_100008664(&v165);
  v66 = &v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID];
  swift_beginAccess();
  v164 = *v66;
  v67 = v164;

  swift_getAtKeyPath();
  if (!v166)
  {
  }

  v51 = v134;

  v69 = String._bridgeToObjectiveC()();

  [v47 setSessionID:v69];

  sub_10001F620(v51, v139, &unk_1003B8C90);
  dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v30 = v47;
  v15 = &v165;
  v61 = static Published.subscript.modify();
  if (*v70 >> 62)
  {
    goto LABEL_53;
  }

LABEL_14:
  sub_1002B525C(0, 0, v30);

  v61(&v165, 0);

  sub_100009EBC(v51, &unk_1003B8C90);
  v71 = *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation];
  *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation] = v47;

  v51 = v157;
  v30 = v135;
  v15 = v136;
  v61 = v138;
LABEL_15:
  sub_100008664(&v171);
  sub_100008664(v168);
  Locale.init(identifier:)();
  v154(v159, v155, v160);
  v72 = v129;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  Locale.init(identifier:)();
  v73 = v130;
  StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  v134 = OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession;
  v52 = *&v51[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate____lazy_storage___translationSession];
  (v152)(v120, 1, 1, v153);
  *(&v172 + 1) = v30;
  v173 = v148;
  v74 = sub_100050D60(&v171);
  v149(v74, v72, v30);
  v169 = v15;
  v170 = v145;
  v75 = sub_100050D60(v168);
  v146(v75, v73, v15);

  v76 = static OS_dispatch_queue.main.getter();
  KeyPath = v161;
  *v161 = v76;
  v141(KeyPath, v142, v61);
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v140(KeyPath, v61);
  if ((v73 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_100031DD8(&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store], &v165);
  sub_1000085CC(&v165, v167);
  v77 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
  if (!v77)
  {

    sub_100009EBC(v120, &unk_1003B8C90);
    sub_100008664(&v165);
    goto LABEL_23;
  }

  v47 = v77;
  sub_100008664(&v165);
  v78 = &v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID];
  swift_beginAccess();
  v164 = *v78;
  v79 = v164;

  swift_getAtKeyPath();
  if (!v166)
  {
  }

  v51 = v120;

  v80 = String._bridgeToObjectiveC()();

  [v47 setSessionID:v80];

  sub_10001F620(v51, v139, &unk_1003B8C90);
  dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v30 = v47;
  v15 = &v165;
  v61 = static Published.subscript.modify();
  if (!(*v81 >> 62))
  {
LABEL_22:
    sub_1002B525C(0, 0, v30);

    v61(&v165, 0);

    sub_100009EBC(v51, &unk_1003B8C90);
    v82 = *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation];
    *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation] = v47;

    v51 = v157;
    v30 = v135;
    v15 = v136;
    v61 = v138;
LABEL_23:
    sub_100008664(&v171);
    sub_100008664(v168);
    v47 = "FakeSessionHistory";
    Locale.init(identifier:)();
    v154(v159, v155, v160);
    v83 = v127;
    StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
    Locale.init(identifier:)();
    v84 = v128;
    StoredTranslationResult.init(text:locale:isOffline:romanization:)();
    v52 = *&v51[v134];
    (v152)(v131, 1, 1, v153);
    *(&v172 + 1) = v30;
    v173 = v148;
    v85 = sub_100050D60(&v171);
    v149(v85, v83, v30);
    v169 = v15;
    v170 = v145;
    v86 = sub_100050D60(v168);
    v146(v86, v84, v15);

    v87 = static OS_dispatch_queue.main.getter();
    KeyPath = v161;
    *v161 = v87;
    v141(KeyPath, v142, v61);
    LOBYTE(v84) = _dispatchPreconditionTest(_:)();
    v140(KeyPath, v61);
    if (v84)
    {
      v120 = "FakeSessionHistory";
      sub_100031DD8(&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store], &v165);
      sub_1000085CC(&v165, v167);
      v88 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
      if (v88)
      {
        v47 = v88;
        sub_100008664(&v165);
        v89 = &v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID];
        swift_beginAccess();
        v164 = *v89;
        v90 = v164;

        swift_getAtKeyPath();
        if (!v166)
        {
        }

        v91 = String._bridgeToObjectiveC()();

        [v47 setSessionID:v91];

        v15 = v131;
        sub_10001F620(v131, v139, &unk_1003B8C90);
        dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v30 = v47;
        v51 = &v165;
        v61 = static Published.subscript.modify();
        if (*v92 >> 62)
        {
          goto LABEL_57;
        }

LABEL_30:
        sub_1002B525C(0, 0, v30);

        v61(&v165, 0);

        sub_100009EBC(v15, &unk_1003B8C90);
        v93 = *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation];
        *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation] = v47;

        v51 = v157;
        v30 = v135;
        v15 = v136;
        v61 = v138;
      }

      else
      {

        sub_100009EBC(v131, &unk_1003B8C90);
        sub_100008664(&v165);
      }

      sub_100008664(&v171);
      sub_100008664(v168);
      Locale.init(identifier:)();
      v154(v159, v155, v160);
      v94 = v124;
      StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
      Locale.init(identifier:)();
      v95 = v125;
      StoredTranslationResult.init(text:locale:isOffline:romanization:)();
      v52 = *&v51[v134];
      (v152)(v126, 1, 1, v153);
      *(&v172 + 1) = v30;
      v173 = v148;
      v96 = sub_100050D60(&v171);
      v149(v96, v94, v30);
      v169 = v15;
      v170 = v145;
      v97 = sub_100050D60(v168);
      v146(v97, v95, v15);

      v98 = static OS_dispatch_queue.main.getter();
      KeyPath = v161;
      *v161 = v98;
      v141(KeyPath, v142, v61);
      LOBYTE(v95) = _dispatchPreconditionTest(_:)();
      v140(KeyPath, v61);
      if (v95)
      {
        sub_100031DD8(&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store], &v165);
        sub_1000085CC(&v165, v167);
        v99 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
        if (v99)
        {
          v47 = v99;
          sub_100008664(&v165);
          v100 = &v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID];
          swift_beginAccess();
          v164 = *v100;
          v101 = v164;

          swift_getAtKeyPath();
          if (!v166)
          {
          }

          v102 = String._bridgeToObjectiveC()();

          [v47 setSessionID:v102];

          v15 = v126;
          sub_10001F620(v126, v139, &unk_1003B8C90);
          dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
          KeyPath = swift_getKeyPath();
          swift_getKeyPath();
          v30 = v47;
          v51 = &v165;
          v61 = static Published.subscript.modify();
          if (*v103 >> 62)
          {
            goto LABEL_59;
          }

          goto LABEL_38;
        }

        sub_100009EBC(v126, &unk_1003B8C90);
        sub_100008664(&v165);
        goto LABEL_39;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  while (1)
  {
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_57:
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_59:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

LABEL_38:
    sub_1002B525C(0, 0, v30);

    v61(&v165, 0);

    sub_100009EBC(v15, &unk_1003B8C90);
    v104 = *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation];
    *&v52[OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation] = v47;

    v51 = v157;
    v30 = v135;
    v15 = v136;
    v61 = v138;
LABEL_39:
    sub_100008664(&v171);
    sub_100008664(v168);
    Locale.init(identifier:)();
    v154(v159, v155, v160);
    v105 = v122;
    StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
    Locale.init(identifier:)();
    v106 = v123;
    StoredTranslationResult.init(text:locale:isOffline:romanization:)();
    KeyPath = *&v51[v134];
    v51 = v121;
    (v152)(v121, 1, 1, v153);
    *(&v172 + 1) = v30;
    v173 = v148;
    v107 = sub_100050D60(&v171);
    v149(v107, v105, v30);
    v169 = v15;
    v170 = v145;
    v108 = sub_100050D60(v168);
    v146(v108, v106, v15);

    v109 = static OS_dispatch_queue.main.getter();
    v110 = v161;
    *v161 = v109;
    v141(v110, v142, v61);
    LOBYTE(v106) = _dispatchPreconditionTest(_:)();
    v140(v110, v61);
    v47 = v137;
    if (v106)
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  sub_100031DD8(KeyPath + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_store, &v165);
  sub_1000085CC(&v165, v167);
  v111 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
  if (!v111)
  {

    sub_100009EBC(v51, &unk_1003B8C90);
    sub_100008664(&v165);
    goto LABEL_47;
  }

  v52 = v111;
  sub_100008664(&v165);
  v112 = (KeyPath + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession__currentID);
  swift_beginAccess();
  v163 = *v112;
  v113 = v163;

  swift_getAtKeyPath();
  if (!v166)
  {
  }

  v114 = String._bridgeToObjectiveC()();

  [v52 setSessionID:v114];

  v61 = v121;
  sub_10001F620(v121, v139, &unk_1003B8C90);
  dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v52;
  v51 = static Published.subscript.modify();
  if (*v115 >> 62)
  {
LABEL_61:
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    sub_1002B525C(0, 0, v15);

    (v51)(&v165, 0);

    sub_100009EBC(v61, &unk_1003B8C90);
    v116 = *(KeyPath + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation);
    *(KeyPath + OBJC_IVAR____TtC17SequoiaTranslator21TranslationAppSession_selectedTranslation) = v52;

    v15 = v136;
    v47 = v137;
    v30 = v135;
LABEL_47:
    sub_100008664(&v171);
    sub_100008664(v168);
    sub_1002137B0();
    TranslationStoreCoreData.save()();

    v117 = *(v47 + 1);
    v117(v123, v15);
    v118 = *(v133 + 8);
    v118(v122, v30);
    v117(v125, v15);
    v118(v124, v30);
    v117(v128, v15);
    v118(v127, v30);
    v117(v130, v15);
    v118(v129, v30);
    v117(v119, v15);
    return (v118)(v132, v30);
  }

  return result;
}