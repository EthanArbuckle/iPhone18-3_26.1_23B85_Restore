double sub_100D3E62C()
{
  v1 = v0;
  if (*(v0 + 64) == 1)
  {
    sub_10000630C(v0 + 24, v9);
    v2 = 0.0;
  }

  else
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    sub_100020E58((v1 + 24), *(v1 + 48));
    v2 = (*(*(v3 + 32) + 8))(v4);
    sub_10000630C(v1 + 24, v9);
    v6 = v10;
    v5 = v11;
    sub_10002A948(v9, v10);
    (*(*(v5 + 32) + 16))(v6, 0.0);
  }

  v7 = sub_1005C3FB8();
  sub_100D3DB54(_swiftEmptyArrayStorage, v7, v9);

  sub_100005070(v9);
  return v2;
}

void *sub_100D3E738()
{
  v1 = v0;
  v2 = type metadata accessor for CRLRepAnimation();
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C4D90(v1, &v80);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005C4DC8(&v80);
  if (Strong)
  {
    sub_100D3F330(v1, v4);
    v4[64] = 1;
    sub_10000630C((v4 + 24), &v80);
    v6 = sub_1005C3FB8();
    v7 = sub_100D3DB54(_swiftEmptyArrayStorage, v6, &v80);
    *&v54 = 0;

    sub_100005070(&v80);
    sub_100D3F394(v4);

    v8 = [Strong allPlatformViews];
    sub_100006370(0, &qword_1019F6D00);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v80 = _swiftEmptyArrayStorage;
    v53 = v1;
    *&v56 = v7;
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_52:
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v55 = _swiftEmptyArrayStorage;
    while (v11 != v12)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_48;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v16 = [v13 layer];

      ++v12;
      if (v16)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v55 = v80;
        v12 = v15;
      }
    }

    v17 = v56;
    v18 = *(v56 + 16);

    v55 = v18;
    if (v18)
    {
      v51 = Strong;
      v19 = 0;
      v10 = 32;
      Strong = v53;
      while (1)
      {
        if (v19 >= v17[2])
        {
          goto LABEL_49;
        }

        sub_10000630C(v17 + v10, v92);
        v20 = Strong[6];
        v21 = Strong[7];
        sub_100020E58(Strong + 3, v20);
        (*(v21 + 56))(&v80, v20, v21);
        if (v91 == 74)
        {
          *&v56 = v17;
          v22 = v80;
          v23 = v81;
          v24 = v82;
          v25 = *(&v82 + 1);
          v26 = v83;
          v27 = *(&v82 + 1);
          if (!*(&v82 + 1))
          {
            v52 = v81;
            v54 = v80;
            sub_1005C4D90(v53, &v80);
            v27 = swift_unknownObjectWeakLoadStrong();
            sub_1005C4DC8(&v80);
            if (v27)
            {
              v28 = [v27 renderableForRep:v51];

              if (v28)
              {
                v27 = [v28 layer];
              }

              else
              {
                v27 = 0;
              }
            }

            v22 = v54;
            v23 = v52;
          }

          if (v26 == 2)
          {
            v40 = 0;
          }

          else
          {
            v40 = v26;
          }

          v80 = v22;
          v81 = v23;
          LOBYTE(v82) = v24;
          *(&v82 + 1) = v27;
          LOBYTE(v83) = v40;
          v91 = 74;
          v41 = v93;
          v42 = v94;
          sub_10002A948(v92, v93);
          v43 = *(v42 + 104);
          *&v54 = v27;
          v44 = v25;
          v45 = v43(v58, v41, v42);
          v47 = *(v46 + 24);
          v9 = *(v46 + 32);
          sub_10002A948(v46, v47);
          (*(v9 + 64))(&v80, v47, v9);
          v45(v58, 0);

          Strong = v53;
          v17 = v56;
        }

        else
        {
          sub_100687CF4(&v80);
          v29 = Strong[6];
          v30 = Strong[7];
          sub_100020E58(Strong + 3, v29);
          (*(v30 + 56))(&v80, v29, v30);
          if (v91 == 75)
          {
            v54 = v81;
            v56 = v80;
            v78[6] = v88;
            v78[7] = v89;
            v79 = v90;
            v78[2] = v84;
            v78[3] = v85;
            v78[4] = v86;
            v78[5] = v87;
            v78[0] = v82;
            v78[1] = v83;
            if (sub_1006A42F0(v78) != 1 || (v31 = v93, v32 = v94, sub_100020E58(v92, v93), (v33 = (*(v32 + 64))(v31, v32)) == 0))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_10113CE44(v17);
              }

              if (v19 >= v17[2])
              {
                goto LABEL_51;
              }

              goto LABEL_17;
            }

            v34 = v33;
            [v33 transform];
            v73 = v65;
            v74 = v66;
            v75 = v67;
            v76 = v68;
            v69 = v61;
            v70 = v62;
            v71 = v63;
            v72 = v64;
            sub_100D3F3F0(&v69);
            v58[8] = v75;
            v58[9] = v76;
            v59 = v77;
            v58[4] = v71;
            v58[5] = v72;
            v58[6] = v73;
            v58[7] = v74;
            v58[2] = v69;
            v58[3] = v70;
            v58[1] = v54;
            v58[0] = v56;
            v60 = 75;
            v35 = v93;
            v36 = v94;
            sub_10002A948(v92, v93);
            v37 = (*(v36 + 104))(v57, v35, v36);
            v9 = *(v38 + 24);
            v39 = *(v38 + 32);
            sub_10002A948(v38, v9);
            (*(v39 + 64))(v58, v9, v39);
            v37(v57, 0);
          }

          else
          {
            sub_100687CF4(&v80);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10113CE44(v17);
        }

        if (v19 >= v17[2])
        {
          goto LABEL_50;
        }

LABEL_17:
        sub_100774FCC((v17 + v10), v92);
        v19 = (v19 + 1);
        sub_100005070(v92);
        v10 += 40;
        if (v55 == v19)
        {

          return v17;
        }
      }
    }
  }

  else
  {
    sub_100CCF5B0(_swiftEmptyArrayStorage, 0.0);
    return v48;
  }

  return v17;
}

uint64_t sub_100D3EE5C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F57A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = v0[6];
  v9 = v0[7];
  sub_100020E58(v0 + 3, v8);
  if ((*(v9 + 184))(v8, v9))
  {
    return 1;
  }

  v11 = type metadata accessor for CRLRepAnimation();
  sub_100D3F4BC(v1 + *(v11 + 28), v7);
  v12 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v13 = *(*(v12 - 8) + 48);
  v10 = 1;
  v14 = v13(v7, 1, v12);
  sub_10000CAAC(v7, &qword_1019F57A8);
  if (v14 == 1)
  {
    sub_100D3F4BC(v1 + *(v11 + 32), v4);
    v10 = v13(v4, 1, v12) != 1;
    sub_10000CAAC(v4, &qword_1019F57A8);
  }

  return v10;
}

uint64_t sub_100D3F048()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    sub_100020E58((v0 + 24), v1);
    return (*(*(v2 + 32) + 8))(v1);
  }

  return result;
}

uint64_t sub_100D3F0AC(double a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_10002A948(v1 + 24, v3);
  return (*(*(v4 + 32) + 16))(v3, a1);
}

uint64_t (*sub_100D3F110(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  v3 = 0.0;
  if ((*(v1 + 64) & 1) == 0)
  {
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    sub_100020E58((v1 + 24), v4);
    v3 = (*(*(v5 + 32) + 8))(v4);
  }

  *a1 = v3;
  return sub_100D3F198;
}

uint64_t sub_100D3F198(double *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_10002A948(v1 + 24, v3);
  return (*(*(v4 + 32) + 16))(v3, v2);
}

uint64_t sub_100D3F1F8()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_100020E58(v0 + 3, v1);
  return (*(*(v2 + 32) + 32))(v1);
}

double sub_100D3F24C()
{
  v1 = v0;
  v3 = v0[6];
  v2 = v0[7];
  sub_100020E58(v1 + 3, v3);
  v4 = (*(*(v2 + 32) + 8))(v3);
  v6 = v1[6];
  v5 = v1[7];
  sub_100020E58(v1 + 3, v6);
  return v4 + (*(*(v5 + 32) + 32))(v6);
}

uint64_t type metadata accessor for CRLRepAnimation()
{
  result = qword_101A1CD58;
  if (!qword_101A1CD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D3F330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLRepAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D3F394(uint64_t a1)
{
  v2 = type metadata accessor for CRLRepAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100D3F420()
{
  sub_100687698();
  if (v0 <= 0x3F)
  {
    sub_1005F8CFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100D3F4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F57A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D3F530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100D3F578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100D3F5D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD00000000000001DLL;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001CLL;
    }

    v5 = 0xD00000000000001ELL;
    if (a1)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73697370696C6C65;
    if (a1 == 7)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 == 6)
    {
      v1 = 0xD00000000000001FLL;
    }

    v2 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100D3F704()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

unint64_t sub_100D3FA68(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C63726963;
    v6 = 0x656C676E61697274;
    if (a1 != 2)
    {
      v6 = 0x6E6F67796C6F70;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
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
    v1 = 0xD000000000000011;
    v2 = 0x6C656C6C61726170;
    if (a1 != 7)
    {
      v2 = 0x726568746FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657261757173;
    if (a1 != 4)
    {
      v3 = 0x646E6F6D616964;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id sub_100D3FB8C(unsigned __int8 a1, double a2, double a3)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        return [objc_opt_self() pathSourceForShapeType:6 naturalSize:{a2, a3}];
      }

      else
      {
        return [objc_opt_self() pathSourceWithType:1 scalar:5.0 naturalSize:{a2, a3}];
      }
    }

    else if (a1)
    {
      return [objc_opt_self() pathSourceForShapeType:5 naturalSize:{a2, a3}];
    }

    else
    {
      return [objc_allocWithZone(CRLScalarPathSource) initWithType:0 scalar:1 naturalSize:(a2 + a3) * 0.075 continuousCurve:{a2, a3}];
    }
  }

  else
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        sub_100006370(0, &qword_1019FF3E0);
        v3.super.super.isa = NSNumber.init(integerLiteral:)(982).super.super.isa;
        v7 = [objc_opt_self() sharedLibrary];
        v5 = [v7 shapeWithID:v3.super.super.isa];

        if (v5)
        {
LABEL_15:
          v8 = [v5 bezierPathString];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v9 = String.utf8CString.getter();

          v10 = [objc_allocWithZone(CRLBezierPath) initWithCString:v9 + 32];

          if (v10)
          {
            v11 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:v10];

            return v11;
          }

          return 0;
        }

        v12 = objc_opt_self();
        v13 = [v12 _atomicIncrementAssertCount];
        v55[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v55);
        StaticString.description.getter();
        v14 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v15 = String._bridgeToObjectiveC()();

        v16 = [v15 lastPathComponent];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v20 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v13;
        v22 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v22;
        v23 = sub_1005CF04C();
        *(inited + 104) = v23;
        *(inited + 72) = v14;
        *(inited + 136) = &type metadata for String;
        v24 = sub_1000053B0();
        *(inited + 112) = v17;
        *(inited + 120) = v19;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v24;
        *(inited + 152) = 108;
        v25 = v55[0];
        *(inited + 216) = v22;
        *(inited + 224) = v23;
        *(inited + 192) = v25;
        v26 = v14;
        v27 = v25;
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v29 = static os_log_type_t.error.getter();
        sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v30 = swift_allocObject();
        v30[2] = 8;
        v30[3] = 0;
        v30[4] = 0;
        v30[5] = 0;
        v31 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v12 handleFailureInFunction:v32 file:v33 lineNumber:108 isFatal:0 format:v34 args:v31];
      }

      else
      {
        if (a1 != 7)
        {
          return 0;
        }

        sub_100006370(0, &qword_1019FF3E0);
        v3.super.super.isa = NSNumber.init(integerLiteral:)(950).super.super.isa;
        v4 = [objc_opt_self() sharedLibrary];
        v5 = [v4 shapeWithID:v3.super.super.isa];

        if (v5)
        {
          goto LABEL_15;
        }

        v35 = objc_opt_self();
        v36 = [v35 _atomicIncrementAssertCount];
        v55[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v55);
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
        sub_1005B981C(&qword_1019F54E0);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_10146CA70;
        *(v44 + 56) = &type metadata for Int32;
        *(v44 + 64) = &protocol witness table for Int32;
        *(v44 + 32) = v36;
        v45 = sub_100006370(0, &qword_1019F4D30);
        *(v44 + 96) = v45;
        v46 = sub_1005CF04C();
        *(v44 + 104) = v46;
        *(v44 + 72) = v37;
        *(v44 + 136) = &type metadata for String;
        v47 = sub_1000053B0();
        *(v44 + 112) = v40;
        *(v44 + 120) = v42;
        *(v44 + 176) = &type metadata for UInt;
        *(v44 + 184) = &protocol witness table for UInt;
        *(v44 + 144) = v47;
        *(v44 + 152) = 116;
        v48 = v55[0];
        *(v44 + 216) = v45;
        *(v44 + 224) = v46;
        *(v44 + 192) = v48;
        v49 = v37;
        v50 = v48;
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v52 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v52, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v53 = swift_allocObject();
        v53[2] = 8;
        v53[3] = 0;
        v53[4] = 0;
        v53[5] = 0;
        v54 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v33 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v35 handleFailureInFunction:v32 file:v33 lineNumber:116 isFatal:0 format:v34 args:v54];
      }

      return 0;
    }

    if (a1 == 4)
    {
      return [objc_opt_self() pathSourceForShapeType:3 naturalSize:{a2, a3}];
    }

    else
    {
      return [objc_opt_self() pathSourceForShapeType:10 naturalSize:{a2, a3}];
    }
  }
}

uint64_t sub_100D40590(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 13;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 10;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (!a1)
    {
      return 4;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 6;
      }

      return 0;
    }

    return 5;
  }
}

char *sub_100D407C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems] = 0;
  *&v13[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController] = 0;
  v14 = sub_100FBD5E4(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v14;
}

char *sub_100D40888(char a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = &v4[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize];
  *v9 = 0.0;
  v9[1] = 0.0;
  v4[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator] = 0;
  v10 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  *&v4[v10] = sub_100BD7F38(_swiftEmptyArrayStorage);
  if (a3 != 0.0 && a4 != 0.0)
  {
    v51 = a2;
    v50 = objc_opt_self();
    v11 = [v50 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 110;
    v23 = v56[0];
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "One dimension of defaultSize should be 0 to indicate autosizing.", 64, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v30 file:v31 lineNumber:110 isFatal:0 format:v32 args:v29];

    a2 = v51;
  }

  type metadata accessor for CRLiOSAutoSizingHostingController.HostProxy(0);
  swift_allocObject();
  v33 = sub_100FB89DC();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v56[0]) = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v56[0] = *&a3;
  v56[1] = *&a4;

  static Published.subscript.setter();
  *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostProxy] = v33;
  sub_100D42E84(&qword_101A1CE28, type metadata accessor for CRLiOSAutoSizingHostingController.HostProxy);
  swift_retain_n();
  v34 = ObservedObject.init(wrappedValue:)();
  v36 = v35;
  sub_100C537F4(a2, v56);
  v56[8] = v34;
  v56[9] = v36;
  v57 = 0;
  sub_10000BE14(v56, v55, &qword_101A1CE30);
  v37 = objc_allocWithZone(sub_1005B981C(&qword_101A1CE38));
  *&v37[*((swift_isaMask & *v37) + qword_101A25C40 + 16)] = 0;
  sub_10000BE14(v55, v54, &qword_101A1CE30);
  v38 = UIHostingController.init(rootView:)();
  sub_10000CAAC(v55, &qword_101A1CE30);
  *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController] = v38;
  v39 = &v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_defaultSize];
  *v39 = a3;
  v39[1] = a4;
  *v9 = a3;
  v9[1] = a4;
  sub_100C537F4(a2, v55);
  v40 = swift_allocObject();
  v41 = v55[1];
  *(v40 + 1) = v55[0];
  *(v40 + 2) = v41;
  v42 = v55[3];
  *(v40 + 3) = v55[2];
  *(v40 + 4) = v42;
  v43 = &v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_calculatePreliminaryFittingSize];
  *v43 = sub_100D42ECC;
  v43[1] = v40;
  v44 = [objc_allocWithZone(UIScrollView) init];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAlwaysBounceHorizontal:0];
  [v44 setAlwaysBounceVertical:0];
  if (a1 == 2)
  {
    v45 = a4 == 0.0;
  }

  else
  {
    v45 = a1;
  }

  if (a1 == 2)
  {
    v46 = a3 == 0.0;
  }

  else
  {
    v46 = a1;
  }

  [v44 setShowsVerticalScrollIndicator:v45];
  [v44 setShowsHorizontalScrollIndicator:v46];
  *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollView] = v44;
  v53.receiver = v5;
  v53.super_class = type metadata accessor for CRLiOSAutoSizingHostingController();
  v47 = v44;
  v48 = objc_msgSendSuper2(&v53, "initWithNibName:bundle:", 0, 0);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  swift_unknownObjectWeakAssign();

  [v48 setPreferredContentSize:{*&v48[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize], *&v48[OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize + 8]}];

  sub_100D42E30(a2);
  sub_10000CAAC(v56, &qword_101A1CE30);
  return v48;
}

void sub_100D410E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController);
  if (v3)
  {
    v4 = [v3 changeNotifier];
    if (v4)
    {
      v5 = v4;
      if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems))
      {

        v7 = sub_100BC17C8(v6);

        v8 = [v7 parentContainerItem];
      }

      else
      {
        v8 = 0;
      }

      v30 = v8;
      sub_1005B981C(&unk_101A1CE10);
      v9 = Optional._bridgeToObjectiveC()();

      [v5 addObserver:v1 forChangeSource:v9];
      swift_unknownObjectRelease();
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems);
  if (!v10)
  {
    v16 = 0;
    v17 = *(v1 + v2);
    if (!v17)
    {
LABEL_32:

      return;
    }

LABEL_30:
    v26 = [v17 changeNotifier];
    if (v26)
    {
      v27 = v26;
      sub_1005B981C(&qword_101A1CE08);
      [v27 addObserver:v1 forChangeSource:Optional._bridgeToObjectiveC()()];

      swift_unknownObjectRelease();
    }

    goto LABEL_32;
  }

  v28 = v2;
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100D42E84(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    v12 = v30;
    v11 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
  }

  else
  {
    v18 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v15 = v20 & *(v10 + 56);
    swift_bridgeObjectRetain_n();
    v14 = 0;
    v12 = v10;
  }

  v21 = (v13 + 64) >> 6;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v22 = v14;
  v23 = v15;
  v24 = v14;
  if (v15)
  {
LABEL_21:
    v25 = (v23 - 1) & v23;
    v16 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (v16)
    {
      do
      {
        type metadata accessor for CRLConnectionLineItem();
        if (swift_dynamicCastClass())
        {
          break;
        }

        v14 = v24;
        v15 = v25;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_23:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_28;
        }

        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v16 = v29;
        v24 = v14;
        v25 = v15;
      }

      while (v29);
    }

LABEL_29:
    sub_100035F90();

    v17 = *(v1 + v28);
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
LABEL_28:
      v16 = 0;
      goto LABEL_29;
    }

    v23 = *(v11 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_100D41460(char a1)
{
  v2 = v1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for CRLiOSMiniShapePickerHostingController();
  objc_msgSendSuper2(&v37, "viewDidDisappear:", a1 & 1);
  v4 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController;
  v5 = *&v2[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController];
  if (v5)
  {
    [v5 removeDecorator:v2];
    v6 = *&v2[v4];
    if (v6)
    {
      v7 = [v6 changeNotifier];
      if (v7)
      {
        v8 = v7;
        if (*&v2[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems])
        {

          v10 = sub_100BC17C8(v9);

          v11 = [v10 parentContainerItem];
        }

        else
        {
          v11 = 0;
        }

        v38 = v11;
        sub_1005B981C(&unk_101A1CE10);
        v12 = Optional._bridgeToObjectiveC()();

        [v8 removeObserver:v2 forChangeSource:v12];
        swift_unknownObjectRelease();
      }
    }
  }

  v13 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems;
  v14 = *&v2[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems];
  if (!v14)
  {
    v20 = 0;
    v21 = *&v2[v4];
    if (!v21)
    {
LABEL_33:

      *&v2[v13] = 0;

      v32 = *&v2[v4];
      *&v2[v4] = 0;

      return;
    }

LABEL_31:
    v30 = [v21 changeNotifier];
    if (v30)
    {
      v31 = v30;
      sub_1005B981C(&qword_101A1CE08);
      [v31 removeObserver:v2 forChangeSource:Optional._bridgeToObjectiveC()()];

      swift_unknownObjectRelease();
    }

    goto LABEL_33;
  }

  v34 = OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems;
  v35 = v4;
  if ((v14 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100D42E84(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    v16 = v38;
    v15 = v39;
    v17 = v40;
    v18 = v41;
    v19 = v42;
  }

  else
  {
    v22 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v17 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v19 = v24 & *(v14 + 56);
    swift_bridgeObjectRetain_n();
    v18 = 0;
    v16 = v14;
  }

  v33 = v17;
  v25 = (v17 + 64) >> 6;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v26 = v18;
  v27 = v19;
  v28 = v18;
  if (v19)
  {
LABEL_22:
    v29 = (v27 - 1) & v27;
    v20 = *(*(v16 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (v20)
    {
      do
      {
        type metadata accessor for CRLConnectionLineItem();
        if (swift_dynamicCastClass())
        {
          break;
        }

        v18 = v28;
        v19 = v29;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_24:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_29;
        }

        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v20 = v36;
        v28 = v18;
        v29 = v19;
      }

      while (v36);
    }

LABEL_30:
    sub_100035F90();

    v13 = v34;
    v4 = v35;
    v21 = *&v2[v35];
    if (!v21)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
LABEL_29:
      v20 = 0;
      goto LABEL_30;
    }

    v27 = *(v15 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_100D41884(unint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController);
  if (!v4)
  {
    return;
  }

  v6 = [v4 layerHost];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ([v6 respondsToSelector:"shapeLibraryPopoverController"])
  {
    v34 = [v7 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    v8 = sub_100C00BA8();
    if (!v8)
    {
LABEL_8:
      v11 = v34;
LABEL_13:

      return;
    }

    v35 = v8;
    type metadata accessor for CRLiOSMiniShapePickerHostingController();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {

      v11 = v35;
      goto LABEL_13;
    }

    v10 = v9;
    if ([v9 isBeingDismissed])
    {

      goto LABEL_8;
    }

    sub_100064288(a2, &v37);
    type metadata accessor for CRLContainerItem(0);
    if (swift_dynamicCast())
    {
      v12 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
      v13 = *&v36[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
      if (!v13)
      {
        sub_10096C7D4();
        v13 = *&v36[v12];
      }

      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
      }

      if (*(v2 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems))
      {

        v16 = sub_100D42B68(v15, v14);

        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = __CocoaSet.count.getter();
        }

        else
        {
          v17 = *(v16 + 16);
        }

        if (v17)
        {
          [v10 dismissViewControllerAnimated:1 completion:0];

          v18 = v35;
LABEL_47:

          return;
        }
      }

      else
      {
      }
    }

    sub_100064288(a2, &v37);
    type metadata accessor for CRLConnectionLineItem();
    if (swift_dynamicCast())
    {

      if (a1 >> 62)
      {
        goto LABEL_51;
      }

      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v35; v19; i = v35)
      {
        v21 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v22 = *(a1 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          v25 = OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details;
          v26 = *&v22[OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details];
          v27 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
          swift_beginAccess();
          v28 = *(v26 + v27);
          if (*(v28 + 16) && (v29 = sub_1007CF108(), (v30 & 1) != 0) || (v37 = 0, v38 = 0, v39 = 0, v40 = 1, sub_10000CAAC(&v37, &unk_1019F4D50), v31 = *&v23[v25], v32 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data, swift_beginAccess(), v28 = *(v31 + v32), *(v28 + 16)) && (v29 = sub_1007CF108(), (v33 & 1) != 0))
          {
            sub_10000BE14(*(v28 + 56) + 32 * v29, &v37, &unk_1019F4D00);
            sub_10000CAAC(&v37, &unk_1019F4D50);
            [v10 dismissViewControllerAnimated:1 completion:0];
          }

          else
          {

            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 1;
            sub_10000CAAC(&v37, &unk_1019F4D50);
          }

          ++v21;
          i = v35;
          if (v24 == v19)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }
    }

    else
    {
      i = v35;
    }

LABEL_46:

    v18 = v34;
    goto LABEL_47;
  }

  swift_unknownObjectRelease();
}

void sub_100D41DD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController);
  if (v1)
  {
    v2 = [v1 layerHost];
    if (v2)
    {
      v3 = v2;
      if ([v2 respondsToSelector:"shapeLibraryPopoverController"])
      {
        v4 = [v3 shapeLibraryPopoverController];
        swift_unknownObjectRelease();
        sub_100C00ED4();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_100D41EF8()
{

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController);
}

id sub_100D41F50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100D41FF8(uint64_t a1)
{
  sub_100C537F4(a1, &v6);
  v1 = objc_allocWithZone(sub_1005B981C(&unk_101A1CE40));
  v2 = UIHostingController.init(rootView:)();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v4 = v3;

  return v4;
}

unint64_t *sub_100D4207C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100D42700(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

char *sub_100D4216C(void *a1, void *a2, double a3, double a4)
{
  v38[3] = sub_100006370(0, &qword_101A1CE20);
  v38[4] = &off_1018A3598;
  v38[0] = a1;
  v8 = a1;
  v9 = [a2 interactiveCanvasController];
  if (v9)
  {
    v10 = [a2 anyConnectionLine];
    v11 = [v10 connectionLineInfo];

    if (v11)
    {
      v12 = [v9 layoutForInfo:v11];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = [v14 connectedFrom];
          if (v15)
          {
            v16 = v15;
            if ([v15 info])
            {
              type metadata accessor for CRLBoardItem(0);
              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                [v9 convertUnscaledToBoundsPoint:{a3, a4}];
                v20 = v19;
                v22 = v21;
                sub_10000630C(v38, v34);
                v37 = &off_101873048;
                v35 = a3;
                v36 = a4;
                sub_1005B981C(&unk_1019F4D60);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10146CE00;
                *(inited + 32) = v11;
                *(inited + 40) = v18;
                swift_unknownObjectRetain();
                v24 = v11;
                sub_1005BC5DC(inited);
                v26 = v25;
                swift_setDeallocating();
                swift_arrayDestroy();
                sub_100C537F4(v34, v33);
                v27 = v9;
                v28 = sub_100D42514(v27, v26, v33);

                v9 = v28;
                [v9 setPreferredContentSize:{184.0, 184.0}];
                [v9 setModalPresentationStyle:7];
                v29 = [v9 popoverPresentationController];
                if (v29)
                {
                  v30 = v29;
                  [v29 setSourceRect:{v20, v22, 1.0, 1.0}];
                  v31 = v9;
                  [v30 setDelegate:v31];

                  swift_unknownObjectRelease();
                  sub_100D42E30(v34);
                  goto LABEL_13;
                }

                sub_100D42E30(v34);

                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }
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
        }

LABEL_12:
        v9 = 0;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_100005070(v38);
  return v9;
}

char *sub_100D42514(void *a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  v15[0] = *a3;
  v15[1] = v5;
  v6 = a3[3];
  v15[2] = a3[2];
  v15[3] = v6;
  sub_100C537F4(v15, v14);
  v7 = objc_allocWithZone(type metadata accessor for CRLiOSMiniShapePickerHostingController());
  *&v7[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems] = 0;
  *&v7[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController] = 0;
  sub_100C537F4(v14, v13);
  v8 = sub_100D40888(0, v13, 0.0, 0.0);
  sub_100D42E30(v14);
  *&v8[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems] = a2;
  v9 = v8;

  v10 = *&v9[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController];
  *&v9[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController] = a1;
  v11 = a1;

  sub_100D410E0();
  sub_100D42E30(v15);
  return v9;
}

void sub_100D42600(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = [a1 interactiveCanvasController];
  if (!v1)
  {
    return;
  }

  v6 = v1;
  v2 = [v1 layerHost];
  if (!v2)
  {
    v4 = v6;
    goto LABEL_8;
  }

  v3 = v2;
  if ([v2 respondsToSelector:"shapeLibraryPopoverController"])
  {
    v5 = [v3 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    sub_100C00ED4();

    v4 = v5;
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_100D42700(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    __chkstk_darwin(a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_100C33540(sub_100D42FA4, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_1010F47D4(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100D428A8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = &v26;
    v27 = v5;
    __chkstk_darwin(v7);
    v28 = &v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v32 = *(*(v30 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v26 - 2) = &v32;
      v19 = v18;
      v20 = sub_100C33540(sub_100D42FA4, (&v26 - 4), v31);

      if ((v20 & 1) == 0)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1010F47D4(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_100D4207C(v24, v5, v2, v25);

LABEL_17:

  return v22;
}

Swift::Int sub_100D42B68(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100D428A8(a1, a2);
  }

  v3 = _swiftEmptySetSingleton;
  v24 = _swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v4 = __CocoaSet.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CRLBoardItem(0);
    v6 = v5;
    do
    {
      v22 = v6;
      v7 = swift_dynamicCast();
      v22 = v23;
      __chkstk_darwin(v7);
      v21[2] = &v22;
      v8 = sub_100C33540(sub_100D42DBC, v21, a2);
      v9 = v23;
      if (v8)
      {
      }

      else
      {
        v10 = v3[2];
        if (v3[3] <= v10)
        {
          sub_100E75360(v10 + 1);
        }

        v3 = v24;
        result = NSObject._rawHashValue(seed:)(v24[5]);
        v12 = v3 + 7;
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~v3[(v14 >> 6) + 7]) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~v3[(v14 >> 6) + 7])) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = v12[v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(v3[6] + 8 * v16) = v9;
        ++v3[2];
      }

      v6 = __CocoaSet.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_100D42E84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100D42EE8()
{
  result = qword_101A1CE50;
  if (!qword_101A1CE50)
  {
    sub_1005C4E5C(&qword_101A1CE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1CE50);
  }

  return result;
}

unint64_t sub_100D42F50()
{
  result = qword_101A1CE60;
  if (!qword_101A1CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1CE60);
  }

  return result;
}

uint64_t sub_100D42FC0()
{
  v0 = type metadata accessor for URLResourceValues();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  sub_1005B981C(&qword_101A00280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSURLContentTypeKey;
  v14 = NSURLContentTypeKey;
  sub_1005BC3E8(inited);
  swift_setDeallocating();
  sub_1007B00E4(inited + 32);
  URL.resourceValues(forKeys:)();
  v24 = v9;

  URLResourceValues.contentType.getter();
  (*(v25 + 8))(v2, v26);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100BAD934(v5);
LABEL_3:
    v15 = 0;
    return v15 & 1;
  }

  v17 = v12;
  (*(v7 + 32))(v12, v5, v6);
  URL.pathExtension.getter();
  v18 = String.lowercased()();

  if (v18._countAndFlagsBits == 7368801 && v18._object == 0xE300000000000000)
  {

LABEL_9:
    (*(v7 + 8))(v12, v6);
    goto LABEL_3;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_9;
  }

  v20 = v24;
  static UTType.bundle.getter();
  v21 = UTType.conforms(to:)();
  v22 = *(v7 + 8);
  v22(v20, v6);
  if (v21)
  {
    v22(v17, v6);
    v15 = 1;
  }

  else
  {
    static UTType.package.getter();
    v15 = UTType.conforms(to:)();
    v22(v20, v6);
    v22(v17, v6);
  }

  return v15 & 1;
}

unint64_t sub_100D433D8()
{
  result = qword_101A1CE70;
  if (!qword_101A1CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1CE70);
  }

  return result;
}

char *sub_100D43534(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_hostingController] = 0;
  v44 = OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printScenesSummaryMessage;
  v4 = &v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printScenesSummaryMessage];
  v43 = objc_opt_self();
  v5 = [v43 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *v4 = v9;
  v4[1] = v11;
  v12 = OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printBoardSummaryMessage;
  v13 = &v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printBoardSummaryMessage];
  v14 = [v43 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v13 = v18;
  v13[1] = v20;
  *&v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo] = a1;
  *&v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printRenderer] = a2;
  v47 = a1;
  v46 = a2;
  v21 = sub_1008BCCEC();
  v22 = v44;
  if ((v21 & 1) == 0)
  {
    v22 = v12;
  }

  v23 = *&v2[v22];

  v25 = &v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_summary];
  *v25 = v23;
  *(v25 + 1) = v24;
  v48.receiver = v2;
  v48.super_class = type metadata accessor for CRLiOSPrintOptionsViewController();
  v26 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  sub_1008BCCEC();
  sub_1008BCE2C();
  v27 = [v43 mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = [v43 mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();

  v35 = objc_allocWithZone(sub_1005B981C(&qword_101A1CFE8));
  v36 = UIHostingController.init(rootView:)();
  v37 = *&v26[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_hostingController];
  *&v26[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_hostingController] = v36;

  v38 = [v43 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = String._bridgeToObjectiveC()();
  }

  [v26 setTitle:v41];

  return v26;
}

void sub_100D43A78()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v41.receiver = v0;
  v41.super_class = type metadata accessor for CRLiOSPrintOptionsViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v3 = *&v0[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_hostingController];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

      static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
      dispatch thunk of UIHostingController.sizingOptions.setter();
      [v1 addChildViewController:v4];
      [v4 didMoveToParentViewController:v1];
      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v4 view];
        if (v9)
        {
          v10 = v9;
          [v8 addSubview:v9];

          sub_1005B981C(&unk_1019F4D60);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_10146E8B0;
          v12 = [v4 view];
          if (v12)
          {
            v13 = v12;
            v14 = [v12 topAnchor];

            v15 = [v1 view];
            if (v15)
            {
              v16 = v15;
              v17 = [v15 topAnchor];

              v18 = [v14 constraintEqualToAnchor:v17];
              *(v11 + 32) = v18;
              v19 = [v4 view];
              if (v19)
              {
                v20 = v19;
                v21 = [v19 leadingAnchor];

                v22 = [v1 view];
                if (v22)
                {
                  v23 = v22;
                  v24 = [v22 leadingAnchor];

                  v25 = [v21 constraintEqualToAnchor:v24];
                  *(v11 + 40) = v25;
                  v26 = [v4 view];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = [v26 trailingAnchor];

                    v29 = [v1 view];
                    if (v29)
                    {
                      v30 = v29;
                      v31 = [v29 trailingAnchor];

                      v32 = [v28 constraintEqualToAnchor:v31];
                      *(v11 + 48) = v32;
                      v33 = [v4 view];

                      if (v33)
                      {
                        v34 = [v33 bottomAnchor];

                        v35 = [v1 view];
                        if (v35)
                        {
                          v36 = v35;
                          v37 = objc_opt_self();
                          v38 = [v36 bottomAnchor];

                          v39 = [v34 constraintEqualToAnchor:v38];
                          *(v11 + 56) = v39;
                          sub_100078784();
                          isa = Array._bridgeToObjectiveC()().super.isa;

                          [v37 activateConstraints:isa];

                          return;
                        }

LABEL_25:
                        __break(1u);
                        return;
                      }

LABEL_24:
                      __break(1u);
                      goto LABEL_25;
                    }

LABEL_23:
                    __break(1u);
                    goto LABEL_24;
                  }

LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_100D43F3C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo;
  v5 = *&v1[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo];
  sub_1008BAC04(a1);

  v6 = OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printRenderer;
  v7 = *&v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printRenderer];
  v7[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenes] = a1;
  v8 = &v7[OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter];
  swift_beginAccess();
  v8[49] = a1;
  v9 = v7;
  [v9 paperRect];
  isa = CGRect._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v9 setValue:isa forKey:v11];

  v12 = CGRect._bridgeToObjectiveC()().super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v9 setValue:v12 forKey:v13];

  if (sub_1008BCCEC())
  {
    v14 = *&v2[v6];
    v15 = *&v2[v4];
    v16 = v14;
    v17 = sub_100B7F840();

    [v15 setOrientation:v17];
  }

  v18 = String._bridgeToObjectiveC()();
  [v2 willChangeValueForKey:v18];

  v19 = &OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printScenesSummaryMessage;
  if ((a1 & 1) == 0)
  {
    v19 = &OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printBoardSummaryMessage;
  }

  v20 = *&v2[*v19];

  v22 = &v2[OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_summary];
  *v22 = v20;
  *(v22 + 1) = v21;

  v23 = String._bridgeToObjectiveC()();
  [v2 didChangeValueForKey:v23];

  v24 = [objc_opt_self() defaultCenter];
  v25 = String._bridgeToObjectiveC()();
  [v24 postNotificationName:v25 object:v2];
}

void sub_100D44210(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo;
  v5 = *(v1 + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printInfo);
  sub_1008BC2B0(a1);

  v6 = OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printRenderer;
  v7 = *(v2 + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printRenderer);
  *(v7 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenesUsingDeviceSize) = a1;
  v8 = v7 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter;
  swift_beginAccess();
  *(v8 + 50) = a1;
  if (sub_1008BCCEC())
  {
    v9 = *(v2 + v6);
    v10 = *(v2 + v4);
    v11 = v9;
    v12 = sub_100B7F840();

    [v10 setOrientation:v12];
  }

  v13 = [objc_opt_self() defaultCenter];
  v14 = String._bridgeToObjectiveC()();
  [v13 postNotificationName:v14 object:v2];
}

id sub_100D44384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPrintOptionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D44474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100D444BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100D44538@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1005B981C(&qword_101A1CF48);
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = v43 - v5;
  v6 = sub_1005B981C(&qword_101A1CF50);
  __chkstk_darwin(v6 - 8);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v11 = sub_1005B981C(&qword_101A1CF58);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v43 - v15;
  v50 = a1;
  v17 = sub_1005B981C(&qword_101A1CF60);
  sub_10001A2F8(&qword_101A1CF68, &qword_101A1CF60);
  v45 = v16;
  v43[1] = v17;
  Section<>.init(content:)();
  v18 = *(a1 + 8);
  LOBYTE(v51) = *a1;
  v52 = v18;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.getter();
  if (v55 == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    v20 = *(a1 + 24);
    LOBYTE(v51) = *(a1 + 16);
    v52 = v20;
    State.wrappedValue.getter();
    v21 = 48;
    if (v55)
    {
      v21 = 32;
    }

    v22 = 56;
    if (v55)
    {
      v22 = 40;
    }

    v23 = *(a1 + v21);
    v24 = *(a1 + v22);

    v25._countAndFlagsBits = v23;
    v25._object = v24;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v25);

    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    LocalizedStringKey.init(stringInterpolation:)();
    v51 = Text.init(_:tableName:bundle:comment:)();
    v52 = v27;
    v53 = v28 & 1;
    v54 = v29;
    __chkstk_darwin(v51);
    v30 = v44;
    Section<>.init(footer:content:)();
    v31 = v47;
    (*(v47 + 32))(v10, v30, v4);
    v32 = 0;
    v33 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v47;
  }

  v34 = v10;
  (*(v33 + 56))(v10, v32, 1, v4);
  v35 = *(v12 + 16);
  v36 = v45;
  v37 = v46;
  v35(v46, v45, v11);
  v38 = v48;
  sub_10000BE14(v34, v48, &qword_101A1CF50);
  v39 = v49;
  v35(v49, v37, v11);
  v40 = sub_1005B981C(&qword_101A1CF78);
  sub_10000BE14(v38, &v39[*(v40 + 48)], &qword_101A1CF50);
  sub_10000CAAC(v34, &qword_101A1CF50);
  v41 = *(v12 + 8);
  v41(v36, v11);
  sub_10000CAAC(v38, &qword_101A1CF50);
  return (v41)(v37, v11);
}

uint64_t sub_100D44AA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1005B981C(&qword_101A1CF80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_100D46404(a1, v27);
  v15 = swift_allocObject();
  sub_100D4643C(v27, v15 + 16);
  v26 = a1;
  sub_1005B981C(&qword_101A1CF88);
  sub_10001A2F8(&qword_101A1CF90, &qword_101A1CF88);
  Button.init(action:label:)();
  sub_100D46404(a1, v27);
  v16 = swift_allocObject();
  sub_100D4643C(v27, v16 + 16);
  v25 = a1;
  Button.init(action:label:)();
  v17 = *(v4 + 16);
  v17(v8, v14, v3);
  v18 = v23;
  v17(v23, v11, v3);
  v19 = v24;
  v17(v24, v8, v3);
  v20 = sub_1005B981C(&qword_101A1CF98);
  v17(&v19[*(v20 + 48)], v18, v3);
  v21 = *(v4 + 8);
  v21(v11, v3);
  v21(v14, v3);
  v21(v18, v3);
  return (v21)(v8, v3);
}

uint64_t sub_100D44DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = sub_1005B981C(&qword_101A1CFA8);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v36 = &v36 - v4;
  v5 = sub_1005B981C(&unk_101A1CFB0);
  __chkstk_darwin(v5 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v43 = v14;
  v44 = v16;
  sub_100017CD8();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v11) = v20;
  v43 = static Color.primary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v37 = v24;
  v26 = v25;
  sub_10007441C(v17, v19, v11 & 1);

  v27 = *(v38 + 8);
  LOBYTE(v43) = *v38;
  v44 = v27;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.getter();
  v28 = 1;
  if ((v42 & 1) == 0)
  {
    v29 = Image.init(systemName:)();
    v30 = static Color.accentColor.getter();
    v43 = v29;
    v44 = v30;
    sub_1005B981C(&qword_101A1CFC0);
    sub_100D4651C();
    v31 = v36;
    View.bold(_:)();

    (*(v40 + 32))(v9, v31, v41);
    v28 = 0;
  }

  (*(v40 + 56))(v9, v28, 1, v41);
  v32 = v39;
  sub_10000BE14(v9, v39, &unk_101A1CFB0);
  *a2 = v21;
  *(a2 + 8) = v23;
  v33 = v37 & 1;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v34 = sub_1005B981C(&qword_101A1CFE0);
  sub_10000BE14(v32, a2 + *(v34 + 64), &unk_101A1CFB0);
  sub_10081EF10(v21, v23, v33);

  sub_10000CAAC(v9, &unk_101A1CFB0);
  sub_10000CAAC(v32, &unk_101A1CFB0);
  sub_10007441C(v21, v23, v33);
}

void sub_100D45210(uint64_t a1, uint64_t a2, char a3)
{
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100D43F3C(a3 & 1);
  }
}

uint64_t sub_100D45298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = sub_1005B981C(&qword_101A1CFA8);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v36 = &v36 - v4;
  v5 = sub_1005B981C(&unk_101A1CFB0);
  __chkstk_darwin(v5 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v43 = v14;
  v44 = v16;
  sub_100017CD8();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v11) = v20;
  v43 = static Color.primary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v37 = v24;
  v26 = v25;
  sub_10007441C(v17, v19, v11 & 1);

  v27 = *(v38 + 8);
  LOBYTE(v43) = *v38;
  v44 = v27;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.getter();
  v28 = 1;
  if (v42 == 1)
  {
    v29 = Image.init(systemName:)();
    v30 = static Color.accentColor.getter();
    v43 = v29;
    v44 = v30;
    sub_1005B981C(&qword_101A1CFC0);
    sub_100D4651C();
    v31 = v36;
    View.bold(_:)();

    (*(v40 + 32))(v9, v31, v41);
    v28 = 0;
  }

  (*(v40 + 56))(v9, v28, 1, v41);
  v32 = v39;
  sub_10000BE14(v9, v39, &unk_101A1CFB0);
  *a2 = v21;
  *(a2 + 8) = v23;
  v33 = v37 & 1;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v34 = sub_1005B981C(&qword_101A1CFE0);
  sub_10000BE14(v32, a2 + *(v34 + 64), &unk_101A1CFB0);
  sub_10081EF10(v21, v23, v33);

  sub_10000CAAC(v9, &unk_101A1CFB0);
  sub_10000CAAC(v32, &unk_101A1CFB0);
  sub_10007441C(v21, v23, v33);
}

uint64_t sub_100D456C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1005B981C(&qword_101A1CF80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_100D46404(a1, v27);
  v15 = swift_allocObject();
  sub_100D4643C(v27, v15 + 16);
  v26 = a1;
  sub_1005B981C(&qword_101A1CF88);
  sub_10001A2F8(&qword_101A1CF90, &qword_101A1CF88);
  Button.init(action:label:)();
  sub_100D46404(a1, v27);
  v16 = swift_allocObject();
  sub_100D4643C(v27, v16 + 16);
  v25 = a1;
  Button.init(action:label:)();
  v17 = *(v4 + 16);
  v17(v8, v14, v3);
  v18 = v23;
  v17(v23, v11, v3);
  v19 = v24;
  v17(v24, v8, v3);
  v20 = sub_1005B981C(&qword_101A1CF98);
  v17(&v19[*(v20 + 48)], v18, v3);
  v21 = *(v4 + 8);
  v21(v11, v3);
  v21(v14, v3);
  v21(v18, v3);
  return (v21)(v8, v3);
}

uint64_t sub_100D45A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = sub_1005B981C(&qword_101A1CFA8);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v36 = &v36 - v4;
  v5 = sub_1005B981C(&unk_101A1CFB0);
  __chkstk_darwin(v5 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v43 = v14;
  v44 = v16;
  sub_100017CD8();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v11) = v20;
  v43 = static Color.primary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v37 = v24;
  v26 = v25;
  sub_10007441C(v17, v19, v11 & 1);

  v27 = *(v38 + 24);
  LOBYTE(v43) = *(v38 + 16);
  v44 = v27;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.getter();
  v28 = 1;
  if (v42 == 1)
  {
    v29 = Image.init(systemName:)();
    v30 = static Color.accentColor.getter();
    v43 = v29;
    v44 = v30;
    sub_1005B981C(&qword_101A1CFC0);
    sub_100D4651C();
    v31 = v36;
    View.bold(_:)();

    (*(v40 + 32))(v9, v31, v41);
    v28 = 0;
  }

  (*(v40 + 56))(v9, v28, 1, v41);
  v32 = v39;
  sub_10000BE14(v9, v39, &unk_101A1CFB0);
  *a2 = v21;
  *(a2 + 8) = v23;
  v33 = v37 & 1;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v34 = sub_1005B981C(&qword_101A1CFE0);
  sub_10000BE14(v32, a2 + *(v34 + 64), &unk_101A1CFB0);
  sub_10081EF10(v21, v23, v33);

  sub_10000CAAC(v9, &unk_101A1CFB0);
  sub_10000CAAC(v32, &unk_101A1CFB0);
  sub_10007441C(v21, v23, v33);
}

void sub_100D45E38(uint64_t a1, uint64_t a2, char a3)
{
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100D44210(a3 & 1);
  }
}

uint64_t sub_100D45EC0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_1005B981C(&qword_101A1CFA0);
  return a2(a1);
}

uint64_t sub_100D45F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = sub_1005B981C(&qword_101A1CFA8);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v36 = &v36 - v4;
  v5 = sub_1005B981C(&unk_101A1CFB0);
  __chkstk_darwin(v5 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v43 = v14;
  v44 = v16;
  sub_100017CD8();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v13) = v20;
  v43 = static Color.primary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v37 = v24;
  v26 = v25;
  sub_10007441C(v17, v19, v13 & 1);

  v27 = *(v38 + 24);
  LOBYTE(v43) = *(v38 + 16);
  v44 = v27;
  sub_1005B981C(&qword_101A1CF70);
  State.wrappedValue.getter();
  v28 = 1;
  if ((v42 & 1) == 0)
  {
    v29 = Image.init(systemName:)();
    v30 = static Color.accentColor.getter();
    v43 = v29;
    v44 = v30;
    sub_1005B981C(&qword_101A1CFC0);
    sub_100D4651C();
    v31 = v36;
    View.bold(_:)();

    (*(v40 + 32))(v9, v31, v41);
    v28 = 0;
  }

  (*(v40 + 56))(v9, v28, 1, v41);
  v32 = v39;
  sub_10000BE14(v9, v39, &unk_101A1CFB0);
  *a2 = v21;
  *(a2 + 8) = v23;
  v33 = v37 & 1;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v34 = sub_1005B981C(&qword_101A1CFE0);
  sub_10000BE14(v32, a2 + *(v34 + 64), &unk_101A1CFB0);
  sub_10081EF10(v21, v23, v33);

  sub_10000CAAC(v9, &unk_101A1CFB0);
  sub_10000CAAC(v32, &unk_101A1CFB0);
  sub_10007441C(v21, v23, v33);
}

uint64_t sub_100D46348()
{
  sub_1005B981C(&qword_101A1CF38);
  sub_10001A2F8(&qword_101A1CF40, &qword_101A1CF38);
  return List<>.init(content:)();
}

unint64_t sub_100D4651C()
{
  result = qword_101A1CFC8;
  if (!qword_101A1CFC8)
  {
    sub_1005C4E5C(&qword_101A1CFC0);
    sub_10001A2F8(&unk_101A1CFD0, &qword_101A10D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1CFC8);
  }

  return result;
}

void sub_100D4667C()
{
  *(v0 + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_hostingController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printScenesSummaryMessage);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *v1 = v7;
  v1[1] = v9;
  v10 = (v0 + OBJC_IVAR____TtC8Freeform32CRLiOSPrintOptionsViewController_printBoardSummaryMessage);
  v11 = [v2 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *v10 = v15;
  v10[1] = v17;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100D46894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled] = 0;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact] = 0;
  *&v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView] = 0;
  v16 = &v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_initialAccessibilityDescription];
  *v16 = a1;
  v16[1] = a2;
  swift_unknownObjectWeakAssign();
  v17 = &v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_titleText];
  *v17 = a3;
  v17[1] = a4;
  v18 = &v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_subtitleText];
  *v18 = a5;
  v18[1] = a6;
  v19 = &v10[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_placeholderText];
  *v19 = a9;
  v19[1] = a10;
  v27.receiver = v10;
  v27.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  v21 = [v20 traitCollection];
  v22 = [v21 horizontalSizeClass];
  if (v22 != 1)
  {
    LOBYTE(v22) = [v21 verticalSizeClass] == 1;
  }

  v23 = OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact;
  *(v20 + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact) = v22;
  sub_100D4757C(v22);

  if (*(v20 + v23))
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  [v20 setModalPresentationStyle:v24];
  [v20 setModalInPresentation:0];
  swift_unknownObjectRelease();

  return v20;
}

void sub_100D46BD0()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 520.0, 200.0}];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_100D4796C();
  [v6 addSubview:v7];

  v8 = sub_100D47830();
  v9 = [v0 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = v8;
  [v10 addSubview:v11];

  v12 = OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView;
  [*&v0[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView] becomeFirstResponder];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 layoutMarginsGuide];

  sub_1005B981C(&unk_1019F4D60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101470780;
  v17 = [v11 topAnchor];

  v18 = [v15 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v11 leadingAnchor];

  v21 = [v15 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v11 trailingAnchor];

  v24 = [v15 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v16 + 48) = v25;
  v26 = [*&v0[v12] topAnchor];
  v27 = [v11 bottomAnchor];

  v28 = [v26 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v27 multiplier:2.0];
  *(v16 + 56) = v28;
  v29 = [*&v0[v12] leadingAnchor];
  v30 = [v15 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v16 + 64) = v31;
  v32 = [*&v0[v12] trailingAnchor];
  v33 = [v15 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v16 + 72) = v34;
  v35 = [*&v0[v12] heightAnchor];
  v36 = [v15 heightAnchor];
  v37 = [v35 constraintLessThanOrEqualToAnchor:v36];

  *(v16 + 80) = v37;
  v38 = [*&v0[v12] heightAnchor];
  v39 = [v38 constraintGreaterThanOrEqualToConstant:40.0];

  *(v16 + 88) = v39;
  v40 = [*&v0[v12] bottomAnchor];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 bottomAnchor];
  v45 = [v40 constraintLessThanOrEqualToAnchor:v44];

  *(v16 + 96) = v45;
  v46 = [*&v0[v12] bottomAnchor];
  v47 = [v0 view];
  if (!v47)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = objc_opt_self();
  v50 = [v48 keyboardLayoutGuide];

  v51 = [v50 topAnchor];
  v52 = [v46 constraintLessThanOrEqualToAnchor:v51 constant:-12.0];

  *(v16 + 104) = v52;
  v53 = [*&v0[v12] bottomAnchor];
  v54 = [v15 bottomAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54];

  *(v16 + 112) = v55;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];
}

id sub_100D4747C(char a1)
{
  v3 = sub_100D4796C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong accessibilityDescriptionEditor:v1 didEndEditingWithReason:v1[OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled]];
    swift_unknownObjectRelease();
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  return objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
}

void sub_100D4757C(char a1)
{
  if ((a1 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_opt_self() systemGrayColor];
    v4 = [objc_opt_self() configurationWithHierarchicalColor:v3];

    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

    v2 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v7 style:0 target:v1 action:"triggerClose"];
  }

  else
  {
    v2 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"triggerClose"];
  }

  v8 = objc_opt_self();
  v16 = v2;
  v9 = [v8 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v16 setAccessibilityLabel:v12];

  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 setNavigationBarHidden:0 animated:0];
  }

  v15 = [v1 navigationItem];
  [v15 setRightBarButtonItem:v16];
}

id sub_100D47830()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v3];

  [v0 setTextAlignment:4];
  [v0 setNumberOfLines:0];
  return v0;
}

id sub_100D4796C()
{
  v1 = OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView);
  }

  else
  {
    v4 = sub_100D479D0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100D479D0()
{
  v0 = [objc_allocWithZone(UITextView) initWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  [v0 setTextColor:v3];

  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v4];

  v5 = v0;
  v6 = [v2 secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = [v5 layer];
  [v7 setCornerRadius:15.0];

  [v5 setWritingToolsBehavior:-1];
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v9 = NSForegroundColorAttributeName;
  v10 = [v2 systemGrayColor];
  *(inited + 64) = sub_100006370(0, &qword_101A11110);
  *(inited + 40) = v10;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_100BF2508(inited + 32);
  v11 = [v5 font];
  if (v11)
  {
    v12 = v11;
    v23 = sub_100006370(0, &qword_101A0DE60);
    *&v22 = v12;
    sub_10000BF3C(&v22, v21);
    v13 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100A9B978(v21, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  }

  v15 = objc_allocWithZone(NSAttributedString);
  v16 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithString:v16 attributes:isa];

  [v5 setAttributedPlaceholder:v18];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  LODWORD(v19) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v19];
  return v5;
}

id sub_100D47DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D47FB0(void *a1)
{
  v3 = [a1 horizontalSizeClass];
  if (v3 != 1)
  {
    LOBYTE(v3) = [a1 verticalSizeClass] == 1;
  }

  v4 = OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact;
  *(v1 + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact) = v3;
  sub_100D4757C(v3);
  if (*(v1 + v4))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_100D4801C(void *a1)
{
  v2 = [a1 activeAppearance];
  if (v2 == 1 || v2 + 1 == 0)
  {
    v4 = [objc_opt_self() labelColor];

    return v4;
  }

  else
  {
    v6 = [a1 crl_isUserInterfaceStyleDark];
    v7 = objc_allocWithZone(UIColor);
    if (v6)
    {
      v8 = 0.52;
    }

    else
    {
      v8 = 0.55;
    }

    return [v7 initWithWhite:v8 alpha:0.8];
  }
}

unint64_t sub_100D48100()
{
  result = qword_101A1D340;
  if (!qword_101A1D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D340);
  }

  return result;
}

unint64_t sub_100D48158()
{
  result = qword_101A1D348;
  if (!qword_101A1D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D348);
  }

  return result;
}

unint64_t sub_100D481B0()
{
  result = qword_101A1D350;
  if (!qword_101A1D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D350);
  }

  return result;
}

unint64_t sub_100D48208()
{
  result = qword_101A1D358;
  if (!qword_101A1D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D358);
  }

  return result;
}

__n128 sub_100D4825C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t *OS_os_log.crlAppAnalytics.unsafeMutableAddressor()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAppAnalytics;
}

uint64_t *OS_os_log.crlDefault.unsafeMutableAddressor()
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDefault;
}

uint64_t *OS_os_log.crlStatusHUD.unsafeMutableAddressor()
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStatusHUD;
}

uint64_t *OS_os_log.crlFollow.unsafeMutableAddressor()
{
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFollow;
}

uint64_t *OS_os_log.boardItemLifecycle.unsafeMutableAddressor()
{
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemLifecycle;
}

uint64_t *OS_os_log.crlWarning.unsafeMutableAddressor()
{
  if (qword_1019F20B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlWarning;
}

uint64_t *OS_os_log.shareState.unsafeMutableAddressor()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.shareState;
}

uint64_t *OS_os_log.realTimeSync.unsafeMutableAddressor()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.realTimeSync;
}

uint64_t *OS_os_log.crlSidebar.unsafeMutableAddressor()
{
  if (qword_1019F2198 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSidebar;
}

uint64_t *OS_os_log.crlFolderUI.unsafeMutableAddressor()
{
  if (qword_1019F2128 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFolderUI;
}

uint64_t *OS_os_log.crlCollaboratorCursor.unsafeMutableAddressor()
{
  if (qword_1019F21A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaboratorCursor;
}

uint64_t *OS_os_log.crlCollaborationParticipant.unsafeMutableAddressor()
{
  if (qword_1019F20F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaborationParticipant;
}

uint64_t *OS_os_log.crlInsertMedia.unsafeMutableAddressor()
{
  if (qword_1019F21A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlInsertMedia;
}

uint64_t *OS_os_log.crlRealTimeMessageTransfer.unsafeMutableAddressor()
{
  if (qword_1019F2158 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlRealTimeMessageTransfer;
}

uint64_t *OS_os_log.appIntents.unsafeMutableAddressor()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appIntents;
}

uint64_t *OS_os_log.dataSync.unsafeMutableAddressor()
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataSync;
}

uint64_t *OS_os_log.crlAnalytics.unsafeMutableAddressor()
{
  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnalytics;
}

uint64_t *OS_os_log.crlBoardLibrary.unsafeMutableAddressor()
{
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardLibrary;
}

uint64_t *OS_os_log.assetManagement.unsafeMutableAddressor()
{
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.assetManagement;
}

uint64_t *OS_os_log.crlTables.unsafeMutableAddressor()
{
  if (qword_1019F21D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTables;
}

uint64_t *OS_os_log.crlSharingExtension.unsafeMutableAddressor()
{
  if (qword_1019F2148 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSharingExtension;
}

uint64_t *OS_os_log.crlBoardPreviewImageCache.unsafeMutableAddressor()
{
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardPreviewImageCache;
}

uint64_t *OS_os_log.crlScenes.unsafeMutableAddressor()
{
  if (qword_1019F21D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlScenes;
}

uint64_t *OS_os_log.crlAssetDownloadManager.unsafeMutableAddressor()
{
  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssetDownloadManager;
}

uint64_t *OS_os_log.crlError.unsafeMutableAddressor()
{
  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlError;
}

uint64_t *OS_os_log.sceneManagement.unsafeMutableAddressor()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sceneManagement;
}

uint64_t *OS_os_log.crlSendACopy.unsafeMutableAddressor()
{
  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSendACopy;
}

uint64_t *OS_os_log.crlCloudKitEnvironment.unsafeMutableAddressor()
{
  if (qword_1019F2170 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudKitEnvironment;
}

uint64_t *OS_os_log.crlTextInput.unsafeMutableAddressor()
{
  if (qword_1019F20D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTextInput;
}

uint64_t *OS_os_log.writingTools.unsafeMutableAddressor()
{
  if (qword_1019F22E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.writingTools;
}

uint64_t *OS_os_log.suspendResumeCollaboration.unsafeMutableAddressor()
{
  if (qword_1019F2280 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.suspendResumeCollaboration;
}

uint64_t *OS_os_log.crlPencilHover.unsafeMutableAddressor()
{
  if (qword_1019F21C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPencilHover;
}

uint64_t *OS_os_log.crlThreeDimensionalObjects.unsafeMutableAddressor()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlThreeDimensionalObjects;
}

uint64_t *OS_os_log.crlStorageHierachy.unsafeMutableAddressor()
{
  if (qword_1019F20E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStorageHierachy;
}

uint64_t *OS_os_log.commandController.unsafeMutableAddressor()
{
  if (qword_1019F2278 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.commandController;
}

uint64_t *OS_os_log.boardStore.unsafeMutableAddressor()
{
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardStore;
}

uint64_t *OS_os_log.crlMiniFormatter.unsafeMutableAddressor()
{
  if (qword_1019F2218 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlMiniFormatter;
}

uint64_t *OS_os_log.crlAssert.unsafeMutableAddressor()
{
  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssert;
}

uint64_t *OS_os_log.sideStore.unsafeMutableAddressor()
{
  if (qword_1019F22D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sideStore;
}

uint64_t *OS_os_log.crlSerializableObject.unsafeMutableAddressor()
{
  if (qword_1019F20E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSerializableObject;
}

uint64_t *OS_os_log.crlLayerAnimation.unsafeMutableAddressor()
{
  if (qword_1019F2208 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlLayerAnimation;
}

uint64_t *OS_os_log.crlNetworkReachability.unsafeMutableAddressor()
{
  if (qword_1019F2100 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlNetworkReachability;
}

uint64_t *OS_os_log.crlZoneRefetch.unsafeMutableAddressor()
{
  if (qword_1019F2160 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlZoneRefetch;
}

uint64_t *OS_os_log.crlFreehandDrawingStrokeAnimation.unsafeMutableAddressor()
{
  if (qword_1019F22F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFreehandDrawingStrokeAnimation;
}

uint64_t *OS_os_log.crlCloudQuotaMessaging.unsafeMutableAddressor()
{
  if (qword_1019F21F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudQuotaMessaging;
}

uint64_t *OS_os_log.crlStencilLibrary.unsafeMutableAddressor()
{
  if (qword_1019F2150 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStencilLibrary;
}

uint64_t *OS_os_log.crlSpotlight.unsafeMutableAddressor()
{
  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSpotlight;
}

uint64_t *OS_os_log.crlSurface.unsafeMutableAddressor()
{
  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSurface;
}

uint64_t *OS_os_log.pasteboard.unsafeMutableAddressor()
{
  if (qword_1019F22A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.pasteboard;
}

void sub_100D491F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA68, &qword_101AD5A10);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssert = v1;
}

void sub_100D492D4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA70, &qword_101AD5A18);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlError = v1;
}

void sub_100D493B4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA78, &qword_101AD5A20);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlWarning = v1;
}

void sub_100D49498()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA80, &qword_101AD5A28);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAlert = v1;
}

uint64_t *OS_os_log.crlAlert.unsafeMutableAddressor()
{
  if (qword_1019F20B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAlert;
}

void sub_100D495C8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA88, &qword_101AD5A30);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPerformance = v1;
}

uint64_t *OS_os_log.crlPerformance.unsafeMutableAddressor()
{
  if (qword_1019F20C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPerformance;
}

void sub_100D496F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA90, &qword_101AD5A38);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStatusHUD = v1;
}

void sub_100D497D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDA98, &qword_101AD5A40);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTextInput = v1;
}

void sub_100D498BC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAA0, &qword_101AD5A48);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTraceableResource = v1;
}

uint64_t *OS_os_log.crlTraceableResource.unsafeMutableAddressor()
{
  if (qword_1019F20D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTraceableResource;
}

void sub_100D499E8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB28, &qword_101AD5AD0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStorageHierachy = v1;
}

void sub_100D49AC4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB60, &qword_101AD5B08);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSerializableObject = v1;
}

void sub_100D49BA0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB68, &qword_101AD5B10);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaborationParticipant = v1;
}

void sub_100D49CA0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB78, &qword_101AD5B20);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlNetworkReachability = v1;
}

void sub_100D49D7C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB80, &qword_101AD5B28);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssetDownloadManager = v1;
}

uint64_t (*static OS_os_log.crlAppAnalytics.modify())()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

void sub_100D49F4C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB98, &qword_101AD5B40);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlKeyboard = v1;
}

uint64_t *OS_os_log.crlKeyboard.unsafeMutableAddressor()
{
  if (qword_1019F2120 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlKeyboard;
}

void sub_100D4A0EC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBC0, &qword_101AD5B68);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDragAndDrop = v1;
}

uint64_t *OS_os_log.crlDragAndDrop.unsafeMutableAddressor()
{
  if (qword_1019F2140 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDragAndDrop;
}

void sub_100D4A23C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBD0, &qword_101AD5B78);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStencilLibrary = v1;
}

void sub_100D4A318()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAD0, &qword_101AD5A78);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlRealTimeMessageTransfer = v1;
}

void sub_100D4A418()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC60, &qword_101AD5C08);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSendACopy = v1;
}

void sub_100D4A520()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EFE48, &qword_101AD5CB0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlGesture = v1;
}

uint64_t *OS_os_log.crlGesture.unsafeMutableAddressor()
{
  if (qword_1019F2178 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlGesture;
}

void sub_100D4A654()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EFE50, &qword_101AD5CB8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlGesturePlus = v1;
}

uint64_t *OS_os_log.crlGesturePlus.unsafeMutableAddressor()
{
  if (qword_1019F2180 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlGesturePlus;
}

void sub_100D4A780()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EFE58, &qword_101AD5CC0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlGestureMonitor = v1;
}

uint64_t *OS_os_log.crlGestureMonitor.unsafeMutableAddressor()
{
  if (qword_1019F2188 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlGestureMonitor;
}

void sub_100D4A8AC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019F0AA8, &qword_101AD5CD0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlInteractiveCanvasLayer = v1;
}

uint64_t *OS_os_log.crlInteractiveCanvasLayer.unsafeMutableAddressor()
{
  if (qword_1019F2190 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlInteractiveCanvasLayer;
}

void sub_100D4A9D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBD8, &qword_101AD5B80);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSidebar = v1;
}

void sub_100D4AABC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBE0, &qword_101AD5B88);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlInsertMedia = v1;
}

void sub_100D4AB98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBE8, &qword_101AD5B90);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaboratorCursor = v1;
}

void sub_100D4AC74()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBF0, &qword_101AD5B98);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStateRestoration = v1;
}

uint64_t *OS_os_log.crlStateRestoration.unsafeMutableAddressor()
{
  if (qword_1019F21B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStateRestoration;
}

void sub_100D4ADC4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC08, &qword_101AD5BB0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlJoinLeave = v1;
}

uint64_t *OS_os_log.crlJoinLeave.unsafeMutableAddressor()
{
  if (qword_1019F21C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlJoinLeave;
}

void sub_100D4AEF8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC10, &qword_101AD5BB8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPencilHover = v1;
}

void sub_100D4AFD4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC18, &qword_101AD5BC0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlScenes = v1;
}

void sub_100D4B0B8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC20, &qword_101AD5BC8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTables = v1;
}

void sub_100D4B19C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC28, &qword_101AD5BD0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlThreeDimensionalObjects = v1;
}

void sub_100D4B278()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC30, &qword_101AD5BD8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlChangeShape = v1;
}

uint64_t *OS_os_log.crlChangeShape.unsafeMutableAddressor()
{
  if (qword_1019F21E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlChangeShape;
}

void sub_100D4B3A4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC38, &qword_101AD5BE0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudQuotaMessaging = v1;
}

void sub_100D4B480()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC40, &qword_101AD5BE8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crl3DBreakthrough = v1;
}

uint64_t *OS_os_log.crl3DBreakthrough.unsafeMutableAddressor()
{
  if (qword_1019F21F8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crl3DBreakthrough;
}

void sub_100D4B5AC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC48, &qword_101AD5BF0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlObjectTransform = v1;
}

uint64_t *OS_os_log.crlObjectTransform.unsafeMutableAddressor()
{
  if (qword_1019F2200 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlObjectTransform;
}

void sub_100D4B6D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC50, &qword_101AD5BF8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlLayerAnimation = v1;
}

void sub_100D4B7B4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC58, &qword_101AD5C00);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnimationImpl = v1;
}

uint64_t *OS_os_log.crlAnimationImpl.unsafeMutableAddressor()
{
  if (qword_1019F2210 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnimationImpl;
}

void sub_100D4B8E0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC70, &qword_101AD5C18);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlMiniFormatter = v1;
}

void sub_100D4B9E0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB00, &qword_101AD5AA8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.composition = v1;
}

uint64_t *OS_os_log.composition.unsafeMutableAddressor()
{
  if (qword_1019F2228 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.composition;
}

void sub_100D4BB10()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAA8, &qword_101AD5A50);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.CRLViewController = v1;
}

uint64_t *OS_os_log.CRLViewController.unsafeMutableAddressor()
{
  if (qword_1019F2230 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.CRLViewController;
}

void sub_100D4BC3C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAB0, &qword_101AD5A58);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appIntents = v1;
}

void sub_100D4BD18()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAB8, &qword_101AD5A60);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appState = v1;
}

uint64_t *OS_os_log.appState.unsafeMutableAddressor()
{
  if (qword_1019F2240 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appState;
}

void sub_100D4BE40()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB10, &qword_101AD5AB8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.interaction = v1;
}

uint64_t *OS_os_log.interaction.unsafeMutableAddressor()
{
  if (qword_1019F2248 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.interaction;
}

void sub_100D4BF70()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB08, &qword_101AD5AB0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.contentState = v1;
}

uint64_t *OS_os_log.contentState.unsafeMutableAddressor()
{
  if (qword_1019F2250 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.contentState;
}

void sub_100D4C0C4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAE8, &qword_101AD5A90);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.fileProviderStore = v1;
}

uint64_t *OS_os_log.fileProviderStore.unsafeMutableAddressor()
{
  if (qword_1019F2260 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.fileProviderStore;
}

void sub_100D4C1F0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB48, &qword_101AD5AF0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.persistence = v1;
}

uint64_t *OS_os_log.persistence.unsafeMutableAddressor()
{
  if (qword_1019F2268 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.persistence;
}

void sub_100D4C344()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAF8, &qword_101AD5AA0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.commandController = v1;
}

void sub_100D4C420()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDAC0, &qword_101AD5A68);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.suspendResumeCollaboration = v1;
}

void sub_100D4C520()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB18, &qword_101AD5AC0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.keyboardInput = v1;
}

uint64_t *OS_os_log.keyboardInput.unsafeMutableAddressor()
{
  if (qword_1019F2290 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.keyboardInput;
}

void sub_100D4C654()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB30, &qword_101AD5AD8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.target_gesture = v1;
}

uint64_t *OS_os_log.target_gesture.unsafeMutableAddressor()
{
  if (qword_1019F2298 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.target_gesture;
}

uint64_t *OS_os_log.upgrade.unsafeMutableAddressor()
{
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.upgrade;
}

void sub_100D4C7FC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB40, &qword_101AD5AE8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.pasteboard = v1;
}

void sub_100D4C8D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB50, &qword_101AD5AF8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemDataSize = v1;
}

uint64_t *OS_os_log.boardItemDataSize.unsafeMutableAddressor()
{
  if (qword_1019F22B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemDataSize;
}

void sub_100D4CA04()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB58, &qword_101AD5B00);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemLifecycle = v1;
}

void sub_100D4CAE0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBA8, &qword_101AD5B50);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.assetManagement = v1;
}

void sub_100D4CBE8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC78, &qword_101AD5C20);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.DrawingDataDetectors = v1;
}

uint64_t *OS_os_log.DrawingDataDetectors.unsafeMutableAddressor()
{
  if (qword_1019F22D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.DrawingDataDetectors;
}

void sub_100D4CD38()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC88, &qword_101AD5C30);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSurface = v1;
}

void sub_100D4CE10()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC90, &qword_101AD5C38);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.writingTools = v1;
}

uint64_t (*static OS_os_log.writingTools.modify())()
{
  if (qword_1019F22E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

void sub_100D4CF9C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC98, &qword_101AD5C40);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFreehandDrawingStrokeAnimation = v1;
}

id sub_100D4D078(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_100D4D104(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.crlFreehandDrawingStrokeAnimation.modify())()
{
  if (qword_1019F22F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t sub_100D4D4F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_8:
    result = sub_10113CDF4(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = v5 - 1;
  v7 = *(type metadata accessor for CRLCommandHistoryItem() - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6;
  v3[2] = v6;
  *v1 = v3;

  return sub_100894114(v8, a1);
}

uint64_t sub_100D4D5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3[2])
  {
    __break(1u);
LABEL_8:
    result = sub_10113CDF4(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = v5 - 1;
  v7 = *(type metadata accessor for CRLCommandHistoryItem() - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6;
  v3[2] = v6;
  *(v1 + 8) = v3;

  return sub_100894114(v8, a1);
}

uint64_t sub_100D4D6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  v4 = *(type metadata accessor for CRLCommandHistoryItem() - 8);
  v5 = *(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3 + 16);

  return v5;
}

objc_class *sub_100D4D764(void *a1, void *a2, double a3, uint64_t a4, NSString a5)
{
  sub_100006370(0, &qword_1019F6E10);
  v9 = a2;
  v24.value.super.super.isa = a2;
  v10 = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v24).super.super.super.super.isa;
  [(objc_class *)v10 setContentHorizontalAlignment:3];
  [(objc_class *)v10 setContentVerticalAlignment:3];

  [(objc_class *)v10 setImage:a1 forState:0];
  if (a1)
  {
    v11 = [a1 crl_imageWithAlpha:0 renderingMode:0.6];
  }

  else
  {
    v11 = 0;
  }

  [(objc_class *)v10 setImage:v11 forState:1];
  v12 = v10;
  [(objc_class *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146CE00;
  v15 = [(objc_class *)v12 heightAnchor];
  v16 = [v15 constraintEqualToConstant:a3];

  *(v14 + 32) = v16;
  v17 = [(objc_class *)v12 widthAnchor];
  v18 = [v17 constraintEqualToConstant:a3];

  *(v14 + 40) = v18;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  v20 = v12;
  if (a5)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [(objc_class *)v12 setAccessibilityLabel:v21];

  [(objc_class *)v12 setShowsLargeContentViewer:1];
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v12 setLargeContentTitle:a5];

  [(objc_class *)v12 setLargeContentImage:a1];
  v22 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [(objc_class *)v12 addInteraction:v22];

  return v12;
}

id sub_100D4DAF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPencilToolShapeDecorator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D4DCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000010159E870 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100D4DD58(uint64_t a1)
{
  v2 = sub_100D4DF5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D4DD94(uint64_t a1)
{
  v2 = sub_100D4DF5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DrawableAddSummaryData.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1D398);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100D4DF5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1005B981C(&qword_101A1D3A8);
  sub_100D4E3F0(&qword_101A1D3B0, sub_100D4DFB0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_100D4DF5C()
{
  result = qword_101A1D3A0;
  if (!qword_101A1D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3A0);
  }

  return result;
}

unint64_t sub_100D4DFB0()
{
  result = qword_101A1D3B8;
  if (!qword_101A1D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3B8);
  }

  return result;
}

void *sub_100D4E01C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100D4E064(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_100D4E064(void *a1)
{
  v3 = sub_1005B981C(&qword_101A1D3E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_100D4DF5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    sub_1005B981C(&qword_101A1D3A8);
    sub_100D4E3F0(&qword_101A1D3F0, sub_100D4E468);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005070(a1);
  }

  return v7;
}

unint64_t sub_100D4E21C()
{
  result = qword_101A1D3C0;
  if (!qword_101A1D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3C0);
  }

  return result;
}

unint64_t sub_100D4E274()
{
  result = qword_101A1D3C8;
  if (!qword_101A1D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3C8);
  }

  return result;
}

unint64_t sub_100D4E2EC()
{
  result = qword_101A1D3D0;
  if (!qword_101A1D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3D0);
  }

  return result;
}

unint64_t sub_100D4E344()
{
  result = qword_101A1D3D8;
  if (!qword_101A1D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3D8);
  }

  return result;
}

unint64_t sub_100D4E39C()
{
  result = qword_101A1D3E0;
  if (!qword_101A1D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3E0);
  }

  return result;
}

uint64_t sub_100D4E3F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A1D3A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100D4E468()
{
  result = qword_101A1D3F8;
  if (!qword_101A1D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D3F8);
  }

  return result;
}

Freeform::BoardData __swiftcall BoardData.init(boardID:isOwned:)(Freeform::BoardData boardID, Swift::Bool isOwned)
{
  v2 = isOwned;
  boardID.isOwned = v2;
  return boardID;
}

uint64_t sub_100D4E4CC()
{
  if (*v0)
  {
    return 0x64656E774F7369;
  }

  else
  {
    return 0x44496472616F62;
  }
}

uint64_t sub_100D4E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496472616F62 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656E774F7369 && a2 == 0xE700000000000000)
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

uint64_t sub_100D4E5DC(uint64_t a1)
{
  v2 = sub_100D4E7E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D4E618(uint64_t a1)
{
  v2 = sub_100D4E7E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_1005B981C(&qword_101A1D400);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_100D4E7E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100D4E7E8()
{
  result = qword_101A1D408;
  if (!qword_101A1D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D408);
  }

  return result;
}

uint64_t BoardData.init(from:)(void *a1)
{
  result = sub_100D4E8B8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100D4E864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100D4E8B8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100D4E8B8(void *a1)
{
  v3 = sub_1005B981C(&qword_101A1D438);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_100D4E7E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

unint64_t sub_100D4EA94()
{
  result = qword_101A1D410;
  if (!qword_101A1D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D410);
  }

  return result;
}

unint64_t sub_100D4EAEC()
{
  result = qword_101A1D418;
  if (!qword_101A1D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D418);
  }

  return result;
}

uint64_t sub_100D4EB40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100D4EB88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100D4EBEC()
{
  result = qword_101A1D420;
  if (!qword_101A1D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D420);
  }

  return result;
}

unint64_t sub_100D4EC44()
{
  result = qword_101A1D428;
  if (!qword_101A1D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D428);
  }

  return result;
}

unint64_t sub_100D4EC9C()
{
  result = qword_101A1D430;
  if (!qword_101A1D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D430);
  }

  return result;
}

uint64_t sub_100D4EE2C()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static BoardViewEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static BoardViewEvent.timeDurationGranularity);
  return static TimeDurationGranularity.seconds.getter();
}

uint64_t BoardViewEvent.boardData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardViewEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardViewEvent.boardData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardViewEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardViewEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardViewEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BoardViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_1005B981C(&qword_1019F2D58);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_1005B981C(&qword_1019F2D50);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t BoardViewEvent.Model.boardData.getter()
{
  v1 = *(v0 + *(type metadata accessor for BoardViewEvent.Model(0) + 20));

  return v1;
}

uint64_t BoardViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardViewEvent.Model(0) + 24);
  v4 = type metadata accessor for TimedData();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardViewEvent.Model.init(eventData:boardData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for EventData();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for BoardViewEvent.Model(0);
  v14 = a6 + *(v13 + 20);
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  v15 = *(v13 + 24);
  v16 = type metadata accessor for TimedData();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a5, v16);
}

uint64_t sub_100D4F4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D50284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D4F4F8(uint64_t a1)
{
  v2 = sub_100D4F7C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D4F534(uint64_t a1)
{
  v2 = sub_100D4F7C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1D440);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100D4F7C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for EventData();
  sub_1006F1498(&qword_1019FB930, &type metadata accessor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for BoardViewEvent.Model(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    LOBYTE(v9) = *(v9 + 16);
    v14 = v10;
    v15 = v11;
    v16 = v9;
    v13[7] = 1;
    sub_100D4EAEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    type metadata accessor for TimedData();
    sub_1006F1498(&qword_1019FB938, &type metadata accessor for TimedData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100D4F7C4()
{
  result = qword_101A1D448;
  if (!qword_101A1D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D448);
  }

  return result;
}

uint64_t BoardViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for TimedData();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EventData();
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1005B981C(&qword_101A1D450);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v20 - v7;
  v9 = type metadata accessor for BoardViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100D4F7C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v11;
  v13 = v26;
  v12 = v27;
  LOBYTE(v31) = 0;
  sub_1006F1498(&qword_1019FB948, &type metadata accessor for EventData);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v22, v28, v30);
  v34 = 1;
  sub_100D4EA94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v32;
  v15 = v33;
  v28 = v9;
  v16 = &v22[*(v9 + 20)];
  *v16 = v31;
  *(v16 + 1) = v14;
  v16[16] = v15;
  LOBYTE(v31) = 2;
  sub_1006F1498(&qword_1019FB950, &type metadata accessor for TimedData);
  v21 = v5;
  v17 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v29);
  v18 = v22;
  (*(v23 + 32))(&v22[*(v28 + 6)], v21, v17);
  sub_100D4FCD0(v18, v24);
  sub_100005070(a1);
  return sub_100D4FD34(v18);
}

uint64_t sub_100D4FCD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D4FD34(uint64_t a1)
{
  v2 = type metadata accessor for BoardViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D4FE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_1005B981C(&qword_1019F2D58);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_1005B981C(&qword_1019F2D50);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_100D4FFB4()
{
  sub_1006F1928();
  if (v0 <= 0x3F)
  {
    sub_100D50050();
    if (v1 <= 0x3F)
    {
      sub_1006F1A5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100D50050()
{
  if (!qword_101A1D4C0)
  {
    sub_100D4EA94();
    sub_100D4EAEC();
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_101A1D4C0);
    }
  }
}

uint64_t sub_100D500E0()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimedData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100D50180()
{
  result = qword_101A1D590;
  if (!qword_101A1D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D590);
  }

  return result;
}

unint64_t sub_100D501D8()
{
  result = qword_101A1D598;
  if (!qword_101A1D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D598);
  }

  return result;
}

unint64_t sub_100D50230()
{
  result = qword_101A1D5A0;
  if (!qword_101A1D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D5A0);
  }

  return result;
}

uint64_t sub_100D50284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446472616F62 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_100D50448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSurfaceLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D505EC()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static BoardEditEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static BoardEditEvent.timeDurationGranularity);
  return static TimeDurationGranularity.seconds.getter();
}

uint64_t BoardEditEvent.boardData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardEditEvent.boardData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardEditEvent.drawableAddSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardEditEvent.drawableAddSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardEditEvent.inputDeviceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 28);
  v4 = sub_1005B981C(&qword_1019F2D68);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardEditEvent.inputDeviceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 28);
  v4 = sub_1005B981C(&qword_1019F2D68);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardEditEvent.boardContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 32);
  v4 = sub_1005B981C(&qword_1019F2D70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardEditEvent.boardContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 32);
  v4 = sub_1005B981C(&qword_1019F2D70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardEditEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 36);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardEditEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardEditEvent(0) + 36);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardEditEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BoardEditEvent(0);
  v5 = v4[5];
  v6 = sub_1005B981C(&qword_1019F2D58);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_1005B981C(&qword_1019F2D60);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_1005B981C(&qword_1019F2D68);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = enum case for EventProperty.optional<A>(_:);
  v13 = sub_1005B981C(&qword_1019F2D70);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  v15 = sub_1005B981C(&qword_1019F2D50);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t BoardEditEvent.Model.boardData.getter()
{
  v1 = *(v0 + *(type metadata accessor for BoardEditEvent.Model(0) + 20));

  return v1;
}

uint64_t BoardEditEvent.Model.drawableAddSummaryData.getter()
{
  type metadata accessor for BoardEditEvent.Model(0);
}

uint64_t BoardEditEvent.Model.boardContentData.getter()
{
  v1 = (v0 + *(type metadata accessor for BoardEditEvent.Model(0) + 32));
  v2 = *v1;
  sub_100B9441C(*v1, v1[1]);
  return v2;
}

uint64_t BoardEditEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardEditEvent.Model(0) + 36);
  v4 = type metadata accessor for TimedData();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardEditEvent.Model.init(eventData:boardData:drawableAddSummaryData:inputDeviceData:boardContentData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = type metadata accessor for EventData();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for BoardEditEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v22 + 16) = a4;
  *(a9 + v21[6]) = a5;
  *(a9 + v21[7]) = a6;
  v23 = (a9 + v21[8]);
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  v24 = v21[9];
  v25 = type metadata accessor for TimedData();
  v26 = *(*(v25 - 8) + 32);

  return v26(a9 + v24, a12, v25);
}

uint64_t sub_100D51280()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x7665447475706E69;
  v4 = 0x74614464656D6974;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 1)
  {
    v5 = 0x7461446472616F62;
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

uint64_t sub_100D51348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D52724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D51370(uint64_t a1)
{
  v2 = sub_100D5170C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D513AC(uint64_t a1)
{
  v2 = sub_100D5170C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardEditEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1D5D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100D5170C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for EventData();
  sub_1006F1498(&qword_1019FB930, &type metadata accessor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BoardEditEvent.Model(0);
    v10 = (v3 + v9[5]);
    v11 = *v10;
    v12 = v10[1];
    LOBYTE(v10) = *(v10 + 16);
    *&v16 = v11;
    *(&v16 + 1) = v12;
    LOBYTE(v17) = v10;
    v18 = 1;
    sub_100D4EAEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v16 = *(v3 + v9[6]);
    v18 = 2;
    sub_100D4E274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v9[7]);
    v18 = 3;
    sub_100D51760();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v9[8]);
    v14 = v13[1];
    v16 = *v13;
    v17 = v14;
    v18 = 4;
    sub_100D517B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = 5;
    type metadata accessor for TimedData();
    sub_1006F1498(&qword_1019FB938, &type metadata accessor for TimedData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100D5170C()
{
  result = qword_101A1D5E0;
  if (!qword_101A1D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D5E0);
  }

  return result;
}

unint64_t sub_100D51760()
{
  result = qword_101A1D5E8;
  if (!qword_101A1D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D5E8);
  }

  return result;
}

unint64_t sub_100D517B4()
{
  result = qword_101A1D5F0;
  if (!qword_101A1D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D5F0);
  }

  return result;
}

uint64_t BoardEditEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for TimedData();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventData();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A1D5F8);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for BoardEditEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100D5170C();
  v30 = v9;
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100005070(a1);
  }

  v31 = v4;
  v14 = v26;
  LOBYTE(v32) = 0;
  sub_1006F1498(&qword_1019FB948, &type metadata accessor for EventData);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v12, v29, v5);
  v34 = 1;
  sub_100D4EA94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(&v32 + 1);
  v16 = v33;
  v17 = &v12[v10[5]];
  *v17 = v32;
  *(v17 + 1) = v15;
  v17[16] = v16;
  v34 = 2;
  sub_100D4E21C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v12[v10[6]] = v32;
  v34 = 3;
  sub_100D51E18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[v10[7]] = v32;
  v34 = 4;
  sub_100D51E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = &v12[v10[8]];
  v19 = v33;
  *v18 = v32;
  *(v18 + 1) = v19;
  LOBYTE(v32) = 5;
  sub_1006F1498(&qword_1019FB950, &type metadata accessor for TimedData);
  v20 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v30, v28);
  (*(v23 + 32))(&v12[v10[9]], v31, v20);
  sub_100D51EC0(v12, v24);
  sub_100005070(a1);
  return sub_100D51F24(v12);
}

unint64_t sub_100D51E18()
{
  result = qword_101A1D600;
  if (!qword_101A1D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D600);
  }

  return result;
}

unint64_t sub_100D51E6C()
{
  result = qword_101A1D608;
  if (!qword_101A1D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D608);
  }

  return result;
}

uint64_t sub_100D51EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardEditEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D51F24(uint64_t a1)
{
  v2 = type metadata accessor for BoardEditEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D52058@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_1005B981C(&qword_1019F2D58);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_1005B981C(&qword_1019F2D60);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_1005B981C(&qword_1019F2D68);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = enum case for EventProperty.optional<A>(_:);
  v14 = sub_1005B981C(&qword_1019F2D70);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  v16 = sub_1005B981C(&qword_1019F2D50);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_100D5229C()
{
  sub_1006F1928();
  if (v0 <= 0x3F)
  {
    sub_100D52460(319, &qword_101A1D4C0, sub_100D4EA94, sub_100D4EAEC);
    if (v1 <= 0x3F)
    {
      sub_100D52460(319, &qword_101A1D678, sub_100D4E21C, sub_100D4E274);
      if (v2 <= 0x3F)
      {
        sub_100D52460(319, &qword_101A1D680, sub_100D51E18, sub_100D51760);
        if (v3 <= 0x3F)
        {
          sub_100D52460(319, &unk_101A1D688, sub_100D51E6C, sub_100D517B4);
          if (v4 <= 0x3F)
          {
            sub_1006F1A5C();
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

void sub_100D52460(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for EventProperty();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_100D52504()
{
  type metadata accessor for EventData();
  if (v0 <= 0x3F)
  {
    sub_100D525BC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimedData();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100D525BC()
{
  if (!qword_101A1D730)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A1D730);
    }
  }
}

unint64_t sub_100D52620()
{
  result = qword_101A1D770;
  if (!qword_101A1D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D770);
  }

  return result;
}

unint64_t sub_100D52678()
{
  result = qword_101A1D778;
  if (!qword_101A1D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D778);
  }

  return result;
}

unint64_t sub_100D526D0()
{
  result = qword_101A1D780;
  if (!qword_101A1D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D780);
  }

  return result;
}

uint64_t sub_100D52724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446472616F62 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010159EA80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7665447475706E69 && a2 == 0xEF61746144656369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010159EAA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100D52A7C()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static BoardCreateEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static BoardCreateEvent.timeDurationGranularity);
  return static TimeDurationGranularity.seconds.getter();
}

uint64_t BoardCreateEvent.boardData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardCreateEvent.boardData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardCreateEvent.drawableAddSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardCreateEvent.drawableAddSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 24);
  v4 = sub_1005B981C(&qword_1019F2D60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardCreateEvent.inputDeviceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 28);
  v4 = sub_1005B981C(&qword_1019F2D68);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardCreateEvent.inputDeviceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 28);
  v4 = sub_1005B981C(&qword_1019F2D68);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardCreateEvent.boardContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 32);
  v4 = sub_1005B981C(&qword_1019F2D70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardCreateEvent.boardContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 32);
  v4 = sub_1005B981C(&qword_1019F2D70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardCreateEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 36);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardCreateEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardCreateEvent(0) + 36);
  v4 = sub_1005B981C(&qword_1019F2D50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardCreateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for BoardCreateEvent(0);
  v5 = Event[5];
  v6 = sub_1005B981C(&qword_1019F2D58);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = sub_1005B981C(&qword_1019F2D60);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  v10 = sub_1005B981C(&qword_1019F2D68);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  v12 = sub_1005B981C(&qword_1019F2D70);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = Event[9];
  v14 = sub_1005B981C(&qword_1019F2D50);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t BoardCreateEvent.Model.boardData.getter()
{
  v1 = *(v0 + *(type metadata accessor for BoardCreateEvent.Model(0) + 20));

  return v1;
}

uint64_t BoardCreateEvent.Model.drawableAddSummaryData.getter()
{
  type metadata accessor for BoardCreateEvent.Model(0);
}

uint64_t BoardCreateEvent.Model.boardContentData.getter()
{
  v1 = *(v0 + *(type metadata accessor for BoardCreateEvent.Model(0) + 32));

  return v1;
}

uint64_t BoardCreateEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardCreateEvent.Model(0) + 36);
  v4 = type metadata accessor for TimedData();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardCreateEvent.Model.init(eventData:boardData:drawableAddSummaryData:inputDeviceData:boardContentData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = type metadata accessor for EventData();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for BoardCreateEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v22 + 16) = a4;
  *(a9 + v21[6]) = a5;
  *(a9 + v21[7]) = a6;
  v23 = (a9 + v21[8]);
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  v24 = v21[9];
  v25 = type metadata accessor for TimedData();
  v26 = *(*(v25 - 8) + 32);

  return v26(a9 + v24, a12, v25);
}

uint64_t sub_100D536F8(uint64_t a1)
{
  v2 = sub_100D53A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D53734(uint64_t a1)
{
  v2 = sub_100D53A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardCreateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1D788);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100D53A9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for EventData();
  sub_1006F1498(&qword_1019FB930, &type metadata accessor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for BoardCreateEvent.Model(0);
    v10 = (v3 + v9[5]);
    v11 = *v10;
    v12 = v10[1];
    LOBYTE(v10) = *(v10 + 16);
    *&v19 = v11;
    *(&v19 + 1) = v12;
    LOBYTE(v20) = v10;
    v22 = 1;
    sub_100D4EAEC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v19 = *(v3 + v9[6]);
    v22 = 2;
    sub_100D4E274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = *(v3 + v9[7]);
    v22 = 3;
    sub_100D51760();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v9[8]);
    v14 = *v13;
    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    v19 = v14;
    v20 = v16;
    v21 = v15;
    v22 = 4;
    sub_100D517B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 5;
    type metadata accessor for TimedData();
    sub_1006F1498(&qword_1019FB938, &type metadata accessor for TimedData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100D53A9C()
{
  result = qword_101A1D790;
  if (!qword_101A1D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D790);
  }

  return result;
}

uint64_t BoardCreateEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for TimedData();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventData();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A1D798);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for BoardCreateEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100D53A9C();
  v31 = v9;
  v13 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100005070(a1);
  }

  v32 = v4;
  v14 = v27;
  LOBYTE(v33) = 0;
  sub_1006F1498(&qword_1019FB948, &type metadata accessor for EventData);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v12, v30, v5);
  v36 = 1;
  sub_100D4EA94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(&v33 + 1);
  v16 = v34;
  v17 = &v12[v10[5]];
  *v17 = v33;
  *(v17 + 1) = v15;
  v17[16] = v16;
  v36 = 2;
  sub_100D4E21C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v12[v10[6]] = v33;
  v36 = 3;
  sub_100D51E18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[v10[7]] = v33;
  v36 = 4;
  sub_100D51E6C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v34;
  v19 = v35;
  v20 = &v12[v10[8]];
  *v20 = v33;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  LOBYTE(v33) = 5;
  sub_1006F1498(&qword_1019FB950, &type metadata accessor for TimedData);
  v21 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v31, v29);
  (*(v24 + 32))(&v12[v10[9]], v32, v21);
  sub_100D5410C(v12, v25);
  sub_100005070(a1);
  return sub_100D54170(v12);
}

uint64_t sub_100D5410C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardCreateEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D54170(uint64_t a1)
{
  v2 = type metadata accessor for BoardCreateEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D542A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_1005B981C(&qword_1019F2D58);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_1005B981C(&qword_1019F2D60);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_1005B981C(&qword_1019F2D68);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_1005B981C(&qword_1019F2D70);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_1005B981C(&qword_1019F2D50);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

uint64_t sub_100D544FC()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimedData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100D545C0()
{
  result = qword_101A1D8E0;
  if (!qword_101A1D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D8E0);
  }

  return result;
}

unint64_t sub_100D54618()
{
  result = qword_101A1D8E8;
  if (!qword_101A1D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D8E8);
  }

  return result;
}

unint64_t sub_100D54670()
{
  result = qword_101A1D8F0;
  if (!qword_101A1D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D8F0);
  }

  return result;
}

uint64_t sub_100D546C4()
{
  if (*v0)
  {
    return 0x6469576472616F62;
  }

  else
  {
    return 0x6965486472616F62;
  }
}

uint64_t sub_100D5470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6965486472616F62 && a2 == 0xEB00000000746867;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6469576472616F62 && a2 == 0xEA00000000006874)
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

uint64_t sub_100D547F4(uint64_t a1)
{
  v2 = sub_100D54A00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D54830(uint64_t a1)
{
  v2 = sub_100D54A00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardContentData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1005B981C(&qword_101A1D8F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100D54A00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100D54A00()
{
  result = qword_101A1D900;
  if (!qword_101A1D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D900);
  }

  return result;
}

uint64_t BoardContentData.init(from:)(void *a1)
{
  result = sub_100D54AD0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100D54A80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100D54AD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100D54AD0(void *a1)
{
  v3 = sub_1005B981C(&qword_101A1D920);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100020E58(a1, a1[3]);
  sub_100D54A00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

unint64_t sub_100D54CE0()
{
  result = qword_101A1D908;
  if (!qword_101A1D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D908);
  }

  return result;
}

unint64_t sub_100D54D38()
{
  result = qword_101A1D910;
  if (!qword_101A1D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D910);
  }

  return result;
}

unint64_t sub_100D54D90()
{
  result = qword_101A1D918;
  if (!qword_101A1D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D918);
  }

  return result;
}

uint64_t sub_100D54E20()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x656C626177617264;
  }
}

uint64_t sub_100D54E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C626177617264 && a2 == 0xEC00000065707954;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010159EAC0 == a2)
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

uint64_t sub_100D54F50(uint64_t a1)
{
  v2 = sub_100D5515C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D54F8C(uint64_t a1)
{
  v2 = sub_100D5515C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DrawableAddData.encode(to:)(void *a1, char a2)
{
  v5 = sub_1005B981C(&qword_101A1D928);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100D5515C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  sub_100D551B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100D5515C()
{
  result = qword_101A1D930;
  if (!qword_101A1D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D930);
  }

  return result;
}

unint64_t sub_100D551B0()
{
  result = qword_101A1D938;
  if (!qword_101A1D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D938);
  }

  return result;
}

uint64_t sub_100D55220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100D55278(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
  }

  return result;
}

uint64_t sub_100D55278(void *a1)
{
  v3 = sub_1005B981C(&qword_101A1D958);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_100020E58(a1, a1[3]);
  sub_100D5515C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(a1);
  }

  v10[14] = 0;
  sub_100D555E8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10[15];
  v10[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100005070(a1);
  return v7 | (v8 << 32);
}

uint64_t getEnumTagSinglePayload for DrawableAddData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[8])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DrawableAddData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_100D554E4()
{
  result = qword_101A1D940;
  if (!qword_101A1D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D940);
  }

  return result;
}

unint64_t sub_100D5553C()
{
  result = qword_101A1D948;
  if (!qword_101A1D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D948);
  }

  return result;
}

unint64_t sub_100D55594()
{
  result = qword_101A1D950;
  if (!qword_101A1D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D950);
  }

  return result;
}

unint64_t sub_100D555E8()
{
  result = qword_101A1D960;
  if (!qword_101A1D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D960);
  }

  return result;
}

uint64_t DrawableType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1954047348;
  v2 = 0x746E656D75636F64;
  v3 = 0x746E656D6D6F63;
  if (a1 != 4)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6570616873;
  if (a1 != 1)
  {
    v4 = 0x616964656DLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100D55700()
{
  String.hash(into:)();
}

unint64_t sub_100D557E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform12DrawableTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D55818(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0xE800000000000000;
  v6 = 0x746E656D75636F64;
  v7 = 0x746E656D6D6F63;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6570616873;
  if (v2 != 1)
  {
    v8 = 0x616964656DLL;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t _s8Freeform12DrawableTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876B60, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D559C8()
{
  result = qword_101A1D968;
  if (!qword_101A1D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D968);
  }

  return result;
}

unint64_t sub_100D55A2C()
{
  result = qword_101A1D970;
  if (!qword_101A1D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1D970);
  }

  return result;
}

uint64_t sub_100D55AA4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 25) << 8 != 768 && *(a1 + 106) != 3)
  {
    a1 = sub_1011255D0(a1);
    if (a1)
    {
      type metadata accessor for CRLWPShapeItemData(0);
      v2 = *(*swift_dynamicCastClassUnconditional() + 912);

      v3 = v2(v9);
      type metadata accessor for CRLWPShapeItemCRDTData(0);
      type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
      sub_1005B981C(&unk_101A0F370);
      CRRegister.wrappedValue.setter();
      v3(v9, 0);
    }
  }

  result = sub_1011255D0(a1);
  if (result)
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v5 = *(*swift_dynamicCastClassUnconditional() + 912);

    v6 = v5(v9);
    type metadata accessor for CRLWPShapeItemCRDTData(0);
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.setter();
    v6(v9, 0);
  }

  if (*(v1 + 25) << 8 != 768 && (*(v1 + 104) & 1) == 0)
  {
    result = sub_1011255D0(result);
    if (result)
    {
      type metadata accessor for CRLWPShapeItemData(0);
      v7 = *(*swift_dynamicCastClassUnconditional() + 912);

      v8 = v7(v9);
      type metadata accessor for CRLWPShapeItemCRDTData(0);
      sub_1005B981C(&unk_101A0D9C0);
      CRRegister.wrappedValue.setter();
      v8(v9, 0);
    }
  }

  return result;
}

uint64_t sub_100D55E34()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100D55F0C()
{
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_100D55FBC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider);

    v3 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (sub_100006370(0, &qword_1019FCFB0))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 resetSelectionToNaturalDataSize:v2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100D560B4()
{
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

void sub_100D56164()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider);

    (*((swift_isaMask & *v2) + 0xE8))();
  }
}

void sub_100D56204()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider);

    sub_10072C654();
  }
}

void *sub_100D56274()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration.Size();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration();
  v77 = *(v12 - 8);
  v78 = v12;
  __chkstk_darwin(v12);
  v74 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  __chkstk_darwin(v17);
  v79 = &v66 - v18;
  v19 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  if (sub_10072C580())
  {
    v68 = v4;
    v71 = ObjectType;
    v76 = v0;
    v20 = [objc_opt_self() mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_100006370(0, &qword_1019F6190);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v27 = objc_opt_self();
    v70 = [v27 labelColor];
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    static UIButton.Configuration.filled()();

    v69 = v24;
    UIButton.Configuration.title.setter();
    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePadding.setter();
    v28 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    (*(v9 + 104))(v11, enum case for UIButton.Configuration.Size.medium(_:), v8);
    UIButton.Configuration.buttonSize.setter();
    v29 = [objc_opt_self() mainScreen];
    v30 = [v29 traitCollection];

    LODWORD(v29) = [v30 crl_isUserInterfaceStyleDark];
    v75 = v26;
    if (v29)
    {
      v31 = v77;
      v32 = v68;
      if (qword_1019F12B0 != -1)
      {
        swift_once();
      }

      v33 = &qword_101AD5DF0;
    }

    else
    {
      v31 = v77;
      v32 = v68;
      if (qword_1019F12A8 != -1)
      {
        swift_once();
      }

      v33 = &qword_101AD5DE8;
    }

    v34 = *v33;
    UIButton.Configuration.baseBackgroundColor.setter();
    v35 = [v27 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v72 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v73);
    UIButton.Configuration.cornerStyle.setter();
    v36 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v36(aBlock, 0);
    UIButton.Configuration.contentInsets.setter();
    *(swift_allocObject() + 16) = 0;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v37 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v37 - 8) + 56))(v32, 0, 1, v37);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v39 = v78;
    v38 = v79;
    (*(v31 + 32))(v79, v16, v78);
    sub_100006370(0, &qword_1019F6E10);
    (*(v31 + 16))(v74, v38, v39);
    v40 = v67;
    v41 = UIButton.init(configuration:primaryAction:)();
    v42 = [v27 labelColor];
    v43 = [v27 labelColor];
    v44 = sub_1005D46A0(0, 0, v42, v43);
    v46 = v45;

    aBlock[4] = v44;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_1018A30A0;
    v47 = _Block_copy(aBlock);

    [v41 setConfigurationUpdateHandler:v47];
    _Block_release(v47);
    v48 = v41;
    v49 = String._bridgeToObjectiveC()();
    [v48 setAccessibilityLabel:v49];

    v50 = v48;
    [v50 setShowsLargeContentViewer:1];
    v51 = String._bridgeToObjectiveC()();
    [v50 setLargeContentTitle:v51];

    [v50 setLargeContentImage:0];
    v52 = objc_allocWithZone(UILargeContentViewerInteraction);
    v53 = [v52 initWithDelegate:v76];
    [v50 addInteraction:v53];

    v54 = [v50 titleLabel];
    if (v54)
    {
      v55 = v54;
      [v54 setTextAlignment:1];
    }

    v56 = [v50 heightAnchor];
    v57 = [v56 constraintGreaterThanOrEqualToConstant:34.0];

    [v57 setActive:1];

    (*(v31 + 8))(v79, v39);
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_1005B981C(&unk_1019F4D60);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_101465920;
    *(v58 + 32) = v50;
    v59 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v61 = [v59 initWithArrangedSubviews:isa];

    [v61 setAxis:0];
    [v61 setAlignment:0];
    [v61 setDistribution:0];
    [v61 setSpacing:12.0];
    v62 = v61;
    v63 = [v62 heightAnchor];
    v64 = [v63 constraintGreaterThanOrEqualToConstant:34.0];

    [v64 setActive:1];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v81;
  }

  return v19;
}

id sub_100D56D8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterImageAndMovieBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100D56E0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  *&v1[v3] = sub_100BD4FC8(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  *&v1[v4] = sub_100BD51B8(_swiftEmptyArrayStorage);
  v1[OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__kShouldDisplayLatestSelection] = 1;
  v5 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorCursorRenderers;
  *&v1[v5] = [objc_opt_self() hashTableWithOptions:512];
  v1[OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_selectionPathValidator] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CRLCollaboratorCursorCoordinator();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100D56F68()
{
  v45 = type metadata accessor for UUID();
  v1 = *(v45 - 8);
  __chkstk_darwin(v45);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  v40 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors;
  v34 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_selectionPathValidator;

  v43 = v10;
  v44 = v0;
  result = swift_beginAccess();
  v12 = 0;
  v13 = (v7 + 63) >> 6;
  v41 = (v1 + 8);
  v42 = v1 + 16;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = *(*(v5 + 56) + ((v12 << 9) | (8 * v15)));
    v17 = *(v16 + 16);
    if (v17)
    {
      (*(v1 + 16))(v3, v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v17 - 1), v45);
      v18 = *(v44 + v43);
      if (*(v18 + 16))
      {

        v19 = sub_10003E994(v3);
        if (v20)
        {
          v38 = v5;
          v39 = v3;
          v21 = *(v18 + 56) + 32 * v19;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);
          v23 = *(v21 + 24);
          v37 = *v21;
          v25 = v22;
          v26 = v24;
          v27 = v23;
          v28 = v44;
          v36 = v27;

          v29 = *(v28 + v40);
          v35 = v25;
          if (v29)
          {
            v30 = sub_1006D2420(v25, 1);
            v31 = 0;
          }

          else
          {
            v32 = v26;
            v30 = 0;
            v31 = v26;
          }

          v33 = v37;
          sub_100D580A8(v31, v30, v37);

          v5 = v38;
          v3 = v39;
        }

        else
        {
        }
      }

      result = (*v41)(v3, v45);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D57260(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorCursorRenderers) addObject:{a1, v6}];
  v44 = a1;
  [a1 setCollaboratorCursorDelegate:v2];
  v9 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;

  v47 = v14;
  result = swift_beginAccess();
  v16 = 0;
  v17 = v11 + 63;
  v18 = v8;
  v19 = v17 >> 6;
  v45 = (v5 + 8);
  v46 = v5 + 16;
  while (v13)
  {
LABEL_11:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = *(*(v10 + 56) + ((v16 << 9) | (8 * v21)));
    v23 = *(v22 + 16);
    if (v23)
    {
      (*(v5 + 16))(v18, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v23 - 1), v4);
      v24 = *(v2 + v47);
      if (*(v24 + 16))
      {

        v25 = sub_10003E994(v18);
        if (v26)
        {
          v41 = v18;
          v42 = v4;
          v43 = v2;
          v27 = *(v24 + 56) + 32 * v25;
          v28 = *(v27 + 8);
          v29 = *(v27 + 16);
          v30 = *(v27 + 24);
          v40 = *v27;
          v39 = v28;
          v31 = v29;
          v32 = v30;

          v33 = v44;
          v38 = v31;
          v34 = [v44 adjustedSelectionPathForRenderingCursorPath:v31];
          v35 = v32;
          if (v34)
          {
            [v32 setObject:v34 forKey:v33];
          }

          else
          {
            [v32 removeObjectForKey:v33];
          }

          v2 = v43;
          v36 = v33;
          v37 = v40;
          [v36 collaboratorCursorSelectionPathChangedFromSelectionPath:0 toSelectionPath:v34 collaboratorPresence:v40];

          v18 = v41;
          v4 = v42;
        }

        else
        {
        }
      }

      result = (*v45)(v18, v4);
    }
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
    }

    v13 = *(v10 + 64 + 8 * v20);
    ++v16;
    if (v13)
    {
      v16 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_100D576AC(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
  v7 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
LABEL_7:
    v19 = [objc_opt_self() mapTableWithKeyOptions:512 valueOptions:0];
    v17 = 0;
    if (!a1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v27 = a1;
    v28 = sub_1006D2420(v27, 1);
    swift_beginAccess();
    v29 = v27;
    v30 = a2;
    v31 = v28;
    v32 = v6;
    v33 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_100A9C2DC(v30, v29, v31, v33, a2 + v32, isUniquelyReferenced_nonNull_native);
    *(v3 + v7) = v37;
    swift_endAccess();
    v35 = v31;
    sub_100D59258(v17, v31, v30);

    goto LABEL_9;
  }

  v9 = sub_10003E994(a2 + v6);
  if ((v10 & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = *(v8 + 56) + 32 * v9;
  v12 = *(v11 + 8);
  v13 = v6;
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v36 = *v11;
  v16 = v12;
  v17 = v14;
  v18 = v15;
  v6 = v13;
  v19 = v18;

  if (!v19)
  {
    goto LABEL_7;
  }

  if (a1)
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_beginAccess();
  v20 = sub_1006F6A70(a2 + v6);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  swift_endAccess();
  sub_100D5A708(v20, v22, v24, v26);
  sub_100D59258(v17, 0, a2);
LABEL_9:
}

void sub_100D57988(uint64_t a1)
{
  v2 = v1;
  v55 = type metadata accessor for UUID();
  v4 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_10003E994(a1);
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    v14 = *(v11 + 56) + 32 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = a1;
    v54 = v4;
    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v20 = v15;
    v21 = v16;
    v53 = v19;
    v22 = v18;
    v23 = v54;
    v24 = v22;

    if (v20 == 1)
    {
      return;
    }

    v52 = v17;

    if (!v20)
    {

      return;
    }

    v25 = v53;
    if (v53)
    {
      v26 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
      swift_beginAccess();
      v27 = *(v2 + v26);
      if (*(v27 + 16))
      {
        v28 = v25;

        v29 = sub_1007C8150(v28);
        if (v30)
        {
          v31 = *(*(v27 + 56) + 8 * v29);

          v32 = *(v31 + 16);
          if (!v32)
          {

            return;
          }

          v33 = v55;
          (*(v23 + 16))(v6, v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * (v32 - 1), v55);

          (*(v23 + 32))(v9, v6, v33);
          sub_1008BAB78();
          v34 = v52;
          v35 = dispatch thunk of static Equatable.== infix(_:_:)();

          if ((v35 & 1) == 0)
          {
            v36 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors;
            if (*(v2 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) == 1)
            {
              v37 = *(v2 + v10);
              if (*(v37 + 16))
              {

                v38 = sub_10003E994(v9);
                if (v39)
                {
                  v40 = *(v37 + 56) + 32 * v38;
                  v41 = *v40;
                  v42 = *(v40 + 8);
                  v43 = *(v40 + 16);
                  v49 = *(v40 + 24);
                  v44 = v41;
                  v45 = v42;
                  v23 = v54;
                  v51 = v45;
                  v50 = v43;
                  v46 = v49;

                  v49 = v28;
                  sub_100D580A8(v53, 0, v44);

                  v34 = v52;
                }

                else
                {
                }
              }
            }

            sub_100D58C04(v28, v34, 1);
            if (*(v2 + v36) == 1)
            {
              v47 = v28;
              sub_100D580A8(0, v53, v20);

              (*(v23 + 8))(v9, v33);
              return;
            }
          }

          (*(v23 + 8))(v9, v33);

          goto LABEL_23;
        }

LABEL_17:

        return;
      }
    }

LABEL_23:
  }
}

void sub_100D57E74(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {
    v6 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;

    v7 = sub_10003E994(a1 + v6);
    if (v8)
    {
      v9 = *(v5 + 56) + 32 * v7;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 8);
      v13 = v10;
      v14 = v11;

      v15 = sub_1006D2420(v12, 1);
      swift_beginAccess();
      v16 = v12;
      v17 = v14;
      v18 = a1;
      v19 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v2 + v4);
      *(v2 + v4) = 0x8000000000000000;
      sub_100A9C2DC(v18, v16, v19, v17, a1 + v6, isUniquelyReferenced_nonNull_native);
      *(v2 + v4) = v23;
      swift_endAccess();
      if (*(v2 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) == 1)
      {
        v21 = v13;
        v22 = v19;
        sub_100D59258(v13, v19, v18);
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

void sub_100D580A8(uint64_t *a1, char *a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  if (a2 && (*(v3 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) & 1) == 0)
  {
    v11 = objc_opt_self();
    LODWORD(v3) = [v11 _atomicIncrementAssertCount];
    v99 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v99);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    v69 = [v68 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v70;

    if (qword_1019F20A0 == -1)
    {
LABEL_49:
      v71 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v3;
      v73 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v73;
      v74 = sub_1005CF04C();
      *(inited + 104) = v74;
      *(inited + 72) = v4;
      *(inited + 136) = &type metadata for String;
      v75 = sub_1000053B0();
      *(inited + 112) = v10;
      *(inited + 120) = a3;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v75;
      *(inited + 152) = 116;
      v76 = v99;
      *(inited + 216) = v73;
      *(inited + 224) = v74;
      *(inited + 192) = v76;
      v77 = v4;
      v78 = v76;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v71, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v80 = static os_log_type_t.error.getter();
      sub_100005404(v71, &_mh_execute_header, v80, "Setting a non-nil collaborator cursor selection path on a renderer when shouldShowCollaboratorCursors is false.", 111, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v81 = swift_allocObject();
      v81[2] = 8;
      v81[3] = 0;
      v81[4] = 0;
      v81[5] = 0;
      v82 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v83 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v84 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v85 = String._bridgeToObjectiveC()();

      [v11 handleFailureInFunction:v83 file:v84 lineNumber:116 isFatal:0 format:v85 args:v82];

      return;
    }

LABEL_60:
    swift_once();
    goto LABEL_49;
  }

  v9 = [*(v3 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorCursorRenderers) allObjects];
  sub_1005B981C(&qword_101A1DBB8);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_56:

    goto LABEL_51;
  }

LABEL_55:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_56;
  }

LABEL_5:
  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  v92 = v10 & 0xC000000000000001;
  v93 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  v94 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
  swift_beginAccess();
  v12 = 0;
  v91 = v11;
  v87 = a3;
  v88 = v5;
  v86 = v7;
  v89 = a1;
  while (1)
  {
    v97 = v12;
    if (v92)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = swift_unknownObjectRetain();
    }

    v96 = v20;
    v21 = [v20 adjustedSelectionPathForRenderingCursorPath:{v7, v86, v87, v88}];
    v22 = *(v5 + v93);
    v95 = v21;
    if (*(v22 + 16))
    {
      v23 = v21;

      v24 = sub_10003E994(a3 + v94);
      if (v25)
      {
        v26 = *(v22 + 56) + 32 * v24;
        v27 = *(v26 + 8);
        v28 = *(v26 + 16);
        v29 = *(v26 + 24);
        v30 = *v26;
        v31 = v27;
        v32 = v28;
        v33 = v29;

        v19 = v96;
        if (v23)
        {
          swift_unknownObjectRetain();
          [v33 setObject:v23 forKey:v96];
          swift_unknownObjectRelease();
        }

        else
        {
          [v33 removeObjectForKey:v96];
        }

        v17 = v91;
        v18 = v97;
        a1 = v89;
        goto LABEL_9;
      }
    }

    sub_1005B981C(&qword_1019F54E0);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_10146C6B0;
    v34 = UUID.uuidString.getter();
    v36 = v35;
    *(v10 + 56) = &type metadata for String;
    v37 = sub_1000053B0();
    *(v10 + 32) = v34;
    *(v10 + 64) = v37;
    *(v10 + 40) = v36;
    if (!v7)
    {
      swift_setDeallocating();
      sub_100005070(v10 + 32);
      goto LABEL_8;
    }

    v38 = v37;
    v90 = objc_opt_self();
    v39 = [v90 _atomicIncrementAssertCount];
    v98 = [objc_allocWithZone(NSString) init];
    sub_100604538(v10, &v98);
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    v42 = [v41 lastPathComponent];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.crlAssert;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_10146CA70;
    *(v47 + 56) = &type metadata for Int32;
    *(v47 + 64) = &protocol witness table for Int32;
    *(v47 + 32) = v39;
    v7 = (v47 + 32);
    v48 = sub_100006370(0, &qword_1019F4D30);
    *(v47 + 96) = v48;
    v49 = sub_1005CF04C();
    *(v47 + 72) = v40;
    *(v47 + 136) = &type metadata for String;
    *(v47 + 144) = v38;
    *(v47 + 104) = v49;
    *(v47 + 112) = v43;
    *(v47 + 120) = v45;
    *(v47 + 176) = &type metadata for UInt;
    *(v47 + 152) = 130;
    v50 = v98;
    *(v47 + 216) = v48;
    *(v47 + 224) = v49;
    *(v47 + 184) = &protocol witness table for UInt;
    *(v47 + 192) = v50;
    v51 = v40;
    v52 = v50;
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v46, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v46, &_mh_execute_header, v54, "updateAllRenderersForSelectionPathChanged called with non-nil selection path without a known cursor for %@", 106, 2, v10);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    a1 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v55 = *(v10 + 16);
    if (v55)
    {
      break;
    }

LABEL_7:
    v13 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    [v90 handleFailureInFunction:v14 file:v15 lineNumber:130 isFatal:0 format:v16 args:v13];

    swift_setDeallocating();
    swift_arrayDestroy();
    a3 = v87;
    v5 = v88;
    v7 = v86;
    a1 = v89;
LABEL_8:
    v17 = v91;
    v19 = v96;
    v18 = v97;
LABEL_9:
    v12 = v18 + 1;
    [v19 collaboratorCursorSelectionPathChangedFromSelectionPath:a1 toSelectionPath:v95 collaboratorPresence:a3];
    swift_unknownObjectRelease();

    if (v12 == v17)
    {
      goto LABEL_51;
    }
  }

  v56 = 0;
  while (1)
  {
    v57 = (v10 + 32 + 40 * v56);
    v4 = v57[3];
    LODWORD(v3) = sub_100020E58(v57, v4);
    v58 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    a3 = *a1;
    v59 = *(v58 + 16);
    v60 = __OFADD__(*a1, v59);
    v61 = *a1 + v59;
    if (v60)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v4 = v58;
    v3 = v5[4];
    if (v3 >= v61)
    {
      goto LABEL_38;
    }

    if (v3 + 0x4000000000000000 < 0)
    {
      goto LABEL_53;
    }

    v7 = v5[5];
    if (2 * v3 > v61)
    {
      v61 = 2 * v3;
    }

    v5[4] = v61;
    if ((v61 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_54;
    }

    v62 = swift_slowAlloc();
    v5[5] = v62;
    if (v7)
    {
      if (v62 != v7 || v62 >= &v7[8 * a3])
      {
        memmove(v62, v7, 8 * a3);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_38:
      v62 = v5[5];
    }

    if (!v62)
    {
      __break(1u);
      return;
    }

    v64 = v4[2];
    if (v64)
    {
      break;
    }

LABEL_23:

    if (++v56 == v55)
    {
      goto LABEL_7;
    }
  }

  v65 = v4 + 4;
  v66 = *a1;
  while (1)
  {
    v67 = *v65++;
    *&v62[8 * v66] = v67;
    v66 = *a1 + 1;
    if (__OFADD__(*a1, 1))
    {
      break;
    }

    *a1 = v66;
    if (!--v64)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_51:
}

uint64_t sub_100D58C04(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_1005B981C(&qword_1019F6DE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v39[-v8];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v39[-v15];
  v17 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  swift_beginAccess();
  v18 = *(v3 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_12;
  }

  v19 = sub_1007C8150(a1);
  if ((v20 & 1) == 0)
  {

LABEL_12:
    sub_1005B981C(&qword_101A1DBB0);
    v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10146C6B0;
    (*(v11 + 16))(v30 + v29, v42, v10);
    swift_beginAccess();
    v31 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v4 + v17);
    *(v4 + v17) = 0x8000000000000000;
    sub_100A9C13C(v30, v31, isUniquelyReferenced_nonNull_native);

    v33 = v44;
    goto LABEL_18;
  }

  v40 = a3;
  v41 = a1;
  v21 = *(*(v18 + 56) + 8 * v19);

  v44 = v21;

  v22 = sub_10100F218(v42, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    sub_10106B390(v22, v16);
    (*(v11 + 8))(v16, v10);
  }

  v25 = *(v11 + 16);
  if (v40)
  {
    v25(v13, v42, v10);
    v26 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_100B356D0(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_100B356D0(v27 > 1, v28 + 1, 1, v26);
    }

    v26[2] = v28 + 1;
    (*(v11 + 32))(v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v13, v10);
  }

  else
  {
    v25(v9, v42, v10);
    v26 = v44;
    v34 = v44[2];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (!v35 || v34 >= v26[3] >> 1)
    {
      v26 = sub_100B356D0(v35, v34 + 1, 1, v26);
      v44 = v26;
    }

    sub_100676F40(0, 0, 1, v9);
  }

  swift_beginAccess();
  v36 = v41;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v4 + v17);
  *(v4 + v17) = 0x8000000000000000;
  sub_100A9C13C(v26, v36, v37);

  v33 = v43;
LABEL_18:
  *(v4 + v17) = v33;
  return swift_endAccess();
}

uint64_t sub_100D59030(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  result = swift_beginAccess();
  v12 = *(v2 + v10);
  if (*(v12 + 16))
  {

    v13 = sub_1007C8150(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v23 = v15;

      v16 = sub_10100F218(a2, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        sub_10106B390(v16, v9);
        (*(v7 + 8))(v9, v6);
        v19 = v23;
        if (*(v23 + 16))
        {
          swift_beginAccess();
          v20 = a1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *(v3 + v10);
          *(v3 + v10) = 0x8000000000000000;
          sub_100A9C13C(v19, v20, isUniquelyReferenced_nonNull_native);

          *(v3 + v10) = v22;
          return swift_endAccess();
        }

        swift_beginAccess();
        sub_1010F5BAC(a1);
        swift_endAccess();
      }
    }
  }

  return result;
}

void sub_100D59258(char *a1, void *a2, char *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v74 - v12;
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v80 = *(v9 + 16);
  v81 = a3;
  v80(&v74 - v21, &a3[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID], v8, v20);
  if (!a1)
  {
LABEL_19:
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

  v77 = v18;
  v82 = v9;
  v23 = v8;
  if (a2)
  {
    sub_100006370(0, &qword_1019FCBC0);
    v24 = a1;
    v25 = a1;
    v26 = a2;
    v27 = static NSObject.== infix(_:_:)();

    if (v27)
    {

      v8 = v23;
      v9 = v82;
      goto LABEL_21;
    }
  }

  else
  {
    v28 = a1;
    v25 = a1;
  }

  sub_100D59030(v25, v22);
  v8 = v23;
  a1 = v25;
  if (*(v4 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) != 1)
  {
LABEL_18:

    v9 = v82;
    goto LABEL_19;
  }

  v29 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  swift_beginAccess();
  v30 = *(v4 + v29);
  v9 = v82;
  if (!*(v30 + 16))
  {

    if (a2)
    {
      goto LABEL_20;
    }

LABEL_39:
    if (*(v4 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) == 1)
    {
      sub_100D580A8(a1, 0, v81);
    }

    goto LABEL_41;
  }

  v31 = sub_1007C8150(v25);
  if ((v32 & 1) == 0)
  {

    if (a2)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

  v33 = v25;
  v34 = *(*(v30 + 56) + 8 * v31);

  v35 = *(v34 + 16);
  if (!v35)
  {

    a1 = v25;
    goto LABEL_18;
  }

  v36 = v82;
  (v80)(v15, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v82 + 72) * (v35 - 1), v8);

  v37 = *(v36 + 32);
  v38 = v77;
  v37(v77, v15, v8);
  v39 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v40 = *(v4 + v39);
  a1 = v33;
  if (*(v40 + 16))
  {

    v41 = sub_10003E994(v38);
    if (v42)
    {
      v43 = *(v40 + 56) + 32 * v41;
      v44 = *v43;
      v45 = *(v43 + 8);
      v76 = v8;
      v46 = *(v43 + 16);
      v74 = *(v43 + 24);
      v47 = v44;
      v75 = v45;
      v48 = v46;
      v49 = v74;

      sub_100D580A8(0, v33, v47);

      a1 = v33;
      v8 = v76;

      goto LABEL_38;
    }
  }

LABEL_38:
  v9 = v82;
  (*(v82 + 8))(v38, v8);
  if (!a2)
  {
    goto LABEL_39;
  }

LABEL_20:
  v25 = a1;
  v26 = a2;
LABEL_21:
  v50 = v26;
  sub_100D58C04(v50, v22, 1);
  if (*(v4 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) != 1)
  {
    (*(v9 + 8))(v22, v8);

    return;
  }

  v51 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
  swift_beginAccess();
  v52 = *(v4 + v51);
  if (!*(v52 + 16))
  {

LABEL_41:
    (*(v9 + 8))(v22, v8);
    return;
  }

  v53 = sub_1007C8150(v50);
  if ((v54 & 1) == 0)
  {

    goto LABEL_41;
  }

  v55 = *(*(v52 + 56) + 8 * v53);

  v56 = *(v55 + 16);
  if (!v56)
  {

    goto LABEL_41;
  }

  v57 = v78;
  (v80)(v78, v55 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v56 - 1), v8);

  v58 = v79;
  (*(v9 + 32))(v79, v57, v8);
  sub_1008BAB78();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_100D580A8(v25, 0, v81);
  }

  v59 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v60 = *(v4 + v59);
  if (*(v60 + 16))
  {

    v61 = sub_10003E994(v58);
    if (v62)
    {
      v63 = *(v60 + 56) + 32 * v61;
      v64 = *v63;
      v65 = *(v63 + 8);
      v82 = v9;
      v66 = *(v63 + 16);
      v67 = *(v63 + 24);
      v68 = v64;
      v81 = v65;
      v69 = v8;
      v70 = v66;
      v71 = v67;

      v72 = v50;
      sub_100D580A8(v25, v50, v68);

      v9 = v82;
      v8 = v69;
      v58 = v79;
    }

    else
    {
    }
  }

  v73 = *(v9 + 8);
  v73(v58, v8);
  v73(v22, v8);
}

id sub_100D59940()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaboratorCursorCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100D59A04(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;

  v8 = sub_10003E994(a2 + v7);
  if ((v9 & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = *(v6 + 56) + 32 * v8;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;

  if (!v17)
  {
LABEL_6:
    v17 = [objc_allocWithZone(NSMapTable) init];
    goto LABEL_7;
  }

LABEL_7:
  v18 = [v17 objectForKey:a1];

  return v18;
}

void sub_100D5A078()
{
  v69 = type metadata accessor for UUID();
  v1 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = &v54 - v4;
  v5 = sub_1005B981C(&qword_101A1DB98);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v54 - v9;
  v10 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
  swift_beginAccess();
  v58 = v10;
  v66 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 64);
  v56 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v64 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_selectionPathValidator;
  v57 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors;
  v55 = (v13 + 63) >> 6;
  v59 = v1 + 16;
  v68 = (v1 + 32);
  v61 = v1;
  v62 = v11;
  v63 = (v1 + 8);

  v16 = 0;
  v72 = v7;
  while (v15)
  {
    v17 = v16;
LABEL_16:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v17 << 6);
    v22 = v62;
    v23 = v61;
    v24 = v60;
    v25 = v69;
    (*(v61 + 16))(v60, *(v62 + 48) + *(v61 + 72) * v21, v69);
    v26 = (*(v22 + 56) + 32 * v21);
    v27 = sub_1005B981C(&unk_101A1DBA0);
    v28 = &v72[*(v27 + 48)];
    v29 = *(v23 + 32);
    v30 = v26[1];
    v70 = *v26;
    v71 = v30;
    v29(v72, v24, v25);
    v31 = v71;
    *v28 = v70;
    *(v28 + 1) = v31;
    v7 = v72;
    (*(*(v27 - 8) + 56))(v72, 0, 1, v27);
    v32 = v70;
    v33 = *(&v70 + 1);
    v34 = v71;
    v35 = *(&v71 + 1);
    v19 = v17;
LABEL_17:
    v36 = v65;
    sub_100D5A698(v7, v65);
    v37 = sub_1005B981C(&unk_101A1DBA0);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v67;
    if (v38 == 1)
    {

      return;
    }

    *&v71 = v19;
    v40 = v36 + *(v37 + 48);
    v42 = *v40;
    v41 = *(v40 + 8);
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    (*v68)(v67, v36, v69);
    v45 = sub_1006D2420(v41, 1);
    sub_100006370(0, &qword_1019FCBC0);
    if (static NSObject.== infix(_:_:)())
    {
      (*v63)(v39, v69);
LABEL_5:

      goto LABEL_6;
    }

    v46 = v39;
    v47 = v58;
    v48 = v66;
    swift_beginAccess();
    v42 = v42;
    v41 = v41;
    v45 = v45;
    v43 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v48 + v47);
    *(v48 + v47) = 0x8000000000000000;
    sub_100A9C2DC(v42, v41, v45, v43, v46, isUniquelyReferenced_nonNull_native);
    *(v48 + v47) = v73;
    swift_endAccess();
    if (*(v48 + v57) != 1)
    {
      (*v63)(v67, v69);
      goto LABEL_5;
    }

    v50 = v45;
    v51 = v43;
    v52 = v44;
    sub_100D580A8(v44, v45, v42);

    (*v63)(v67, v69);
LABEL_6:
    v16 = v71;
    v7 = v72;
  }

  if (v55 <= v16 + 1)
  {
    v18 = v16 + 1;
  }

  else
  {
    v18 = v55;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v55)
    {
      v53 = sub_1005B981C(&unk_101A1DBA0);
      (*(*(v53 - 8) + 56))(v7, 1, 1, v53);
      v15 = 0;
      goto LABEL_17;
    }

    v15 = *(v56 + 8 * v17);
    ++v16;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_100D5A698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1DB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100D5A708(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t type metadata accessor for CRLChangeSelectionFontStyleIntent()
{
  result = qword_101A1DC30;
  if (!qword_101A1DC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D5A874(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[9] = swift_task_alloc();
  type metadata accessor for CRLBoardEntity();
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v4;
  v2[13] = v3;

  return _swift_task_switch(sub_100D5A964, v4, v3);
}

uint64_t sub_100D5A964()
{
  v2 = v0[9];
  v1 = v0[10];
  IntentParameter.wrappedValue.getter();
  sub_1005F1308(v1, v2);
  sub_1006164FC(v1, type metadata accessor for CRLBoardEntity);
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100D5AA78;
  v4 = v0[9];

  return (sub_10128694C)(v4, v0 + 2);
}

uint64_t sub_100D5AA78(void *a1, uint64_t a2)
{
  v5 = *v3;
  v5[15] = a2;
  v5[16] = v2;

  sub_1006164FC(v5[9], type metadata accessor for CRLBoardIdentifier);
  if (v2)
  {
    v6 = v5[12];
    v7 = v5[13];
    v8 = sub_100D5B0EC;
  }

  else
  {
    sub_100005070((v5 + 2));

    v6 = v5[12];
    v7 = v5[13];
    v8 = sub_100D5ABDC;
  }

  return _swift_task_switch(v8, v6, v7);
}