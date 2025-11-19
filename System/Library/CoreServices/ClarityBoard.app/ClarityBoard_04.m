unint64_t sub_100088694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10008874C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100088850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002B6CC(&unk_10032EE00);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000884C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100088954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002B6CC(&qword_10032EE38);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003AFFC(v4, &v11, &unk_10032EE40);
      v5 = v11;
      result = sub_100088538(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10002E64C(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100088A7C()
{
  v1 = v0;
  v2 = sub_10002B6CC(&qword_10032EE18);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  objc_opt_self();
  v8 = [objc_allocWithZone(CLBSecureWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
  sub_10008731C(v1, v7);
  objc_allocWithZone(sub_10002B6CC(&qword_10032EE20));
  sub_10003AFFC(v7, v5, &qword_10032EE18);
  v9 = _UIHostingView.init(rootView:)();
  sub_10002C51C(v7, &qword_10032EE18);
  objc_allocWithZone(sub_10002B6CC(&unk_10032EE28));
  v10 = v9;
  v11 = UIHostingController.init(hostingView:)();
  v12 = [v11 view];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor:v14];

    [v8 setRootViewController:v11];
    [v8 makeKeyAndVisible];

    v15 = *(v1 + OBJC_IVAR___CLBAdminSceneDelegate_window);
    *(v1 + OBJC_IVAR___CLBAdminSceneDelegate_window) = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100088CB4(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return _UIHostingView.init(rootView:)();
}

uint64_t sub_100088D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100088DB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100088E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100088EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100088F2C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = *v1;
  v26 = *(v1 + 16);
  sub_10002B6CC(&qword_10032EE50);
  State.projectedValue.getter();
  v21 = v22;
  v4 = v23;
  v5 = v24;
  v6 = swift_allocObject();
  v7 = *(v2 + 80);
  *(v6 + 80) = *(v2 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v2 + 96);
  v8 = *(v2 + 16);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v8;
  v9 = *(v2 + 48);
  *(v6 + 48) = *(v2 + 32);
  *(v6 + 64) = v9;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = 0x4024000000000000;
  sub_100053490(v2, &v22);
  State.init(wrappedValue:)();
  v10 = v22.n128_u8[0];
  v11 = v22.n128_u64[1];
  v12 = v23;
  *&v25 = 0;
  State.init(wrappedValue:)();
  v13 = v22;
  v14 = swift_allocObject();
  v15 = *(v2 + 80);
  *(v14 + 80) = *(v2 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v2 + 96);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v17;
  sub_100053490(v2, &v22);
  v18 = static Color.clarityUIContentBackground.getter();
  v19 = static Color.primary.getter();
  result = v21;
  *a1 = v21;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = sub_10008A2CC;
  *(a1 + 40) = v6;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 88) = 0x3FA999999999999ALL;
  *(a1 + 96) = 8;
  *(a1 + 104) = sub_10008A2D4;
  *(a1 + 112) = v14;
  *(a1 + 120) = v18;
  *(a1 + 128) = v19;
  return result;
}

uint64_t sub_1000890F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = static HorizontalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v12 = sub_10002B6CC(&qword_10032EE58);
  return sub_100089184(a4, a1, a2, a3, (a5 + *(v12 + 44)), a6);
}

uint64_t sub_100089184@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  *&v92 = a4;
  v93 = a3;
  LODWORD(v98) = a2;
  v99 = a5;
  v97 = type metadata accessor for ForgotAdminPasscodeButton();
  *&v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v89 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002B6CC(&qword_10032EE60);
  v10 = __chkstk_darwin(v9 - 8);
  v111 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v88 - v12;
  v13 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v13 - 8);
  v15 = &v88 - v14;
  v107 = sub_10002B6CC(&qword_10032EE68);
  __chkstk_darwin(v107);
  v17 = &v88 - v16;
  v108 = sub_10002B6CC(&qword_10032EE70) - 8;
  v18 = __chkstk_darwin(v108);
  v109 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v88 - v20;

  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  *&v130 = v22;
  *(&v130 + 1) = v23;
  v26 = v25 & 1;
  LOBYTE(v131) = v25 & 1;
  *(&v131 + 1) = v27;
  View.accessibilityIdentifier(_:)();
  sub_100047B84(v22, v24, v26);

  v28 = type metadata accessor for Font.Design();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  v29 = static Font.system(size:weight:design:)();
  sub_10002C51C(v15, &qword_10032D048);
  KeyPath = swift_getKeyPath();
  v31 = &v17[*(sub_10002B6CC(&qword_10032EE78) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = swift_getKeyPath();
  v33 = &v17[*(v107 + 36)];
  *v33 = v32;
  v33[8] = 1;
  LocalizedStringKey.init(stringLiteral:)();
  sub_10008A310();
  View.accessibilityHint(_:)();

  v34 = v92;

  sub_10002C51C(v17, &qword_10032EE68);
  v35 = static Edge.Set.all.getter();
  v36 = v21;
  v37 = &v21[*(v108 + 44)];
  *v37 = v35;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  v37[40] = 1;
  v142 = *a1;
  v143 = *(a1 + 16);
  v130 = *a1;
  *&v131 = *(a1 + 16);
  sub_10002B6CC(&qword_10032EE50);
  State.wrappedValue.getter();
  v108 = String.count.getter();

  v107 = *(a1 + 96);
  v106 = static Color.clear.getter();
  v105 = static Color.clear.getter();
  v104 = static Color.white.getter();
  v103 = static Color.clear.getter();
  v102 = static Color.white.getter();
  v101 = static Color.white.getter();
  v112 = v142;
  *&v113 = v143;
  State.projectedValue.getter();
  v38 = v130;
  v94 = *(&v131 + 1);
  v100 = v131;
  v95 = *(&v130 + 1);
  v39 = swift_allocObject();
  v40 = *(a1 + 80);
  *(v39 + 80) = *(a1 + 64);
  *(v39 + 96) = v40;
  v41 = *(a1 + 96);
  v42 = *(a1 + 16);
  *(v39 + 16) = *a1;
  *(v39 + 32) = v42;
  v43 = *(a1 + 48);
  *(v39 + 48) = *(a1 + 32);
  *(v39 + 64) = v43;
  v44 = v93;
  *(v39 + 112) = v41;
  *(v39 + 120) = v44;
  v93 = v39;
  *(v39 + 128) = v34;
  if (*(a1 + 56))
  {
    v45 = *(a1 + 72);
    v46 = v97;
    if (v45)
    {
      v47 = v38;
      v48 = *(a1 + 64);
      sub_100053490(a1, &v130);

      v49 = v45;
    }

    else
    {
      sub_100035D1C();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100053490(a1, &v130);

      v53 = [ObjCClassFromMetadata sharedInstance];
      v54 = [v53 adminPasscodeRecoveryAppleID];

      if (!v54)
      {
        v50 = 1;
        v51 = v110;
        goto LABEL_8;
      }

      v47 = v38;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v55;
    }

    v56 = qword_100336870;

    LOBYTE(v56) = [v56 isInSecureMode];
    v57 = swift_allocObject();
    v58 = *(a1 + 80);
    *(v57 + 80) = *(a1 + 64);
    *(v57 + 96) = v58;
    *(v57 + 112) = *(a1 + 96);
    v59 = *(a1 + 16);
    *(v57 + 16) = *a1;
    *(v57 + 32) = v59;
    v60 = *(a1 + 48);
    *(v57 + 48) = *(a1 + 32);
    *(v57 + 64) = v60;
    v61 = v89;
    *v89 = v56;
    *(v61 + 1) = v48;
    *(v61 + 2) = v49;
    *(v61 + 3) = sub_10008A67C;
    *(v61 + 4) = v57;
    *(v61 + 5) = swift_getKeyPath();
    v61[48] = 0;
    LOBYTE(v112) = 0;
    sub_100053490(a1, &v130);
    State.init(wrappedValue:)();
    v62 = *(&v130 + 1);
    v61[56] = v130;
    *(v61 + 8) = v62;
    v63 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    v64 = &v61[*(v46 + 40)];
    LOBYTE(v112) = 0;
    State.init(wrappedValue:)();
    v65 = *(&v130 + 1);
    *v64 = v130;
    *(v64 + 1) = v65;
    v66 = &v61[*(v46 + 44)];
    LOBYTE(v112) = 0;
    State.init(wrappedValue:)();
    v67 = *(&v130 + 1);
    *v66 = v130;
    *(v66 + 1) = v67;
    v68 = v61;
    v51 = v110;
    sub_10004D0F4(v68, v110);
    v50 = 0;
    v38 = v47;
  }

  else
  {
    sub_100053490(a1, &v130);

    v50 = 1;
    v51 = v110;
    v46 = v97;
  }

LABEL_8:
  v90 = v38;
  (*(v96 + 56))(v51, v50, 1, v46);
  v69 = v98 & 1;
  LODWORD(v97) = v98 & 1;
  v70 = v36;
  v91 = v36;
  v71 = v109;
  sub_10003AFFC(v70, v109, &qword_10032EE70);
  sub_10003AFFC(v51, v111, &qword_10032EE60);
  v72 = v99;
  *v99 = 0;
  *(v72 + 8) = 1;
  v73 = sub_10002B6CC(&qword_10032EEA0);
  sub_10003AFFC(v71, v72 + v73[12], &qword_10032EE70);
  v74 = v72 + v73[16];
  *&v112 = v108;
  *(&v112 + 1) = v107;
  v98 = xmmword_10029B320;
  v113 = xmmword_10029B320;
  *&v114 = 0x403E000000000000;
  *(&v114 + 1) = v106;
  *&v115 = v105;
  *(&v115 + 1) = v104;
  *&v116 = v103;
  *(&v116 + 1) = v102;
  *&v117 = v101;
  BYTE8(v117) = v69;
  HIDWORD(v117) = *&v144[3];
  *(&v117 + 9) = *v144;
  v118 = a6;
  *v74 = v112;
  *(v74 + 1) = xmmword_10029B320;
  v75 = v115;
  *(v74 + 2) = v114;
  *(v74 + 3) = v75;
  *(v74 + 12) = v118;
  v76 = v117;
  *(v74 + 4) = v116;
  *(v74 + 5) = v76;
  v77 = v72 + v73[20];
  v79 = v94;
  v78 = v95;
  *&v119 = v38;
  *(&v119 + 1) = v95;
  *&v120 = v100;
  *(&v120 + 1) = v94;
  LOBYTE(v121) = 1;
  DWORD1(v121) = *(v145 + 3);
  *(&v121 + 1) = v145[0];
  v80 = v93;
  *(&v121 + 1) = sub_10008A50C;
  *v122 = v93;
  v96 = xmmword_10029B330;
  *&v122[8] = xmmword_10029B330;
  v92 = xmmword_10029B340;
  *&v122[24] = xmmword_10029B340;
  v81 = v120;
  *v77 = v119;
  *(v77 + 1) = v81;
  v82 = v121;
  v83 = *v122;
  v84 = *&v122[16];
  *(v77 + 10) = *&v122[32];
  *(v77 + 3) = v83;
  *(v77 + 4) = v84;
  *(v77 + 2) = v82;
  v85 = v72 + v73[24];
  *v85 = 0;
  v85[8] = 1;
  v86 = v111;
  sub_10003AFFC(v111, v72 + v73[28], &qword_10032EE60);
  sub_100079138(&v112, &v130);
  sub_10008A518(&v119, &v130);
  sub_10002C51C(v110, &qword_10032EE60);
  sub_10002C51C(v91, &qword_10032EE70);
  sub_10002C51C(v86, &qword_10032EE60);
  v123[0] = v90;
  v123[1] = v78;
  v123[2] = v100;
  v123[3] = v79;
  v124 = 1;
  *v125 = v145[0];
  *&v125[3] = *(v145 + 3);
  v126 = sub_10008A50C;
  v127 = v80;
  v128 = v96;
  v129 = v92;
  sub_10008A574(v123);
  *&v130 = v108;
  *(&v130 + 1) = v107;
  v131 = v98;
  v132 = 0x403E000000000000;
  v133 = v106;
  v134 = v105;
  v135 = v104;
  v136 = v103;
  v137 = v102;
  v138 = v101;
  v139 = v97;
  *v140 = *v144;
  *&v140[3] = *&v144[3];
  v141 = a6;
  sub_10008A5C8(&v130);
  return sub_10002C51C(v109, &qword_10032EE70);
}

void sub_100089CA0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *a1;
  v35 = *(a1 + 16);
  aBlock = *a1;
  v30 = *(a1 + 16);
  sub_10002B6CC(&qword_10032EE50);
  State.wrappedValue.getter();
  v10 = String.count.getter();

  if (v10 == *(a1 + 96))
  {
    if ([objc_opt_self() isRunningInStoreDemoMode])
    {
      v11 = Logger.common.unsafeMutableAddressor();
      (*(v7 + 16))(v9, v11, v6);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Allowing any passcode for store demo mode.", v14, 2u);
      }

      v15 = (*(v7 + 8))(v9, v6);
      __chkstk_darwin(v15);
      *&v28[-16] = a1;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
      goto LABEL_6;
    }

    if (qword_10032B4D0 != -1)
    {
      swift_once();
    }

    aBlock = v34;
    v30 = v35;
    State.wrappedValue.getter();
    v16 = swift_allocObject();
    v17 = *(a1 + 80);
    *(v16 + 80) = *(a1 + 64);
    *(v16 + 96) = v17;
    v18 = *(a1 + 96);
    v19 = *(a1 + 16);
    *(v16 + 16) = *a1;
    *(v16 + 32) = v19;
    v20 = *(a1 + 48);
    *(v16 + 48) = *(a1 + 32);
    *(v16 + 64) = v20;
    *(v16 + 112) = v18;
    *(v16 + 120) = a2;
    *(v16 + 128) = a3;
    v21 = objc_opt_self();

    sub_100053490(a1, &aBlock);
    if ([v21 settingEnabled])
    {
      v22 = String._bridgeToObjectiveC()();

      v23 = [v21 validatePIN:v22];

      if (v23)
      {
        __chkstk_darwin(v24);
        *&v28[-16] = a1;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();

LABEL_6:

        return;
      }

      a2();
    }

    else
    {
      v25 = [objc_allocWithZone(AXBackBoardServer) init];
      v26 = String._bridgeToObjectiveC()();

      v32 = sub_10008A784;
      v33 = v16;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v30 = sub_1000814A4;
      v31 = &unk_100300E18;
      v27 = _Block_copy(&aBlock);

      [v25 validateClarityUIAdminPasscode:v26 completion:v27];

      _Block_release(v27);
    }
  }
}

uint64_t sub_10008A168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((a1 & 1) == 0)
  {
    return a3();
  }

  __chkstk_darwin(a1);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10008A210()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

unint64_t sub_10008A310()
{
  result = qword_10032EE80;
  if (!qword_10032EE80)
  {
    sub_10002CAF8(&qword_10032EE68);
    sub_10008A3C8();
    sub_10002CD18(&qword_10032D458, &qword_10032D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EE80);
  }

  return result;
}

unint64_t sub_10008A3C8()
{
  result = qword_10032EE88;
  if (!qword_10032EE88)
  {
    sub_10002CAF8(&qword_10032EE78);
    sub_10008A480();
    sub_10002CD18(&qword_10032E308, &qword_10032E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EE88);
  }

  return result;
}

unint64_t sub_10008A480()
{
  result = qword_10032EE90;
  if (!qword_10032EE90)
  {
    sub_10002CAF8(&qword_10032EE98);
    sub_10004D34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EE90);
  }

  return result;
}

uint64_t sub_10008A61C()
{

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_10008A684@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008A71C()
{

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_10008A790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008A7AC()
{
  result = qword_10032EEA8;
  if (!qword_10032EEA8)
  {
    sub_10002CAF8(&qword_10032EEB0);
    sub_10008A864();
    sub_10002CD18(&qword_10032DF28, &qword_10032DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EEA8);
  }

  return result;
}

unint64_t sub_10008A864()
{
  result = qword_10032EEB8;
  if (!qword_10032EEB8)
  {
    sub_10002CAF8(&qword_10032EEC0);
    sub_10002CD18(&qword_10032EEC8, &qword_10032EED0);
    sub_100058D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EEB8);
  }

  return result;
}

id sub_10008AAB0()
{
  v1 = (v0 + OBJC_IVAR___CLBOpenApplicationVerifierResult_implementation);
  v2 = *(v0 + OBJC_IVAR___CLBOpenApplicationVerifierResult_implementation + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 1);
  v4 = qword_10029B608[*v1];
  v5 = type metadata accessor for OpenApplicationVerifierResultWrapper.Error();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___CLBOpenApplicationVerifierResultError_code] = v4;
  v7 = &v6[OBJC_IVAR___CLBOpenApplicationVerifierResultError_errorDescription];
  *v7 = v3;
  *(v7 + 1) = v2;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, "init");
}

id sub_10008ACF4()
{
  sub_10002C9FC(0, &qword_10032BF60);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 applicationBundleIdentifiers];

  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = type metadata accessor for OpenApplicationVerifierWrapper();
  v3 = objc_allocWithZone(v2);
  type metadata accessor for OpenApplicationVerifier();
  swift_allocObject();
  *&v3[OBJC_IVAR___CLBOpenApplicationVerifier_implementation] = OpenApplicationVerifier.init(userSelectedApplicationBundleIdentifiers:isPPTURL:)();
  v5.receiver = v3;
  v5.super_class = v2;
  result = objc_msgSendSuper2(&v5, "init");
  qword_1003368D0 = result;
  return result;
}

id sub_10008AE54()
{
  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 _shouldHandleTestURL:v2];

  return v4;
}

uint64_t sub_10008B010(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for OpenApplicationVerifierResult();
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v4;
  v2[14] = v3;

  return _swift_task_switch(sub_10008B0D4, v4, v3);
}

uint64_t sub_10008B0D4()
{
  v1 = v0[9];
  v2 = *(v0[10] + OBJC_IVAR___CLBOpenApplicationVerifier_implementation);
  v0[15] = v2;
  v0[5] = sub_10002C9FC(0, &qword_10032EF80);
  v0[6] = &protocol witness table for FBSystemServiceOpenApplicationRequest;
  v0[2] = v1;
  v3 = *(*v2 + 112);

  v4 = v1;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10008B24C;
  v6 = v0[11];

  return (v8)(v6, v0 + 2);
}

uint64_t sub_10008B24C()
{
  v1 = *v0;

  sub_10002C9B0(v1 + 16);
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10008B394, v3, v2);
}

uint64_t sub_10008B394()
{
  v1 = *(v0 + 88);

  v2 = type metadata accessor for OpenApplicationVerifierResultWrapper();
  v3 = objc_allocWithZone(v2);
  sub_10008C660(v1, v3 + OBJC_IVAR___CLBOpenApplicationVerifierResult_implementation);
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v4 = objc_msgSendSuper2((v0 + 56), "init");
  sub_10008C6C4(v1);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10008B5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008B678, v5, v4);
}

uint64_t sub_10008B678()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10008B73C;
  v7 = v0[2];

  return sub_10008B010(v7);
}

uint64_t sub_10008B73C(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id sub_10008B9C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t FBSystemServiceOpenApplicationRequest.applicationBundleIdentifier.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t FBSystemServiceOpenApplicationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002B6CC(&qword_10032C148);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = [v2 options];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 url];

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_10008BC08(v6, a1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_10008BC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032C148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id FBSystemServiceOpenApplicationRequest.isBackground.getter()
{
  result = [v0 options];
  if (result)
  {
    v2 = result;
    v3 = [result dictionary];

    if (v3)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v5 = [(objc_class *)isa bs_BOOLForKey:FBSOpenApplicationOptionKeyActivateSuspended];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id FBSystemServiceOpenApplicationRequest.clientBundleIdentifier.getter()
{
  result = [v0 clientProcess];
  if (result)
  {
    v2 = result;
    v3 = [result bundleIdentifier];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id FBSystemServiceOpenApplicationRequest.clientProcessIdentity.getter()
{
  v1 = [v0 clientProcess];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identity];

  return v3;
}

uint64_t sub_10008BE58()
{
  v0 = sub_10008D0BC(&off_1002FD8A0);
  result = swift_arrayDestroy();
  qword_1003368D8 = v0;
  return result;
}

uint64_t FBSystemServiceOpenApplicationRequest.isClientAllowedInternalTool.getter()
{
  v1 = [v0 clientProcess];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 executablePath];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (qword_10032B508 != -1)
      {
        swift_once();
      }

      v8 = sub_10008BF7C(v5, v7, qword_1003368D8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10008BF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id FBSystemServiceOpenApplicationRequest.isClientForeground.getter()
{
  result = [v0 clientProcess];
  if (result)
  {
    v2 = result;
    v3 = [result state];

    v4 = [v3 visibility];
    return (v4 == 2);
  }

  return result;
}

uint64_t sub_10008C164()
{
  v1 = [*v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10008C1E0()
{
  result = [*v0 options];
  if (result)
  {
    v2 = result;
    v3 = [result dictionary];

    if (v3)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v5 = [(objc_class *)isa bs_BOOLForKey:FBSOpenApplicationOptionKeyActivateSuspended];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_10008C2F4()
{
  result = [*v0 clientProcess];
  if (result)
  {
    v2 = result;
    v3 = [result bundleIdentifier];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_10008C380()
{
  v1 = [*v0 clientProcess];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identity];

  return v3;
}

uint64_t sub_10008C3E4()
{
  v1 = [*v0 clientProcess];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 executablePath];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (qword_10032B508 != -1)
      {
        swift_once();
      }

      v8 = sub_10008BF7C(v5, v7, qword_1003368D8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id sub_10008C4BC()
{
  result = [*v0 clientProcess];
  if (result)
  {
    v2 = result;
    v3 = [result state];

    v4 = [v3 visibility];
    return (v4 == 2);
  }

  return result;
}

uint64_t type metadata accessor for OpenApplicationVerifierResultWrapper()
{
  result = qword_10032EF08;
  if (!qword_10032EF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008C588()
{
  result = type metadata accessor for OpenApplicationVerifierResult();
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

uint64_t sub_10008C660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenApplicationVerifierResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C6C4(uint64_t a1)
{
  v2 = type metadata accessor for OpenApplicationVerifierResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C720()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008C768()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002E558;

  return sub_10008B5DC(v2, v3, v4);
}

uint64_t sub_10008C81C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10005D0A4;

  return v6();
}

uint64_t sub_10008C908(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002E558;

  return v7();
}

uint64_t sub_10008C9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10003AFFC(a3, v23 - v10, &qword_10032D050);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10008CCBC(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10008CCBC(a3);

    return v21;
  }

LABEL_8:
  sub_10008CCBC(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10008CCBC(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032D050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008CD24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10008CE1C;

  return v6(a1);
}

uint64_t sub_10008CE1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008CF14()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008CF4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005D0A4;

  return sub_10008CD24(a1, v4);
}

uint64_t sub_10008D004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002E558;

  return sub_10008CD24(a1, v4);
}

Swift::Int sub_10008D0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002B6CC(&qword_10032EF88);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

id sub_10008D25C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationSceneView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008D308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008D350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10008D3C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = (a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  v7 = *(a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source);
  v8 = *(a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source + 8);
  *v6 = *v2;
  v6[1] = v5;
  sub_10003FEE0(v4, v5);
  sub_1000542A0(v7, v8);
  sub_10003FA80(v7, v8);
  v9 = (a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets);
  v10 = *(a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets);
  v11 = *(a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 8);
  v12 = *(a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 16);
  v13 = *(a1 + OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets + 24);
  v14 = *(v2 + 32);
  *v9 = *(v2 + 16);
  v9[1] = v14;
  sub_100054900(v10, v11, v12, v13);
}

id sub_10008D448@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 32);
  v14 = *(v1 + 16);
  v15 = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v16 = v6;
  v8 = type metadata accessor for ApplicationSceneView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV12ClarityBoard20ApplicationSceneView11Coordinator_applicationSceneView];
  *v10 = v3;
  *(v10 + 1) = v4;
  v11 = v15;
  *(v10 + 1) = v14;
  *(v10 + 2) = v11;
  *(v10 + 6) = v16;
  *(v10 + 7) = v7;
  sub_10003FEE0(v3, v4);
  v13.receiver = v9;
  v13.super_class = v8;

  result = objc_msgSendSuper2(&v13, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10008D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008D8A0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008D8A0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10008D5BC()
{
  sub_10008D8A0();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10008D5E8()
{
  result = qword_10032EFC0;
  if (!qword_10032EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EFC0);
  }

  return result;
}

char *sub_10008D63C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Logger.common.unsafeMutableAddressor();
  (*(v14 + 16))(v16, v17, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Creating scene view controller.", v20, 2u);
  }

  (*(v14 + 8))(v16, v13);
  v21 = objc_allocWithZone(type metadata accessor for ApplicationSceneViewController());
  *&v21[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_scene] = 0;
  v22 = &v21[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_source];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &v21[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_safeAreaInsets];
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  sub_10003FEE0(a6, a7);
  v24 = sub_1000A43FC(1);
  sub_100056318();

  sub_10002B6CC(&qword_10032EFC8);
  UIViewControllerRepresentableContext.coordinator.getter();
  v25 = v27[1];
  *&v24[OBJC_IVAR____TtC12ClarityBoard30ApplicationSceneViewController_delegate + 8] = &off_100300FD8;
  swift_unknownObjectWeakAssign();

  return v24;
}

unint64_t sub_10008D8A0()
{
  result = qword_10032EFD0;
  if (!qword_10032EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EFD0);
  }

  return result;
}

unint64_t sub_10008D8F4(unint64_t result)
{
  if (result >= 5)
  {
    _StringGuts.grow(_:)(25);
    v1._object = 0x80000001002C36D0;
    v1._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v1);
    type metadata accessor for BSInterfaceOrientation(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10008D9B8(unint64_t result)
{
  if (result >= 5)
  {
    _StringGuts.grow(_:)(25);
    v1._object = 0x80000001002C36D0;
    v1._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v1);
    type metadata accessor for UIInterfaceOrientation(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

__n128 sub_10008DA7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10008DA98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10008DAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008DC0C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v9[1] = a1;
  v9[2] = a2;
  v9[0] = a3;
  v3 = sub_10002B6CC(&qword_10032F1E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  type metadata accessor for SystemSettings();
  sub_1000929A8(&qword_10032E028, type metadata accessor for SystemSettings);
  v7 = StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  Toggle.init(isOn:label:)();
  sub_10002CD18(&qword_10032F1E8, &qword_10032F1E0);
  View.accessibilityIdentifier(_:)();
  return (*(v4 + 8))(v6, v3);
}

UIContentSizeCategory sub_10008DDF8()
{
  sub_10002B6CC(&qword_10032F1D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10029B7C0;
  *(v0 + 32) = UIContentSizeCategoryAccessibilityMedium;
  *(v0 + 40) = UIContentSizeCategoryAccessibilityLarge;
  *(v0 + 48) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(v0 + 56) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(v0 + 64) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  qword_1003368E0 = v0;
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityLarge;
  v3 = UIContentSizeCategoryAccessibilityExtraLarge;
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;

  return UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
}

float sub_10008DEC8()
{
  if (qword_10032B510 != -1)
  {
    swift_once();
  }

  v0 = qword_1003368E0;
  v1 = sub_10006E988();
  v2 = sub_10008DF50(v1, v0);
  v4 = v3;

  result = v2;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10008DF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

id sub_10008E028()
{
  if (qword_10032B4F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003368B8;

  return v1;
}

void sub_10008E084(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10002B6CC(&qword_10032F198);
  v31 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - v2;
  v4 = sub_10002B6CC(&qword_10032F1A0);
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  type metadata accessor for SystemSettings();
  sub_1000929A8(&qword_10032E028, type metadata accessor for SystemSettings);
  v7 = StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v8 = v48;
  v9 = v49;
  v10 = v50;
  if (qword_10032B510 != -1)
  {
    swift_once();
  }

  v11 = *(qword_1003368E0 + 16);
  if (v11)
  {
    v45 = v8;
    v46 = v9;
    v47 = v10;
    v43 = 0;
    v44 = (v11 - 1);
    LocalizedStringKey.init(stringLiteral:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v40 = v12;
    LOBYTE(v41) = v13 & 1;
    v42 = v14;
    v15 = StateObject.wrappedValue.getter();
    v16 = sub_10006E988();

    AXTextSizePercentage();
    v17 = AXFormatFloatWithPercentage();
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v35 = v19;
      v36 = v21;
      sub_100030970();
      v35 = Text.init<A>(_:)();
      v36 = v22;
      v37 = v23 & 1;
      v38 = v24;
      sub_1000929FC();
      v25 = Slider.init<A>(value:in:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)();
      __chkstk_darwin(v25);
      v26 = sub_10002B6CC(&qword_10032F1B0);
      v27 = sub_10002CD18(&qword_10032F1B8, &qword_10032F198);
      v28 = sub_100092A5C();
      View.accessibilityRepresentation<A>(representation:)();
      (*(v31 + 8))(v3, v1);
      v39 = v1;
      v40 = v26;
      v41 = v27;
      v42 = v28;
      swift_getOpaqueTypeConformance2();
      v29 = v33;
      View.accessibilityIdentifier(_:)();
      (*(v32 + 8))(v6, v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10008E578(float *a1@<X8>)
{
  if (qword_10032B510 != -1)
  {
    swift_once();
  }

  v2 = qword_1003368E0;
  v3 = sub_10006E988();
  v4 = sub_10008DF50(v3, v2);
  v6 = v5;

  v7 = v4;
  if (v6)
  {
    v7 = 0.0;
  }

  *a1 = v7;
}

void sub_10008E624(uint64_t a1, void *a2, char a3)
{
  v6 = sub_10002B6CC(&qword_10032F1D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  type metadata accessor for SystemSettings();
  sub_1000929A8(&qword_10032E028, type metadata accessor for SystemSettings);
  v10 = StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v11 = v20;
  v12 = v21;
  v13 = v22;
  if (qword_10032B510 != -1)
  {
    swift_once();
  }

  v14 = *(qword_1003368E0 + 16);
  if (v14)
  {
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v16[2] = 0;
    *&v16[3] = (v14 - 1);
    sub_1000929FC();
    Slider<>.init<A>(value:in:onEditingChanged:label:)();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = a3 & 1;
    sub_100092B8C(a1, a2, a3 & 1);
    sub_10002CD18(&qword_10032F1C8, &qword_10032F1D0);
    View.accessibilityAdjustableAction(_:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_10008E908(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityAdjustmentDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    type metadata accessor for SystemSettings();
    sub_1000929A8(&qword_10032E028, type metadata accessor for SystemSettings);
    v7 = StateObject.wrappedValue.getter();
    if (qword_10032B510 != -1)
    {
      swift_once();
    }

    v8 = qword_1003368E0;
    v9 = sub_10006E988();
    v10 = sub_10008DF50(v9, v8);
    v12 = v11;

    v13 = *(v8 + 16) - 1;
    v14 = v10 + 1.0;
    if (v12)
    {
      v14 = 1.0;
    }

    if (v14 <= v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

LABEL_17:
    v23 = StateObject.wrappedValue.getter();
    sub_100092B9C(v23, v15);

    return;
  }

  if (v6 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    type metadata accessor for SystemSettings();
    sub_1000929A8(&qword_10032E028, type metadata accessor for SystemSettings);
    v16 = StateObject.wrappedValue.getter();
    if (qword_10032B510 != -1)
    {
      swift_once();
    }

    v17 = qword_1003368E0;
    v18 = sub_10006E988();
    v19 = sub_10008DF50(v18, v17);
    v21 = v20;

    v22 = v19 + -1.0;
    if (v21)
    {
      v22 = -1.0;
    }

    if (v22 > 0.0)
    {
      v15 = v22;
    }

    else
    {
      v15 = 0.0;
    }

    goto LABEL_17;
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_10008EC48@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for VolumeSlider();
  v3 = v2 - 8;
  v23 = *(v2 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10002B6CC(&qword_10032F1D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10002B6CC(&qword_10032F1F0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = v1 + *(v3 + 28);
  v14 = *(v12 + 8);
  LODWORD(v27) = *v12;
  v13 = v27;
  v28 = v14;
  sub_10002B6CC(&qword_10032BAF0);
  State.projectedValue.getter();
  v27 = 0x3F80000000000000;
  sub_1000929FC();
  Slider<>.init<A>(value:in:onEditingChanged:label:)();
  LODWORD(v25) = v13;
  v26 = v14;
  State.wrappedValue.getter();
  sub_10002CD18(&qword_10032F1C8, &qword_10032F1D0);
  View.onChange<A>(of:initial:_:)();
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  sub_100092DA0(v22, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v17 = swift_allocObject();
  sub_100092EF0(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = *(v9 + 52);
  v19 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v19 - 8) + 16))(&v11[v18], v15, v19);
  v20 = &v11[*(v9 + 56)];
  *v20 = sub_100092F54;
  v20[1] = v17;
  sub_10002CD18(&qword_10032F1F8, &qword_10032F1F0);
  View.accessibilityIdentifier(_:)();
  return sub_10002C51C(v11, &qword_10032F1F0);
}

void sub_10008F078(uint64_t a1, int *a2)
{
  v2 = *a2;
  v4 = [qword_100336870 volumeManager];
  LODWORD(v3) = v2;
  [v4 setVolume:v3];
}

uint64_t sub_10008F0E8()
{
  v0 = [qword_100336870 volumeManager];
  [v0 volume];

  type metadata accessor for VolumeSlider();
  sub_10002B6CC(&qword_10032BAF0);
  return State.wrappedValue.setter();
}

uint64_t sub_10008F198@<X0>(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v15[1] = a2;
  v5 = sub_10002B6CC(&qword_10032F1D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  v15[0] = sub_10002B6CC(&qword_10032F200);
  v9 = *(v15[0] - 8);
  __chkstk_darwin(v15[0]);
  v11 = v15 - v10;
  *&v20 = a3;
  v21 = a1;
  sub_10002B6CC(&qword_10032BAF0);
  State.projectedValue.getter();
  v20 = 0x3F8000003DCCCCCDLL;
  sub_1000929FC();
  Slider<>.init<A>(value:in:onEditingChanged:label:)();
  *&v16 = a3;
  v17 = a1;
  State.wrappedValue.getter();
  v12 = sub_10002CD18(&qword_10032F1C8, &qword_10032F1D0);
  View.onChange<A>(of:initial:_:)();
  (*(v6 + 8))(v8, v5);
  v16 = v5;
  v17 = &type metadata for Float;
  v18 = v12;
  v19 = &protocol witness table for Float;
  swift_getOpaqueTypeConformance2();
  v13 = v15[0];
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v13);
}

uint64_t sub_10008F4D8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_10008F538(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v4 = v2;
  v3 = &selRef_startTransactionIfNeeded;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_releaseTransaction;
  }

  [v2 *v3];
}

void sub_10008F5B8(float *a1, float *a2)
{
  v2 = *a2;
  if (*a1 != *a2)
  {
    v4 = [objc_opt_self() sharedInstance];
    *&v3 = v2;
    [v4 setBrightness:v3];
  }
}

__n128 sub_10008F650@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032F030);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10002B6CC(&qword_10032F038);
  sub_10008F854(a1, &v7[*(v8 + 44)]);
  v9 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = v9;
  v21 = *(a1 + 48);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = *(a1 + 48);

  sub_100091EFC(&v23, v20);
  sub_100091EFC(&v22, v20);
  sub_100091F6C(&v21, v20);
  v12 = static Color.clarityUIContentBackground.getter();
  v13 = static Color.primary.getter();
  v14 = &v7[*(v5 + 44)];
  *v14 = sub_100091ED4;
  v14[1] = v10;
  v14[2] = v12;
  v14[3] = v13;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100091FC8(v7, a2);
  v15 = a2 + *(sub_10002B6CC(&qword_10032F040) + 36);
  v16 = v20[5];
  *(v15 + 64) = v20[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v20[6];
  v17 = v20[1];
  *v15 = v20[0];
  *(v15 + 16) = v17;
  result = v20[3];
  *(v15 + 32) = v20[2];
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_10008F854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v31 = sub_10002B6CC(&qword_10032F048);
  v28 = *(v31 - 8);
  v3 = v28;
  v4 = __chkstk_darwin(v31);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v13 = Text.bold()();
  v15 = v14;
  v30 = v16;
  v18 = v17;
  sub_100047B84(v8, v10, v12 & 1);

  v34 = v32;
  sub_10002B6CC(&qword_10032F050);
  sub_100092040();
  v19 = v7;
  v29 = v7;
  List<>.init(content:)();
  v20 = *(v3 + 16);
  v21 = v33;
  v22 = v31;
  v20(v33, v19, v31);
  *a2 = v13;
  *(a2 + 8) = v15;
  v23 = v30 & 1;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v18;
  v24 = sub_10002B6CC(&qword_10032F080);
  v20((a2 + *(v24 + 48)), v21, v22);
  v25 = a2 + *(v24 + 64);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_100047B94(v13, v15, v23);
  v26 = *(v28 + 8);

  v26(v29, v22);
  v26(v21, v22);
  sub_100047B84(v13, v15, v23);
}

uint64_t sub_10008FB18@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  sub_10008FBBC(a1, a2);
  if (qword_10032B528 != -1)
  {
    swift_once();
  }

  v3 = AnyView.init<A>(_:)();
  result = sub_10002B6CC(&qword_10032F050);
  *&a2[*(result + 36)] = v3;
  return result;
}

uint64_t sub_10008FBBC@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v101 = a1;
  v102 = a2;
  v111 = sub_10002B6CC(&qword_10032F088);
  v126 = *(v111 - 8);
  v2 = __chkstk_darwin(v111);
  v121 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v109 = &v95 - v4;
  v120 = sub_10002B6CC(&qword_10032F090);
  v125 = *(v120 - 8);
  v5 = __chkstk_darwin(v120);
  v117 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v95 - v7;
  v110 = sub_10002B6CC(&qword_10032F098);
  v124 = *(v110 - 8);
  v8 = __chkstk_darwin(v110);
  v116 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v95 - v10;
  v119 = sub_10002B6CC(&qword_10032F0A0);
  v123 = *(v119 - 8);
  v11 = __chkstk_darwin(v119);
  v115 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v95 - v13;
  v118 = sub_10002B6CC(&qword_10032F0A8);
  v122 = *(v118 - 8);
  v14 = __chkstk_darwin(v118);
  v114 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v95 - v16;
  v105 = sub_10002B6CC(&qword_10032F0B0);
  v108 = *(v105 - 8);
  v17 = __chkstk_darwin(v105);
  v104 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v95 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_100047B84(v20, v22, v24 & 1);

  v128 = v25;
  v129 = v27;
  v130 = v29 & 1;
  v131 = v31;
  sub_1000921A8();
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  v36 = v35;
  v37 = Text.foregroundColor(_:)();
  v39 = v38;
  LOBYTE(v20) = v40;
  v42 = v41;
  sub_100047B84(v32, v34, v36 & 1);

  v128 = v37;
  v129 = v39;
  v130 = v20 & 1;
  v131 = v42;
  sub_1000921FC();
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v45 = v44;
  LOBYTE(v34) = v46;
  v47 = Text.foregroundColor(_:)();
  v49 = v48;
  LOBYTE(v37) = v50;
  v52 = v51;
  sub_100047B84(v43, v45, v34 & 1);

  v128 = v47;
  v129 = v49;
  v130 = v37 & 1;
  v131 = v52;
  sub_100092250();
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v53 = Text.init(_:tableName:bundle:comment:)();
  v55 = v54;
  LOBYTE(v34) = v56;
  v57 = Text.foregroundColor(_:)();
  v59 = v58;
  LOBYTE(v37) = v60;
  v62 = v61;
  sub_100047B84(v53, v55, v34 & 1);

  v128 = v57;
  v129 = v59;
  v130 = v37 & 1;
  v131 = v62;
  type metadata accessor for VolumeSlider();
  sub_1000929A8(&qword_10032F0D0, type metadata accessor for VolumeSlider);
  v63 = v103;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v64 = Text.init(_:tableName:bundle:comment:)();
  v66 = v65;
  LOBYTE(v34) = v67;
  v68 = Text.foregroundColor(_:)();
  v70 = v69;
  LOBYTE(v59) = v71;
  v73 = v72;
  sub_100047B84(v64, v66, v34 & 1);

  v128 = v68;
  v129 = v70;
  v130 = v59 & 1;
  v131 = v73;
  sub_1000922F0();
  v74 = v107;
  Section<>.init(header:content:)();
  v127 = v101;
  sub_10002B6CC(&qword_10032F0E0);
  sub_10009234C();
  v75 = v109;
  Section<>.init(content:)();
  v96 = *(v108 + 16);
  v76 = v104;
  v77 = v105;
  v96(v104, v106, v105);
  v101 = *(v122 + 16);
  v101(v114, v113, v118);
  v100 = *(v123 + 16);
  v100(v115, v112, v119);
  v99 = *(v124 + 16);
  v99(v116, v63, v110);
  v98 = *(v125 + 16);
  v98(v117, v74, v120);
  v97 = *(v126 + 16);
  v78 = v75;
  v79 = v111;
  v97(v121, v78, v111);
  v80 = v102;
  v96(v102, v76, v77);
  v81 = sub_10002B6CC(&qword_10032F0F0);
  v101(&v80[v81[12]], v114, v118);
  v100(&v80[v81[16]], v115, v119);
  v82 = v110;
  v99(&v80[v81[20]], v116, v110);
  v83 = v120;
  v98(&v80[v81[24]], v117, v120);
  v97(&v80[v81[28]], v121, v79);
  v84 = *(v126 + 8);
  v126 += 8;
  v102 = v84;
  (v84)(v109, v79);
  v85 = *(v125 + 8);
  v125 += 8;
  v85(v107, v83);
  v86 = *(v124 + 8);
  v124 += 8;
  v87 = v82;
  v86(v103, v82);
  v88 = *(v123 + 8);
  v123 += 8;
  v89 = v119;
  v88(v112, v119);
  v90 = *(v122 + 8);
  v122 += 8;
  v91 = v118;
  v90(v113, v118);
  v92 = *(v108 + 8);
  v93 = v105;
  v92(v106, v105);
  (v102)(v121, v111);
  v85(v117, v120);
  v86(v116, v87);
  v88(v115, v89);
  v90(v114, v91);
  return (v92)(v104, v93);
}

void sub_100090984(uint64_t a1@<X8>)
{
  *a1 = sub_100093440;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

float sub_1000909A0@<S0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v3 = a1 + *(type metadata accessor for VolumeSlider() + 20);
  v4 = [qword_100336870 volumeManager];
  [v4 volume];

  State.init(wrappedValue:)();
  result = v6;
  *v3 = v6;
  *(v3 + 8) = v7;
  return result;
}

float sub_100090A80@<S0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 brightness];

  State.init(wrappedValue:)();
  result = v4;
  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_100090B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_10002B6CC(&qword_10032CFD8);
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v17 = sub_10002B6CC(&qword_10032F0F8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v15 = &v14 - v6;
  v7 = *(a1 + 16);
  v24 = *(a1 + 32);
  v25 = v7;
  v23 = *(a1 + 48);
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = *(a1 + 48);

  sub_100091EFC(&v25, v21);
  sub_100091EFC(&v24, v21);
  sub_100091F6C(&v23, v21);
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v22 = v24;
  sub_10002B6CC(&qword_10032B720);
  State.projectedValue.getter();
  v20 = a1;
  v13 = sub_10002CD18(&unk_10032CFF8, &qword_10032CFD8);
  v10 = v15;
  View.alert<A, B>(_:isPresented:actions:message:)();

  (*(v16 + 8))(v5, v3);
  v21[0] = v3;
  v21[1] = v3;
  v21[2] = &type metadata for Text;
  v21[3] = v13;
  v21[4] = v13;
  v21[5] = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v11 = v17;
  View.accessibilityIdentifier(_:)();
  return (*(v18 + 8))(v10, v11);
}

uint64_t sub_100090F10@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Color.red.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100047B84(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100091018(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032F100);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3 - 8];
  static ButtonRole.destructive.getter();
  v5 = type metadata accessor for ButtonRole();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14 = v6;
  v12 = *(a1 + 48);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = *(a1 + 48);

  sub_100091EFC(&v14, v11);
  sub_100091EFC(&v13, v11);
  sub_100091F6C(&v12, v11);
  return Button.init(role:action:label:)();
}

uint64_t sub_1000911A4()
{
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

uint64_t sub_100091228@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000912A0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_100091318@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  LOBYTE(v6) = 1;
  sub_100091448(v14);
  *&v13[7] = v14[0];
  *&v13[23] = v14[1];
  *&v13[39] = v15[0];
  *&v13[48] = *(v15 + 9);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v3 = static Color.black.getter();
  v4 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = *v13;
  *(a1 + 33) = *&v13[16];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = *&v13[48];
  *(a1 + 88) = sub_1000915A8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  result = v10;
  *(a1 + 216) = v12;
  *(a1 + 200) = v11;
  *(a1 + 184) = v10;
  *(a1 + 168) = v9;
  *(a1 + 232) = v3;
  *(a1 + 240) = v4;
  return result;
}

uint64_t sub_100091448@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Color.white.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100047B84(v2, v4, v6 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11 & 1;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100047B94(v7, v9, v11 & 1);

  sub_100047B84(v7, v9, v11 & 1);
}

uint64_t sub_1000915A8()
{
  v0 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_100035D1C();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v3 setRestartReason:CLFRestartReasonShutDown];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1000AB448(0, 0, v2, &unk_10029B8C8, v6);
}

uint64_t sub_1000916F4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000917A4;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_1000917A4()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100042020;
  }

  else
  {
    v4 = sub_100091900;
  }

  return _swift_task_switch(v4, v3, v2);
}

id sub_100091900()
{
  v0 = objc_allocWithZone(FBSShutdownOptions);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithReason:v1];

  [v2 setRebootType:0];
  [v2 setSource:1];
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  [v4 prepareForExitAndRelaunch:0];

  v5 = [v3 sharedInstance];

  return [v5 shutdownUsingOptions:v2];
}

uint64_t sub_100091A20()
{
  v1 = sub_10002B6CC(&qword_10032EFD8);
  __chkstk_darwin(v1);
  v3 = v7 - v2;
  v4 = v0[1];
  v8 = *v0;
  v9 = v4;
  v10 = v0[2];
  v11 = *(v0 + 6);
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v5 = sub_10002B6CC(&qword_10032EFE0);
  sub_10008F650(&v8, &v3[*(v5 + 44)]);
  v7[2] = v9;
  sub_10002B6CC(&qword_10032B720);
  State.projectedValue.getter();
  sub_10002B6CC(&qword_10032EFE8);
  sub_10002CD18(&qword_10032EFF0, &qword_10032EFD8);
  sub_100091BF4();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return sub_10002C51C(v3, &qword_10032EFD8);
}

unint64_t sub_100091BF4()
{
  result = qword_10032EFF8;
  if (!qword_10032EFF8)
  {
    sub_10002CAF8(&qword_10032EFE8);
    sub_100091CAC();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EFF8);
  }

  return result;
}

unint64_t sub_100091CAC()
{
  result = qword_10032F000;
  if (!qword_10032F000)
  {
    sub_10002CAF8(&qword_10032F008);
    sub_100091D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F000);
  }

  return result;
}

unint64_t sub_100091D38()
{
  result = qword_10032F010;
  if (!qword_10032F010)
  {
    sub_10002CAF8(&qword_10032F018);
    sub_10002CD18(&qword_10032F020, &qword_10032F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F010);
  }

  return result;
}

uint64_t sub_100091DF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100091E28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002E558;

  return sub_1000916F4();
}

uint64_t sub_100091EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032B720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032F030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100092040()
{
  result = qword_10032F058;
  if (!qword_10032F058)
  {
    sub_10002CAF8(&qword_10032F050);
    sub_1000920F8();
    sub_10002CD18(&qword_10032DF48, &qword_10032DF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F058);
  }

  return result;
}

unint64_t sub_1000920F8()
{
  result = qword_10032F060;
  if (!qword_10032F060)
  {
    sub_10002CAF8(&qword_10032F068);
    sub_10002CD18(&qword_10032F070, &qword_10032F078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F060);
  }

  return result;
}

unint64_t sub_1000921A8()
{
  result = qword_10032F0B8;
  if (!qword_10032F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F0B8);
  }

  return result;
}

unint64_t sub_1000921FC()
{
  result = qword_10032F0C0;
  if (!qword_10032F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F0C0);
  }

  return result;
}

unint64_t sub_100092250()
{
  result = qword_10032F0C8;
  if (!qword_10032F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F0C8);
  }

  return result;
}

uint64_t type metadata accessor for VolumeSlider()
{
  result = qword_10032F160;
  if (!qword_10032F160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000922F0()
{
  result = qword_10032F0D8;
  if (!qword_10032F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F0D8);
  }

  return result;
}

unint64_t sub_10009234C()
{
  result = qword_10032F0E8;
  if (!qword_10032F0E8)
  {
    sub_10002CAF8(&qword_10032F0E0);
    sub_10002CAF8(&qword_10032CFD8);
    sub_10002CD18(&unk_10032CFF8, &qword_10032CFD8);
    swift_getOpaqueTypeConformance2();
    sub_1000929A8(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F0E8);
  }

  return result;
}

uint64_t sub_1000924F4()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100092570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100092650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NSNotificationCenter.Publisher();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10009270C()
{
  type metadata accessor for NSNotificationCenter.Publisher();
  if (v0 <= 0x3F)
  {
    sub_10002ECDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000927C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10009280C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100092860()
{
  sub_10002CAF8(&qword_10032EFD8);
  sub_10002CAF8(&qword_10032EFE8);
  sub_10002CD18(&qword_10032EFF0, &qword_10032EFD8);
  sub_100091BF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000929A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000929FC()
{
  result = qword_10032F1A8;
  if (!qword_10032F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F1A8);
  }

  return result;
}

unint64_t sub_100092A5C()
{
  result = qword_10032F1C0;
  if (!qword_10032F1C0)
  {
    sub_10002CAF8(&qword_10032F1B0);
    sub_10002CD18(&qword_10032F1C8, &qword_10032F1D0);
    sub_1000929A8(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F1C0);
  }

  return result;
}

uint64_t sub_100092B44()
{
  sub_10003FA68(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33);
}

id sub_100092B8C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t sub_100092B9C(uint64_t a1, float a2)
{
  if (qword_10032B510 != -1)
  {
    v3 = a2;
    a1 = swift_once();
    a2 = v3;
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = a2;
  if (a2 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(qword_1003368E0 + 16) <= v2)
  {
LABEL_15:
    __break(1u);
    return __AXSSetPreferredContentSizeCategoryName(a1);
  }

  a1 = *(qword_1003368E0 + 8 * v2 + 32);

  return __AXSSetPreferredContentSizeCategoryName(a1);
}

id sub_100092C6C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC12ClarityBoard14SystemSettings_radiosPreferences);
  if (result)
  {
    result = [result airplaneMode];
  }

  *a2 = result;
  return result;
}

id sub_100092CD4@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleArbiter) currentStyle];
  *a2 = result == 2;
  return result;
}

id sub_100092D1C(_BYTE *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleArbiter;
  result = [*(v2 + OBJC_IVAR____TtC12ClarityBoard14SystemSettings_interfaceStyleArbiter) currentStyle];
  if (result != v3)
  {
    v6 = *(v2 + v4);

    return [v6 toggleCurrentStyle];
  }

  return result;
}

uint64_t sub_100092DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VolumeSlider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092E04()
{
  v1 = *(type metadata accessor for VolumeSlider() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100092EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VolumeSlider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092F54()
{
  type metadata accessor for VolumeSlider();

  return sub_10008F0E8();
}

unint64_t sub_100092FC8()
{
  result = qword_10032F208;
  if (!qword_10032F208)
  {
    sub_10002CAF8(&qword_10032F210);
    sub_10002CAF8(&qword_10032F198);
    sub_10002CAF8(&qword_10032F1B0);
    sub_10002CD18(&qword_10032F1B8, &qword_10032F198);
    sub_100092A5C();
    swift_getOpaqueTypeConformance2();
    sub_1000929A8(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F208);
  }

  return result;
}

unint64_t sub_100093124()
{
  result = qword_10032F218;
  if (!qword_10032F218)
  {
    sub_10002CAF8(&qword_10032F220);
    sub_10002CD18(&qword_10032F1E8, &qword_10032F1E0);
    sub_1000929A8(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F218);
  }

  return result;
}

unint64_t sub_100093210()
{
  result = qword_10032F228;
  if (!qword_10032F228)
  {
    sub_10002CAF8(&qword_10032F230);
    sub_10002CD18(&qword_10032F1F8, &qword_10032F1F0);
    sub_1000929A8(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F228);
  }

  return result;
}

unint64_t sub_1000932FC()
{
  result = qword_10032F238;
  if (!qword_10032F238)
  {
    sub_10002CAF8(qword_10032F240);
    sub_10002CAF8(&qword_10032F1D0);
    sub_10002CD18(&qword_10032F1C8, &qword_10032F1D0);
    swift_getOpaqueTypeConformance2();
    sub_1000929A8(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F238);
  }

  return result;
}

uint64_t sub_100093454()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000934CC(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100093608(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_100093818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v31 = a3;
  v30 = type metadata accessor for PlatterButtonType();
  v28 = *(v30 - 8);
  v4 = __chkstk_darwin(v30);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v7 = a2;
  v25[0] = a2;
  v8 = *(v6 - 8);
  __chkstk_darwin(v4);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonStyleConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v7 + 24);
  v15 = type metadata accessor for PlatterButtonStyleView();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v25 - v20;
  (*(v12 + 16))(v14, v27, v11);
  (*(v8 + 16))(v10, v29, v6);
  (*(v28 + 104))(v26, enum case for PlatterButtonType.ultraRoundedRectangle(_:), v30);

  PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(v19, v15, WitnessTable);
  v23 = *(v16 + 8);
  v23(v19, v15);
  sub_100086FE8(v21, v15, WitnessTable);
  return (v23)(v21, v15);
}

uint64_t sub_100093B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for BackButtonStyle();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_100093C10()
{
  type metadata accessor for PlatterButtonStyleView();

  return swift_getWitnessTable();
}

uint64_t sub_100093C58()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 1);
  v4 = __chkstk_darwin(v2);
  v6 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v134 = &v129 - v8;
  v9 = __chkstk_darwin(v7);
  v135 = &v129 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v129 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v129 - v15;
  __chkstk_darwin(v14);
  v18 = &v129 - v17;
  v19 = Logger.common.unsafeMutableAddressor();
  v20 = v3 + 16;
  v139 = *(v3 + 2);
  v140 = v19;
  v139(v18);
  sub_100094A84(v1, v141);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100094ABC(v1);
  if (!os_log_type_enabled(v21, v22))
  {

    v30 = *(v3 + 1);
    v30(v18, v2);
    if ((*(v1 + 16) & 1) == 0)
    {
LABEL_5:
      v31 = *(v1 + 24);
      if (v31)
      {
        v32 = v13;
        v33 = *(v1 + 17);
        v34 = v31;
        v35 = v34;
        if (v33)
        {
          v36 = [v34 supportedInterfaceOrientations];
        }

        else
        {
          v36 = 30;
        }

        v138 = [v35 interfaceOrientation];
        v131 = [v35 preferredInterfaceOrientation];
        v137 = v20;
        if (v36)
        {
          (v139)(v32, v140, v2);
          sub_100094A84(v1, v141);
          v134 = v32;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          sub_100094ABC(v1);
          LODWORD(v132) = v47;
          v48 = os_log_type_enabled(v46, v47);
          v136 = v6;
          v129 = v36;
          v130 = v35;
          if (v48)
          {
            v49 = swift_slowAlloc();
            v141[0] = swift_slowAlloc();
            *v49 = 136316162;
            v50 = BSInterfaceOrientationMaskDescription();
            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = sub_10005766C(v51, v53, v141);

            *(v49 + 4) = v54;
            v133 = v30;
            *(v49 + 12) = 2080;
            sub_10008D9B8(v138);
            v55 = BSInterfaceOrientationDescription();
            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            v59 = sub_10005766C(v56, v58, v141);

            *(v49 + 14) = v59;
            *(v49 + 22) = 2080;
            sub_10008D9B8(*(v1 + 32));
            v60 = BSInterfaceOrientationDescription();
            v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;

            v64 = sub_10005766C(v61, v63, v141);

            *(v49 + 24) = v64;
            *(v49 + 32) = 2080;
            v65 = BSInterfaceOrientationDescription();
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            v69 = sub_10005766C(v66, v68, v141);

            *(v49 + 34) = v69;
            *(v49 + 42) = 2080;
            sub_10008D9B8(*(v1 + 48));
            v70 = BSInterfaceOrientationDescription();
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v74 = sub_10005766C(v71, v73, v141);

            *(v49 + 44) = v74;
            _os_log_impl(&_mh_execute_header, v46, v132, "Supported: %s, from settings: %s, last: %s, preferred: %s, device: %s", v49, 0x34u);
            swift_arrayDestroy();

            v133(v134, v2);
          }

          else
          {

            v30(v134, v2);
          }

          v82 = v135;
          if (*(v1 + 64))
          {
            v83 = 48;
          }

          else
          {
            v84 = *(v1 + 56);
            v85 = v138;
            if ((v84 - 1) < 2)
            {
LABEL_31:
              v134 = v3;
              v86 = sub_10008D9B8(v85);
              v87 = sub_10008D9B8(*(v1 + 32));
              (v139)(v82, v140, v2);
              v88 = Logger.logObject.getter();
              v89 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                v133 = swift_slowAlloc();
                v141[0] = v133;
                *v90 = 136315906;
                v91 = BSInterfaceOrientationDescription();
                v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v138 = v2;
                v94 = v93;

                v95 = sub_10005766C(v92, v94, v141);

                *(v90 + 4) = v95;
                *(v90 + 12) = 2080;
                v96 = BSInterfaceOrientationDescription();
                v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v99 = v98;

                v100 = sub_10005766C(v97, v99, v141);

                *(v90 + 14) = v100;
                *(v90 + 22) = 2080;
                v132 = v87;
                v101 = v129;
                v102 = BSInterfaceOrientationMaskDescription();
                v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v105 = v104;

                v106 = sub_10005766C(v103, v105, v141);

                *(v90 + 24) = v106;
                *(v90 + 32) = 2080;
                v107 = v131;
                v108 = BSInterfaceOrientationDescription();
                v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v111 = v110;

                v112 = sub_10005766C(v109, v111, v141);
                v2 = v138;

                *(v90 + 34) = v112;
                _os_log_impl(&_mh_execute_header, v88, v89, "Target: %s, current: %s, supported: %s, preferred: %s", v90, 0x2Au);
                swift_arrayDestroy();
                v113 = v132;

                v3 = v134;
                v133 = *(v134 + 1);
                v133(v135, v2);
                v114 = v130;
              }

              else
              {

                v3 = v134;
                v133 = *(v134 + 1);
                v133(v82, v2);
                v113 = v87;
                v101 = v129;
                v114 = v130;
                v107 = v131;
              }

              v115 = [objc_allocWithZone(BSCanonicalOrientationMapResolver) initWithTargetOrientation:v86 currentOrientation:v113];
              v37 = sub_10008D8F4([v115 interfaceOrientationForSupportedOrientations:v101 preferredOrientation:v107]);

              v6 = v136;
              goto LABEL_42;
            }

            if (v84)
            {
              v83 = 32;
            }

            else
            {
              v83 = 48;
            }
          }

          v85 = *(v1 + v83);
          goto LABEL_31;
        }

        (v139)(v16, v140, v2);
        sub_100094A84(v1, v141);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        sub_100094ABC(v1);
        v77 = os_log_type_enabled(v75, v76);
        v133 = v30;
        if (v77)
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v132 = v16;
          v80 = v35;
          v81 = v79;
          v141[0] = v79;
          *v78 = 136315138;
          *(v78 + 4) = sub_10005766C(*v1, *(v1 + 8), v141);
          _os_log_impl(&_mh_execute_header, v75, v76, "Scene had no supported orientations, so falling back to device interface orientation: %s", v78, 0xCu);
          sub_10002C9B0(v81);

          v45 = v132;
        }

        else
        {

          v45 = v16;
        }
      }

      else
      {
        v39 = v134;
        (v139)(v134, v140, v2);
        sub_100094A84(v1, v141);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        sub_100094ABC(v1);
        v42 = os_log_type_enabled(v40, v41);
        v133 = v30;
        if (v42)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v141[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_10005766C(*v1, *(v1 + 8), v141);
          _os_log_impl(&_mh_execute_header, v40, v41, "Scene had no client settings, so falling back to device interface orientation: %s", v43, 0xCu);
          sub_10002C9B0(v44);

          v45 = v134;
        }

        else
        {

          v45 = v39;
        }
      }

      v30(v45, v2);
      v37 = *(v1 + 48);
LABEL_42:
      (v139)(v6, v140, v2);
      sub_100094A84(v1, v141);
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.default.getter();
      sub_100094ABC(v1);
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v134 = v3;
        v138 = v2;
        v141[0] = v119;
        *v118 = 136315394;
        sub_10008D9B8(v37);
        v120 = BSInterfaceOrientationDescription();
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v122 = v6;
        v124 = v123;

        v125 = sub_10005766C(v121, v124, v141);

        *(v118 + 4) = v125;
        *(v118 + 12) = 2080;
        *(v118 + 14) = sub_10005766C(*v1, *(v1 + 8), v141);
        _os_log_impl(&_mh_execute_header, v116, v117, "Application interface orientation: %s, app: %s", v118, 0x16u);
        swift_arrayDestroy();

        v126 = v122;
        v127 = v138;
      }

      else
      {

        v126 = v6;
        v127 = v2;
      }

      v133(v126, v127);
      return v37;
    }

    return *(v1 + 40);
  }

  v137 = v3 + 16;
  v138 = v2;
  v23 = swift_slowAlloc();
  v141[0] = swift_slowAlloc();
  *v23 = 136315394;
  *(v23 + 4) = sub_10005766C(*v1, *(v1 + 8), v141);
  *(v23 + 12) = 2080;
  v24 = *(v1 + 64);
  v136 = v6;
  v132 = v16;
  if (v24)
  {
    v25 = v13;
    v26 = v3;
    v27 = 0xE400000000000000;
    v28 = 1953066601;
    goto LABEL_4;
  }

  v38 = *(v1 + 56);
  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v25 = v13;
      v26 = v3;
      v28 = 0xD000000000000015;
      v27 = 0x80000001002C1BD0;
      goto LABEL_4;
    }

    if (v38 == 3)
    {
      v26 = v3;
      v25 = v13;
      v27 = 0x80000001002C1BB0;
      v28 = 0xD00000000000001FLL;
LABEL_4:
      v29 = sub_10005766C(v28, v27, v141);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Computing application interface orientation for %s. Reason: %s", v23, 0x16u);
      swift_arrayDestroy();

      v3 = v26;
      v30 = *(v26 + 1);
      v2 = v138;
      v30(v18, v138);
      v6 = v136;
      v20 = v137;
      v13 = v25;
      v16 = v132;
      if ((*(v1 + 16) & 1) == 0)
      {
        goto LABEL_5;
      }

      return *(v1 + 40);
    }
  }

  else
  {
    if (!v38)
    {
      v25 = v13;
      v26 = v3;
      v27 = 0xEF6E6F697461746FLL;
      v28 = 0x7220656369766564;
      goto LABEL_4;
    }

    if (v38 == 1)
    {
      v26 = v3;
      v25 = v13;
      v27 = 0x80000001002C1BF0;
      v28 = 0xD000000000000020;
      goto LABEL_4;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 sub_100094AEC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100094B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100094B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100094C54()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SafeAreaInsetsHandlingViewController();
  objc_msgSendSuper2(&v13, "viewSafeAreaInsetsDidChange");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 safeAreaInsets];
    v9 = v4;
    v10 = v3;
    v11 = v6;
    v12 = v5;

    v7.f64[0] = v10;
    v7.f64[1] = v9;
    v8.f64[0] = v12;
    v8.f64[1] = v11;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *&v0[qword_10032F2D0]), vceqq_f64(v8, *&v0[qword_10032F2D0 + 16])))) & 1) == 0)
    {
      sub_100094D7C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100094D34(void *a1)
{
  v1 = a1;
  sub_100094C54();
}

id sub_100094D7C()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result safeAreaInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v0 additionalSafeAreaInsets];
    v15 = *&v0[qword_10032F2D0] - (v4 - v11);
    v16 = *&v0[qword_10032F2D0 + 8] - (v6 - v12);
    v17 = *&v0[qword_10032F2D0 + 16] - (v8 - v13);
    v18 = *&v0[qword_10032F2D0 + 24] - (v10 - v14);

    return [v0 setAdditionalSafeAreaInsets:{v15, v16, v17, v18}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100094E4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_100094FA0();
}

id sub_100094EA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafeAreaInsetsHandlingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100094F28()
{
  v1 = (v0 + qword_10032F2D0);
  v2 = *&UIEdgeInsetsZero.bottom;
  *v1 = *&UIEdgeInsetsZero.top;
  v1[1] = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100094FD0()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100095074()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100095124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1000951D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100095210(v1, v2);
}

uint64_t sub_100095210(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100095370()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t sub_100095410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1000954B8(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_1000955C8()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_100095670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_100095728(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10002C9FC(0, &qword_10032F5E0);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1000958B8()
{
  [v0[2] removeIconImageObserver:v0];
  [v0[2] removeBadgeStringObserver:v0];

  v1 = OBJC_IVAR____TtC12ClarityBoard11Application___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100095B40()
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

void sub_100095BFC(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) bundleIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_100095C58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void **sub_100095D24()
{
  type metadata accessor for Applications(0);
  swift_allocObject();
  result = sub_100096260();
  qword_1003368E8 = result;
  return result;
}

uint64_t sub_100095D64()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_100095E08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_100095EB4()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *sub_100095F70()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_100096018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_1000960D0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10002C9FC(0, &unk_10032F5D0);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void **sub_100096260()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v25[-v7];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  sub_100096784();
  v9 = [objc_opt_self() sharedInstance];
  if (([v9 hasUnlockedSinceBoot] & 1) == 0)
  {
    (*(v3 + 16))(v6, v8, v2);
    v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    (*(v3 + 32))(v11 + v10, v6, v2);
    *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
    v30 = sub_100097AFC;
    v31 = v11;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1000357AC;
    v29 = &unk_100301530;
    v12 = _Block_copy(&aBlock);
    v13 = v9;

    v14 = [v13 registerFirstUnlockBlock:v12];
    _Block_release(v12);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 8))(v6, v2);
  }

  v15 = [objc_opt_self() sharedInstance];
  v16 = swift_allocObject();
  swift_weakInit();
  v30 = sub_100097BDC;
  v31 = v16;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000357AC;
  v29 = &unk_100301580;
  v17 = _Block_copy(&aBlock);

  v18 = [v15 observeUpdatesWithHandler:v17];
  _Block_release(v17);

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *&v25[-16] = v1;
  *&v25[-8] = v18;
  aBlock = v1;
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  v20 = [objc_opt_self() sharedApplicationLibrary];
  v21 = swift_allocObject();
  swift_weakInit();

  v30 = sub_100097C20;
  v31 = v21;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100068FF4;
  v29 = &unk_1003015A8;
  v22 = _Block_copy(&aBlock);

  v23 = [v20 observeDidReplaceApplicationsWithBlock:v22];
  _Block_release(v22);
  sub_1000960D0(v23);

  return v1;
}

uint64_t sub_100096784()
{
  if (qword_10032B4D0 != -1)
  {
LABEL_28:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v27;
  v27 = &_swiftEmptyArrayStorage;
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = 0;
  v3 = (v0 + 5);
  do
  {
    v4 = &v3[16 * v2];
    v5 = v2;
    while (1)
    {
      if (v5 >= v0[2])
      {
        __break(1u);
        goto LABEL_26;
      }

      v6 = objc_opt_self();

      v7 = [v6 sharedApplicationLibrary];
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 applicationInfoForBundleIdentifier:v8];

      if (v9)
      {
        break;
      }

LABEL_5:
      ++v5;
      v4 += 16;
      if (v1 == v5)
      {
        goto LABEL_13;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_5;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v2 = v5 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = (v0 + 5);
  }

  while (v1 - 1 != v5);
LABEL_13:

  v27 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_15:
      v11 = 0;
      while (1)
      {
        if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(&_swiftEmptyArrayStorage + v11 + 4);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ([v12 canBeLaunched])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v14 == v10)
        {
          goto LABEL_30;
        }
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {
    v10 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_15;
    }
  }

LABEL_30:

  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      goto LABEL_41;
    }

LABEL_33:
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      do
      {
        if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(&_swiftEmptyArrayStorage + v17 + 4);
        }

        v19 = v18;
        ++v17;
        type metadata accessor for Application(0);
        v20 = swift_allocObject();
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        ObservationRegistrar.init()();
        *(v20 + 16) = v19;
        v21 = v19;
        v22 = [v21 badgeString];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        *(v20 + 24) = v23;
        *(v20 + 32) = v25;
        [v21 addBadgeStringObserver:v20];
        [v21 addIconImageObserver:v20];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v15 != v17);
      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {
    v15 = *(&_swiftEmptyArrayStorage + 2);
    if (v15)
    {
      goto LABEL_33;
    }

LABEL_41:

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100096CA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a1 unregisterFirstUnlockBlockWithIdentifier:isa];

  v13 = Logger.common.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v13, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating applications after first unlock.", v16, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = a3;
  sub_1000B85D8(0, 0, v7, &unk_10029C028, v19);
}

uint64_t sub_100096F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100096FC0, v6, v5);
}

uint64_t sub_100096FC0()
{

  sub_100096784();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100097024()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.common.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "App availability changed.", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100096784();
  }

  return result;
}

uint64_t sub_1000971B4()
{
  v0 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_1000B85D8(0, 0, v2, &unk_10029C018, v7);
  }

  return result;
}

uint64_t sub_100097308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000973FC, v7, v6);
}

uint64_t sub_1000973FC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  v4 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Did replace applications.", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  sub_100096784();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100097528()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC12ClarityBoard12Applications___observationRegistrar;
  sub_1000978DC(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + 24);
  if (v3)
  {
    [v3 invalidate];
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v0 + 32);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 sharedApplicationLibrary];
    [v7 removeObserverForToken:v6];
  }

  swift_unknownObjectRelease();

  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v1 + v2, v8);
  return v1;
}

uint64_t sub_1000976BC()
{
  sub_100097528();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10009773C()
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

void sub_100097830(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000960D0(v1);
}

void sub_100097860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_1000978DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100097928(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100095728(v1);
}

void sub_100097958()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_1000979A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100095210(v1, v2);
}

uint64_t sub_1000979E4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_100097A24()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100097AFC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100096CA8(v3, v0 + v2, v4);
}

uint64_t sub_100097B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100097BA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100097BE4()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_100097C2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E558;

  return sub_100097308(a1, v4, v5, v6);
}

uint64_t sub_100097CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_100096F28(a1, v4, v5, v6);
}

uint64_t sub_100097DEC()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_100097E28()
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + 40) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100095728([*(v0 + 16) iconImage]);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

id sub_10009802C()
{
  v1 = [*v0 viewController];

  return v1;
}

uint64_t sub_100098064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100098154();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000980C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100098154();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009812C()
{
  sub_100098154();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100098154()
{
  result = qword_10032F5E8[0];
  if (!qword_10032F5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10032F5E8);
  }

  return result;
}

unint64_t sub_1000981B0()
{
  result = type metadata accessor for Label();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_10003F9F8();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100098298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Label();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(*(a3 + 40) - 8);
  if (*(v9 + 84) == a2)
  {
    return (*(v9 + 48))(a1 + *(a3 + 84), a2);
  }

  if (a2 != 0x7FFFFFFF)
  {
    return (*(*(*(a3 + 16) - 8) + 48))(a1 + *(a3 + 96), a2);
  }

  v10 = *(a1 + *(a3 + 88));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_100098408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Label();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  v10 = *(*(a4 + 40) - 8);
  if (*(v10 + 84) == a3)
  {
    return (*(v10 + 56))(a1 + *(a4 + 84), a2, a2);
  }

  if (a3 != 0x7FFFFFFF)
  {
    return (*(*(*(a4 + 16) - 8) + 56))(a1 + *(a4 + 96), a2, a2);
  }

  *(a1 + *(a4 + 88)) = (a2 - 1);
  return result;
}

uint64_t sub_1000985CC(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  AnyTransition.init<A>(_:)();
  View.transition(_:)();
}

uint64_t sub_1000986C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = type metadata accessor for MoveTransition();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a1 + 24);
  v62 = *(a1 + 56);
  v81 = v62;
  v80 = v61;
  v4 = type metadata accessor for Label();
  v5 = type metadata accessor for MultimodalNavigationTitleLabelStyle();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_10009A050(&qword_10032F670, &type metadata accessor for MultimodalNavigationTitleLabelStyle);
  *&v80 = v4;
  *(&v80 + 1) = v5;
  *&v81 = WitnessTable;
  *(&v81 + 1) = v7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10002CAF8(&qword_10032E310);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v57 = a1;
  v51 = *(a1 + 16);
  v54 = *(a1 + 40);
  v56 = *(a1 + 72);
  type metadata accessor for BackButtonStyle();
  swift_getWitnessTable();
  type metadata accessor for BackButton();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v52 = swift_getWitnessTable();
  v8 = type metadata accessor for VStack();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v42 - v9;
  sub_10002CAF8(&qword_10032C758);
  v44 = v8;
  v11 = type metadata accessor for ModifiedContent();
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = v42 - v12;
  sub_10002CAF8(&qword_10032C798);
  v45 = v11;
  v13 = type metadata accessor for ModifiedContent();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v49 = v42 - v14;
  v47 = v13;
  v15 = type metadata accessor for ModifiedContent();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v50 = v42 - v16;
  v17 = swift_getWitnessTable();
  v42[0] = v17;
  v18 = sub_10002CD18(&qword_10032C750, &qword_10032C758);
  v78 = v17;
  v79 = v18;
  v19 = swift_getWitnessTable();
  v42[1] = v19;
  v20 = sub_10002CD18(&qword_10032C790, &qword_10032C798);
  v76 = v19;
  v77 = v20;
  v46 = swift_getWitnessTable();
  v74 = v46;
  v75 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v21 = swift_getWitnessTable();
  *&v80 = v15;
  *(&v80 + 1) = v21;
  v22 = v21;
  v43 = v21;
  swift_getOpaqueTypeMetadata2();
  *&v80 = v15;
  *(&v80 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v23 = type metadata accessor for InvertColorsOnlyInLightModeView();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v42 - v28;
  v67 = v51;
  v68 = v61;
  v30 = *(v57 + 48);
  v69 = v54;
  v70 = v30;
  v71 = v62;
  v72 = v56;
  v73 = v59;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v31 = v63;
  MoveTransition.init(edge:)();
  sub_10009A050(&qword_10032C728, &type metadata accessor for MoveTransition);
  v32 = v48;
  v33 = v44;
  v34 = v64;
  sub_1000985CC(v31);
  (*(v65 + 8))(v31, v34);
  (*(v58 + 8))(v10, v33);
  *&v80 = static Color.clarityUIContentBackground.getter();
  static Edge.Set.all.getter();
  v35 = v49;
  v36 = v45;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v60 + 8))(v32, v36);
  static Edge.Set.bottom.getter();
  static SafeAreaRegions.all.getter();
  v37 = v50;
  v38 = v47;
  View.ignoresSafeArea(_:edges:)();
  (*(v55 + 8))(v35, v38);
  sub_10008633C(v15, v43, v27);
  (*(v53 + 8))(v37, v15);
  v39 = swift_getWitnessTable();
  sub_100086FE8(v27, v23, v39);
  v40 = *(v24 + 8);
  v40(v27, v23);
  sub_100086FE8(v29, v23, v39);
  return (v40)(v29, v23);
}

uint64_t sub_1000990E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v99 = a8;
  v102 = a4;
  v103 = a7;
  v114 = a6;
  v101 = a3;
  v112 = a2;
  v105 = a5;
  v106 = a1;
  v97 = a9;
  v94 = *(a5 - 8);
  v104 = a10;
  __chkstk_darwin(a1);
  v92 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for BackButtonStyle();
  __chkstk_darwin(v91);
  v88 = v80 - v16;
  WitnessTable = swift_getWitnessTable();
  v87 = type metadata accessor for BackButton();
  v96 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = v80 - v17;
  v93 = type metadata accessor for ModifiedContent();
  v95 = *(v93 - 8);
  v18 = __chkstk_darwin(v93);
  v113 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v89 = v80 - v21;
  v109 = *(a2 - 8);
  v22 = __chkstk_darwin(v20);
  v108 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v107 = v80 - v24;
  v128 = a3;
  v129 = a4;
  v130 = a7;
  v131 = a8;
  v25 = type metadata accessor for Label();
  v26 = type metadata accessor for MultimodalNavigationTitleLabelStyle();
  v27 = swift_getWitnessTable();
  v28 = sub_10009A050(&qword_10032F670, &type metadata accessor for MultimodalNavigationTitleLabelStyle);
  v128 = v25;
  v129 = v26;
  v130 = v27;
  v131 = v28;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v80[1] = swift_getWitnessTable();
  v29 = type metadata accessor for HStack();
  v82 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = v80 - v30;
  sub_10002CAF8(&qword_10032E310);
  v32 = type metadata accessor for ModifiedContent();
  v83 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = v80 - v33;
  v35 = type metadata accessor for ModifiedContent();
  v84 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = v80 - v36;
  v38 = type metadata accessor for ModifiedContent();
  v85 = *(v38 - 8);
  __chkstk_darwin(v38);
  v81 = v80 - v39;
  v98 = type metadata accessor for ModifiedContent();
  v100 = *(v98 - 8);
  v40 = __chkstk_darwin(v98);
  v110 = v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v111 = v80 - v42;
  v115 = v112;
  v116 = v101;
  v117 = v102;
  v118 = v105;
  v119 = v114;
  v120 = v103;
  v121 = v99;
  v122 = v104;
  v123 = v106;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  static Font.clarityUINavigationTitle.getter();
  v43 = swift_getWitnessTable();
  View.font(_:)();

  (*(v82 + 8))(v31, v29);
  static Edge.Set.top.getter();
  static ClarityUIMetrics.titleTopPadding.getter();
  v44 = sub_10002CD18(&qword_10032E308, &qword_10032E310);
  v142 = v43;
  v143 = v44;
  v45 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v83 + 8))(v34, v32);
  static Edge.Set.bottom.getter();
  static ClarityUIMetrics.titleBottomPadding.getter();
  v140 = v45;
  v141 = &protocol witness table for _PaddingLayout;
  v46 = swift_getWitnessTable();
  v47 = v81;
  View.padding(_:_:)();
  (*(v84 + 8))(v37, v35);
  static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.titleHorizontalPadding.getter();
  v138 = v46;
  v139 = &protocol witness table for _PaddingLayout;
  v48 = swift_getWitnessTable();
  v49 = v110;
  View.padding(_:_:)();
  v85[1](v47, v38);
  v136 = v48;
  v137 = &protocol witness table for _PaddingLayout;
  v50 = v98;
  v83 = swift_getWitnessTable();
  sub_100086FE8(v49, v50, v83);
  v51 = *(v100 + 8);
  v84 = v100 + 8;
  v85 = v51;
  (v51)(v49, v50);
  v52 = v112;
  v128 = v112;
  v129 = v101;
  v53 = v105;
  v130 = v102;
  v131 = v105;
  v54 = v114;
  v132 = v114;
  v133 = v103;
  v134 = v99;
  v135 = v104;
  v55 = type metadata accessor for NavigationStackLikeView();
  v56 = v106;
  sub_100086FE8(v106 + v55[24], v52, v54);
  v57 = v92;
  (*(v94 + 16))(v92, v56 + v55[21], v53);
  v58 = v88;
  sub_100093B90(v57, *(v56 + v55[22]), v53, v88);
  v59 = v86;
  sub_1000B377C(v58, *(v56 + v55[23]), *(v56 + v55[23] + 8), v91, v86);

  static ClarityUIMetrics.backButtonPadding.getter();
  v60 = v87;
  v61 = swift_getWitnessTable();
  v62 = v113;
  View.padding(_:)();
  (*(v96 + 8))(v59, v60);
  v127[3] = v61;
  v127[4] = &protocol witness table for _PaddingLayout;
  v63 = v93;
  v106 = swift_getWitnessTable();
  v64 = v89;
  v65 = v62;
  sub_100086FE8(v62, v63, v106);
  v66 = v95;
  v67 = *(v95 + 8);
  v67(v65, v63);
  v68 = v110;
  v69 = v98;
  (*(v100 + 16))(v110, v111, v98);
  v128 = v68;
  v70 = v108;
  v71 = v107;
  v72 = v112;
  (*(v109 + 16))(v108, v107, v112);
  v129 = v70;
  v73 = *(v66 + 16);
  v74 = v113;
  v73(v113, v64, v63);
  v130 = v74;
  v127[0] = v69;
  v127[1] = v72;
  v127[2] = v63;
  v124 = v83;
  v125 = v114;
  v126 = v106;
  sub_10007BEEC(&v128, 3uLL, v127);
  v67(v64, v63);
  v75 = *(v109 + 8);
  v75(v71, v72);
  v76 = v69;
  v77 = v69;
  v78 = v85;
  (v85)(v111, v76);
  v67(v113, v63);
  v75(v108, v72);
  return (v78)(v110, v77);
}

uint64_t sub_100099D10@<X0>(char *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = type metadata accessor for MultimodalNavigationTitleLabelStyle();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v12 = type metadata accessor for Label();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_10009A050(&qword_10032F670, &type metadata accessor for MultimodalNavigationTitleLabelStyle);
  v34 = v12;
  v35 = v9;
  v36 = WitnessTable;
  v37 = v14;
  v26[1] = &opaque type descriptor for <<opaque return type of View.labelStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v26 - v20;
  MultimodalNavigationTitleLabelStyle.init()();
  v22 = swift_checkMetadataState();
  View.labelStyle<A>(_:)();
  (*(v27 + 8))(v11, v9);
  v34 = v22;
  v35 = v9;
  v36 = WitnessTable;
  v37 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100086FE8(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v16 + 8);
  v24(v19, OpaqueTypeMetadata2);
  (*(v16 + 16))(v19, v21, OpaqueTypeMetadata2);
  v32 = 0;
  v33 = 0;
  v34 = v19;
  v35 = &v32;
  v31[0] = OpaqueTypeMetadata2;
  v31[1] = &type metadata for Spacer;
  v29 = OpaqueTypeConformance2;
  v30 = &protocol witness table for Spacer;
  sub_10007BEEC(&v34, 2uLL, v31);
  v24(v21, OpaqueTypeMetadata2);
  return (v24)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_10009A050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009A0F0()
{
  type metadata accessor for Label();
  type metadata accessor for MultimodalNavigationTitleLabelStyle();
  swift_getWitnessTable();
  sub_10009A050(&qword_10032F670, &type metadata accessor for MultimodalNavigationTitleLabelStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10002CAF8(&qword_10032E310);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for BackButtonStyle();
  swift_getWitnessTable();
  type metadata accessor for BackButton();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10002CAF8(&qword_10032C758);
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032C798);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032C750, &qword_10032C758);
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032C790, &qword_10032C798);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for InvertColorsOnlyInLightModeView();
  return swift_getWitnessTable();
}

uint64_t sub_10009A4F8@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v66 = type metadata accessor for MultimodalListStyle.IconStyle();
  v2 = *(v66 - 8);
  v3 = __chkstk_darwin(v66);
  v63 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = v49 - v5;
  v6 = sub_10002B6CC(&qword_10032E350);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = type metadata accessor for MultimodalListStyle();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v50 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EmergencyDialerView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10002B6CC(&qword_10032F740);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = v49 - v17;
  v67 = sub_10002B6CC(&qword_10032F748);
  __chkstk_darwin(v67);
  v61 = v49 - v18;
  sub_10009D4C8(v1, v16);
  v19 = *(v14 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_10009D530(v16, v21 + v20);
  v22 = static Color.red.getter();
  v23 = static Color.white.getter();
  v68 = v1;
  sub_10009D4C8(v1, v16);
  v56 = v19;
  v58 = v20 + v15;
  v24 = swift_allocObject();
  v60 = v20;
  sub_10009D530(v16, v24 + v20);
  v25 = [objc_opt_self() systemBackgroundColor];
  v26 = Color.init(uiColor:)();
  v27 = static Edge.Set.all.getter();
  v72 = sub_10009D594;
  v73 = v21;
  v54 = v21;
  v74 = sub_10009D614;
  v75 = v24;
  v49[2] = v24;
  v53 = v22;
  v76 = v22;
  v77 = v23;
  v51 = v23;
  v49[1] = v26;
  v78 = v26;
  v79 = v27;
  if (qword_10032B4D0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v28 = v70;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    v33 = &enum case for MultimodalListStyle.Layout.stack(_:);
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = &enum case for MultimodalListStyle.Layout.grid(_:);
    if (v34)
    {
      v33 = &enum case for MultimodalListStyle.Layout.stack(_:);
    }
  }

  v35 = *v33;
  v36 = type metadata accessor for MultimodalListStyle.Layout();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v10, v35, v36);
  (*(v37 + 56))(v10, 0, 1, v36);
  v38 = v62;
  v39 = v66;
  (*(v2 + 104))(v62, enum case for MultimodalListStyle.IconStyle.circle(_:), v66);
  sub_10003AFFC(v10, v52, &qword_10032E350);
  (*(v2 + 16))(v63, v38, v39);
  v40 = v50;
  MultimodalListStyle.init(layout:iconStyle:)();
  (*(v2 + 8))(v38, v39);
  sub_10002C51C(v10, &qword_10032E350);
  sub_10002B6CC(&qword_10032F750);
  sub_10009D688();
  v41 = v55;
  v42 = v65;
  View.listStyle<A>(_:)();
  (*(v64 + 8))(v40, v42);

  v43 = v61;
  (*(v57 + 32))(v61, v41, v59);
  v44 = v68;
  v45 = (v43 + *(v67 + 36));
  *v45 = sub_10009C98C;
  v45[1] = 0;
  v45[2] = 0;
  v45[3] = 0;
  v46 = *(v44 + 56);
  LOBYTE(v70) = *(v44 + 48);
  v71 = v46;
  sub_10002B6CC(&qword_10032B720);
  State.projectedValue.getter();
  sub_10009D4C8(v44, v16);
  v47 = swift_allocObject();
  sub_10009D530(v16, v47 + v60);
  sub_10002B6CC(&qword_10032F780);
  sub_10009D894();
  sub_10009D97C();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return sub_10002C51C(v43, &qword_10032F748);
}

uint64_t sub_10009ADC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032F7D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_10002B6CC(&qword_10032F7D8);
  sub_10009AEF0(a1, &v6[*(v7 + 44)]);
  GeometryProxy.size.getter();
  v8 = 1.0;
  if (v9 < 624.0)
  {
    GeometryProxy.size.getter();
    v8 = v10 / 624.0;
  }

  static UnitPoint.top.getter();
  v12 = v11;
  v14 = v13;
  sub_10009DAF4(v6, a2);
  result = sub_10002B6CC(&qword_10032F7E0);
  v16 = a2 + *(result + 36);
  *v16 = v8;
  *(v16 + 8) = v8;
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  return result;
}

uint64_t sub_10009AEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v6 = sub_10002B6CC(&qword_10032EE98);
  v7 = __chkstk_darwin(v6 - 8);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v65 - v9;
  v10 = sub_10002B6CC(&qword_10032F7E8);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v68 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v15[*(sub_10002B6CC(&qword_10032F7F0) + 44)];
  v65 = a1;
  v66 = v15;
  sub_10009B514(a1, v16);
  v17 = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v18 = &v15[*(v11 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v67 = *(a1 + *(type metadata accessor for EmergencyDialerView() + 36));
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for Font.Design();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  static Font.system(size:weight:design:)();
  sub_10002C51C(v5, &qword_10032D048);
  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;

  sub_100047B84(v23, v25, v27 & 1);

  static Color.red.getter();
  v34 = Text.foregroundColor(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_100047B84(v29, v31, v33 & 1);

  *&v87 = v34;
  *(&v87 + 1) = v36;
  LOBYTE(v88) = v38 & 1;
  *(&v88 + 1) = v40;
  v41 = v71;
  View.accessibilityIdentifier(_:)();
  sub_100047B84(v34, v36, v38 & 1);

  sub_10009C41C(&v72);
  v42 = v66;
  v43 = v68;
  sub_10003AFFC(v66, v68, &qword_10032F7E8);
  v44 = v69;
  sub_10003AFFC(v41, v69, &qword_10032EE98);
  v45 = v70;
  sub_10003AFFC(v43, v70, &qword_10032F7E8);
  v46 = sub_10002B6CC(&qword_10032F7F8);
  v47 = v45 + v46[12];
  v48 = v67;
  *v47 = v67;
  *(v47 + 8) = 0;
  sub_10003AFFC(v44, v45 + v46[16], &qword_10032EE98);
  v49 = v45 + v46[20];
  *v49 = v48;
  *(v49 + 8) = 0;
  v50 = v46[24];
  v51 = v74;
  v52 = v75;
  v85[2] = v74;
  v85[3] = v75;
  v53 = v77;
  v54 = v76;
  v85[4] = v76;
  v85[5] = v77;
  v55 = v73;
  v56 = v72;
  v85[0] = v72;
  v85[1] = v73;
  v57 = v83;
  v85[10] = v82;
  v85[11] = v83;
  v58 = v78;
  v59 = v79;
  v85[6] = v78;
  v85[7] = v79;
  v60 = v81;
  v61 = v80;
  v85[8] = v80;
  v85[9] = v81;
  v62 = v45 + v50;
  *(v62 + 160) = v82;
  *(v62 + 176) = v57;
  *(v62 + 96) = v58;
  *(v62 + 112) = v59;
  *(v62 + 128) = v61;
  *(v62 + 144) = v60;
  *(v62 + 32) = v51;
  *(v62 + 48) = v52;
  *(v62 + 64) = v54;
  *(v62 + 80) = v53;
  v86 = v84;
  *(v62 + 192) = v84;
  *v62 = v56;
  *(v62 + 16) = v55;
  v63 = v45 + v46[28];
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_10003AFFC(v85, &v87, &qword_10032F800);
  sub_10002C51C(v71, &qword_10032EE98);
  sub_10002C51C(v42, &qword_10032F7E8);
  v97 = v82;
  v98 = v83;
  v99 = v84;
  v93 = v78;
  v94 = v79;
  v95 = v80;
  v96 = v81;
  v89 = v74;
  v90 = v75;
  v91 = v76;
  v92 = v77;
  v87 = v72;
  v88 = v73;
  sub_10002C51C(&v87, &qword_10032F800);
  sub_10002C51C(v44, &qword_10032EE98);
  return sub_10002C51C(v43, &qword_10032F7E8);
}

uint64_t sub_10009B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v63 = a2;
  v3 = sub_10002B6CC(&qword_10032F810);
  v61 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v50 - v4;
  v5 = sub_10002B6CC(&qword_10032F818);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v50 - v6;
  v57 = sub_10002B6CC(&qword_10032B540);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v50 - v7;
  v9 = sub_10002B6CC(&qword_10032F820);
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for EmergencyDialerView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v53 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (&v50 - v53);
  sub_10009D4C8(a1, &v50 - v53);
  v16 = *(v13 + 80);
  v17 = swift_allocObject();
  sub_10009D530(v15, v17 + ((v16 + 16) & ~v16));
  sub_10002B6CC(&qword_10032F828);
  sub_10002CD18(&qword_10032F830, &qword_10032F828);
  Button.init(action:label:)();
  sub_10002B6CC(&qword_10032F678);
  v18 = v52;
  AccessibilityFocusState.projectedValue.getter();
  v19 = sub_10002CD18(&qword_10032F838, &qword_10032F820);
  v54 = v8;
  View.accessibilityFocused(_:)();

  v20 = *(v56 + 8);
  v56 = v9;
  v21 = v20(v11, v9);
  __chkstk_darwin(v21);
  v22 = (&v50 - v53);
  sub_10009D4C8(v18, &v50 - v53);
  type metadata accessor for MainActor();
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_10009D530(v22, v24 + ((v16 + 32) & ~v16));
  v25 = type metadata accessor for TaskPriority();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v50 - v28;
  static TaskPriority.userInitiated.getter();
  if (sub_1002833AC(2, 26, 4, 0))
  {
    v52 = type metadata accessor for _TaskModifier2();
    v53 = &v50;
    v51 = *(v52 - 8);
    __chkstk_darwin(v52);
    v50 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v65 = 0xD000000000000033;
    v66 = 0x80000001002C3960;
    v64 = 60;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    __chkstk_darwin(v32);
    (*(v26 + 16))(&v50 - v28, &v50 - v28, v25);
    v33 = v25;
    v34 = v50;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v26 + 8))(v29, v33);
    v35 = v57;
    v36 = v58;
    (*(v55 + 32))(v58, v54, v57);
    v37 = sub_10002B6CC(&qword_10032B548);
    (*(v51 + 32))(&v36[*(v37 + 36)], v34, v52);
  }

  else
  {
    v38 = sub_10002B6CC(&qword_10032B550);
    v36 = v58;
    v39 = &v58[*(v38 + 36)];
    v40 = type metadata accessor for _TaskModifier();
    (*(v26 + 32))(&v39[*(v40 + 20)], v29, v25);
    *v39 = &unk_10029C3F0;
    *(v39 + 1) = v24;
    v35 = v57;
    (*(v55 + 32))(v36, v54, v57);
  }

  v65 = v56;
  v66 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v35;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v62;
  v43 = v60;
  View.accessibilityIdentifier(_:)();
  v44 = (*(v59 + 8))(v36, v43);
  __chkstk_darwin(v44);
  v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AFFC(v42, v46, &qword_10032F810);
  v47 = v63;
  sub_10003AFFC(v46, v63, &qword_10032F810);
  v48 = v47 + *(sub_10002B6CC(&qword_10032F840) + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_10002C51C(v42, &qword_10032F810);
  return sub_10002C51C(v46, &qword_10032F810);
}

uint64_t sub_10009BE04@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10002B6CC(&qword_10032F848);
  return sub_10009BE54((a1 + *(v2 + 44)));
}

uint64_t sub_10009BE54@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v1 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_10002B6CC(&qword_10032F850);
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = __chkstk_darwin(v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v39 - v7;
  v8 = Image.init(systemName:)();
  v9 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v42 = type metadata accessor for Font.Design();
  v11 = *(v42 - 8);
  v41 = *(v11 + 56);
  v43 = v11 + 56;
  v41(v3, 1, 1, v42);
  v12 = static Font.system(size:weight:design:)();
  sub_10002C51C(v3, &qword_10032D048);
  v13 = swift_getKeyPath();
  v48 = v8;
  v49 = KeyPath;
  v50 = v9;
  v51 = v13;
  v52 = v12;
  static Font.Weight.bold.getter();
  sub_10002B6CC(&qword_10032F858);
  sub_10009E04C();
  View.fontWeight(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  LOBYTE(v9) = v17;
  static Color.red.getter();
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v22 = v21;

  sub_100047B84(v14, v16, v9 & 1);

  v41(v3, 1, 1, v42);
  static Font.system(size:weight:design:)();
  sub_10002C51C(v3, &qword_10032D048);
  v23 = Text.font(_:)();
  v25 = v24;
  LODWORD(v43) = v26;
  v28 = v27;

  sub_100047B84(v18, v20, v22 & 1);

  v30 = v44;
  v29 = v45;
  v31 = *(v45 + 16);
  v32 = v40;
  v33 = v46;
  v31(v44, v40, v46);
  v34 = v47;
  v31(v47, v30, v33);
  v35 = &v34[*(sub_10002B6CC(&qword_10032F878) + 48)];
  *v35 = v23;
  *(v35 + 1) = v25;
  v36 = v43;
  LOBYTE(v14) = v43 & 1;
  v35[16] = v43 & 1;
  *(v35 + 3) = v28;
  sub_100047B94(v23, v25, v36 & 1);
  v37 = *(v29 + 8);

  v37(v32, v33);
  sub_100047B84(v23, v25, v14);

  return (v37)(v30, v33);
}

uint64_t sub_10009C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009C378, v5, v4);
}

uint64_t sub_10009C378()
{

  type metadata accessor for EmergencyDialerView();
  *(v0 + 32) = 1;
  sub_10002B6CC(&qword_10032F678);
  AccessibilityFocusState.wrappedValue.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009C41C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EmergencyDialerView();
  v67 = *(v3 - 8);
  __chkstk_darwin(v3);
  v68 = v4;
  v69 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v9 = v1[4];
  v10 = v1[5];
  v84 = v1[3];
  v8 = v84;
  v85 = v9;
  v86 = v10;
  v70 = sub_10002B6CC(&qword_10032EE50);
  State.wrappedValue.getter();
  v11 = String.count.getter();

  v62 = v10;
  v63 = v9;
  v61 = v8;
  if (v11 < 1)
  {
    v12 = 0xE100000000000000;
    v13 = 32;
  }

  else
  {
    v84 = v8;
    v85 = v9;
    v86 = v10;
    State.wrappedValue.getter();
    v12 = *(&v77 + 1);
    v13 = v77;
  }

  v84 = v13;
  v85 = v12;
  sub_100030970();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  static Font.system(size:weight:design:)();
  sub_10002C51C(v7, &qword_10032D048);
  v20 = Text.font(_:)();
  v59 = v21;
  v60 = v3;
  v23 = v22;
  v58 = v1;
  v25 = v24;

  sub_100047B84(v14, v16, v18 & 1);

  LODWORD(v84) = static HierarchicalShapeStyle.primary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v64 = v27;
  v65 = v26;
  v29 = v28;
  v66 = v30;
  sub_100047B84(v20, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v32 = v58;
  v33 = *(v58 + *(v60 + 36));
  v59 = KeyPath;
  v60 = v33;
  *&v77 = v61;
  *(&v77 + 1) = v63;
  *&v78 = v62;
  State.projectedValue.getter();
  v35 = v84;
  v34 = v85;
  v37 = v86;
  v36 = v87;
  v38 = v69;
  sub_10009D4C8(v32, v69);
  v39 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v40 = swift_allocObject();
  sub_10009D530(v38, v40 + v39);
  LOBYTE(v38) = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v74 = v29 & 1;
  v73 = 0;
  *&v77 = v35;
  *(&v77 + 1) = v34;
  v41 = v34;
  *&v78 = v37;
  *(&v78 + 1) = v36;
  LOBYTE(v79) = 1;
  *(&v79 + 1) = *v75;
  DWORD1(v79) = *&v75[3];
  *(&v79 + 1) = sub_10009DB6C;
  *&v80[0] = v40;
  *(v80 + 8) = xmmword_10029B330;
  *(&v80[1] + 8) = xmmword_10029B340;
  BYTE8(v80[2]) = v38;
  HIDWORD(v80[2]) = *&v76[3];
  *(&v80[2] + 9) = *v76;
  *&v81 = v42;
  *(&v81 + 1) = v43;
  *&v82 = v44;
  *(&v82 + 1) = v45;
  v83 = 0;
  v72[135] = 0;
  *&v72[119] = v82;
  *&v72[103] = v81;
  *&v72[87] = v80[2];
  *&v72[7] = v77;
  *&v72[71] = v80[1];
  *&v72[55] = v80[0];
  *&v72[39] = v79;
  *&v72[23] = v78;
  v47 = v64;
  v46 = v65;
  *a1 = v65;
  *(a1 + 8) = v47;
  *(a1 + 16) = v29 & 1;
  v49 = v59;
  v48 = v60;
  *(a1 + 24) = v66;
  *(a1 + 32) = v49;
  *(a1 + 40) = 1;
  *(a1 + 48) = v48;
  *(a1 + 56) = 0;
  v50 = *&v72[64];
  *(a1 + 137) = *&v72[80];
  v51 = *&v72[112];
  *(a1 + 153) = *&v72[96];
  *(a1 + 169) = v51;
  *(a1 + 185) = *&v72[128];
  v52 = *v72;
  *(a1 + 73) = *&v72[16];
  v53 = *&v72[48];
  *(a1 + 89) = *&v72[32];
  *(a1 + 105) = v53;
  *(a1 + 121) = v50;
  *(a1 + 57) = v52;
  v84 = v35;
  v85 = v41;
  v86 = v37;
  v87 = v36;
  v88 = 1;
  *v89 = *v75;
  *&v89[3] = *&v75[3];
  v90 = sub_10009DB6C;
  v91 = v40;
  v92 = xmmword_10029B330;
  v93 = xmmword_10029B340;
  v94 = v38;
  *v95 = *v76;
  *&v95[3] = *&v76[3];
  v96 = v42;
  v97 = v43;
  v98 = v44;
  v99 = v45;
  v100 = 0;
  v54 = v46;
  v55 = v47;
  sub_100047B94(v46, v47, v29 & 1);

  sub_10003AFFC(&v77, &v71, &qword_10032F808);
  sub_10002C51C(&v84, &qword_10032F808);
  sub_100047B84(v54, v55, v29 & 1);
}

uint64_t sub_10009C98C()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10009CA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10002B6CC(&qword_10032F7B8);
  sub_10009CB50(a1, (a2 + *(v4 + 44)));
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = Color.init(uiColor:)();
  v7 = static Edge.Set.all.getter();
  v8 = a2 + *(sub_10002B6CC(&qword_10032F7A0) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  LOBYTE(v6) = static Edge.Set.bottom.getter();
  v9 = static SafeAreaRegions.all.getter();
  result = sub_10002B6CC(&qword_10032F780);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = v6;
  return result;
}

uint64_t sub_10009CB50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for EmergencyDialerView();
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v3);
  v39 = type metadata accessor for MedicalIDMainView();
  v36 = *(v39 - 8);
  v6 = v36;
  v7 = __chkstk_darwin(v39);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  type metadata accessor for EmergencyModel();
  sub_10009D364();
  v11 = *(StateObject.wrappedValue.getter() + 16);

  v12 = *(a1 + *(v4 + 52));
  MedicalIDMainView.init(healthStore:medicalIDData:displayConfiguration:)();
  v13 = static Color.clarityUIContentBackground.getter();
  v37 = static Color.primary.getter();
  sub_10009D4C8(a1, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v15 = swift_allocObject();
  sub_10009D530(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  static ClarityUIMetrics.backButtonPadding.getter();
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v47[0]) = 0;
  v25 = *(v6 + 16);
  v26 = v41;
  v27 = v39;
  v25(v41, v10, v39);
  v28 = v40;
  v25(v40, v26, v27);
  v29 = &v28[*(sub_10002B6CC(&qword_10032F7C0) + 48)];
  *&v43 = v13;
  v30 = v37;
  *(&v43 + 1) = v37;
  *&v44 = sub_10009DAEC;
  *(&v44 + 1) = v15;
  LOBYTE(v45) = v16;
  *(&v45 + 1) = *v42;
  DWORD1(v45) = *&v42[3];
  *(&v45 + 1) = v18;
  *v46 = v20;
  *&v46[8] = v22;
  *&v46[16] = v24;
  v46[24] = 0;
  v31 = v43;
  v32 = v44;
  *(v29 + 57) = *&v46[9];
  v33 = *v46;
  *(v29 + 2) = v45;
  *(v29 + 3) = v33;
  *v29 = v31;
  *(v29 + 1) = v32;
  sub_10003AFFC(&v43, v47, &qword_10032F7C8);
  v34 = *(v36 + 8);
  v34(v10, v27);
  v47[0] = v13;
  v47[1] = v30;
  v47[2] = sub_10009DAEC;
  v47[3] = v15;
  v48 = v16;
  *v49 = *v42;
  *&v49[3] = *&v42[3];
  v50 = v18;
  v51 = v20;
  v52 = v22;
  v53 = v24;
  v54 = 0;
  sub_10002C51C(v47, &qword_10032F7C8);
  return (v34)(v41, v27);
}

uint64_t sub_10009CFB4()
{
  type metadata accessor for EmergencyModel();
  sub_10009D364();
  StateObject.wrappedValue.getter();
  sub_10002B6CC(&qword_10032EE50);
  State.wrappedValue.getter();
  sub_10006B170(v1, v2);
}

uint64_t sub_10009D084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002B6CC(&qword_10032F678);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009D154(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002B6CC(&qword_10032F678);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EmergencyDialerView()
{
  result = qword_10032F6D8;
  if (!qword_10032F6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009D250()
{
  sub_10003F7D8();
  if (v0 <= 0x3F)
  {
    sub_10009D3BC(319, &qword_10032F6E8);
    if (v1 <= 0x3F)
    {
      sub_10009D3BC(319, &qword_10032CF90);
      if (v2 <= 0x3F)
      {
        sub_10009D408();
        if (v3 <= 0x3F)
        {
          sub_10003F9F8();
          if (v4 <= 0x3F)
          {
            sub_10009D460();
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

unint64_t sub_10009D364()
{
  result = qword_10032C5A8;
  if (!qword_10032C5A8)
  {
    type metadata accessor for EmergencyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C5A8);
  }

  return result;
}

void sub_10009D3BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10009D408()
{
  if (!qword_10032F6F0)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10032F6F0);
    }
  }
}

unint64_t sub_10009D460()
{
  result = qword_10032F6F8;
  if (!qword_10032F6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032F6F8);
  }

  return result;
}

uint64_t sub_10009D4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyDialerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009D530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyDialerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009D594@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmergencyDialerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009ADC0(v4, a1);
}

unint64_t sub_10009D688()
{
  result = qword_10032F758;
  if (!qword_10032F758)
  {
    sub_10002CAF8(&qword_10032F750);
    sub_10009D740();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F758);
  }

  return result;
}

unint64_t sub_10009D740()
{
  result = qword_10032F760;
  if (!qword_10032F760)
  {
    sub_10002CAF8(&qword_10032F768);
    sub_10002CD18(&qword_10032F770, &qword_10032F778);
    sub_10002CD18(&qword_10032DF28, &qword_10032DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F760);
  }

  return result;
}

uint64_t sub_10009D824@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmergencyDialerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10009CA6C(v4, a1);
}

unint64_t sub_10009D894()
{
  result = qword_10032F788;
  if (!qword_10032F788)
  {
    sub_10002CAF8(&qword_10032F748);
    sub_10002CAF8(&qword_10032F750);
    type metadata accessor for MultimodalListStyle();
    sub_10009D688();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F788);
  }

  return result;
}

unint64_t sub_10009D97C()
{
  result = qword_10032F790;
  if (!qword_10032F790)
  {
    sub_10002CAF8(&qword_10032F780);
    sub_10009DA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F790);
  }

  return result;
}

unint64_t sub_10009DA08()
{
  result = qword_10032F798;
  if (!qword_10032F798)
  {
    sub_10002CAF8(&qword_10032F7A0);
    sub_10002CD18(&qword_10032F7A8, &qword_10032F7B0);
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F798);
  }

  return result;
}

uint64_t sub_10009DAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032F7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DB6C()
{
  type metadata accessor for EmergencyDialerView();

  return sub_10009CFB4();
}

uint64_t sub_10009DBCC()
{
  v1 = type metadata accessor for EmergencyDialerView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_10003FA78();

  v4 = v0 + v3 + *(v1 + 28);
  v5 = type metadata accessor for AccessibilityTechnologies();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  sub_10002B6CC(&qword_10032F678);

  return _swift_deallocObject(v0, v3 + v2);
}

uint64_t sub_10009DDC8()
{
  v1 = type metadata accessor for EmergencyDialerView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_10003FA78();

  v4 = v0 + v2 + *(v1 + 28);
  v5 = type metadata accessor for AccessibilityTechnologies();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  sub_10002B6CC(&qword_10032F678);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10009DF60()
{
  v2 = *(type metadata accessor for EmergencyDialerView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002E558;

  return sub_10009C2E0(v4, v5, v0 + v3);
}

unint64_t sub_10009E04C()
{
  result = qword_10032F860;
  if (!qword_10032F860)
  {
    sub_10002CAF8(&qword_10032F858);
    sub_10009E104();
    sub_10002CD18(&qword_10032E308, &qword_10032E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F860);
  }

  return result;
}

unint64_t sub_10009E104()
{
  result = qword_10032F868;
  if (!qword_10032F868)
  {
    sub_10002CAF8(&qword_10032F870);
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F868);
  }

  return result;
}

uint64_t sub_10009E1BC()
{
  sub_10002CAF8(&qword_10032F748);
  sub_10002CAF8(&qword_10032F780);
  sub_10009D894();
  sub_10009D97C();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_10009E260(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10009E274(uint64_t a1, int a2)
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

uint64_t sub_10009E2BC(uint64_t result, int a2, int a3)
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

uint64_t sub_10009E30C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656B636F6C6E55;
  }

  else
  {
    v3 = 0x64656B636F4CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656B636F6C6E55;
  }

  else
  {
    v5 = 0x64656B636F4CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10009E3B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009E430()
{
  String.hash(into:)();
}

Swift::Int sub_10009E49C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009E518@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002FD8E0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10009E578(uint64_t *a1@<X8>)
{
  v2 = 0x64656B636F4CLL;
  if (*v1)
  {
    v2 = 0x64656B636F6C6E55;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_10009E5B4(uint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(NSBundle);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithPath:v12];

  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10004A5B4(a2, 0);
    (*(v8 + 8))(v10, v7);
  }

  if (BSFloatEqualToFloat())
  {
    v15 = 7877184;
  }

  else
  {
    v15 = 7877440;
  }

  v24[2] = 1801678700;
  v24[3] = 0xE400000000000000;
  v16 = 0xE300000000000000;
  String.append(_:)(*&v15);

  v17._countAndFlagsBits = 0x683639382DLL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = objc_allocWithZone(BSUICAPackageView);
  v19 = v13;
  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 initWithPackageName:v20 inBundle:v19];

  if (v21)
  {
    v22 = [v21 layer];
    sub_10009EF30(a2, a3 & 1);
    v23 = a4;
    sub_10009EB2C(v22, a2, a3 & 0x101, v23, a2, a3 & 1, HIBYTE(a3) & 1, v23);
    sub_10004A5B4(a2, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10009E888(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_10009E5B4(a1, *v1, v2 | *(v1 + 8), *(v1 + 16));
}

void sub_10009E8B4(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();

  [a1 setState:v8 animated:1];

  v9 = [a1 layer];
  sub_10009EF30(v3, v4);
  v10 = v6;
  sub_10009EB2C(v9, v3, v7 | v4, v10, v3, v4, v5, v10);
  sub_10004A5B4(v3, v4);
}

uint64_t sub_10009E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009EF88();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009EA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009EF88();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009EAAC()
{
  sub_10009EF88();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10009EAD8()
{
  result = qword_10032F880;
  if (!qword_10032F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F880);
  }

  return result;
}

void sub_10009EB60(void *a1, void *a2)
{
  v4 = [a1 name];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v6 == 0x656C6B63616873 && v8 == 0xE700000000000000;
  v10 = v9;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v6 == 2036625250 ? (v11 = v8 == 0xE400000000000000) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v16 = a1;
      v14 = [a2 CGColor];
      if (v10)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          [v13 setFillColor:v14];
          goto LABEL_25;
        }
      }

      [v13 setStrokeColor:v14];
LABEL_25:

      return;
    }
  }
}

void sub_10009ED48(void *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, char a6, char a7, void *a8, void (*a9)(void *, uint64_t, void, uint64_t, uint64_t, void, void, id))
{
  LOWORD(v11) = a3;
  v29 = a8;
  sub_10009EF30(a5, a6 & 1);
  sub_10009EB60(a1, v29);
  v13 = [a1 sublayers];
  if (v13)
  {
    v14 = v13;
    sub_10009EF3C();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      v24 = v11 & 0x100;
      v25 = v15 & 0xC000000000000001;
      v18 = v15 & 0xFFFFFFFFFFFFFF8;
      v19 = v11 & 1;
      while (1)
      {
        if (v25)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v18 + 16))
          {
            goto LABEL_13;
          }

          v20 = *(v15 + 8 * v17 + 32);
        }

        v11 = v20;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v22 = v15;
        v23 = v29;
        sub_10009EF30(a5, a6 & 1);
        a9(v11, a2, v24 | v19, a4, a5, a6 & 1, a7 & 1, v23);
        sub_10004A5B4(a5, a6 & 1);

        v15 = v22;
        ++v17;
        if (v21 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  sub_10004A5B4(a5, a6 & 1);
}

uint64_t sub_10009EF30(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10009EF3C()
{
  result = qword_10032F888;
  if (!qword_10032F888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032F888);
  }

  return result;
}

unint64_t sub_10009EF88()
{
  result = qword_10032F890;
  if (!qword_10032F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F890);
  }

  return result;
}

unint64_t sub_10009EFF0()
{
  result = qword_10032F898;
  if (!qword_10032F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F898);
  }

  return result;
}

void sub_10009F044(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  sub_100035D1C();
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 hasMigratedFileProtections];

  if ((v8 & 1) == 0)
  {
    v14 = [objc_opt_self() sharedInstance];
    if ([v14 hasUnlockedSinceBoot])
    {
      v9 = v14;
    }

    else
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      type metadata accessor for MainActor();

      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = a1;
      v12[5] = a2;
      sub_1000B85D8(0, 0, v6, &unk_10029C6B8, v12);
    }
  }
}

uint64_t sub_10009F4B0()
{
  sub_10002B6CC(&qword_10032D050);
  v0[2] = swift_task_alloc();
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10009F58C;

  return sub_10009F7C8();
}

uint64_t sub_10009F58C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009F6C8, v1, v0);
}

uint64_t sub_10009F6C8()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = &protocol witness table for MainActor;
  sub_1000B85D8(0, 0, v1, &unk_10029C6E8, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10009F7C8()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10009F890, 0, 0);
}

uint64_t sub_10009F890()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[6] = v1;
  if ([v1 hasUnlockedSinceBoot])
  {
    v2 = v0[5];
    v3 = v0[2];
    v4 = v0[3];
    v5 = Logger.common.unsafeMutableAddressor();
    (*(v4 + 16))(v2, v5, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[5];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Device has already been unlocked since boot. Start updating file protection.", v10, 2u);
    }

    v11 = v0[2];
    v12 = v0[3];

    (*(v12 + 8))(v9, v11);
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_10009FCB8;

    return sub_1000A027C();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_10009FA74;

    return sub_1000A15D0();
  }
}

uint64_t sub_10009FA74()
{

  return _swift_task_switch(sub_10009FB70, 0, 0);
}

uint64_t sub_10009FB70()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received first unlock notification. Start updating file protection.", v9, 2u);
  }

  v10 = v0[2];
  v11 = v0[3];

  (*(v11 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_10009FCB8;

  return sub_1000A027C();
}

uint64_t sub_10009FCB8()
{

  return _swift_task_switch(sub_10009FDB4, 0, 0);
}

uint64_t sub_10009FDB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009FE28()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10009FEBC, v2, v1);
}

uint64_t sub_10009FEBC()
{

  sub_100035D1C();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v1 setHasMigratedFileProtections:1];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_10009FFFC;

  return sub_1000A15D0();
}

uint64_t sub_10009FFFC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A0138, v1, v0);
}

uint64_t sub_1000A0138()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A01BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005D0A4;

  return sub_10009FF54(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A027C()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0338, 0, 0);
}

uint64_t sub_1000A0338()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000A0404;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000A0404()
{

  return _swift_task_switch(sub_1000A0500, 0, 0);
}

uint64_t sub_1000A0500()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished updating file protection.", v7, 2u);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A061C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  (*(v5 + 16))(v8);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1000A1A48;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_100301920;
  v11 = _Block_copy(aBlock);

  v12 = [a2 registerFirstUnlockBlock:v11];
  _Block_release(v11);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000A0818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  (*(v5 + 32))(*(*(a1 + 64) + 40), v7, v4);
  return swift_continuation_resume();
}

uint64_t sub_1000A0920(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  sub_10002B6CC(&qword_10032D050);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000A09D4, 0, 0);
}

uint64_t sub_1000A09D4()
{
  v1 = *(v0 + 96);
  v2 = type metadata accessor for TaskPriority();
  v3 = *(v2 - 8);
  v30 = *(v3 + 56);
  v31 = v2;
  v30(v1, 1, 1);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1000A10A8(v1, &unk_10029C710, v4);
  sub_10002C51C(v1, &qword_10032D050);
  sub_100035D1C();
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 applicationBundleIdentifiers];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(v7 + 16);
  if (v8)
  {
    v29 = **(v0 + 72);
    v28 = (v3 + 48);
    v27 = (v3 + 8);
    v9 = (v7 + 40);
    v10 = &qword_10032D050;
    do
    {
      v32 = v9;
      v33 = v8;
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);
      v15 = v10;
      v17 = *(v9 - 1);
      v16 = *v9;
      (v30)(v13, 1, 1, v31);
      v18 = swift_allocObject();
      v18[2] = 0;
      v19 = v18 + 2;
      v18[3] = 0;
      v18[4] = v17;
      v10 = v15;
      v18[5] = v16;
      sub_10003AFFC(v13, v14, v15);
      LODWORD(v14) = (*v28)(v14, 1, v31);

      v20 = *(v0 + 80);
      if (v14 == 1)
      {
        sub_10002C51C(*(v0 + 80), v15);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v27)(v20, v31);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = dispatch thunk of Actor.unownedExecutor.getter();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_10029C728;
      *(v24 + 24) = v18;

      if (v22 | v21)
      {
        v11 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v22;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v0 + 88);
      *(v0 + 48) = 1;
      *(v0 + 56) = v11;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_10002C51C(v12, v15);
      v9 = v32 + 2;
      v8 = v33 - 1;
    }

    while (v33 != 1);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000A0DE0()
{
  v1 = type metadata accessor for URL();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0E9C, 0, 0);
}

uint64_t sub_1000A0E9C()
{
  v1 = CLFWallpaperURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000A0F50;
  v3 = *(v0 + 32);

  return sub_1000A1FB8(v3);
}

uint64_t sub_1000A0F50()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000A10A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10003AFFC(a1, v20 - v9, &qword_10032D050);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002C51C(v10, &qword_10032D050);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1000A12C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for URL();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000A1380, 0, 0);
}

uint64_t sub_1000A1380()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 urlForBundleIdentifier:v2];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000A1478;
  v5 = *(v0 + 48);

  return sub_1000A1FB8(v5);
}

uint64_t sub_1000A1478()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000A15D0()
{
  v1 = type metadata accessor for UUID();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000A1698, 0, 0);
}

uint64_t sub_1000A1698()
{
  *(v0 + 112) = [objc_opt_self() sharedInstance];

  return _swift_task_switch(sub_1000A171C, 0, 0);
}

uint64_t sub_1000A171C()
{
  v1 = v0[14];
  v2 = v0[12];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1000A17BC;
  v3 = swift_continuation_init();
  sub_1000A061C(v3, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000A17BC()
{
  (*(*(*v0 + 88) + 32))(*(*v0 + 104), *(*v0 + 96), *(*v0 + 80));

  return _swift_task_switch(sub_1000A1900, 0, 0);
}

uint64_t sub_1000A1900()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[10];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 unregisterFirstUnlockBlockWithIdentifier:isa];

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000A19C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A1A48()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000A0818(v2, v3);
}

uint64_t sub_1000A1AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A1AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002E558;

  return sub_10009F4B0();
}

uint64_t sub_1000A1B70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A1BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005D0A4;

  return sub_10009FE28();
}

uint64_t sub_1000A1C54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005D0A4;

  return sub_1000A0920(a1, a2);
}

uint64_t sub_1000A1CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005D0A4;

  return sub_1000A0DE0();
}

uint64_t sub_1000A1DB8(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48);
}

uint64_t sub_1000A1E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005D0A4;

  return sub_1000A12C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A1EC8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A1F00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005D0A4;

  return sub_10008CD24(a1, v4);
}

uint64_t sub_1000A1FB8(uint64_t a1)
{
  v1[30] = a1;
  v2 = type metadata accessor for URL();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2148, 0, 0);
}

uint64_t sub_1000A2148()
{
  v149 = v0;
  v1 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  if (!v3)
  {

    goto LABEL_31;
  }

  v4 = String._bridgeToObjectiveC()();
  *(v0 + 216) = 0;
  v5 = [v1 attributesOfItemAtPath:v4 error:v0 + 216];

  v6 = *(v0 + 216);
  if (v5)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1000A2FC8(&qword_10032B7D8, type metadata accessor for FileAttributeKey);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    if (*(v7 + 16) && (v9 = sub_100088538(NSFileProtectionKey), (v10 & 1) != 0))
    {
      sub_10002C5D0(*(v7 + 56) + 32 * v9, v0 + 88);
    }

    else
    {

      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
    }

    sub_10003AFFC(v0 + 88, v0 + 120, &qword_10032B680);
    if (*(v0 + 144))
    {
      type metadata accessor for FileProtectionType(0);
      if (swift_dynamicCast())
      {
        v11 = *(v0 + 232);
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
        if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
        {

          goto LABEL_27;
        }

        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v95)
        {
LABEL_27:
          v147 = v1;
          v96 = *(v0 + 336);
          v98 = *(v0 + 296);
          v97 = *(v0 + 304);
          v99 = *(v0 + 288);
          v100 = *(v0 + 248);
          v101 = *(v0 + 256);
          v102 = *(v0 + 240);

          v103 = Logger.common.unsafeMutableAddressor();
          (*(v97 + 16))(v96, v103, v98);
          (*(v101 + 16))(v99, v102, v100);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.default.getter();
          v106 = os_log_type_enabled(v104, v105);
          v107 = *(v0 + 336);
          v109 = *(v0 + 296);
          v108 = *(v0 + 304);
          v110 = *(v0 + 288);
          v112 = *(v0 + 248);
          v111 = *(v0 + 256);
          if (v106)
          {
            v138 = v105;
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v148[0] = v114;
            *v113 = 136315138;
            sub_1000A2FC8(&qword_10032F8A0, &type metadata accessor for URL);
            v144 = v107;
            v115 = dispatch thunk of CustomStringConvertible.description.getter();
            v140 = v109;
            v117 = v116;
            (*(v111 + 8))(v110, v112);
            v118 = sub_10005766C(v115, v117, v148);

            *(v113 + 4) = v118;
            _os_log_impl(&_mh_execute_header, v104, v138, "Already had correct file protection type for file: %s", v113, 0xCu);
            sub_10002C9B0(v114);

            (*(v108 + 8))(v144, v140);
          }

          else
          {

            (*(v111 + 8))(v110, v112);
            (*(v108 + 8))(v107, v109);
          }

LABEL_30:
          sub_10002C51C(v0 + 88, &qword_10032B680);
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_10002C51C(v0 + 120, &qword_10032B680);
    }

    v39 = *(v0 + 328);
    v40 = *(v0 + 304);
    v41 = *(v0 + 280);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);
    v44 = *(v0 + 240);
    v128 = Logger.common.unsafeMutableAddressor();
    v127 = *(v40 + 16);
    v127(v39);
    sub_10003AFFC(v0 + 88, v0 + 152, &qword_10032B680);
    v126 = *(v42 + 16);
    v126(v41, v44, v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 328);
    v49 = *(v0 + 296);
    v50 = *(v0 + 304);
    v51 = *(v0 + 280);
    v52 = *(v0 + 256);
    v132 = *(v0 + 248);
    if (v47)
    {
      v122 = *(v0 + 280);
      v53 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v53 = 136315394;
      v124 = v48;
      v125 = v49;
      sub_10003AFFC(v0 + 152, v0 + 184, &qword_10032B680);
      sub_10002B6CC(&qword_10032B680);
      v121 = v46;
      v54 = String.init<A>(describing:)();
      log = v45;
      v56 = v55;
      sub_10002C51C(v0 + 152, &qword_10032B680);
      v57 = sub_10005766C(v54, v56, v148);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      sub_1000A2FC8(&qword_10032F8A0, &type metadata accessor for URL);
      v58 = v132;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v133 = *(v52 + 8);
      v133(v122, v58);
      v62 = sub_10005766C(v59, v61, v148);

      *(v53 + 14) = v62;
      _os_log_impl(&_mh_execute_header, log, v121, "Updating incorrect file protection type: %s, file: %s", v53, 0x16u);
      swift_arrayDestroy();

      v63 = *(v50 + 8);
      v63(v124, v125);
    }

    else
    {

      v64 = v132;
      v133 = *(v52 + 8);
      v133(v51, v64);
      sub_10002C51C(v0 + 152, &qword_10032B680);
      v63 = *(v50 + 8);
      v63(v48, v49);
    }

    sub_10002B6CC(&qword_10032F8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100297510;
    *(inited + 32) = NSFileProtectionKey;
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v66;
    *(inited + 40) = NSFileProtectionNone;
    v67 = NSFileProtectionNone;
    v68 = NSFileProtectionKey;
    sub_100088954(inited);
    swift_setDeallocating();
    sub_10002C51C(inited + 32, &unk_10032EE40);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v70 = String._bridgeToObjectiveC()();

    *(v0 + 224) = 0;
    v71 = [v1 setAttributes:isa ofItemAtPath:v70 error:v0 + 224];

    v72 = *(v0 + 224);
    if (v71)
    {
      v73 = v72;
    }

    else
    {
      v143 = v63;
      v74 = *(v0 + 312);
      v75 = *(v0 + 296);
      v76 = *(v0 + 264);
      v78 = *(v0 + 240);
      v77 = *(v0 + 248);
      v79 = v72;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (v127)(v74, v128, v75);
      v126(v76, v78, v77);
      swift_errorRetain();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v0 + 312);
      v84 = *(v0 + 296);
      v85 = *(v0 + 264);
      v86 = *(v0 + 248);
      if (v82)
      {
        v137 = *(v0 + 296);
        v87 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v148[0] = v130;
        *v87 = 136315394;
        sub_1000A2FC8(&qword_10032F8A0, &type metadata accessor for URL);
        v135 = v83;
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v146 = v1;
        v90 = v89;
        v133(v85, v86);
        v91 = sub_10005766C(v88, v90, v148);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2112;
        swift_errorRetain();
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v87 + 14) = v92;
        *v129 = v92;
        _os_log_impl(&_mh_execute_header, v80, v81, "Unable to set file protection type for file: %s, error: %@", v87, 0x16u);
        sub_10002C51C(v129, &qword_10032B670);

        sub_10002C9B0(v130);

        v93 = v137;
        v94 = v135;
      }

      else
      {

        v133(v85, v86);
        v94 = v83;
        v93 = v84;
      }

      v143(v94, v93);
    }

    goto LABEL_30;
  }

  v16 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v141 = *(v0 + 272);
  v145 = v1;
  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = v6;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v23 = Logger.common.unsafeMutableAddressor();
  (*(v17 + 16))(v16, v23, v18);
  (*(v19 + 16))(v141, v21, v20);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 320);
  v29 = *(v0 + 296);
  v28 = *(v0 + 304);
  v30 = *(v0 + 272);
  v31 = *(v0 + 248);
  v32 = *(v0 + 256);
  if (v26)
  {
    v142 = *(v0 + 296);
    v33 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v148[0] = v136;
    *v33 = 136315394;
    sub_1000A2FC8(&qword_10032F8A0, &type metadata accessor for URL);
    v139 = v27;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v131 = v25;
    v36 = v35;
    (*(v32 + 8))(v30, v31);
    v37 = sub_10005766C(v34, v36, v148);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v38;
    *v134 = v38;
    _os_log_impl(&_mh_execute_header, v24, v131, "Unable to get file protection type for file: %s, error: %@", v33, 0x16u);
    sub_10002C51C(v134, &qword_10032B670);

    sub_10002C9B0(v136);

    (*(v28 + 8))(v139, v142);
  }

  else
  {

    (*(v32 + 8))(v30, v31);
    (*(v28 + 8))(v27, v29);
  }

LABEL_31:

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_1000A2FC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A3010(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002E558;

  return sub_10008CD24(a1, v4);
}

double sub_1000A3100@<D0>(uint64_t a1@<X8>)
{
  v22 = static Color.clear.getter();
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  v3[1] = *v1;
  v3[2] = v4;
  v5 = *(v1 + 48);
  v3[3] = *(v1 + 32);
  v3[4] = v5;
  sub_1000A33F4(v1, &v40);
  v6 = static Alignment.center.getter();
  v20 = v7;
  v21 = v6;
  v46 = *(v1 + 48);
  v40 = *(v1 + 48);
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  if (v30 == 1)
  {
    v8 = *v1;
    v9 = *(v1 + 8);
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    v30 = v46;

    State.projectedValue.getter();
    v15 = *(&v40 + 1);
    v14 = v40;
    v16 = v41;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  *&v24 = v8;
  *(&v24 + 1) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  *(&v26 + 1) = v13;
  *&v27 = v14;
  *(&v27 + 1) = v15;
  LOBYTE(v28) = v16;
  *(&v28 + 1) = v21;
  v29 = v20;
  v45 = v20;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v40 = v24;
  v41 = v25;
  *&v30 = v8;
  *(&v30 + 1) = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v21;
  v39 = v20;
  sub_1000A342C(&v24, v23);
  sub_1000A349C(&v30);
  v17 = v43;
  *(a1 + 72) = v42;
  *(a1 + 88) = v17;
  *(a1 + 104) = v44;
  result = *&v40;
  v19 = v41;
  *(a1 + 40) = v40;
  *a1 = v22;
  *(a1 + 8) = sub_1000A33EC;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 120) = v45;
  *(a1 + 56) = v19;
  return result;
}

uint64_t sub_1000A32F0()
{
  static Animation.clarityUINavigationTransition.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000A339C()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000A342C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032F8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A349C(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032F8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A357C()
{
  result = qword_10032F8B8;
  if (!qword_10032F8B8)
  {
    sub_10002CAF8(&qword_10032F8C0);
    sub_1000A3634();
    sub_10002CD18(&qword_10032F8D8, &qword_10032F8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F8B8);
  }

  return result;
}

unint64_t sub_1000A3634()
{
  result = qword_10032F8C8;
  if (!qword_10032F8C8)
  {
    sub_10002CAF8(&qword_10032F8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F8C8);
  }

  return result;
}

uint64_t sub_1000A36D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TintShapeStyle();
  v22 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032F8E0);
  v23 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v25 = v2;
  sub_10002B6CC(&qword_10032F8E8);
  sub_1000A3F04();
  Label.init(title:icon:)();
  TintShapeStyle.init()();
  v12 = static Color.white.getter();
  v13 = swift_allocObject();
  v14 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v2 + 64);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  (*(v9 + 16))(a1, v11, v8);
  v16 = sub_10002B6CC(&qword_10032F928);
  (*(v5 + 16))(a1 + v16[21], v7, v4);
  *(a1 + v16[22]) = v12;
  v17 = (a1 + v16[23]);
  *v17 = sub_1000A4074;
  v17[1] = v13;
  v24 = v2;
  sub_1000A4084(v2, v26);

  static Axis.Set.vertical.getter();
  sub_10002B6CC(&qword_10032F930);
  sub_1000A40BC();
  ScrollView.init(_:showsIndicators:content:)();

  (*(v5 + 8))(v7, v22);
  (*(v9 + 8))(v11, v23);
  v18 = static Color.orange.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10002B6CC(&qword_10032F950);
  v21 = (a1 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t sub_1000A3A40@<X0>(uint64_t a1@<X8>)
{

  sub_100030970();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000A3AB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Color.orange.getter();
  v4 = Image.init(systemName:)();
  result = static Alignment.center.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

uint64_t sub_1000A3B40(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Animation.clarityUINavigationTransition.getter();
  v11 = a1;
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_1000A4084(a1, v12);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000A3CB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  sub_1000A3D84(a1, v16);
  v5 = v16[0];
  v6 = v16[1];
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  LOBYTE(v16[0]) = 1;
  v22 = v17;
  v21 = v20;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.titleHorizontalPadding.getter();
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  result = EdgeInsets.init(_all:)();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = a1;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_1000A3D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v3 & 0xF00000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if ((*a1 & 0xFFFFFFFFFFFFLL) != 0)
  {
LABEL_3:
  }

LABEL_5:
  sub_100030970();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.headline.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_100047B84(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_100047B94(v9, v11, v13 & 1);

  sub_100047B84(v9, v11, v13 & 1);
}

unint64_t sub_1000A3F04()
{
  result = qword_10032F8F0;
  if (!qword_10032F8F0)
  {
    sub_10002CAF8(&qword_10032F8E8);
    sub_1000A3FBC();
    sub_10002CD18(&qword_10032F918, &qword_10032F920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F8F0);
  }

  return result;
}

unint64_t sub_1000A3FBC()
{
  result = qword_10032F8F8;
  if (!qword_10032F8F8)
  {
    sub_10002CAF8(&qword_10032F900);
    sub_10002CD18(&qword_10032F908, &qword_10032F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F8F8);
  }

  return result;
}

unint64_t sub_1000A40BC()
{
  result = qword_10032F938;
  if (!qword_10032F938)
  {
    sub_10002CAF8(&qword_10032F930);
    sub_10002CD18(&qword_10032F940, &qword_10032F948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F938);
  }

  return result;
}

uint64_t sub_1000A4174@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A41A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A4290()
{

  return _swift_deallocObject(v0, 81);
}

unint64_t sub_1000A4314()
{
  result = qword_10032F958;
  if (!qword_10032F958)
  {
    sub_10002CAF8(&qword_10032F950);
    sub_10002CD18(&unk_10032F960, &qword_10032F928);
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032F958);
  }

  return result;
}

char *sub_1000A43FC(char a1)
{
  v3 = sub_10002B6CC(&unk_10032F9B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock - v5;
  *&v1[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_listLayoutObserver] = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation] = 0;
  v1[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared] = 0;
  v1[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_includeBackgroundView] = a1;
  v7 = type metadata accessor for SceneViewControllerBase();
  v31.receiver = v1;
  v31.super_class = v7;
  v8 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  v9 = qword_10032B4D0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10002B6CC(&unk_10032BF70);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000A6D48();
  v11 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  *&v10[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_listLayoutObserver] = v11;

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v14 = objc_opt_self();
  v15 = [v14 mainQueue];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_1000A6DAC;
  v30 = v16;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000A584C;
  v28 = &unk_100301BE8;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 addObserverForName:@"CLBSceneInterfaceOrientationNeedsUpdate" object:0 queue:v15 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  v19 = [v12 defaultCenter];
  v20 = [v14 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = sub_1000A6DCC;
  v30 = v21;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000A584C;
  v28 = &unk_100301C10;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 addObserverForName:@"CLBApplicationDeviceOrientationNeedsUpdate" object:0 queue:v20 usingBlock:v22];
  _Block_release(v22);

  swift_unknownObjectRelease();
  return v10;
}

void sub_1000A4868()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SceneViewControllerBase();
  v1 = objc_msgSendSuper2(&v7, "view");
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    v4 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
    if (!*&v0[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation])
    {
      v5 = v3;
      v6 = sub_1000A4DBC(0, 1);
      v3 = v5;
      *&v0[v4] = v6;
    }

    [v3 setSceneInterfaceOrientation:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A4920(void *a1)
{
  sub_1000A4B60(a1);

  return sub_1000A4958(a1);
}

uint64_t sub_1000A4958(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setDeviceOrientation:sub_1000A6F2C()];
  v7 = Logger.common.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_1000A6F2C();
    v13 = BSDeviceOrientationDescription();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10005766C(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Applying device orientation for scene: %s.", v11, 0xCu);
    sub_10002C9B0(v12);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000A4B60(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
  v8 = *&v1[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation];
  if (!v8)
  {
    v8 = sub_1000A4DBC(0, 1);
    *&v1[v7] = v8;
  }

  [a1 setInterfaceOrientation:sub_10008D9B8(v8)];
  v9 = Logger.common.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v9, v3);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v22 = v3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = *&v1[v7];
    if (!v15)
    {
      v15 = sub_1000A4DBC(0, 1);
      *&v1[v7] = v15;
    }

    sub_10008D9B8(v15);
    v16 = BSInterfaceOrientationDescription();
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10005766C(v17, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Applying interface orientation for scene: %s.", v13, 0xCu);
    sub_10002C9B0(v14);

    return (*(v4 + 8))(v6, v22);
  }

  else
  {

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000A4DBC(uint64_t a1, char a2)
{
  v5 = *((swift_isaMask & *v2) + 0xA8);
  v6 = v5();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 identifier];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xEA00000000003E65;
    v9 = 0x6E656373206F6E3CLL;
  }

  v12 = (*((swift_isaMask & *v2) + 0xB0))();
  v13 = (*((swift_isaMask & *v2) + 0xB8))();
  v14 = v5();
  if (v14 && (v15 = v14, v16 = [v14 clientSettings], v15, v16))
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v2 + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation);
  *&v21 = v9;
  *(&v21 + 1) = v11;
  LOBYTE(v22) = v12 & 1;
  BYTE1(v22) = v13 & 1;
  *(&v22 + 1) = v17;
  *&v23 = v18;
  *(&v23 + 1) = [qword_100336870 systemInterfaceOrientation];
  *&v24 = [qword_100336870 deviceInterfaceOrientation];
  *(&v24 + 1) = a1;
  v25 = a2 & 1;
  v30 = a2 & 1;
  v28 = v23;
  v29 = v24;
  v26 = v21;
  v27 = v22;
  v19 = sub_100093C58();
  sub_100094ABC(&v21);
  return v19;
}

void sub_1000A4FE4()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v5 = sub_10008847C(aBlock), (v6 & 1) != 0))
    {
      sub_10002C5D0(*(v3 + 56) + 32 * v5, v39);
      sub_10002C57C(aBlock);

      if (swift_dynamicCast())
      {
        v8 = v37;
        v7 = v38;
        v9 = (*((swift_isaMask & *v1) + 0xA8))();
        if (!v9)
        {

          return;
        }

        v10 = v9;
        v11 = [v9 identifier];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v12 == v8 && v14 == v7)
        {
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            return;
          }
        }
      }
    }

    else
    {

      sub_10002C57C(aBlock);
    }
  }

  v17 = Notification.userInfo.getter();
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v19;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v20 = sub_10008847C(aBlock), (v21 & 1) == 0))
  {

    sub_10002C57C(aBlock);
    goto LABEL_27;
  }

  sub_10002C5D0(*(v18 + 56) + 32 * v20, v39);
  sub_10002C57C(aBlock);

  sub_1000A6EBC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22 = v37;
  v23 = [v37 integerValue];

  *(v1 + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation) = sub_1000A4DBC(v23, 0);
  (*((swift_isaMask & *v1) + 0xD8))();
  v24 = Notification.userInfo.getter();
  if (v24)
  {
    v25 = v24;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v26;
    AnyHashable.init<A>(_:)();
    if (*(v25 + 16) && (v27 = sub_10008847C(aBlock), (v28 & 1) != 0))
    {
      sub_10002C5D0(*(v25 + 56) + 32 * v27, v39);
      sub_10002C57C(aBlock);

      if (swift_dynamicCast())
      {
        v29 = v37;
        [v37 doubleValue];
        v31 = *&v30;
        sub_1000A54B0(v30, 0);
        v32 = objc_opt_self();
        v33 = swift_allocObject();
        *(v33 + 16) = v1;
        aBlock[4] = sub_1000A6F08;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000357AC;
        aBlock[3] = &unk_100301E40;
        v34 = _Block_copy(aBlock);
        v35 = v1;

        [v32 animateWithDuration:v34 animations:v31];
        _Block_release(v34);

        return;
      }
    }

    else
    {

      sub_10002C57C(aBlock);
    }
  }

  sub_1000A54B0(0, 0);
}

uint64_t sub_1000A54B0(uint64_t a1, char a2)
{
  result = (*((swift_isaMask & *v2) + 0xA8))();
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    *(v7 + 32) = a2 & 1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1000A7158;
    *(v8 + 24) = v7;
    v12[4] = sub_1000A7144;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000A5678;
    v12[3] = &unk_100301DF0;
    v9 = _Block_copy(v12);
    v10 = v2;

    [v6 performUpdate:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000A5678(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_1000A5764(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + 0xD0))(v1);
  }
}

void sub_1000A57F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000A4FE4();
  }
}

uint64_t sub_1000A584C(uint64_t a1)
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

void sub_1000A5940()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((swift_isaMask & *Strong) + 0xA8))();
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      aBlock[4] = sub_1000A6E0C;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002DCC0;
      aBlock[3] = &unk_100301C60;
      v5 = _Block_copy(aBlock);
      v6 = v1;

      [v3 updateUISettingsWithBlock:v5];

      _Block_release(v5);
      v1 = v3;
    }
  }
}