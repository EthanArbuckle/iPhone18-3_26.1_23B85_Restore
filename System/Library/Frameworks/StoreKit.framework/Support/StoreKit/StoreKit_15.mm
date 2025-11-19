void *sub_1001C873C(void *a1)
{
  v3 = type metadata accessor for SKLogger();
  v4 = __chkstk_darwin(v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v92 - v8;
  __chkstk_darwin(v7);
  v11 = &v92 - v10;
  v107 = sub_1001CA1A0(a1);
  v105 = v12;
  if (!v12)
  {
    return v107;
  }

  v101 = v1;
  v93 = v11;
  sub_100080FB4(&unk_1003CEE30);
  inited = swift_initStackObject();
  v98 = xmmword_1002ED290;
  *(inited + 16) = xmmword_1002ED290;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v14;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x800000010031D6D0;
  v15 = Dictionary.init(dictionaryLiteral:)();
  v16 = objc_opt_self();
  sub_100223A50(v15);
  v116[0] = 0;
  v18 = sub_1001CA204(v17, v116, v16);
  v19 = v116[0];
  if (!v18)
  {
    v63 = v116[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v64 = sub_10007EDA4(v3, qword_1003F26C8);
    sub_10007EDDC(v64, v6);
    v29 = v101;
    sub_1001CA388(v101, v116);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = type metadata accessor for Logger();
    (*(*(v66 - 8) + 8))(v6, v66);
    v67 = static os_log_type_t.info.getter();
    sub_1001CA3C0(v29);

    if (os_log_type_enabled(v65, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v116[0] = swift_slowAlloc();
      v24 = &unk_1002F8000;
      *v68 = 136446722;
      *(v68 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v116);
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_100080210(*(v29 + 40), *(v29 + 48), v116);
      *(v68 + 22) = 2112;
      v70 = _convertErrorToNSError(_:)();
      *(v68 + 24) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v65, v67, "[%{public}s][%{public}s]: Error retriving extension list: %@", v68, 0x20u);
      sub_10013B1E8(v69, &qword_1003D18D0);

      swift_arrayDestroy();
    }

    else
    {

LABEL_68:
      v24 = &unk_1002F8000;
    }

    if (qword_1003CBE58 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_70;
  }

  v20 = v18;
  v92 = v9;
  v94 = v3;
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v19;

  v23 = sub_1001C9C84(v21);

  if (!v23)
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v112 = sub_1000AFC90(v23);
  v24 = 0;
  v104 = 0;
  v111 = v23 & 0xC000000000000001;
  v110 = v23 & 0xFFFFFFFFFFFFFF8;
  v95 = v23;
  v109 = (v23 + 32);
  v108 = 0x800000010031D6F0;
  v97 = 0x800000010031D720;
  v26 = v107 == 0xD000000000000015 && v105 == 0x800000010031D720;
  v100 = v26;
  v28 = v107 == 0x6572617774666F73 && v105 == 0xED00006E4F646441;
  v96 = v28;
  v9 = &type metadata for String;
  v99 = 0x800000010031D740;
  v102 = a1;
  v3 = 0xD000000000000011;
  v103 = v15;
  v29 = v101;
  while (1)
  {
LABEL_18:
    if (v24 == v112)
    {

      goto LABEL_64;
    }

    if (v111)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v110 + 16))
      {
        goto LABEL_85;
      }

      v30 = v109[v24];
    }

    v31 = v30;
    if (__OFADD__(v24++, 1))
    {
      break;
    }

    v33 = sub_1001CA28C(v30);
    if (!v33)
    {
      __break(1u);
    }

    v34 = v33;
    v113 = 0xD000000000000028;
    v114 = v108;
    AnyHashable.init<A>(_:)();
    if (*(v34 + 16) && (v35 = sub_100212CF4(v116), (v36 & 1) != 0))
    {
      sub_100080F58(*(v34 + 56) + 32 * v35, v115);
      sub_10008E550(v116);

      sub_100080F58(v115, v116);
      sub_100080FB4(&unk_1003D0530);
      if (swift_dynamicCast())
      {
        v37 = v113;
        v38 = v104;
      }

      else
      {
        v39 = swift_dynamicCast();
        v38 = v104;
        if (v39)
        {
          v40 = v113;
          v41 = v114;
          sub_100080FB4(&unk_1003D2720);
          v37 = swift_allocObject();
          *(v37 + 1) = v98;
          v37[4] = v40;
          v37[5] = v41;
        }

        else
        {
          v37 = _swiftEmptyArrayStorage;
        }
      }

      v42 = sub_100080F0C(v116);
      v116[0] = v107;
      v116[1] = v105;
      __chkstk_darwin(v42);
      *(&v92 - 2) = v116;
      v43 = sub_100178848(sub_1001CA3F0, (&v92 - 4), v37);

      if (v43)
      {

        v80 = [v31 identifier];
        if (v80)
        {
          v81 = v80;
          v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v82;

          sub_100080F0C(v115);
          goto LABEL_76;
        }

        sub_100080F0C(v115);

LABEL_64:
        v3 = v94;
        v9 = v92;
        goto LABEL_68;
      }

      v104 = v38;
      sub_100080F0C(v115);
      a1 = v102;
    }

    else
    {

      sub_10008E550(v116);
    }

    v44 = [a1 itemDictionary];
    v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v113 = 0x6D614E726566666FLL;
    v114 = 0xE900000000000065;
    AnyHashable.init<A>(_:)();
    if (*(v45 + 16) && (v46 = sub_100212CF4(v116), (v47 & 1) != 0))
    {
      sub_100080F58(*(v45 + 56) + 32 * v46, v115);
      sub_10008E550(v116);

      if (swift_dynamicCast())
      {
        v106 = v113;
        if (v100 || ((_stringCompareWithSmolCheck(_:_:expecting:)() | v96) & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          result = sub_1001CA28C(v31);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v49 = result;
          v113 = 0xD00000000000002CLL;
          v114 = v99;
          AnyHashable.init<A>(_:)();
          if (v49[2])
          {
            v50 = sub_100212CF4(v116);
            if (v51)
            {
              sub_100080F58(v49[7] + 32 * v50, v115);
              sub_10008E550(v116);

              sub_100080F58(v115, v116);
              sub_100080FB4(&unk_1003D0530);
              if (swift_dynamicCast())
              {
                v52 = v113;
              }

              else if (swift_dynamicCast())
              {
                v53 = v113;
                v54 = v114;
                sub_100080FB4(&unk_1003D2720);
                v52 = swift_allocObject();
                *(v52 + 1) = v98;
                v52[4] = v53;
                v52[5] = v54;
              }

              else
              {
                v52 = _swiftEmptyArrayStorage;
              }

              sub_100080F0C(v116);
              v55 = (v52 + 5);
              v56 = -v52[2];
              v57 = -1;
              do
              {
                if (v56 + v57 == -1)
                {

                  sub_100080F0C(v115);
                  v29 = v101;
                  a1 = v102;
                  goto LABEL_18;
                }

                if (++v57 >= v52[2])
                {
                  goto LABEL_86;
                }

                v58 = v55 + 2;
                v59 = v9;
                v60 = *(v55 - 1);
                v61 = *v55;

                v62._countAndFlagsBits = v60;
                v62._object = v61;
                v29 = String.hasPrefix(_:)(v62);
                v9 = v59;

                v55 = v58;
                v3 = 0xD000000000000011;
              }

              while ((v29 & 1) == 0);

              v71 = [v31 identifier];
              if (v71)
              {
                v72 = v71;
                v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v74 = v73;

                sub_100080F0C(v115);
                v29 = v101;
LABEL_76:
                v83 = v94;
                v84 = qword_1003CBE58;

                if (v84 != -1)
                {
                  swift_once();
                }

                v85 = sub_10007EDA4(v83, qword_1003F26C8);
                v86 = v93;
                sub_10007EDDC(v85, v93);

                sub_1001CA388(v29, v116);
                v87 = Logger.logObject.getter();
                v88 = type metadata accessor for Logger();
                (*(*(v88 - 8) + 8))(v86, v88);
                v89 = static os_log_type_t.info.getter();
                sub_1001CA3C0(v29);

                if (os_log_type_enabled(v87, v89))
                {
                  v90 = swift_slowAlloc();
                  v116[0] = swift_slowAlloc();
                  *v90 = 136446979;
                  *(v90 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v116);
                  *(v90 + 12) = 2082;
                  *(v90 + 14) = sub_100080210(*(v29 + 40), *(v29 + 48), v116);
                  *(v90 + 22) = 2080;
                  *(v90 + 24) = sub_100080210(*(v29 + 8), *(v29 + 16), v116);
                  *(v90 + 32) = 2081;
                  v91 = sub_100080210(v107, v74, v116);

                  *(v90 + 34) = v91;
                  _os_log_impl(&_mh_execute_header, v87, v89, "[%{public}s][%{public}s]: Found extension for %s: %{private}s", v90, 0x2Au);
                  swift_arrayDestroy();
                }

                else
                {
                }

                return v107;
              }

              sub_100080F0C(v115);

              v29 = v101;
              goto LABEL_64;
            }
          }

          sub_10008E550(v116);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_10008E550(v116);
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_70:
  v75 = sub_10007EDA4(v3, qword_1003F26C8);
  sub_10007EDDC(v75, v9);
  sub_1001CA388(v29, v116);
  v76 = Logger.logObject.getter();
  v77 = type metadata accessor for Logger();
  (*(*(v77 - 8) + 8))(v9, v77);
  v78 = static os_log_type_t.default.getter();
  sub_1001CA3C0(v29);
  if (os_log_type_enabled(v76, v78))
  {
    v79 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v79 = *(v24 + 672);
    *(v79 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, v116);
    *(v79 + 12) = 2082;
    *(v79 + 14) = sub_100080210(*(v29 + 40), *(v29 + 48), v116);
    *(v79 + 22) = 2080;
    *(v79 + 24) = sub_100080210(*(v29 + 8), *(v29 + 16), v116);
    _os_log_impl(&_mh_execute_header, v76, v78, "[%{public}s][%{public}s]: No extension found for %s", v79, 0x20u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t sub_1001C97C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for SKLogger();
  __chkstk_darwin(v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001C9B1C(a3);
  if (v13)
  {
    URLQueryItem.init(name:value:)();

    v14 = type metadata accessor for URLQueryItem();

    return sub_100081DFC(a4, 0, 1, v14);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v16 = sub_10007EDA4(v10, qword_1003F26C8);
    sub_10007EDDC(v16, v12);
    sub_100080F58(a3, v28);
    sub_1001CA388(v4, v27);

    v17 = Logger.logObject.getter();
    v18 = type metadata accessor for Logger();
    (*(*(v18 - 8) + 8))(v12, v18);
    v19 = static os_log_type_t.error.getter();
    sub_1001CA3C0(v5);

    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v20 = 136446978;
      *(v20 + 4) = sub_100080210(0xD000000000000011, 0x80000001002F9450, &v26);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_100080210(*(v5 + 40), *(v5 + 48), &v26);
      *(v20 + 22) = 2080;
      sub_100080F58(v28, v27);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_100080F0C(v28);
      v24 = sub_100080210(v21, v23, &v26);

      *(v20 + 24) = v24;
      *(v20 + 32) = 2080;
      *(v20 + 34) = sub_100080210(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v17, v19, "[%{public}s][%{public}s]: Unhandled value: %s for key: %s", v20, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100080F0C(v28);
    }

    v25 = type metadata accessor for URLQueryItem();
    return sub_100081DFC(a4, 1, 1, v25);
  }
}

uint64_t sub_1001C9B1C(uint64_t a1)
{
  sub_100080F58(a1, v5);
  if (swift_dynamicCast())
  {
    v1 = v4;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_9:
    v1 = v2;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v2 = Double.description.getter();
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v2 = Float.description.getter();
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    if (v4)
    {
      v1 = 1702195828;
    }

    else
    {
      v1 = 0x65736C6166;
    }
  }

  else
  {
    v1 = 0;
  }

LABEL_10:
  sub_100080F0C(v5);
  return v1;
}

void *sub_1001C9C84(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_100080F58(v3, v5);
    sub_10008E5A4(0, &qword_1003D15C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1001C9D90(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10021340C();
  v3 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  if (v2)
  {
    while (1)
    {

      sub_100080FB4(&unk_1003CE640);
      sub_100080FB4(&qword_1003CC200);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = _swiftEmptyArrayStorage[2];
      if (v5 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_10021340C();
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

id sub_1001C9ED0(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = [v1 initWithBag:a1 caller:v3 keyProfile:v4];
  swift_unknownObjectRelease();

  return v5;
}

id sub_1001C9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8)
{
  HIDWORD(v25) = a5;
  if (a1)
  {
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (a3)
    {
LABEL_3:
      v14 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v13.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = type metadata accessor for URL();
  v17 = 0;
  if (sub_100081D0C(a4, 1, v15) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  if (a6)
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  if (sub_100081D0C(a7, 1, v15) == 1)
  {
    v21 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  LOBYTE(v25) = a8 & 1;
  v23 = [v26 initWithResult:v13.super.isa extensionID:v14 productURL:v17 isEntitled:BYTE4(v25) & 1 parameters:v19.super.isa deepLinkURL:v21 hasPresentationEntitlement:v25];

  return v23;
}

void *sub_1001CA17C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001CA1A0(void *a1)
{
  v1 = [a1 itemKind];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1001CA204(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 extensionsWithMatchingAttributes:isa error:a2];

  return v6;
}

uint64_t sub_1001CA28C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1001CA2F8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a3 performLookupWithBundleIdentifiers:a1 itemIdentifiers:isa];

  return v6;
}

unint64_t sub_1001CA40C@<X0>(uint64_t a1@<X8>)
{

  return sub_100080210(0xD000000000000011, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

id sub_1001CA430()
{

  return sub_100212920(v1, v0, 512, 0);
}

uint64_t sub_1001CA470()
{

  return swift_slowAlloc();
}

uint64_t sub_1001CA488(uint64_t a1)
{

  return sub_10013B1E8(a1, v1);
}

uint64_t sub_1001CA4A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EDA4(a1, a2);

  return sub_10007EDDC(v3, v2);
}

uint64_t sub_1001CA4DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100081D0C(a1, a2, v4);
}

uint64_t sub_1001CA538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100081DFC(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SKLogger()
{
  result = qword_1003D1628;
  if (!qword_1003D1628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CA5D0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001CA63C()
{
  v0 = 8;
  sub_100213374(0, 8, 0);
  do
  {
    swift_stdlib_random();
    sub_1001CA904();
    v1 = String.init<A>(_:radix:uppercase:)();
    v3 = v2;
    v5 = *(&_swiftEmptyArrayStorage + 2);
    v4 = *(&_swiftEmptyArrayStorage + 3);
    if (v5 >= v4 >> 1)
    {
      sub_100213374(v4 > 1, v5 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
    v6 = &_swiftEmptyArrayStorage + 16 * v5;
    *(v6 + 4) = v1;
    *(v6 + 5) = v3;
    --v0;
  }

  while (v0);
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage + 40;
  v9 = v5 + 1;
  while (1)
  {
    if (v9 == v7)
    {

      return;
    }

    if (v7 >= *(&_swiftEmptyArrayStorage + 2))
    {
      break;
    }

    ++v7;

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();

    v8 += 16;
  }

  __break(1u);
}

uint64_t sub_1001CA7F8()
{
  v0 = type metadata accessor for SKLogger();
  sub_1001C52C4(v0, qword_1003F26C8);
  sub_10007EDA4(v0, qword_1003F26C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001CA870(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  String.append(_:)(*&a1);
  v2._countAndFlagsBits = 8285;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  return 91;
}

unint64_t sub_1001CA904()
{
  result = qword_1003D1660;
  if (!qword_1003D1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1660);
  }

  return result;
}

uint64_t sub_1001CA978(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383E40, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CA9CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100080FB4(&qword_1003D1668);
  sub_1000890DC();
  v8 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_100086D24(a1, a1[3]);
  sub_1001CB458();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100080FB4(&qword_1003D1678);
    sub_1001CB554(&qword_1003D1680, sub_1001CB4AC);
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1001CAB88(void *a1)
{
  sub_100080FB4(&qword_1003D16A8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_1001CB458();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100080FB4(&qword_1003D1678);
    sub_1001CB554(&qword_1003D16B0, sub_1001CB5CC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_1000E3F18();
    v7(v6);
  }

  sub_100080F0C(a1);
  return v4;
}

uint64_t sub_1001CADB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CA978(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001CADE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E1890(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001CAE14@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CA978(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CAE3C(uint64_t a1)
{
  v2 = sub_1001CB458();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CAE78(uint64_t a1)
{
  v2 = sub_1001CB458();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CAEB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CAB88(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1001CAF04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383E90, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001CAF50(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D16A0);
  sub_1000890DC();
  v5 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001CB500();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1000B9360();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001CB0C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100080FB4(&qword_1003D1690);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100086D24(a1, a1[3]);
  sub_1001CB500();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v7;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = sub_10008BD1C();
  v11(v10);
  result = sub_100080F0C(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v9;
  return result;
}

unint64_t sub_1001CB2FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CAF04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CB32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E0FDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001CB358@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CAF04(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CB380(uint64_t a1)
{
  v2 = sub_1001CB500();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CB3BC(uint64_t a1)
{
  v2 = sub_1001CB500();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001CB3F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CB0C0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1001CB458()
{
  result = qword_1003D1670;
  if (!qword_1003D1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1670);
  }

  return result;
}

unint64_t sub_1001CB4AC()
{
  result = qword_1003D1688;
  if (!qword_1003D1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1688);
  }

  return result;
}

unint64_t sub_1001CB500()
{
  result = qword_1003D1698;
  if (!qword_1003D1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1698);
  }

  return result;
}

uint64_t sub_1001CB554(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(&qword_1003D1678);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CB5CC()
{
  result = qword_1003D16B8;
  if (!qword_1003D16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001CB6ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionGroupStatusInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001CB7F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001CB82C()
{
  result = qword_1003D16C0;
  if (!qword_1003D16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16C0);
  }

  return result;
}

unint64_t sub_1001CB884()
{
  result = qword_1003D16C8;
  if (!qword_1003D16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16C8);
  }

  return result;
}

unint64_t sub_1001CB8DC()
{
  result = qword_1003D16D0;
  if (!qword_1003D16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16D0);
  }

  return result;
}

unint64_t sub_1001CB934()
{
  result = qword_1003D16D8;
  if (!qword_1003D16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16D8);
  }

  return result;
}

unint64_t sub_1001CB98C()
{
  result = qword_1003D16E0;
  if (!qword_1003D16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16E0);
  }

  return result;
}

unint64_t sub_1001CB9E4()
{
  result = qword_1003D16E8;
  if (!qword_1003D16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D16E8);
  }

  return result;
}

id sub_1001CBB68(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  String._bridgeToObjectiveC()();
  sub_1001CCD58();

  return a1;
}

id sub_1001CBBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v19 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_groupID];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_bundleID];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_storefrontID];
  *v21 = a5;
  *(v21 + 1) = a6;
  if (!a8)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    sub_1001CA63C();
    a7 = v23;
    a8 = v24;
  }

  v25 = &v9[OBJC_IVAR___IntroOfferEligibilityCheck_logKey];
  *v25 = a7;
  *(v25 + 1) = a8;
  v27.receiver = v9;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_1001CBDAC(uint64_t a1)
{
  v3 = type metadata accessor for SKLogger();
  __chkstk_darwin(v3);
  v5 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return -1;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v6, v7, a1, &v116);

  if (!v117)
  {
    sub_10008105C(&v116);
    return -1;
  }

  sub_100080FB4(&qword_1003CEDD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return -1;
  }

  v111 = v5;
  v8 = v114;
  v9 = v114[2];
  if (!v9)
  {

    return -1;
  }

  v112 = v1;
  v110 = v3;
  v10 = 0;
  v11 = @"status";
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v9 == v10)
    {

      v23 = v112;
      v24 = *(v112 + OBJC_IVAR___IntroOfferEligibilityCheck_storefrontID + 8);
      v109 = *(v112 + OBJC_IVAR___IntroOfferEligibilityCheck_storefrontID);
      v25 = &off_1002EA000;
      v10 = v110;
      v113 = v24;
      if (!v24)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v1 = sub_10007EDA4(v10, qword_1003F26C8);
        v26 = v23 + OBJC_IVAR___IntroOfferEligibilityCheck_logKey;
        v27 = *(v23 + OBJC_IVAR___IntroOfferEligibilityCheck_logKey);
        v28 = *(v26 + 8);
        v29 = static os_log_type_t.info.getter();

        v30 = Logger.logObject.getter();

        if (os_log_type_enabled(v30, v29))
        {
          v31 = sub_10008E688();
          v114 = sub_10008E670();
          *v31 = 136446466;
          sub_1001CCD70();
          v32._countAndFlagsBits = v27;
          v32._object = v28;
          String.append(_:)(v32);
          sub_10009F134();
          sub_1001CCD3C();
          sub_1001CCD58();
          *(v31 + 4) = v1;
          *(v31 + 12) = 2082;
          v10 = v110;
          *(v31 + 14) = sub_100080210(0xD00000000000002DLL, 0x800000010031D7E0, &v114);
          _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s%{public}s", v31, 0x16u);
          swift_arrayDestroy();
          v25 = &off_1002EA000;
          sub_100081C28();
          sub_100081C28();
        }

        v23 = v112;
      }

      v33 = v12[2];
      v9 = v111;
      if (v33)
      {
        v34 = 0;
        v107 = (v23 + OBJC_IVAR___IntroOfferEligibilityCheck_logKey);
        v11 = @"signedTransactionInfo";
        v102 = "e is an active transaction in '";
        v101 = "status with storefront '";
        v104 = @"inAppOwnershipType";
        v98[1] = @"PURCHASED";
        v100 = "ive status in any storefront.";
        *(&v35 + 1) = 1;
        v108 = xmmword_1002F0E20;
        *&v35 = *(v25 + 175);
        v103 = v35;
        v106 = @"signedTransactionInfo";
        while (1)
        {
          if (v34 >= v12[2])
          {
            goto LABEL_72;
          }

          v1 = v12[v34 + 4];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
          if (*(v1 + 16))
          {
            v39 = v36;

            v40 = sub_1000B6328(v39, v38);
            v42 = v41;

            if (v42)
            {
              break;
            }
          }

LABEL_48:
          if (v33 == ++v34)
          {
            goto LABEL_68;
          }
        }

        sub_100080F58(*(v1 + 56) + 32 * v40, &v116);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        String._bridgeToObjectiveC()();
        sub_1001CCD58();
        v43 = sub_100027B30(v1, 0);

        if (!v43)
        {
          goto LABEL_48;
        }

        v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = swift_allocObject();
        v11 = v44;
        *(v44 + 16) = v108;
        v112 = v44;
        if (v113)
        {
          v45 = sub_1001CCA64(v44, v1);
          if (!v46 || (v47 = String.hasPrefix(_:)(*&v45), , !v47))
          {

            if (qword_1003CBE58 != -1)
            {
              sub_1000B7CD0();
              swift_once();
            }

            v59 = sub_10007EDA4(v10, qword_1003F26C8);
            sub_10007EDDC(v59, v9);
            sub_1001CCD84();
            v60._countAndFlagsBits = 0xD000000000000028;
            v60._object = (v102 | 0x8000000000000000);
            String.append(_:)(v60);
            data = v11->data;
            if (v11->length)
            {
              length = v11->length;
            }

            else
            {
              sub_1001CCD14(v11->data, 0);
              length = 0xE300000000000000;
              data = 7104878;
            }

            v69._countAndFlagsBits = data;
            v69._object = length;
            String.append(_:)(v69);

            v70._object = (v101 | 0x8000000000000000);
            v70._countAndFlagsBits = 0xD000000000000025;
            String.append(_:)(v70);
            v71._countAndFlagsBits = v109;
            v71._object = v113;
            String.append(_:)(v71);
            v72._countAndFlagsBits = 11815;
            v72._object = 0xE200000000000000;
            String.append(_:)(v72);
            v73 = *(&v116 + 1);
            v105 = v116;
            v74 = *v107;
            v75 = v107[1];
            v76 = static os_log_type_t.info.getter();
            v1 = v9;
            v77 = Logger.logObject.getter();
            if (os_log_type_enabled(v77, v76))
            {
              v78 = sub_10008E688();
              v99 = sub_10008E670();
              v114 = v99;
              *v78 = v103;
              sub_100106448();
              v79._countAndFlagsBits = v74;
              v79._object = v75;
              String.append(_:)(v79);
              sub_10009F134();
              sub_1001CCD3C();
              sub_1001CCD58();
              *(v78 + 4) = v1;
              *(v78 + 12) = 2082;
              v80 = sub_100080210(v105, v73, &v114);

              *(v78 + 14) = v80;
              _os_log_impl(&_mh_execute_header, v77, v76, "%{public}s%{public}s", v78, 0x16u);
              swift_arrayDestroy();
              sub_100081C28();
              v9 = v111;
              sub_100081C28();
            }

            else
            {
            }

            sub_100080130(v9);

            v10 = v110;
            goto LABEL_67;
          }
        }

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v1 + 16))
        {
          v50 = sub_1000B6328(v48, v49);
          v52 = v51;

          if (v52)
          {
            sub_100080F58(*(v1 + 56) + 32 * v50, &v116);
            if (swift_dynamicCast())
            {

              v9 = String._bridgeToObjectiveC()();
              swift_bridgeObjectRelease_n();
              v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v55 = v54;
              if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
              {
                goto LABEL_73;
              }

              v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v105 = v9;

              if (v58)
              {
                goto LABEL_74;
              }

              v9 = v111;
              goto LABEL_57;
            }
          }
        }

        else
        {
        }

        v105 = 0;
LABEL_57:
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v1 = sub_10007EDA4(v10, qword_1003F26C8);
        v64 = *v107;
        v63 = v107[1];
        v65 = static os_log_type_t.info.getter();

        v66 = Logger.logObject.getter();

        if (os_log_type_enabled(v66, v65))
        {
          v67 = sub_10008E688();
          v114 = sub_10008E670();
          *v67 = v103;
          sub_100106448();
          v68._countAndFlagsBits = v64;
          v68._object = v63;
          String.append(_:)(v68);
          sub_10009F134();
          sub_1001CCD3C();
          sub_1001CCD58();
          *(v67 + 4) = v1;
          *(v67 + 12) = 2082;
          *(v67 + 14) = sub_100080210(0xD000000000000045, v100 | 0x8000000000000000, &v114);
          _os_log_impl(&_mh_execute_header, v66, v65, "%{public}s%{public}s", v67, 0x16u);
          swift_arrayDestroy();
          v9 = v111;
          sub_100081C28();
          v10 = v110;
          sub_100081C28();
        }

LABEL_67:
        v11 = v106;
        goto LABEL_48;
      }

LABEL_68:

      return -1;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v13 = *(v8 + 8 * v10 + 32);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (*(v13 + 16) && (v17 = v14, , v1 = sub_1000B6328(v17, v16), v19 = v18, , (v19 & 1) != 0) && (sub_100080F58(*(v13 + 56) + 32 * v1, &v116), (swift_dynamicCast() & 1) != 0) && (v115 != 1 ? (v20 = v115 == 4) : (v20 = 1), v20))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v1 = &v114;
        sub_10021340C();
        v12 = v114;
      }

      v22 = v12[2];
      if (v22 >= v12[3] >> 1)
      {
        v1 = &v114;
        sub_10021340C();
        v12 = v114;
      }

      ++v10;
      v12[2] = v22 + 1;
      v12[v22 + 4] = v13;
    }

    else
    {

      ++v10;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:

LABEL_74:

  if (v113)
  {
  }

  else
  {
    v82 = sub_1001CCA64(v11, v1);
    v84 = v83;

    if (v84)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      sub_10007EDA4(v10, qword_1003F26C8);
      sub_1001CCD84();
      v85._countAndFlagsBits = 0xD00000000000004FLL;
      v85._object = 0x800000010031D860;
      String.append(_:)(v85);
      v86._countAndFlagsBits = v82;
      v86._object = v84;
      String.append(_:)(v86);

      v87._countAndFlagsBits = 11815;
      v87._object = 0xE200000000000000;
      String.append(_:)(v87);
      v88 = v116;
      v89 = *v107;
      v90 = v107[1];
      v91 = static os_log_type_t.default.getter();

      v92 = Logger.logObject.getter();

      if (os_log_type_enabled(v92, v91))
      {
        v93 = sub_10008E688();
        v94 = sub_10008E670();
        v113 = v9;
        v114 = v94;
        *v93 = v103;
        sub_1001CCD70();
        v95._countAndFlagsBits = v89;
        v95._object = v90;
        String.append(_:)(v95);
        sub_10009F134();
        v96 = sub_100080210(v116, *(&v116 + 1), &v114);

        *(v93 + 4) = v96;
        *(v93 + 12) = 2082;
        v97 = sub_100080210(v88, *(&v88 + 1), &v114);

        *(v93 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v92, v91, "%{public}s%{public}s", v93, 0x16u);
        swift_arrayDestroy();
        sub_100081C28();
        sub_100081C28();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1001CCA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v2;
  if (v3 == 1)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001DA990(v7, v8, a2, &v15);

    if (v16)
    {
      if (swift_dynamicCast())
      {
        v4 = v13;
        v9 = v14;
LABEL_7:
        swift_beginAccess();
        v10 = *(a1 + 16);
        v11 = *(a1 + 24);
        *(a1 + 16) = v4;
        *(a1 + 24) = v9;

        sub_1001CCD14(v10, v11);
        goto LABEL_8;
      }
    }

    else
    {
      sub_10008105C(&v15);
    }

    v4 = 0;
    v9 = 0;
    goto LABEL_7;
  }

LABEL_8:
  sub_1001CCD28(v2, v3);
  return v4;
}

uint64_t sub_1001CCCD4()
{
  if (*(v0 + 24) != 1)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CCD14(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001CCD28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1001CCD3C()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_100080210(v2, v3, (v0 - 144));
}

uint64_t sub_1001CCD58()
{
}

void sub_1001CCD84()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  _StringGuts.grow(_:)(83);
}

uint64_t sub_1001CCDA4()
{
  sub_10008BE9C();
  v1[87] = v0;
  v2 = sub_100080FB4(&qword_1003D18E0);
  v1[88] = v2;
  v1[89] = *(v2 - 8);
  v1[90] = swift_task_alloc();
  v3 = sub_100080FB4(&qword_1003D18E8);
  v1[91] = v3;
  v1[92] = *(v3 - 8);
  v1[93] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v1[94] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001CCF28()
{
  v79 = v0;
  v1 = *(v0 + 696);
  v2 = OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logger;
  *(v0 + 760) = OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logger;
  _StringGuts.grow(_:)(36);

  v74 = 0xD000000000000022;
  v76 = 0x800000010031DA90;
  v71 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_client);
  v3 = (v71 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v4 = *(v71 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v5 = *(v71 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey;
  v72 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey);
  *(v0 + 768) = v72;
  v8 = *(v7 + 8);
  *(v0 + 776) = v8;
  v9 = static os_log_type_t.default.getter();

  v69 = v2;
  v70 = v1;
  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_10008E688();
    sub_10008E670();
    v68 = 0xD000000000000022;
    *v11 = 136446466;
    sub_10009F0F8();
    v74 = v12;
    v76 = v14;
    v78[0] = v13;
    v15._countAndFlagsBits = v72;
    v15._object = v8;
    String.append(_:)(v15);
    sub_10009F134();
    v16 = sub_100080210(v74, v76, v78);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v17 = sub_100080210(0xD000000000000022, 0x800000010031DA90, v78);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v18 = *(v0 + 752);
  v19 = *(v0 + 696);
  sub_100080FB4(&unk_1003D18F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002F0B70;
  *(v0 + 584) = 0x4449656C646E7562;
  *(v0 + 592) = 0xE800000000000000;
  sub_1001CF460();
  v22 = *v3;
  v21 = v3[1];
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v22;
  *(inited + 80) = v21;
  *(v0 + 600) = 0x49746375646F7270;
  *(v0 + 608) = 0xE900000000000044;

  sub_1001CF460();
  v23 = v19 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer;
  v25 = *(v19 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer);
  v24 = *(v19 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer + 8);
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v25;
  *(inited + 152) = v24;
  *(v0 + 616) = 0x4449726566666FLL;
  *(v0 + 624) = 0xE700000000000000;

  sub_1001CF460();
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v27;
  *(inited + 224) = v26;
  *(v0 + 632) = 0x79654B676F6CLL;
  *(v0 + 640) = 0xE600000000000000;

  sub_1001CF460();
  *(inited + 312) = &type metadata for String;
  v28 = v72;
  *(inited + 288) = v72;
  *(inited + 296) = v8;
  *(v0 + 648) = 0x546567617373656DLL;
  *(v0 + 656) = 0xEB00000000657079;

  sub_1001CF460();
  v29 = *(v19 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_messageType);
  *(inited + 384) = &type metadata for Int;
  *(inited + 360) = v29;
  *(v0 + 664) = 0x726576726573;
  *(v0 + 672) = 0xE600000000000000;
  v30 = sub_1001CF460();
  v31 = v71;
  sub_1001A7E5C(v30, v32, v33, v34, v35, v36, v37, v38, v68, v69, v70, v71, v72, v74, v76, v78[0], v78[1], v78[2], v78[3], v78[4]);
  v39 = sub_1001AA77C();
  sub_1001CF344(v18, type metadata accessor for Client.Server);
  *(inited + 456) = &type metadata for Int8;
  *(inited + 432) = v39;
  v40 = Dictionary.init(dictionaryLiteral:)();
  v41 = (v31 + OBJC_IVAR____TtC9storekitd6Client_auditToken);
  if (*(v31 + OBJC_IVAR____TtC9storekitd6Client_auditToken + 32))
  {

    v42 = static os_log_type_t.error.getter();

    v43 = Logger.logObject.getter();

    if (os_log_type_enabled(v43, v42))
    {
      v44 = sub_10008E688();
      sub_10008E670();
      *v44 = 136446466;
      sub_10009F0F8();
      v75 = v45;
      v77 = v47;
      v78[0] = v46;
      v48._countAndFlagsBits = v28;
      v48._object = v8;
      String.append(_:)(v48);
      sub_10009F134();
      v49 = sub_100080210(v75, v77, v78);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_100080210(0xD000000000000029, 0x800000010031DAC0, v78);
      _os_log_impl(&_mh_execute_header, v43, v42, "%{public}s%{public}s", v44, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    sub_100098AC4();

    return v50();
  }

  else
  {
    v73 = *(v0 + 696);
    v53 = v41[2];
    v52 = v41[3];
    v55 = *v41;
    v54 = v41[1];
    v56 = HIDWORD(*v41);
    *(v0 + 680) = 0xD000000000000010;
    *(v0 + 688) = 0x800000010031DAF0;
    AnyHashable.init<A>(_:)();
    *(v0 + 808) = v55;
    *(v0 + 812) = v56;
    *(v0 + 816) = v54;
    *(v0 + 824) = v53;
    *(v0 + 832) = v52;
    v57 = Data.init(bytes:count:)();
    *(v0 + 544) = &type metadata for Data;
    *(v0 + 520) = v57;
    *(v0 + 528) = v58;
    sub_10008B5D0((v0 + 520), (v0 + 552));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10023EE74(v0 + 552, v0 + 480, isUniquelyReferenced_nonNull_native);
    v60 = v40;
    v61 = sub_10008E550(v0 + 480);
    sub_1001CE290(v61);
    v62 = objc_allocWithZone(RemoteAlertWrapper);
    v63 = sub_1001CF2BC();
    *(v0 + 784) = v63;
    [v63 setObserver:v73];
    v64 = *(v73 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_connection);
    if (*(v73 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_sceneID + 8))
    {
      v65 = String._bridgeToObjectiveC()();
    }

    else
    {
      v65 = 0;
    }

    v66 = *(v0 + 696);
    sub_1001CF39C(v64, v65, 1, v60, v63);

    v67 = *(v66 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_alertActor);
    *(v0 + 792) = v67;

    return _swift_task_switch(sub_1001CD710, v67, 0);
  }
}

uint64_t sub_1001CD710()
{
  sub_10008BE9C();
  (*(v0[89] + 16))(v0[90], v0[99] + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_stream, v0[88]);
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001CD7C0()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_1001CD8C8;
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1001CD8C8()
{
  sub_10008BE9C();

  sub_100098AD0();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1001CD9E8()
{
  v25 = v0;
  if (*(v0 + 840))
  {
    v1 = *(v0 + 784);
    (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
  }

  else
  {
    v2 = static os_log_type_t.default.getter();

    v3 = Logger.logObject.getter();

    v4 = os_log_type_enabled(v3, v2);
    v5 = *(v0 + 784);
    if (v4)
    {
      v6 = *(v0 + 776);
      v7 = *(v0 + 768);
      v8 = *(v0 + 736);
      v20 = *(v0 + 728);
      v21 = *(v0 + 744);
      v9 = sub_10008E688();
      sub_10008E670();
      *v9 = 136446466;
      sub_10009F0F8();
      v22 = v10;
      v23 = v12;
      v24 = v11;
      v13._countAndFlagsBits = v7;
      v13._object = v6;
      String.append(_:)(v13);
      sub_10009F134();
      v14 = sub_100080210(v22, v23, &v24);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_100080210(0xD000000000000021, 0x800000010031DB60, &v24);
      _os_log_impl(&_mh_execute_header, v3, v2, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();

      (*(v8 + 8))(v21, v20);
    }

    else
    {
      v15 = *(v0 + 744);
      v16 = *(v0 + 736);
      v17 = *(v0 + 728);

      (*(v16 + 8))(v15, v17);
    }
  }

  sub_100098AC4();

  return v18();
}

uint64_t sub_1001CDC60()
{
  v1 = sub_100080FB4(qword_1003D1900);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_100080FB4(&qword_1003D18D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = sub_100080FB4(&qword_1003D18E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  swift_defaultActor_initialize();
  (*(v2 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_stream, v12, v9);
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_continuation, v8, v5);
  return v0;
}

uint64_t sub_1001CDED4()
{
  v1 = OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_stream;
  v2 = sub_100080FB4(&qword_1003D18E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_continuation;
  v4 = sub_100080FB4(&qword_1003D18D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1001CDFCC()
{
  sub_1001CE0D8(319, &qword_1003D1788, &type metadata accessor for AsyncStream);
  if (v0 <= 0x3F)
  {
    sub_1001CE0D8(319, &unk_1003D1790, &type metadata accessor for AsyncStream.Continuation);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001CE0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1001CE134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v18 = OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_alertActor;
  type metadata accessor for SubscriptionOfferRemoteAlertActor(0);
  swift_allocObject();
  *&v12[v18] = sub_1001CDC60();
  *&v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_client] = a1;
  v19 = &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_offer];
  *v19 = a2;
  *(v19 + 1) = a3;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *&v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_connection] = a6;
  *&v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_messageType] = a7;
  v20 = &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey];
  *v20 = a8;
  *(v20 + 1) = a9;
  v21 = &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_sceneID];
  *v21 = a10;
  *(v21 + 1) = a11;
  sub_10007EDDC(a12, &v12[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logger]);
  v29.receiver = v12;
  v29.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v29, "init");
  sub_1001CF448();
  sub_1001CF344(a12, v23);
  return v22;
}

void sub_1001CE290(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001A81B0(a1);
  v4 = [v3 ams_DSID];

  if (sub_1001A79F8())
  {
    sub_10018884C();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

    v4 = isa;
  }

  else if (!v4)
  {
    return;
  }

  v6 = v4;
  v7 = [objc_opt_self() sharedManager];

  v8 = String._bridgeToObjectiveC()();

  v9 = *(v2 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_messageType);
  v10 = String._bridgeToObjectiveC()();
}

uint64_t sub_1001CE53C()
{
  result = type metadata accessor for Logger();
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

void sub_1001CE614()
{
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = type metadata accessor for SKLogger();
  sub_10007EDA4(v1, qword_1003F26C8);
  v2 = *(v0 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey);
  v3 = *(v0 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8);
  v4 = static os_log_type_t.default.getter();

  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_10008E688();
    sub_10008E670();
    *v5 = 136446466;
    sub_10009F0F8();
    v12 = v6;
    v13 = v8;
    v14 = v7;
    v9._countAndFlagsBits = v2;
    v9._object = v3;
    String.append(_:)(v9);
    sub_10009F134();
    v10 = sub_100080210(v12, v13, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031DA40, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }
}

id sub_1001CE818(void *a1)
{
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v3 = type metadata accessor for SKLogger();
  sub_10007EDA4(v3, qword_1003F26C8);
  v4 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey);
  v5 = *(v1 + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8);
  v6 = static os_log_type_t.default.getter();

  v7 = Logger.logObject.getter();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = sub_10008E688();
    sub_10008E670();
    *v8 = 136446466;
    sub_10009F0F8();
    v15 = v9;
    v16 = v11;
    v17 = v10;
    v12._countAndFlagsBits = v4;
    v12._object = v5;
    String.append(_:)(v12);
    sub_10009F134();
    v13 = sub_100080210(v15, v16, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031DA20, &v17);
    _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  return [a1 invalidate];
}

uint64_t sub_1001CEA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v12 = sub_10007EDA4(v8, qword_1003F26C8);
    sub_10007EDDC(v12, v11);
    swift_errorRetain();
    v13 = v3;
    v14 = Logger.logObject.getter();
    type metadata accessor for Logger();
    sub_100098B7C();
    (*(v15 + 8))(v11);
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v16))
    {
      v17 = sub_10008E688();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_100080210(*&v13[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey], *&v13[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8], &v36);
      *(v17 + 12) = 2114;
      v20 = _convertErrorToNSError(_:)();
      *(v17 + 14) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v14, v16, "[%{public}s] Offer remote handle invalidated with error: %{public}@", v17, 0x16u);
      sub_1001A1BB8(v18);
      sub_100081C28();
      sub_100080F0C(v19);
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    sub_10007EDA4(v8, qword_1003F26C8);
    v21 = *&v3[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey];
    v22 = *&v3[OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_logKey + 8];
    v23 = static os_log_type_t.default.getter();

    v24 = Logger.logObject.getter();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = sub_10008E688();
      sub_10008E670();
      *v25 = 136446466;
      sub_10009F0F8();
      v36 = v26;
      v37 = v28;
      v38 = v27;
      v29._countAndFlagsBits = v21;
      v29._object = v22;
      String.append(_:)(v29);
      sub_10009F134();
      v30 = sub_100080210(v36, v37, &v38);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031DA00, &v38);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }
  }

  v31 = type metadata accessor for TaskPriority();
  sub_100081DFC(v7, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v3;
  v33 = v3;
  sub_1001661A4();
}

uint64_t sub_1001CEE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_100080FB4(&qword_1003D18D8);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001CEF28, 0, 0);
}

uint64_t sub_1001CEF28()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9storekitd28SubscriptionOfferRemoteAlert_alertActor);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1001CEF54, v1, 0);
}

uint64_t sub_1001CEF54()
{
  sub_10008BE9C();
  (*(v0[5] + 16))(v0[6], v0[7] + OBJC_IVAR____TtC9storekitdP33_CC0A652C8FC4D059DA9F2A360195F4AA33SubscriptionOfferRemoteAlertActor_continuation, v0[4]);
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001CEFD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v1, v3);

  sub_100098AC4();

  return v4();
}

uint64_t sub_1001CF0DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CF11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001CF1D0;

  return sub_1001CEE5C(a1, v4, v5, v6);
}

uint64_t sub_1001CF1D0()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

id sub_1001CF2BC()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithServiceName:v1 viewControllerClassName:v2];

  return v3;
}

uint64_t sub_1001CF344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1001CF39C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a5 activateForTargetXPCConnection:a1 sceneID:a2 shouldDismissOnUILock:a3 & 1 userInfo:isa];
}

uint64_t sub_1001CF460()
{

  return AnyHashable.init<A>(_:)();
}

void sub_1001CF480()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000B784C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001CF508(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1001CF64CLL);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return sub_100081D0C(a1, v5, v4);
  }

  v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_1001CF660(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1001CF83CLL);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v7 < 0x7FFFFFFE)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v17 = 0;
            v17[1] = 0;
            *v17 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v17[1] = a2;
          }
        }

        else
        {

          sub_100081DFC(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_1001CF890(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1001CF92C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PurchaseIntentInternal()
{
  result = qword_1003D19E8;
  if (!qword_1003D19E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CF9F8()
{
  sub_1000B784C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for Date();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1001CFA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x800000010031DB90 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001CFC9C(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x4449656C646E7562;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001CFD80(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1A40);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001D04D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1001D0790();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_1001D0790();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_1001D0790();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    sub_1001D0790();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for PurchaseIntentInternal();
    v10[11] = 4;
    type metadata accessor for Date();
    sub_1001D052C(&qword_1003CD7D8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[10] = 5;
    sub_1001D0790();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001CFF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = type metadata accessor for Date();
  sub_1000890DC();
  v33 = v4;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080FB4(&qword_1003D1A30);
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  v34 = type metadata accessor for PurchaseIntentInternal();
  __chkstk_darwin(v34);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v36 = a1;
  sub_100086D24(a1, v13);
  sub_1001D04D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(v36);
  }

  v30 = v7;
  v31 = v9;
  v42 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v14;
  v41 = 1;
  sub_1001D07A0();
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v15;
  v40 = 2;
  sub_1001D07A0();
  v12[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[5] = v16;
  v39 = 3;
  sub_1001D07A0();
  v12[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[7] = v17;
  v38 = 4;
  sub_1001D052C(&qword_1003CD800);
  v18 = v30;
  v19 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v34;
  (*(v33 + 32))(v12 + *(v34 + 32), v18, v19);
  v37 = 5;
  sub_1001D07A0();
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v22;
  v23 = v21;
  v24 = sub_1001D077C();
  v25(v24);
  v26 = (v12 + *(v20 + 36));
  v27 = v30;
  *v26 = v23;
  v26[1] = v27;
  sub_1001439E0(v12, v32);
  sub_100080F0C(v36);
  return sub_100143A44(v12);
}

uint64_t sub_1001D0408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001CFA9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D0430(uint64_t a1)
{
  v2 = sub_1001D04D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D046C(uint64_t a1)
{
  v2 = sub_1001D04D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D04D8()
{
  result = qword_1003D1A38;
  if (!qword_1003D1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1A38);
  }

  return result;
}

uint64_t sub_1001D052C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseIntentInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D063CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D0678()
{
  result = qword_1003D1A48;
  if (!qword_1003D1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1A48);
  }

  return result;
}

unint64_t sub_1001D06D0()
{
  result = qword_1003D1A50;
  if (!qword_1003D1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1A50);
  }

  return result;
}

unint64_t sub_1001D0728()
{
  result = qword_1003D1A58[0];
  if (!qword_1003D1A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003D1A58);
  }

  return result;
}

uint64_t sub_1001D07B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001D0880(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

Swift::Int sub_1001D08F0()
{
  Hasher.init(_seed:)();
  sub_100085944(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1001D0950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D07B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D09B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100083EBC();
  *a1 = result;
  return result;
}

uint64_t sub_1001D09E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001D0A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001D0AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012496C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001D0B44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100082638();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001D0B7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001D0BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_1001D0C24(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v7, a2[2], a2[3], a2[4]);
  return Hasher._finalize()();
}

uint64_t sub_1001D0CA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001D0CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001D0D4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1001D2058();
  v8 = _s13CodableResultO17FailureCodingKeysOMa();
  sub_1001D2004();
  swift_getWitnessTable();
  sub_1001D20A4();
  v57 = v8;
  v55 = v9;
  type metadata accessor for KeyedEncodingContainer();
  sub_1000890DC();
  v59 = v11;
  v60 = v10;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_1000891AC();
  v56 = v13;
  sub_100156444();
  v58 = v14;
  __chkstk_darwin(v15);
  sub_100093D40();
  v54 = v17 - v16;
  sub_1001D2058();
  v18 = _s13CodableResultO17SuccessCodingKeysOMa();
  sub_1001D1FEC();
  swift_getWitnessTable();
  sub_1001D20A4();
  v50 = v18;
  v48 = v19;
  type metadata accessor for KeyedEncodingContainer();
  sub_1000890DC();
  v52 = v21;
  v53 = v20;
  sub_100089118();
  __chkstk_darwin(v22);
  sub_1000891AC();
  v49 = v23;
  sub_100156444();
  v51 = v24;
  __chkstk_darwin(v25);
  sub_100093D40();
  v47 = v27 - v26;
  sub_100156444();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_100093D40();
  v33 = v32 - v31;
  v63 = v7;
  v64 = v6;
  sub_1001D2058();
  _s13CodableResultO10CodingKeysOMa();
  v34 = sub_1001D201C();
  sub_1001D20B0();
  v65 = type metadata accessor for KeyedEncodingContainer();
  sub_1000890DC();
  v67 = v35;
  sub_100089118();
  __chkstk_darwin(v36);
  v38 = &v46 - v37;
  sub_100086D24(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v29 + 16))(v33, v66, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v58;
    v40 = v54;
    v41 = v63;
    (*(v58 + 32))(v54, v33, v63);
    v69 = 1;
    v42 = v56;
    sub_1001D2090();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = v60;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v44 = v59;
  }

  else
  {
    v39 = v51;
    v40 = v47;
    v41 = v64;
    (*(v51 + 32))(v47, v33, v64);
    v68 = 0;
    v42 = v49;
    sub_1001D2090();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v44 = v52;
  }

  (*(v44 + 8))(v42, v43);
  (*(v39 + 8))(v40, v41);
  return (*(v67 + 8))(v38, v34);
}

uint64_t sub_1001D11F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v74 = a5;
  v73 = a4;
  v66 = a6;
  v9 = _s13CodableResultO17FailureCodingKeysOMa();
  sub_1001D2004();
  swift_getWitnessTable();
  sub_1001D20A4();
  v78 = v10;
  v79 = v9;
  v70 = type metadata accessor for KeyedDecodingContainer();
  sub_1000890DC();
  v69 = v11;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_1000891AC();
  v80 = v13;
  sub_1001D2078();
  v14 = _s13CodableResultO17SuccessCodingKeysOMa();
  sub_1001D1FEC();
  swift_getWitnessTable();
  sub_1001D20A4();
  v75 = v15;
  v76 = v14;
  v68 = type metadata accessor for KeyedDecodingContainer();
  sub_1000890DC();
  v67 = v16;
  sub_100089118();
  __chkstk_darwin(v17);
  sub_1000891AC();
  v77 = v18;
  sub_1001D2078();
  _s13CodableResultO10CodingKeysOMa();
  v84 = sub_1001D201C();
  sub_1001D20B0();
  type metadata accessor for KeyedDecodingContainer();
  sub_1000890DC();
  v82 = v19;
  v83 = v20;
  sub_100089118();
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  v71 = a2;
  v72 = a3;
  v24 = _s13CodableResultOMa();
  sub_1000890DC();
  v81 = v25;
  v27 = __chkstk_darwin(v26);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v64 - v31;
  __chkstk_darwin(v30);
  v34 = &v64 - v33;
  v35 = a1[3];
  v90 = a1;
  sub_100086D24(a1, v35);
  v36 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v36)
  {
    v84 = v29;
    v85 = v32;
    v65 = v34;
    v37 = v82;
    v38 = v23;
    *&v86 = KeyedDecodingContainer.allKeys.getter();
    sub_1001D20B0();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v88 = ArraySlice.init<A>(_:)();
    *(&v88 + 1) = v39;
    *&v89 = v40;
    *(&v89 + 1) = v41;
    sub_1001D20B0();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v42 = v86;
    if (v86 == 2 || (v64 = v88, v86 = v88, v87 = v89, (Collection.isEmpty.getter() & 1) == 0))
    {
      v45 = type metadata accessor for DecodingError();
      swift_allocError();
      v47 = v46;
      sub_100080FB4(&qword_1003CC798);
      *v47 = v24;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
      swift_willThrow();
      (*(v83 + 8))(v38, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v86) = 1;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v84;
        v44 = v70;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v50 = sub_1001D2048();
        v51(v50, v44);
        v52 = sub_10017069C();
        v53(v52);
        sub_1001D2068();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v54 = v43;
        v55 = v81;
        v56 = v66;
      }

      else
      {
        LOBYTE(v86) = 0;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v55 = v81;
        v48 = v68;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v57 = sub_1001D2048();
        v58(v57, v48);
        v59 = sub_10017069C();
        v60(v59);
        sub_1001D2068();
        swift_unknownObjectRelease();
        v61 = v85;
        swift_storeEnumTagMultiPayload();
        v56 = v66;
        v54 = v61;
      }

      v62 = *(v55 + 32);
      v63 = v65;
      v62(v65, v54, v24);
      v62(v56, v63, v24);
    }
  }

  return sub_100080F0C(v90);
}

_BYTE *sub_1001D195C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D1A28);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001D1A54(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001D1AF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D1B20()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D1B9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1001D1CE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x1001D1EB4);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1001D201C()
{

  return swift_getWitnessTable();
}

uint64_t sub_1001D20BC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 && a1)
  {
    *a1 = _convertErrorToNSError(_:)();
  }
}

uint64_t sub_1001D2114(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a3;
  }

  if (a1)
  {
    *a1 = _convertErrorToNSError(_:)();
  }

  return a2;
}

void *sub_1001D215C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1001D2934();
  v5 = v4[2];
  if (v5)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithInteger:v4[v6] >> 9];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v6;
      --v5;
    }

    while (v5);
  }

  sub_1001D2404(&_swiftEmptyArrayStorage);
  sub_1001D20BC(a3, 0, v7, 0);
  v8 = sub_1000C44AC();
  sub_1001D3E20(v8, 0);
  return a3;
}

void *sub_1001D2298(uint64_t a1, uint64_t a2, void *a3)
{
  Hasher.init()();
  sub_1001D24F0();
  memcpy(__dst, __src, sizeof(__dst));
  v4 = Hasher.finalize()();
  v5 = NSNotFound.getter();
  sub_1001D2114(a3, v5, v4, 0);
  v6 = sub_1000C44AC();
  sub_1001D2B9C(v6, 0);
  return a3;
}

uint64_t sub_1001D2344(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10011EDC4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1001D2404(unint64_t a1)
{
  sub_1000AED9C(a1);
  sub_10018884C();
  sub_10012310C();
  v5[1] = Set.init(minimumCapacity:)();
  v2 = sub_1000AFC90(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10011EF0C(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001D24F0()
{
  *&v27 = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_100027B30(v1, &v27);

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  if (v27)
  {
    v4 = v27;

    *&v27 = v4;
    sub_100080FB4(&qword_1003CCCB0);
    return swift_willThrowTypedImpl();
  }

  else if (v3)
  {
    sub_1001D2EAC(v3, 0);
    v6 = 0;
    v20 = v3;
    v7 = v3;
    do
    {
      v8 = *(&off_100383840 + v6 + 32);
      if (*(&off_100383840 + v6 + 32))
      {
        if (v8 == 1)
        {
          v9 = 0xD000000000000012;
        }

        else
        {
          v9 = 0xD000000000000017;
        }

        if (v8 == 1)
        {
          v10 = 0x8000000100313E30;
        }

        else
        {
          v10 = 0x800000010031DBB0;
        }
      }

      else
      {
        v10 = 0xEA00000000006574;
        v9 = 0x614464656E676973;
      }

      v11 = sub_1000B6328(v9, v10);
      v13 = v12;

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v24 = v7;
        v15 = *(v7 + 24);
        sub_100080FB4(&qword_1003CCA88);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);

        sub_10008B5D0((*(v7 + 56) + 32 * v11), &v27);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v27 = 0u;
        v28[0] = 0u;
      }

      ++v6;
      sub_10008B69C(&v27, &unk_1003CCB70);
    }

    while (v6 != 3);
    *&v27 = sub_1001D2EB8(v7);
    sub_1001D2F74(&v27);
    if (v0)
    {

      __break(1u);
    }

    else
    {

      v16 = 0;
      v17 = v27;
      v18 = *(v27 + 16);
      while (1)
      {
        if (v16 == v18)
        {
          v25 = 0u;
          v26 = 0u;
          v16 = v18;
          v24 = 0u;
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_34:
            __break(1u);
          }

          if (v16 >= *(v17 + 16))
          {
            goto LABEL_34;
          }

          sub_1001D2FE0(v17 + 32 + 48 * v16++, &v24);
        }

        v27 = v24;
        v28[0] = v25;
        v28[1] = v26;
        if (!*(&v24 + 1))
        {
          break;
        }

        sub_10008B5D0(v28, &v23);
        sub_100080FB4(&qword_1003D1C68);
        if (swift_dynamicCast())
        {
          sub_1000F2C78(v21, &v24);
          sub_100086D24(&v24, *(&v25 + 1));
          dispatch thunk of Hashable.hash(into:)();
          sub_100080F0C(&v24);
        }

        else
        {
          v22 = 0;
          memset(v21, 0, sizeof(v21));
          sub_10008B69C(v21, &qword_1003D1C70);
        }
      }

      sub_1001D3E20(v20, 0);
    }
  }

  else
  {
    sub_1001D2E58();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return sub_1001D3E20(0, 0);
  }

  return result;
}

void *sub_1001D2934()
{
  v1 = v0;
  v16 = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = sub_100028E90(isa, &v16);

  if (v3)
  {
    sub_100080FB4(&unk_1003CE640);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  if (v16)
  {
    v5 = v16;

    v16 = v5;
    sub_100080FB4(&qword_1003CCCB0);
    swift_willThrowTypedImpl();
  }

  else if (v4)
  {
    v7 = *(v4 + 16);
    if (v7)
    {
      v16 = &_swiftEmptyArrayStorage;
      sub_1002134AC(0, v7, 0);
      v8 = 0;
      v3 = v16;
      while (1)
      {
        if (v8 >= *(v4 + 16))
        {
          __break(1u);
        }

        v14 = *(v4 + 32 + 8 * v8);

        sub_1001D2BA8(&v14, &v13, &v15);
        if (v1)
        {
          break;
        }

        v1 = 0;

        v9 = v15;
        v16 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1002134AC((v10 > 1), v11 + 1, 1);
          v3 = v16;
        }

        ++v8;
        v3[2] = v11 + 1;
        v3[v11 + 4] = v9;
        if (v7 == v8)
        {
          sub_1001D3E20(v4, 0);
          return v3;
        }
      }

      sub_1001D3E20(v4, 0);
    }

    else
    {
      sub_1001D3E20(v4, 0);
      return &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_1001D2E58();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1001D2B9C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001D2BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  Hasher.init()();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v9, v6, &v10);
  sub_10008E550(v9);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      Hasher._combine(_:)(v8);
    }
  }

  else
  {
    sub_10008B69C(&v10, &unk_1003CCB70);
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v9, v6, &v10);
  sub_10008E550(v9);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      sub_1001D24F0();

      if (v3)
      {
        *a2 = v3;
        return result;
      }
    }
  }

  else
  {
    sub_10008B69C(&v10, &unk_1003CCB70);
  }

  memcpy(__dst, __src, sizeof(__dst));
  result = Hasher.finalize()();
  *a3 = result;
  return result;
}

void *sub_1001D2D6C(uint64_t a1, void *a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001D2298(v3, v4, a2);
  sub_1000C44AC();

  return a2;
}

Class sub_1001D2DA8(void *a1, void *a2)
{
  v3 = a1;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1001D215C(v4, v6, a2);
  v7 = sub_1000C44AC();
  sub_10008E168(v7, v6);
  if (a2)
  {
    sub_10018884C();
    sub_10012310C();
    v8.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

unint64_t sub_1001D2E58()
{
  result = qword_1003D1C60;
  if (!qword_1003D1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1C60);
  }

  return result;
}

uint64_t sub_1001D2EAC(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

void *sub_1001D2EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_1001DA654(*(a1 + 16), 0);
  v4 = sub_1001D3C84(&v6, v3 + 2, v1, a1);

  sub_100123174();
  if (v4 != v1)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

Swift::Int sub_1001D2F74(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10013B23C(v2);
    v2 = v3;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_1001D3050(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1001D2FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003D0A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1001D3050(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100080FB4(&qword_1003D0A88);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1001D32A8(v7, v8, a1, v4);
      *(v6 + 2) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001D3154(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001D3154(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
    while (2)
    {
      v20 = a3;
      v7 = v6;
      v8 = v5;
      while (1)
      {
        sub_1001D2FE0(v8, v19);
        v9 = v8 - 3;
        sub_1001D2FE0((v8 - 3), v18);
        if (v19[0] == v18[0] && v19[1] == v18[1])
        {
          break;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10008B69C(v18, &qword_1003D0A88);
        result = sub_10008B69C(v19, &qword_1003D0A88);
        if (v11)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v13 = v8[1];
          v12 = v8[2];
          v14 = *v8;
          v15 = *(v8 - 2);
          *v8 = *v9;
          v8[1] = v15;
          v8[2] = *(v8 - 1);
          *v9 = v14;
          *(v8 - 2) = v13;
          v8 -= 3;
          v9[2] = v12;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_10008B69C(v18, &qword_1003D0A88);
      result = sub_10008B69C(v19, &qword_1003D0A88);
LABEL_14:
      a3 = v20 + 1;
      v5 += 48;
      --v6;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1001D32A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = &_swiftEmptyArrayStorage;
LABEL_107:
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_145;
        }

        v99 = v6;
        v100 = &v6[16 * v98];
        v6 = *v100;
        v101 = &v97[2 * v98];
        v102 = *(v101 + 1);
        v103 = v120;
        sub_1001D39C4((*a3 + 48 * *v100), (*a3 + 48 * *v101), (*a3 + 48 * v102), v114);
        v120 = v103;
        if (v103)
        {
          break;
        }

        if (v102 < v6)
        {
          goto LABEL_133;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_134;
        }

        *v100 = v6;
        *(v100 + 1) = v102;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_135;
        }

        v98 = *v97 - 1;
        sub_10013A098(v101 + 16, v104, v101);
        *v97 = v98;
        v6 = v99;
      }

LABEL_117:

      return;
    }

LABEL_142:
    v6 = sub_10013A084(v6);
    goto LABEL_109;
  }

  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
  v7 = &qword_1003D0A88;
  v8 = &unk_1002F77B0;
  while (1)
  {
    v9 = v5;
    v10 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v106 = v6;
      v11 = *a3;
      sub_1001D2FE0(*a3 + 48 * v10, &v118);
      sub_1001D2FE0(v11 + 48 * v9, &v116);
      if (v118 == v116 && v119 == v117)
      {
        LODWORD(v114) = 0;
      }

      else
      {
        LODWORD(v114) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10008B69C(&v116, v7);
      sub_10008B69C(&v118, v7);
      v13 = (v9 + 2);
      v109 = v9;
      v14 = v11 + 48 * v9;
      v15 = 48 * v9;
      v16 = v14 + 96;
      v17 = v15 + 48;
      v18 = v10;
      do
      {
        v10 = v13;
        v19 = v18;
        v20 = v17;
        if (v13 >= v4)
        {
          break;
        }

        v6 = v4;
        sub_1001D2FE0(v16, &v118);
        sub_1001D2FE0(v16 - 48, &v116);
        v21 = v118 == v116 && v119 == v117;
        v22 = v21 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10008B69C(&v116, v7);
        sub_10008B69C(&v118, v7);
        v23 = v114 ^ v22;
        v13 = v10 + 1;
        v16 += 48;
        v18 = v19 + 1;
        v17 = v20 + 48;
        v4 = v6;
      }

      while ((v23 & 1) == 0);
      if (v114)
      {
        v24 = v109;
        if (v10 < v109)
        {
          goto LABEL_139;
        }

        if (v109 >= v10)
        {
          v6 = v106;
          v9 = v109;
          goto LABEL_31;
        }

        v6 = v106;
        do
        {
          if (v24 != v19)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v26 = (v25 + v15);
            v27 = (v25 + v20);
            v28 = *v26;
            v29 = v26[1];
            v30 = v26[2];
            v32 = v27[1];
            v31 = v27[2];
            *v26 = *v27;
            v26[1] = v32;
            v26[2] = v31;
            v27[1] = v29;
            v27[2] = v30;
            *v27 = v28;
          }

          ++v24;
          v20 -= 48;
          v15 += 48;
          v33 = v24 < v19--;
        }

        while (v33);
      }

      else
      {
        v6 = v106;
      }

      v9 = v109;
    }

LABEL_31:
    v34 = a3[1];
    if (v10 < v34)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_138;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v10 < v9)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001D9FA8();
      v6 = v95;
    }

    v50 = *(v6 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v6 + 3) >> 1)
    {
      sub_1001D9FA8();
      v6 = v96;
    }

    *(v6 + 2) = v51;
    v52 = v6 + 32;
    v53 = &v6[16 * v50 + 32];
    *v53 = v9;
    *(v53 + 1) = v10;
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    v114 = v10;
    if (v50)
    {
      v111 = v6 + 32;
      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v6[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v6 + 4);
          v58 = *(v6 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_75:
          if (v60)
          {
            goto LABEL_124;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_127;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_130;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_132;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v51 < 2)
        {
          goto LABEL_126;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_90:
        if (v75)
        {
          goto LABEL_129;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_131;
        }

        if (v82 < v74)
        {
          goto LABEL_104;
        }

LABEL_97:
        if (v54 - 1 >= v51)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v86 = &v52[16 * v54 - 16];
        v87 = *v86;
        v88 = v54;
        v89 = &v52[16 * v54];
        v90 = *(v89 + 1);
        v91 = v120;
        sub_1001D39C4((*a3 + 48 * *v86), (*a3 + 48 * *v89), (*a3 + 48 * v90), v113);
        v120 = v91;
        if (v91)
        {
          goto LABEL_117;
        }

        if (v90 < v87)
        {
          goto LABEL_119;
        }

        v92 = v8;
        v93 = v7;
        v94 = v6;
        v6 = *(v6 + 2);
        if (v88 > v6)
        {
          goto LABEL_120;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v88 >= v6)
        {
          goto LABEL_121;
        }

        v51 = (v6 - 1);
        sub_10013A098(v89 + 16, &v6[-v88 - 1], v89);
        *(v94 + 2) = v6 - 1;
        v33 = v6 > 2;
        v6 = v94;
        v7 = v93;
        v8 = v92;
        v52 = v111;
        if (!v33)
        {
          goto LABEL_104;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_122;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_123;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_125;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_128;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_136;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_75;
    }

LABEL_104:
    v5 = v114;
    v4 = a3[1];
    if (v114 >= v4)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_140;
  }

  if (&v9[a4] >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = &v9[a4];
  }

  if (v35 < v9)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v10 == v35)
  {
    goto LABEL_54;
  }

  v107 = v6;
  v36 = *a3;
  v37 = v9;
  v38 = *a3 + 48 * v10;
  v112 = v35;
  v114 = v10;
  v110 = v37;
  v39 = &v37[-v10];
LABEL_41:
  v40 = v39;
  v41 = v38;
  while (1)
  {
    sub_1001D2FE0(v41, &v118);
    v42 = v41 - 3;
    sub_1001D2FE0((v41 - 3), &v116);
    if (v118 == v116 && v119 == v117)
    {
      sub_10008B69C(&v116, v7);
      sub_10008B69C(&v118, v7);
LABEL_52:
      v38 += 48;
      --v39;
      if (++v114 == v112)
      {
        v10 = v112;
        v6 = v107;
        v9 = v110;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10008B69C(&v116, v7);
    sub_10008B69C(&v118, v7);
    if ((v44 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v36)
    {
      break;
    }

    v46 = v41[1];
    v45 = v41[2];
    v47 = *v41;
    v48 = *(v41 - 2);
    *v41 = *v42;
    v41[1] = v48;
    v41[2] = *(v41 - 1);
    *v42 = v47;
    *(v41 - 2) = v46;
    v41 -= 3;
    v42[2] = v45;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

uint64_t sub_1001D39C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_100212BD4(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      sub_1001D2FE0(v6, &v33);
      sub_1001D2FE0(v4, &v31);
      v12 = v33 == v31 && v34 == v32;
      if (v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10008B69C(&v31, &qword_1003D0A88);
      sub_10008B69C(&v33, &qword_1003D0A88);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 48;
    }

    sub_10008B69C(&v31, &qword_1003D0A88);
    sub_10008B69C(&v33, &qword_1003D0A88);
LABEL_16:
    v14 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v14;
    v16 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_18;
  }

  sub_100212BD4(a2, (a3 - a2) / 48, a4);
  v17 = &v4[48 * v9];
  v35 = v4;
LABEL_20:
  v18 = (v6 - 48);
  v5 -= 48;
  v19 = v17 - 48;
  while (1)
  {
    v10 = v19 + 48;
    if (v19 + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    v21 = v6;
    sub_1001D2FE0(v19, &v33);
    v6 = v18;
    sub_1001D2FE0(v18, &v31);
    if (v33 == v31 && v34 == v32)
    {
      v23 = 0;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_10008B69C(&v31, &qword_1003D0A88);
    sub_10008B69C(&v33, &qword_1003D0A88);
    if (v23)
    {
      v17 = v19 + 48;
      v12 = v5 + 48 == v21;
      v4 = v35;
      if (!v12)
      {
        v26 = *v6;
        v27 = *(v6 + 2);
        *(v5 + 1) = *(v6 + 1);
        *(v5 + 2) = v27;
        *v5 = v26;
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 48)
    {
      v24 = *v19;
      v25 = *(v19 + 2);
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v25;
      *v5 = v24;
    }

    v5 -= 48;
    v19 -= 48;
    v18 = v6;
    v6 = v21;
    v4 = v35;
  }

LABEL_39:
  v28 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v28])
  {
    memmove(v6, v4, 48 * v28);
  }

  return 1;
}

void *sub_1001D3C84(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_100080F58(*(a4 + 56) + 32 * v16, &v26);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      v22 = v26;
      v21 = v27;
      v29 = v26;
      v30 = v27;
      v28 = v25;
      *v9 = v25;
      v9[1] = v22;
      v9[2] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 3;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001D3E20(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_BYTE *storeEnumTagSinglePayload for AnalyticsUtilityError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D3EF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D3F34()
{
  result = qword_1003D1C78;
  if (!qword_1003D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1C78);
  }

  return result;
}

void sub_1001D3F88(uint64_t a1)
{
  v4 = sub_1001D4F54(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001D4EB8(v4, 1, sub_1001D9B00);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001D4F6C();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100080FB4(&unk_1003D1CC0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001D4058(uint64_t a1)
{
  v4 = sub_1001D4F54(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001D4EB8(v4, 1, sub_1001D9EE8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001D4F6C();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1001D4110(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1001D4EB8(*(*v3 + 16) + 1, 1, sub_1001DA2B8);
  v8 = *v3;
  v9 = *(*v3 + 16);
  v10 = (*(*v3 + 24) >> 1) - v9;
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = a3 & 1;
  v13 = 24 * v9 + 32;
  do
  {
    if ((v10 & ~(v10 >> 63)) == v11)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v12 == -1)
    {
      goto LABEL_7;
    }

    v14 = v8 + v13;
    ++v11;
    v13 += 24;
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = v12 & 1;
    v12 = -1;
    a1 = 0;
    a2 = 0;
  }

  while (v10 != v11);
  v11 = v10;
LABEL_7:
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v11);
  v17 = v15 + v11;
  if (v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v8 + 16) = v17;
  if (v11 != v10)
  {
    result = sub_1001D4F30(0, 0, 255);
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001D4220(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1001D4EB8(result, 1, sub_1001DA2B8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1001D42F8()
{
  sub_1001D4F48();
  sub_100080FB4(&unk_1003D2720);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002ED290;
  *(v3 + 32) = v2;
  *(v3 + 40) = v0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 initWithKeyPath:isa];

  return v5;
}

uint64_t sub_1001D43B8()
{
  v1 = sub_1001D4F94();
  sub_100080FB4(&unk_1003D1CB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002ED290;
  *(v2 + 32) = v0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  objc_msgSendSuper2(&v5, "init");
  sub_1001D4F94();
  swift_deallocPartialClassInstance();
  return v0;
}

id sub_1001D4494(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = ObjectType;
  v4 = *(a1 + 16);
  if (v4)
  {
    v15 = ObjectType;
    v17 = _swiftEmptyArrayStorage;
    sub_1002134CC(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v17 = v5;
      v10 = v5[2];
      v9 = v5[3];

      if (v10 >= v9 >> 1)
      {
        sub_1002134CC((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      v5[2] = v10 + 1;
      v11 = &v5[3 * v10];
      v11[4] = v8;
      v11[5] = v7;
      *(v11 + 48) = 0;
      v6 += 2;
      --v4;
    }

    while (v4);

    v3 = v15;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v12 = objc_allocWithZone(v3);
  *&v12[OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath] = v5;
  v16.receiver = v12;
  v16.super_class = v3;
  v13 = objc_msgSendSuper2(&v16, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id sub_1001D4624()
{
  sub_1001D4F48();
  v1 = objc_allocWithZone(v0);

  sub_100093DD0();
  return sub_1001D42F8();
}

id sub_1001D46DC()
{
  sub_1001D4F48();
  ObjectType = swift_getObjectType();
  v7 = *(v0 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath);

  v2 = sub_100093DD0();
  sub_1001D4110(v2, v3, 0);
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath] = v7;
  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001D47E8()
{
  sub_1001D4F94();
  v6 = sub_1001D4F80();

  sub_1001D4110(v0, 0, 1);
  v3 = objc_allocWithZone(v1);
  *&v3[*(v2 + 3200)] = v6;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1001D48AC()
{
  sub_1001D4F94();
  v6 = sub_1001D4F80();

  sub_1001D4220(v2);
  v3 = objc_allocWithZone(v0);
  *&v3[*(v1 + 3200)] = v6;
  v5.receiver = v3;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1001D49F8()
{
  sub_1001D4F48();
  if (*(*(v0 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath) + 16))
  {
    v1._countAndFlagsBits = sub_100093DD0();
    String.append(_:)(v1);
    v2._countAndFlagsBits = 0x293F203E3E2D20;
    v2._object = 0xE700000000000000;
    String.append(_:)(v2);
  }

  else
  {
  }

  return sub_100093DD0();
}

uint64_t sub_1001D4B14()
{
  result = 36;
  v2 = *(v0 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 48);
    do
    {
      v5 = *(v4 - 2);
      if (*v4)
      {
        v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v6);

        v7._countAndFlagsBits = 93;
        v7._object = 0xE100000000000000;
        String.append(_:)(v7);
        v8._countAndFlagsBits = 91;
        v8._object = 0xE100000000000000;
        String.append(_:)(v8);
      }

      else
      {
        v9 = *(v4 - 1);

        v10._countAndFlagsBits = v5;
        v10._object = v9;
        String.append(_:)(v10);
        v11._countAndFlagsBits = 46;
        v11._object = 0xE100000000000000;
        String.append(_:)(v11);
        sub_1001D4E78(v5, v9, 0);
      }

      v4 += 24;
      --v3;
    }

    while (v3);
    return 36;
  }

  return result;
}

void sub_1001D4C4C()
{
  if (*(*(v1 + OBJC_IVAR____TtC9storekitd26SQLiteExtractJSONTransform_keyPath) + 16))
  {
    sub_1001D4F48();
    if (v4 == 1)
    {
      v5 = *(v3 + 32);
      if (*(v3 + 48))
      {
        [v2 bindInt64:v5 atPosition:*v0];
      }

      else
      {
        v7 = *(v3 + 40);

        v8 = String._bridgeToObjectiveC()();
        [v2 bindStringCopy:v8 atPosition:*v0];
        sub_1001D4E78(v5, v7, 0);
      }
    }

    else
    {
      sub_1001D4B14();
      v6 = String._bridgeToObjectiveC()();

      [v2 bindStringCopy:v6 atPosition:*v0];
    }

    if (__OFADD__(*v0, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v0;
    }
  }
}

uint64_t sub_1001D4DD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D4E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001D4E78(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1001D4EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1001D4F30(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001D4E78(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001D4F94()
{

  return swift_getObjectType();
}

uint64_t sub_1001D4FCC()
{
  v18 = v0;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SKLogger();
  sub_10007EDA4(v1, qword_1003F26C8);
  _StringGuts.grow(_:)(32);

  v16 = 0xD00000000000001ELL;
  v17 = 0x800000010031DC90;
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v4 = v0[2];
  v3 = v0[3];
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v15 = v8;
    v16 = 91;
    v17 = 0xE100000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v3;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 8285;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = sub_100080210(91, 0xE100000000000000, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_100080210(0xD00000000000001ELL, 0x800000010031DC90, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_1003CBE60 != -1)
  {
    swift_once();
  }

  v13 = qword_1003D1CD0;
  v0[5] = qword_1003D1CD0;

  return _swift_task_switch(sub_1001D52D4, v13, 0);
}

uint64_t sub_1001D52D4()
{
  *(v0 + 48) = sub_10019D99C();

  return _swift_task_switch(sub_1001D5340, 0, 0);
}

uint64_t sub_1001D5340()
{
  v1 = *(v0 + 32);
  v2 = v1[2];
  *(v0 + 56) = v2;
  if (v2)
  {
    *(v0 + 64) = 0;
    v4 = v1[4];
    v3 = v1[5];
    v5 = swift_allocObject();
    *(v0 + 72) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;

    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    sub_1001D597C(v6);

    return sub_1001D5E3C(v7, v5);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1001D5440()
{

  return _swift_task_switch(sub_1001D5558, 0, 0);
}

uint64_t sub_1001D5558()
{
  v1 = *(v0 + 64) + 1;
  if (v1 == *(v0 + 56))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 64) = v1;
    v4 = *(v0 + 32) + 16 * v1;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = swift_allocObject();
    *(v0 + 72) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;

    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    sub_1001D597C();

    return sub_1001D5E3C(v9, v7);
  }
}

uint64_t sub_1001D5660()
{
  sub_100080FB4(qword_1003D1D80);
  swift_allocObject();
  result = sub_10019D9C0(sub_10018F144, 0);
  qword_1003D1CD0 = result;
  return result;
}

void sub_1001D56C4(void *a1, uint64_t a2, uint64_t a3)
{
  _s16AppReceiptEntityCMa();
  v17 = _swiftEmptyArrayStorage;
  v6 = 1;
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1001D5938();
  v16[3] = &type metadata for String;
  v16[0] = a2;
  v16[1] = a3;

  v7 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, v16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [a1 connection];
  v10 = [ObjCClassFromMetadata queryOnConnection:v9 predicate:v7];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v11 = v17;
  v12 = sub_1000AFC90(v17);
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v11 + 16))
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v6)
    {
      v6 = [v14 deleteAllEntities];
    }

    else
    {
      v6 = 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1001D589C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001D58F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001D5938()
{
  result = qword_1003CCBB8;
  if (!qword_1003CCBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003CCBB8);
  }

  return result;
}

os_unfair_lock_s *sub_1001D59F8()
{
  v1 = v0;
  v2 = v0 + 4;
  if (os_unfair_lock_trylock(v2))
  {
    sub_1001D5AB0(&v1[6]);
    type metadata accessor for ExportedObjectTaskTracker.State();
    os_unfair_lock_unlock(v2);
  }

  type metadata accessor for ExportedObjectTaskTracker.State();
  v3 = type metadata accessor for _Cell();
  sub_1001D5CF0(v3);
  return v1;
}

uint64_t sub_1001D5AB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v11 = (v2 + 63) >> 6;

  v6 = 0;
  v13 = result;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(*(result + 56) + ((v6 << 9) | (8 * v8))) + 16);
    if (v9)
    {

      v10 = 32;
      do
      {

        Task.cancel()();

        v10 += 8;
        --v9;
      }

      while (v9);

      result = v13;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
    }

    v4 = *(v12 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D5BF8()
{
  sub_1001D59F8();

  return _swift_deallocClassInstance(v0, 32, 7);
}

char *sub_1001D5C44()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for ()[8];
  }

  type metadata accessor for ExportedObjectTaskTracker.State();
  return type metadata accessor for Mutex();
}

uint64_t sub_1001D5CA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001D5D00(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = swift_getObjectType();

  return _swift_task_switch(sub_1001D5D74, 0, 0);
}

uint64_t sub_1001D5D74()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10018BE54;
  v1 = swift_continuation_init();
  sub_1001D68B4(v1, v2, v3, v4, v5, &unk_10038F4F0, v6, &unk_10038F508);

  return _swift_continuation_await(v0 + 16, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1001D5E3C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = swift_getObjectType();

  return _swift_task_switch(sub_1001D5EB0, 0, 0);
}

uint64_t sub_1001D5EB0()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10018ECC4;
  v1 = swift_continuation_init();
  sub_1001D68B4(v1, v2, v3, v4, v5, &unk_10038F450, v6, &unk_10038F468);

  return _swift_continuation_await(v0 + 16, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1001D5F78()
{
  result = sub_1001D5F98();
  qword_1003D1E88 = result;
  return result;
}

uint64_t sub_1001D5F98()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10014B724();
  static DispatchQoS.default.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CF260, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100080FB4(&qword_1003CF268);
  sub_10014B7B0(&qword_1003CF270, &qword_1003CF268);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  return OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_1001D61E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = sub_1001D686C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D6310;
  v9[3] = &unk_10038F558;
  v7 = _Block_copy(v9);

  [a1 readUsingSession:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return swift_continuation_throwingResume();
  }

  __break(1u);
  return result;
}

void sub_1001D6310(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1001D635C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000890DC();
  v32 = v13;
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  sub_1000890DC();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE68 != -1)
  {
    swift_once();
  }

  v22 = qword_1003D1E88;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a1;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = a2;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10014B768(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10014B7B0(&qword_1003CCB68, &qword_1003CCB60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v32 + 8))(v16, v12);
  (*(v18 + 8))(v21, v31);
}

uint64_t sub_1001D6648(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = sub_1001D67A0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D67CC;
  v9[3] = &unk_10038F4B8;
  v7 = _Block_copy(v9);

  [a1 modifyUsingTransaction:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return swift_continuation_throwingResume();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D6788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D67CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1001D6810()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D68B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1001D635C(a1, v10, v12, v11, v9, a6, v8, a8);
}

uint64_t sub_1001D68E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746369727473 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1001D6A3C(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x746E756F636361;
      break;
    case 2:
      result = 0x4449656C646E7562;
      break;
    case 3:
      result = 0x746369727473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D6AC4(void *a1, uint64_t a2)
{
  v41 = a2;
  sub_100080FB4(&qword_1003D1EE8);
  sub_1000890DC();
  v39 = v4;
  v40 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v38 = v6;
  sub_100080FB4(&qword_1003D1EF0);
  sub_1000890DC();
  v36 = v8;
  v37 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v35 = v10;
  sub_100080FB4(&qword_1003D1EF8);
  sub_1000890DC();
  v33 = v12;
  v34 = v11;
  sub_100089118();
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_100080FB4(&qword_1003D1F00);
  sub_1000890DC();
  v32 = v17;
  sub_100089118();
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v21 = sub_100080FB4(&qword_1003D1F08);
  sub_1000890DC();
  v23 = v22;
  sub_100089118();
  __chkstk_darwin(v24);
  v26 = &v31 - v25;
  sub_100086D24(a1, a1[3]);
  sub_1001D77C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v41)
  {
    case 1:
      v43 = 1;
      sub_1001D78BC();
      sub_100089184();
      (*(v33 + 8))(v15, v34);
      break;
    case 2:
      v44 = 2;
      sub_1001D7868();
      v27 = v35;
      sub_100089184();
      v29 = v36;
      v28 = v37;
      goto LABEL_5;
    case 3:
      v45 = 3;
      sub_1001D7814();
      v27 = v38;
      sub_100089184();
      v29 = v39;
      v28 = v40;
LABEL_5:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1001D7910();
      sub_100089184();
      (*(v32 + 8))(v20, v16);
      break;
  }

  return (*(v23 + 8))(v26, v21);
}

uint64_t sub_1001D6E9C(void *a1)
{
  v64 = sub_100080FB4(&qword_1003D1E98);
  sub_1000890DC();
  v61 = v2;
  sub_100089118();
  __chkstk_darwin(v3);
  sub_1000891AC();
  v63 = v4;
  sub_100080FB4(&qword_1003D1EA0);
  sub_1000890DC();
  v58 = v6;
  v59 = v5;
  sub_100089118();
  __chkstk_darwin(v7);
  sub_1000891AC();
  v60 = v8;
  sub_100080FB4(&qword_1003D1EA8);
  sub_1000890DC();
  v56 = v10;
  v57 = v9;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_100080FB4(&qword_1003D1EB0);
  sub_1000890DC();
  v55 = v15;
  sub_100089118();
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = sub_100080FB4(&qword_1003D1EB8);
  sub_1000890DC();
  v62 = v20;
  sub_100089118();
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  sub_100086D24(a1, a1[3]);
  sub_1001D77C0();
  v24 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100080F0C(a1);
  }

  v52 = v14;
  v53 = v18;
  v54 = v13;
  v25 = v63;
  v26 = v64;
  v65 = a1;
  v27 = v23;
  v28 = KeyedDecodingContainer.allKeys.getter();
  sub_100162698(v28, 0);
  if (v30 == v31 >> 1)
  {
    goto LABEL_8;
  }

  v51 = 0;
  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1001D7488);
  }

  v32 = *(v29 + v30);
  sub_100162694(v30 + 1);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_8:
    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    sub_100080FB4(&qword_1003CC798);
    *v44 = &type metadata for ClientFilter;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v27, v19);
    a1 = v65;
    return sub_100080F0C(a1);
  }

  v37 = v32;
  v38 = v32;
  v40 = v61;
  v39 = v62;
  switch(v38)
  {
    case 1:
      v67 = 1;
      sub_1001D78BC();
      v46 = v54;
      sub_1001D7E78();
      swift_unknownObjectRelease();
      v48 = v56;
      v47 = v57;
      goto LABEL_18;
    case 2:
      v68 = 2;
      sub_1001D7868();
      v46 = v60;
      sub_1001D7E78();
      swift_unknownObjectRelease();
      v48 = v58;
      v47 = v59;
LABEL_18:
      (*(v48 + 8))(v46, v47);
      goto LABEL_19;
    case 3:
      v69 = 3;
      sub_1001D7814();
      v49 = v51;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v49)
      {
        (*(v39 + 8))(v27, v19);
        swift_unknownObjectRelease();
        a1 = v65;
        return sub_100080F0C(a1);
      }

      swift_unknownObjectRelease();
      (*(v40 + 8))(v25, v26);
LABEL_19:
      (*(v39 + 8))(v27, v19);
      sub_100080F0C(v65);
      result = v37;
      break;
    default:
      v66 = 0;
      sub_1001D7910();
      v41 = v53;
      sub_1001D7E78();
      swift_unknownObjectRelease();
      (*(v55 + 8))(v41, v52);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_1001D7498(uint64_t a1)
{
  v2 = sub_1001D78BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D74D4(uint64_t a1)
{
  v2 = sub_1001D78BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7510(uint64_t a1)
{
  v2 = sub_1001D7868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D754C(uint64_t a1)
{
  v2 = sub_1001D7868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D68E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D75B8(uint64_t a1)
{
  v2 = sub_1001D77C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D75F4(uint64_t a1)
{
  v2 = sub_1001D77C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7630(uint64_t a1)
{
  v2 = sub_1001D7910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D766C(uint64_t a1)
{
  v2 = sub_1001D7910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D76A8(uint64_t a1)
{
  v2 = sub_1001D7814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D76E4(uint64_t a1)
{
  v2 = sub_1001D7814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D7720@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D6E9C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001D776C()
{
  result = qword_1003D1E90;
  if (!qword_1003D1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1E90);
  }

  return result;
}

unint64_t sub_1001D77C0()
{
  result = qword_1003D1EC0;
  if (!qword_1003D1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1EC0);
  }

  return result;
}

unint64_t sub_1001D7814()
{
  result = qword_1003D1EC8;
  if (!qword_1003D1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1EC8);
  }

  return result;
}

unint64_t sub_1001D7868()
{
  result = qword_1003D1ED0;
  if (!qword_1003D1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1ED0);
  }

  return result;
}

unint64_t sub_1001D78BC()
{
  result = qword_1003D1ED8;
  if (!qword_1003D1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1ED8);
  }

  return result;
}

unint64_t sub_1001D7910()
{
  result = qword_1003D1EE0;
  if (!qword_1003D1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1EE0);
  }

  return result;
}

_BYTE *sub_1001D7968(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D7A34);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D7AB0()
{
  result = qword_1003D1F10;
  if (!qword_1003D1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F10);
  }

  return result;
}

unint64_t sub_1001D7B08()
{
  result = qword_1003D1F18;
  if (!qword_1003D1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F18);
  }

  return result;
}

unint64_t sub_1001D7B60()
{
  result = qword_1003D1F20;
  if (!qword_1003D1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F20);
  }

  return result;
}

unint64_t sub_1001D7BB8()
{
  result = qword_1003D1F28;
  if (!qword_1003D1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F28);
  }

  return result;
}

unint64_t sub_1001D7C10()
{
  result = qword_1003D1F30;
  if (!qword_1003D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F30);
  }

  return result;
}

unint64_t sub_1001D7C68()
{
  result = qword_1003D1F38;
  if (!qword_1003D1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F38);
  }

  return result;
}

unint64_t sub_1001D7CC0()
{
  result = qword_1003D1F40;
  if (!qword_1003D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F40);
  }

  return result;
}

unint64_t sub_1001D7D18()
{
  result = qword_1003D1F48;
  if (!qword_1003D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F48);
  }

  return result;
}

unint64_t sub_1001D7D70()
{
  result = qword_1003D1F50;
  if (!qword_1003D1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F50);
  }

  return result;
}

unint64_t sub_1001D7DC8()
{
  result = qword_1003D1F58;
  if (!qword_1003D1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F58);
  }

  return result;
}

unint64_t sub_1001D7E20()
{
  result = qword_1003D1F60;
  if (!qword_1003D1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1F60);
  }

  return result;
}

uint64_t sub_1001D7E78()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1001D7E98(char a1)
{
  result = 0x695F656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x765F656C646E7562;
      break;
    case 2:
      result = 0x74706965636572;
      break;
    case 3:
      result = 0x6E656B6F74;
      break;
    case 4:
      result = 0x6470755F7473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001D7F5C()
{
  _StringGuts.grow(_:)(128);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000100314AC0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x656365725F707061;
  v1._object = 0xEC00000073747069;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 665632;
  v2._object = 0xE300000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x695F656C646E7562;
  v3._object = 0xE900000000000064;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xA2C5458455420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x765F656C646E7562;
  v5._object = 0xEE006E6F69737265;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x74706965636572;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._object = 0x8000000100314AE0;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6E656B6F74;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6470755F7473616CLL;
  v11._object = 0xEC00000064657461;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x800000010031DE60;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x695F656C646E7562;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x8000000100316F60;
  String.append(_:)(v14);
  qword_1003D1F68 = 0;
  unk_1003D1F70 = 0xE000000000000000;
}

void sub_1001D8184(void *a1)
{
  if (qword_1003CBE70 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];
}

BOOL sub_1001D8218(void *a1, __n128 a2)
{
  v79 = v86;
  v83 = "igration function for ";
  a2.n128_u64[0] = 136446466;
  v80 = a2;
  while (1)
  {
    v3 = sub_1000DC8F8();
    if (v3 > 18399)
    {
      return v3 > 18399;
    }

    v4 = sub_1000DC8F8();
    if (v4 != 18400)
    {
      if (v4)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v33 = type metadata accessor for SKLogger();
        sub_10007EDA4(v33, qword_1003F26C8);
        sub_1001D8E9C();
        _StringGuts.grow(_:)(65);
        sub_1001D8E3C();
        v34._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v34);

        v35._countAndFlagsBits = 0xD000000000000036;
        v35._object = 0x800000010031DDF0;
        String.append(_:)(v35);
        v87 = sub_1000DC8F8();
        v36._countAndFlagsBits = sub_1001D8E80();
        String.append(_:)(v36);

        sub_1001D8E60();
        v87 = 18400;
        v37._countAndFlagsBits = sub_1001D8E80();
        String.append(_:)(v37);

        v39 = aBlock;
        v38 = v85;
        v40 = static os_log_type_t.error.getter();

        v41 = Logger.logObject.getter();

        if (os_log_type_enabled(v41, v40))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock = v43;
          *v42 = v80.n128_u32[0];
          *(v42 + 4) = sub_1001D8EAC(v43, v44, v45, v46, v47, v48, v49);
          *(v42 + 12) = 2082;
          v50 = sub_100080210(v39, v38, &aBlock);

          *(v42 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v41, v40, "%{public}s%{public}s", v42, 0x16u);
          swift_arrayDestroy();
          sub_100081C28();
          sub_100081C28();
        }

        else
        {
        }

LABEL_16:
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v51 = type metadata accessor for SKLogger();
        sub_10007EDA4(v51, qword_1003F26C8);
        sub_1001D8E9C();
        _StringGuts.grow(_:)(59);
        sub_1001D8E3C();
        v52._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v52);

        sub_1001D8EC8(v53, v54, v55, v56, v57, v58, v59, v60, v78, v79, v80.n128_i64[0], v80.n128_i64[1], v82, v83);
        v87 = sub_1000DC8F8();
        v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v61);

        sub_1001D8E60();
        v87 = 18400;
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63._countAndFlagsBits = 0x4C49414620;
        v63._object = 0xE500000000000000;
        String.append(_:)(v63);
        v65 = aBlock;
        v64 = v85;
        v66 = static os_log_type_t.error.getter();

        v67 = Logger.logObject.getter();

        if (os_log_type_enabled(v67, v66))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          aBlock = v69;
          *v68 = v81;
          *(v68 + 4) = sub_1001D8EAC(v69, v70, v71, v72, v73, v74, v75);
          *(v68 + 12) = 2082;
          v76 = sub_100080210(v65, v64, &aBlock);

          *(v68 + 14) = v76;
          _os_log_impl(&_mh_execute_header, v67, v66, "%{public}s%{public}s", v68, 0x16u);
          swift_arrayDestroy();
          sub_100081C28();
          sub_100081C28();
        }

        else
        {
        }

        return v3 > 18399;
      }

      v86[2] = sub_1001D8184;
      v86[3] = 0;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86[0] = sub_100224D90;
      v86[1] = &unk_10038F720;
      v5 = _Block_copy(&aBlock);

      v6 = [a1 migrateToVersion:18400 usingBlock:v5];
      _Block_release(v5);
      if ((v6 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    sub_10007EDA4(v7, qword_1003F26C8);
    sub_1001D8E9C();
    _StringGuts.grow(_:)(62);
    sub_1001D8E3C();
    v8._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v8);

    sub_1001D8EC8(v9, v10, v11, v12, v13, v14, v15, v16, v78, v79, v80.n128_i64[0], v80.n128_i64[1], v82, v83);
    v87 = sub_1000DC8F8();
    v17._countAndFlagsBits = sub_1001D8E80();
    String.append(_:)(v17);

    sub_1001D8E60();
    v87 = 18400;
    v18._countAndFlagsBits = sub_1001D8E80();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x5353454343555320;
    v19._object = 0xE800000000000000;
    String.append(_:)(v19);
    v20 = aBlock;
    v21 = v85;
    v22 = static os_log_type_t.default.getter();

    v23 = Logger.logObject.getter();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = v80.n128_u32[0];
      *(v24 + 4) = sub_1001D8EAC(v25, v26, v27, v28, v29, v30, v31);
      *(v24 + 12) = 2082;
      v32 = sub_100080210(v20, v21, &aBlock);

      *(v24 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }
  }
}

id sub_1001D8960()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

id sub_1001D8A34(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s19AppTransactionStoreCMa();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

id sub_1001D8B9C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = _s16AppReceiptEntityCMa();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_1001D8C94(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = _s16AppReceiptEntityCMa();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_1001D8D40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1001D8DC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D8E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D8E3C()
{
  v1 = 91;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

void sub_1001D8E60()
{
  v1 = 540949792;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1001D8E80()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

unint64_t sub_1001D8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_100080210(0, 0xE000000000000000, va);
}

void sub_1001D8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = 0xD00000000000002BLL;

  v15 = a14 | 0x8000000000000000;
  String.append(_:)(*&v16);
}

uint64_t sub_1001D8EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DA3C8();
  v10 = v9;
  v32 = a4;
  sub_1000DCFE0();
  v11 = String.init<A>(_:radix:uppercase:)();
  v19 = v11;
  v20 = v12;
  v21 = *(v10 + 16);
  if (v21 >= *(v10 + 24) >> 1)
  {
    sub_1001DA3C8();
    v10 = v11;
  }

  *(v10 + 16) = v21 + 1;
  v22 = v10 + 24 * v21;
  *(v22 + 32) = 1;
  *(v22 + 40) = v19;
  *(v22 + 48) = v20;
  sub_1001A7E5C(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
  v23 = sub_100080FB4(&qword_1003CCB50);
  v24 = sub_100081D0C(v8, 2, v23);
  sub_100094BEC(v8);
  if (v24 == 2)
  {
    if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
    {
      v25 = 0x67696C6674736574;
    }

    else
    {
      v25 = 0x786F62646E6173;
    }

    if (*(a1 + OBJC_IVAR____TtC9storekitd6Client_isBeta))
    {
      v26 = 0xEA00000000007468;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    v27 = *(v10 + 16);
    if (v27 >= *(v10 + 24) >> 1)
    {
      sub_1001DA3C8();
      v10 = v30;
    }

    *(v10 + 16) = v27 + 1;
    v28 = v10 + 24 * v27;
    *(v28 + 32) = 0;
    *(v28 + 40) = v25;
    *(v28 + 48) = v26;
  }

  return v10;
}

id sub_1001D90D4()
{
  if (qword_1003CC040 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F28A8;
  qword_1003F26E0 = qword_1003F28A8;

  return v1;
}

uint64_t sub_1001D9138(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383EF8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D918C(char a1)
{
  if (a1)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 7761509;
  }
}

uint64_t sub_1001D91EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D9138(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D921C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D918C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RefundRequestEngagementDestination.QueryParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001D9324);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D9360()
{
  result = qword_1003D2030;
  if (!qword_1003D2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2030);
  }

  return result;
}

unint64_t sub_1001D93B8()
{
  result = qword_1003D2038;
  if (!qword_1003D2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2038);
  }

  return result;
}

uint64_t sub_1001D940C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v24[0] = 46;
  v24[1] = 0xE100000000000000;
  v23 = v24;
  v4 = sub_1001D95E4(3, 1, sub_1001060A4, v22, a1, a2);
  if (v4[2] == 3)
  {
    v20 = v4[5];
    v21 = v4[4];
    v5 = v4[7];
    v6 = v4[9];
    v18 = v4[8];
    v19 = v4[6];
    v8 = v4[10];
    v7 = v4[11];
    v9 = v4[12];
    v10 = v4[13];
    v12 = v4[14];
    v11 = v4[15];

    v15 = v18;
    v14 = v19;
    v17 = v20;
    v16 = v21;
  }

  else
  {

    v16 = 0;
    v17 = 0;
    v14 = 0;
    v5 = 0;
    v15 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  *a3 = v16;
  a3[1] = v17;
  a3[2] = v14;
  a3[3] = v5;
  a3[4] = v15;
  a3[5] = v6;
  a3[6] = v8;
  a3[7] = v7;
  a3[8] = v9;
  a3[9] = v10;
  a3[10] = v12;
  a3[11] = v11;
  return result;
}

uint64_t sub_1001D9544()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1001D95BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001D9544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1001D95E4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v41 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    String.subscript.getter();
    sub_1001DA8EC();
    sub_1001DA788();
    sub_1001D9C88();
    v15 = v27;
    v8 = *(v27 + 16);
    v28 = *(v27 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v28 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v29 = (v15 + 32 * v8);
      v29[4] = v6;
      v29[5] = v10;
      v29[6] = v11;
      v29[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1001DA788();
    sub_1001D9C88();
    v15 = v30;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v39 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v37 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v37;
        goto LABEL_30;
      }

      sub_1001DA8B8();
      v40[0] = String.subscript.getter();
      v40[1] = v17;
      v18 = v41(v40);
      if (v7)
      {

        return v15;
      }

      v11 = v18;

      if (v11)
      {
        break;
      }

      sub_1001DA8B8();
      v16 = String.index(after:)();
    }

    v20 = (v37 >> 14 == v12) & a2;
    if (v20)
    {
      goto LABEL_20;
    }

    if (v12 < v37 >> 14)
    {
      break;
    }

    v38 = String.subscript.getter();
    v33 = v22;
    v34 = v21;
    v32 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001DA788();
      sub_1001D9C88();
      v39 = v25;
    }

    v12 = v39[2];
    v11 = v12 + 1;
    if (v12 >= v39[3] >> 1)
    {
      sub_1001D9C88();
      v39 = v26;
    }

    v39[2] = v11;
    v24 = &v39[4 * v12];
    v24[4] = v38;
    v24[5] = v34;
    v24[6] = v33;
    v24[7] = v32;
LABEL_20:
    sub_1001DA8B8();
    v16 = String.index(after:)();
    if ((v20 & 1) == 0 && v39[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v39;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        String.subscript.getter();
        sub_1001DA8EC();
        v15 = v39;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v28 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1001DA788();
      sub_1001D9C88();
      v15 = v31;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1001D9A40()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&unk_1003CEE20);
      v6 = sub_1001DA944();
      sub_1001DA884(v6);
      sub_1001DA860(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100219228(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100080FB4(&qword_1003CC200);
    sub_1001DA840();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001D9B00()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&qword_1003D20A8);
      v6 = sub_1001DA944();
      sub_1001DA884(v6);
      sub_1001DA860(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100219228(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100080FB4(&unk_1003D1CC0);
    sub_1001DA840();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001D9BC0()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D0560, &unk_1002F6858);
  sub_1001DA8D4();
  type metadata accessor for URL();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B4C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001D9C88()
{
  sub_1001DA95C();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    goto LABEL_7;
  }

  sub_1001DA7B0();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(v0 + 16);
    if (v6 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_100080FB4(v4);
      v11 = sub_1001DA944();
      v12 = j__malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_1001DA970();
    goto LABEL_15;
  }

  sub_1001DA8A0();
  if (!v7)
  {
    sub_1001DA7A0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001D9D58()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D27E0, &unk_1002ED040);
  sub_1001DA8D4();
  type metadata accessor for URLQueryItem();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B34(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001D9E20()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D20B0, &unk_1002FAAC0);
  sub_1001DA8D4();
  type metadata accessor for LoadProductsTask();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B64(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001D9EE8()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&unk_1003D2720);
      v6 = sub_1001DA944();
      sub_1001DA884(v6);
      sub_1001DA860(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100212AD0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001D9FA8()
{
  sub_1001DA8AC();
  if ((v4 & 1) == 0 || (sub_1001DA7B0(), v5 == v6))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v3)
    {
      sub_100080FB4(&qword_1003CEDB8);
      v7 = sub_1001DA944();
      sub_1001DA884(v7);
      sub_1001DA860(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_1001DA7C0();
        sub_100212AD0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = &_swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v3 + 32, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v5)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DA060()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D2098, &unk_1002FAAA8);
  sub_1001DA8D4();
  type metadata accessor for PurchaseIntentInternal();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B7C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001DA128()
{
  sub_1001DA830();
  if (v4)
  {
    sub_1001DA800();
    if (v6 != v7)
    {
      sub_1001DA8E0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001DA7F0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001DA92C(v2, v5, &qword_1003D20A0, &unk_1002FAAB0);
  sub_1001DA8D4();
  type metadata accessor for LegacyTransactionInternal();
  sub_1000B9378();
  sub_1001DA8C8();
  if (v1)
  {
    v9 = sub_1001DA7E0(v8);
    sub_100212B94(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001DA810();
  }
}

void sub_1001DA1F0()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&qword_1003D20D0);
      v6 = sub_1001DA910();
      v7 = j__malloc_size(v6);
      sub_1001DA870(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100212BAC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100080FB4(&qword_1003D20D8);
    sub_1001DA840();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DA2E8()
{
  sub_1001DA95C();
  if ((v5 & 1) == 0)
  {
    v6 = v3;
    goto LABEL_7;
  }

  sub_1001DA7B0();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(v0 + 16);
    if (v6 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_100080FB4(v4);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_1001DA970();
    goto LABEL_15;
  }

  sub_1001DA8A0();
  if (!v7)
  {
    sub_1001DA7A0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001DA3C8()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&qword_1003D20C0);
      v6 = sub_1001DA910();
      v7 = j__malloc_size(v6);
      sub_1001DA870(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100212BAC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100080FB4(&qword_1003D20C8);
    sub_1001DA840();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DA490()
{
  sub_1001DA8AC();
  if ((v3 & 1) == 0 || (sub_1001DA7B0(), v4 == v5))
  {
LABEL_6:
    sub_1001DA7D0();
    if (v2)
    {
      sub_100080FB4(&unk_1003D20E0);
      v6 = sub_1001DA910();
      v7 = j__malloc_size(v6);
      sub_1001DA870(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1001DA7C0();
        sub_100212CCC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_1001DA8A0();
  if (!v4)
  {
    sub_1001DA7A0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1001DA558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100080FB4(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001DA654(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100080FB4(&unk_1003D28C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

uint64_t sub_1001DA6E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001DA720(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001DA810()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1001DA840()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1001DA870(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1001DA8EC()
{
}

uint64_t sub_1001DA910()
{

  return swift_allocObject();
}

void *sub_1001DA92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_1001DA558(v5, a2, a3, a4, v4);
}

uint64_t sub_1001DA944()
{

  return swift_allocObject();
}

uint64_t sub_1001DA970()
{

  return swift_arrayInitWithCopy();
}

double sub_1001DA990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1000B6328(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_10021A69C(v5);

    sub_100080F58(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1001DA9EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100212D38();
    if (v2)
    {
    }
  }

  return sub_1001073F0();
}

double sub_1001DAA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_100212CF4(a1), (v5 & 1) != 0))
  {
    v6 = sub_10021A69C(v4);

    sub_100080F58(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1001DAA9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_1000B6328(result, a2), (v6 & 1) != 0))
  {
    result = sub_100105C8C(*(a3 + 56) + 8 * result, a4, &unk_1003D2770);
    v7 = 0;
  }

  else
  {
    *a4 = 0;
    v7 = 1;
  }

  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1001DAB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000B6328(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DABAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (sub_1000B6328(a1, a2), (v7 & 1) != 0))
  {
    v8 = a4(0);
    sub_100098B7C();
    sub_10021A2F4();
    sub_100219094(v9, v10);
    v11 = a5;
    v12 = 0;
    v13 = 1;
    v14 = v8;
  }

  else
  {
    a4(0);
    sub_1000B0690();
  }

  return sub_100081DFC(v11, v12, v13, v14);
}

uint64_t sub_1001DAC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000B6328(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1001DACBC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (sub_100212D38(), (v4 & 1) != 0))
  {
    v5 = sub_10021A69C(v3);

    sub_100080F58(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001DAD28()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_100093DD0();
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}