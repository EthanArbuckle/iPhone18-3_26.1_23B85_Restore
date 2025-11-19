unint64_t sub_100032E64()
{
  result = qword_100063AC0;
  if (!qword_100063AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063AC0);
  }

  return result;
}

uint64_t sub_100032EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v181 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v170 = *(v5 - 8);
  v171 = v5;
  v6 = *(v170 + 64);
  __chkstk_darwin(v5);
  v167 = v7;
  v168 = &v141[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AccessibilityTraits();
  v164 = *(v8 - 8);
  v165 = v8;
  v9 = *(v164 + 64);
  __chkstk_darwin(v8);
  v161 = &v141[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PlainButtonStyle();
  v148 = *(v11 - 8);
  v149 = v11;
  v12 = *(v148 + 64);
  __chkstk_darwin(v11);
  v147 = &v141[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = type metadata accessor for ButtonView();
  v188 = *(v160 - 8);
  v14 = *(v188 + 64);
  __chkstk_darwin(v160);
  v15 = sub_100003968(&qword_100063B98, &qword_100049318);
  v145 = *(v15 - 8);
  v146 = v15;
  v16 = *(v145 + 64);
  __chkstk_darwin(v15);
  v143 = &v141[-v17];
  v150 = sub_100003968(&qword_100063BA0, &qword_100049320);
  v18 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v144 = &v141[-v19];
  v182 = sub_100003968(&qword_100063BA8, &qword_100049328);
  v20 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v151 = &v141[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v153 = &v141[-v23];
  __chkstk_darwin(v24);
  v155 = &v141[-v25];
  v26 = sub_100003968(&qword_100063BB0, &qword_100049330);
  v158 = *(v26 - 8);
  v159 = v26;
  v27 = *(v158 + 64);
  __chkstk_darwin(v26);
  v157 = &v141[-v28];
  v156 = sub_100003968(&qword_100063BB8, &qword_100049338);
  v29 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v163 = &v141[-v30];
  v162 = sub_100003968(&qword_100063BC0, &qword_100049340);
  v31 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v166 = &v141[-v32];
  v185 = sub_100003968(&qword_100063BC8, &qword_100049348);
  v33 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v172 = &v141[-v34];
  v35 = sub_100003968(&qword_100063BD0, &qword_100049350);
  v174 = *(v35 - 8);
  v175 = v35;
  v36 = *(v174 + 64);
  __chkstk_darwin(v35);
  v173 = &v141[-v37];
  v38 = sub_100003968(&qword_100063BD8, &qword_100049358);
  v178 = *(v38 - 8);
  v179 = v38;
  v39 = *(v178 + 64);
  __chkstk_darwin(v38);
  v177 = &v141[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v176 = &v141[-v42];
  v186 = static Color.white.getter();
  v44 = *(a2 + 120);
  v196 = *(a2 + 112);
  v43 = v196;
  *v197 = v44;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  v196 = v43;
  *v197 = v44;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v210[6] = v212;
  *&v210[22] = v213;
  *&v210[38] = v214;
  v184 = a1;
  GeometryProxy.size.getter();
  v154 = v45;
  v196 = v43;
  *v197 = v44;
  State.wrappedValue.getter();
  v152 = *v190;
  v189 = a2;
  v142 = *(a2 + 16);
  if (v142 <= 1 && (v46 = *(v189 + 104), LOBYTE(v196) = *(v189 + 96), *v197 = v46, sub_100003968(&qword_100062FF0, &unk_100048670), State.wrappedValue.getter(), (v190[0] & 1) != 0))
  {
    v47 = 0x3FECCCCCCCCCCCCDLL;
  }

  else
  {
    v47 = 0x3FB999999999999ALL;
  }

  v169 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v211 = 0;
  v56 = v189;
  sub_100008314(v189, &v141[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v57 = *(v188 + 80);
  v58 = (v57 + 16) & ~v57;
  v183 = v58 + v14;
  v187 = v57 | 7;
  v59 = swift_allocObject();
  v188 = v58;
  v180 = &v141[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_100035344(v180, v59 + v58);
  __chkstk_darwin(v60);
  *&v141[-16] = v56;
  sub_100003968(&qword_1000634F0, &unk_100048BF0);
  sub_10001FCD0();
  v61 = v143;
  Button.init(action:label:)();
  v62 = v147;
  PlainButtonStyle.init()();
  sub_100003E3C(&qword_100063BE0, &qword_100063B98, &qword_100049318);
  sub_100035868(&qword_100063BE8, &type metadata accessor for PlainButtonStyle);
  v63 = v144;
  v64 = v146;
  v65 = v149;
  View.buttonStyle<A>(_:)();
  (*(v148 + 8))(v62, v65);
  (*(v145 + 8))(v61, v64);
  v66 = *(v56 + 8);
  *(v63 + *(sub_100003968(&qword_100063BF0, &qword_100049380) + 36)) = v66;
  v196 = v43;
  *v197 = v44;
  State.wrappedValue.getter();
  v196 = v43;
  *v197 = v44;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v67 = (v63 + *(sub_100003968(&qword_100063BF8, &qword_100049388) + 36));
  v68 = v216;
  *v67 = v215;
  v67[1] = v68;
  v67[2] = v217;
  v69 = v63 + *(sub_100003968(&qword_100063C00, &qword_100049390) + 36);
  *v69 = 0;
  *(v69 + 8) = 0;
  *(v69 + 16) = 0;
  GeometryProxy.size.getter();
  v71 = v70 * 0.5;
  v196 = v43;
  *v197 = v44;
  State.wrappedValue.getter();
  v72 = v63 + *(v150 + 36);
  *v72 = v71 - *v190 * 0.5;
  *(v72 + 8) = 0;
  v196 = sub_1000347CC();
  *v197 = v73;
  sub_10000B6A0();
  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  sub_100035490();
  v79 = v151;
  View.accessibility(label:)();
  sub_10000B6F4(v74, v76, v78 & 1);

  sub_100003CE8(v63, &qword_100063BA0, &qword_100049320);
  v80 = v153;
  ModifiedContent<>.accessibility(identifier:)();

  sub_100003CE8(v79, &qword_100063BA8, &qword_100049328);
  v81 = *(v189 + 104);
  LOBYTE(v196) = *(v189 + 96);
  *v197 = v81;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  v83 = v164;
  v82 = v165;
  if (LOBYTE(v190[0]) == 1)
  {
    sub_100003968(&qword_100063C78, &unk_1000496D0);
    v84 = *(v83 + 72);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_100048930;
    static AccessibilityTraits.isSelected.getter();
    v196 = v86;
  }

  else
  {
    v196 = &_swiftEmptyArrayStorage;
  }

  sub_100035868(&qword_100063C38, &type metadata accessor for AccessibilityTraits);
  sub_100003968(&qword_100063C40, &qword_1000493A8);
  sub_100003E3C(&qword_100063C48, &qword_100063C40, &qword_1000493A8);
  v87 = v161;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v88 = v155;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v83 + 8))(v87, v82);
  sub_100003CE8(v80, &qword_100063BA8, &qword_100049328);
  v89 = v189;
  v90 = v189 + *(v160 + 56);
  v164 = sub_100003968(&qword_100063AC8, &qword_1000492A8);
  v165 = v90;
  AccessibilityFocusState.projectedValue.getter();
  sub_1000357AC();
  v91 = v157;
  View.accessibilityFocused(_:)();

  sub_100003CE8(v88, &qword_100063BA8, &qword_100049328);
  v92 = v180;
  sub_100008314(v89, v180);
  v94 = v170;
  v93 = v171;
  v95 = v168;
  (*(v170 + 16))(v168, v184, v171);
  v96 = (v183 + *(v94 + 80)) & ~*(v94 + 80);
  v97 = swift_allocObject();
  sub_100035344(v92, v97 + v188);
  (*(v94 + 32))(v97 + v96, v95, v93);
  v98 = v163;
  (*(v158 + 32))(v163, v91, v159);
  v99 = (v98 + *(v156 + 36));
  *v99 = sub_100035AC8;
  v99[1] = v97;
  v99[2] = 0;
  v99[3] = 0;
  v100 = objc_opt_self();
  v101 = [v100 defaultCenter];
  if (qword_100062720 != -1)
  {
    swift_once();
  }

  v102 = v162;
  v103 = v166;
  v104 = &v166[*(v162 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  sub_100008314(v189, v92);
  v105 = swift_allocObject();
  sub_100035344(v92, v105 + v188);
  sub_10000BB84(v98, v103, &qword_100063BB8, &qword_100049338);
  v106 = (v103 + *(v102 + 56));
  *v106 = sub_100035B94;
  v106[1] = v105;
  v107 = [v100 defaultCenter];
  if (qword_100062728 != -1)
  {
    swift_once();
  }

  *&v108 = v154 * 0.5 - v152 * 0.5;
  v109 = v185;
  v110 = v172;
  v111 = &v172[*(v185 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  v112 = v189;
  sub_100008314(v189, v92);
  v113 = swift_allocObject();
  v114 = v188;
  sub_100035344(v92, v113 + v188);
  sub_10000BB84(v103, v110, &qword_100063BC0, &qword_100049340);
  v115 = (v110 + *(v109 + 56));
  *v115 = sub_100035BAC;
  v115[1] = v113;
  v116 = *(v112 + 32);
  v117 = *(v112 + 40);
  v196 = *(v112 + 24);
  *v197 = v116;
  v197[8] = v117;
  sub_100003968(&qword_100062B38, &qword_1000493B0);
  Binding.wrappedValue.getter();
  sub_100008314(v112, v92);
  v118 = swift_allocObject();
  sub_100035344(v92, v118 + v114);
  v119 = sub_100003968(&qword_100062DA0, &unk_1000484C0);
  v120 = sub_100003E3C(&qword_100063C58, &qword_100063BC8, &qword_100049348);
  v121 = sub_100035C60();
  v122 = v173;
  v123 = v185;
  View.onChange<A>(of:initial:_:)();

  sub_100003CE8(v110, &qword_100063BC8, &qword_100049348);
  AccessibilityFocusState.wrappedValue.getter();
  LOBYTE(v190[0]) = v196;
  sub_100008314(v189, v92);
  v124 = swift_allocObject();
  sub_100035344(v92, v124 + v188);
  v196 = v123;
  *v197 = v119;
  *&v197[8] = v120;
  *&v197[16] = v121;
  swift_getOpaqueTypeConformance2();
  v125 = v175;
  v126 = v176;
  View.onChange<A>(of:initial:_:)();

  (*(v174 + 8))(v122, v125);
  v128 = v177;
  v127 = v178;
  v129 = *(v178 + 16);
  v130 = v179;
  v129(v177, v126, v179);
  *&v190[0] = v186;
  WORD4(v190[0]) = 256;
  *(v190 + 10) = *v210;
  *(&v190[1] + 10) = *&v210[16];
  *(&v190[2] + 10) = *&v210[32];
  *(&v190[3] + 1) = *&v210[46];
  v191 = v108;
  *&v192 = v47;
  LOBYTE(v113) = v169;
  BYTE8(v192) = v169;
  *(&v192 + 9) = *v209;
  HIDWORD(v192) = *&v209[3];
  *&v193 = v49;
  *(&v193 + 1) = v51;
  *&v194 = v53;
  *(&v194 + 1) = v55;
  v195 = 0;
  v131 = v193;
  v132 = v194;
  v133 = v181;
  *(v181 + 128) = 0;
  v133[6] = v131;
  v133[7] = v132;
  v134 = v190[0];
  v135 = v190[1];
  v136 = v192;
  v133[4] = v191;
  v133[5] = v136;
  v137 = v190[3];
  v133[2] = v190[2];
  v133[3] = v137;
  *v133 = v134;
  v133[1] = v135;
  v138 = sub_100003968(&qword_100063C68, &qword_1000493B8);
  v129(v133 + *(v138 + 48), v128, v130);
  sub_100035F14(v190, &v196);
  v139 = *(v127 + 8);
  v139(v126, v130);
  v139(v128, v130);
  v196 = v186;
  *v197 = 256;
  *&v197[2] = *v210;
  *&v197[18] = *&v210[16];
  *v198 = *&v210[32];
  *&v198[14] = *&v210[46];
  v199 = v108;
  v200 = 0;
  v201 = v47;
  v202 = v113;
  *v203 = *v209;
  *&v203[3] = *&v209[3];
  v204 = v49;
  v205 = v51;
  v206 = v53;
  v207 = v55;
  v208 = 0;
  return sub_100035F84(&v196);
}

uint64_t sub_100034358(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 104);
    if (*(a1 + 16))
    {
      sub_100003968(&qword_100062FF0, &unk_100048670);
      State.wrappedValue.getter();
      return _AXSLiveTranscriptionSetMicOn();
    }

    else
    {
      sub_100003968(&qword_100062FF0, &unk_100048670);
      State.wrappedValue.getter();
      return _AXSLiveTranscriptionSetPaused();
    }
  }

  else
  {
    v1 = *(a1 + 56);
    return (*(a1 + 48))();
  }
}

double sub_10003442C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 104);
  HIDWORD(v23) = *(a1 + 96);
  LOBYTE(v32) = BYTE4(v23);
  *(&v32 + 1) = v9;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  v10 = 64;
  if (v25)
  {
    v10 = 80;
  }

  v11 = 72;
  if (v25)
  {
    v11 = 88;
  }

  v12 = *(a1 + v10);
  v13 = *(a1 + v11);

  Image.init(systemName:)();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v14 = 0.0;
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  v17 = *(a1 + 136);
  *&v32 = *(a1 + 128);
  v16 = v32;
  *(&v32 + 1) = v17;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  *&v32 = v16;
  *(&v32 + 1) = v17;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = 1;
  *&v30[6] = v32;
  *&v30[22] = v33;
  *&v30[38] = v34;
  v18 = *(a1 + 16);
  if (v18 == 4)
  {
    v25 = v16;
    v26 = v17;
    State.wrappedValue.getter();
    v27 = *v30;
    v28 = *&v30[16];
    *v29 = *&v30[32];
    *(&v29[1] + 6) = *&v30[46];
    v14 = v24 / -10.0;
LABEL_10:
    v19 = static Color.white.getter();
    goto LABEL_11;
  }

  v27 = *v30;
  v28 = *&v30[16];
  *v29 = *&v30[32];
  *(&v29[1] + 6) = *&v30[46];
  if (v18 > 1)
  {
    goto LABEL_10;
  }

  LOBYTE(v25) = BYTE4(v23);
  v26 = v9;
  State.wrappedValue.getter();
  if (LOBYTE(v24) != 1)
  {
    goto LABEL_10;
  }

  static Color.black.getter();
  v19 = Color.opacity(_:)();

LABEL_11:
  KeyPath = swift_getKeyPath();
  v21 = v28;
  *(a2 + 18) = v27;
  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v21;
  result = v29[0];
  *(a2 + 50) = *v29;
  *(a2 + 64) = *(&v29[1] + 6);
  *(a2 + 72) = v14;
  *(a2 + 80) = 0;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v19;
  return result;
}

uint64_t sub_1000347CC()
{
  *(v0 + 16);
  *(v0 + 16);
  return static AXLTUtilities.AXLTLocString(_:)();
}

uint64_t sub_10003484C()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  result = State.wrappedValue.setter();
  if (*(v0 + 16) == 1)
  {
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    v9 = static AXLTCaptionsProvider.shared;
    v10 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
    swift_beginAccess();
    v11 = *(v9 + v10) == 0;
    v14 = *(v1 + 96);
    v16 = *(v1 + 104);
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.setter();

    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  else if (!*(v0 + 16))
  {
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    v7 = static AXLTCaptionsProvider.shared;
    v8 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    v13 = *(v1 + 96);
    v15 = *(v1 + 104);
    v12 = (*(v7 + v8) & 1) == 0;
    sub_100003968(&qword_100062FF0, &unk_100048670);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100034AC0(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v11);
      sub_10000B374(v9);

      result = swift_dynamicCast();
      if ((result & 1) != 0 && *(a2 + 16) == 1)
      {
        v7 = *(a2 + 104);
        v9[0] = *(a2 + 96);
        v10 = v7;
        v11[0] = v8;
        sub_100003968(&qword_100062FF0, &unk_100048670);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v9);
    }
  }

  return result;
}

uint64_t sub_100034BD4(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v11);
      sub_10000B374(v9);

      result = swift_dynamicCast();
      if ((result & 1) != 0 && !*(a2 + 16))
      {
        v7 = *(a2 + 104);
        v9[0] = *(a2 + 96);
        v10 = v7;
        v11[0] = v8;
        sub_100003968(&qword_100062FF0, &unk_100048670);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v9);
    }
  }

  return result;
}

uint64_t sub_100034CE4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  if (v3 == 5)
  {
    v4 = *(type metadata accessor for ButtonView() + 56);
  }

  else
  {
    v5 = v3 == *(a3 + 16);
    v6 = *(type metadata accessor for ButtonView() + 56);
  }

  sub_100003968(&qword_100063AC8, &qword_1000492A8);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_100034D94(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    v4 = *(a3 + 24);
    v5 = *(a3 + 32);
    v6 = *(a3 + 40);
    sub_100003968(&qword_100062B38, &qword_1000493B0);
    result = Binding.wrappedValue.getter();
    if (v8 != 5)
    {
      result = Binding.wrappedValue.getter();
      if (v8 == *(a3 + 16))
      {
        return Binding.wrappedValue.setter();
      }
    }
  }

  return result;
}

uint64_t sub_100034E7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003968(&qword_100063AC8, &qword_1000492A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100034F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100063AC8, &qword_1000492A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ButtonView()
{
  result = qword_100063B28;
  if (!qword_100063B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035048()
{
  sub_100035164();
  if (v0 <= 0x3F)
  {
    sub_10001F238();
    if (v1 <= 0x3F)
    {
      sub_100008888(319, &qword_100062E58);
      if (v2 <= 0x3F)
      {
        sub_100008888(319, &qword_100062E48);
        if (v3 <= 0x3F)
        {
          sub_1000351C8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100035164()
{
  if (!qword_100063B38)
  {
    sub_100003AC0(&qword_100062DA0, &unk_1000484C0);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100063B38);
    }
  }
}

void sub_1000351C8()
{
  if (!qword_100063B40)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100063B40);
    }
  }
}

uint64_t sub_10003523C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100008314(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_100035344(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = sub_1000353A8;
  a2[3] = v10;
  return result;
}

uint64_t sub_100035344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000353A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ButtonView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100032EB8(a1, v6, a2);
}

uint64_t sub_100035428()
{
  v1 = *(type metadata accessor for ButtonView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100034358(v2);
}

unint64_t sub_100035490()
{
  result = qword_100063C08;
  if (!qword_100063C08)
  {
    sub_100003AC0(&qword_100063BA0, &qword_100049320);
    sub_10003551C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C08);
  }

  return result;
}

unint64_t sub_10003551C()
{
  result = qword_100063C10;
  if (!qword_100063C10)
  {
    sub_100003AC0(&qword_100063C00, &qword_100049390);
    sub_1000355D4();
    sub_100003E3C(&qword_100063C28, &qword_100063C30, &unk_100049398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C10);
  }

  return result;
}

unint64_t sub_1000355D4()
{
  result = qword_100063C18;
  if (!qword_100063C18)
  {
    sub_100003AC0(&qword_100063BF8, &qword_100049388);
    sub_100035660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C18);
  }

  return result;
}

unint64_t sub_100035660()
{
  result = qword_100063C20;
  if (!qword_100063C20)
  {
    sub_100003AC0(&qword_100063BF0, &qword_100049380);
    sub_100003AC0(&qword_100063B98, &qword_100049318);
    type metadata accessor for PlainButtonStyle();
    sub_100003E3C(&qword_100063BE0, &qword_100063B98, &qword_100049318);
    sub_100035868(&qword_100063BE8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C20);
  }

  return result;
}

unint64_t sub_1000357AC()
{
  result = qword_100063C50;
  if (!qword_100063C50)
  {
    sub_100003AC0(&qword_100063BA8, &qword_100049328);
    sub_100035490();
    sub_100035868(&qword_100062D08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C50);
  }

  return result;
}

uint64_t sub_100035868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000358B0()
{
  v1 = (type metadata accessor for ButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v22 = *(v6 + 64);
  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  v12 = *(v0 + v3 + 88);

  v13 = *(v0 + v3 + 104);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 136);

  v16 = v0 + v3 + v1[16];
  v17 = type metadata accessor for AccessibilityTechnologies();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  v19 = (v3 + v4 + v7) & ~v7;
  v20 = *(v16 + *(sub_100003968(&qword_100063AC8, &qword_1000492A8) + 40));

  (*(v6 + 8))(v0 + v19, v5);

  return _swift_deallocObject(v0, v19 + v22, v2 | v7 | 7);
}

uint64_t sub_100035AC8()
{
  v1 = v0;
  v2 = *(type metadata accessor for ButtonView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  GeometryProxy.size.getter();
  return sub_10003484C();
}

uint64_t sub_100035BC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ButtonView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100035C60()
{
  result = qword_100063C60;
  if (!qword_100063C60)
  {
    sub_100003AC0(&qword_100062DA0, &unk_1000484C0);
    sub_100032E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C60);
  }

  return result;
}

uint64_t sub_100035CE4()
{
  v1 = (type metadata accessor for ButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 32);

  v7 = *(v0 + v3 + 56);

  v8 = *(v0 + v3 + 72);

  v9 = *(v0 + v3 + 88);

  v10 = *(v0 + v3 + 104);

  v11 = *(v0 + v3 + 120);

  v12 = *(v0 + v3 + 136);

  v13 = v0 + v3 + v1[16];
  v14 = type metadata accessor for AccessibilityTechnologies();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v13 + *(sub_100003968(&qword_100063AC8, &qword_1000492A8) + 40));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ButtonView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100035F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100063C70, &unk_1000493C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035F84(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063C70, &unk_1000493C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100036058(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003606C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000360B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100036120@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a2;
  v30 = a1;
  v36 = a5;
  v34 = sub_100003968(&qword_100063C98, &qword_1000494B8);
  v7 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v9 = &v30 - v8;
  v32 = sub_100003968(&qword_100063CA0, &qword_1000494C0);
  v10 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v12 = &v30 - v11;
  v33 = sub_100003968(&qword_100063CA8, &qword_1000494C8);
  v13 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v15 = &v30 - v14;
  v35 = sub_100003968(&qword_100063CB0, &qword_1000494D0);
  v16 = *(v35 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v35);
  v19 = &v30 - v18;
  *&v37[0] = a3;
  *(&v37[0] + 1) = a4;
  sub_100003968(&qword_100062C78, &qword_1000480F0);
  State.wrappedValue.getter();
  static Color.clear.getter();
  v20 = static Color.== infix(_:_:)();

  if (v20)
  {
    v21 = 1;
    v22 = v36;
  }

  else
  {
    if (v31 == 3)
    {
      sub_100036518(3, a3, a4, v15);
      GeometryProxy.size.getter();
      sub_100036F18(v37);
      v23 = v38;
      v24 = &v15[*(v33 + 36)];
      v25 = v37[1];
      *v24 = v37[0];
      *(v24 + 1) = v25;
      v24[32] = v23;
      *(v24 + 33) = 257;
      v26 = &qword_100063CA8;
      v27 = &qword_1000494C8;
      sub_100006098(v15, v12, &qword_100063CA8, &qword_1000494C8);
      swift_storeEnumTagMultiPayload();
      sub_100036C68();
      sub_100036D7C(&qword_100063CC0, &qword_100063C98, &qword_1000494B8, sub_100036D4C);
      _ConditionalContent<>.init(storage:)();
      v28 = v15;
    }

    else
    {
      sub_100036518(v31, a3, a4, v9);
      v26 = &qword_100063C98;
      v27 = &qword_1000494B8;
      sub_100006098(v9, v12, &qword_100063C98, &qword_1000494B8);
      swift_storeEnumTagMultiPayload();
      sub_100036C68();
      sub_100036D7C(&qword_100063CC0, &qword_100063C98, &qword_1000494B8, sub_100036D4C);
      _ConditionalContent<>.init(storage:)();
      v28 = v9;
    }

    sub_100003CE8(v28, v26, v27);
    v22 = v36;
    sub_10000BB84(v19, v36, &qword_100063CB0, &qword_1000494D0);
    v21 = 0;
  }

  return (*(v16 + 56))(v22, v21, 1, v35);
}

uint64_t sub_100036518@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v7 = type metadata accessor for RoundedRectangle();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100003968(&qword_100062800, &qword_100047CE0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v78 - v15);
  v17 = sub_100003968(&qword_100063CF0, &qword_1000494E8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v78 - v20;
  v22 = sub_100003968(&qword_100063CE0, &qword_1000494E0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v79 = &v78 - v25;
  v26 = sub_100003968(&qword_100063CD0, &qword_1000494D8);
  v27 = *(v26 - 8);
  v81 = v26 - 8;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26 - 8);
  v80 = &v78 - v29;
  v83 = a2;
  v84 = a3;
  sub_100003968(&qword_100062C78, &qword_1000480F0);
  State.wrappedValue.getter();
  v30 = Color.opacity(_:)();

  if (a1)
  {
    v31 = 15.0;
  }

  else
  {
    v31 = 18.0;
  }

  v32 = *(v8 + 28);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(v11 + v32, v33, v34);
  *v11 = v31;
  v11[1] = v31;
  v35 = v16 + *(v13 + 44);
  sub_100037314(v11, v35);
  *(v35 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  *v16 = v30;
  LOBYTE(v35) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10000BB84(v16, v21, &qword_100062800, &qword_100047CE0);
  v44 = &v21[*(v18 + 44)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  LOBYTE(v35) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v79;
  sub_10000BB84(v21, v79, &qword_100063CF0, &qword_1000494E8);
  v54 = v53 + *(v23 + 44);
  *v54 = v35;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  LOBYTE(v35) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v53;
  v64 = v80;
  sub_10000BB84(v63, v80, &qword_100063CE0, &qword_1000494E0);
  v65 = v64 + *(v81 + 44);
  *v65 = v35;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  LOBYTE(v35) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v64;
  v75 = v82;
  sub_10000BB84(v74, v82, &qword_100063CD0, &qword_1000494D8);
  result = sub_100003968(&qword_100063C98, &qword_1000494B8);
  v77 = v75 + *(result + 36);
  *v77 = v35;
  *(v77 + 8) = v67;
  *(v77 + 16) = v69;
  *(v77 + 24) = v71;
  *(v77 + 32) = v73;
  *(v77 + 40) = 0;
  return result;
}

uint64_t sub_100036990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v7 = result;
    v10 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = sub_10003C2DC(v11), (v9 & 1) != 0))
    {
      sub_10000B3C8(*(v7 + 56) + 32 * v8, v12);
      sub_10000B374(v11);

      result = swift_dynamicCast();
      if (result)
      {
        v11[0] = a3;
        v11[1] = a4;
        v12[0] = v10;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v11);
    }
  }

  return result;
}

uint64_t sub_100036A98@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  v7 = objc_opt_self();

  v8 = [v7 defaultCenter];
  if (qword_100062738 != -1)
  {
    swift_once();
  }

  v9 = sub_100003968(&qword_100063C90, &unk_1000494A8);
  v10 = a1 + *(v9 + 52);
  NSNotificationCenter.publisher(for:object:)();

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v5;
  *(v11 + 32) = v4;
  *a1 = sub_100036C10;
  a1[1] = v6;
  v12 = (a1 + *(v9 + 56));
  *v12 = sub_100036C5C;
  v12[1] = v11;
}

uint64_t sub_100036C1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100036C68()
{
  result = qword_100063CB8;
  if (!qword_100063CB8)
  {
    sub_100003AC0(&qword_100063CA8, &qword_1000494C8);
    sub_100036D7C(&qword_100063CC0, &qword_100063C98, &qword_1000494B8, sub_100036D4C);
    sub_100003E3C(&qword_100063D00, &qword_100063D08, &unk_1000494F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063CB8);
  }

  return result;
}

uint64_t sub_100036D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100036E60()
{
  result = qword_100063CF8;
  if (!qword_100063CF8)
  {
    sub_100003AC0(&qword_100062800, &qword_100047CE0);
    sub_100003E3C(&qword_100062FD8, &qword_100062818, &qword_1000485C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063CF8);
  }

  return result;
}

double sub_100036F18@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v60.origin.x = v9;
  v60.origin.y = v11;
  v60.size.width = v13;
  v60.size.height = v15;
  Width = CGRectGetWidth(v60);
  v17 = [v6 mainScreen];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v61.origin.x = v19;
  v61.origin.y = v21;
  v61.size.width = v23;
  v61.size.height = v25;
  Height = CGRectGetHeight(v61);
  Rectangle.path(in:)();
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v27 = [v6 mainScreen];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v62.origin.x = v29;
    v62.origin.y = v31;
    v62.size.width = v33;
    v62.size.height = v35;
    CGRectGetWidth(v62);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = Width;
  v63.size.height = Height;
  CGRectGetHeight(v63);
  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  v64.size.width = Width;
  v64.size.height = Height;
  CGRectGetWidth(v64);
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v36 = [v6 mainScreen];
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v65.origin.x = v38;
    v65.origin.y = v40;
    v65.size.width = v42;
    v65.size.height = v44;
    CGRectGetWidth(v65);
  }

  v45 = *(v2 + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v5->i8[v45], v46, v47);
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  RoundedRectangle.path(in:)();
  sub_100037264(v5);
  v54 = 0x3FF0000000000000;
  v55 = 0;
  v56 = 0;
  v57 = 0x3FF0000000000000;
  v58 = 0;
  v59 = 0;
  Path.addPath(_:transform:)();
  sub_1000372C0(v53);
  v48 = v52;
  result = *v51;
  v50 = v51[1];
  *a1 = v51[0];
  *(a1 + 16) = v50;
  *(a1 + 32) = v48;
  return result;
}

uint64_t sub_100037264(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1000373C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000373F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10003743C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000374C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31[1] = a1;
  v31[0] = sub_100003968(&qword_100063D18, &qword_1000495E8);
  v3 = *(*(v31[0] - 8) + 64);
  __chkstk_darwin(v31[0]);
  v5 = v31 - v4;
  v6 = sub_100003968(&qword_100063D20, &qword_1000495F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v31 - v8;
  v10 = sub_100003968(&qword_100063D28, &qword_1000495F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v31 - v12;
  v14 = *(v1 + 8);
  v15 = AXLTCaption.appID.getter();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_8;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {
    v21 = AXLTCaption.appName.getter();
    v23 = v22;
    if (v21 == placeholderMicName.getter() && v23 == v24)
    {
LABEL_8:

      goto LABEL_9;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      sub_100037E08(v2, v5);
      v26 = &qword_100063D18;
      v27 = &qword_1000495E8;
      sub_100006098(v5, v9, &qword_100063D18, &qword_1000495E8);
      swift_storeEnumTagMultiPayload();
      sub_100003E3C(&qword_100063D30, &qword_100063D28, &qword_1000495F8);
      sub_1000394B0();
      _ConditionalContent<>.init(storage:)();
      v28 = v5;
      return sub_100003CE8(v28, v26, v27);
    }
  }

LABEL_9:
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v25 = sub_100003968(&qword_100063D68, &qword_100049610);
  sub_100037834(v2, &v13[*(v25 + 44)]);
  v26 = &qword_100063D28;
  v27 = &qword_1000495F8;
  sub_100006098(v13, v9, &qword_100063D28, &qword_1000495F8);
  swift_storeEnumTagMultiPayload();
  sub_100003E3C(&qword_100063D30, &qword_100063D28, &qword_1000495F8);
  sub_1000394B0();
  _ConditionalContent<>.init(storage:)();
  v28 = v13;
  return sub_100003CE8(v28, v26, v27);
}

uint64_t sub_100037834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003968(&qword_100063D18, &qword_1000495E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v26 - v9;
  v11 = sub_100003968(&qword_100063D70, &qword_100049618);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v26 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100003968(&qword_100063D78, &qword_100049620);
  sub_100037B68(a1, &v17[*(v18 + 44)]);
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v19 = objc_opt_self();
  if (qword_100062778 != -1)
  {
    v25 = v19;
    swift_once();
    v19 = v25;
  }

  v20 = [v19 preferredFontForTextStyle:titleFontStyle];
  [v20 pointSize];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = &v17[*(v11 + 36)];
  v22 = v26[1];
  *v21 = v26[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v26[2];
  sub_100037E08(a1, v10);
  sub_100006098(v17, v14, &qword_100063D70, &qword_100049618);
  sub_100006098(v10, v7, &qword_100063D18, &qword_1000495E8);
  sub_100006098(v14, a2, &qword_100063D70, &qword_100049618);
  v23 = sub_100003968(&qword_100063D80, &qword_100049628);
  sub_100006098(v7, a2 + *(v23 + 48), &qword_100063D18, &qword_1000495E8);
  sub_100003CE8(v10, &qword_100063D18, &qword_1000495E8);
  sub_100003CE8(v17, &qword_100063D70, &qword_100049618);
  sub_100003CE8(v7, &qword_100063D18, &qword_1000495E8);
  return sub_100003CE8(v14, &qword_100063D70, &qword_100049618);
}

double sub_100037B68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = dispatch thunk of AXLTCaption.text.getter();
  v7 = v6;
  if (v5 == placeholderPausedText.getter() && v7 == v8)
  {
    goto LABEL_8;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v11 = dispatch thunk of AXLTCaption.placeholder.getter();
    v13 = v12;
    if (v11 == placeholderPausedText.getter() && v13 == v14)
    {
LABEL_8:

      goto LABEL_9;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v15 = static Color.blue.getter();
      goto LABEL_10;
    }
  }

LABEL_9:
  v15 = static Color.gray.getter();
LABEL_10:
  v16 = v15;
  v17 = static Edge.Set.all.getter();
  v18 = *a1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v19 = v18 * 0.5;
  v20 = (a2 + *(sub_100003968(&qword_100063D88, &unk_100049630) + 36));
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  *(v20 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  *(a2 + 72) = v29;
  *(a2 + 88) = v30;
  *(a2 + 104) = v31;
  *(a2 + 120) = v32;
  result = *&v26;
  *(a2 + 24) = v26;
  *(a2 + 40) = v27;
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = 0x3FD999999999999ALL;
  *(a2 + 56) = v28;
  return result;
}

uint64_t sub_100037E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v120 = type metadata accessor for AXLTTextScrollView();
  v3 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v5 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_100003968(&qword_100063D90, &qword_100049640);
  v6 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v118 = &v105 - v7;
  v8 = type metadata accessor for AccessibilityTraits();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100003968(&qword_100063D98, &qword_100049648);
  v17 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v105 - v20;
  v22 = sub_100003968(&qword_100063DA0, &unk_100049650);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v105 - v24;
  v116 = sub_100003968(&qword_100063D58, &qword_100049608);
  v26 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  __chkstk_darwin(v27);
  v30 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v106 = v12;
    v107 = v9;
    v109 = v22;
    v110 = v21;
    v111 = v29;
    v113 = &v105 - v28;
    sub_100038B80(v30, v16);
    v31 = Text.init(_:)();
    v33 = v32;
    v35 = v34;
    v121 = *(a1 + 104);
    sub_100003968(&qword_100062C78, &qword_1000480F0);
    State.wrappedValue.getter();
    v36 = AXLTCaption.appID.getter();
    v38 = v37;
    v39 = placeholderID.getter();
    v112 = v25;
    v108 = v8;
    if (v36 == v39 && v38 == v40)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    Color.opacity(_:)();

    v61 = Text.foregroundColor(_:)();
    v63 = v62;
    v65 = v64;

    sub_10000B6F4(v31, v33, v35 & 1);

    v121 = *(a1 + 120);
    sub_100003968(&qword_100062D20, &qword_100048158);
    State.wrappedValue.getter();
    v66 = Text.font(_:)();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    sub_10000B6F4(v61, v63, v65 & 1);

    KeyPath = swift_getKeyPath();
    *&v121 = v66;
    *(&v121 + 1) = v68;
    v74 = v70 & 1;
    LOBYTE(v122) = v70 & 1;
    *(&v122 + 1) = v72;
    v123 = KeyPath;
    v124 = 0;
    v125 = 1;
    sub_100003968(&qword_100063DA8, &unk_1000496C0);
    sub_10003C180();
    v75 = v115;
    View.accessibility(identifier:)();
    sub_10000B6F4(v66, v68, v74);

    LOBYTE(v61) = *(a1 + 17);
    sub_100003968(&qword_100063C78, &unk_1000496D0);
    v76 = v107;
    v77 = *(v107 + 72);
    v78 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    if (v61)
    {
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_100048C70;
      static AccessibilityTraits.updatesFrequently.getter();
    }

    else
    {
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_100048930;
    }

    static AccessibilityTraits.isStaticText.getter();
    *&v121 = v79;
    sub_10003D7E8(&qword_100063C38, &type metadata accessor for AccessibilityTraits);
    sub_100003968(&qword_100063C40, &qword_1000493A8);
    sub_100003E3C(&qword_100063C48, &qword_100063C40, &qword_1000493A8);
    v80 = v106;
    v81 = v108;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v82 = v110;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v76 + 8))(v80, v81);
    sub_100003CE8(v75, &qword_100063D98, &qword_100049648);
    v83 = objc_opt_self();
    v84 = [v83 defaultCenter];
    v85 = v112;
    if (qword_100062730 != -1)
    {
      swift_once();
    }

    v86 = v109;
    v87 = v85 + *(v109 + 52);
    NSNotificationCenter.publisher(for:object:)();

    v88 = swift_allocObject();
    v89 = *(a1 + 112);
    *(v88 + 112) = *(a1 + 96);
    *(v88 + 128) = v89;
    *(v88 + 144) = *(a1 + 128);
    v90 = *(a1 + 48);
    *(v88 + 48) = *(a1 + 32);
    *(v88 + 64) = v90;
    v91 = *(a1 + 80);
    *(v88 + 80) = *(a1 + 64);
    *(v88 + 96) = v91;
    v92 = *(a1 + 16);
    *(v88 + 16) = *a1;
    *(v88 + 32) = v92;
    sub_10000BB84(v82, v85, &qword_100063D98, &qword_100049648);
    v93 = (v85 + *(v86 + 56));
    *v93 = sub_10003C23C;
    v93[1] = v88;
    sub_100025108(a1, &v121);
    v94 = [v83 defaultCenter];
    if (qword_100062740 != -1)
    {
      swift_once();
    }

    v95 = v116;
    v96 = v111;
    v97 = v111 + *(v116 + 52);
    NSNotificationCenter.publisher(for:object:)();

    v98 = swift_allocObject();
    v99 = *(a1 + 112);
    *(v98 + 112) = *(a1 + 96);
    *(v98 + 128) = v99;
    *(v98 + 144) = *(a1 + 128);
    v100 = *(a1 + 48);
    *(v98 + 48) = *(a1 + 32);
    *(v98 + 64) = v100;
    v101 = *(a1 + 80);
    *(v98 + 80) = *(a1 + 64);
    *(v98 + 96) = v101;
    v102 = *(a1 + 16);
    *(v98 + 16) = *a1;
    *(v98 + 32) = v102;
    sub_10000BB84(v85, v96, &qword_100063DA0, &unk_100049650);
    v103 = (v96 + *(v95 + 56));
    *v103 = sub_10003C2D4;
    v103[1] = v98;
    v104 = v113;
    sub_10000BB84(v96, v113, &qword_100063D58, &qword_100049608);
    sub_100006098(v104, v118, &qword_100063D58, &qword_100049608);
    swift_storeEnumTagMultiPayload();
    sub_100025108(a1, &v121);
    sub_100003E3C(&qword_100063D50, &qword_100063D58, &qword_100049608);
    sub_10003D7E8(&qword_100063D60, type metadata accessor for AXLTTextScrollView);
    _ConditionalContent<>.init(storage:)();
    return sub_100003CE8(v104, &qword_100063D58, &qword_100049608);
  }

  else
  {
    v121 = *(a1 + 24);
    *&v122 = *(a1 + 40);
    v115 = v30;
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.projectedValue.getter();
    v114 = v128;
    v113 = v129;
    v41 = v130;
    v121 = *(a1 + 48);
    *&v122 = *(a1 + 64);
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.projectedValue.getter();
    v42 = v129;
    v112 = v128;
    v43 = v130;
    v44 = *(a1 + 88);
    v121 = *(a1 + 72);
    v122 = v44;
    sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.projectedValue.getter();
    v46 = v128;
    v45 = v129;
    v47 = v130;
    v48 = v131;
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v49 = static AXLTSettingsManager.shared;
    v50 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    v51 = *(v49 + v50);
    v52 = OBJC_IVAR___AXLTSettingsManager_textFont;
    swift_beginAccess();
    v53 = *(v49 + v52);
    v54 = v114;
    *v5 = v115;
    v5[1] = v54;
    v5[2] = v113;
    v5[3] = v41;
    v5[4] = v112;
    v5[5] = v42;
    v5[6] = v43;
    v5[7] = v46;
    v5[8] = v45;
    v5[9] = v47;
    v5[10] = v48;
    v126 = v51;

    State.init(wrappedValue:)();
    v55 = *(&v127 + 1);
    v5[11] = v127;
    v5[12] = v55;
    v126 = v53;
    State.init(wrappedValue:)();
    v56 = *(&v127 + 1);
    v5[13] = v127;
    v5[14] = v56;
    v57 = v120;
    v58 = *(v120 + 40);
    *(v5 + v58) = swift_getKeyPath();
    sub_100003968(&qword_100062C50, &qword_1000480D0);
    swift_storeEnumTagMultiPayload();
    v59 = *(v57 + 44);
    v126 = 0;
    sub_100003968(&qword_100062D88, &qword_100048850);
    State.init(wrappedValue:)();
    *(v5 + v59) = v127;
    sub_10003BF0C(v5, v118);
    swift_storeEnumTagMultiPayload();
    sub_100003E3C(&qword_100063D50, &qword_100063D58, &qword_100049608);
    sub_10003D7E8(&qword_100063D60, type metadata accessor for AXLTTextScrollView);
    _ConditionalContent<>.init(storage:)();
    return sub_10003BF70(v5);
  }
}

uint64_t sub_100038B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Text.LineStyle.Pattern();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003968(&qword_100063DB8, &unk_1000496E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v52 - v11;
  v65 = type metadata accessor for AttributedString();
  v53 = *(v65 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v65);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  __chkstk_darwin(v17);
  v63 = &v52 - v18;
  v19 = type metadata accessor for AttributeContainer();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v62 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v22 = dispatch thunk of AXLTCaption.segments.getter();
  if (v22 >> 62)
  {
    goto LABEL_44;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v23)
  {
LABEL_45:
    dispatch thunk of AXLTCaption.text.getter();
    AttributeContainer.init()();
    return AttributedString.init(_:attributes:)();
  }

LABEL_3:
  AttributedString.init(stringLiteral:)();
  v24 = dispatch thunk of AXLTCaption.segments.getter();
  v25 = v24;
  v52 = a2;
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (v26)
  {
LABEL_5:
    v27 = 0;
    v60 = v25 & 0xFFFFFFFFFFFFFF8;
    v61 = v25 & 0xC000000000000001;
    v28 = (v53 + 8);
    v58 = v26;
    v59 = v25;
    do
    {
      if (v61)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v60 + 16))
        {
          goto LABEL_37;
        }

        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v50 = _CocoaArrayWrapper.endIndex.getter();

        if (!v50)
        {
          goto LABEL_45;
        }

        goto LABEL_3;
      }

      v32 = [v29 substring];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      [v30 confidence];
      if (v33 != 0.0)
      {
        [v30 confidence];
        if (v34 < 0.5)
        {
          static Text.LineStyle.Pattern.dot.getter();
          static Color.blue.getter();
          v35 = v54;
          Text.LineStyle.init(pattern:color:)();
          v36 = type metadata accessor for Text.LineStyle();
          (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
          sub_100006098(v35, v55, &qword_100063DB8, &unk_1000496E0);
          sub_10003C4BC();
          AttributedString.subscript.setter();
          sub_100003CE8(v35, &qword_100063DB8, &unk_1000496E0);
        }
      }

      a2 = sub_10003D7E8(&qword_100063DC0, &type metadata accessor for AttributedString);
      AttributedString.append<A>(_:)();
      v37 = dispatch thunk of AXLTCaption.segments.getter();
      if (v37 >> 62)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v38, 1))
      {
        goto LABEL_38;
      }

      if (v27 >= v38 - 1)
      {
        (*v28)(v16, v65);
      }

      else
      {
        v39 = [v30 substringRange];
        [v30 substringRange];
        v41 = &v39[v40];
        if (__OFADD__(v39, v40))
        {
          goto LABEL_39;
        }

        v42 = (v41 - 1);
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_40;
        }

        v43 = dispatch thunk of AXLTCaption.segments.getter();
        if ((v43 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v31 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v44 = *(v43 + 8 * v31 + 32);
        }

        v45 = v44;

        if ([v45 substringRange] < v42)
        {
          v46 = v57;
LABEL_31:
          AttributedString.init(stringLiteral:)();
          AttributedString.append<A>(_:)();

          v48 = *v28;
          v49 = v65;
          (*v28)(v46, v65);
          v48(v16, v49);
          goto LABEL_8;
        }

        v47 = [v45 substringRange];
        if (__OFSUB__(v47, v42))
        {
          goto LABEL_43;
        }

        if (v47 - v42 >= 2)
        {
          v46 = v57;
          goto LABEL_31;
        }

        (*v28)(v16, v65);
      }

LABEL_8:
      v25 = v59;
      ++v27;
    }

    while (v31 != v58);
  }

LABEL_47:

  return (*(v53 + 32))(v52, v63, v65);
}

uint64_t sub_10003925C(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v7 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v8), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v9);
      sub_10000B374(v8);

      result = swift_dynamicCast();
      if (result)
      {
        v8[0] = *(a2 + 104);
        v9[0] = v7;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v8);
    }
  }

  return result;
}

uint64_t sub_10003935C(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v7 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v8), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v9);
      sub_10000B374(v8);

      result = swift_dynamicCast();
      if (result)
      {
        v8[0] = *(a2 + 120);
        v9[0] = v7;
        sub_100003968(&qword_100062D20, &qword_100048158);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v8);
    }
  }

  return result;
}

uint64_t sub_10003945C@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + 16);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1000374C8(a1);
}

unint64_t sub_1000394B0()
{
  result = qword_100063D38;
  if (!qword_100063D38)
  {
    sub_100003AC0(&qword_100063D18, &qword_1000495E8);
    sub_100039534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063D38);
  }

  return result;
}

unint64_t sub_100039534()
{
  result = qword_100063D40;
  if (!qword_100063D40)
  {
    sub_100003AC0(&qword_100063D48, &qword_100049600);
    sub_100003E3C(&qword_100063D50, &qword_100063D58, &qword_100049608);
    sub_10003D7E8(&qword_100063D60, type metadata accessor for AXLTTextScrollView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063D40);
  }

  return result;
}

uint64_t type metadata accessor for AXLTTextScrollView()
{
  result = qword_100063E28;
  if (!qword_100063E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100039668@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for AXLTTextScrollView();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  v47 = type metadata accessor for AccessibilityTraits();
  v45 = *(v47 - 8);
  v6 = v45;
  v7 = *(v45 + 64);
  __chkstk_darwin(v47);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003968(&qword_100063E98, &qword_100049760);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v46 = sub_100003968(&qword_100063EA0, &qword_100049768);
  v14 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v16 = &v44 - v15;
  *v13 = static VerticalAlignment.top.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v17 = &v13[*(sub_100003968(&qword_100063EA8, &qword_100049770) + 44)];
  *v17 = static VerticalAlignment.bottom.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v17[*(sub_100003968(&qword_100063EB0, &qword_100049778) + 44)];
  v51 = a1;
  sub_100039D04(a1, v18);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.bottomLeading.getter();
  v19 = v44;
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v17[*(sub_100003968(&qword_100063EB8, &qword_100049780) + 36)];
  v21 = v54;
  *v20 = v53;
  *(v20 + 1) = v21;
  *(v20 + 2) = v55;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = &v13[*(sub_100003968(&qword_100063EC0, &qword_100049788) + 36)];
  v23 = v57;
  *v22 = v56;
  *(v22 + 1) = v23;
  *(v22 + 2) = v58;
  *&v13[*(v10 + 36)] = 0;
  sub_10003CB8C();
  View.accessibility(identifier:)();
  sub_100003CE8(v13, &qword_100063E98, &qword_100049760);
  sub_100003968(&qword_100063C78, &unk_1000496D0);
  v24 = *(v6 + 72);
  v25 = v45;
  v26 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100048C70;
  static AccessibilityTraits.updatesFrequently.getter();
  static AccessibilityTraits.isStaticText.getter();
  v52 = v27;
  sub_10003D7E8(&qword_100063C38, &type metadata accessor for AccessibilityTraits);
  sub_100003968(&qword_100063C40, &qword_1000493A8);
  sub_100003E3C(&qword_100063C48, &qword_100063C40, &qword_1000493A8);
  v28 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v25 + 8))(v9, v28);
  sub_100003CE8(v16, &qword_100063EA0, &qword_100049768);
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  v31 = sub_100003968(&qword_100063EE8, &qword_1000497A0);
  v32 = v19 + *(v31 + 52);
  NSNotificationCenter.publisher(for:object:)();

  v33 = v51;
  v34 = v49;
  sub_10003BF0C(v51, v49);
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = swift_allocObject();
  sub_10003CAA8(v34, v36 + v35);
  v37 = (v19 + *(v31 + 56));
  *v37 = sub_10003CCFC;
  v37[1] = v36;
  v38 = [v29 defaultCenter];
  if (qword_100062740 != -1)
  {
    swift_once();
  }

  v39 = sub_100003968(&qword_100063EF0, &qword_1000497A8);
  v40 = v19 + *(v39 + 52);
  NSNotificationCenter.publisher(for:object:)();

  sub_10003BF0C(v33, v34);
  v41 = swift_allocObject();
  result = sub_10003CAA8(v34, v41 + v35);
  v43 = (v19 + *(v39 + 56));
  *v43 = sub_10003CD14;
  v43[1] = v41;
  return result;
}

uint64_t sub_100039D04@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for AXLTTextScrollView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v6;
  v8 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A2CC(v63);
  v32 = v63[1];
  v33 = v63[0];
  v9 = LOBYTE(v63[2]);
  v31 = v63[3];
  v10 = a1[14];
  *&v40[0] = a1[13];
  *(&v40[0] + 1) = v10;
  sub_100003968(&qword_100062D20, &qword_100048158);
  State.wrappedValue.getter();
  v30 = v62[0];
  KeyPath = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v34 = v9;
  v65 = v9;
  v64 = 1;
  GeometryProxy.size.getter();
  static Alignment.topLeading.getter();
  v36 = v8;
  v26 = a1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v66[3] + 7) = *(&v66[10] + 8);
  *(&v66[4] + 7) = *(&v66[11] + 8);
  *(&v66[5] + 7) = *(&v66[12] + 8);
  *(&v66[6] + 7) = *(&v66[13] + 8);
  *(v66 + 7) = *(&v66[7] + 8);
  *(&v66[1] + 7) = *(&v66[8] + 8);
  *(&v66[2] + 7) = *(&v66[9] + 8);
  GeometryProxy.size.getter();
  static Alignment.topLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003BF0C(a1, v8);
  v11 = *(v4 + 80);
  v28 = v7;
  v29 = v11;
  v12 = (v11 + 16) & ~v11;
  v27 = v12;
  v13 = swift_allocObject();
  sub_10003CAA8(v8, v13 + v12);
  v14 = static Alignment.center.getter();
  v24 = v15;
  v16 = swift_allocObject();
  *(&v41[16] + 1) = v66[4];
  *(&v41[18] + 1) = v66[5];
  *(&v41[20] + 1) = v66[6];
  *(&v41[8] + 1) = v66[0];
  *(&v41[10] + 1) = v66[1];
  *(&v41[12] + 1) = v66[2];
  *(&v41[14] + 1) = v66[3];
  *&v41[27] = v40[2];
  v17 = v40[0];
  *&v41[25] = v40[1];
  v25 = v16;
  *(v16 + 16) = sub_10003CE08;
  *(v16 + 24) = v13;
  v41[0] = v33;
  v41[1] = v32;
  LOBYTE(v41[2]) = v34;
  v41[3] = v31;
  v41[4] = KeyPath;
  v41[5] = v30;
  v41[6] = v37;
  v41[7] = 0;
  LOBYTE(v41[8]) = 1;
  v41[22] = *(&v66[6] + 15);
  *&v41[23] = v17;
  LOWORD(v41[29]) = 256;
  v41[30] = sub_10003E0D0;
  v41[31] = 0;
  v41[32] = v14;
  v41[33] = v24;
  memcpy(v62, v41, sizeof(v62));
  v54 = v66[4];
  v55 = v66[5];
  *v56 = v66[6];
  v50 = v66[0];
  v51 = v66[1];
  v52 = v66[2];
  v53 = v66[3];
  *&v56[55] = v40[2];
  *&v56[39] = v40[1];
  v42[0] = v33;
  v42[1] = v32;
  v43 = v34;
  v44 = v31;
  v45 = KeyPath;
  v46 = v30;
  v47 = v37;
  v48 = 0;
  v49 = 1;
  *&v56[15] = *(&v66[6] + 15);
  *&v56[23] = v40[0];
  v57 = 256;
  v58 = sub_10003E0D0;
  v59 = 0;
  v60 = v14;
  v61 = v24;
  sub_100006098(v41, v63, &qword_100063EF8, &qword_1000497E0);
  sub_100003CE8(v42, &qword_100063EF8, &qword_1000497E0);
  memcpy(v40, v62, 0x110uLL);
  *&v40[17] = sub_10003CEB8;
  *(&v40[17] + 1) = v25;
  v39 = *v26;
  v18 = v39;
  v19 = v36;
  sub_10003BF0C(v26, v36);
  v20 = v27;
  v21 = swift_allocObject();
  sub_10003CAA8(v19, v21 + v20);
  v22 = v18;
  sub_100003968(&qword_100063F00, &qword_1000497E8);
  type metadata accessor for AXLTCaption();
  sub_10003D0D8();
  sub_10003D7E8(&qword_100062C68, &type metadata accessor for AXLTCaption);
  View.onChange<A>(of:initial:_:)();

  memcpy(v63, v40, sizeof(v63));
  return sub_100003CE8(v63, &qword_100063F00, &qword_1000497E8);
}

uint64_t sub_10003A2CC@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for AttributedString();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100038B80(*v1, &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = Text.init(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v1[11];
  v10 = v1[12];
  v51 = v11;
  v52 = v10;
  v48 = v10;
  v47 = sub_100003968(&qword_100062C78, &qword_1000480F0);
  State.wrappedValue.getter();
  v12 = AXLTCaption.appID.getter();
  v14 = v13;
  if (v12 == placeholderID.getter() && v14 == v15)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  Color.opacity(_:)();

  v49 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10000B6F4(v5, v7, v9 & 1);

  dispatch thunk of AXLTCaption.placeholder.getter();
  v22 = String.count.getter();

  if (v22 < 1)
  {
    v42 = v49;
  }

  else
  {
    v24._countAndFlagsBits = dispatch thunk of AXLTCaption.placeholder.getter();
    v51 = 10;
    v52 = 0xE100000000000000;
    String.append(_:)(v24);

    sub_10000B6A0();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v46 = v21;
    v51 = v11;
    v52 = v48;
    State.wrappedValue.getter();
    Color.opacity(_:)();
    v48 = v17;

    v44 = Text.foregroundColor(_:)();
    v31 = v30;
    v33 = v32;

    sub_10000B6F4(v25, v27, v29 & 1);

    v34 = v19;
    v35 = v48;
    v36 = v49;
    v37 = v44;
    v47 = static Text.+ infix(_:_:)();
    v45 = v38;
    LOBYTE(v25) = v39;
    v41 = v40;
    sub_10000B6F4(v36, v35, v34 & 1);

    sub_10000B6F4(v37, v31, v33 & 1);

    v42 = v47;
    v17 = v45;
    v19 = v25;
    v21 = v41;
  }

  v43 = v50;
  *v50 = v42;
  v43[1] = v17;
  *(v43 + 16) = v19 & 1;
  v43[3] = v21;
  return result;
}

void sub_10003A638(uint64_t *a1, double a2, double a3)
{
  v5 = static os_log_type_t.debug.getter();
  v6 = AXLogLiveTranscription();
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, v5))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v7, v5, "readSize captionHeight: %f", v8, 0xCu);
    }

    v9 = *a1;
    sub_10003A6FC(a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_10003A6FC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for AXLTTextScrollView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v64 = &v62 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v21 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v61 = v21;
    swift_once();
    v21 = v61;
  }

  v22 = [v21 preferredFontForTextStyle:textFontStyle];
  [v22 lineHeight];
  v24 = v23;

  v25 = AXLTCaption.appID.getter();
  v27 = v26;
  if (v25 == placeholderID.getter() && v27 == v28)
  {

LABEL_9:
    v30 = v1[2];
    v31 = v1[3];
    *&v67 = v1[1];
    *(&v67 + 1) = v30;
    v68 = v31;
    v66 = v24;
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    goto LABEL_33;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_9;
  }

  v32 = a1 / v24;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = static os_log_type_t.debug.getter();
  v34 = AXLogLiveTranscription();
  if (!v34)
  {
    goto LABEL_44;
  }

  v35 = v34;
  v63 = v32;
  if (os_log_type_enabled(v34, v33))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v35, v33, "linesCount: %ld", v36, 0xCu);
  }

  v37 = v2 + *(v4 + 40);
  sub_10000B0CC(v20);
  v29 = v65;
  (*(v65 + 56))(v20, 0, 1, v10);
  sub_100006098(v20, v17, &qword_100062AE8, &qword_1000480E0);
  if ((*(v29 + 48))(v17, 1, v10) != 1)
  {
    (*(v29 + 32))(v13, v17, v10);
    if (qword_1000626F8 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  sub_100003CE8(v20, &qword_100062AE8, &qword_1000480E0);
  sub_100003CE8(v17, &qword_100062AE8, &qword_1000480E0);
LABEL_20:
  for (i = textLinesNumberMax.getter(); ; i = textLinesAccessibilityNumberMax.getter())
  {
    v40 = i;
    v10 = v2[4];
    v13 = v2[5];
    v41 = v2[6];
    *&v67 = v10;
    *(&v67 + 1) = v13;
    v68 = v41;
    v20 = sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.wrappedValue.getter();
    v42 = v66;
    v43 = v63;
    if (*&v66 >= v63)
    {
      v42 = *&v63;
    }

    *&v67 = v10;
    *(&v67 + 1) = v13;
    v68 = v41;
    v66 = v42;

    Binding.wrappedValue.setter();
    v44 = __OFSUB__(v43, v40);
    v29 = v43 - v40;
    if (v44)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    *&v67 = v10;
    *(&v67 + 1) = v13;
    v68 = v41;
    Binding.wrappedValue.getter();
    v45 = v66;
    if (*&v66 <= v29)
    {
      v45 = *&v29;
    }

    *&v67 = v10;
    *(&v67 + 1) = v13;
    v68 = v41;
    v66 = v45;
    Binding.wrappedValue.setter();

    v29 = static os_log_type_t.debug.getter();
    v46 = AXLogLiveTranscription();
    if (!v46)
    {
      goto LABEL_45;
    }

    v47 = v46;
    v48 = v64;
    sub_10003BF0C(v2, v64);
    if (os_log_type_enabled(v47, v29))
    {
      v49 = swift_slowAlloc();
      LODWORD(v65) = v29;
      v29 = v49;
      *v49 = 134217984;
      v50 = *(v48 + 48);
      v67 = *(v48 + 32);
      v68 = v50;
      Binding.wrappedValue.getter();
      v51 = v66;
      sub_10003BF70(v48);
      *(v29 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v47, v65, "lineNumberDisplay: %ld", v29, 0xCu);
    }

    else
    {
      sub_10003BF70(v48);
    }

    *&v67 = v10;
    *(&v67 + 1) = v13;
    v68 = v41;
    Binding.wrappedValue.getter();
    if (!__OFSUB__(v63, *&v66))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_19:
    sub_1000064FC(v10, accessibilityLayoutTextSize);
    sub_10003D7E8(&qword_100062AF0, &type metadata accessor for DynamicTypeSize);
    v38 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v29 + 8))(v13, v10);
    sub_100003CE8(v20, &qword_100062AE8, &qword_1000480E0);
    if (v38)
    {
      goto LABEL_20;
    }
  }

  v52 = v2[2];
  v53 = v2[3];
  *&v67 = v2[1];
  *(&v67 + 1) = v52;
  v68 = v53;
  v66 = v24 * (v63 - *&v66);
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
LABEL_33:
  Binding.wrappedValue.setter();
  v54 = static os_log_type_t.debug.getter();
  v55 = AXLogLiveTranscription();
  if (v55)
  {
    v56 = v55;
    sub_10003BF0C(v2, v7);
    if (os_log_type_enabled(v56, v54))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      v58 = v7[2];
      v59 = v7[3];
      *&v67 = v7[1];
      *(&v67 + 1) = v58;
      v68 = v59;
      sub_100003968(&qword_1000634D8, &qword_100048BA8);
      Binding.wrappedValue.getter();
      v60 = v66;
      sub_10003BF70(v7);
      *(v57 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v56, v54, "textHeight: %f", v57, 0xCu);
    }

    else
    {

      sub_10003BF70(v7);
    }

    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

NSObject *sub_10003AF54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for AXLTTextScrollView();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v55 - v10);
  v12 = *a2;
  v13 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v15 = result;
    sub_10003BF0C(a3, v11);
    v16 = os_log_type_enabled(v15, v13);
    v57 = v8;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v61 = v18;
      *v17 = 136315138;
      v19 = *v11;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v56) = v13;
      v22 = a3;
      v23 = v21;
      v25 = v24;

      sub_10003BF70(v11);
      v26 = sub_100031EB4(v23, v25, &v61);

      *(v17 + 4) = v26;
      a3 = v22;
      _os_log_impl(&_mh_execute_header, v15, v56, "onChange caption: %s", v17, 0xCu);
      sub_100018190(v18);
    }

    else
    {

      sub_10003BF70(v11);
    }

    v27 = dispatch thunk of AXLTCaption.text.getter();
    v29 = v28;
    v30 = *a3;
    v31 = AXLTCaption.appID.getter();
    v33 = v32;
    if (v31 == placeholderID.getter() && v33 == v34)
    {
      goto LABEL_7;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_9;
    }

    v36 = dispatch thunk of AXLTCaption.time.getter();
    v38 = v37;
    v39 = *(a3 + 64);
    v41 = *(a3 + 72);
    v40 = *(a3 + 80);
    v56 = *(a3 + 56);
    *&v61 = v56;
    *(&v61 + 1) = v39;
    v62 = v41;
    v63 = v40;
    v42 = sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.wrappedValue.getter();
    if (v59 == v36 && v60 == v38)
    {
LABEL_7:

LABEL_9:
      sub_10003B3F4(v27, v29);
    }

    v55 = v42;
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {

      goto LABEL_9;
    }

    v44 = *(a3 + 48);
    v61 = *(a3 + 32);
    v62 = v44;
    v59 = 0;
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.wrappedValue.setter();
    *&v61 = v56;
    *(&v61 + 1) = v39;
    v62 = v41;
    v63 = v40;
    v59 = v36;
    v60 = v38;

    Binding.wrappedValue.setter();
    v45 = static os_log_type_t.debug.getter();
    result = AXLogLiveTranscription();
    if (result)
    {
      v46 = result;

      v47 = v57;
      sub_10003BF0C(a3, v57);
      if (os_log_type_enabled(v46, v45))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58 = v49;
        *v48 = 136315138;
        v50 = *(v47 + 72);
        v51 = *(v47 + 80);
        v61 = *(v47 + 56);
        v62 = v50;
        v63 = v51;
        Binding.wrappedValue.getter();
        v52 = v59;
        v53 = v60;
        sub_10003BF70(v47);
        v54 = sub_100031EB4(v52, v53, &v58);

        *(v48 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v46, v45, "onChange caption, lineNumberDisplay = 0, current time: %s", v48, 0xCu);
        sub_100018190(v49);
      }

      else
      {

        sub_10003BF70(v47);
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for AXLTTextScrollView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = v2 + *(v8 + 52);
  v11 = *(v9 + 8);
  aBlock = *v9;
  v10 = aBlock;
  v24 = v11;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  v12 = v29;
  [v29 invalidate];

  aBlock = v10;
  v24 = v11;
  v29 = 0;
  State.wrappedValue.setter();
  v13 = objc_opt_self();
  textOnScreenTimeInterval.getter();
  v15 = v14;
  sub_10003BF0C(v3, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_10003CAA8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v22;
  v18[1] = a2;
  v27 = sub_10003D70C;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100032E40;
  v26 = &unk_10005F2D0;
  v19 = _Block_copy(&aBlock);

  v20 = [v13 scheduledTimerWithTimeInterval:1 repeats:v19 block:v15];
  _Block_release(v19);
  aBlock = v10;
  v24 = v11;
  v29 = v20;
  return State.wrappedValue.setter();
}

uint64_t sub_10003B64C(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v10);
      sub_10000B374(v9);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(a2 + 96);
        v9[0] = *(a2 + 88);
        v9[1] = v7;
        v10[0] = v8;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v9);
    }
  }

  return result;
}

uint64_t sub_10003B74C(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v10);
      sub_10000B374(v9);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(a2 + 112);
        v9[0] = *(a2 + 104);
        v9[1] = v7;
        v10[0] = v8;
        sub_100003968(&qword_100062D20, &qword_100048158);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v9);
    }
  }

  return result;
}

NSObject *sub_10003B84C(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AXLTTextScrollView();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isValid];
  if (result)
  {
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v14 = objc_opt_self();
    if (qword_100062780 != -1)
    {
      v44 = v14;
      swift_once();
      v14 = v44;
    }

    v15 = [v14 preferredFontForTextStyle:textFontStyle];
    [v15 lineHeight];
    v17 = v16;

    v18 = a2[2];
    v19 = a2[3];
    *&v50 = a2[1];
    *(&v50 + 1) = v18;
    v51 = v19;
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    result = Binding.wrappedValue.getter();
    v20 = v46 / v17;
    if (COERCE__INT64(fabs(v46 / v17)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        v21 = v20;
        v52 = v20;
        v22 = v20 - 1;
        if (v20 < 1)
        {
LABEL_20:
          if (!v21)
          {
            v35 = (a2 + *(v8 + 44));
            v37 = v35[1];
            *&v50 = *v35;
            v36 = v50;
            *(&v50 + 1) = v37;
            sub_100003968(&qword_100062FE8, &qword_100048BA0);
            State.wrappedValue.getter();
            v38 = v46;
            [*&v46 invalidate];

            *&v50 = v36;
            *(&v50 + 1) = v37;
            v46 = 0.0;
            return State.wrappedValue.setter();
          }

          return result;
        }

        if (placeholderPausedText.getter() == a3 && v23 == a4)
        {
          goto LABEL_12;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_14;
        }

        if (placeholderText.getter() == a3 && v39 == a4)
        {
LABEL_12:

LABEL_14:
          v52 = 1;
          v25 = (a2 + *(v8 + 44));
          v27 = v25[1];
          *&v50 = *v25;
          v26 = v50;
          *(&v50 + 1) = v27;
          sub_100003968(&qword_100062FE8, &qword_100048BA0);
          State.wrappedValue.getter();
          v28 = v46;
          [*&v46 invalidate];

          *&v50 = v26;
          *(&v50 + 1) = v27;
          v46 = 0.0;
          State.wrappedValue.setter();
          goto LABEL_15;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {
          goto LABEL_14;
        }

        v41 = *(a2 + 4);
        v42 = a2[5];
        v43 = a2[6];
        *&v50 = v41;
        *(&v50 + 1) = v42;
        v51 = v43;

        sub_100003968(&qword_1000637D0, &qword_100048F20);
        result = Binding.wrappedValue.getter();
        if (!__OFADD__(v49, 1))
        {
          v46 = v41;
          v47 = v42;
          v48 = v43;
          v45[1] = v49 + 1;
          Binding.wrappedValue.setter();

          v52 = v22;
LABEL_15:
          v29 = static os_log_type_t.debug.getter();
          result = AXLogLiveTranscription();
          if (result)
          {
            v30 = result;
            sub_10003BF0C(a2, v12);
            if (os_log_type_enabled(v30, v29))
            {
              v31 = swift_slowAlloc();
              *v31 = 134217984;
              v32 = *(v12 + 6);
              v50 = *(v12 + 2);
              v51 = v32;
              sub_100003968(&qword_1000637D0, &qword_100048F20);
              Binding.wrappedValue.getter();
              v33 = v46;
              sub_10003BF70(v12);
              *(v31 + 4) = v33;
              _os_log_impl(&_mh_execute_header, v30, v29, "Moving Timer fired, lineNumberDisplay: %ld", v31, 0xCu);
            }

            else
            {
              sub_10003BF70(v12);
            }

            __chkstk_darwin(v34);
            v45[-4] = a2;
            *&v45[-3] = v17;
            v45[-2] = &v52;
            static Animation.default.getter();
            withAnimation<A>(_:_:)();

            v21 = v52;
            goto LABEL_20;
          }

LABEL_32:
          __break(1u);
          return result;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_10003BD80(void *a1, void *a2)
{
  *a2;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10003BE40(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_10003BF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTextScrollView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BF70(uint64_t a1)
{
  v2 = type metadata accessor for AXLTTextScrollView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003BFCC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10003BF0C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10003CAA8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10003CB0C;
  a2[1] = v7;
  return result;
}

uint64_t sub_10003C0B8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003C0EC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003C120(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10003C150(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_10003C180()
{
  result = qword_100063DB0;
  if (!qword_100063DB0)
  {
    sub_100003AC0(&qword_100063DA8, &unk_1000496C0);
    sub_100003E3C(&qword_100062D48, &qword_100062D50, &qword_1000481A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063DB0);
  }

  return result;
}

uint64_t sub_10003C244()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  v11 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_10003C2DC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003C398(a1, v4);
}

unint64_t sub_10003C320(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10003C510(a1, a2, v6);
}

unint64_t sub_10003C398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003C460(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000B374(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003C4BC()
{
  result = qword_100063DC8;
  if (!qword_100063DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063DC8);
  }

  return result;
}

unint64_t sub_10003C510(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10003C5DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10003C6AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003C75C()
{
  type metadata accessor for AXLTCaption();
  if (v0 <= 0x3F)
  {
    sub_10003C924(319, &qword_1000633C0, &type metadata for CGFloat, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10003C924(319, &qword_100063E38, &type metadata for Int, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_10003C924(319, &unk_100063E40, &type metadata for String, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_10003C924(319, &qword_100062BD8, &type metadata for Color, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10003C924(319, &qword_100062BE0, &type metadata for Font, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10003C974();
              if (v6 <= 0x3F)
              {
                sub_10001F288();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10003C924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10003C974()
{
  if (!qword_100062BD0)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100062BD0);
    }
  }
}

unint64_t sub_10003C9D0()
{
  result = qword_100063E88;
  if (!qword_100063E88)
  {
    sub_100003AC0(&qword_100063E90, "ک");
    sub_100003E3C(&qword_100063D30, &qword_100063D28, &qword_1000495F8);
    sub_1000394B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063E88);
  }

  return result;
}

uint64_t sub_10003CAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTextScrollView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100039668(v4, a1);
}

unint64_t sub_10003CB8C()
{
  result = qword_100063EC8;
  if (!qword_100063EC8)
  {
    sub_100003AC0(&qword_100063E98, &qword_100049760);
    sub_10003CC44();
    sub_100003E3C(&qword_100063640, &qword_100063648, &qword_100048DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063EC8);
  }

  return result;
}

unint64_t sub_10003CC44()
{
  result = qword_100063ED0;
  if (!qword_100063ED0)
  {
    sub_100003AC0(&qword_100063EC0, &qword_100049788);
    sub_100003E3C(&qword_100063ED8, &qword_100063EE0, &unk_100049790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063ED0);
  }

  return result;
}

uint64_t sub_10003CD2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10003CDB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003CDDC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

void sub_10003CE08(double a1, double a2)
{
  v5 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_10003A638(v6, a1, a2);
}

uint64_t sub_10003CE80()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003CEC0()
{
  v1 = type metadata accessor for AXLTTextScrollView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 64);

  v12 = *(v0 + v3 + 80);

  v13 = *(v0 + v3 + 88);

  v14 = *(v0 + v3 + 96);

  v15 = *(v0 + v3 + 104);

  v16 = *(v0 + v3 + 112);

  v17 = *(v1 + 40);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for DynamicTypeSize();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  v20 = v5 + *(v1 + 44);

  v21 = *(v20 + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

NSObject *sub_10003D058(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003AF54(a1, a2, v6);
}

unint64_t sub_10003D0D8()
{
  result = qword_100063F08;
  if (!qword_100063F08)
  {
    sub_100003AC0(&qword_100063F00, &qword_1000497E8);
    sub_10003D190();
    sub_100003E3C(&qword_1000636E0, &qword_1000636E8, &qword_100048E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F08);
  }

  return result;
}

unint64_t sub_10003D190()
{
  result = qword_100063F10;
  if (!qword_100063F10)
  {
    sub_100003AC0(&qword_100063EF8, &qword_1000497E0);
    sub_10003D248();
    sub_100003E3C(&qword_1000636D0, &qword_1000636D8, &qword_100048E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F10);
  }

  return result;
}

unint64_t sub_10003D248()
{
  result = qword_100063F18;
  if (!qword_100063F18)
  {
    sub_100003AC0(&qword_100063F20, &qword_1000497F0);
    sub_10003D2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F18);
  }

  return result;
}

unint64_t sub_10003D2D4()
{
  result = qword_100063F28;
  if (!qword_100063F28)
  {
    sub_100003AC0(&qword_100063F30, &qword_1000497F8);
    sub_10003D360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F28);
  }

  return result;
}

unint64_t sub_10003D360()
{
  result = qword_100063F38;
  if (!qword_100063F38)
  {
    sub_100003AC0(&qword_100063F40, &qword_100049800);
    sub_10003D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F38);
  }

  return result;
}

unint64_t sub_10003D3EC()
{
  result = qword_100063F48;
  if (!qword_100063F48)
  {
    sub_100003AC0(&qword_100063F50, &qword_100049808);
    sub_10003D4A4();
    sub_100003E3C(&qword_100062D48, &qword_100062D50, &qword_1000481A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F48);
  }

  return result;
}

unint64_t sub_10003D4A4()
{
  result = qword_100063F58;
  if (!qword_100063F58)
  {
    sub_100003AC0(&qword_100063F60, &qword_100049810);
    sub_100003E3C(&qword_100063F68, &qword_100063F70, &qword_100049818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F58);
  }

  return result;
}

uint64_t sub_10003D55C()
{
  v1 = type metadata accessor for AXLTTextScrollView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 64);

  v12 = *(v0 + v3 + 80);

  v13 = *(v0 + v3 + 88);

  v14 = *(v0 + v3 + 96);

  v15 = *(v0 + v3 + 104);

  v16 = *(v0 + v3 + 112);

  v17 = *(v1 + 40);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for DynamicTypeSize();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  v20 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v5 + *(v1 + 44);

  v22 = *(v21 + 8);

  v23 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16, v2 | 7);
}

NSObject *sub_10003D70C(void *a1)
{
  v3 = *(type metadata accessor for AXLTTextScrollView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10003B84C(a1, (v1 + v4), v6, v7);
}

uint64_t sub_10003D7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D7E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003D998()
{
  v1 = v0;
  v2 = type metadata accessor for RootView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v25 - v7);
  v9 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v9];

  [v0 setClipsToBounds:1];
  [v0 makeKeyAndVisible];
  [v0 setOverrideUserInterfaceStyle:2];
  sub_10001560C(v8);
  sub_10003DE54(v8, v5);
  sub_10003DEB8();
  AnyView.init<A>(_:)();
  v10 = _makeUIHostingController(_:tracksContentSize:secure:)();

  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  sub_10003DF10();
  static Color.clear.getter();
  v14 = UIColor.init(_:)();
  [v13 setBackgroundColor:v14];

  [v1 setRootViewController:v11];
  v15 = 18;
  if (!_AXSLiveTranscriptionScreenshotHidingEnabled())
  {
    if (AXSSIsAppleInternalBuild())
    {
      v15 = 0;
    }

    else
    {
      v15 = 18;
    }
  }

  v16 = [v1 rootViewController];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 view];

  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = [v18 layer];

  [v19 setDisableUpdateMask:v15];
  v20 = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSLiveTranscriptionScreenshotHidingDidChangeNotification)
  {
    v21 = v20;
    v22 = *&v1[OBJC_IVAR____TtC19LiveTranscriptionUI8LTWindow_screenshotsHidingChanged];
    v23 = kAXSLiveTranscriptionScreenshotHidingDidChangeNotification;
    CFNotificationCenterAddObserver(v21, v1, v22, v23, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v24 = [objc_opt_self() defaultCenter];
    [v24 addObserver:v1 selector:"localeDidChangeWithNotification:" name:NSCurrentLocaleDidChangeNotification object:0];

    sub_10003DF5C(v8);
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10003DDFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LTWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003DE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003DEB8()
{
  result = qword_100063FB8;
  if (!qword_100063FB8)
  {
    type metadata accessor for RootView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063FB8);
  }

  return result;
}

unint64_t sub_10003DF10()
{
  result = qword_100063828;
  if (!qword_100063828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063828);
  }

  return result;
}

uint64_t sub_10003DF5C(uint64_t a1)
{
  v2 = type metadata accessor for RootView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003DFB8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = 18;
  if (!_AXSLiveTranscriptionScreenshotHidingEnabled())
  {
    if (AXSSIsAppleInternalBuild())
    {
      v2 = 0;
    }

    else
    {
      v2 = 18;
    }
  }

  v3 = [v1 rootViewController];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = [v5 layer];

  [v6 setDisableUpdateMask:v2];
}

uint64_t sub_10003E0D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10003E110()
{
  result = static Color.white.getter();
  microphoneColor = result;
  return result;
}

uint64_t *microphoneColor.unsafeMutableAddressor()
{
  if (qword_100062798 != -1)
  {
    swift_once();
  }

  return &microphoneColor;
}

uint64_t (*AudioHistogramConfig.levelBarMaxHeight.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarMaxHeight.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarMaxHeight.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMaxHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarMinHeight.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarMinHeight.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarMinHeight.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMinHeight;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarWidth.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarWidth.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarWidth.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarWidth;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarCount.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarCount.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarCount.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarKeys.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarKeys.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarKeys.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarKeys;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.levelBarSpacing.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarSpacing.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarSpacing.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarSpacing;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.animationTimerDuration.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$animationTimerDuration.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$animationTimerDuration.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__animationTimerDuration;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.minBarScale.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$minBarScale.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$minBarScale.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__minBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.maxBarScale.modify(uint64_t *a1))()
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
  return sub_10002A174;
}

uint64_t AudioHistogramConfig.$maxBarScale.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$maxBarScale.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__maxBarScale;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t (*AudioHistogramConfig.randomPower.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$randomPower.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$randomPower.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__randomPower;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t sub_100040924(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.jitter.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$jitter.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$jitter.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__jitter;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

double sub_100040D4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100040DB8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100040E5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100040F10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.magnitude.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$magnitude.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063FD8, &qword_100049900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$magnitude.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100063FD8, &qword_100049900);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__magnitude;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t sub_10004132C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100041398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10004143C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000414D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.levelBarColor.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$levelBarColor.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100064048, &qword_100049C80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100064040, &qword_100049C78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$levelBarColor.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100064048, &qword_100049C80);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarColor;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100064040, &qword_100049C78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t AudioHistogramConfig.histogram.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100041968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000419EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t AudioHistogramConfig.histogram.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AudioHistogramConfig.histogram.modify(uint64_t *a1))()
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
  return sub_100032E38;
}

uint64_t AudioHistogramConfig.$histogram.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_100064068, &qword_100049CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  sub_100003968(&qword_100064060, &qword_100049CD8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioHistogramConfig.$histogram.modify(uint64_t *a1))()
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
  v5 = sub_100003968(&qword_100064068, &qword_100049CE0);
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

  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__histogram;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_100064060, &qword_100049CD8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10002A51C;
}

uint64_t sub_100041E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100041FB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (__OFSUB__(*&v2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v2 * *&v2 + v2 * (*&v2 - 1);
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t AudioHistogramConfig.deinit()
{
  v1 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMaxHeight;
  v2 = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMinHeight, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarWidth, v2);
  v4 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarCount;
  v5 = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarKeys, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarSpacing, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__animationTimerDuration, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__minBarScale, v2);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__maxBarScale, v2);
  v6(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__randomPower, v5);
  v6(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__jitter, v5);
  v3(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__magnitude, v2);
  v7 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarColor;
  v8 = sub_100003968(&qword_100064040, &qword_100049C78);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__histogram;
  v10 = sub_100003968(&qword_100064060, &qword_100049CD8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t AudioHistogramConfig.__deallocating_deinit()
{
  AudioHistogramConfig.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100042454()
{
  v1 = sub_100003968(&qword_100064060, &qword_100049CD8);
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v43 = v38 - v3;
  v4 = sub_100003968(&qword_100064040, &qword_100049C78);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v40 = v38 - v6;
  v39 = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v39);
  v10 = v38 - v9;
  v11 = sub_100003968(&qword_100063FD0, &qword_1000498F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  v16 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMaxHeight;
  v46 = 0x403C000000000000;
  Published.init(initialValue:)();
  v17 = *(v12 + 32);
  v17(v0 + v16, v15, v11);
  v18 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarMinHeight;
  v46 = 0x4000000000000000;
  Published.init(initialValue:)();
  v17(v0 + v18, v15, v11);
  v19 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarWidth;
  v46 = 0x4000000000000000;
  Published.init(initialValue:)();
  v17(v0 + v19, v15, v11);
  v20 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarCount;
  v46 = 16;
  Published.init(initialValue:)();
  v21 = *(v7 + 32);
  v22 = v39;
  v21(v0 + v20, v10, v39);
  v38[1] = v7 + 32;
  v23 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarKeys;
  v46 = 10;
  Published.init(initialValue:)();
  v21(v0 + v23, v10, v22);
  v24 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarSpacing;
  v46 = 0x4000000000000000;
  Published.init(initialValue:)();
  v17(v0 + v24, v15, v11);
  v25 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__animationTimerDuration;
  v46 = 0x401C000000000000;
  Published.init(initialValue:)();
  v17(v0 + v25, v15, v11);
  v26 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__minBarScale;
  v46 = 0x3FB999999999999ALL;
  Published.init(initialValue:)();
  v17(v0 + v26, v15, v11);
  v27 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__maxBarScale;
  v46 = 0x3FF0000000000000;
  Published.init(initialValue:)();
  v17(v0 + v27, v15, v11);
  v28 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__randomPower;
  v46 = 80;
  Published.init(initialValue:)();
  v21(v0 + v28, v10, v22);
  v29 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__jitter;
  v46 = 29;
  Published.init(initialValue:)();
  v21(v0 + v29, v10, v22);
  v30 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__magnitude;
  v46 = 0x3FF0000000000000;
  Published.init(initialValue:)();
  v17(v0 + v30, v15, v11);
  v31 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__levelBarColor;
  if (qword_100062798 != -1)
  {
    swift_once();
  }

  v46 = microphoneColor;

  v32 = v40;
  Published.init(initialValue:)();
  (*(v41 + 32))(v0 + v31, v32, v42);
  v33 = OBJC_IVAR____TtC19LiveTranscriptionUI20AudioHistogramConfig__histogram;
  v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v34 + 16) = 16;
  v35 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v34 + 32) = v35;
  *(v34 + 48) = v35;
  *(v34 + 64) = v35;
  *(v34 + 80) = v35;
  *(v34 + 96) = v35;
  *(v34 + 112) = v35;
  *(v34 + 128) = v35;
  *(v34 + 144) = v35;
  v46 = v34;
  sub_100003968(&qword_100064050, &qword_100049C88);
  v36 = v43;
  Published.init(initialValue:)();
  (*(v44 + 32))(v0 + v33, v36, v45);
  return v0;
}

uint64_t sub_100042A84@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100042AC4()
{
  v0 = sub_100003968(&qword_100063018, &qword_1000486B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v10 - v2;
  sub_100045238();
  v4 = [objc_opt_self() mainRunLoop];
  v5 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = NSRunLoopCommonModes;
  v7 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100003CE8(v3, &qword_100063018, &qword_1000486B0);
  v10[1] = v7;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_100045284(&qword_1000644D0, &type metadata accessor for NSTimer.TimerPublisher);
  v8 = ConnectablePublisher.autoconnect()();

  qword_100063FC0 = v8;
  return result;
}

uint64_t sub_100042C80()
{
  v1 = v0;
  v2 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v15;
  v4 = 1.0;
  if (v15 > 0.0)
  {
    v16 = v1[4];
    sub_100003968(&qword_1000630B8, &qword_100048720);
    State.wrappedValue.getter();
    v4 = v14 / v3;
  }

  v17 = v1[2];
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.getter();
  v5 = *(v14 + 16);

  if (v5)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v6[2] = v5;
    v7 = v6 + 2;
    bzero(v6 + 4, 8 * v5);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
    v7 = (&_swiftEmptyArrayStorage + 16);
    v5 = *(&_swiftEmptyArrayStorage + 2);
    if (!v5)
    {
      return v6;
    }
  }

  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    v18 = v1[1];
    State.wrappedValue.getter();
    result = v14;
    if ((v8 - 4) >= *(v14 + 16))
    {
      break;
    }

    v11 = *(v14 + 8 * v8);

    v19 = v1[2];
    State.wrappedValue.getter();
    result = v14;
    if (v9 >= *(v14 + 16))
    {
      goto LABEL_14;
    }

    v12 = *(v14 + 8 * v8);

    v20 = v1[1];
    State.wrappedValue.getter();
    result = v14;
    if (v9 >= *(v14 + 16))
    {
      goto LABEL_15;
    }

    v13 = *(v14 + 8 * v8);

    if (v9 >= *v7)
    {
      goto LABEL_16;
    }

    *&v6[v8++] = v11 + v4 * (v12 - v13);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100042EAC()
{
  v1 = v0;
  v2 = *(v0 + 4);
  v3 = v0[5];
  v39 = v3;
  *v40 = v2;
  *&v38 = v2;
  *(&v38 + 1) = v3;
  sub_100006098(v40, &v36, &qword_100064050, &qword_100049C88);
  sub_100006098(&v39, &v36, &qword_1000644C0, &qword_100049F48);
  sub_100006098(v40, &v36, &qword_100064050, &qword_100049C88);
  sub_100006098(&v39, &v36, &qword_1000644C0, &qword_100049F48);
  sub_100006098(v40, &v36, &qword_100064050, &qword_100049C88);
  sub_100006098(&v39, &v36, &qword_1000644C0, &qword_100049F48);
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.getter();
  v4 = *(*&v36 + 16);

  v5 = v0[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 == v38)
  {
    goto LABEL_13;
  }

  sub_100041E44();
  v33 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (v38)
  {
    v9 = COERCE_DOUBLE(static Array._allocateBufferUninitialized(minimumCapacity:)());
    *(*&v9 + 16) = v8;
    v10 = (*&v9 + 32);
    if (v8 > 3)
    {
      v11 = v8 & 0x7FFFFFFFFFFFFFFCLL;
      v10 += v8 & 0x7FFFFFFFFFFFFFFCLL;
      v12 = v33;
      v13 = vdupq_lane_s64(v33, 0);
      v14 = (*&v9 + 48);
      v15 = v8 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v13;
        *v14 = v13;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v8 == v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v12 = v33;
    }

    v16 = v8 - v11;
    do
    {
      *v10++ = v12;
      --v16;
    }

    while (v16);
  }

  else
  {
    v9 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  }

LABEL_12:
  *&v38 = v2;
  *(&v38 + 1) = v3;
  v36 = v9;
  State.wrappedValue.setter();
LABEL_13:
  sub_100003CE8(v40, &qword_100064050, &qword_100049C88);
  sub_100003CE8(&v39, &qword_1000644C0, &qword_100049F48);
  *&v38 = v2;
  *(&v38 + 1) = v3;
  State.wrappedValue.getter();
  v38 = *(v1 + 1);
  State.wrappedValue.setter();
  v38 = *(v1 + 4);
  v36 = 0.0;
  sub_100003968(&qword_1000630B8, &qword_100048720);
  State.wrappedValue.setter();
  if (qword_100062790 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v17 = static AXLTCaptionsProvider.shared;
    v18 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v36 = v2;
    v37 = v3;
    v35 = v19;

    State.wrappedValue.setter();
    sub_100003CE8(v40, &qword_100064050, &qword_100049C88);
    sub_100003CE8(&v39, &qword_1000644C0, &qword_100049F48);
    v36 = v2;
    v37 = v3;
    State.wrappedValue.getter();
    v20 = *(v35 + 16);
    if (!v20)
    {
      break;
    }

    v31 = *(v35 + 16);
    sub_100044B1C(0, v20, 0);
    v21 = 0;
    v32 = *(v35 + 16);
    while (v32 != v21)
    {
      if (v21 >= *(v35 + 16))
      {
        goto LABEL_26;
      }

      v22 = *(v35 + 8 * v21 + 32);
      v23 = v2;
      v36 = v2;
      v37 = v3;
      State.wrappedValue.getter();
      v24 = *(v34 + 16);

      v25 = sin(v21 / v24 * 3.14159265);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v26 = v36;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v27 = v25 * (v26 - v36);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v22 * (v27 + v36) > 0.1)
      {
        v28 = v22 * (v27 + v36);
      }

      else
      {
        v28 = 0.1;
      }

      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_100044B1C((v29 > 1), v30 + 1, 1);
      }

      ++v21;
      _swiftEmptyArrayStorage[2] = v30 + 1;
      *&_swiftEmptyArrayStorage[v30 + 4] = v28;
      v2 = v23;
      if (v31 == v21)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  v36 = v2;
  v37 = v3;
  State.wrappedValue.setter();
  sub_100003CE8(v40, &qword_100064050, &qword_100049C88);
  return sub_100003CE8(&v39, &qword_1000644C0, &qword_100049F48);
}

uint64_t sub_1000434DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorRenderingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = *(v2 + 48);
  v9[3] = *(v2 + 32);
  v9[4] = v10;
  v9[5] = *(v2 + 64);
  v11 = *(v2 + 16);
  v9[1] = *v2;
  v9[2] = v11;
  (*(v5 + 104))(v8, enum case for ColorRenderingMode.nonLinear(_:), v4);
  sub_100044D98(v2, v22);
  Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
  v12 = *(v2 + 8);
  sub_100041FB0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (a1 + *(sub_100003968(&qword_1000644A0, &qword_100049F20) + 36));
  v14 = v24;
  *v13 = v23;
  v13[1] = v14;
  v13[2] = v25;
  if (qword_1000627A0 != -1)
  {
    swift_once();
  }

  v15 = qword_100063FC0;
  v16 = swift_allocObject();
  v17 = *(v2 + 48);
  *(v16 + 3) = *(v2 + 32);
  *(v16 + 4) = v17;
  *(v16 + 5) = *(v2 + 64);
  v18 = *(v2 + 16);
  *(v16 + 1) = *v2;
  *(v16 + 2) = v18;
  v19 = sub_100003968(&qword_1000644A8, &qword_100049F28);
  *(a1 + *(v19 + 52)) = v15;
  v20 = (a1 + *(v19 + 56));
  *v20 = sub_100045230;
  v20[1] = v16;
  sub_100044D98(v2, v22);
}

uint64_t sub_100043778(CGContext *a1, uint64_t a2)
{
  v18 = a1;
  v19 = type metadata accessor for CGPathFillRule();
  v17 = *(v19 - 8);
  v3 = *(v17 + 64);
  __chkstk_darwin(v19);
  v16 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Mutable = CGPathCreateMutable();
  v22 = *(a2 + 48);
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  State.wrappedValue.getter();
  v7 = *(v21 + 16);

  if (v7)
  {
    v8 = 0;
    v22 = 0x3FF0000000000000uLL;
    v23 = 0;
    v24 = 0x3FF0000000000000;
    v25 = 0;
    v26 = 0;
    while (1)
    {
      v21 = *(a2 + 48);
      State.wrappedValue.getter();
      result = v20;
      if (v8 >= *(v20 + 16))
      {
        break;
      }

      v10 = *(v20 + 8 * v8 + 32);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      CGMutablePathRef.addRoundedRect(in:cornerWidth:cornerHeight:transform:)();
      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v18;
    CGContextAddPath(v18, Mutable);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    GenericGray = Color.cgColor.getter();

    if (!GenericGray)
    {
      GenericGray = CGColorCreateGenericGray(1.0, 1.0);
    }

    CGContextSetFillColorWithColor(v11, GenericGray);

    CGContextSetLineWidth(v11, 0.0);
    v14 = v16;
    v13 = v17;
    v15 = v19;
    (*(v17 + 104))(v16, enum case for CGPathFillRule.winding(_:), v19);
    CGContextRef.fillPath(using:)();

    return (*(v13 + 8))(v14, v15);
  }

  return result;
}

uint64_t sub_100043B24(uint64_t a1, uint64_t a2)
{
  v10 = *(a2 + 64);
  *v8 = *(a2 + 64);
  v11 = *(&v10 + 1);
  sub_100006098(&v11, &v7, &qword_1000644B0, &unk_100049F30);
  sub_100003968(&qword_1000630B8, &qword_100048720);
  result = State.wrappedValue.getter();
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v10;
  State.wrappedValue.setter();
  sub_100003CE8(&v10, &qword_1000630B8, &qword_100048720);
  *v8 = v10;
  State.wrappedValue.getter();
  v4 = v7;
  v5 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*&v8[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v8[0] <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8[0] >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v4 >= v8[0])
  {
    sub_100042EAC();
  }

  v6 = sub_100042C80();
  *v8 = *(a2 + 48);
  *&v7 = v6;
  sub_100003968(&qword_1000644B8, &qword_100049F40);
  return State.wrappedValue.setter();
}

uint64_t sub_100043CF0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_1000434DC(a1);
}

uint64_t type metadata accessor for AudioHistogramConfig()
{
  result = qword_1000640B8;
  if (!qword_1000640B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100043DBC()
{
  v0 = type metadata accessor for AudioHistogramConfig();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100042454();
  return v3;
}

uint64_t sub_100043E10(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AudioHistogramConfig();
  v8 = sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig);

  return a4(a1, a2, a3 & 1, v7, v8);
}

__n128 AXLTAudioHistogramView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioHistogramConfig();
  sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig);
  StateObject.wrappedValue.getter();
  sub_100044C40(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_100043F74@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for AudioHistogramConfig();
  sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig);
  StateObject.wrappedValue.getter();
  sub_100044C40(v8);
  v6 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v6;
  *(a1 + 64) = v8[4];
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

double AXLTAudioHistogramViewGenerator.height.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v3;
}

uint64_t AXLTAudioHistogramViewGenerator.height.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AXLTAudioHistogramViewGenerator.height.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_100044308;
}

uint64_t sub_100044308(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[3]);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  return static Published.subscript.setter();
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v3;
}

uint64_t AXLTAudioHistogramViewGenerator.histogram.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*AXLTAudioHistogramViewGenerator.histogram.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_1000446A0;
}

uint64_t sub_1000446A0(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1[2] + a1[3]);
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  if (a2)
  {

    static Published.subscript.setter();
    v6 = *a1;
  }

  else
  {

    return static Published.subscript.setter();
  }
}

id AXLTAudioHistogramViewGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXLTAudioHistogramViewGenerator.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_config;
  v3 = type metadata accessor for AudioHistogramConfig();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_100042454();
  *&v1[v2] = v6;

  sub_100044C40(v12);
  v7 = &v1[OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView];
  v8 = v12[3];
  *(v7 + 2) = v12[2];
  *(v7 + 3) = v8;
  *(v7 + 4) = v12[4];
  v9 = v12[1];
  *v7 = v12[0];
  *(v7 + 1) = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v11, "init");
}

UIViewController __swiftcall AXLTAudioHistogramViewGenerator.viewController()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v2 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v9 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 32);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 48);
  v11 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v4 = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView);
  v8[1] = v4;
  v7[7] = v9;
  v7[8] = v3;
  v7[9] = *(v0 + OBJC_IVAR____TtC19LiveTranscriptionUI31AXLTAudioHistogramViewGenerator_audioHistogramView + 64);
  v7[5] = v8[0];
  v7[6] = v1;
  v5 = objc_allocWithZone(sub_100003968(&qword_100064088, &qword_100049CE8));
  sub_100044D98(v8, v7);
  return UIHostingController.init(rootView:)();
}

id AXLTAudioHistogramViewGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTAudioHistogramViewGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100044B1C(char *a1, int64_t a2, char a3)
{
  result = sub_100044B3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100044B3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003968(&qword_1000629D8, &unk_100047EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100044C40@<X0>(uint64_t *a1@<X8>)
{
  sub_100003968(&qword_100064050, &qword_100049C88);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for AudioHistogramConfig();
  sub_100045284(&qword_100064070, type metadata accessor for AudioHistogramConfig);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v4;
  a1[9] = v5;
  return result;
}

void sub_100044DF4()
{
  sub_100044F78(319, &qword_1000640C8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_100044F78(319, &qword_100063A58);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_100044F78(319, &qword_1000640D0);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_100044FC4();
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100044F78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100044FC4()
{
  if (!qword_1000640D8)
  {
    sub_100003AC0(&qword_100064050, &qword_100049C88);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000640D8);
    }
  }
}

__n128 sub_100045034(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100045048(uint64_t a1, unsigned int a2)
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

uint64_t sub_100045090(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000450E8()
{
  result = qword_100064498;
  if (!qword_100064498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064498);
  }

  return result;
}

uint64_t sub_1000451C0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_100045238()
{
  result = qword_1000644C8;
  if (!qword_1000644C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000644C8);
  }

  return result;
}

uint64_t sub_100045284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000452CC(CGContext *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_100043778(a1, v1[4]);
}

unint64_t sub_1000452F0()
{
  result = qword_1000644D8;
  if (!qword_1000644D8)
  {
    sub_100003AC0(&qword_1000644A8, &qword_100049F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000644D8);
  }

  return result;
}

void sub_100045398()
{
  dlerror();
  v0 = abort_report_np();
  sub_1000453BC(v0);
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

CGSize CGSizeFromString(NSString *string)
{
  v3 = _CGSizeFromString(string);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}