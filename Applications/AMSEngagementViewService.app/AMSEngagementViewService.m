id sub_100001870(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  return sub_100001B3C(0xD000000000000015, 0x8000000100014230, v2);
}

id sub_1000019EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100001A44()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100001AD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001B3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100001BAC()
{
  result = qword_1000218C0;
  if (!qword_1000218C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000218C0);
  }

  return result;
}

void type metadata accessor for LaunchOptionsKey()
{
  if (!qword_1000218D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000218D8);
    }
  }
}

uint64_t sub_100001C48()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001C88()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001CE4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100001D68(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001DE4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100001E64@<X0>(void *a1@<X8>)
{
  result = sub_100001E8C();
  *a1 = result;
  return result;
}

NSString sub_100001E8C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100001EC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100006950();
}

uint64_t sub_100001ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001F18@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001F48(uint64_t a1)
{
  v2 = sub_1000020DC(&qword_1000218D0, type metadata accessor for LaunchOptionsKey);
  v3 = sub_1000020DC(&qword_1000218F8, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000020DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002124(uint64_t a1)
{
  URL.host.getter();
  if (v2)
  {
    String.lowercased()();

    sub_1000048C0();
    v3 = StringProtocol.contains<A>(_:)();

    v4 = type metadata accessor for URL();
    sub_100004FAC(v4);
    (*(v5 + 8))(a1);
    v6 = v3 ^ 1;
  }

  else
  {
    v7 = type metadata accessor for URL();
    sub_100004FAC(v7);
    (*(v8 + 8))(a1);
    v6 = 1;
  }

  return v6 & 1;
}

id sub_100002230@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002838(&qword_100021960, &unk_100013900);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = v41 - v17;
  if (a3)
  {
    v18 = a3;
  }

  else
  {
    result = [objc_opt_self() createBagForSubProfile];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = [objc_allocWithZone(AMSEngagementOfflineBag) initWithUnderlyingBag:result];

    v18 = v21;
  }

  swift_unknownObjectRetain_n();
  v22 = String._bridgeToObjectiveC()();
  sub_100002880(a4, 1, 1, v8);
  v47 = v22;
  v23 = [v18 dictionaryForKey:v22];
  swift_unknownObjectRelease();
  v24 = [v23 valuePromise];

  v25 = [v24 promiseWithTimeout:0.1];
  v48[0] = 0;
  v26 = [v25 resultWithError:v48];

  if (v26)
  {
    v27 = v48[0];
    v28 = v46;
    sub_1000028A8(a1, a2, v46);

    sub_100004974(a4, &qword_100021960, &unk_100013900);
    sub_100004794(v28, a4);
  }

  else
  {
    v43 = a1;
    v29 = v48[0];
    v30 = _convertNSErrorToError(_:)();

    v41[1] = v30;
    swift_willThrow();
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v42 = v9;
    v44 = a2;
    v31 = type metadata accessor for Log();
    v41[0] = sub_1000046E8(v31, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v32 = *(type metadata accessor for LogInterpolation() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v49 = &type metadata for DeepLinkUtil;
    v35 = AMSLogKey();
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v48);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
    v49 = &type metadata for String;
    v48[0] = v37;
    v48[1] = v38;
    static LogInterpolation.safe(_:)();
    sub_100004974(v48, &qword_100021D00, &unk_100013910);
    Log.error(_:)();

    a1 = v43;
    a2 = v44;
    v9 = v42;
  }

  sub_100004860(a4, v16, &qword_100021960, &unk_100013900);
  if (sub_10000476C(v16, 1, v8) == 1)
  {
    sub_100004974(v16, &qword_100021960, &unk_100013900);
    v39 = v45;
    (*(v9 + 16))(v45, a1, v8);
    if (sub_100002124(v39))
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      v40 = v46;
      sub_100003D28(a1, a2, v46);
      swift_unknownObjectRelease();

      sub_100004974(a4, &qword_100021960, &unk_100013900);
      return sub_100004794(v40, a4);
    }
  }

  else
  {

    swift_unknownObjectRelease();
    return sub_100004974(v16, &qword_100021960, &unk_100013900);
  }
}

uint64_t sub_100002838(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000028A8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v133 = a2;
  v5 = sub_100002838(&qword_100021960, &unk_100013900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v126 = v115 - v7;
  v138 = type metadata accessor for Log();
  v131 = *(v138 - 8);
  v8 = *(v131 + 64);
  __chkstk_darwin(v138);
  v10 = v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for URLQueryItem();
  v124 = *(v125 - 8);
  v11 = *(v124 + 64);
  __chkstk_darwin(v125);
  v129 = v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002838(&qword_100021F40, &qword_1000141B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v128 = v115 - v15;
  v132 = type metadata accessor for URLComponents();
  v130 = *(v132 - 8);
  v16 = *(v130 + 64);
  __chkstk_darwin(v132);
  v127 = v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for CharacterSet();
  v135 = *(v136 - 8);
  v18 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002838(&qword_100021968, &qword_100013920);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v142 = v115 - v22;
  v23 = sub_100002838(&qword_100021970, &qword_100013928);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v140 = v115 - v30;
  __chkstk_darwin(v29);
  v139 = (v115 - v31);
  v32 = type metadata accessor for URL();
  count = v32[-1].count;
  v34 = *(count + 64);
  __chkstk_darwin(v32);
  v36 = v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v151 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  v37 = v151;
  if (v151)
  {
    v116 = count;
    v39 = *(count + 16);
    v38 = count + 16;
    v119 = v39;
    v39(v36, a1, v32);
    if (sub_100002124(v36))
    {
      sub_100002880(a3, 1, 1, v32);
    }

    v115[1] = v38;
    v137 = a1;
    v115[0] = v10;
    v117 = v32;
    v118 = a3;
    v41 = v37 + 64;
    v42 = 1 << *(v37 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v37 + 64);
    v45 = (v42 + 63) >> 6;
    v122 = (v24 + 8);
    v121 = (v24 + 32);

    v46 = 0;
    v120 = v28;
    v141 = v37;
    if (!v44)
    {
LABEL_10:
      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v47 >= v45)
        {

          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          goto LABEL_18;
        }

        v44 = *(v41 + 8 * v47);
        ++v46;
        if (v44)
        {
          v46 = v47;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_14:
    while (1)
    {
      v48 = __clz(__rbit64(v44)) | (v46 << 6);
      v49 = *(v37 + 56);
      v50 = (*(v37 + 48) + 16 * v48);
      v52 = *v50;
      v51 = v50[1];
      sub_100004804(v49 + 32 * v48, &v149);
      *&v148 = v52;
      *(&v148 + 1) = v51;
      v145 = v148;
      v146 = v149;
      v147 = v150;

      Regex<A>.init(_:)();
      v53 = v140;
      Regex.ignoresCase(_:)();
      v123 = *v122;
      v123(v28, v23);
      v32 = v139;
      (*v121)(v139, v53, v23);
      URL.absoluteString.getter();
      Regex.firstMatch(in:)();
      v123(v32, v23);

      v54 = sub_100002838(&qword_100021980, &qword_100013938);
      v55 = v142;
      if (sub_10000476C(v142, 1, v54) != 1)
      {
        break;
      }

      sub_100004974(v55, &qword_100021968, &qword_100013920);
      v28 = v120;
      v44 &= v44 - 1;
      sub_100004974(&v145, &qword_100021978, &qword_100013930);
      v37 = v141;
      if (!v44)
      {
        goto LABEL_10;
      }
    }

    sub_100004974(v55, &qword_100021968, &qword_100013920);

    v151 = v145;
    v152 = v146;
    v153 = v147;
LABEL_18:

    sub_100004860(&v151, &v145, &qword_100021988, &qword_100013940);
    v56 = v118;
    v57 = v138;
    v58 = v117;
    if (*(&v145 + 1))
    {
      v148 = v145;
      v149 = v146;
      v150 = v147;
      sub_100004860(&v148, &v145, &qword_100021978, &qword_100013930);

      sub_100002838(&qword_100021990, &qword_100013948);
      if (swift_dynamicCast())
      {
        v59 = v143;
        v60 = URL.absoluteString.getter();
        v62 = v61;
        v63 = v134;
        static CharacterSet.urlQueryAllowed.getter();
        v64._countAndFlagsBits = 0x2B3D26403A3F2F3BLL;
        v64._object = 0xEB00000000202C24;
        CharacterSet.remove(charactersIn:)(v64);
        *&v145 = v60;
        *(&v145 + 1) = v62;
        sub_1000048C0();
        v65 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
        v67 = v66;
        (*(v135 + 8))(v63, v136);

        if (v67)
        {
          v135 = v65;
          v136 = v67;
          if (qword_100021710 != -1)
          {
            swift_once();
          }

          v142 = sub_1000046E8(v57, qword_100022D00);
          v68 = sub_100002838(&qword_100021CF0, &unk_100013EB0);
          v69 = *(type metadata accessor for LogInterpolation() - 8);
          v70 = *(v69 + 72);
          v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v139 = *(v69 + 80);
          v141 = v68;
          *(swift_allocObject() + 16) = xmmword_1000138E0;
          v140 = v71;
          *(&v146 + 1) = &type metadata for DeepLinkUtil;
          v72 = AMSLogKey();
          if (v72)
          {
            v73 = v72;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v77 = 0xEB000000006E6F69;
          v78 = 0x74616E6974736564;
          static LogInterpolation.prefix(_:_:)();

          sub_100004720(&v145);
          LogInterpolation.init(stringLiteral:)();
          *(&v146 + 1) = v58;
          v79 = sub_100004914(&v145);
          v119(v79, v137, v58);
          static LogInterpolation.safe(_:)();
          sub_100004974(&v145, &qword_100021D00, &unk_100013910);
          v137 = 3 * v70;
          LogInterpolation.init(stringLiteral:)();
          sub_100004860(&v148, &v145, &qword_100021978, &qword_100013930);
          v144 = &type metadata for String;
          v143 = v145;
          static LogInterpolation.safe(_:)();
          sub_100004974(&v143, &qword_100021D00, &unk_100013910);
          sub_100004720(&v146);
          Log.default(_:)();

          v80 = v133;
          if (v133)
          {
            v46 = &_s18AppleMediaServices16LogInterpolationV06StringE0V06appendE04safeyypSg_tF_ptr;
            v32 = &AppDelegate;
            v81 = v133;
          }

          else
          {
            v46 = &_s18AppleMediaServices16LogInterpolationV06StringE0V06appendE04safeyypSg_tF_ptr;
            v82 = [objc_opt_self() ams_sharedAccountStore];
            v32 = &AppDelegate;
            v81 = [v82 ams_activeiCloudAccount];

            if (!v81)
            {
              v41 = v117;
              goto LABEL_38;
            }
          }

          v41 = v117;
          v83 = v80;
          v84 = v81;
          if ([v84 isActive])
          {
            v85 = [v84 aa_needsToVerifyTerms];

            if ((v85 & 1) == 0)
            {
              v78 = 0xD00000000000001DLL;
              v77 = 0x8000000100014320;
            }
          }

          else
          {
          }

LABEL_38:
          sub_100004448(v78, v77, v59, &v145);

          if (*(&v146 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_45;
            }

            v86 = v128;
            URLComponents.init(string:)();

            v87 = v132;
            if (sub_10000476C(v86, 1, v132) != 1)
            {
              (*(v130 + 32))(v127, v86, v87);
              v94 = v133;
              if (v133)
              {
                v95 = v133;
                goto LABEL_54;
              }

LABEL_52:
              v96 = *(v46 + 1944);
              v97 = [objc_opt_self() ams_sharedAccountStore];
              v95 = [v97 v32[375].count];

              if (!v95)
              {
                goto LABEL_58;
              }

              v94 = v133;
LABEL_54:
              v98 = v94;
              v99 = v95;
              if ([v99 isActive])
              {
                v100 = [v99 aa_needsToVerifyTerms];

                v101 = v127;
                if ((v100 & 1) == 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }

LABEL_58:
              v101 = v127;
LABEL_59:
              v99 = v95;
LABEL_60:

              v102 = URLComponents.queryItems.getter();
              if (v102)
              {
                v103 = v102;
              }

              else
              {
                v103 = &_swiftEmptyArrayStorage;
              }

              URLQueryItem.init(name:value:)();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_100004A88(0, *(v103 + 2) + 1, 1, v103);
              }

              v104 = v125;
              v106 = *(v103 + 2);
              v105 = *(v103 + 3);
              if (v106 >= v105 >> 1)
              {
                v103 = sub_100004A88((v105 > 1), v106 + 1, 1, v103);
              }

              *(v103 + 2) = v106 + 1;
              (*(v124 + 32))(&v103[((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v106], v129, v104);
              URLComponents.queryItems.setter();
              (*(v131 + 16))(v115[0], v142, v138);
              *(swift_allocObject() + 16) = xmmword_1000138D0;
              *(&v146 + 1) = &type metadata for DeepLinkUtil;
              v107 = AMSLogKey();
              if (v107)
              {
                v108 = v107;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v109 = v116;
              static LogInterpolation.prefix(_:_:)();

              sub_100004720(&v145);
              LogInterpolation.init(stringLiteral:)();
              v110 = v126;
              URLComponents.url.getter();
              if (sub_10000476C(v110, 1, v41) == 1)
              {
                sub_100004974(v110, &qword_100021960, &unk_100013900);
                v145 = 0u;
                v146 = 0u;
              }

              else
              {
                *(&v146 + 1) = v41;
                v111 = sub_100004914(&v145);
                (*(v109 + 32))(v111, v110, v41);
              }

              v112 = v138;
              v113 = v131;
              static LogInterpolation.safe(_:)();
              sub_100004974(&v145, &qword_100021D00, &unk_100013910);
              v114 = v115[0];
              Log.default(_:)();

              (*(v113 + 8))(v114, v112);
              URLComponents.url.getter();
              (*(v130 + 8))(v101, v132);
              sub_100004974(&v148, &qword_100021978, &qword_100013930);
              return sub_100004974(&v151, &qword_100021988, &qword_100013940);
            }

            v88 = &qword_100021F40;
            v89 = &qword_1000141B0;
            v90 = v86;
          }

          else
          {

            v88 = &qword_100021D00;
            v89 = &unk_100013910;
            v90 = &v145;
          }

          sub_100004974(v90, v88, v89);
LABEL_45:
          *(swift_allocObject() + 16) = xmmword_1000138F0;
          *(&v146 + 1) = &type metadata for DeepLinkUtil;
          v91 = AMSLogKey();
          v92 = v118;
          if (v91)
          {
            v93 = v91;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          static LogInterpolation.prefix(_:_:)();

          sub_100004720(&v145);
          LogInterpolation.init(stringLiteral:)();
          Log.error(_:)();

          sub_100004974(&v148, &qword_100021978, &qword_100013930);
          sub_100004974(&v151, &qword_100021988, &qword_100013940);
          v75 = v92;
          v76 = v41;
          return sub_100002880(v75, 1, 1, v76);
        }
      }

      sub_100004974(&v148, &qword_100021978, &qword_100013930);
      v74 = &v151;
    }

    else
    {
      sub_100004974(&v151, &qword_100021988, &qword_100013940);
      v74 = &v145;
    }

    sub_100004974(v74, &qword_100021988, &qword_100013940);
    v75 = v56;
    v76 = v58;
    return sub_100002880(v75, 1, 1, v76);
  }

  return sub_100002880(a3, 1, 1, v32);
}

uint64_t sub_100003D28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v11 + 16);
  v45(v14, a1, v10);
  if (sub_100002124(v14))
  {
    v15 = a1;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Log();
    sub_1000046E8(v16, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v17 = *(type metadata accessor for LogInterpolation() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v49 = &type metadata for DeepLinkUtil;
    v20 = AMSLogKey();
    if (!v20)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v44 = a2;
  v21 = URL.absoluteString.getter();
  v23 = v22;
  static CharacterSet.urlQueryAllowed.getter();
  v24._countAndFlagsBits = 0x2B3D26403A3F2F3BLL;
  v24._object = 0xEB00000000202C24;
  CharacterSet.remove(charactersIn:)(v24);
  v47 = v21;
  v48 = v23;
  sub_1000048C0();
  v25 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v27 = v26;
  (*(v6 + 8))(v9, v5);

  if (!v27)
  {
    v15 = a1;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Log();
    sub_1000046E8(v35, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v36 = *(type metadata accessor for LogInterpolation() - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v49 = &type metadata for DeepLinkUtil;
    v20 = AMSLogKey();
    if (!v20)
    {
      goto LABEL_17;
    }

LABEL_15:
    v39 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v47);
    LogInterpolation.init(stringLiteral:)();
    v49 = v10;
    v42 = sub_100004914(&v47);
    v45(v42, v15, v10);
    static LogInterpolation.sensitive(_:)();
    sub_100004974(&v47, &qword_100021D00, &unk_100013910);
    Log.error(_:)();

    return sub_100002880(v46, 1, 1, v10);
  }

  v28 = v25;
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Log();
  sub_1000046E8(v29, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v30 = *(type metadata accessor for LogInterpolation() - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v49 = &type metadata for DeepLinkUtil;
  v33 = AMSLogKey();
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&v47);
  LogInterpolation.init(stringLiteral:)();
  v47 = v28;
  v48 = v27;

  v40._countAndFlagsBits = 46;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v49 = &type metadata for String;
  static LogInterpolation.sensitive(_:)();
  sub_100004974(&v47, &qword_100021D00, &unk_100013910);
  Log.default(_:)();

  sub_100004510(v28, v27, v44);
}

double sub_100004448@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000049CC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100004804(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1000044AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100004A44(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100004804(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_100004510(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
    v17 = a3;
  }

  else
  {
    v7 = [objc_opt_self() ams_sharedAccountStore];
    v17 = [v7 ams_activeiCloudAccount];

    if (!v17)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v6 = v17;
  }

  v8 = a3;
  v9 = v6;
  if ([v9 isActive])
  {
    v10 = [v9 aa_needsToVerifyTerms];

    if ((v10 & 1) == 0)
    {
      v11 = 0xED00004C5255534DLL;
      v12 = 0x416465646F636E65;
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_10:
  v11 = 0xEA00000000004C52;
  v12 = 0x556465646F636E65;
LABEL_11:
  v13._countAndFlagsBits = 63;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v12;
  v14._object = v11;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 61;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);
  URL.init(string:)();
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004720(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004794(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002838(&qword_100021960, &unk_100013900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002838(a3, a4);
  sub_100004FAC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000048C0()
{
  result = qword_100021998;
  if (!qword_100021998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021998);
  }

  return result;
}

uint64_t *sub_100004914(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100004974(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002838(a2, a3);
  sub_100004FAC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1000049CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100004D74(a1, a2, v6);
}

unint64_t sub_100004A44(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004E28(a1, v4);
}

char *sub_100004A88(char *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_100004B74(v8, v7);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100004C70(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100004B74(uint64_t a1, uint64_t a2)
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

  sub_100002838(&qword_1000219A0, qword_100013950);
  v4 = *(type metadata accessor for URLQueryItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004C70(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for URLQueryItem(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for URLQueryItem();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_100004D48(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

unint64_t sub_100004D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100004E28(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100004EEC(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100004F48(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  URL.scheme.getter();
  if (!v6)
  {
    return 0;
  }

  v7 = sub_100005654();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = sub_100005320(a1, a2, a3);
  v9 = sub_10000505C(v8);

  return v9;
}

uint64_t sub_10000505C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002838(&qword_100021A70, "v6");
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100004804(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000577C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000577C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000577C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_10000577C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_100005320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002838(&qword_100021A60, "t6");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100013980;
  strcpy((inited + 32), "nativeHandling");
  *(inited + 47) = -18;
  v6 = URL.scheme.getter();
  v8 = sub_1000055C0(v6, v7);

  *(inited + 48) = v8 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000018;
  *(inited + 104) = 0x8000000100013970;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x707954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 1802398060;
  *(inited + 152) = 0xE400000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 7107189;
  *(inited + 184) = 0xE300000000000000;
  v9 = URL.absoluteString.getter();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v9;
  *(inited + 200) = v10;
  v11 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    *(&v22 + 1) = &type metadata for String;
    *&v21 = a2;
    *(&v21 + 1) = a3;
    sub_10000577C(&v21, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000578C(v20, 0x7250656372756F73, 0xED0000737365636FLL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    sub_100005714(&v21);
    v13 = sub_1000049CC(0x7250656372756F73, 0xED0000737365636FLL);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = v11[3];
      sub_100002838(&qword_100021A68, "r6");
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17);
      v18 = *(v11[6] + 16 * v15 + 8);

      sub_10000577C((v11[7] + 32 * v15), v20);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    sub_100005714(v20);
  }

  return v11;
}

uint64_t sub_1000055C0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100005954();
  v5 = v5 && v4 == 0xE600000000000000;
  if (v5)
  {
    return 0;
  }

  sub_100005940();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  if (v2 == 0x69752D736D61 && a2 == 0xE600000000000000)
  {
    return 1;
  }

  sub_100005940();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100005654()
{
  sub_100005954();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2)
  {
    return 1;
  }

  v3 = v1;
  sub_100005940();
  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v5 = v0 == 0x69752D736D61 && v3 == 0xE600000000000000;
  v6 = v5;
  if ((v4 & 1) != 0 || v6)
  {
    return 1;
  }

  sub_100005940();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100005714(uint64_t a1)
{
  v2 = sub_100002838(&qword_100021D00, &unk_100013910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_10000577C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_10000578C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000049CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002838(&qword_100021A68, "r6");
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000049CC(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_100004720(v22);

    return sub_10000577C(a1, v22);
  }

  else
  {
    sub_1000058D4(v16, a2, a3, a1, v21);
  }
}

_OWORD *sub_1000058D4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000577C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10000596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(_UIContentUnavailableView);
  result = sub_100006770();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView] = result;
    *&v3[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_error] = a1;
    v10 = &v3[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_retryAction];
    *v10 = a2;
    v10[1] = a3;
    swift_errorRetain();
    sub_1000066F8(a2);
    v11 = type metadata accessor for ErrorViewController();
    v25.receiver = v4;
    v25.super_class = v11;
    v12 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
    v13 = qword_100021710;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Log();
    sub_1000046E8(v15, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v16 = *(type metadata accessor for LogInterpolation() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v24 = v11;
    v23[0] = v14;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v23);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v24 = &type metadata for String;
    v23[0] = v21;
    v23[1] = v22;
    static LogInterpolation.safe(_:)();
    sub_100005714(v23);
    Log.error(_:)();

    sub_100006708(a2);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005C10()
{
  v1 = objc_allocWithZone(_UIContentUnavailableView);
  v2 = sub_100006770();
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100005CF8()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    return v3;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for ErrorViewController();
    v5 = objc_msgSendSuper2(&v6, "navigationItem");

    return v5;
  }
}

void sub_100005D98()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  sub_1000067A0(v2, "setBackgroundColor:");
}

void sub_100005E70()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_100005FEC();
}

id sub_100005EF0()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView];
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  return [v1 setFrame:{v4, v6, v8, v10}];
}

void sub_100005FEC()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_100006044();
}

void sub_100006044()
{
  type metadata accessor for Localizations();
  v1 = sub_1000067B8(0xD000000000000015, 0x8000000100014530);
  v3 = v2;
  v4 = sub_1000067B8(0xD000000000000014, 0x8000000100014550);
  sub_100006148(v1, v3, 0, 0, v4, v5);

  v6 = [v0 view];
  [v6 addSubview:*&v0[OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView]];
}

void sub_100006148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_contentUnavailableView);
  v13 = [v12 buttonTitle];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (!a6)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (v15 == a5 && v17 == a6)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  v20 = [v12 message];
  if (!v20)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_32:
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100006750;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EB54;
    aBlock[3] = &unk_10001CBD8;
    v35 = _Block_copy(aBlock);

    sub_1000067A0(v36, "setButtonAction:");
    _Block_release(v35);
    if (a6)
    {
      v37 = String._bridgeToObjectiveC()();
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    sub_1000067A0(v37, "setButtonTitle:");

    if (a4)
    {
      v39 = String._bridgeToObjectiveC()();
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    sub_1000067A0(v39, "setMessage:");

    if (a2)
    {
      v41 = String._bridgeToObjectiveC()();
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    sub_1000067A0(v41, "setTitle:");

    return;
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!a4)
  {
    goto LABEL_31;
  }

  if (v22 == a3 && v24 == a4)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v27 = [v12 title];
  if (!v27)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (!a2)
  {
    goto LABEL_31;
  }

  if (v29 != a1 || v31 != a2)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      return;
    }

    goto LABEL_32;
  }
}

void sub_100006480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService19ErrorViewController_retryAction);
    sub_1000066F8(v2);

    if (v2)
    {
      v2();
      sub_100006708(v2);
    }
  }
}

id sub_1000065A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000665C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a7 style:{a1, a2, a3, a4}];

  return v14;
}

uint64_t sub_1000066F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006708(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100006770()
{

  return sub_10000665C(0.0, 0.0, 0.0, 0.0, 0, 0xE000000000000000, 0);
}

id sub_1000067A0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000067B8(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100006874()
{
  v0 = type metadata accessor for Log();
  sub_1000068EC(v0, qword_100022D00);
  sub_1000046E8(v0, qword_100022D00);
  return Log.init(subsystem:category:)();
}

uint64_t *sub_1000068EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100006950()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_100006A08(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100006A60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100006AB4()
{
  result = qword_100021B50;
  if (!qword_100021B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B50);
  }

  return result;
}

unint64_t sub_100006B1C()
{
  result = qword_100021B58;
  if (!qword_100021B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B58);
  }

  return result;
}

Swift::Int sub_100006B70(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_100006BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100006C14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006C3C();
  *a1 = result;
  return result;
}

uint64_t sub_100006C50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006C80(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100006C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100007008(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100006CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006CE8(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_100006CF8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_100006D24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006D58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100006D58(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100006D7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006DB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100006DB0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100006E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006E30(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_100006EA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100006EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100006BB4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100006F00()
{
  result = qword_100021B60;
  if (!qword_100021B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B60);
  }

  return result;
}

unint64_t sub_100006F58()
{
  result = qword_100021B68;
  if (!qword_100021B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B68);
  }

  return result;
}

unint64_t sub_100006FB0()
{
  result = qword_100021B70;
  if (!qword_100021B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B70);
  }

  return result;
}

Swift::Int sub_100007070(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000070F0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100007154()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000071DC(uint64_t a1)
{
  if (!a1)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v3 = 0;
LABEL_5:
    v4 = 1;
    return v3 | (v4 << 8);
  }

  v5 = qword_100021710;

  if (v5 != -1)
  {
    sub_100009190();
  }

  v6 = type metadata accessor for Log();
  sub_1000046E8(v6, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v7 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v16 = type metadata accessor for RemoteEngagementPresenter();
  v15[0] = v1;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v15);
  LogInterpolation.init(stringLiteral:)();
  v16 = sub_100002838(&qword_100021D48, &qword_100013ED0);
  v15[0] = a1;
  static LogInterpolation.safe(_:)();
  sub_100005714(v15);
  Log.default(_:)();

  v3 = 0;
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_1000073E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Log();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v10 = 1;
    v9 = 3;
    return v9 | (v10 << 8);
  }

  if (a1 == 1)
  {
    v9 = 1;
LABEL_4:
    v10 = 1;
    return v9 | (v10 << 8);
  }

  v54[0] = 0xD000000000000015;
  v54[1] = 0x8000000100014870;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v55);
  if (!v60)
  {
    sub_100005714(v59);
    goto LABEL_10;
  }

  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v10 = 1;
    v9 = 2;
    return v9 | (v10 << 8);
  }

  v11 = v54[0];
  v12 = v54[1];
  v13 = sub_100008CB8(0, &qword_100021D28, NSKeyedUnarchiver_ptr);
  v14 = sub_100008CB8(0, &qword_100021D30, AMSEngagementRequest_ptr);
  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v49 = v14;
  v50 = v13;
  v53 = v12;
  if (!v15)
  {
    sub_100008C60(v11, v53);
    goto LABEL_10;
  }

  v51 = v15;
  strcpy(v54, "bagData");
  v54[1] = 0xE700000000000000;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v55);
  if (!v60)
  {
    sub_100005714(v59);
LABEL_19:
    v52 = [objc_opt_self() createBagForSubProfile];
    goto LABEL_20;
  }

  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = v54[0];
  v18 = v54[1];
  sub_100008CB8(0, &qword_100021D40, AMSSnapshotBag_ptr);
  v52 = sub_100007BEC(v17, v18);
  if (!v52)
  {
    goto LABEL_19;
  }

LABEL_20:
  strcpy(v54, "clientInfoData");
  HIBYTE(v54[1]) = -18;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v55);
  v48 = v11;
  if (!v60)
  {
    sub_100005714(v59);
    goto LABEL_24;
  }

  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v44 = 0;
    goto LABEL_25;
  }

  v19 = v54[0];
  v20 = v54[1];
  sub_100008CB8(0, &qword_100021D38, AMSProcessInfo_ptr);
  v47 = v19;
  v50 = v20;
  v44 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  sub_100008C60(v47, v50);
  if (!v44)
  {
    sub_100008C60(v48, v53);

    swift_unknownObjectRelease();
    v9 = 0;
    goto LABEL_4;
  }

  v45 = v44;
LABEL_25:
  strcpy(v54, "attachedToApp");
  HIWORD(v54[1]) = -4864;
  sub_10000923C();
  sub_1000091EC();
  sub_100004F48(&v55);
  if (!v60)
  {
    sub_100005714(v59);
    goto LABEL_29;
  }

  sub_100008CB8(0, &qword_100021D20, NSNumber_ptr);
  sub_100009230();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    LODWORD(v50) = 0;
    goto LABEL_30;
  }

  v21 = v54[0];
  LODWORD(v50) = [v54[0] BOOLValue];

LABEL_30:
  if (qword_100021710 != -1)
  {
    sub_100009190();
  }

  v22 = v44;
  v23 = sub_1000046E8(v4, qword_100022D00);
  (*(v5 + 16))(v8, v23, v4);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v24 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v24);
  v26 = *(v25 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100013CE0;
  v47 = v29;
  v58 = type metadata accessor for RemoteEngagementPresenter();
  v55 = v2;

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v32 = v53;
  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&v55);
  LogInterpolation.init(stringLiteral:)();
  LogInterpolation.init(stringLiteral:)();
  v58 = v49;
  v55 = v51;
  v33 = v51;
  static LogInterpolation.safe(_:)();
  sub_100005714(&v55);
  LogInterpolation.init(stringLiteral:)();
  v34 = v52;
  if (v52)
  {
    ObjectType = swift_getObjectType();
    v36 = v34;
  }

  else
  {
    v36 = 0;
    ObjectType = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v36;
  v58 = ObjectType;
  swift_unknownObjectRetain();
  static LogInterpolation.safe(_:)();
  sub_100005714(&v55);
  LogInterpolation.init(stringLiteral:)();
  if (v44)
  {
    v37 = sub_100008CB8(0, &qword_100021D38, AMSProcessInfo_ptr);
    v38 = v44;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v38;
  v58 = v37;
  v39 = v38;
  static LogInterpolation.safe(_:)();
  sub_100005714(&v55);
  LogInterpolation.init(stringLiteral:)();
  v58 = &type metadata for Bool;
  v40 = v50;
  LOBYTE(v55) = v50;
  static LogInterpolation.safe(_:)();
  sub_100005714(&v55);
  Log.default(_:)();
  sub_100008C60(v48, v32);

  (*(v5 + 8))(v8, v4);
  *(v2 + 24) = v40;
  v41 = *(v2 + 32);
  *(v2 + 32) = v52;
  swift_unknownObjectRelease();
  v42 = *(v2 + 40);
  *(v2 + 40) = v22;

  v43 = *(v2 + 56);
  *(v2 + 56) = v51;

  v9 = 0;
  v10 = 0;
  return v9 | (v10 << 8);
}

id sub_100007BEC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_100008C60(a1, a2);
  return v6;
}

uint64_t sub_100007C64(uint64_t a1)
{
  v2 = v1;
  if (qword_100021710 != -1)
  {
LABEL_23:
    sub_100009190();
  }

  v4 = type metadata accessor for Log();
  sub_1000046E8(v4, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v5 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v5);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v62 = *(v6 + 72);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v65 = type metadata accessor for RemoteEngagementPresenter();
  v63 = v2;
  v64[0] = v2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v64);
  LogInterpolation.init(stringLiteral:)();
  v65 = sub_100002838(&unk_100021D10, &unk_100013EC0);
  v64[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100005714(v64);
  Log.default(_:)();

  v2 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v52 = "Home button tapped";
  v58 = "riggered. Button actions:";
  v56 = "Home button action triggered";
  v57 = AMSErrorDomain;
  v55 = "View Service Failed";
  v54 = AMSErrorUserInfoKeyEngagementPresented;

  v15 = 0;
  v60 = xmmword_1000138F0;
  v53 = xmmword_100013CF0;
  v16 = v63;
  v59 = a1;
  while (v13)
  {
LABEL_12:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    if ((*(*(a1 + 48) + ((v15 << 9) | (8 * v18))) & 0x10) != 0)
    {
      v19 = *(v16 + 24);
      if (v19 == 2 || (v19 & 1) == 0)
      {
        v30 = swift_allocObject();
        sub_1000091C0(v30, v31, v32, v33, v34, v35, v36, v37, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60);
        v38 = AMSLogKey();
        if (v38)
        {
          v39 = v38;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100009208();

        sub_100004720(v64);
        LogInterpolation.init(stringLiteral:)();
        Log.default(_:)();

        v61 = v57;
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        sub_100002838(&qword_100021A60, "t6");
        inited = swift_initStackObject();
        *(inited + 16) = v53;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v43;
        v44 = sub_100008CB8(0, &qword_100021D20, NSNumber_ptr);
        v45.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        *(inited + 72) = v44;
        *(inited + 48) = v45;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v47 = AMSCustomError();

        v16 = v63;
        v48 = *(v63 + 16);
        v64[0] = 0;
        v64[1] = v47;
        v65 = 0;
        v66 = 0;
        v64[2] = 0;
        v67 = 0;
        v49 = v47;
        SyncEvent.post(_:)();

        a1 = v59;
      }

      else
      {
        v20 = swift_allocObject();
        sub_1000091C0(v20, v21, v22, v23, v24, v25, v26, v27, v51, v52, v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60);
        v28 = AMSLogKey();
        if (v28)
        {
          v29 = v28;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100009208();

        sub_100004720(v64);
        LogInterpolation.init(stringLiteral:)();
        Log.default(_:)();

        v16 = v63;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v2 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_12;
    }
  }
}

void sub_100008208()
{
  v1 = v0;
  v2 = v0[4];
  if (v2 && (v3 = v0[7]) != 0)
  {
    v4 = v0[2];
    v5 = v1[5];
    v6 = swift_allocObject();
    swift_weakInit();
    v21 = v3;
    v22 = v2;
    v23 = v5;
    v24 = sub_100008C58;
    v25 = v6;
    v26 = 1;
    v7 = v5;

    swift_unknownObjectRetain();
    v8 = v3;
    SyncEvent.post(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v9 = type metadata accessor for Log();
    sub_1000046E8(v9, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v10 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v10);
    v12 = *(v11 + 72);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v24 = type metadata accessor for RemoteEngagementPresenter();
    v21 = v0;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v21);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    v17 = v0[2];
    sub_100008BC4();
    v18 = swift_allocError();
    *v19 = 1;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v18;
    v22 = sub_100008C50;
    v23 = v20;
    v24 = 0;
    v25 = 0;
    v26 = 2;

    SyncEvent.post(_:)();
  }
}

uint64_t sub_1000084E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    sub_100008BC4();
    swift_allocError();
    *v2 = 1;
    SyncEvent.post(_:)();
  }

  return result;
}

uint64_t sub_100008588(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Log();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v30 = a1;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v31 = a2;
    v11 = sub_1000046E8(v4, qword_100022D00);
    (*(v5 + 16))(v8, v11, v4);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v12 = *(type metadata accessor for LogInterpolation() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138E0;
    *(&v35 + 1) = type metadata accessor for RemoteEngagementPresenter();
    *&v34 = v10;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v34);
    LogInterpolation.init(stringLiteral:)();
    v17 = v30;
    if (v30)
    {
      v18 = sub_100008CB8(0, &qword_100021D08, AMSEngagementResult_ptr);
      v19 = v17;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      *(&v34 + 1) = 0;
      *&v35 = 0;
    }

    *&v34 = v19;
    *(&v35 + 1) = v18;
    v20 = v17;
    static LogInterpolation.safe(_:)();
    sub_100005714(&v34);
    LogInterpolation.init(stringLiteral:)();
    v21 = v31;
    if (v31)
    {
      swift_getErrorValue();
      v22 = v32;
      v23 = v33;
      *(&v35 + 1) = v33;
      v24 = sub_100004914(&v34);
      v25 = *(*(v23 - 8) + 16);
      v26 = v22;
      v27 = v23;
      v17 = v30;
      v21 = v31;
      v25(v24, v26, v27);
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_100005714(&v34);
    Log.default(_:)();

    (*(v5 + 8))(v8, v4);
    v28 = *(v10 + 16);
    *&v34 = v17;
    *(&v34 + 1) = v21;
    v36 = 0;
    v35 = 0uLL;
    v37 = 0;
    v29 = v20;
    swift_errorRetain();
    SyncEvent.post(_:)();
  }

  return result;
}

uint64_t sub_100008958()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100008990()
{
  sub_100008958();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_1000089E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100008A0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100008A20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t sub_100008A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_100008ACC()
{
  result = qword_100021CE0;
  if (!qword_100021CE0)
  {
    type metadata accessor for RemoteEngagementPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021CE0);
  }

  return result;
}

uint64_t sub_100008B20()
{
  v1 = sub_100002838(&qword_100021CE8, &qword_100013EA8);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = SyncEvent.init()();
  *(v0 + 24) = 2;
  *(v0 + 56) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  return v0;
}

void sub_100008B84()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    sub_100008208();
    *(v0 + 48) = 1;
  }
}

unint64_t sub_100008BC4()
{
  result = qword_100021CF8;
  if (!qword_100021CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021CF8);
  }

  return result;
}

uint64_t sub_100008C18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008CB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008D34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100008DBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100008E88);
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

uint64_t getEnumTagSinglePayload for RemoteEngagementPresenter.ActivationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteEngagementPresenter.ActivationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100009014);
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

unint64_t sub_100009058()
{
  result = qword_100021D50;
  if (!qword_100021D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D50);
  }

  return result;
}

unint64_t sub_1000090B0()
{
  result = qword_100021D58;
  if (!qword_100021D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D58);
  }

  return result;
}

unint64_t sub_100009108()
{
  result = qword_100021D60;
  if (!qword_100021D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D60);
  }

  return result;
}

uint64_t sub_100009190()
{

  return swift_once();
}

uint64_t sub_1000091C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
}

double sub_1000091EC()
{

  return sub_1000044AC(v1 - 168, v0, (v1 - 128));
}

uint64_t sub_100009208()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000923C()
{

  return AnyHashable.init<A>(_:)(v0 - 184);
}

uint64_t sub_100009258()
{
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection];
  if (!v1)
  {
    return 0;
  }

  sub_10000EBA8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  aBlock[4] = sub_10000E010;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000095C8;
  aBlock[3] = &unk_10001D188;
  v3 = _Block_copy(aBlock);
  v4 = v1;
  v5 = v0;

  v6 = [v4 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002838(&qword_100021E60, &qword_100014178);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000093AC(uint64_t a1, void *a2)
{
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Log();
  sub_1000046E8(v3, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v4 = *(type metadata accessor for LogInterpolation() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v14 = type metadata accessor for RemoteEngagementViewController();
  v13[0] = a2;
  v7 = a2;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v13);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v14 = v12;
  v10 = sub_100004914(v13);
  (*(*(v12 - 8) + 16))(v10);
  static LogInterpolation.safe(_:)();
  sub_100005714(v13);
  Log.error(_:)();
}

void sub_1000095C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100009630()
{
  sub_10000EBA8();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v11 = sub_10000E008;
  v12 = v1;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v10 = sub_100009A6C;
  *(&v10 + 1) = &unk_10001D138;
  v2 = _Block_copy(&aBlock);
  v3 = v0;

  v4 = [v3 _remoteViewControllerProxyWithErrorHandler:v2];
  _Block_release(v2);
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  aBlock = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    sub_100002838(&qword_100021E58, &unk_100014168);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005714(&aBlock);
    return 0;
  }
}

uint64_t sub_100009794(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Log();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v9 = sub_1000046E8(v4, qword_100022D00);
  (*(v5 + 16))(v8, v9, v4);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v10 = *(type metadata accessor for LogInterpolation() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  *(&v23 + 1) = type metadata accessor for RemoteEngagementViewController();
  *&v22 = a2;
  v13 = a2;
  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&v22);
  LogInterpolation.init(stringLiteral:)();
  if (a1)
  {
    swift_getErrorValue();
    v16 = v20;
    v17 = v21;
    *(&v23 + 1) = v21;
    v18 = sub_100004914(&v22);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  static LogInterpolation.safe(_:)();
  sub_100005714(&v22);
  Log.error(_:)();

  return (*(v5 + 8))(v8, v4);
}

void sub_100009A6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100009AD8(void *a1, void (*a2)(void))
{
  v3 = v2;
  if (a1 && (v6 = [a1 xpcEndpoint]) != 0)
  {
    v7 = v6;
    v8 = sub_10000EA68(a1);
    v9 = *&v3[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
    v10 = sub_1000071DC(v8);

    if ((v10 & 0x100) != 0)
    {
      if (qword_100021710 != -1)
      {
        sub_100009190();
      }

      v26 = type metadata accessor for Log();
      sub_1000046E8(v26, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      v27 = type metadata accessor for LogInterpolation();
      sub_1000091B0(v27);
      v29 = *(v28 + 72);
      sub_10000EC10();
      *(swift_allocObject() + 16) = xmmword_1000138D0;
      v34 = type metadata accessor for RemoteEngagementViewController();
      v33[0] = v3;
      v30 = v3;
      v31 = AMSLogKey();
      if (v31)
      {
        v32 = v31;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(v33);
      LogInterpolation.init(stringLiteral:)();
      v34 = &type metadata for RemoteEngagementPresenter.ConfigurationError;
      LOBYTE(v33[0]) = v10 & 1;
      static LogInterpolation.safe(_:)();
      sub_100005714(v33);
      Log.error(_:)();
    }

    else
    {
      if (qword_100021710 != -1)
      {
        sub_100009190();
      }

      v11 = type metadata accessor for Log();
      sub_1000046E8(v11, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      v12 = type metadata accessor for LogInterpolation();
      sub_1000091B0(v12);
      v14 = *(v13 + 72);
      sub_10000EC10();
      *(swift_allocObject() + 16) = xmmword_1000138F0;
      v34 = type metadata accessor for RemoteEngagementViewController();
      v33[0] = v3;
      v15 = v3;
      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(v33);
      LogInterpolation.init(stringLiteral:)();
      Log.default(_:)();
    }

    sub_10000B72C(v7);
    sub_10000B1A8();
    sub_10000B33C();
    if (a2)
    {
      a2();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v18 = type metadata accessor for Log();
    sub_1000046E8(v18, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    sub_10000EC8C();
    v19 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v19);
    v21 = *(v20 + 72);
    sub_10000EC10();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v34 = type metadata accessor for RemoteEngagementViewController();
    v33[0] = v3;
    v22 = v3;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v33);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    if (a2)
    {
      return (a2)(result);
    }
  }

  return result;
}

uint64_t sub_10000A0A0(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  if (a1)
  {
    v5 = sub_10000EA68(a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *&v2[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
  v7 = sub_1000073E4(v5);

  if ((v7 & 0x100) != 0)
  {
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v15 = type metadata accessor for Log();
    sub_1000046E8(v15, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    sub_10000EC8C();
    v16 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v16);
    v18 = *(v17 + 72);
    sub_10000EC10();
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    v24 = type metadata accessor for RemoteEngagementViewController();
    v23[0] = v3;
    v19 = v3;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v23);
    LogInterpolation.init(stringLiteral:)();
    v24 = &type metadata for RemoteEngagementPresenter.ActivationError;
    LOBYTE(v23[0]) = v7;
    static LogInterpolation.safe(_:)();
    sub_100005714(v23);
    Log.error(_:)();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v8 = type metadata accessor for Log();
    sub_1000046E8(v8, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    sub_10000EC8C();
    v9 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v9);
    v11 = *(v10 + 72);
    sub_10000EC10();
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v24 = type metadata accessor for RemoteEngagementViewController();
    v23[0] = v3;
    v12 = v3;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v23);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_10000A4D8(uint64_t result)
{
  if (result)
  {
    sub_10000A540(result);
    v3 = sub_10000A848(v2);
    v4 = *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter);
    sub_100007C64(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000A540(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = &_swiftEmptyArrayStorage;
    sub_10000E950(0, v2 & ~(v2 >> 63), 0);
    v33 = &_swiftEmptyArrayStorage;
    v35 = sub_100011BDC(v1);
    v36 = v3;
    v37 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v8 = v35;
        v7 = v36;
        v9 = v37;
        v10 = v1;
        sub_100011C94(v35, v36, v37, v1);
        v12 = v11;
        v13 = [v11 events];

        v14 = v33;
        v38 = v33;
        v16 = v33[2];
        v15 = v33[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000E950((v15 > 1), v16 + 1, 1);
          v14 = v38;
        }

        v14[2] = v16 + 1;
        v14[v16 + 4] = v13;
        v33 = v14;
        if (v32)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v21 = v31;
          sub_100002838(&qword_100021E90, &qword_100014188);
          v22 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v22(v34, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v10;
          v17 = 1 << *(v10 + 32);
          if (v8 >= v17)
          {
            goto LABEL_32;
          }

          v18 = v8 >> 6;
          v19 = *(v30 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v10 + 36) != v7)
          {
            goto LABEL_34;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v21 = v31;
          }

          else
          {
            v23 = v18 << 6;
            v24 = v18 + 1;
            v25 = (v29 + 8 * v18);
            v21 = v31;
            while (v24 < (v17 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_10000EAD4(v8, v7, 0);
                v17 = __clz(__rbit64(v26)) + v23;
                goto LABEL_27;
              }
            }

            sub_10000EAD4(v8, v7, 0);
          }

LABEL_27:
          v28 = *(v1 + 36);
          v35 = v17;
          v36 = v28;
          v37 = 0;
        }

        if (v5 == v21)
        {
          sub_10000EAD4(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_10000A848(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000E0C8();
  v3 = Set.init(minimumCapacity:)();
  v9 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_10000E180(&v8, *(a1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void sub_10000A974()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "loadView");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000AA5C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_10000AFA0();
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  sub_10000E018(v2, v3);
  ViewControllerPresenter.viewDidLoad()();
}

void sub_10000AB9C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  sub_10000B4D0();
  v3 = *&v1[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
  sub_100008B84();
}

uint64_t sub_10000AC48(char a1)
{
  v3 = type metadata accessor for ViewWillDisappearReason();
  v4 = sub_10000EB94(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000EC1C();
  v11 = v10 - v9;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v16, "viewWillDisappear:", a1 & 1);
  v12 = *&v1[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
  static ViewWillDisappearReason.inferred(for:)();
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  sub_10000E018(v13, v14);
  ViewControllerPresenter.viewWillDisappear(forReason:)();
  return (*(v6 + 8))(v11, v3);
}

uint64_t sub_10000ADC8(char a1, SEL *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v13, *a2, a1 & 1);
  v7 = *&v3[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
  v8 = type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  v11 = sub_10000E018(v9, v10);
  return a3(v8, v11);
}

void sub_10000AED4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "didReceiveMemoryWarning");
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter];
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EB7C();
  sub_10000E018(v2, v3);
  ViewControllerPresenter.viewDidReceiveMemoryWarning()();
}

uint64_t sub_10000AFA0()
{
  v1 = sub_100002838(&unk_100021E40, qword_100014150);
  v2 = sub_10000EB94(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v12[-1] - v7;
  v9 = *(*(v0 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter) + 16);
  sub_10000EBA8();
  swift_allocObject();
  sub_10000EC3C();
  sub_100002838(&qword_100021CE8, &qword_100013EA8);
  sub_10000DFC0(&qword_100021E50, &qword_100021CE8, &qword_100013EA8);

  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver(on:singleUse:_:)();

  sub_100004720(v12);
  return (*(v4 + 8))(v8, v1);
}

void sub_10000B140(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5[0] = v1;
  *(v5 + 9) = *(a1 + 25);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000D704(&v4);
  }
}

void sub_10000B1A8()
{
  v0 = sub_100009630();
  if (v0)
  {
    [v0 setAllowsAlertStacking:1];
    sub_10000ECA4();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v2 = type metadata accessor for Log();
    sub_1000046E8(v2, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v3 = sub_10000EC74();
    sub_1000091B0(v3);
    v5 = *(v4 + 72);
    *(sub_10000EBB4() + 16) = xmmword_1000138F0;
    type metadata accessor for RemoteEngagementViewController();
    sub_10000ECBC();
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000EC58();

    sub_100004720(v8);
    sub_10000EC2C();
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    sub_10000ECA4();
  }
}

void sub_10000B33C()
{
  v0 = sub_100009630();
  if (v0)
  {
    [v0 setDesiredHardwareButtonEvents:16];
    sub_10000ECA4();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v2 = type metadata accessor for Log();
    sub_1000046E8(v2, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v3 = sub_10000EC74();
    sub_1000091B0(v3);
    v5 = *(v4 + 72);
    *(sub_10000EBB4() + 16) = xmmword_1000138F0;
    type metadata accessor for RemoteEngagementViewController();
    sub_10000ECBC();
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000EC58();

    sub_100004720(v8);
    sub_10000EC2C();
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    sub_10000ECA4();
  }
}

void sub_10000B4D0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 systemBlueColor];
    [v5 setTintColor:v6];

    v7 = [v5 _rootSheetPresentationController];
    if (v7)
    {
      v15 = v7;
      [v7 _setShouldScaleDownBehindDescendantSheets:0];

      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  if (qword_100021710 != -1)
  {
    sub_100009190();
  }

  v8 = type metadata accessor for Log();
  sub_1000046E8(v8, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v9 = sub_10000EC74();
  sub_1000091B0(v9);
  v11 = *(v10 + 72);
  *(sub_10000EBB4() + 16) = xmmword_1000138F0;
  v16[3] = type metadata accessor for RemoteEngagementViewController();
  v16[0] = v0;
  v12 = v0;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000EC58();

  sub_100004720(v16);
  sub_10000EC2C();
  LogInterpolation.init(stringLiteral:)();
  Log.error(_:)();
}

void sub_10000B72C(uint64_t a1)
{
  v3 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  [v3 _setEndpoint:a1];
  v4 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:v3];
  v5 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection;
  v6 = *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection);
  *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection) = v4;
  v7 = v4;

  if (v7)
  {
    v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSSystemEngagementTaskRemoteInterface];
    [v7 setExportedInterface:v8];
  }

  v9 = *(v1 + v5);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL___AMSSystemEngagementTaskClientInterface];
  [v11 setRemoteObjectInterface:v12];

  v13 = *(v1 + v5);
  if (!v13)
  {
    goto LABEL_9;
  }

  [v13 setExportedObject:v1];
  v14 = *(v1 + v5);
  if (!v14)
  {
    goto LABEL_8;
  }

  sub_10000EBA8();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_10000DFA8;
  v28 = v15;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000EB54;
  v26 = &unk_10001D0C0;
  v16 = _Block_copy(&v23);
  v17 = v14;

  [v17 setInvalidationHandler:v16];
  _Block_release(v16);

  v18 = *(v1 + v5);
  if (v18)
  {
    sub_10000EBA8();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_10000DFB0;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10000EB54;
    v26 = &unk_10001D0E8;
    v20 = _Block_copy(&v23);
    v21 = v18;

    [v21 setInterruptionHandler:v20];
    _Block_release(v20);

    v13 = *(v1 + v5);
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

LABEL_9:
  [v13 resume];
  v22 = sub_100009258();
  if (v22)
  {
    [v22 initializeClientToViewServiceConnection];
    swift_unknownObjectRelease();
  }
}

void sub_10000BA48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Log();
    sub_1000046E8(v2, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v3 = *(type metadata accessor for LogInterpolation() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v10[3] = type metadata accessor for RemoteEngagementViewController();
    v10[0] = v1;
    v6 = v1;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v10);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    v9 = *&v6[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection];
    *&v6[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] = 0;
  }
}

void sub_10000BC34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Log();
    sub_1000046E8(v2, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v3 = *(type metadata accessor for LogInterpolation() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v11[3] = type metadata accessor for RemoteEngagementViewController();
    v11[0] = v1;
    v6 = v1;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v11);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    v9 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection;
    [*&v6[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] invalidate];
    v10 = *&v6[v9];
    *&v6[v9] = 0;
  }
}

id sub_10000BE30()
{
  v1 = *&v0[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task];
  if (v1)
  {
    [v1 cancel];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RemoteEngagementViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10000BF04(char a1, void *a2, uint64_t a3)
{
  v7 = [v3 presentedViewController];
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v10[4] = a2;
      v10[5] = a3;
      sub_10000EBDC();
      v10[1] = 1107296256;
      sub_10000EBFC();
      v10[2] = v9;
      v10[3] = &unk_10001D098;
      a2 = _Block_copy(v10);
    }

    [v8 dismissViewControllerAnimated:a1 & 1 completion:a2];
    _Block_release(a2);
  }

  else if (a2)
  {
    (a2)();
  }
}

uint64_t sub_10000BFE4(char a1)
{
  if (qword_100021710 != -1)
  {
    sub_100009190();
  }

  v2 = type metadata accessor for Log();
  sub_1000046E8(v2, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v3 = sub_10000EC74();
  sub_1000091B0(v3);
  v5 = *(v4 + 72);
  sub_10000EC10();
  *(swift_allocObject() + 16) = xmmword_1000138F0;
  type metadata accessor for RemoteEngagementViewController();
  sub_10000ECBC();
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v12);
  v12[3] = &type metadata for String;
  v12[0] = 0xD000000000000026;
  v12[1] = 0x8000000100014A20;
  static LogInterpolation.safe(_:)();
  sub_100005714(v12);
  Log.info(_:)();

  sub_10000EBA8();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = v10;

  sub_10000BF04(v10, sub_10000DF94, v9);
}

void sub_10000C210(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Log();
    sub_1000046E8(v5, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v6 = *(type metadata accessor for LogInterpolation() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v16 = type metadata accessor for RemoteEngagementViewController();
    aBlock[0] = v4;
    v9 = v4;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(aBlock);
    LogInterpolation.init(stringLiteral:)();
    Log.info(_:)();

    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v17 = sub_10000DFA0;
    v18 = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EB54;
    v16 = &unk_10001D070;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    [v14 dismissViewControllerAnimated:a2 & 1 completion:v13];
    _Block_release(v13);
  }
}

void *sub_10000C4A4(void *a1)
{
  if (qword_100021710 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Log();
  sub_1000046E8(v2, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000138F0;
  v10[3] = type metadata accessor for RemoteEngagementViewController();
  v10[0] = a1;
  a1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v10);
  LogInterpolation.init(stringLiteral:)();
  Log.info(_:)();

  v8 = sub_100009630();
  if (v8)
  {
    [v8 dismiss];
    swift_unknownObjectRelease();
  }

  result = sub_100009630();
  if (result)
  {
    [result invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000C69C(uint64_t a1, void *a2)
{
  v6 = sub_100009258();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    sub_10000EBA8();
    swift_allocObject();
    sub_10000EC3C();
    v10[4] = sub_10000DF54;
    v10[5] = v3;
    sub_10000EBDC();
    v10[1] = 1107296256;
    v10[2] = sub_10000EB54;
    v10[3] = &unk_10001CFF8;
    v8 = _Block_copy(v10);

    [v7 engagementTaskDidFinishWithResult:a1 error:a2 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);

    v9 = *(v2 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task);
    *(v2 + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task) = 0;
  }

  else
  {

    sub_10000C860();
  }
}

void sub_10000C7C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000C860();
  }
}

uint64_t sub_10000C81C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000C860()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_10000EB94(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000EC1C();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_10000EB94(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000EC1C();
  v19 = v18 - v17;
  if ([objc_opt_self() isMainThread])
  {

    return sub_10000BFE4(1);
  }

  else
  {
    sub_100008CB8(0, &qword_100021DC0, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    sub_10000EBA8();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    aBlock[4] = sub_10000DF04;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10000EBFC();
    aBlock[2] = v22;
    aBlock[3] = &unk_10001CFD0;
    v23 = _Block_copy(aBlock);
    v24 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000E018(&qword_100021DC8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002838(&qword_100021DD0, &qword_100014148);
    sub_10000DFC0(&qword_100021DD8, &qword_100021DD0, &qword_100014148);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v5 + 8))(v10, v2);
    return (*(v14 + 8))(v19, v11);
  }
}

uint64_t sub_10000CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000EBA8();
  swift_allocObject();
  sub_10000EC3C();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  swift_errorRetain();
  sub_1000066F8(a2);
  sub_10000BF04(1, sub_10000DEC4, v7);
}

void sub_10000CC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    objc_allocWithZone(type metadata accessor for ErrorViewController());
    swift_errorRetain();
    sub_1000066F8(a3);
    v9 = sub_10000596C(a2, a3, a4);
    [v8 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10000CD20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  sub_10000EC8C();
  v9 = type metadata accessor for URL();
  v10 = sub_10000EB94(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v35 - v19;
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  v23 = [v5 URL];
  if (v23)
  {
    v24 = v23;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 32))(v22, v20, v9);
    (*(v12 + 16))(v17, v22, v9);
    v25 = objc_allocWithZone(AMSCampaignAttributionTask);
    swift_unknownObjectRetain();
    v27 = sub_10000DD6C(v17, a2, v26);
    [v27 setClientInfo:a3];
    v28 = [v5 account];
    [v27 setAccount:v28];

    v29 = [v27 perform];
    (*(v12 + 8))(v22, v9);
  }

  sub_10000EBA8();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000EC98();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v5;
  v31[4] = a2;
  v31[5] = a3;
  v31[6] = v35;
  v31[7] = a5;
  swift_unknownObjectRetain();

  v32 = v5;
  v33 = a3;

  sub_10000BF04(1, sub_10000DD5C, v31);
}

void sub_10000CFD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task;
    v14 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task);
    v42 = a5;
    v43 = a6;
    if (v14)
    {
      v15 = qword_100021710;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Log();
      sub_1000046E8(v17, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      v18 = *(type metadata accessor for LogInterpolation() - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      *(swift_allocObject() + 16) = xmmword_1000138F0;
      v45 = type metadata accessor for RemoteEngagementViewController();
      aBlock[0] = v12;
      v21 = v12;
      v22 = AMSLogKey();
      if (v22)
      {
        v23 = v22;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(aBlock);
      LogInterpolation.init(stringLiteral:)();
      Log.default(_:)();

      v30 = v16;
    }

    else
    {
      if (qword_100021710 != -1)
      {
        swift_once();
      }

      v41 = a4;
      v24 = type metadata accessor for Log();
      sub_1000046E8(v24, qword_100022D00);
      sub_100002838(&qword_100021CF0, &unk_100013EB0);
      v25 = *(type metadata accessor for LogInterpolation() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      *(swift_allocObject() + 16) = xmmword_1000138F0;
      v45 = type metadata accessor for RemoteEngagementViewController();
      aBlock[0] = v12;
      v40 = v12;
      v28 = AMSLogKey();
      if (v28)
      {
        v29 = v28;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(aBlock);
      LogInterpolation.init(stringLiteral:)();
      Log.default(_:)();

      sub_100008CB8(0, &qword_100021DB0, AMSUIEngagementTask_ptr);
      v31 = v40;
      v32 = a2;
      swift_unknownObjectRetain();
      v33 = sub_10000D4F0(v32, a3, v31);
      [v33 setAllowMultiplePresentations:1];
      v30 = v33;
      [v30 setClientInfo:v41];
      v34 = *&v12[v13];
      *&v12[v13] = v30;

      v16 = 0;
    }

    v35 = v16;
    v36 = [v30 presentEngagement];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v30;
    v38[4] = v42;
    v38[5] = v43;
    v46 = sub_10000DE50;
    v47 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D678;
    v45 = &unk_10001CF58;
    v39 = _Block_copy(aBlock);

    [v36 addFinishBlock:v39];

    _Block_release(v39);
  }
}

id sub_10000D4F0(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10000D55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task);
    v11 = v10;

    if (v10)
    {
      sub_100008CB8(0, &qword_100021DB8, NSObject_ptr);
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
LABEL_6:

        return a5(a1, a2);
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();

      if (v12)
      {
        v11 = *&v12[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task];
        *&v12[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task] = 0;

        goto LABEL_6;
      }
    }
  }

  return a5(a1, a2);
}

void sub_10000D678(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10000D704(uint64_t a1)
{
  if (qword_100021710 != -1)
  {
    sub_100009190();
  }

  v2 = type metadata accessor for Log();
  sub_1000046E8(v2, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v3 = sub_10000EC74();
  sub_1000091B0(v3);
  v5 = *(v4 + 72);
  sub_10000EC10();
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  type metadata accessor for RemoteEngagementViewController();
  sub_10000ECBC();
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v13);
  LogInterpolation.init(stringLiteral:)();
  v14[3] = &type metadata for RemoteEngagementPresenter.State;
  v8 = swift_allocObject();
  v14[0] = v8;
  v9 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v9;
  *(v8 + 41) = *(a1 + 25);
  sub_10000DC78(a1, v13);
  static LogInterpolation.safe(_:)();
  sub_100005714(v14);
  Log.default(_:)();

  v10 = *a1;
  v11 = *(a1 + 8);
  if (*(a1 + 40))
  {
    v12 = *(a1 + 16);
    if (*(a1 + 40) == 1)
    {
      sub_10000CD20(v10, v11, v12, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      sub_10000CB94(v10, v11, v12);
    }
  }

  else
  {
    sub_10000C69C(v10, v11);
  }
}

id sub_10000D934(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] = 0;
  v7 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EC98();
  swift_allocObject();
  *&v3[v7] = sub_100008B20();
  *&v3[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for RemoteEngagementViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10000DA68(void *a1)
{
  *&v1[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_connection] = 0;
  v3 = OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_10000EC98();
  swift_allocObject();
  *&v1[v3] = sub_100008B20();
  *&v1[OBJC_IVAR____TtC24AMSEngagementViewService30RemoteEngagementViewController_task] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RemoteEngagementViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_10000DB5C()
{
  sub_10000DBA0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

void sub_10000DBA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 2:

      sub_100006708(a2);
      break;
    case 1:

      swift_unknownObjectRelease();

      break;
    case 0:

      break;
  }
}

uint64_t sub_10000DCD4()
{
  swift_unknownObjectWeakDestroy();
  sub_10000EBA8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000DD08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  sub_10000EC98();

  return _swift_deallocObject(v4, v5, v6);
}

id sub_10000DD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  v9 = [v4 initWithURL:v7 bag:a2];
  swift_unknownObjectRelease();

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_10000DE08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DE5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DE74()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DED0()
{
  sub_10000EBA8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000DF0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000DF5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000DFC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DF0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E018(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E060()
{
  result = qword_100021E78;
  if (!qword_100021E78)
  {
    sub_100008CB8(255, &qword_100021E70, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E78);
  }

  return result;
}

unint64_t sub_10000E0C8()
{
  result = qword_100021E80;
  if (!qword_100021E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E80);
  }

  return result;
}

uint64_t sub_10000E11C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100014110;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_10000E180(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_10000E4BC(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_10000E270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002838(&qword_100021E88, &qword_100014180);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_10000E11C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_10000E4BC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10000E270(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_10000E734(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v5);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_10000E5F4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_10000E5F4()
{
  v1 = v0;
  sub_100002838(&qword_100021E88, &qword_100014180);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000E734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002838(&qword_100021E88, &qword_100014180);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v16);
        result = Hasher._finalize()();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

char *sub_10000E950(char *a1, int64_t a2, char a3)
{
  result = sub_10000E970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E970(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100002838(&qword_100021E98, &qword_100014190);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_100004D48((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EA68(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000EAD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000EAE0()
{
  _Block_release(*(v0 + 16));
  sub_10000EBA8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000EBB4()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_10000EC3C()
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_10000EC58()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000EC74()
{

  return type metadata accessor for LogInterpolation();
}

id sub_10000ECBC()
{

  return v0;
}

void *sub_10000ED08()
{
  v1 = *(v0 + OBJC_IVAR____TtC24AMSEngagementViewService13SceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_10000ED94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService13SceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC24AMSEngagementViewService13SceneDelegate_window) = a1;
  return _objc_release_x1();
}

void sub_10000EDA8(int a1, int a2, id a3)
{
  v4 = [a3 URLContexts];
  sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
  sub_100011B14(&qword_100021F60, &qword_100021F58, UIOpenURLContext_ptr);
  sub_100012028();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10000EF70(v5);

  if (v6 < 1)
  {
    v11 = [a3 userActivities];
    sub_100012028();
    sub_100008CB8(v12, v13, v14);
    sub_100012028();
    sub_100011B14(v15, v16, v17);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_10000EF90(v18);

    if (v21)
    {
      sub_100010CE8(v21);
      sub_100012004();
    }

    else
    {
      sub_100012004();
    }
  }

  else
  {
    v7 = [a3 URLContexts];
    sub_100012028();
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000F108(v9, v8);
    sub_100012004();
  }
}

uint64_t sub_10000EF70(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_10000EF90(uint64_t a1)
{
  v2 = sub_100011BE0(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_100011C40(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_100011E94(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_10000EAD4(v7, v9, v11 & 1);
  if (v12)
  {
    sub_10000EAD4(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_100011CA8(v2, v4, v6 & 1, a1, &unk_100021F68);
    v13 = v14;
    sub_10000EAD4(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_10000F108(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for URL();
  v3 = sub_10000EB94(v29);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000EC1C();
  v10 = v9 - v8;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
    sub_100011B14(&qword_100021F60, &qword_100021F58, UIOpenURLContext_ptr);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v12 = a2 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  v28 = (v5 + 8);
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      break;
    }

LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = *(*(a2 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      return sub_100011B64();
    }

    while (1)
    {
      v25 = [v24 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = sub_100011B6C([v24 options]);
      sub_10000F530(v10, v26, v27);

      result = (*v28)(v10, v29);
      v14 = v22;
      v15 = v23;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008CB8(0, &qword_100021F58, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v24 = v30;
        v22 = v14;
        v23 = v15;
        if (v30)
        {
          continue;
        }
      }

      return sub_100011B64();
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      return sub_100011B64();
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

CFNotificationCenterRef sub_10000F530(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v171 = a3;
  *&v162 = a2;
  v175 = a1;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100011FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000EC1C();
  sub_100012040(v10 - v9);
  v174 = type metadata accessor for URLQueryItem();
  v11 = sub_10000EB94(v174);
  v163 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100011F44();
  v173 = v15;
  sub_100011F58();
  __chkstk_darwin(v16);
  sub_100011F90();
  v155 = v17;
  sub_100011F58();
  __chkstk_darwin(v18);
  sub_100012040(&v152 - v19);
  v20 = sub_100002838(&qword_100021F40, &qword_1000141B0);
  v21 = sub_100011FEC(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_100012040(&v152 - v24);
  v160 = type metadata accessor for URLComponents();
  v25 = sub_10000EB94(v160);
  v158 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_10000EC1C();
  sub_100012040(v30 - v29);
  v31 = sub_100002838(&qword_100021960, &unk_100013900);
  v32 = sub_100011FEC(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v152 - v35;
  v37 = type metadata accessor for URL();
  v38 = sub_10000EB94(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_10000EC1C();
  v45 = v44 - v43;
  v46 = type metadata accessor for Log();
  v47 = sub_10000EB94(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v47);
  v54 = &v152 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = &v152 - v55;
  if (qword_100021710 != -1)
  {
    sub_100009190();
  }

  v161 = v45;
  v57 = sub_1000046E8(v46, qword_100022D00);
  v172 = v49;
  v58 = *(v49 + 16);
  v165 = v57;
  v166 = v46;
  v154 = v49 + 16;
  v153 = v58;
  (v58)(v56);
  v59 = sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v60 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v60);
  v63 = *(v62 + 80);
  v64 = (v63 + 32) & ~v63;
  v176 = *(v61 + 72);
  v167 = v63;
  v168 = v59;
  *(swift_allocObject() + 16) = xmmword_1000138E0;
  v170 = v64;
  v169 = type metadata accessor for SceneDelegate();
  v182 = v169;
  aBlock = v4;
  v164 = v4;
  v65 = AMSLogKey();
  if (v65)
  {
    v66 = v65;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&aBlock);
  LogInterpolation.init(stringLiteral:)();
  v182 = v37;
  v67 = sub_100004914(&aBlock);
  (*(v40 + 16))(v67, v175, v37);
  static LogInterpolation.safe(_:)();
  sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
  LogInterpolation.init(stringLiteral:)();
  v156 = v54;
  if (v171)
  {
    v68 = &type metadata for String;
    v69 = v162;
    v70 = v171;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v181 = 0;
  }

  v71 = 2 * v176;
  aBlock = v69;
  v180 = v70;
  v182 = v68;

  static LogInterpolation.safe(_:)();
  sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
  Log.default(_:)();

  v72 = v172 + 8;
  v73 = *(v172 + 8);
  v73(v56, v166);
  v74 = v175;
  sub_100002230(v175, 0, 0, v36);
  sub_100011F70(v36);
  if (!v77)
  {
    (*(v40 + 32))(v161, v36, v37);
    *(sub_100011EC8() + 16) = xmmword_1000138F0;
    sub_100011F1C();
    v83 = AMSLogKey();
    if (v83)
    {
      v84 = v83;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    sub_1000116E4();
    v85 = *(v40 + 8);
    v86 = sub_10001204C();
    return v87(v86);
  }

  sub_100011A50(v36, &qword_100021960, &unk_100013900);
  v75 = URL.scheme.getter();
  if (!v76)
  {
    goto LABEL_16;
  }

  v77 = v75 == 0x7564732D736D61 && v76 == 0xE700000000000000;
  if (v77)
  {

LABEL_23:
    v172 = v72;
    v89 = sub_100011EC8();
    v162 = xmmword_1000138F0;
    *(v89 + 16) = xmmword_1000138F0;
    v171 = sub_100011F1C();
    v90 = AMSLogKey();
    if (v90)
    {
      v91 = v90;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011FF8();
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    result = CFNotificationCenterGetDistributedCenter();
    if (result)
    {
      v101 = result;
      v102 = v101;

      v103 = v101;
      v104 = String._bridgeToObjectiveC()();
      sub_100002838(&qword_100021F50, &qword_1000141B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100013CF0;
      *(inited + 32) = 7107189;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = URL.absoluteString.getter();
      *(inited + 56) = v106;
      Dictionary.init(dictionaryLiteral:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      CFNotificationCenterPostNotification(v103, v104, 0, isa, 1u);

      v108 = v159;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v109 = v160;
      if (sub_10000476C(v108, 1, v160) == 1)
      {
        sub_100011A50(v108, &qword_100021F40, &qword_1000141B0);
LABEL_47:
        *(sub_100011EC8() + 16) = v162;
        sub_100011FAC();
        v126 = AMSLogKey();
        if (v126)
        {
          v127 = v126;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100004720(&aBlock);
        sub_100011F64();
        LogInterpolation.init(stringLiteral:)();
        goto LABEL_50;
      }

      v110 = *(v158 + 32);
      sub_10001201C();
      v111();
      v112 = URLComponents.queryItems.getter();
      if (!v112)
      {
LABEL_46:
        v124 = sub_100011FD4();
        v125(v124, v109);
        goto LABEL_47;
      }

      v113 = v112;
      v175 = v71;
      v114 = 0;
      v115 = *(v112 + 16);
      v116 = (v163 + 8);
      while (1)
      {
        if (v115 == v114)
        {

          v109 = v160;
          goto LABEL_46;
        }

        if (v114 >= *(v113 + 16))
        {
          __break(1u);
        }

        (*(v163 + 16))(v173, v113 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v114, v174);
        if (URLQueryItem.name.getter() == 0x656C646E7562 && v117 == 0xE600000000000000)
        {
          break;
        }

        v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v119)
        {
          goto LABEL_53;
        }

        (*v116)(v173, v174);
        ++v114;
      }

LABEL_53:

      v128 = *(v163 + 32);
      v128(v155, v173, v174);
      v129 = v157;
      v130 = sub_100012034();
      (v128)(v130);
      v131 = v156;
      v153(v156, v165, v166);
      *(sub_100011EF8() + 16) = v162;
      v132 = sub_100011FAC();
      v133 = AMSLogKey();
      if (v133)
      {
        v134 = v133;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004720(&aBlock);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v138._object = 0x8000000100014F00;
      v138._countAndFlagsBits = 0xD000000000000027;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v138);
      v139 = URLQueryItem.value.getter();
      v141 = v166;
      if (v140)
      {
        v142 = &type metadata for String;
      }

      else
      {
        v139 = 0;
        v142 = 0;
        v181 = 0;
      }

      aBlock = v139;
      v180 = v140;
      v182 = v142;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
      v143._countAndFlagsBits = 0;
      v143._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v143);
      sub_100011F64();
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      v73(v131, v141);
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v144 = result;
        URLQueryItem.value.getter();
        if (v145)
        {
          v146 = String._bridgeToObjectiveC()();
        }

        else
        {
          v146 = 0;
        }

        v147 = swift_allocObject();
        *(v147 + 16) = v132;
        v183 = sub_100011AF4;
        v184 = v147;
        aBlock = _NSConcreteStackBlock;
        v180 = 1107296256;
        v181 = sub_100010C70;
        v182 = &unk_10001D228;
        v148 = _Block_copy(&aBlock);
        v149 = v132;

        [(__CFNotificationCenter *)v144 openApplicationWithBundleIdentifier:v146 usingConfiguration:0 completionHandler:v148];
        _Block_release(v148);

        (*v116)(v129, v174);
        v150 = sub_100011FD4();
        return v151(v150, v160);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    goto LABEL_23;
  }

LABEL_16:
  type metadata accessor for EngagementDeepLinkController();
  swift_initStackObject();
  v79 = sub_100004FBC(v74, v162, v171);
  if (v80)
  {
    *(sub_100011EC8() + 16) = xmmword_1000138F0;
    sub_100011F1C();
    v81 = AMSLogKey();
    if (v81)
    {
      v82 = v81;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011F9C();
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
LABEL_50:
    Log.error(_:)();
  }

  v92 = v79;
  v93 = [objc_allocWithZone(AMSEngagement) init];
  v94 = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_100011AB0(v92, 0);
  v95 = [v93 enqueueData:v94];

  aBlock = 0;
  v96 = [v95 resultWithError:&aBlock];

  v97 = aBlock;
  if (v96)
  {
    *(sub_100011EF8() + 16) = xmmword_1000138D0;
    sub_100011F1C();
    v98 = v97;
    v99 = AMSLogKey();
    if (v99)
    {
      v100 = v99;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011F9C();
    sub_100011FF8();
    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&aBlock);
    sub_100011F64();
    LogInterpolation.init(stringLiteral:)();
    v182 = sub_100008CB8(0, &qword_100021F48, AMSEngagementEnqueueResult_ptr);
    aBlock = v96;
    v123 = v96;
    static LogInterpolation.safe(_:)();
    sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
    Log.default(_:)();
  }

  v120 = aBlock;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  *(sub_100011EF8() + 16) = xmmword_1000138D0;
  sub_100011F1C();
  v121 = AMSLogKey();
  if (v121)
  {
    v122 = v121;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100011F9C();
  sub_100011FF8();
  static LogInterpolation.prefix(_:_:)();

  sub_100004720(&aBlock);
  sub_100011F64();
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v135 = v177;
  v136 = v178;
  v182 = v178;
  v137 = sub_100004914(&aBlock);
  (*(*(v136 - 1) + 16))(v137, v135, v136);
  static LogInterpolation.safe(_:)();
  sub_100011A50(&aBlock, &qword_100021D00, &unk_100013910);
  Log.error(_:)();
}

uint64_t sub_10001084C(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (a2 && (a1 & 1) == 0)
  {
    swift_errorRetain();
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Log();
    sub_1000046E8(v15, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v16 = *(type metadata accessor for LogInterpolation() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v28 = type metadata accessor for SceneDelegate();
    v27[0] = a3;
    v19 = a3;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v27);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._object = 0x8000000100014FB0;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    swift_getErrorValue();
    v28 = v26;
    v24 = sub_100004914(v27);
    (*(*(v26 - 8) + 16))(v24);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100011A50(v27, &qword_100021D00, &unk_100013910);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();
  }

  else
  {
    if (qword_100021710 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Log();
    sub_1000046E8(v8, qword_100022D00);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v9 = *(type metadata accessor for LogInterpolation() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_1000138F0;
    v28 = type metadata accessor for SceneDelegate();
    v27[0] = a3;
    v12 = a3;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(v27);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();
  }
}

void sub_100010C70(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_100010CE8(void *a1)
{
  v2 = sub_100002838(&qword_100021960, &unk_100013900);
  v3 = sub_100011FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100011F44();
  v125 = v6;
  sub_100011F58();
  __chkstk_darwin(v7);
  sub_100011F90();
  v126 = v8;
  sub_100011F58();
  __chkstk_darwin(v9);
  sub_100011F90();
  v129 = v10;
  sub_100011F58();
  __chkstk_darwin(v11);
  sub_100011F90();
  v132 = v12;
  sub_100011F58();
  v14 = __chkstk_darwin(v13);
  v16 = v122 - v15;
  __chkstk_darwin(v14);
  v18 = v122 - v17;
  v19 = type metadata accessor for Log();
  v20 = sub_10000EB94(v19);
  v134 = v21;
  v135 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_10000EC1C();
  v133 = v25 - v24;
  v26 = sub_100002838(&qword_100021F40, &qword_1000141B0);
  v27 = sub_100011FEC(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = v122 - v30;
  v138 = type metadata accessor for URLComponents();
  v32 = sub_10000EB94(v138);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_100011F44();
  v130 = v37;
  sub_100011F58();
  __chkstk_darwin(v38);
  v136 = v122 - v39;
  v40 = type metadata accessor for URL();
  v41 = sub_10000EB94(v40);
  v137 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_100011F44();
  v124 = v45;
  sub_100011F58();
  __chkstk_darwin(v46);
  sub_100011F90();
  v128 = v47;
  sub_100011F58();
  __chkstk_darwin(v48);
  sub_100011F90();
  v127 = v49;
  sub_100011F58();
  v51 = __chkstk_darwin(v50);
  v53 = v122 - v52;
  __chkstk_darwin(v51);
  v55 = v122 - v54;
  v139 = a1;
  v56 = [a1 activityType];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v61 = v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60;
  if (v61)
  {

LABEL_8:
    result = [v139 webpageURL];
    if (!result)
    {
      return result;
    }

    v64 = result;
    v123 = v34;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = v137;
    v66 = *(v137 + 32);
    v66(v55, v53, v40);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v67 = v138;
    if (sub_10000476C(v31, 1, v138) == 1)
    {
      v68 = *(v65 + 8);
      v69 = sub_10001204C();
      v70(v69);
      v71 = &qword_100021F40;
      v72 = &qword_1000141B0;
      v73 = v31;
      return sub_100011A50(v73, v71, v72);
    }

    v122[2] = v66;
    (*(v123 + 32))(v136, v31, v67);
    if (qword_100021710 != -1)
    {
      sub_100009190();
    }

    v74 = v135;
    v75 = sub_1000046E8(v135, qword_100022D00);
    (*(v134 + 16))(v133, v75, v74);
    sub_100002838(&qword_100021CF0, &unk_100013EB0);
    v76 = type metadata accessor for LogInterpolation();
    sub_1000091B0(v76);
    v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v122[1] = *(v77 + 72);
    *(swift_allocObject() + 16) = xmmword_1000138D0;
    *(&v141 + 1) = type metadata accessor for SceneDelegate();
    *&v140 = v131;
    v131 = v131;
    v80 = AMSLogKey();
    if (v80)
    {
      v81 = v80;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004720(&v140);
    LogInterpolation.init(stringLiteral:)();
    v82 = [v139 webpageURL];
    v83 = v137;
    if (v82)
    {
      v84 = v82;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = 0;
    }

    else
    {
      v85 = 1;
    }

    v86 = v138;
    sub_100002880(v16, v85, 1, v40);
    sub_100004794(v16, v18);
    sub_100011F70(v18);
    if (v61)
    {
      sub_100011A50(v18, &qword_100021960, &unk_100013900);
      v140 = 0u;
      v141 = 0u;
    }

    else
    {
      *(&v141 + 1) = v40;
      sub_100004914(&v140);
      sub_100011F64();
      v87();
    }

    v88 = v136;
    static LogInterpolation.safe(_:)();
    sub_100011A50(&v140, &qword_100021D00, &unk_100013910);
    v89 = v133;
    Log.default(_:)();

    (*(v134 + 8))(v89, v135);
    v90 = v132;
    sub_100002230(v55, 0, 0, v132);
    sub_100011F70(v90);
    if (v61)
    {
      sub_100011A50(v90, &qword_100021960, &unk_100013900);
      v91 = v123;
      v92 = v130;
      (*(v123 + 16))(v130, v88, v86);
      URLComponents.scheme.setter();
      v93 = v129;
      URLComponents.url.getter();
      sub_100011F70(v93);
      if (v61)
      {
        v94 = *(v91 + 8);
        v94(v92, v86);
        v95 = sub_100012034();
        (v94)(v95);
        v96 = *(v83 + 8);
        v97 = sub_10001204C();
        v98(v97);
        v71 = &qword_100021960;
        v72 = &unk_100013900;
        v73 = v93;
        return sub_100011A50(v73, v71, v72);
      }

      sub_10001201C();
      sub_100011F64();
      v105();
      v106 = [v139 referrerURL];
      if (v106)
      {
        v107 = v106;
        v108 = v125;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v109 = 0;
        v110 = v123;
      }

      else
      {
        v109 = 1;
        v110 = v123;
        v108 = v125;
      }

      sub_100002880(v108, v109, 1, v40);
      v111 = v126;
      sub_100004794(v108, v126);
      if (sub_10000476C(v111, 1, v40))
      {
        sub_100011A50(v111, &qword_100021960, &unk_100013900);
        v112 = 0;
        v113 = 0;
      }

      else
      {
        v114 = *(v83 + 16);
        v115 = v124;
        sub_10001201C();
        v116();
        sub_100011A50(v111, &qword_100021960, &unk_100013900);
        v112 = URL.absoluteString.getter();
        v113 = v117;
        (*(v83 + 8))(v115, v40);
      }

      v118 = v128;
      sub_10000F530(v128, v112, v113);

      v101 = *(v83 + 8);
      v101(v118, v40);
      v119 = *(v110 + 8);
      v119(v92, v86);
      v120 = sub_100012034();
      (v119)(v120);
    }

    else
    {
      v99 = v127;
      sub_10001201C();
      sub_100011F64();
      v100();
      sub_1000116E4();
      v101 = *(v83 + 8);
      v101(v99, v40);
      v102 = *(v123 + 8);
      v103 = sub_100012034();
      v104(v103);
    }

    v121 = sub_10001204C();
    return (v101)(v121);
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
    goto LABEL_8;
  }

  return result;
}

id sub_1000116E4()
{
  if (qword_100021710 != -1)
  {
    sub_100009190();
  }

  v1 = type metadata accessor for Log();
  sub_1000046E8(v1, qword_100022D00);
  sub_100002838(&qword_100021CF0, &unk_100013EB0);
  v2 = type metadata accessor for LogInterpolation();
  sub_1000091B0(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000138D0;
  v19 = type metadata accessor for SceneDelegate();
  v18[0] = v0;
  v7 = v0;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004720(v18);
  LogInterpolation.init(stringLiteral:)();
  type metadata accessor for URL();
  sub_1000119F8();
  v18[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v18[1] = v10;
  v11._countAndFlagsBits = 46;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v19 = &type metadata for String;
  static LogInterpolation.sensitive(_:)();
  sub_100011A50(v18, &qword_100021D00, &unk_100013910);
  Log.default(_:)();

  v12 = objc_opt_self();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = [v12 openStandardURL:v14];

  return v16;
}

id sub_10001192C()
{
  *&v0[OBJC_IVAR____TtC24AMSEngagementViewService13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100011990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000119F8()
{
  result = qword_100021F38;
  if (!qword_100021F38)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F38);
  }

  return result;
}

uint64_t sub_100011A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002838(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011AB0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100011ABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011B14(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011B6C(void *a1)
{
  v2 = [a1 sourceApplication];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100011BE0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100011C40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_100011CA8(uint64_t a1, int a2, char a3, uint64_t a4, void *a5)
{
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100011FF8();
      sub_100008CB8(v8, v9, v10);
      swift_dynamicCast();
      sub_100012004();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100011FF8();
    sub_100008CB8(v11, v12, v13);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      a5 = v22;
      v14 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v15 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v7 = v14 & v15;
        if (((*(a4 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v16 = *(*(a4 + 48) + 8 * v7);
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          goto LABEL_15;
        }

        v14 = v7 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v18 = *(*(a4 + 48) + 8 * v7);
  sub_100012004();

  v21 = v19;
}

uint64_t sub_100011E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_100011EC8()
{
  v2 = *(v0 - 320);
  v3 = *(v0 - 344) | 7;
  v4 = *(v0 - 336);

  return swift_allocObject();
}

uint64_t sub_100011EF8()
{
  v2 = *(v0 - 344) | 7;
  v3 = *(v0 - 336);

  return swift_allocObject();
}

id sub_100011F1C()
{
  *(v0 - 184) = *(v0 - 328);
  v2 = *(v0 - 368);
  *(v0 - 208) = v2;

  return v2;
}

id sub_100011FAC()
{
  *(v0 - 184) = *(v0 - 328);
  v2 = *(v0 - 312);
  *(v0 - 208) = v2;

  return v2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}