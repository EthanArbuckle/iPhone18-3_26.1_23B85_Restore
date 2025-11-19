double sub_10002C788@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v7 = *a1;
    v8 = *(a2 + 40);
    v9 = *(a3 + 16);
    v34 = *(a2 + 32);

    v33 = v8;

    if (v9 && (v10 = sub_1001921F0(v7), (v11 & 1) != 0))
    {
      v12 = (*(a3 + 56) + 16 * v10);
      v13 = *v12;
      v31 = v12[1];

      v32 = v13;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v14 = *(a2 + 56);
    v30 = *(a2 + 48);
    v15 = *(a2 + 80);
    v46 = *(a2 + 64);
    v47 = v15;
    *&v48 = *(a2 + 96);

    sub_1000040A8(&qword_100356698);
    FocusState.projectedValue.getter();
    v29 = *v35;
    v17 = *&v35[16];
    v16 = *&v35[24];
    type metadata accessor for AppEvents();
    sub_100031E6C(&qword_100354D48, type metadata accessor for AppEvents);

    v18 = EnvironmentObject.init()();
    v20 = v19;
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics);
    v21 = EnvironmentObject.init()();
    v23 = v22;
    sub_1000040A8(&qword_1003566A0);
    State.init(wrappedValue:)();
    *v35 = v18;
    *&v35[8] = v20;
    *&v35[16] = v21;
    *&v35[24] = v23;
    *&v35[32] = v34;
    *&v35[40] = v33;
    *&v35[48] = v7;
    *&v35[56] = v32;
    *&v35[64] = v31;
    *&v35[72] = v30;
    *&v35[88] = v29;
    *&v35[80] = v14;
    *&v35[104] = v17;
    *&v35[112] = v16;
    *&v35[120] = v46;
    v36 = v47;
    sub_10003150C(v35);
  }

  else
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v38 = 1;
    *&v37[55] = v42;
    *&v37[71] = v43;
    *&v37[87] = v44;
    *&v37[103] = v45;
    *&v37[7] = v39;
    *&v37[23] = v40;
    *&v37[39] = v41;
    *v35 = 0;
    v35[8] = 1;
    *&v35[57] = *&v37[48];
    *&v35[41] = *&v37[32];
    *&v35[25] = *&v37[16];
    *&v35[9] = *v37;
    *&v35[120] = *(&v45 + 1);
    *&v35[105] = *&v37[96];
    *&v35[89] = *&v37[80];
    *&v35[73] = *&v37[64];
    sub_10002CF18(v35);
  }

  sub_1000040A8(&qword_100356680);
  sub_10002CDC8();
  sub_10002CE1C();
  _ConditionalContent<>.init(storage:)();
  v24 = v53;
  *(a4 + 96) = v52;
  *(a4 + 112) = v24;
  *(a4 + 128) = v54;
  *(a4 + 144) = v55;
  v25 = v49;
  *(a4 + 32) = v48;
  *(a4 + 48) = v25;
  v26 = v51;
  *(a4 + 64) = v50;
  *(a4 + 80) = v26;
  result = *&v46;
  v28 = v47;
  *a4 = v46;
  *(a4 + 16) = v28;
  return result;
}

uint64_t sub_10002CB18(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 144);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:
      sub_1000040A8(&qword_100356698);
      return FocusState.wrappedValue.setter();
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CC58()
{

  sub_100008964(v0 + 128);

  return _swift_deallocObject(v0, 168, 7);
}

unint64_t sub_10002CCE8()
{
  result = qword_100356660;
  if (!qword_100356660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356660);
  }

  return result;
}

unint64_t sub_10002CD3C()
{
  result = qword_100356668;
  if (!qword_100356668)
  {
    sub_100008CF0(&qword_100356650);
    sub_10002CDC8();
    sub_10002CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356668);
  }

  return result;
}

unint64_t sub_10002CDC8()
{
  result = qword_100356670;
  if (!qword_100356670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356670);
  }

  return result;
}

unint64_t sub_10002CE1C()
{
  result = qword_100356678;
  if (!qword_100356678)
  {
    sub_100008CF0(&qword_100356680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356678);
  }

  return result;
}

uint64_t sub_10002CEA0()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10002CF24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v16, v5, v6);
    v7 = static HorizontalAlignment.center.getter();
    v13 = 0;
    sub_10002D0A4(v2, v16, __src);
    memcpy(__dst, __src, 0x249uLL);
    memcpy(v15, __src, 0x249uLL);
    sub_100006C20(__dst, &v10, &qword_1003566C8);
    sub_100008FA0(v15, &qword_1003566C8);
    memcpy(&v12[7], __dst, 0x249uLL);
    v8 = v13;
    *a1 = v7;
    *(a1 + 8) = 0x4020000000000000;
    *(a1 + 16) = v8;
    memcpy((a1 + 17), v12, 0x250uLL);
    return sub_100008964(v16);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002D0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v94 = a2;
  v97 = a3;
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v111 = *(a1 + 48);
  v9 = *(v111 + 32);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v95 = v6;
  v92 = v8;
  v93 = v5;
  if (v12)
  {
    *v166 = v10;
    *&v166[8] = v11;
    sub_100031770();

    v13 = Text.init<A>(_:)();
    v108 = v14;
    v109 = v13;
    v16 = v15;
    v107 = v17;
    static Font.headline.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    (*(v5 + 104))(v8, enum case for Font.Leading.tight(_:), v4);
    Font.leading(_:)();

    (*(v5 + 8))(v8, v4);
    v19 = v108;
    v18 = v109;
    v112 = Text.font(_:)();
    v113 = v20;
    v110 = v21;
    v23 = v22;

    sub_1000317C4(v18, v19, v16 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v173[55] = v188;
    *&v173[71] = v189;
    *&v173[87] = v190;
    *&v173[103] = v191;
    *&v173[7] = v185;
    *&v173[23] = v186;
    v165[0] = v23 & 1;
    *&v173[39] = v187;
    v25 = swift_getKeyPath();
    *&v166[105] = *&v173[64];
    *&v166[121] = *&v173[80];
    *&v166[137] = *&v173[96];
    *&v166[41] = *v173;
    *&v166[57] = *&v173[16];
    *&v166[73] = *&v173[32];
    *v166 = v112;
    *&v166[8] = v110;
    v166[16] = v23 & 1;
    *&v166[24] = v113;
    *&v166[32] = KeyPath;
    v166[40] = 0;
    *&v166[89] = *&v173[48];
    *&v166[152] = *&v173[111];
    *&v166[160] = v25;
    *&v166[168] = 0x3FE0000000000000;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v166);
    v181 = *&v166[112];
    v182 = *&v166[128];
    v183 = *&v166[144];
    v184 = *&v166[160];
    v178 = *&v166[64];
    v179 = *&v166[80];
    v180 = *&v166[96];
    v174 = *v166;
    v175 = *&v166[16];
    v176 = *&v166[32];
    v177 = *&v166[48];
  }

  else
  {
    sub_100031DE4(&v174);
  }

  v26 = *(a1 + 40);
  *v165 = *(a1 + 120);
  *&v165[16] = *(a1 + 136);
  sub_1000040A8(&qword_1003566D8);
  State.projectedValue.getter();
  v27 = *v166;
  v28 = *&v166[8];
  v30 = *&v166[16];
  v29 = *&v166[24];
  v31 = swift_allocObject();
  v32 = *(a1 + 48);
  v31[3] = *(a1 + 32);
  v31[4] = v32;
  v33 = *(a1 + 128);
  v31[8] = *(a1 + 112);
  v31[9] = v33;
  v34 = *(a1 + 96);
  v31[6] = *(a1 + 80);
  v31[7] = v34;
  v31[5] = *(a1 + 64);
  v35 = *(a1 + 16);
  v31[1] = *a1;
  v31[2] = v35;
  if (*(v26 + 32) == 2 && *(v111 + 40) == 1)
  {
    type metadata accessor for MainActor();
    v112 = v27;
    sub_1000317F0(a1, v166);
    sub_1000317F0(a1, v166);

    v36 = v111;

    v37 = static MainActor.shared.getter();
    v38 = swift_allocObject();
    v110 = v29;
    v113 = v30;
    *(v38 + 16) = v37;
    *(v38 + 24) = &protocol witness table for MainActor;
    v39 = *(a1 + 112);
    *(v38 + 128) = *(a1 + 96);
    *(v38 + 144) = v39;
    *(v38 + 160) = *(a1 + 128);
    v40 = *(a1 + 48);
    *(v38 + 64) = *(a1 + 32);
    *(v38 + 80) = v40;
    v41 = *(a1 + 80);
    *(v38 + 96) = *(a1 + 64);
    *(v38 + 112) = v41;
    v42 = *(a1 + 16);
    *(v38 + 32) = *a1;
    *(v38 + 48) = v42;
    *(v38 + 176) = v26;
    *(v38 + 184) = v36;
    sub_1000317F0(a1, v166);

    v43 = v112;

    v44 = static MainActor.shared.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = &protocol witness table for MainActor;
    v46 = *(a1 + 112);
    *(v45 + 128) = *(a1 + 96);
    *(v45 + 144) = v46;
    *(v45 + 160) = *(a1 + 128);
    v47 = *(a1 + 48);
    *(v45 + 64) = *(a1 + 32);
    *(v45 + 80) = v47;
    v48 = *(a1 + 80);
    *(v45 + 96) = *(a1 + 64);
    *(v45 + 112) = v48;
    v49 = *(a1 + 16);
    *(v45 + 32) = *a1;
    *(v45 + 48) = v49;
    *(v45 + 176) = v26;
    *(v45 + 184) = v43;
    v50 = v113;
    *(v45 + 192) = v28;
    *(v45 + 200) = v50;
    *(v45 + 208) = v110;
    *(v45 + 216) = sub_1000317E8;
    *(v45 + 224) = v31;
    *(v45 + 232) = v36;
    Binding.init(get:set:)();

    v51 = *&v166[8];
    v110 = *v166;
    v113 = *&v166[16];
    v52 = *&v166[24];
  }

  else
  {
    *v165 = 0;
    *&v165[8] = 0xE000000000000000;
    sub_1000317F0(a1, v166);
    static Binding.constant(_:)();

    v51 = *&v166[8];
    v110 = *v166;
    v52 = *&v166[24];
    v113 = *&v166[16];
  }

  v53 = swift_allocObject();
  v54 = *(a1 + 48);
  v53[3] = *(a1 + 32);
  v53[4] = v54;
  v55 = *(a1 + 128);
  v53[8] = *(a1 + 112);
  v53[9] = v55;
  v56 = *(a1 + 96);
  v53[6] = *(a1 + 80);
  v53[7] = v56;
  v53[5] = *(a1 + 64);
  v57 = *(a1 + 16);
  v53[1] = *a1;
  v53[2] = v57;
  v58 = *(v111 + 24);
  v109 = *(v111 + 16);
  v60 = *(a1 + 88);
  v59 = *(a1 + 96);
  v61 = *(a1 + 112);
  v105 = *(a1 + 104);
  v112 = v61;
  sub_1000317F0(a1, v166);
  v104 = type metadata accessor for UIMetrics();
  v103 = sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics);
  v62 = v110;

  v108 = v58;

  v107 = v60;

  v106 = v59;

  v96 = v53;

  v100 = EnvironmentObject.init()();
  v104 = v63;
  *v165 = 0;
  *&v165[8] = 0xE000000000000000;
  State.init(wrappedValue:)();
  v102 = *&v166[8];
  v103 = *v166;
  v101 = *&v166[16];
  v169 = v62;
  v170 = v51;
  v171 = v113;
  v172 = v52;
  v98 = v52;
  sub_1000040A8(&qword_1003566E0);
  Binding.wrappedValue.getter();
  v64 = v167;
  v65 = v168;
  v99 = v51;
  if ((v168 & 0x1000000000000000) != 0)
  {
    v66 = String.UTF8View._foreignCount()();
  }

  else
  {

    if ((v65 & 0x2000000000000000) != 0)
    {
      v66 = HIBYTE(v65) & 0xF;
    }

    else
    {
      v66 = v64 & 0xFFFFFFFFFFFFLL;
    }
  }

  v67 = *(v111 + 48);
  v68 = v95;
  if (v66 >= v67)
  {
    v71 = static VerticalAlignment.center.getter();
    v148[0] = 0;
    sub_10002ED60(v166);
    v162 = *&v166[192];
    v163 = *&v166[208];
    v158 = *&v166[128];
    v159 = *&v166[144];
    v160 = *&v166[160];
    v161 = *&v166[176];
    v154 = *&v166[64];
    v155 = *&v166[80];
    v156 = *&v166[96];
    v157 = *&v166[112];
    v150 = *v166;
    v151 = *&v166[16];
    v152 = *&v166[32];
    v153 = *&v166[48];
    v116[12] = *&v166[192];
    v116[13] = *&v166[208];
    v116[8] = *&v166[128];
    v116[9] = *&v166[144];
    v116[10] = *&v166[160];
    v116[11] = *&v166[176];
    v116[4] = *&v166[64];
    v116[5] = *&v166[80];
    v116[6] = *&v166[96];
    v116[7] = *&v166[112];
    v116[0] = *v166;
    v116[1] = *&v166[16];
    v164 = *&v166[224];
    *&v116[14] = *&v166[224];
    v116[2] = *&v166[32];
    v116[3] = *&v166[48];
    sub_100006C20(&v150, v165, &qword_1003566E8);
    sub_100008FA0(v116, &qword_1003566E8);
    *(&v149[11] + 7) = v161;
    *(&v149[12] + 7) = v162;
    *(&v149[13] + 7) = v163;
    *(&v149[14] + 7) = v164;
    *(&v149[7] + 7) = v157;
    *(&v149[8] + 7) = v158;
    *(&v149[9] + 7) = v159;
    *(&v149[10] + 7) = v160;
    *(&v149[3] + 7) = v153;
    *(&v149[4] + 7) = v154;
    *(&v149[5] + 7) = v155;
    *(&v149[6] + 7) = v156;
    *(v149 + 7) = v150;
    *(&v149[1] + 7) = v151;
    *(&v149[2] + 7) = v152;
    *&v165[193] = v149[11];
    *&v165[209] = v149[12];
    *&v165[225] = v149[13];
    *&v165[240] = *(&v149[13] + 15);
    *&v165[129] = v149[7];
    *&v165[145] = v149[8];
    *&v165[161] = v149[9];
    *&v165[177] = v149[10];
    *&v165[65] = v149[3];
    *&v165[81] = v149[4];
    *&v165[97] = v149[5];
    *&v165[113] = v149[6];
    *&v165[17] = v149[0];
    *&v165[33] = v149[1];
    *v165 = v71;
    *&v165[8] = 0x4010000000000000;
    v165[16] = v148[0];
    *&v165[49] = v149[2];
    sub_100031830(v165);
    memcpy(v148, v165, 0x101uLL);
    sub_1000040A8(&qword_1003566F0);
    sub_1000040A8(&qword_1003566F8);
    sub_100009274(&qword_100356700, &qword_1003566F0);
    sub_100031838();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *&v150 = v110;
    *(&v150 + 1) = v99;
    *&v151 = v113;
    *(&v151 + 1) = v98;
    Binding.wrappedValue.getter();
    v69 = v128[0];
    if ((*(&v128[0] + 1) & 0x1000000000000000) != 0)
    {
      v70 = String.UTF8View._foreignCount()();
    }

    else
    {

      if ((*(&v69 + 1) & 0x2000000000000000) != 0)
      {
        v70 = HIBYTE(*(&v69 + 1)) & 0xFLL;
      }

      else
      {
        v70 = v69 & 0xFFFFFFFFFFFFLL;
      }
    }

    if (v70 / v67 >= 0.8)
    {
      LocalizedStringKey.init(stringLiteral:)();
      *&v111 = Text.init(_:tableName:bundle:comment:)();
      v94 = v72;
      v74 = v73;
      v91 = v75;
      v76 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v114[55] = v195;
      *&v114[71] = v196;
      *&v114[87] = v197;
      *&v114[103] = v198;
      *&v114[7] = v192;
      *&v114[23] = v193;
      v77 = v74 & 1;
      v165[0] = v74 & 1;
      *&v114[39] = v194;
      static Font.subheadline.getter();
      static Font.Weight.semibold.getter();
      Font.weight(_:)();

      v79 = v92;
      v78 = v93;
      (*(v93 + 104))(v92, enum case for Font.Leading.tight(_:), v68);
      v80 = v68;
      v81 = Font.leading(_:)();

      (*(v78 + 8))(v79, v80);
      v82 = swift_getKeyPath();
      v83 = [objc_opt_self() secondaryLabelColor];
      v84 = Color.init(uiColor:)();
      v85 = swift_getKeyPath();
      *&v166[105] = *&v114[64];
      *&v166[121] = *&v114[80];
      *&v166[137] = *&v114[96];
      *&v166[41] = *v114;
      *&v166[57] = *&v114[16];
      *&v166[73] = *&v114[32];
      *v166 = v111;
      *&v166[8] = v94;
      v166[16] = v77;
      *&v166[24] = v91;
      *&v166[32] = v76;
      v166[40] = 0;
      *&v166[89] = *&v114[48];
      *&v166[152] = *&v114[111];
      *&v166[160] = v82;
      *&v166[168] = v81;
      *&v166[176] = v85;
      *&v166[184] = v84;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v166);
      v116[8] = *&v166[128];
      v116[9] = *&v166[144];
      v116[10] = *&v166[160];
      v116[11] = *&v166[176];
      v116[4] = *&v166[64];
      v116[5] = *&v166[80];
      v116[6] = *&v166[96];
      v116[7] = *&v166[112];
      v116[0] = *v166;
      v116[1] = *&v166[16];
      v116[2] = *&v166[32];
      v116[3] = *&v166[48];
    }

    else
    {
      sub_100031BD8(v116);
    }

    *&v165[128] = v116[8];
    *&v165[144] = v116[9];
    *&v165[160] = v116[10];
    *&v165[176] = v116[11];
    *&v165[64] = v116[4];
    *&v165[80] = v116[5];
    *&v165[96] = v116[6];
    *&v165[112] = v116[7];
    *v165 = v116[0];
    *&v165[16] = v116[1];
    *&v165[32] = v116[2];
    *&v165[48] = v116[3];
    sub_100031BF8(v165);
    memcpy(v148, v165, 0x101uLL);
    sub_1000040A8(&qword_1003566F0);
    sub_1000040A8(&qword_1003566F8);
    sub_100009274(&qword_100356700, &qword_1003566F0);
    sub_100031838();
    _ConditionalContent<>.init(storage:)();
  }

  v125 = v182;
  v126 = v183;
  v127 = v184;
  v121 = v178;
  v122 = v179;
  v123 = v180;
  v124 = v181;
  v117 = v174;
  v118 = v175;
  v119 = v176;
  v120 = v177;
  memcpy(v116, v166, 0x101uLL);
  v128[7] = v181;
  v128[8] = v182;
  v128[9] = v183;
  v128[10] = v184;
  v128[3] = v177;
  v128[4] = v178;
  v128[5] = v179;
  v128[6] = v180;
  v128[0] = v174;
  v128[1] = v175;
  v128[2] = v176;
  v115[7] = v181;
  v115[8] = v182;
  v115[9] = v183;
  v115[10] = v184;
  v115[3] = v177;
  v115[4] = v178;
  v115[5] = v179;
  v115[6] = v180;
  v115[0] = v174;
  v115[1] = v175;
  v115[2] = v176;
  v86 = v99;
  *&v129 = v100;
  *(&v129 + 1) = v104;
  v87 = v110;
  *&v130 = v110;
  *(&v130 + 1) = v99;
  *&v131 = v113;
  v88 = v98;
  *(&v131 + 1) = v98;
  *&v132 = v103;
  *(&v132 + 1) = v102;
  *&v133[0] = v101;
  v111 = xmmword_1002799C0;
  *(v133 + 8) = xmmword_1002799C0;
  *(&v133[1] + 1) = v109;
  *&v134 = v108;
  *(&v134 + 1) = v107;
  *&v135 = v106;
  *(&v135 + 1) = v105;
  *&v136 = v112;
  v95 = sub_100031828;
  v89 = v96;
  *(&v136 + 1) = sub_100031828;
  v137 = v96;
  *&v115[20] = v96;
  v115[15] = v133[0];
  v115[16] = v133[1];
  v115[13] = v131;
  v115[14] = v132;
  v115[18] = v135;
  v115[19] = v136;
  v115[17] = v134;
  v115[11] = v129;
  v115[12] = v130;
  memcpy(v148, v166, 0x101uLL);
  sub_100006C20(v128, v165, &qword_100356760);
  sub_100031B70(&v129, v165);
  sub_100006C20(v148, v165, &qword_100356768);

  memcpy(&v115[20] + 8, v148, 0x101uLL);
  memcpy(v97, v115, 0x249uLL);
  memcpy(v165, v116, sizeof(v165));
  sub_100008FA0(v165, &qword_100356768);
  v138[0] = v100;
  v138[1] = v104;
  v138[2] = v87;
  v138[3] = v86;
  v138[4] = v113;
  v138[5] = v88;
  v138[6] = v103;
  v138[7] = v102;
  v138[8] = v101;
  v139 = v111;
  v140 = v109;
  v141 = v108;
  v142 = v107;
  v143 = v106;
  v144 = v105;
  v145 = v112;
  v146 = v95;
  v147 = v89;
  sub_100031BA8(v138);
  v158 = v125;
  v159 = v126;
  v160 = v127;
  v154 = v121;
  v155 = v122;
  v156 = v123;
  v157 = v124;
  v150 = v117;
  v151 = v118;
  v152 = v119;
  v153 = v120;
  return sub_100008FA0(&v150, &qword_100356760);
}

void sub_10002E17C(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = *(v2 + 136);
  if (v3 && ((v4 = *(a1 + 40), *(v3 + 16) == *(v4 + 16)) ? (v5 = *(v3 + 24) == *(v4 + 24)) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    sub_10002E324();
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381E48);
    sub_1000317F0(a1, v14);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100031E04(a1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v11 = sub_1000B9A7C();
      v13 = sub_10017C9E8(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] FreeFormContentView: return tapped in the free form text when it is not a current question anymore", v9, 0xCu);
      sub_100008964(v10);
    }
  }
}

void sub_10002E324()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 104);
    v11[0] = *(v0 + 88);
    v11[1] = v1;

    sub_1000040A8(&qword_100356778);
    FocusState.Binding.wrappedValue.setter();
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (sub_1000BB344(v2, v3, 0))
    {
      (*(v0 + 72))();
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000F53C(v4, qword_100381E48);
      sub_1000317F0(v0, v11);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      sub_100031E04(v0);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *&v11[0] = swift_slowAlloc();
        *v7 = 136446723;
        v8 = sub_1000B9A7C();
        v10 = sub_10017C9E8(v8, v9, v11);

        *(v7 + 4) = v10;
        *(v7 + 12) = 2081;
        *(v7 + 14) = sub_10017C9E8(*(v3 + 16), *(v3 + 24), v11);
        *(v7 + 22) = 2081;
        *(v7 + 24) = sub_10017C9E8(*(v2 + 16), *(v2 + 24), v11);
        _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] QuestionnaireBodyView: failed to record %{private}s answer for %{private}s", v7, 0x20u);
        swift_arrayDestroy();
      }
    }
  }
}

uint64_t sub_10002E538(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v64 = a3;
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  aBlock = 0;
  v70 = 0xE000000000000000;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v65 = a1;
  v66 = a2;
  v67 = 0;
  v68 = v8;

  v9 = String.Iterator.next()();
  object = v9.value._object;
  if (v9.value._object)
  {
    countAndFlagsBits = v9.value._countAndFlagsBits;
    do
    {
      v13 = String._bridgeToObjectiveC()();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (!IsSingleEmoji)
      {
        v15._countAndFlagsBits = countAndFlagsBits;
        v15._object = object;
        String.append(_:)(v15);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
    object = aBlock;
    v7 = v70;
  }

  v65 = object;
  v66 = v7;
  v16 = String.init<A>(_:)();
  v18 = v17;

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  v62 = String.hasSuffix(_:)(v19);
  sub_100031770();

  v65 = v16;
  v66 = v18;
  aBlock = 2570;
  v70 = 0xE200000000000000;
  v20 = StringProtocol.contains<A>(_:)();

  v63 = v18;
  if (v20)
  {
    do
    {
      v65 = v16;
      v66 = v18;
      aBlock = 2570;
      v70 = 0xE200000000000000;
      v75 = 10;
      v76 = 0xE100000000000000;
      v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v22 = v21;

      v65 = v16;
      v66 = v22;
      aBlock = 2570;
      v70 = 0xE200000000000000;
      v23 = StringProtocol.contains<A>(_:)();

      v18 = v22;
    }

    while ((v23 & 1) != 0);
  }

  else
  {
    v22 = v18;
  }

  v65 = v16;
  v66 = v22;
  aBlock = 8202;
  v70 = 0xE200000000000000;
  v75 = 32;
  v76 = 0xE100000000000000;
  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v26 = v25;

  v65 = v24;
  v66 = v26;
  aBlock = 2592;
  v70 = 0xE200000000000000;
  v75 = 32;
  v76 = 0xE100000000000000;
  v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v29 = v28;

  v65 = v27;
  v66 = v29;
  aBlock = 10;
  v70 = 0xE100000000000000;
  v75 = 32;
  v76 = 0xE100000000000000;
  v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v32 = v31;

  if (v62)
  {
    v65 = v30;
    v66 = v32;

    v33._countAndFlagsBits = 10;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);

    v34 = v65;
    v35 = v66;
  }

  else
  {

    v35 = v32;
    v34 = v30;
  }

  v36 = v64;
  v75 = v34;
  v76 = v35;
  if ((v35 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((v35 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

LABEL_20:
  v38 = *(*(v36 + 48) + 48);
  if (v38 < v37)
  {
    sub_10000F574();
    v39 = static OS_dispatch_queue.main.getter();
    v40 = swift_allocObject();
    v41 = *(v36 + 112);
    v40[7] = *(v36 + 96);
    v40[8] = v41;
    v40[9] = *(v36 + 128);
    v42 = *(v36 + 48);
    v40[3] = *(v36 + 32);
    v40[4] = v42;
    v43 = *(v36 + 80);
    v40[5] = *(v36 + 64);
    v40[6] = v43;
    v44 = *(v36 + 16);
    v40[1] = *v36;
    v40[2] = v44;
    v73 = sub_100032860;
    v74 = v40;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_1001D2438;
    v72 = &unk_100327578;
    v45 = _Block_copy(&aBlock);
    sub_1000317F0(v36, &v65);

    v46 = v56;
    static DispatchQoS.unspecified.getter();
    v65 = _swiftEmptyArrayStorage;
    v36 = sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v47 = v58;
    v48 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v60 + 8))(v47, v48);
    (*(v57 + 8))(v46, v59);
    while (1)
    {
      v34 = v75;
      v49 = v76;
      v50 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x1000000000000000) != 0)
      {
        v36 = v75;
        v52 = v76;
        v53 = String.UTF8View._foreignCount()();
        v34 = v36;
        v49 = v52;
        if (v38 >= v53)
        {
          return v34;
        }
      }

      else
      {
        if ((v76 & 0x2000000000000000) != 0)
        {
          v51 = HIBYTE(v76) & 0xF;
        }

        else
        {
          v51 = v75 & 0xFFFFFFFFFFFFLL;
        }

        if (v38 >= v51)
        {
          return v34;
        }
      }

      if ((v49 & 0x2000000000000000) != 0)
      {
        if (!v50)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v55 = v34;
          v37 = String.UTF8View._foreignCount()();
          v34 = v55;
          goto LABEL_20;
        }
      }

      else if ((v34 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_35;
      }

      String.index(before:)();
      String.remove(at:)();
    }
  }

  return v34;
}

uint64_t sub_10002ED60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = Image.init(systemName:)();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v47 = enum case for Font.Leading.tight(_:);
  v6 = *(v3 + 104);
  v45 = v2;
  v46 = v6;
  v6(v5);
  v51 = Font.leading(_:)();

  v7 = *(v3 + 8);
  v7(v5, v2);
  KeyPath = swift_getKeyPath();
  v49 = static Color.red.getter();
  v48 = swift_getKeyPath();
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v42 = v9;
  v43 = v8;
  LOBYTE(v2) = v10;
  v44 = v11;
  v41 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v76[55] = v82;
  *&v76[71] = v83;
  *&v76[87] = v84;
  *&v76[103] = v85;
  *&v76[7] = v79;
  *&v76[23] = v80;
  v12 = v2 & 1;
  v78 = v2 & 1;
  *&v76[39] = v81;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v13 = v45;
  v46(v5, v47, v45);
  v14 = Font.leading(_:)();

  v7(v5, v13);
  v15 = swift_getKeyPath();
  v16 = static Color.red.getter();
  v17 = swift_getKeyPath();
  v19 = v42;
  v18 = v43;
  *&v54 = v43;
  *(&v54 + 1) = v42;
  LOBYTE(v55) = v12;
  *(&v55 + 1) = *v77;
  DWORD1(v55) = *&v77[3];
  v20 = v44;
  v21 = v41;
  *(&v55 + 1) = v44;
  *&v56[0] = v41;
  BYTE8(v56[0]) = 0;
  v22 = *&v76[48];
  *(&v56[4] + 9) = *&v76[64];
  v23 = *&v76[64];
  *(&v56[5] + 9) = *&v76[80];
  v24 = *&v76[80];
  *(&v56[6] + 9) = *&v76[96];
  *(v56 + 9) = *v76;
  v25 = *v76;
  v26 = *&v76[16];
  *(&v56[1] + 9) = *&v76[16];
  *(&v56[2] + 9) = *&v76[32];
  v27 = *&v76[32];
  *(&v56[3] + 9) = *&v76[48];
  *(&v56[7] + 1) = *&v76[111];
  *&v57 = v15;
  v28 = v14;
  *(&v57 + 1) = v14;
  *&v58 = v17;
  *(&v58 + 1) = v16;
  v29 = v56[7];
  *(a1 + 168) = v56[6];
  *(a1 + 184) = v29;
  v30 = v56[3];
  *(a1 + 104) = v56[2];
  *(a1 + 120) = v30;
  v31 = v56[5];
  *(a1 + 136) = v56[4];
  *(a1 + 152) = v31;
  v32 = v55;
  *(a1 + 40) = v54;
  *(a1 + 56) = v32;
  v33 = v56[1];
  *(a1 + 72) = v56[0];
  *(a1 + 88) = v33;
  v34 = v58;
  *(a1 + 200) = v57;
  *(a1 + 216) = v34;
  v69 = v23;
  v70 = v24;
  *v71 = *&v76[96];
  v65 = v25;
  v66 = v26;
  v67 = v27;
  v35 = v51;
  v37 = v49;
  v36 = KeyPath;
  *a1 = v52;
  *(a1 + 8) = v36;
  v38 = v48;
  *(a1 + 16) = v35;
  *(a1 + 24) = v38;
  *(a1 + 32) = v37;
  v59[0] = v18;
  v59[1] = v19;
  v60 = v12;
  *v61 = *v77;
  *&v61[3] = *&v77[3];
  v62 = v20;
  v63 = v21;
  v64 = 0;
  v68 = v22;
  *&v71[15] = *&v76[111];
  v72 = v15;
  v73 = v28;
  v74 = v17;
  v75 = v16;

  sub_100006C20(&v54, &v53, &qword_100356718);
  sub_100008FA0(v59, &qword_100356718);
}

void sub_10002F298(uint64_t a1@<X2>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if (*(a2 + 40) == 1 && (v5 = *(a1 + 32), swift_beginAccess(), v6 = *(v5 + 72), *(v6 + 16)) && (v7 = sub_1001921F0(a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v10 = v9[1];
    *a3 = *v9;
    a3[1] = v10;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0xE000000000000000;
  }
}

void sub_10002F328(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t (*a8)(uint64_t a1), void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v145 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = *(a4 + 32);
  swift_beginAccess();
  v146 = v22;
  v23 = *(v22 + 136);
  if (!v23 || ((v24 = *(a5 + 16), v25 = *(a5 + 24), *(v23 + 16) == v24) ? (v26 = *(v23 + 24) == v25) : (v26 = 0), !v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100353A10 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_12;
  }

  v139 = a5;
  v134 = v25;
  v135 = v24;
  v153 = a6;
  v154 = a7;
  v155 = a8;
  v156 = a9;

  sub_1000040A8(&qword_100356770);
  Binding.wrappedValue.getter();
  if (v148)
  {
    if (v20 == aBlock && v148 == v21)
    {

      LODWORD(v136) = 1;
    }

    else
    {
      LODWORD(v136) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LODWORD(v136) = 0;
  }

  v153 = a6;
  v154 = a7;
  v155 = a8;
  v156 = a9;
  aBlock = v20;
  v148 = v21;
  Binding.wrappedValue.setter();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000F53C(v31, qword_100381C80);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v139;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    if ((v21 & 0x1000000000000000) != 0)
    {
      v37 = String.UTF8View._foreignCount()();
    }

    else
    {
      v37 = v20 & 0xFFFFFFFFFFFFLL;
      if ((v21 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v21) & 0xF;
      }
    }

    *(v36 + 4) = v37;

    _os_log_impl(&_mh_execute_header, v32, v33, "Free form text: Text length == %{public}ld", v36, 0xCu);
  }

  else
  {
  }

  v38 = 0xE000000000000000;
  aBlock = 0;
  v148 = 0xE000000000000000;
  v39 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v21) & 0xF;
  }

  v153 = v20;
  v154 = v21;
  v155 = 0;
  v156 = v39;

  v40 = String.Iterator.next()();
  if (v40.value._object)
  {
    countAndFlagsBits = v40.value._countAndFlagsBits;
    object = v40.value._object;
    do
    {
      v44 = String._bridgeToObjectiveC()();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (!IsSingleEmoji)
      {
        v46._countAndFlagsBits = countAndFlagsBits;
        v46._object = object;
        String.append(_:)(v46);
      }

      v43 = String.Iterator.next()();
      countAndFlagsBits = v43.value._countAndFlagsBits;
      object = v43.value._object;
    }

    while (v43.value._object);
    v47 = aBlock;
    v38 = v148;
  }

  else
  {
    v47 = 0;
  }

  v153 = v47;
  v154 = v38;
  v49 = String.init<A>(_:)();
  v50 = v48;
  v159 = v49;
  v160 = v48;
  v138 = v31;
  if (v20 == v49 && v21 == v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v51 = qword_100353AA8;

    if (v51 != -1)
    {
      swift_once();
    }

    sub_10000F53C(v31, qword_100381E48);
    sub_1000317F0(a4, &v153);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    sub_100031E04(a4);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v153 = v55;
      *v54 = 136446210;
      v56 = sub_1000B9A7C();
      v58 = sub_10017C9E8(v56, v57, &v153);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] Free form text: Disallowed character entered", v54, 0xCu);
      sub_100008964(v55);
    }

    sub_10000F574();
    v137 = static OS_dispatch_queue.main.getter();
    v59 = swift_allocObject();
    v60 = *(a4 + 112);
    v59[7] = *(a4 + 96);
    v59[8] = v60;
    v59[9] = *(a4 + 128);
    v61 = *(a4 + 48);
    v59[3] = *(a4 + 32);
    v59[4] = v61;
    v62 = *(a4 + 80);
    v59[5] = *(a4 + 64);
    v59[6] = v62;
    v63 = *(a4 + 16);
    v59[1] = *a4;
    v59[2] = v63;
    v151 = sub_100031E34;
    v152 = v59;
    aBlock = _NSConcreteStackBlock;
    v148 = 1107296256;
    v149 = sub_1001D2438;
    v150 = &unk_100327488;
    v64 = _Block_copy(&aBlock);
    sub_1000317F0(a4, &v153);

    v65 = v140;
    static DispatchQoS.unspecified.getter();
    v153 = _swiftEmptyArrayStorage;
    sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v66 = v142;
    v67 = v145;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v137;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v64);

    (*(v144 + 8))(v66, v67);
    (*(v141 + 8))(v65, v143);
    v35 = v139;
    v31 = v138;
  }

  v69 = 0xE000000000000000;
  aBlock = 0;
  v148 = 0xE000000000000000;
  v70 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v70 = v49 & 0xFFFFFFFFFFFFLL;
  }

  v153 = v49;
  v154 = v50;
  v155 = 0;
  v156 = v70;

  v71 = String.Iterator.next()();
  v72 = v71.value._object;
  if (v71.value._object)
  {
    v73 = v71.value._countAndFlagsBits;
    do
    {
      if ((v73 != 10 || v72 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v75._countAndFlagsBits = v73;
        v75._object = v72;
        String.append(_:)(v75);
      }

      v74 = String.Iterator.next()();
      v73 = v74.value._countAndFlagsBits;
      v72 = v74.value._object;
    }

    while (v74.value._object);
    v72 = aBlock;
    v69 = v148;
  }

  v76 = a12;

  v153 = v72;
  v154 = v69;
  v77 = String.init<A>(_:)();
  v79 = v78;
  if (v49 == v77 && v50 == v78)
  {
  }

  else
  {
    v81 = v77;
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v82 & 1) == 0)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      sub_10000F53C(v31, qword_100381E48);
      sub_1000317F0(a4, &v153);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      sub_100031E04(a4);
      v115 = os_log_type_enabled(v113, v114);
      v137 = a12;
      if (v115)
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v153 = v117;
        *v116 = 136446210;
        v118 = sub_1000B9A7C();
        v120 = sub_10017C9E8(v118, v119, &v153);

        *(v116 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v113, v114, "[%{public}s] Free form text: Return symbol entered", v116, 0xCu);
        sub_100008964(v117);

        v35 = v139;
      }

      if ((v136 & 1) == 0)
      {
        sub_10000F574();
        v133 = static OS_dispatch_queue.main.getter();
        v121 = swift_allocObject();
        *(v121 + 16) = a10;
        *(v121 + 24) = a11;
        v157 = sub_100031EEC;
        v158 = v121;
        v153 = _NSConcreteStackBlock;
        v154 = 1107296256;
        v155 = sub_1001D2438;
        v156 = &unk_1003274D8;
        v122 = _Block_copy(&v153);
        v136 = a4;
        v132 = v122;

        v123 = v140;
        static DispatchQoS.unspecified.getter();
        v153 = _swiftEmptyArrayStorage;
        sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70);
        sub_100009274(&qword_10035BB50, &unk_100355D70);
        v124 = v35;
        v125 = v142;
        v126 = v145;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v127 = v132;
        v128 = v133;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v129 = v127;
        a4 = v136;
        _Block_release(v129);

        v130 = v125;
        v35 = v124;
        (*(v144 + 8))(v130, v126);
        (*(v141 + 8))(v123, v143);
      }

      v159 = v81;
      v160 = v79;
      v31 = v138;
      v76 = v137;
      if ((v79 & 0x1000000000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_96;
    }
  }

  v79 = v50;
  v81 = v49;
  if ((v50 & 0x1000000000000000) == 0)
  {
LABEL_61:
    if ((v79 & 0x2000000000000000) != 0)
    {
      v83 = HIBYTE(v79) & 0xF;
    }

    else
    {
      v83 = v81 & 0xFFFFFFFFFFFFLL;
    }

    goto LABEL_64;
  }

LABEL_96:
  v83 = String.UTF8View._foreignCount()();
LABEL_64:
  v84 = v76[6];
  if (v84 >= v83)
  {
LABEL_82:
    if (sub_1000C222C(v35, v76, v81, v79))
    {
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      sub_10000F53C(v31, qword_100381E48);
      sub_1000317F0(a4, &v153);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      sub_100031E04(a4);

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v109 = 136446723;
        v110 = sub_1000B9A7C();
        v112 = sub_10017C9E8(v110, v111, &v153);

        *(v109 + 4) = v112;
        *(v109 + 12) = 2081;
        *(v109 + 14) = sub_10017C9E8(v76[2], v76[3], &v153);
        *(v109 + 22) = 2081;
        *(v109 + 24) = sub_10017C9E8(v135, v134, &v153);
        _os_log_impl(&_mh_execute_header, v107, v108, "[%{public}s] QuestionnaireBodyView: failed to update value of %{private}s for %{private}s", v109, 0x20u);
        swift_arrayDestroy();
      }
    }

    return;
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  sub_10000F53C(v31, qword_100381E48);
  sub_1000317F0(a4, &v153);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  sub_100031E04(a4);
  v87 = os_log_type_enabled(v85, v86);
  v137 = v76;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v153 = v89;
    *v88 = 136446210;
    v90 = sub_1000B9A7C();
    v92 = sub_10017C9E8(v90, v91, &v153);

    *(v88 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v85, v86, "[%{public}s] Free form text: Entered text is over the limit", v88, 0xCu);
    sub_100008964(v89);
  }

  sub_10000F574();
  v136 = static OS_dispatch_queue.main.getter();
  v93 = swift_allocObject();
  v94 = *(a4 + 112);
  v93[7] = *(a4 + 96);
  v93[8] = v94;
  v93[9] = *(a4 + 128);
  v95 = *(a4 + 48);
  v93[3] = *(a4 + 32);
  v93[4] = v95;
  v96 = *(a4 + 80);
  v93[5] = *(a4 + 64);
  v93[6] = v96;
  v97 = *(a4 + 16);
  v93[1] = *a4;
  v93[2] = v97;
  v151 = sub_100031F14;
  v152 = v93;
  aBlock = _NSConcreteStackBlock;
  v148 = 1107296256;
  v149 = sub_1001D2438;
  v150 = &unk_100327528;
  v98 = _Block_copy(&aBlock);
  sub_1000317F0(a4, &v153);

  v99 = a4;
  v100 = v140;
  static DispatchQoS.unspecified.getter();
  v153 = _swiftEmptyArrayStorage;
  sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  v101 = v142;
  v102 = v145;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v103 = v136;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v98);

  (*(v144 + 8))(v101, v102);
  v104 = v100;
  a4 = v99;
  (*(v141 + 8))(v104, v143);
  v35 = v139;
  v76 = v137;
  while (1)
  {
    v81 = v159;
    v79 = v160;
    v105 = HIBYTE(v160) & 0xF;
    if ((v160 & 0x1000000000000000) != 0)
    {
      if (v84 >= String.UTF8View._foreignCount()())
      {
        goto LABEL_81;
      }
    }

    else
    {
      if ((v160 & 0x2000000000000000) != 0)
      {
        v106 = HIBYTE(v160) & 0xF;
      }

      else
      {
        v106 = v159 & 0xFFFFFFFFFFFFLL;
      }

      if (v84 >= v106)
      {
LABEL_81:
        v31 = v138;
        goto LABEL_82;
      }
    }

    if ((v79 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v81 & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_98;
    }

LABEL_71:
    String.index(before:)();
    String.remove(at:)();
  }

  if (v105)
  {
    goto LABEL_71;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_12:
  v27 = type metadata accessor for Logger();
  sub_10000F53C(v27, qword_100381C80);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Free form text: Updating value when it is not a current question anymore", v30, 2u);
  }
}

uint64_t sub_100030730(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100031E6C(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003082C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v85 = type metadata accessor for Font.Leading();
  v3 = *(v85 - 8);
  __chkstk_darwin(v85);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000040A8(&qword_100356790);
  __chkstk_darwin(v84);
  v7 = &v84 - v6;
  v86 = sub_1000040A8(&qword_100356798);
  __chkstk_darwin(v86);
  v9 = &v84 - v8;
  v88 = sub_1000040A8(&qword_1003567A0);
  __chkstk_darwin(v88);
  v89 = &v84 - v10;
  v92 = sub_1000040A8(&qword_1003567A8);
  __chkstk_darwin(v92);
  v90 = &v84 - v11;
  v12 = sub_1000040A8(&qword_1003567B0);
  v93 = *(v12 - 8);
  v94 = v12;
  __chkstk_darwin(v12);
  v91 = &v84 - v13;
  v100 = sub_1000040A8(&qword_1003567B8);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v84 - v14;
  v15 = sub_1000040A8(&qword_1003567C0);
  v101 = *(v15 - 8);
  v102 = v15;
  __chkstk_darwin(v15);
  v99 = &v84 - v16;
  v97 = sub_1000040A8(&qword_1003567C8);
  __chkstk_darwin(v97);
  v96 = &v84 - v17;
  v18 = *v1;
  if (*v1)
  {
    v20 = v18[9];
    v19 = v18[10];
    sub_1000088DC(v18 + 6, v20);
    (*(v19 + 24))(v108, v20, v19);
    v106 = 0;
    v107 = 0xE000000000000000;
    v116 = *(v1 + 48);
    v117 = *(v1 + 64);
    v109 = *(v1 + 48);
    *&v110 = *(v1 + 64);
    v87 = sub_1000040A8(&qword_1003567D0);
    State.projectedValue.getter();
    sub_100031770();
    TextField<>.init<A>(_:text:axis:)();
    v21 = *(v1 + 80);
    KeyPath = swift_getKeyPath();
    v23 = &v7[*(sub_1000040A8(&qword_1003567D8) + 36)];
    *v23 = KeyPath;
    *(v23 + 1) = v21;
    v23[16] = 0;
    static Font.title3.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v24 = v85;
    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v85);
    v25 = Font.leading(_:)();

    (*(v3 + 8))(v5, v24);
    v26 = swift_getKeyPath();
    v27 = &v7[*(v84 + 36)];
    *v27 = v26;
    v27[1] = v25;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v7, v9, &qword_100356790);
    v28 = &v9[*(v86 + 36)];
    v29 = v114;
    *(v28 + 4) = v113;
    *(v28 + 5) = v29;
    *(v28 + 6) = v115;
    v30 = v110;
    *v28 = v109;
    *(v28 + 1) = v30;
    v31 = v112;
    *(v28 + 2) = v111;
    *(v28 + 3) = v31;
    LOBYTE(v25) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v89;
    sub_10000CF4C(v9, v89, &qword_100356798);
    v41 = v40 + *(v88 + 36);
    *v41 = v25;
    *(v41 + 8) = v33;
    *(v41 + 16) = v35;
    *(v41 + 24) = v37;
    *(v41 + 32) = v39;
    *(v41 + 40) = 0;
    v42 = v92;
    v43 = v90;
    v44 = &v90[*(v92 + 36)];
    v45 = *(type metadata accessor for RoundedRectangle() + 20);
    v46 = enum case for RoundedCornerStyle.continuous(_:);
    v47 = type metadata accessor for RoundedCornerStyle();
    (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
    __asm { FMOV            V0.2D, #16.0 }

    *v44 = _Q0;
    v53 = [objc_opt_self() systemGray4Color];
    v54 = Color.init(uiColor:)();
    v55 = sub_1000040A8(&qword_1003567E0);
    *&v44[*(v55 + 52)] = v54;
    *&v44[*(v55 + 56)] = 256;
    v56 = static Alignment.center.getter();
    v58 = v57;
    v59 = &v44[*(sub_1000040A8(&qword_1003567E8) + 36)];
    *v59 = v56;
    v59[1] = v58;
    sub_10000CF4C(v40, v43, &qword_1003567A0);
    v60 = *(v2 + 120);
    v104 = *(v2 + 104);
    v105 = v60;
    v61 = *(v2 + 96);
    v106 = *(v2 + 88);
    v107 = v61;
    v62 = sub_1000040A8(&qword_1003566A0);
    v63 = sub_100032124();
    v64 = sub_100032490();
    v65 = v91;
    View.focused<A>(_:equals:)();
    sub_100008FA0(v43, &qword_1003567A8);
    *&v104 = v42;
    *(&v104 + 1) = v62;
    *&v105 = v63;
    *(&v105 + 1) = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = v94;
    v68 = v95;
    View.keyboardType(_:)();
    (*(v93 + 8))(v65, v67);
    v104 = v116;
    *&v105 = v117;
    State.wrappedValue.getter();
    v69 = swift_allocObject();
    v70 = *(v2 + 112);
    *(v69 + 112) = *(v2 + 96);
    *(v69 + 128) = v70;
    *(v69 + 144) = *(v2 + 128);
    *(v69 + 160) = *(v2 + 144);
    v71 = *(v2 + 48);
    *(v69 + 48) = *(v2 + 32);
    *(v69 + 64) = v71;
    v72 = *(v2 + 80);
    *(v69 + 80) = *(v2 + 64);
    *(v69 + 96) = v72;
    v73 = *(v2 + 16);
    *(v69 + 16) = *v2;
    *(v69 + 32) = v73;
    sub_100031B70(v2, &v104);
    *&v104 = v67;
    *(&v104 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v75 = v99;
    v74 = v100;
    View.onChange<A>(of:initial:_:)();

    (*(v98 + 8))(v68, v74);
    v76 = swift_allocObject();
    v77 = *(v2 + 112);
    *(v76 + 112) = *(v2 + 96);
    *(v76 + 128) = v77;
    *(v76 + 144) = *(v2 + 128);
    *(v76 + 160) = *(v2 + 144);
    v78 = *(v2 + 48);
    *(v76 + 48) = *(v2 + 32);
    *(v76 + 64) = v78;
    v79 = *(v2 + 80);
    *(v76 + 80) = *(v2 + 64);
    *(v76 + 96) = v79;
    v80 = *(v2 + 16);
    *(v76 + 16) = *v2;
    *(v76 + 32) = v80;
    v81 = v96;
    (*(v101 + 32))(v96, v75, v102);
    v82 = (v81 + *(v97 + 36));
    *v82 = sub_1000325A0;
    v82[1] = v76;
    v82[2] = 0;
    v82[3] = 0;
    sub_1000325A8(v81, v103);
    sub_100031B70(v2, &v104);
    return sub_100008964(v108);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000312BC(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 64);
  v10 = *(a1 + 48);
  v9 = v2;
  sub_100032618(&v10, &v7);
  sub_100006C20(&v9, &v7, &qword_100356848);
  sub_1000040A8(&qword_1003567D0);
  State.wrappedValue.getter();
  v3 = v1(v7, v8);
  v5 = v4;

  v7 = v3;
  v8 = v5;
  State.wrappedValue.setter();
  sub_100032674(&v10);
  sub_100008FA0(&v9, &qword_100356848);
  State.wrappedValue.getter();
  sub_1000040A8(&qword_1003566E0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100031424()
{
  sub_1000040A8(&qword_1003566E0);
  Binding.wrappedValue.getter();
  sub_1000040A8(&qword_1003567D0);
  return State.wrappedValue.setter();
}

__n128 sub_100031524(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100031550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100031598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100031610()
{
  result = qword_1003566A8;
  if (!qword_1003566A8)
  {
    sub_100008CF0(&qword_100356690);
    sub_10003169C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003566A8);
  }

  return result;
}

unint64_t sub_10003169C()
{
  result = qword_1003566B0;
  if (!qword_1003566B0)
  {
    sub_100008CF0(&qword_100356688);
    sub_100009274(&qword_1003566B8, &qword_1003566C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003566B0);
  }

  return result;
}

unint64_t sub_100031770()
{
  result = qword_1003566D0;
  if (!qword_1003566D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003566D0);
  }

  return result;
}

uint64_t sub_1000317C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100031838()
{
  result = qword_100356708;
  if (!qword_100356708)
  {
    sub_100008CF0(&qword_1003566F8);
    sub_1000318BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356708);
  }

  return result;
}

unint64_t sub_1000318BC()
{
  result = qword_100356710;
  if (!qword_100356710)
  {
    sub_100008CF0(&qword_100356718);
    sub_100031974();
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356710);
  }

  return result;
}

unint64_t sub_100031974()
{
  result = qword_100356720;
  if (!qword_100356720)
  {
    sub_100008CF0(&qword_100356728);
    sub_100031A2C();
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356720);
  }

  return result;
}

unint64_t sub_100031A2C()
{
  result = qword_100356730;
  if (!qword_100356730)
  {
    sub_100008CF0(&qword_100356738);
    sub_100031AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356730);
  }

  return result;
}

unint64_t sub_100031AB8()
{
  result = qword_100356740;
  if (!qword_100356740)
  {
    sub_100008CF0(&qword_100356748);
    sub_100009274(&qword_100356750, &qword_100356758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356740);
  }

  return result;
}

double sub_100031BD8(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100031C14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100031CD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 240, 7);
}

double sub_100031DE4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100031E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031F34()
{

  return _swift_deallocObject(v0, 160, 7);
}

__n128 sub_100031FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100032000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100032048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100032124()
{
  result = qword_1003567F0;
  if (!qword_1003567F0)
  {
    sub_100008CF0(&qword_1003567A8);
    sub_1000321DC();
    sub_100009274(&qword_100356838, &qword_1003567E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003567F0);
  }

  return result;
}

unint64_t sub_1000321DC()
{
  result = qword_1003567F8;
  if (!qword_1003567F8)
  {
    sub_100008CF0(&qword_1003567A0);
    sub_100032268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003567F8);
  }

  return result;
}

unint64_t sub_100032268()
{
  result = qword_100356800;
  if (!qword_100356800)
  {
    sub_100008CF0(&qword_100356798);
    sub_1000322F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356800);
  }

  return result;
}

unint64_t sub_1000322F4()
{
  result = qword_100356808;
  if (!qword_100356808)
  {
    sub_100008CF0(&qword_100356790);
    sub_1000323AC();
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356808);
  }

  return result;
}

unint64_t sub_1000323AC()
{
  result = qword_100356810;
  if (!qword_100356810)
  {
    sub_100008CF0(&qword_1003567D8);
    sub_100009274(&qword_100356818, &qword_100356820);
    sub_100009274(&qword_100356828, &qword_100356830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356810);
  }

  return result;
}

unint64_t sub_100032490()
{
  result = qword_100356840;
  if (!qword_100356840)
  {
    sub_100008CF0(&qword_1003566A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356840);
  }

  return result;
}

uint64_t sub_100032518()
{

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1000325A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003567C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000326CC()
{
  result = qword_100356850;
  if (!qword_100356850)
  {
    sub_100008CF0(&qword_1003567C8);
    sub_100008CF0(&qword_1003567B8);
    sub_100008CF0(&qword_1003567B0);
    sub_100008CF0(&qword_1003567A8);
    sub_100008CF0(&qword_1003566A0);
    sub_100032124();
    sub_100032490();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356850);
  }

  return result;
}

void sub_1000328DC(void *a1, void *a2, void *a3)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = v3;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v14 = 136446978;
    v15 = v8;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v13;
    v19 = v18;

    v20 = sub_10017C9E8(v17, v19, &v55);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    v21 = v9;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_10017C9E8(v23, v25, &v55);

    *(v14 + 14) = v26;
    *(v14 + 22) = 2082;
    v27 = v10;
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10017C9E8(v29, v31, &v55);

    *(v14 + 24) = v32;
    *(v14 + 32) = 2082;
    v33 = v11;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10017C9E8(v35, v37, &v55);

    *(v14 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v12, v52, "[%{public}s] scene(%{public}s) willConnectTo session(%{public}s) with options(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v40 = v39;
    v53 = v9;
    sub_100033508(v40);
    v41 = v53;
  }

  else
  {
    v42 = v8;
    oslog = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136446210;
      v46 = v42;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_10017C9E8(v48, v50, &v55);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, oslog, v43, "[%{public}s] provided scene is not a UIWindowScene", v44, 0xCu);
      sub_100008964(v45);
    }

    v41 = oslog;
  }
}

void sub_100032F30(void *a1, const char *a2)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  v6 = v2;
  v7 = a1;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v23);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    v16 = v7;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10017C9E8(v18, v20, &v23);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, oslog, v8, a2, v9, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100033238(void *a1, char *a2, char a3)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = v3;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136446466;
    v13 = v8;
    v14 = [v13 description];
    v27 = a3;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    format = a2;
    v17 = v16;

    v18 = sub_10017C9E8(v15, v17, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v19 = v9;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, &v28);

    *(v12 + 14) = v24;
    a3 = v27;
    _os_log_impl(&_mh_execute_header, v10, v11, format, v12, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000337F8();
  if (result)
  {
    sub_100167F4C(a3 & 1);
  }

  return result;
}

void sub_100033508(uint64_t a1)
{
  v2 = v1;
  if (sub_1000337F8())
  {
    v4 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:a1];
    if (qword_100353988 != -1)
    {
      v29 = v4;
      swift_once();
      v4 = v29;
    }

    v5 = v4;
    [v5 safeAreaInsets];
    *&xmmword_100381C10 = v6;
    *(&xmmword_100381C10 + 1) = v7;
    qword_100381C20 = v8;
    unk_100381C28 = v9;
    if (qword_100353AD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381ED8);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      __src[0] = v15;
      *v14 = 136315138;
      [v11 safeAreaInsets];
      v30[0] = v16;
      v30[1] = v17;
      v30[2] = v18;
      v30[3] = v19;
      type metadata accessor for UIEdgeInsets(0);
      v20 = String.init<A>(describing:)();
      v22 = sub_10017C9E8(v20, v21, __src);

      *(v14 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Safe area insets: %s", v14, 0xCu);
      sub_100008964(v15);
    }

    [v11 setOverrideUserInterfaceStyle:2];
    v23 = v11;
    sub_10025297C(v33);
    sub_10011B528(v33);
    sub_100033AD8(v33);
    v24 = static SafeAreaRegions.all.getter();
    v25 = v24 & ~static SafeAreaRegions.keyboard.getter();
    LOBYTE(v24) = static Edge.Set.all.getter();
    memcpy(v30, __src, 0x1F0uLL);
    v30[62] = v25;
    v31 = v24;
    v26 = objc_allocWithZone(sub_1000040A8(&unk_1003568F0));
    v27 = UIHostingController.init(rootView:)();
    [v23 setRootViewController:v27];

    v28 = *(v2 + OBJC_IVAR____TtC8SOSBuddy13SceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC8SOSBuddy13SceneDelegate_window) = v23;

    [v23 makeKeyAndVisible];
  }
}

uint64_t sub_1000337F8()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    type metadata accessor for AppDelegate();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy11AppDelegate_delegate);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v5 = *(v4 + 16);

      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381ED8);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10017C9E8(v14, v16, &v19);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] app == nil", v10, 0xCu);
    sub_100008964(v11);
  }

  return 0;
}

id sub_100033A70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100033B2C()
{
  result = qword_10035E8E0;
  if (!qword_10035E8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10035E8E0);
  }

  return result;
}

unint64_t sub_100033B78()
{
  result = qword_100356900;
  if (!qword_100356900)
  {
    sub_100033B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356900);
  }

  return result;
}

uint64_t sub_100033BD0(uint64_t a1)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381ED8);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10017C9E8(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    sub_100033B2C();
    sub_100033B78();
    v14 = Set.description.getter();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] openURLContexts(%{public}s)", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000337F8();
  if (result)
  {
    sub_10016787C(a1);
  }

  return result;
}

void sub_100033E1C()
{
  sub_100034084();
  if (v0 <= 0x3F)
  {
    sub_100006FE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100033EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000040A8(qword_100356970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100033FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000040A8(qword_100356970);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_100034084()
{
  if (!qword_1003569F8)
  {
    type metadata accessor for ToolbarItemPlacement();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003569F8);
    }
  }
}

uint64_t sub_1000340DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15(v6);
  sub_10009A58C(v12, a4, a6);
  v16 = *(v9 + 8);
  v16(v12, a4);
  sub_10009A58C(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t sub_100034218@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v29 = a1;
  v30 = a2;
  v31 = a8;
  v27 = a9;
  v28 = a10;
  type metadata accessor for GeometryCapturer();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v34 = a3;
  v35 = a4;

  static Alignment.center.getter();
  v18 = v26;
  View.background<A>(_:alignment:)();

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v21 = v27;
  v20 = v28;
  v19[4] = v18;
  v19[5] = v21;
  v22 = v29;
  v19[6] = v20;
  v19[7] = v22;
  v19[8] = v30;

  WitnessTable = swift_getWitnessTable();
  v32 = v18;
  v33 = WitnessTable;
  swift_getWitnessTable();
  View.onPreferenceChange<A>(_:perform:)();

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10003445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v30 = a6;
  v31 = a3;
  v28 = a4;
  v29 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v28 - v18;
  sub_10000F574();
  v32 = static OS_dispatch_queue.main.getter();
  (*(v17 + 16))(v19, a1, AssociatedTypeWitness);
  v20 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v28;
  *(v21 + 3) = a5;
  v22 = v31;
  *(v21 + 4) = v30;
  *(v21 + 5) = a7;
  v23 = v29;
  *(v21 + 6) = v33;
  *(v21 + 7) = v23;
  *(v21 + 8) = v22;
  (*(v17 + 32))(&v21[v20], v19, AssociatedTypeWitness);
  aBlock[4] = sub_100034F78;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100327758;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100035078(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100035010();
  v25 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v32;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v12, v25);
  return (*(v35 + 8))(v15, v36);
}

uint64_t sub_100034824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_100035078(qword_100356A08, type metadata accessor for CGRect);

  sub_100034218(sub_100035074, v14, sub_10003496C, 0, a3, a4, a5, a7, a6, v15);
}

uint64_t sub_10003496C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_100034A78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a6;
  v21 = a4;
  v22 = a5;
  v13 = type metadata accessor for NamedCoordinateSpace();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v14 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v19 = sub_100035078(qword_100356A08, type metadata accessor for CGRect);

  sub_100034218(sub_100035848, v16, sub_100035178, v18, v21, v22, v23, a8, a7, v19);
}

uint64_t sub_100034C64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_100035078(&qword_100356A00, type metadata accessor for CGSize);

  sub_100034218(sub_100034DE0, v14, sub_100034E0C, 0, a3, a4, a5, a7, a6, v15);
}

uint64_t sub_100034DA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034E0C@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100034E50()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034E9C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100034FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100035010()
{
  result = qword_10035BB50;
  if (!qword_10035BB50)
  {
    sub_100008CF0(&unk_100355D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BB50);
  }

  return result;
}

uint64_t sub_100035078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000350F0()
{
  v1 = type metadata accessor for NamedCoordinateSpace();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100035178@<X0>(void *a1@<X8>)
{
  type metadata accessor for NamedCoordinateSpace();
  result = GeometryProxy.frame<A>(in:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1000351FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100035238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100035280(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100035300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();

  v15 = &protocol witness table for Color;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = GeometryReader.init(content:)();
  v14 = v9;
  v10 = type metadata accessor for GeometryReader();
  v11 = swift_getWitnessTable();
  sub_10009A58C(&v13, v10, v11);

  v13 = v17;
  v14 = v18;
  sub_10009A58C(&v13, v10, v11);
}

uint64_t sub_100035488@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a3;
  v20 = a2;
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v19 - v6;
  v19[0] = type metadata accessor for _PreferenceWritingModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v25 = static Color.clear.getter();
  v20(a1);
  View.preference<A>(key:value:)();
  (*(v5 + 8))(v7, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v23 = &protocol witness table for Color;
  v24 = WitnessTable;
  v16 = swift_getWitnessTable();
  sub_10009A58C(v12, v8, v16);
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_10009A58C(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_10003573C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100035780()
{
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

uint64_t sub_10003584C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100035894(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10003590C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100356A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v78 - v4;
  v6 = v1[1];
  v7 = *(v6 + 64);
  if (v7 <= 3)
  {
    if (*(v6 + 64) > 1u)
    {
      if (v7 == 2)
      {
        v17 = *v1;
        v120 = *(v1 + 1);
        v18 = swift_allocObject();
        v19 = *(v1 + 1);
        v18[1] = *v1;
        v18[2] = v19;
        v18[3] = *(v1 + 2);
        swift_retain_n();
        swift_retain_n();
        sub_100006C20(&v120, &v129, &qword_1003566A0);
        type metadata accessor for AppEvents();
        sub_100038494(&qword_100354D48, type metadata accessor for AppEvents);

        *&v82 = EnvironmentObject.init()();
        *(&v82 + 1) = v20;
        type metadata accessor for UIMetrics();
        sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);
        *&v83 = EnvironmentObject.init()();
        *(&v83 + 1) = v21;
        *&v84 = v17;
        *(&v84 + 1) = v6;
        *&v85 = sub_100038274;
        *(&v85 + 1) = v18;
        LOBYTE(v110) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v86) = v129;
        *(&v86 + 1) = *(&v129 + 1);
        LOBYTE(v110) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v87) = v129;
        *(&v87 + 1) = *(&v129 + 1);
        sub_100038298();
        v22 = [objc_opt_self() mainRunLoop];
        v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
        (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
        v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

        sub_100008FA0(v5, &qword_100356A90);
        *&v110 = v24;
        type metadata accessor for NSTimer.TimerPublisher();
        State.init(wrappedValue:)();
        v88 = v129;
        *&v131 = 0;
        v129 = 0u;
        v130 = 0u;
        sub_100006C20(&v129, &v110, &qword_100356B58);
        sub_1000040A8(&qword_100356B58);
        State.init(wrappedValue:)();
        sub_100008FA0(&v129, &qword_100356B58);
        sub_1000382E4(&v82, &v129);
        v139 = 0;
        sub_100037C00();
        sub_100037C54();
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(&v110, &v129, &qword_100356AE0);
        v140 = 1;
        sub_1000040A8(&qword_100356AC0);
        sub_1000040A8(&qword_100356AE0);
        sub_100037A40();
        sub_100037B74();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v110, &qword_100356AE0);
        sub_100006C20(&v92, &v129, &qword_100356AB0);
        v141 = 0;
        sub_1000040A8(&qword_100356AB0);
        sub_1000040A8(&qword_100356B00);
        sub_1000379B4();
        sub_100037CA8();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v92, &qword_100356AB0);
        sub_100006C20(&v110, &v129, &qword_100356A98);
        v142 = 0;
        sub_1000040A8(&qword_100356A98);
        sub_100037928();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v110, &qword_100356A98);
        return sub_100038340(&v82);
      }

      v59 = *v1;
      v120 = *(v1 + 1);
      v60 = swift_allocObject();
      v61 = *(v1 + 1);
      v60[1] = *v1;
      v60[2] = v61;
      v60[3] = *(v1 + 2);
      swift_retain_n();
      swift_retain_n();
      sub_100006C20(&v120, &v129, &qword_1003566A0);
      type metadata accessor for AppEvents();
      sub_100038494(&qword_100354D48, type metadata accessor for AppEvents);

      v62 = EnvironmentObject.init()();
      v64 = v63;
      type metadata accessor for UIMetrics();
      sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);
      v65 = EnvironmentObject.init()();
      v67 = v66;
      LOBYTE(v110) = 0;
      State.init(wrappedValue:)();
      *&v82 = v62;
      *(&v82 + 1) = v64;
      *&v83 = v65;
      *(&v83 + 1) = v67;
      *&v84 = v59;
      *(&v84 + 1) = v6;
      *&v85 = sub_10003856C;
      *(&v85 + 1) = v60;
      LOBYTE(v86) = v129;
      *(&v86 + 1) = *(&v129 + 1);
      v131 = v84;
      v132 = v85;
      v133 = v86;
      v129 = v82;
      v130 = v83;
      v139 = 1;
      sub_1000381C4(&v82, &v110);
      sub_100037C00();
      sub_100037C54();
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(&v110, &v129, &qword_100356AE0);
      v140 = 1;
      sub_1000040A8(&qword_100356AC0);
      sub_1000040A8(&qword_100356AE0);
      sub_100037A40();
      sub_100037B74();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(&v110, &qword_100356AE0);
      sub_100006C20(&v92, &v129, &qword_100356AB0);
      v141 = 0;
      sub_1000040A8(&qword_100356AB0);
      sub_1000040A8(&qword_100356B00);
      sub_1000379B4();
      sub_100037CA8();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(&v92, &qword_100356AB0);
      sub_100006C20(&v110, &v129, &qword_100356A98);
      v142 = 0;
      sub_1000040A8(&qword_100356A98);
      sub_100037928();
      _ConditionalContent<>.init(storage:)();
      sub_100038220(&v82);
    }

    else
    {
      v14 = *v1;
      if (*(v6 + 64))
      {
        v120 = *(v1 + 1);
        v51 = swift_allocObject();
        v52 = *(v1 + 1);
        v51[1] = *v1;
        v51[2] = v52;
        v51[3] = *(v1 + 2);
        swift_retain_n();
        swift_retain_n();
        sub_100006C20(&v120, &v129, &qword_1003566A0);
        type metadata accessor for AppEvents();
        sub_100038494(&qword_100354D48, type metadata accessor for AppEvents);

        v53 = EnvironmentObject.init()();
        v55 = v54;
        type metadata accessor for UIMetrics();
        sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);
        v56 = EnvironmentObject.init()();
        v58 = v57;
        LOBYTE(v110) = 0;
        State.init(wrappedValue:)();
        *&v82 = v53;
        *(&v82 + 1) = v55;
        *&v83 = v56;
        *(&v83 + 1) = v58;
        *&v84 = v14;
        *(&v84 + 1) = v6;
        *&v85 = sub_10003856C;
        *(&v85 + 1) = v51;
        LOBYTE(v86) = v129;
        *(&v86 + 1) = *(&v129 + 1);
        v131 = v84;
        v132 = v85;
        v133 = v86;
        v129 = v82;
        v130 = v83;
        LOBYTE(v102) = 1;
        LOBYTE(v134) = 1;
        sub_1000383E4(&v82, &v110);
        sub_100037ACC();
        sub_100037B20();
        _ConditionalContent<>.init(storage:)();
        v131 = v112;
        v132 = v113;
        v133 = v114;
        LOBYTE(v134) = v115;
        v129 = v110;
        v130 = v111;
        v140 = 0;
        sub_1000040A8(&qword_100356AC0);
        sub_1000040A8(&qword_100356AE0);
        sub_100037A40();
        sub_100037B74();
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(&v92, &v129, &qword_100356AB0);
        v141 = 0;
        sub_1000040A8(&qword_100356AB0);
        sub_1000040A8(&qword_100356B00);
        sub_1000379B4();
        sub_100037CA8();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v92, &qword_100356AB0);
        sub_100006C20(&v110, &v129, &qword_100356A98);
        v142 = 0;
        sub_1000040A8(&qword_100356A98);
        sub_100037928();
        _ConditionalContent<>.init(storage:)();
        sub_100038440(&v82);
      }

      else
      {
        type metadata accessor for EmergencyModel();
        sub_100038494(&qword_100356B60, type metadata accessor for EmergencyModel);

        v15 = EnvironmentObject.init()();
        LOBYTE(v82) = 0;
        *&v129 = v15;
        *(&v129 + 1) = v16;
        *&v130 = v14;
        *(&v130 + 1) = v6;
        LOBYTE(v134) = 0;
        sub_100037ACC();
        sub_100037B20();

        _ConditionalContent<>.init(storage:)();
        v131 = v112;
        v132 = v113;
        v133 = v114;
        LOBYTE(v134) = v115;
        v129 = v110;
        v130 = v111;
        v140 = 0;
        sub_1000040A8(&qword_100356AC0);
        sub_1000040A8(&qword_100356AE0);
        sub_100037A40();
        sub_100037B74();
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(&v92, &v129, &qword_100356AB0);
        v141 = 0;
        sub_1000040A8(&qword_100356AB0);
        sub_1000040A8(&qword_100356B00);
        sub_1000379B4();
        sub_100037CA8();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v92, &qword_100356AB0);
        sub_100006C20(&v110, &v129, &qword_100356A98);
        v142 = 0;
        sub_1000040A8(&qword_100356A98);
        sub_100037928();
        _ConditionalContent<>.init(storage:)();
      }
    }
  }

  else if (*(v6 + 64) <= 5u)
  {
    v81 = a1;
    v26 = *v1;
    v102 = *(v1 + 1);
    if (v7 == 4)
    {
      v27 = swift_allocObject();
      v28 = *(v1 + 1);
      v27[1] = *v1;
      v27[2] = v28;
      v27[3] = *(v1 + 2);
      swift_retain_n();
      swift_retain_n();
      sub_100006C20(&v102, &v129, &qword_1003566A0);
      type metadata accessor for AppEvents();
      sub_100038494(&qword_100354D48, type metadata accessor for AppEvents);

      v29 = EnvironmentObject.init()();
      v31 = v30;
      type metadata accessor for RoadsideAssistanceModel();
      sub_100038494(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
      v32 = EnvironmentObject.init()();
      v34 = v33;
      type metadata accessor for UIMetrics();
      sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);
      v35 = EnvironmentObject.init()();
      v37 = v36;
      LOBYTE(v110) = 0;
      State.init(wrappedValue:)();
      *&v120 = v29;
      *(&v120 + 1) = v31;
      *&v121 = v32;
      *(&v121 + 1) = v34;
      *v122 = v35;
      *&v122[8] = v37;
      *&v122[16] = v26;
      *&v122[24] = v6;
      *&v123 = sub_10003856C;
      *(&v123 + 1) = v27;
      LOBYTE(v124) = v129;
      *(&v124 + 1) = *(&v129 + 1);
      v131 = *v122;
      v132 = *&v122[16];
      v133 = v123;
      v134 = v124;
      v129 = v120;
      v130 = v121;
      LOBYTE(v143) = 0;
      LOBYTE(v135) = 0;
      sub_100038114(&v120, &v110);
      sub_100037DC0();
      sub_100037E14();
      _ConditionalContent<>.init(storage:)();
      v96 = v114;
      v97 = v115;
      LOBYTE(v98) = v116;
      v92 = v110;
      v93 = v111;
      v94 = v112;
      v95 = v113;
      sub_1000380B8(&v92);
      v135 = v98;
      v136 = v99;
      v137 = v100;
      v138 = v101;
      v131 = v94;
      v132 = v95;
      v133 = v96;
      v134 = v97;
      v129 = v92;
      v130 = v93;
      sub_1000040A8(&qword_100356B10);
      sub_1000040A8(&qword_100356B30);
      sub_100037D34();
      sub_100037E68();
      _ConditionalContent<>.init(storage:)();
      v135 = v88;
      v136 = v89;
      v137 = v90;
      v138 = v91;
      v131 = v84;
      v132 = v85;
      v133 = v86;
      v134 = v87;
      v129 = v82;
      v130 = v83;
      v141 = 1;
      sub_1000040A8(&qword_100356AB0);
      sub_1000040A8(&qword_100356B00);
      sub_1000379B4();
      sub_100037CA8();
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(&v110, &v129, &qword_100356A98);
      v142 = 0;
      sub_1000040A8(&qword_100356A98);
      sub_100037928();
      _ConditionalContent<>.init(storage:)();
      sub_100038170(&v120);
    }

    else
    {
      v68 = swift_allocObject();
      v69 = *(v1 + 1);
      v68[1] = *v1;
      v68[2] = v69;
      v68[3] = *(v1 + 2);
      swift_retain_n();
      swift_retain_n();
      sub_100006C20(&v102, &v129, &qword_1003566A0);
      type metadata accessor for AppEvents();
      sub_100038494(&qword_100354D48, type metadata accessor for AppEvents);

      v70 = EnvironmentObject.init()();
      v72 = v71;
      type metadata accessor for RoadsideAssistanceModel();
      sub_100038494(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
      v73 = EnvironmentObject.init()();
      v75 = v74;
      type metadata accessor for UIMetrics();
      sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);
      v76 = EnvironmentObject.init()();
      *&v120 = v70;
      *(&v120 + 1) = v72;
      *&v121 = v73;
      *(&v121 + 1) = v75;
      *v122 = v76;
      *&v122[8] = v77;
      *&v122[16] = v26;
      *&v122[24] = v6;
      *&v123 = sub_10003856C;
      *(&v123 + 1) = v68;
      v131 = *v122;
      v132 = *&v122[16];
      v133 = v123;
      v129 = v120;
      v130 = v121;
      LOBYTE(v143) = 1;
      LOBYTE(v135) = 1;
      sub_10003805C(&v120, &v110);
      sub_100037DC0();
      sub_100037E14();
      _ConditionalContent<>.init(storage:)();
      v96 = v114;
      v97 = v115;
      LOBYTE(v98) = v116;
      v92 = v110;
      v93 = v111;
      v94 = v112;
      v95 = v113;
      sub_1000380B8(&v92);
      v135 = v98;
      v136 = v99;
      v137 = v100;
      v138 = v101;
      v131 = v94;
      v132 = v95;
      v133 = v96;
      v134 = v97;
      v129 = v92;
      v130 = v93;
      sub_1000040A8(&qword_100356B10);
      sub_1000040A8(&qword_100356B30);
      sub_100037D34();
      sub_100037E68();
      _ConditionalContent<>.init(storage:)();
      v135 = v88;
      v136 = v89;
      v137 = v90;
      v138 = v91;
      v131 = v84;
      v132 = v85;
      v133 = v86;
      v134 = v87;
      v129 = v82;
      v130 = v83;
      v141 = 1;
      sub_1000040A8(&qword_100356AB0);
      sub_1000040A8(&qword_100356B00);
      sub_1000379B4();
      sub_100037CA8();
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(&v110, &v129, &qword_100356A98);
      v142 = 0;
      sub_1000040A8(&qword_100356A98);
      sub_100037928();
      _ConditionalContent<>.init(storage:)();
      sub_1000380C0(&v120);
    }
  }

  else if (v7 == 6)
  {
    v80 = *v1;
    v143 = *(v1 + 1);
    v38 = swift_allocObject();
    v39 = *(v1 + 1);
    v38[1] = *v1;
    v38[2] = v39;
    v38[3] = *(v1 + 2);
    swift_retain_n();
    swift_retain_n();
    sub_100006C20(&v143, &v129, &qword_1003566A0);
    type metadata accessor for AppEvents();
    sub_100038494(&qword_100354D48, type metadata accessor for AppEvents);

    v40 = EnvironmentObject.init()();
    v42 = v41;
    type metadata accessor for RoadsideAssistanceModel();
    sub_100038494(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    v43 = EnvironmentObject.init()();
    v81 = a1;
    v44 = v43;
    v46 = v45;
    type metadata accessor for UIMetrics();
    sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);
    v47 = EnvironmentObject.init()();
    v49 = v48;
    FocusState.init<A>()();
    v50 = v131;
    v78 = v130;
    v79 = v129;
    v110 = 0uLL;
    sub_1000040A8(&qword_1003566A0);
    State.init(wrappedValue:)();
    *&v102 = v40;
    *(&v102 + 1) = v42;
    *&v103 = v44;
    *(&v103 + 1) = v46;
    *&v104 = v47;
    *(&v104 + 1) = v49;
    *&v105 = v80;
    *(&v105 + 1) = v6;
    *&v106 = sub_10003856C;
    *(&v106 + 1) = v38;
    v107 = v79;
    v108 = v78;
    *(v109 + 8) = v129;
    *&v109[0] = v50;
    *(&v109[1] + 1) = v130;
    *v122 = v104;
    *&v122[16] = v105;
    v120 = v102;
    v121 = v103;
    v126 = v109[0];
    v127 = v109[1];
    v124 = v79;
    v125 = v78;
    v123 = v106;
    sub_10003150C(&v120);
    v135 = v125;
    v136 = v126;
    v137 = v127;
    LOBYTE(v138) = v128;
    v131 = *v122;
    v132 = *&v122[16];
    v133 = v123;
    v134 = v124;
    v129 = v120;
    v130 = v121;
    sub_100037FAC(&v102, &v110);
    sub_100037EF4();
    sub_100037F48();
    _ConditionalContent<>.init(storage:)();
    v98 = v116;
    v99 = v117;
    v100 = v118;
    LOBYTE(v101) = v119;
    v94 = v112;
    v95 = v113;
    v96 = v114;
    v97 = v115;
    v92 = v110;
    v93 = v111;
    sub_100037F9C(&v92);
    v135 = v98;
    v136 = v99;
    v137 = v100;
    v138 = v101;
    v131 = v94;
    v132 = v95;
    v133 = v96;
    v134 = v97;
    v129 = v92;
    v130 = v93;
    sub_1000040A8(&qword_100356B10);
    sub_1000040A8(&qword_100356B30);
    sub_100037D34();
    sub_100037E68();
    _ConditionalContent<>.init(storage:)();
    v135 = v88;
    v136 = v89;
    v137 = v90;
    v138 = v91;
    v131 = v84;
    v132 = v85;
    v133 = v86;
    v134 = v87;
    v129 = v82;
    v130 = v83;
    v141 = 1;
    sub_1000040A8(&qword_100356AB0);
    sub_1000040A8(&qword_100356B00);
    sub_1000379B4();
    sub_100037CA8();
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(&v110, &v129, &qword_100356A98);
    v142 = 0;
    sub_1000040A8(&qword_100356A98);
    sub_100037928();
    _ConditionalContent<>.init(storage:)();
    sub_100038008(&v102);
  }

  else
  {
    if (v7 != 7)
    {
      v142 = 1;
      sub_1000040A8(&qword_100356A98);
      sub_100037928();
      return _ConditionalContent<>.init(storage:)();
    }

    type metadata accessor for UIMetrics();
    sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics);

    v8 = EnvironmentObject.init()();
    v10 = v9;
    type metadata accessor for QuestionnaireState();
    sub_100038494(&qword_100354D50, type metadata accessor for QuestionnaireState);
    v11 = EnvironmentObject.init()();
    v13 = v12;
    *&v110 = 30;
    State.init(wrappedValue:)();
    *&v120 = v8;
    *(&v120 + 1) = v10;
    *&v121 = v11;
    *(&v121 + 1) = v13;
    *v122 = v6;
    *&v122[8] = v129;
    sub_10002CF18(&v120);
    v135 = v125;
    v136 = v126;
    v137 = v127;
    LOBYTE(v138) = v128;
    v131 = *v122;
    v132 = *&v122[16];
    v133 = v123;
    v134 = v124;
    v129 = v120;
    v130 = v121;
    sub_100037EF4();
    sub_100037F48();

    _ConditionalContent<>.init(storage:)();
    v98 = v116;
    v99 = v117;
    v100 = v118;
    LOBYTE(v101) = v119;
    v94 = v112;
    v95 = v113;
    v96 = v114;
    v97 = v115;
    v92 = v110;
    v93 = v111;
    sub_100037F9C(&v92);
    v135 = v98;
    v136 = v99;
    v137 = v100;
    v138 = v101;
    v131 = v94;
    v132 = v95;
    v133 = v96;
    v134 = v97;
    v129 = v92;
    v130 = v93;
    sub_1000040A8(&qword_100356B10);
    sub_1000040A8(&qword_100356B30);
    sub_100037D34();
    sub_100037E68();
    _ConditionalContent<>.init(storage:)();
    v135 = v88;
    v136 = v89;
    v137 = v90;
    v138 = v91;
    v131 = v84;
    v132 = v85;
    v133 = v86;
    v134 = v87;
    v129 = v82;
    v130 = v83;
    v141 = 1;
    sub_1000040A8(&qword_100356AB0);
    sub_1000040A8(&qword_100356B00);
    sub_1000379B4();
    sub_100037CA8();
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(&v110, &v129, &qword_100356A98);
    v142 = 0;
    sub_1000040A8(&qword_100356A98);
    sub_100037928();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_100008FA0(&v110, &qword_100356A98);
}

uint64_t sub_100037708()
{
  v1 = *(v0 + 8);
  v11 = *(v0 + 16);
  if ((sub_1000BB344(v1, 0, 4) & 1) == 0)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381E48);
    v12 = v11;

    sub_100006C20(&v12, v10, &qword_1003566A0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    sub_100008FA0(&v12, &qword_1003566A0);

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v10[0] = swift_slowAlloc();
      *v5 = 136446467;
      v6 = sub_1000B9A7C();
      v8 = sub_10017C9E8(v6, v7, v10);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2081;
      *(v5 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] QuestionnaireBodyView: failed to record answer for %{private}s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  return (*(v0 + 32))();
}

unint64_t sub_100037928()
{
  result = qword_100356AA0;
  if (!qword_100356AA0)
  {
    sub_100008CF0(&qword_100356A98);
    sub_1000379B4();
    sub_100037CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AA0);
  }

  return result;
}

unint64_t sub_1000379B4()
{
  result = qword_100356AA8;
  if (!qword_100356AA8)
  {
    sub_100008CF0(&qword_100356AB0);
    sub_100037A40();
    sub_100037B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AA8);
  }

  return result;
}

unint64_t sub_100037A40()
{
  result = qword_100356AB8;
  if (!qword_100356AB8)
  {
    sub_100008CF0(&qword_100356AC0);
    sub_100037ACC();
    sub_100037B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AB8);
  }

  return result;
}

unint64_t sub_100037ACC()
{
  result = qword_100356AC8;
  if (!qword_100356AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AC8);
  }

  return result;
}

unint64_t sub_100037B20()
{
  result = qword_100356AD0;
  if (!qword_100356AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AD0);
  }

  return result;
}

unint64_t sub_100037B74()
{
  result = qword_100356AD8;
  if (!qword_100356AD8)
  {
    sub_100008CF0(&qword_100356AE0);
    sub_100037C00();
    sub_100037C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AD8);
  }

  return result;
}

unint64_t sub_100037C00()
{
  result = qword_100356AE8;
  if (!qword_100356AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AE8);
  }

  return result;
}

unint64_t sub_100037C54()
{
  result = qword_100356AF0;
  if (!qword_100356AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AF0);
  }

  return result;
}

unint64_t sub_100037CA8()
{
  result = qword_100356AF8;
  if (!qword_100356AF8)
  {
    sub_100008CF0(&qword_100356B00);
    sub_100037D34();
    sub_100037E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AF8);
  }

  return result;
}

unint64_t sub_100037D34()
{
  result = qword_100356B08;
  if (!qword_100356B08)
  {
    sub_100008CF0(&qword_100356B10);
    sub_100037DC0();
    sub_100037E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B08);
  }

  return result;
}

unint64_t sub_100037DC0()
{
  result = qword_100356B18;
  if (!qword_100356B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B18);
  }

  return result;
}

unint64_t sub_100037E14()
{
  result = qword_100356B20;
  if (!qword_100356B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B20);
  }

  return result;
}

unint64_t sub_100037E68()
{
  result = qword_100356B28;
  if (!qword_100356B28)
  {
    sub_100008CF0(&qword_100356B30);
    sub_100037EF4();
    sub_100037F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B28);
  }

  return result;
}

unint64_t sub_100037EF4()
{
  result = qword_100356B38;
  if (!qword_100356B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B38);
  }

  return result;
}

unint64_t sub_100037F48()
{
  result = qword_100356B40;
  if (!qword_100356B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B40);
  }

  return result;
}

unint64_t sub_100038298()
{
  result = qword_100356B50;
  if (!qword_100356B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100356B50);
  }

  return result;
}

uint64_t sub_100038394()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100038494(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000384E0()
{
  result = qword_100356B68;
  if (!qword_100356B68)
  {
    sub_100008CF0(&qword_100356B70);
    sub_100037928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B68);
  }

  return result;
}

uint64_t sub_100038584()
{
  v1 = v0[2];
  if (!v1)
  {
    type metadata accessor for StewieModel(0);
    sub_10003A938(&qword_1003561B8, type metadata accessor for StewieModel);
    EnvironmentObject.error()();
    __break(1u);
LABEL_71:
    type metadata accessor for PartnerModel();
    sub_10003A938(&qword_1003561A8, type metadata accessor for PartnerModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (v1[8] && (v2 = v1[10], *(v2 + 16)))
  {
    v3 = sub_100233FEC(&off_100321A78);
    v4 = sub_100204870(v2, v3);

    v5 = v4 ^ 1u;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v0;
  if (!*v0)
  {
    goto LABEL_71;
  }

  v7 = *(v6 + 72);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v62 = 0;
    v8 = 0;
LABEL_12:
    v9 = &off_100321AA0;
    goto LABEL_13;
  }

  v8 = *(v6 + 56);
  v62 = *(v6 + 48);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_13:
  *&v65[0] = v9;
  v63 = v6;

  v10 = v65;
  sub_1000EC674(&off_100321AC8);
  v11 = *&v65[0];
  v12 = *(*&v65[0] + 16);
  if (!v12)
  {

    v15 = _swiftEmptyArrayStorage;
    v41 = v63;
    if (v8)
    {
      goto LABEL_48;
    }

LABEL_57:

LABEL_59:
    v54 = sub_10003A334(v15, v41);
    v55 = sub_100038CDC();
    *&v65[0] = v54;
    sub_1000EC580(v55);
    if (*(*&v65[0] + 16))
    {
      sub_1000040A8(&qword_100355E30);
      sub_100009274(&qword_100356B78, &qword_100355E30);
      v5 = BidirectionalCollection<>.joined(separator:)();
      v14 = v56;
    }

    else
    {

      v5 = 0;
      v14 = 0;
    }

    v10 = _swiftEmptyArrayStorage;
    if (!*(v15 + 2))
    {
      goto LABEL_55;
    }

    goto LABEL_63;
  }

  v61 = v8;
  v13 = 0;
  v14 = *&v65[0] + 32;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v21 = *(v14 + v13);
    v22 = v1[8];
    if (v21 != 3)
    {
      if (v5)
      {
        if (!v22)
        {
          goto LABEL_16;
        }

        v28 = v1[10];
        if (!*(v28 + 16))
        {
          goto LABEL_16;
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v21);
        v10 = v65;
        v29 = Hasher._finalize()();
        v30 = -1 << *(v28 + 32);
        v31 = v29 & ~v30;
        if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_16;
        }

        v32 = ~v30;
        while (*(*(v28 + 48) + v31) != v21)
        {
          v31 = (v31 + 1) & v32;
          if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (!v22)
        {
          goto LABEL_16;
        }

        v34 = v1[13];
        if (!*(v34 + 16))
        {
          goto LABEL_16;
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v21);
        v10 = v65;
        v35 = Hasher._finalize()();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        if (((*(v34 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_16;
        }

        v38 = ~v36;
        while (*(*(v34 + 48) + v37) != v21)
        {
          v37 = (v37 + 1) & v38;
          if (((*(v34 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      goto LABEL_42;
    }

    if (v22)
    {
      v23 = v1[11];
      if (*(v23 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3uLL);
        v10 = v65;
        v24 = Hasher._finalize()();
        v25 = -1 << *(v23 + 32);
        v26 = v24 & ~v25;
        if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_16;
        }

        v27 = ~v25;
        while (*(*(v23 + 48) + v26) != 3)
        {
          v26 = (v26 + 1) & v27;
          if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

LABEL_42:
        v33 = 0x203040100uLL >> (8 * v21);
        goto LABEL_43;
      }
    }

    LOBYTE(v33) = 3;
LABEL_43:
    sub_10003938C(v33, 0, 0, v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_10017B780(0, *(v15 + 2) + 1, 1, v15);
    }

    v40 = *(v15 + 2);
    v39 = *(v15 + 3);
    v10 = (v40 + 1);
    if (v40 >= v39 >> 1)
    {
      v15 = sub_10017B780((v39 > 1), v40 + 1, 1, v15);
    }

    *(v15 + 2) = v10;
    v16 = &v15[96 * v40];
    v17 = v64[1];
    *(v16 + 2) = v64[0];
    *(v16 + 3) = v17;
    v18 = v64[2];
    v19 = v64[3];
    v20 = v64[5];
    *(v16 + 6) = v64[4];
    *(v16 + 7) = v20;
    *(v16 + 4) = v18;
    *(v16 + 5) = v19;
LABEL_16:
    ++v13;
  }

  while (v13 != v12);

  v8 = v61;
  v41 = v63;
  if (!v61)
  {
    goto LABEL_57;
  }

LABEL_48:
  v42 = *(v41 + 72);
  if (v42 != 2 && (v42 & 1) != 0)
  {

    goto LABEL_58;
  }

  v43 = *(v41 + 64);

  if (!v43)
  {
LABEL_58:

    goto LABEL_59;
  }

  sub_1000040A8(&qword_100356B80);
  v44 = swift_allocObject();
  v44[1] = xmmword_100279160;

  sub_10003938C(5u, v62, v8, v65);
  v45 = v8;

  v46 = v65[3];
  v44[4] = v65[2];
  v44[5] = v46;
  v47 = v65[5];
  v44[6] = v65[4];
  v44[7] = v47;
  v48 = v65[1];
  v44[2] = v65[0];
  v44[3] = v48;
  v10 = sub_10017B660(0, 1, 1, _swiftEmptyArrayStorage);
  v50 = *(v10 + 2);
  v49 = *(v10 + 3);
  if (v50 >= v49 >> 1)
  {
    v10 = sub_10017B660((v49 > 1), v50 + 1, 1, v10);
  }

  *(v10 + 2) = v50 + 1;
  v51 = &v10[40 * v50];
  *(v51 + 4) = v62;
  *(v51 + 5) = v45;
  *(v51 + 7) = 0;
  *(v51 + 8) = 0;
  *(v51 + 6) = v44;
  sub_1000210F4(v15, v43);
  v5 = v52;
  v14 = v53;

  if (!*(v15 + 2))
  {
LABEL_55:

    return v10;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_69:
    v10 = sub_10017B660(0, *(v10 + 2) + 1, 1, v10);
  }

  v58 = *(v10 + 2);
  v57 = *(v10 + 3);
  if (v58 >= v57 >> 1)
  {
    v10 = sub_10017B660((v57 > 1), v58 + 1, 1, v10);
  }

  *(v10 + 2) = v58 + 1;
  v59 = &v10[40 * v58];
  *(v59 + 4) = 0xD000000000000024;
  *(v59 + 5) = 0x8000000100297010;
  *(v59 + 6) = v15;
  *(v59 + 7) = v5;
  *(v59 + 8) = v14;
  return v10;
}

char *sub_100038CDC()
{
  if (*v0)
  {
    v1 = *(*v0 + 88);
    if (v1)
    {
      v2 = v1 + 56;

      v3 = 0;
      v4 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (*(v1 + 16))
        {
          v5 = *(&off_100321A50 + v3 + 32);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v5);
          v6 = Hasher._finalize()();
          v7 = -1 << *(v1 + 32);
          v8 = v6 & ~v7;
          if ((*(v2 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            v9 = ~v7;
            while (*(*(v1 + 48) + v8) != v5)
            {
              v8 = (v8 + 1) & v9;
              if (((*(v2 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            if (!v5)
            {
              v11 = [objc_opt_self() mainBundle];
              v25 = 0x80000001002976B0;
              v12 = 0xD000000000000044;
              v13 = "iMessage is provided by Apple.";
              goto LABEL_23;
            }

            if (v5 == 1)
            {
              v10 = *(v26 + 16);
              if (!v10)
              {
                goto LABEL_30;
              }

              if (*(v10 + 64) && ((*(v10 + 128) | *(v10 + 136)) & 0x10) != 0)
              {
                v11 = [objc_opt_self() mainBundle];
                v12 = 0xD00000000000001ELL;
                v25 = 0x80000001002976B0;
                v13 = "le over satellite";
LABEL_23:
                v15 = v13 | 0x8000000000000000;
                v16.value._countAndFlagsBits = 0x5072656972726143;
                v16.value._object = 0xED00006E6F656769;
                v17._countAndFlagsBits = 0;
                v17._object = 0xE000000000000000;
                v18 = 0xD000000000000041;
                v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v16, v11, v17, *(&v25 - 1));

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_10017B338(0, *(v4 + 2) + 1, 1, v4);
                }

                v21 = *(v4 + 2);
                v20 = *(v4 + 3);
                if (v21 >= v20 >> 1)
                {
                  v4 = sub_10017B338((v20 > 1), v21 + 1, 1, v4);
                }

                *(v4 + 2) = v21 + 1;
                *&v4[16 * v21 + 32] = v19;
              }
            }

            else
            {
              v14 = *(v26 + 16);
              if (!v14)
              {
LABEL_30:
                type metadata accessor for StewieModel(0);
                v23 = &qword_1003561B8;
                v24 = type metadata accessor for StewieModel;
                goto LABEL_32;
              }

              if (*(v14 + 64) && ((*(v14 + 128) | *(v14 + 136)) & 0x20) != 0)
              {
                v11 = [objc_opt_self() mainBundle];
                v12 = 0xD000000000000036;
                v25 = 0x80000001002976B0;
                v13 = "c-icon.emergency-sos";
                goto LABEL_23;
              }
            }
          }
        }

LABEL_5:
        if (++v3 == 3)
        {

          return v4;
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for PartnerModel();
    v23 = &qword_1003561A8;
    v24 = type metadata accessor for PartnerModel;
LABEL_32:
    sub_10003A938(v23, v24);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100039090@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  v11 = ButtonStyleConfiguration.isPressed.getter();
  v12 = *(v2 + 48);
  v32 = *(v2 + 32);
  v33 = v12;
  v13 = *(v2 + 80);
  v34 = *(v2 + 64);
  v35 = v13;
  v14 = *(v2 + 16);
  v30 = *v2;
  v31 = v14;
  v15 = *(v2 + 96);
  v28 = *(v2 + 97);
  sub_10003A900(v2, v29);
  type metadata accessor for UIMetrics();
  sub_10003A938(&qword_100354D40, type metadata accessor for UIMetrics);
  v16 = EnvironmentObject.init()();
  v18 = v17;
  OpacityTransition.init()();
  (*(v5 + 16))(v8, v10, v4);
  sub_10003A938(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v19 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  v20 = v11 & 1;
  if (v20)
  {
    v21 = 0.3;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = static Edge.Set.all.getter();
  *a1 = v16;
  *(a1 + 8) = v18;
  v23 = v33;
  *(a1 + 48) = v32;
  *(a1 + 64) = v23;
  v24 = v35;
  *(a1 + 80) = v34;
  *(a1 + 96) = v24;
  result = *&v30;
  v26 = v31;
  *(a1 + 16) = v30;
  *(a1 + 32) = v26;
  *(a1 + 112) = v15;
  *(a1 + 113) = v28;
  *(a1 + 120) = v19;
  *(a1 + 128) = 0;
  *(a1 + 132) = v21;
  *(a1 + 136) = v22;
  *(a1 + 137) = v20;
  return result;
}

void *sub_100039344(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

void sub_10003938C(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v71 = objc_opt_self();
      v72 = [v71 mainBundle];
      v155._object = 0x8000000100297060;
      v73.value._countAndFlagsBits = 0x5072656972726143;
      v74._countAndFlagsBits = 0xD000000000000019;
      v74._object = 0x8000000100297040;
      v155._countAndFlagsBits = 0xD00000000000004ELL;
      v73.value._object = 0xED00006E6F656769;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v73, v72, v75, v155);
      object = v76._object;
      countAndFlagsBits = v76._countAndFlagsBits;

      v77 = [v71 mainBundle];
      v156._object = 0x8000000100297060;
      v78._countAndFlagsBits = 0x6F6D654420797254;
      v156._countAndFlagsBits = 0xD00000000000004ELL;
      v78._object = 0xE800000000000000;
      v79.value._countAndFlagsBits = 0x5072656972726143;
      v79.value._object = 0xED00006E6F656769;
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v156);
      v137 = v81._object;
      v138 = v81._countAndFlagsBits;

      v23 = a3;
      v82 = [v71 mainBundle];
      v157._object = 0x80000001002970D0;
      v83._countAndFlagsBits = 0xD00000000000001BLL;
      v83._object = 0x80000001002970B0;
      v157._countAndFlagsBits = 0xD000000000000054;
      v84.value._countAndFlagsBits = 0x5072656972726143;
      v84.value._object = 0xED00006E6F656769;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v157);
      v136 = v86._countAndFlagsBits;
      v22 = v86._object;

      v24 = [v71 mainBundle];
      v158._object = 0x80000001002970D0;
      v87._countAndFlagsBits = 0xD00000000000001BLL;
      v87._object = 0x80000001002970B0;
      v158._countAndFlagsBits = 0xD000000000000054;
      v88.value._countAndFlagsBits = 0x5072656972726143;
      v88.value._object = 0xED00006E6F656769;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v24, v89, v158);
      v29 = v90._countAndFlagsBits;
      v30 = v90._object;
      goto LABEL_10;
    }

    if (a1 == 4)
    {
      v31 = objc_opt_self();
      v32 = [v31 mainBundle];
      v147._object = 0x8000000100297230;
      v147._countAndFlagsBits = 0xD00000000000003DLL;
      v33._countAndFlagsBits = 0x736567617373654DLL;
      v33._object = 0xE800000000000000;
      v34.value._countAndFlagsBits = 0x5072656972726143;
      v34.value._object = 0xED00006E6F656769;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v147);
      object = v36._object;
      countAndFlagsBits = v36._countAndFlagsBits;

      v37 = [v31 mainBundle];
      v148._object = 0x8000000100297270;
      v148._countAndFlagsBits = 0xD000000000000043;
      v38._countAndFlagsBits = 0x736567617373654DLL;
      v38._object = 0xE800000000000000;
      v39.value._countAndFlagsBits = 0x5072656972726143;
      v39.value._object = 0xED00006E6F656769;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v148);
      v137 = v41._object;
      v138 = v41._countAndFlagsBits;

      v23 = a3;
      v42 = [v31 mainBundle];
      v149._object = 0x80000001002972E0;
      v43._countAndFlagsBits = 0xD000000000000019;
      v43._object = 0x80000001002972C0;
      v149._countAndFlagsBits = 0xD000000000000043;
      v44.value._countAndFlagsBits = 0x5072656972726143;
      v44.value._object = 0xED00006E6F656769;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v149);
      v136 = v46._countAndFlagsBits;
      v22 = v46._object;

      v24 = [v31 mainBundle];
      v150._object = 0x8000000100297230;
      v150._countAndFlagsBits = 0xD00000000000003DLL;
      v47._countAndFlagsBits = 0x736567617373654DLL;
      v47._object = 0xE800000000000000;
      v48.value._countAndFlagsBits = 0x5072656972726143;
      v48.value._object = 0xED00006E6F656769;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v24, v49, v150);
      v29 = v50._countAndFlagsBits;
      v30 = v50._object;
    }

    else
    {
      v112 = objc_opt_self();
      v113 = [v112 mainBundle];
      v163._object = 0x8000000100297230;
      v163._countAndFlagsBits = 0xD00000000000003DLL;
      v114._countAndFlagsBits = 0x736567617373654DLL;
      v114._object = 0xE800000000000000;
      v115.value._countAndFlagsBits = 0x5072656972726143;
      v115.value._object = 0xED00006E6F656769;
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      v117 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, v115, v113, v116, v163);
      object = v117._object;
      countAndFlagsBits = v117._countAndFlagsBits;

      v118 = [v112 mainBundle];
      v164._object = 0x8000000100297270;
      v164._countAndFlagsBits = 0xD000000000000043;
      v119._countAndFlagsBits = 0x736567617373654DLL;
      v119._object = 0xE800000000000000;
      v120.value._countAndFlagsBits = 0x5072656972726143;
      v120.value._object = 0xED00006E6F656769;
      v121._countAndFlagsBits = 0;
      v121._object = 0xE000000000000000;
      v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, v118, v121, v164);
      v137 = v122._object;
      v138 = v122._countAndFlagsBits;

      v123 = [v112 mainBundle];
      v165._object = 0x80000001002972E0;
      v124._countAndFlagsBits = 0xD000000000000019;
      v124._object = 0x80000001002972C0;
      v165._countAndFlagsBits = 0xD000000000000043;
      v125.value._countAndFlagsBits = 0x5072656972726143;
      v125.value._object = 0xED00006E6F656769;
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      v127 = NSLocalizedString(_:tableName:bundle:value:comment:)(v124, v125, v123, v126, v165);
      v136 = v127._countAndFlagsBits;
      v22 = v127._object;

      v24 = [v112 mainBundle];
      v166._object = 0x8000000100297350;
      v128._countAndFlagsBits = 0xD00000000000001CLL;
      v128._object = 0x8000000100297330;
      v166._countAndFlagsBits = 0xD000000000000052;
      v129.value._countAndFlagsBits = 0x5072656972726143;
      v129.value._object = 0xED00006E6F656769;
      v130._countAndFlagsBits = 0;
      v130._object = 0xE000000000000000;
      v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, v129, v24, v130, v166);
      v29 = v131._countAndFlagsBits;
      v30 = v131._object;
      v23 = a3;
    }

LABEL_13:
    v91 = &selRef_initWithBundleIdentifier_;
    goto LABEL_14;
  }

  if (!a1)
  {
    v51 = objc_opt_self();
    v52 = [v51 mainBundle];
    v151._object = 0x8000000100297530;
    v53._object = 0xED0000534F532079;
    v151._countAndFlagsBits = 0xD000000000000042;
    v53._countAndFlagsBits = 0x636E656772656D45;
    v54.value._countAndFlagsBits = 0x5072656972726143;
    v54.value._object = 0xED00006E6F656769;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v151);
    object = v56._object;
    countAndFlagsBits = v56._countAndFlagsBits;

    v57 = [v51 mainBundle];
    v152._object = 0x8000000100297580;
    v152._countAndFlagsBits = 0xD000000000000048;
    v58._countAndFlagsBits = 0x636E656772656D45;
    v58._object = 0xE900000000000079;
    v59.value._countAndFlagsBits = 0x5072656972726143;
    v59.value._object = 0xED00006E6F656769;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v152);
    v137 = v61._object;
    v138 = v61._countAndFlagsBits;

    v62 = [v51 mainBundle];
    v153._object = 0x80000001002975F0;
    v63._countAndFlagsBits = 0xD00000000000001ALL;
    v63._object = 0x80000001002975D0;
    v153._countAndFlagsBits = 0xD000000000000048;
    v64.value._countAndFlagsBits = 0x5072656972726143;
    v64.value._object = 0xED00006E6F656769;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, v153);
    v136 = v66._countAndFlagsBits;
    v22 = v66._object;

    v24 = [v51 mainBundle];
    v154._object = 0x8000000100297530;
    v154._countAndFlagsBits = 0xD000000000000042;
    v67._countAndFlagsBits = 0x636E656772656D45;
    v67._object = 0xED0000534F532079;
    v68.value._countAndFlagsBits = 0x5072656972726143;
    v68.value._object = 0xED00006E6F656769;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v24, v69, v154);
    v29 = v70._countAndFlagsBits;
    v30 = v70._object;
    v23 = a3;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    v92 = objc_opt_self();
    v93 = [v92 mainBundle];
    v159._object = 0x8000000100297160;
    v94._countAndFlagsBits = 0x794D20646E6946;
    v159._countAndFlagsBits = 0xD00000000000003CLL;
    v94._object = 0xE700000000000000;
    v95.value._countAndFlagsBits = 0x5072656972726143;
    v95.value._object = 0xED00006E6F656769;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, v95, v93, v96, v159);
    object = v97._object;
    countAndFlagsBits = v97._countAndFlagsBits;

    v98 = [v92 mainBundle];
    v160._object = 0x8000000100297160;
    v99._countAndFlagsBits = 0x636F4C20646E6553;
    v99._object = 0xED00006E6F697461;
    v160._countAndFlagsBits = 0xD00000000000003CLL;
    v100.value._countAndFlagsBits = 0x5072656972726143;
    v100.value._object = 0xED00006E6F656769;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v100, v98, v101, v160);
    v137 = v102._object;
    v138 = v102._countAndFlagsBits;

    v103 = [v92 mainBundle];
    v161._object = 0x80000001002971C0;
    v104._countAndFlagsBits = 0xD000000000000016;
    v104._object = 0x80000001002971A0;
    v161._countAndFlagsBits = 0xD000000000000042;
    v105.value._countAndFlagsBits = 0x5072656972726143;
    v105.value._object = 0xED00006E6F656769;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v161);
    v136 = v107._countAndFlagsBits;
    v22 = v107._object;

    v23 = a3;

    v24 = [v92 mainBundle];
    v162._object = 0x8000000100297160;
    v162._countAndFlagsBits = 0xD00000000000003CLL;
    v108._countAndFlagsBits = 0x794D20646E6946;
    v108._object = 0xE700000000000000;
    v109.value._countAndFlagsBits = 0x5072656972726143;
    v109.value._object = 0xED00006E6F656769;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v24, v110, v162);
    v29 = v111._countAndFlagsBits;
    v30 = v111._object;
    goto LABEL_13;
  }

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v143._object = 0x80000001002973F0;
  v8._object = 0x80000001002973D0;
  v143._countAndFlagsBits = 0xD000000000000048;
  v8._countAndFlagsBits = 0xD000000000000013;
  v9.value._countAndFlagsBits = 0x5072656972726143;
  v9.value._object = 0xED00006E6F656769;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v143);
  object = v11._object;
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = [v6 mainBundle];
  v144._object = 0x8000000100297440;
  v13._countAndFlagsBits = 0x6564697364616F52;
  v144._countAndFlagsBits = 0xD00000000000004ELL;
  v13._object = 0xE800000000000000;
  v14.value._countAndFlagsBits = 0x5072656972726143;
  v14.value._object = 0xED00006E6F656769;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v144);
  v137 = v16._object;
  v138 = v16._countAndFlagsBits;

  v17 = [v6 mainBundle];
  v145._object = 0x80000001002974B0;
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x8000000100297490;
  v145._countAndFlagsBits = 0xD00000000000004ELL;
  v19.value._countAndFlagsBits = 0x5072656972726143;
  v19.value._object = 0xED00006E6F656769;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v145);
  v136 = v21._countAndFlagsBits;
  v22 = v21._object;

  v23 = a3;

  v24 = [v6 mainBundle];
  v146._object = 0x80000001002973F0;
  v25._object = 0x80000001002973D0;
  v146._countAndFlagsBits = 0xD000000000000048;
  v25._countAndFlagsBits = 0xD000000000000013;
  v26.value._countAndFlagsBits = 0x5072656972726143;
  v26.value._object = 0xED00006E6F656769;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v146);
  v29 = v28._countAndFlagsBits;
  v30 = v28._object;
LABEL_10:
  v91 = &selRef_initWithType_;
LABEL_14:

  v132 = objc_allocWithZone(ISIcon);
  v133 = String._bridgeToObjectiveC()();
  v134 = [v132 *v91];

  *a4 = a1;
  *(a4 + 8) = countAndFlagsBits;
  *(a4 + 16) = object;
  *(a4 + 24) = v138;
  *(a4 + 32) = v137;
  *(a4 + 40) = v136;
  *(a4 + 48) = v22;
  *(a4 + 56) = a2;
  *(a4 + 64) = v23;
  *(a4 + 72) = v29;
  *(a4 + 80) = v30;
  *(a4 + 88) = v134;
}

Swift::Int sub_100039FD4(Swift::Int result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16) || !*(a2 + 16))
  {
    return 0;
  }

  v29 = result;
  v4 = *(a3 + 16);
  if (!v4)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_29:
    if (*(v8 + 2))
    {
      sub_100021930(v8, v29);
      v28 = v27;

      return v28;
    }

    return 0;
  }

  v5 = 0;
  v6 = a3 + 32;
  v7 = a2 + 56;
  v8 = _swiftEmptyArrayStorage;
  v30 = a3 + 32;
  while (v5 < v4)
  {
    v9 = (v6 + 96 * v5);
    v10 = v9[3];
    v43 = v9[2];
    v44 = v10;
    v11 = v9[5];
    v45 = v9[4];
    v46 = v11;
    v12 = v9[1];
    v41 = *v9;
    v42 = v12;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_34;
    }

    v14 = v41;
    if (v41 != 4)
    {
      goto LABEL_14;
    }

    if (*(a2 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5uLL);
      result = Hasher._finalize()();
      v15 = -1 << *(a2 + 32);
      v16 = result & ~v15;
      if ((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(a2 + 48) + v16) != 5)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        sub_10003A6A4(&v41, v40);
        sub_10003938C(5u, 0, 0, v47);
        sub_10003A700(&v41);
        v38 = v56;
        v39 = v58;
        v36 = v54;
        v37 = v57;
        v34 = v52;
        v35 = v55;
        v32 = v50;
        v33 = v53;
        v31 = v51;
        v21 = v48;
        v22 = v49;
        LOBYTE(v14) = v47[0];
        goto LABEL_22;
      }

LABEL_14:
      if (!*(a2 + 16))
      {
        goto LABEL_5;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v18 = -1 << *(a2 + 32);
      v19 = result & ~v18;
      if (((*(v7 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }

      v20 = ~v18;
      while (*(*(a2 + 48) + v19) != v14)
      {
        v19 = (v19 + 1) & v20;
        if (((*(v7 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v38 = *(&v45 + 1);
      v39 = *(&v46 + 1);
      v36 = *(&v44 + 1);
      v37 = v46;
      v34 = *(&v43 + 1);
      v35 = v45;
      v32 = *(&v42 + 1);
      v33 = v44;
      v31 = v43;
      v21 = *(&v41 + 1);
      v22 = v42;
      sub_10003A6A4(&v41, v40);
LABEL_22:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10017B780(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_10017B780((v23 > 1), v24 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v24 + 1;
      v25 = &v8[96 * v24];
      v25[32] = v14;
      v26 = *&v40[3];
      *(v25 + 33) = *v40;
      *(v25 + 9) = v26;
      *(v25 + 5) = v21;
      *(v25 + 6) = v22;
      *(v25 + 7) = v32;
      *(v25 + 8) = v31;
      *(v25 + 9) = v34;
      *(v25 + 10) = v33;
      *(v25 + 11) = v36;
      *(v25 + 12) = v35;
      *(v25 + 13) = v38;
      *(v25 + 14) = v37;
      *(v25 + 15) = v39;
      v6 = v30;
      if (v5 == v4)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_5:
      if (v5 == v4)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_10003A334(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_34;
  }

  if (!*(a2 + 80))
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);

  if (!v6)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v8 = 0;
  v29 = a1 + 32;
  v32 = v7 + 32;
  v9 = _swiftEmptyArrayStorage;
  v28 = a1;
  v26 = _swiftEmptyArrayStorage;
LABEL_9:
  if (__OFADD__(v8, 1))
  {
    goto LABEL_33;
  }

  v31 = v8 + 1;
  v13 = *(v7 + 16);
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = 0;
  v15 = (v29 + 96 * v8);
  v16 = *v15;
  v30 = *(v15 + 4);
  v9 = *(v15 + 11);
  while (v14 < *(v7 + 16))
  {
    v17 = (v32 + 16 * v14);
    v4 = v17[1];
    if (*(v4 + 16))
    {
      v2 = *v17;
      v3 = v7;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v7 = v3;
      if ((*(v4 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (*(*(v4 + 48) + v20) != v16)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v4 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_6;
      }
    }

LABEL_12:
    if (++v14 == v13)
    {
LABEL_7:
      while (1)
      {
        v8 = v31;
        if (v31 == v6)
        {
          break;
        }

        if (v31 < v6)
        {
          goto LABEL_9;
        }

        while (1)
        {
          __break(1u);
LABEL_6:
          v10 = v9;

          v9 = v30;

          v27 = sub_100039FD4(v2, v4, v28);
          v12 = v11;

          v7 = v3;
          if (!v12)
          {
            break;
          }

          v9 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_10017B338(0, *(v26 + 2) + 1, 1, v26);
          }

          v23 = *(v9 + 2);
          v22 = *(v9 + 3);
          v2 = v23 + 1;
          v8 = v31;
          if (v23 >= v22 >> 1)
          {
            v9 = sub_10017B338((v22 > 1), v23 + 1, 1, v9);
          }

          v7 = v3;
          *(v9 + 2) = v2;
          v24 = &v9[16 * v23];
          *(v24 + 4) = v27;
          *(v24 + 5) = v12;
          if (v31 == v6)
          {
            goto LABEL_30;
          }

          v26 = v9;
          if (v31 < v6)
          {
            goto LABEL_9;
          }
        }
      }

      v9 = v26;
LABEL_30:

      return v9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  type metadata accessor for PartnerModel();
  sub_10003A938(&qword_1003561A8, type metadata accessor for PartnerModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003A754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10003A79C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10003A804(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10003A830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_10003A878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A938(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003A984()
{
  result = qword_100356B90;
  if (!qword_100356B90)
  {
    sub_100008CF0(&qword_100356B98);
    sub_10003AA3C();
    sub_100009274(&qword_100356C08, &qword_100356C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B90);
  }

  return result;
}

unint64_t sub_10003AA3C()
{
  result = qword_100356BA0;
  if (!qword_100356BA0)
  {
    sub_100008CF0(&qword_100356BA8);
    sub_10003AAF4();
    sub_100009274(&qword_100356BF8, &qword_100356C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BA0);
  }

  return result;
}

unint64_t sub_10003AAF4()
{
  result = qword_100356BB0;
  if (!qword_100356BB0)
  {
    sub_100008CF0(&qword_100356BB8);
    sub_10003ABAC();
    sub_100009274(&qword_100356BE8, &qword_100356BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BB0);
  }

  return result;
}

unint64_t sub_10003ABAC()
{
  result = qword_100356BC0;
  if (!qword_100356BC0)
  {
    sub_100008CF0(&qword_100356BC8);
    sub_10003AC64();
    sub_100009274(&qword_100356BD8, &qword_100356BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BC0);
  }

  return result;
}

unint64_t sub_10003AC64()
{
  result = qword_100356BD0;
  if (!qword_100356BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BD0);
  }

  return result;
}

uint64_t sub_10003ACB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003AD00(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10003AD78@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1000040A8(&qword_100356C18);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v41 = sub_1000040A8(&qword_100356C20);
  __chkstk_darwin(v41);
  v44 = &v40 - v5;
  v43 = sub_1000040A8(&qword_100356C28);
  __chkstk_darwin(v43);
  v7 = &v40 - v6;
  v42 = sub_1000040A8(&qword_100356C30);
  __chkstk_darwin(v42);
  v9 = &v40 - v8;
  v10 = *v1;
  if (*v1)
  {
    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    sub_1000088DC((v10 + 48), v11);
    v13 = *(v12 + 24);

    v13(v46, v11, v12);
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v14 = sub_1000040A8(&qword_100356C38);
    sub_10003B23C(v1, &v4[*(v14 + 44)]);
    v15 = *(v10 + 112);
    v16 = static UIContentSizeCategory.>= infix(_:_:)();

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *(*sub_1000088DC(v46, v47) + 72);
    }

    v18 = *(v10 + 112);

    v19 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v19)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = *(*sub_1000088DC(v46, v47) + 72);
    }

    static Alignment.center.getter();
    if (v17 > v20)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v22 = v44;
    sub_10000CF4C(v4, v44, &qword_100356C18);
    v23 = (v22 + *(v41 + 36));
    v24 = v53;
    v23[4] = v52;
    v23[5] = v24;
    v23[6] = v54;
    v25 = v49;
    *v23 = v48;
    v23[1] = v25;
    v26 = v51;
    v23[2] = v50;
    v23[3] = v26;
    v27 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_10000CF4C(v22, v7, &qword_100356C20);
    v36 = &v7[*(v43 + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Edge.Set.bottom.getter();
    sub_10000CF4C(v7, v9, &qword_100356C28);
    v38 = &v9[*(v42 + 36)];
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v38[40] = 1;
    sub_10000CF4C(v9, v45, &qword_100356C30);
    return sub_100008964(v46);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003B23C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v100 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100356C40);
  v10 = __chkstk_darwin(v9 - 8);
  v108 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v89 - v12;
  v90 = a1;
  v13 = a1[2];
  v14 = a1[3];
  *&v115 = v13;
  *(&v115 + 1) = v14;
  v15 = sub_100031770();

  v99 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v21 = *(v6 + 104);
  v97 = enum case for Font.Leading.tight(_:);
  v98 = v6 + 104;
  v96 = v21;
  v21(v8);
  Font.leading(_:)();

  v22 = *(v6 + 8);
  v103 = v8;
  v104 = v5;
  v105 = v6 + 8;
  v95 = v22;
  v22(v8, v5);
  v23 = v90;
  v24 = Text.font(_:)();
  v93 = v26;
  v94 = v25;
  v92 = v27;

  sub_1000317C4(v16, v18, v20 & 1);

  v28 = *v23;
  if (*v23)
  {
    v29 = *(v28 + 72);
    v30 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v29);
    v31 = *(v30 + 24);
    swift_retain_n();
    v31(&v115, v29, v30);
    sub_100008964(&v115);
    v32 = *(v28 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v33 = *(v28 + 72);
    v34 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v33);
    (*(v34 + 24))(&v115, v33, v34);
    static Alignment.leading.getter();
    sub_100008964(&v115);
    v35 = *(v28 + 112);
    v109 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v130[55] = v135;
    *&v130[71] = v136;
    *&v130[87] = v137;
    *&v130[103] = v138;
    *&v130[7] = v132;
    *&v130[23] = v133;
    v36 = v92 & 1;
    v131 = v92 & 1;
    *&v130[39] = v134;
    v37 = *(v28 + 112);

    v38 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v38)
    {
      v39 = 1.0;
    }

    else
    {
      v39 = 0.5;
    }

    v40 = swift_getKeyPath();
    *(&v117[4] + 9) = *&v130[64];
    *(&v117[5] + 9) = *&v130[80];
    *(&v117[6] + 9) = *&v130[96];
    *(v117 + 9) = *v130;
    *(&v117[1] + 9) = *&v130[16];
    *(&v117[2] + 9) = *&v130[32];
    *&v115 = v24;
    *(&v115 + 1) = v94;
    LOBYTE(v116) = v36;
    *(&v116 + 1) = v93;
    *&v117[0] = KeyPath;
    BYTE8(v117[0]) = 0;
    *(&v117[3] + 9) = *&v130[48];
    *(&v117[7] + 1) = *&v130[111];
    *&v118 = v40;
    *(&v118 + 1) = v39;
    v41 = v100;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48);
    sub_10003BE30();
    View.accessibility(addTraits:)();
    (*(v101 + 8))(v41, v102);
    v129[8] = v117[6];
    v129[9] = v117[7];
    v129[10] = v118;
    v129[4] = v117[2];
    v129[5] = v117[3];
    v129[6] = v117[4];
    v129[7] = v117[5];
    v129[0] = v115;
    v129[1] = v116;
    v129[2] = v117[0];
    v129[3] = v117[1];
    sub_100008FA0(v129, &qword_100356C48);
    v42 = v23[5];
    *&v115 = v23[4];
    *(&v115 + 1) = v42;

    v43 = Text.init<A>(_:)();
    v45 = v44;
    v47 = v46;
    static Font.body.getter();
    v48 = v103;
    v49 = v104;
    v96(v103, v97, v104);
    Font.leading(_:)();

    v95(v48, v49);
    v50 = Text.font(_:)();
    v103 = v51;
    v104 = v50;
    v53 = v52;
    v105 = v54;

    sub_1000317C4(v43, v45, v47 & 1);

    v55 = *(v28 + 72);
    v56 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v55);
    (*(v56 + 24))(&v115, v55, v56);
    sub_100008964(&v115);
    v57 = *(v28 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    v102 = swift_getKeyPath();
    static Alignment.center.getter();
    v58 = *(v28 + 72);
    v59 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v58);
    (*(v59 + 24))(&v115, v58, v59);
    static Alignment.leading.getter();
    sub_100008964(&v115);
    v60 = *(v28 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v124[55] = v142;
    *&v124[71] = v143;
    *&v124[87] = v144;
    *&v124[103] = v145;
    *&v124[7] = v139;
    *&v124[23] = v140;
    v126 = v53 & 1;
    v61 = v53 & 1;
    LODWORD(v101) = v61;
    *&v124[39] = v141;
    v62 = *(v28 + 112);

    v63 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v63)
    {
      v64 = 1.0;
    }

    else
    {
      v64 = 0.5;
    }

    v65 = swift_getKeyPath();
    v66 = static Edge.Set.top.getter();
    v127 = 1;
    v68 = v107;
    v67 = v108;
    sub_100006C20(v107, v108, &qword_100356C40);
    v69 = v67;
    v70 = v106;
    sub_100006C20(v69, v106, &qword_100356C40);
    v71 = sub_1000040A8(&qword_100356C68);
    v72 = (v70 + *(v71 + 48));
    v73 = v103;
    v74 = v104;
    *&v110 = v104;
    *(&v110 + 1) = v103;
    LOBYTE(v111) = v61;
    *(&v111 + 1) = *v125;
    DWORD1(v111) = *&v125[3];
    v75 = v105;
    v76 = v102;
    *(&v111 + 1) = v105;
    *&v112[0] = v102;
    BYTE8(v112[0]) = 0;
    *(&v112[4] + 9) = *&v124[64];
    *(&v112[5] + 9) = *&v124[80];
    *(&v112[6] + 9) = *&v124[96];
    *(v112 + 9) = *v124;
    *(&v112[1] + 9) = *&v124[16];
    *(&v112[2] + 9) = *&v124[32];
    *(&v112[3] + 9) = *&v124[48];
    *(&v112[7] + 1) = *&v124[111];
    *&v113 = v65;
    *(&v113 + 1) = v64;
    LOBYTE(v114[0]) = v66;
    *(v114 + 1) = *v128;
    DWORD1(v114[0]) = *&v128[3];
    *(v114 + 8) = 0u;
    *(&v114[1] + 8) = 0u;
    BYTE8(v114[2]) = 1;
    v77 = v111;
    *v72 = v110;
    v72[1] = v77;
    v78 = v112[0];
    v79 = v112[1];
    v80 = v112[3];
    v72[4] = v112[2];
    v72[5] = v80;
    v72[2] = v78;
    v72[3] = v79;
    v81 = v112[4];
    v82 = v112[5];
    v83 = v112[7];
    v72[8] = v112[6];
    v72[9] = v83;
    v72[6] = v81;
    v72[7] = v82;
    v84 = v113;
    v85 = v114[0];
    v86 = v114[1];
    *(v72 + 201) = *(&v114[1] + 9);
    v72[11] = v85;
    v72[12] = v86;
    v72[10] = v84;
    v87 = v70 + *(v71 + 64);
    *v87 = 0;
    *(v87 + 8) = 1;
    sub_100006C20(&v110, &v115, &qword_100356C70);
    sub_100008FA0(v68, &qword_100356C40);
    *(&v117[4] + 9) = *&v124[64];
    *(&v117[5] + 9) = *&v124[80];
    *(&v117[6] + 9) = *&v124[96];
    *(v117 + 9) = *v124;
    *(&v117[1] + 9) = *&v124[16];
    *(&v117[2] + 9) = *&v124[32];
    *&v115 = v74;
    *(&v115 + 1) = v73;
    LOBYTE(v116) = v101;
    *(&v116 + 1) = *v125;
    DWORD1(v116) = *&v125[3];
    *(&v116 + 1) = v75;
    *&v117[0] = v76;
    BYTE8(v117[0]) = 0;
    *(&v117[3] + 9) = *&v124[48];
    *(&v117[7] + 1) = *&v124[111];
    *&v118 = v65;
    *(&v118 + 1) = v64;
    v119 = v66;
    *v120 = *v128;
    *&v120[3] = *&v128[3];
    v121 = 0u;
    v122 = 0u;
    v123 = 1;
    sub_100008FA0(&v115, &qword_100356C70);
    return sub_100008FA0(v108, &qword_100356C40);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10003BDC8()
{
  result = qword_100354D40;
  if (!qword_100354D40)
  {
    type metadata accessor for UIMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354D40);
  }

  return result;
}

unint64_t sub_10003BE30()
{
  result = qword_100356C50;
  if (!qword_100356C50)
  {
    sub_100008CF0(&qword_100356C48);
    sub_100031A2C();
    sub_100009274(&qword_100356C58, &qword_100356C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356C50);
  }

  return result;
}

uint64_t sub_10003BF5C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003BFE0()
{
  result = qword_100356C88;
  if (!qword_100356C88)
  {
    sub_100008CF0(&qword_100356C20);
    sub_100009274(&qword_100356C90, &qword_100356C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356C88);
  }

  return result;
}

uint64_t sub_10003C098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = sub_1000040A8(&qword_100356C98);
  __chkstk_darwin(v75);
  v76 = &v70 - v4;
  v5 = sub_1000040A8(&qword_100356CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v74 = &v70 - v7;
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = v8[9];
    v10 = v8[10];
    sub_1000088DC(v8 + 6, v9);
    (*(v10 + 24))(v89, v9, v10);
    v79 = *(v1 + 48);
    sub_1000040A8(&qword_100356CA8);
    State.wrappedValue.getter();
    v11 = *(v1 + 32);
    if (!v11)
    {
      type metadata accessor for QuestionnaireState();
      v68 = &qword_100354D50;
      v69 = type metadata accessor for QuestionnaireState;
      goto LABEL_24;
    }

    v12 = *&v88[0];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();
    v72 = v5;
    v73 = a1;
    v71 = v6;
    if (Strong && (, swift_unknownObjectRelease(), v14 = *(v11 + 344), v15 = *(v14 + 64), v16 = *(v14 + 80), , v16 != 1))
    {
      if (v15 >= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v15;
      }
    }

    else if (v12 >= 10)
    {
      v17 = 10;
    }

    else
    {
      v17 = v12;
    }

    v18 = *(v2 + 64);
    v19 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
    v20 = [v18 stringFromNumber:v19];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      *&v79 = v17;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v24;
    }

    v25 = static VerticalAlignment.center.getter();
    v87 = 1;
    sub_1000089B0(v89, v88);
    v26 = swift_allocObject();
    sub_100008A18(v88, v26 + 16);
    *(v26 + 56) = v17;
    v27 = *(v2 + 48);
    *(v26 + 96) = *(v2 + 32);
    *(v26 + 112) = v27;
    v28 = *(v2 + 64);
    v29 = *(v2 + 16);
    *(v26 + 64) = *v2;
    *(v26 + 80) = v29;
    *(v26 + 128) = v28;
    *(v26 + 136) = v21;
    *(v26 + 144) = v23;
    v30 = swift_allocObject();
    v31 = *(v2 + 48);
    *(v30 + 48) = *(v2 + 32);
    *(v30 + 64) = v31;
    *(v30 + 80) = *(v2 + 64);
    v32 = *(v2 + 16);
    *(v30 + 16) = *v2;
    *(v30 + 32) = v32;
    sub_10003F398(v2, &v79);
    sub_10003F398(v2, &v79);
    type metadata accessor for UIMetrics();
    sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics);

    v33 = EnvironmentObject.init()();
    v35 = v34;
    type metadata accessor for CGSize(0);
    v77 = 0;
    v78 = 0;
    State.init(wrappedValue:)();

    v36 = v80;
    v37 = v79;
    v79 = v25;
    LOBYTE(v80) = v87;
    *(&v80 + 1) = v33;
    *&v81 = v35;
    *(&v81 + 1) = sub_10003F37C;
    *&v82 = v26;
    *(&v82 + 1) = sub_10003F390;
    *&v83[0] = v30;
    *(v83 + 8) = v37;
    *(&v83[1] + 1) = v36;
    swift_beginAccess();
    if (*(*(v11 + 144) + 16))
    {

      sub_1000040A8(&qword_100356CB0);
      sub_100009274(&qword_100356CB8, &qword_100356CB0);
      v38 = v76;
      View.navigationBarBackButtonHidden(_:)();
      v88[2] = v81;
      v88[3] = v82;
      v88[4] = v83[0];
      v88[5] = v83[1];
      v88[0] = v79;
      v88[1] = v80;
      sub_100008FA0(v88, &qword_100356CB0);
      v39 = swift_allocObject();
      v40 = *(v2 + 48);
      *(v39 + 48) = *(v2 + 32);
      *(v39 + 64) = v40;
      *(v39 + 80) = *(v2 + 64);
      v41 = *(v2 + 16);
      *(v39 + 16) = *v2;
      *(v39 + 32) = v41;
      v42 = v75;
      v43 = &v38[*(v75 + 36)];
      *v43 = sub_10003F3D0;
      v43[1] = v39;
      v43[2] = 0;
      v43[3] = 0;
      sub_10003F3D8(v11 + 48, &v79);
      v44 = v85;
      if (v85)
      {
        v45 = v86;
        v46 = sub_1000088DC(v84, v85);
        v47 = *(v44 - 8);
        v48 = __chkstk_darwin(v46);
        v50 = &v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v50, v48);
        sub_10003F398(v2, &v77);
        sub_10003F434(&v79);
        v51 = (*(v45 + 24))(v44, v45);

        (*(v47 + 8))(v50, v44);
        v42 = v75;
      }

      else
      {
        sub_10003F398(v2, &v77);

        sub_10003F434(&v79);
        v51 = 0;
      }

      v77 = v51;
      LOBYTE(v78) = v44 == 0;
      v52 = swift_allocObject();
      v53 = *(v2 + 48);
      *(v52 + 48) = *(v2 + 32);
      *(v52 + 64) = v53;
      *(v52 + 80) = *(v2 + 64);
      v54 = *(v2 + 16);
      *(v52 + 16) = *v2;
      *(v52 + 32) = v54;
      sub_10003F398(v2, &v79);
      v55 = sub_1000040A8(&qword_100356CC0);
      v56 = sub_10003F490();
      v57 = sub_10003F58C();
      v58 = v74;
      v59 = v76;
      View.onChange<A>(of:initial:_:)();

      sub_10003F608(v59);
      v60 = *(v11 + 144);
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = *(v60 + v61 + 31);

        LOBYTE(v77) = v62;
        v63 = swift_allocObject();
        v64 = *(v2 + 48);
        *(v63 + 48) = *(v2 + 32);
        *(v63 + 64) = v64;
        *(v63 + 80) = *(v2 + 64);
        v65 = *(v2 + 16);
        *(v63 + 16) = *v2;
        *(v63 + 32) = v65;
        sub_10003F398(v2, &v79);
        *&v79 = v42;
        *(&v79 + 1) = v55;
        *&v80 = v56;
        *(&v80 + 1) = v57;
        swift_getOpaqueTypeConformance2();
        sub_10003F67C();
        v66 = v72;
        View.onChange<A>(of:initial:_:)();

        (*(v71 + 8))(v58, v66);
        return sub_100008964(v89);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  type metadata accessor for UIMetrics();
  v68 = &qword_100354D40;
  v69 = type metadata accessor for UIMetrics;
LABEL_24:
  sub_10003F208(v68, v69);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double sub_10003C93C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = static HorizontalAlignment.center.getter();
  v12 = 0;
  sub_10003CA80(v2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_100006C20(__dst, &v9, &qword_100356CE0);
  sub_100008FA0(v14, &qword_100356CE0);
  memcpy(&v11[7], __dst, 0x348uLL);
  v6 = v12;
  v7 = static Edge.Set.all.getter();
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v6;
  memcpy((v4 + 17), v11, 0x34FuLL);
  *(v4 + 864) = v7;
  *(v4 + 872) = 0;
  result = 38.0;
  *(v4 + 880) = xmmword_10027A410;
  *(v4 + 896) = 0x4043000000000000;
  *(v4 + 904) = 0;
  return result;
}

uint64_t sub_10003CA80(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for AccessibilityTraits();
  v138 = *(v13 - 8);
  __chkstk_darwin(v13);
  v137 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100356CE8);
  __chkstk_darwin(v15 - 8);
  v136 = &v127 - v16;
  v163 = type metadata accessor for Font.Leading();
  v165 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static Alignment.center.getter();
  v20 = v19;
  v134 = v4;
  v135 = v2;
  sub_10003DBB0(v8, v6, v4, v2, v215);
  memcpy(v250, v215, sizeof(v250));
  memcpy(v251, v215, sizeof(v251));
  sub_100006C20(v250, v167, &qword_100356CF0);
  sub_100008FA0(v251, &qword_100356CF0);
  memcpy(v255, v250, sizeof(v255));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = *(v6 + 16);
  if (v21)
  {
    v22 = *(v21 + 112);
    swift_retain_n();
    v23 = v22;
    v164 = UIContentSizeCategoryAccessibilityExtraLarge;
    v24 = static UIContentSizeCategory.>= infix(_:_:)();

    v147 = v21;
    v160 = v20;
    v161 = v18;
    v139 = v13;
    v140 = v12;
    if (v24)
    {
      v158 = 0x4030000000000000;
      v159 = 0;
      v156 = 0x4030000000000000;
      v157 = 0;
    }

    else
    {
      v25 = sub_1000088DC(v10, v10[3]);
      v26 = *v25;
      v27 = *(*v25 + 104);
      v158 = *(*v25 + 96);
      v159 = v27;
      v29 = *(v26 + 112);
      v28 = *(v26 + 120);
      v156 = v29;
      v157 = v28;
    }

    v155 = static Edge.Set.all.getter();
    memcpy(v235, v255, 0x148uLL);
    v232 = v252;
    v233 = v253;
    v234 = v254;
    v235[328] = 0;
    v133 = objc_opt_self();
    v30 = [v133 mainBundle];
    v256._object = 0x80000001002977C0;
    v31._object = 0x80000001002977A0;
    v256._countAndFlagsBits = 0xD000000000000069;
    v31._countAndFlagsBits = 0xD000000000000011;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v256);

    *v215 = v33;
    v142 = sub_100031770();
    v34 = Text.init<A>(_:)();
    v36 = v35;
    v38 = v37;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v39 = v165;
    v40 = *(v165 + 104);
    v42 = v162;
    v41 = v163;
    v146 = enum case for Font.Leading.tight(_:);
    v144 = v40;
    v145 = v165 + 104;
    v40(v162);
    Font.leading(_:)();

    v43 = *(v39 + 8);
    v165 = v39 + 8;
    v143 = v43;
    v43(v42, v41);
    v44 = Text.font(_:)();
    v46 = v45;
    LOBYTE(v39) = v47;

    sub_1000317C4(v34, v36, v38 & 1);

    static Color.white.getter();
    v48 = Text.foregroundColor(_:)();
    v152 = v49;
    v153 = v48;
    v51 = v50;
    v154 = v52;

    sub_1000317C4(v44, v46, v39 & 1);

    v53 = v147;
    v54 = *(v147 + 112);

    v141 = static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    v55 = *(v53 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v226[55] = v239;
    *&v226[71] = v240;
    *&v226[87] = v241;
    *&v226[103] = v242;
    *&v226[7] = v236;
    *&v226[23] = v237;
    v150 = v51 & 1;
    v228 = v51 & 1;
    *&v226[39] = v238;
    v56 = *(v53 + 112);

    v128 = static UIContentSizeCategory.>= infix(_:_:)();

    v149 = swift_getKeyPath();
    v148 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v229 = 0;
    v65 = [v133 mainBundle];
    v257._object = 0x8000000100297830;
    v66._countAndFlagsBits = 0xD000000000000025;
    v66._object = 0x8000000100296E60;
    v257._countAndFlagsBits = 0xD000000000000076;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v257);

    *v215 = v68;
    v69 = Text.init<A>(_:)();
    v71 = v70;
    v73 = v72;
    static Font.title2.getter();
    v75 = v162;
    v74 = v163;
    v144(v162, v146, v163);
    Font.leading(_:)();

    v143(v75, v74);
    v76 = Text.font(_:)();
    v78 = v77;
    LOBYTE(v75) = v79;

    v80 = v73 & 1;
    v81 = v147;
    sub_1000317C4(v69, v71, v80);

    static Color.white.getter();
    v82 = Text.foregroundColor(_:)();
    v131 = v83;
    v132 = v82;
    v85 = v84;
    v133 = v86;

    sub_1000317C4(v76, v78, v75 & 1);

    v87 = *(v81 + 112);

    v88 = static UIContentSizeCategory.>= infix(_:_:)();

    v130 = swift_getKeyPath();
    v89 = *(v81 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    v129 = (v88 & 1) == 0;
    v90 = 0.5;
    if (v128)
    {
      v91 = 1.0;
    }

    else
    {
      v91 = 0.5;
    }

    v141 = (v141 & 1) == 0;
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v223[55] = v246;
    *&v223[71] = v247;
    *&v223[87] = v248;
    *&v223[103] = v249;
    *&v223[7] = v243;
    *&v223[23] = v244;
    v128 = v85 & 1;
    v225 = v85 & 1;
    *&v223[39] = v245;
    v92 = *(v81 + 112);

    v93 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v93)
    {
      v90 = 1.0;
    }

    v164 = swift_getKeyPath();
    v215[0] = v134;
    v215[1] = v135;

    v94 = Text.init<A>(_:)();
    v96 = v95;
    v98 = v97;
    v215[0] = static Color.red.getter();
    v99 = Text.foregroundStyle<A>(_:)();
    v101 = v100;
    v103 = v102;
    v147 = v104;
    sub_1000317C4(v94, v96, v98 & 1);

    static Font.title.getter();
    v106 = v162;
    v105 = v163;
    v144(v162, v146, v163);
    Font.leading(_:)();

    v143(v106, v105);
    Font.monospacedDigit()();

    v107 = Text.font(_:)();
    v109 = v108;
    v111 = v110;

    sub_1000317C4(v99, v101, v103 & 1);

    static Font.Weight.semibold.getter();
    v112 = Text.fontWeight(_:)();
    v114 = v113;
    LOBYTE(v94) = v115;
    v117 = v116;
    sub_1000317C4(v107, v109, v111 & 1);

    v118 = swift_getKeyPath();
    v215[0] = v112;
    v215[1] = v114;
    LOBYTE(v215[2]) = v94 & 1;
    v215[3] = v117;
    v215[4] = v118;
    v215[5] = 1;
    LOBYTE(v215[6]) = 0;
    v119 = v137;
    static AccessibilityTraits.updatesFrequently.getter();
    sub_1000040A8(&qword_100356CF8);
    sub_10003F7B0();
    v120 = v136;
    View.accessibilityAddTraits(_:)();
    (*(v138 + 8))(v119, v139);
    sub_1000317C4(v112, v114, v94 & 1);

    sub_100008FA0(v120, &qword_100356CE8);
    v167[0] = v161;
    v167[1] = v160;
    memcpy(&v167[2], v235, 0x148uLL);
    *&v167[43] = v232;
    *&v167[45] = v233;
    *&v167[47] = v234;
    LOBYTE(v167[49]) = v155;
    *(&v167[49] + 1) = *v231;
    HIDWORD(v167[49]) = *&v231[3];
    v167[50] = v158;
    v167[51] = v159;
    v167[52] = v156;
    v167[53] = v157;
    LOBYTE(v167[54]) = 0;
    memcpy(v166, v167, 0x1B1uLL);
    *&v168 = v153;
    *(&v168 + 1) = v152;
    LOBYTE(v169) = v150;
    *(&v169 + 1) = *v227;
    DWORD1(v169) = *&v227[3];
    *(&v169 + 1) = v154;
    *&v170[0] = KeyPath;
    BYTE8(v170[0]) = v141;
    *(&v170[4] + 9) = *&v226[64];
    *(&v170[5] + 9) = *&v226[80];
    *(&v170[6] + 9) = *&v226[96];
    *(v170 + 9) = *v226;
    *(&v170[1] + 9) = *&v226[16];
    *(&v170[2] + 9) = *&v226[32];
    *(&v170[3] + 9) = *&v226[48];
    *(&v170[7] + 1) = *&v226[111];
    *&v171 = v149;
    *(&v171 + 1) = v91;
    LOBYTE(v172) = v148;
    DWORD1(v172) = *&v230[3];
    *(&v172 + 1) = *v230;
    *(&v172 + 1) = v58;
    *&v173[0] = v60;
    *(&v173[0] + 1) = v62;
    *&v173[1] = v64;
    BYTE8(v173[1]) = 0;
    *&v166[67] = v170[4];
    *&v166[69] = v170[5];
    *&v166[71] = v170[6];
    *&v166[73] = v170[7];
    *&v166[59] = v170[0];
    *&v166[61] = v170[1];
    *&v166[63] = v170[2];
    *&v166[65] = v170[3];
    *&v166[55] = v168;
    *&v166[57] = v169;
    *(&v166[80] + 1) = *(v173 + 9);
    *&v166[77] = v172;
    *&v166[79] = v173[0];
    *&v166[75] = v171;
    v122 = v131;
    v121 = v132;
    *&v174 = v132;
    *(&v174 + 1) = v131;
    LOBYTE(v119) = v128;
    LOBYTE(v120) = v129;
    LOBYTE(v175) = v128;
    *(&v175 + 1) = *v224;
    DWORD1(v175) = *&v224[3];
    v123 = v133;
    *(&v175 + 1) = v133;
    v124 = v130;
    *&v176[0] = v130;
    BYTE8(v176[0]) = v129;
    *(&v176[4] + 9) = *&v223[64];
    *(&v176[5] + 9) = *&v223[80];
    *(&v176[6] + 9) = *&v223[96];
    *(v176 + 9) = *v223;
    *(&v176[1] + 9) = *&v223[16];
    *(&v176[2] + 9) = *&v223[32];
    *(&v176[3] + 9) = *&v223[48];
    *(&v176[7] + 1) = *&v223[111];
    v125 = v164;
    *&v177 = v164;
    *(&v177 + 1) = v90;
    *&v166[99] = v176[6];
    *&v166[101] = v176[7];
    *&v166[91] = v176[2];
    *&v166[93] = v176[3];
    *&v166[95] = v176[4];
    *&v166[97] = v176[5];
    *&v166[83] = v174;
    *&v166[85] = v175;
    *&v166[87] = v176[0];
    *&v166[89] = v176[1];
    *&v166[103] = v177;
    memcpy(v140, v166, 0x348uLL);
    v188 = *&v223[64];
    v189 = *&v223[80];
    *v190 = *&v223[96];
    v184 = *v223;
    v185 = *&v223[16];
    v186 = *&v223[32];
    v178[0] = v121;
    v178[1] = v122;
    v179 = v119;
    *v180 = *v224;
    *&v180[3] = *&v224[3];
    v181 = v123;
    v182 = v124;
    v183 = v120;
    v187 = *&v223[48];
    *&v190[15] = *&v223[111];
    v191 = v125;
    v192 = v90;
    sub_100006C20(v167, v215, &qword_100356D08);
    sub_100006C20(&v168, v215, &qword_100356C70);
    sub_100006C20(&v174, v215, &qword_100356C48);
    sub_100008FA0(v178, &qword_100356C48);
    v203 = *&v226[64];
    v204 = *&v226[80];
    *v205 = *&v226[96];
    v199 = *v226;
    v200 = *&v226[16];
    v201 = *&v226[32];
    v193[0] = v153;
    v193[1] = v152;
    v194 = v150;
    *v195 = *v227;
    *&v195[3] = *&v227[3];
    v196 = v154;
    v197 = KeyPath;
    v198 = v141;
    v202 = *&v226[48];
    *&v205[15] = *&v226[111];
    v206 = v149;
    v207 = v91;
    v208 = v148;
    *&v209[3] = *&v230[3];
    *v209 = *v230;
    v210 = v58;
    v211 = v60;
    v212 = v62;
    v213 = v64;
    v214 = 0;
    sub_100008FA0(v193, &qword_100356C70);
    v215[0] = v161;
    v215[1] = v160;
    memcpy(&v215[2], v235, 0x148uLL);
    *&v215[43] = v232;
    *&v215[45] = v233;
    *&v215[47] = v234;
    v216 = v155;
    *v217 = *v231;
    *&v217[3] = *&v231[3];
    v218 = v158;
    v219 = v159;
    v220 = v156;
    v221 = v157;
    v222 = 0;
    return sub_100008FA0(v215, &qword_100356D08);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DBB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v62 = a5;
  v9 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v12 = v90;
  v13 = v91;
  v61 = v92;
  v14 = v93;
  v60 = v94;
  v15 = v95;
  v16 = [objc_opt_self() systemGray5Color];
  v59 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  if (a1 < 0)
  {
    sub_10003F870(v103);
    goto LABEL_12;
  }

  if (a1)
  {
    v17 = a1 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 32);
  if (v18)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_unknownObjectRelease();
      v20 = *(v18 + 344);
      v21 = *(v20 + 64);
      v22 = *(v20 + 80);

      v23 = 10;
      if (!v22)
      {
        v23 = v21;
      }

      v19 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v24 = 9;
      if (!v19)
      {
LABEL_10:
        v25 = fmin(v17 / v24, 0.99);
        StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
        *&v103[0] = 0x3FF921FB54442D18;
        Angle.animatableData.getter();
        Angle.animatableData.setter();
        v26 = *&v103[0];
        static UnitPoint.center.getter();
        v28 = v27;
        v30 = v29;
        *(&v56 + 1) = static Color.white.getter();
        *&v56 = swift_getKeyPath();
        *&v103[0] = a3;
        *(&v103[0] + 1) = a4;
        sub_100031770();

        v31 = Text.init<A>(_:)();
        v57 = v13;
        v33 = v32;
        v35 = v34;
        v36 = type metadata accessor for Font.Design();
        (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
        static Font.system(size:weight:design:)();
        sub_100008FA0(v11, &qword_100354FC0);
        Font.bold()();

        v37 = Text.font(_:)();
        v39 = v38;
        v41 = v40;

        sub_1000317C4(v31, v33, v35 & 1);

        static Color.white.getter();
        v54 = Text.foregroundColor(_:)();
        v55 = v42;
        v44 = v43;
        v46 = v45;

        sub_1000317C4(v37, v39, v41 & 1);

        v47 = swift_getKeyPath();
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v86 = v46 & 1;
        *&v84[55] = v99;
        *&v84[71] = v100;
        *&v84[87] = v101;
        *&v84[103] = v102;
        *&v84[7] = v96;
        *&v84[23] = v97;
        *&v84[39] = v98;
        *&v71[0] = 0;
        *(v71 + 1) = v25;
        *&v72 = v89;
        v71[1] = v87;
        v71[2] = v88;
        *(&v72 + 1) = v26;
        *&v73 = v28;
        *(&v73 + 1) = v30;
        v48 = v56;
        v74 = v56;
        v70[0] = v71[0];
        v70[1] = v87;
        v70[3] = v72;
        v70[4] = v73;
        v70[5] = v56;
        v70[2] = v88;
        *&v63 = v54;
        *(&v63 + 1) = v44;
        LOBYTE(v64) = v46 & 1;
        DWORD1(v64) = *&v85[3];
        *(&v64 + 1) = *v85;
        *(&v64 + 1) = v55;
        *&v65[0] = v47;
        BYTE8(v65[0]) = 1;
        *(&v65[3] + 9) = *&v84[48];
        *(&v65[2] + 9) = *&v84[32];
        *(&v65[1] + 9) = *&v84[16];
        *(v65 + 9) = *v84;
        *(&v65[7] + 1) = *(&v102 + 1);
        *(&v65[6] + 9) = *&v84[96];
        *(&v65[5] + 9) = *&v84[80];
        *(&v65[4] + 9) = *&v84[64];
        v66 = sub_10003E3A0;
        v67 = 0;
        v70[7] = v64;
        v70[6] = v63;
        v70[11] = v65[3];
        v70[10] = v65[2];
        v70[8] = v65[0];
        v70[9] = v65[1];
        v70[16] = sub_10003E3A0;
        v70[15] = v65[7];
        v70[14] = v65[6];
        v70[12] = v65[4];
        v70[13] = v65[5];
        v69[0] = v54;
        v69[1] = v44;
        LOBYTE(v69[2]) = v46 & 1;
        *(&v69[2] + 1) = *v85;
        HIDWORD(v69[2]) = *&v85[3];
        v69[3] = v55;
        v69[4] = v47;
        v13 = v57;
        LOBYTE(v69[5]) = 1;
        *(&v69[13] + 1) = *&v84[64];
        *(&v69[15] + 1) = *&v84[80];
        *(&v69[17] + 1) = *&v84[96];
        *(&v69[5] + 1) = *v84;
        *(&v69[7] + 1) = *&v84[16];
        *(&v69[9] + 1) = *&v84[32];
        *(&v69[11] + 1) = *&v84[48];
        v69[19] = *(&v102 + 1);
        v69[20] = sub_10003E3A0;
        v69[21] = 0;
        sub_100006C20(v71, v103, &qword_1003550B8);
        sub_100006C20(&v63, v103, &qword_100356D10);
        sub_100008FA0(v69, &qword_100356D10);
        *&v75 = 0;
        *(&v75 + 1) = v25;
        v76 = v87;
        v77 = v88;
        v78 = v89;
        v79 = v26;
        v80 = v28;
        v81 = v30;
        v82 = v48;
        sub_100008FA0(&v75, &qword_1003550B8);
        memcpy(v83, v70, 0x110uLL);
        ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v83);
        memcpy(v103, v83, 0x110uLL);
LABEL_12:
        memcpy(v83, v103, 0x110uLL);
        *&v75 = v12;
        *(&v75 + 1) = __PAIR64__(v61, v13);
        v49 = v61;
        *&v76 = v14;
        v51 = v59;
        v50 = v60;
        *(&v76 + 1) = v60;
        *&v77 = v15;
        v52 = KeyPath;
        *(&v77 + 1) = KeyPath;
        v78 = v59;
        *&v68[3] = v59;
        v68[0] = v75;
        v68[1] = v76;
        v68[2] = v77;
        memcpy(v69, v103, sizeof(v69));
        memcpy(&v68[3] + 8, v103, 0x110uLL);
        memcpy(v62, v68, 0x148uLL);
        sub_100006C20(&v75, &v63, &qword_1003550B0);
        sub_100006C20(v69, &v63, &qword_100356D18);
        sub_100008FA0(v83, &qword_100356D18);
        *&v63 = v12;
        *(&v63 + 1) = __PAIR64__(v49, v13);
        *&v64 = v14;
        *(&v64 + 1) = v50;
        *&v65[0] = v15;
        *(&v65[0] + 1) = v52;
        *&v65[1] = v51;
        return sub_100008FA0(&v63, &qword_1003550B0);
      }
    }

    __break(1u);
  }

  type metadata accessor for QuestionnaireState();
  sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003E3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_10003F398(a1, v9);
  type metadata accessor for UIMetrics();
  sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a2 = result;
  a2[1] = v8;
  a2[2] = sub_10003F774;
  a2[3] = v4;
  return result;
}

void sub_10003E49C()
{
  v1 = v0;
  v2 = v0[4];
  if (!v2)
  {
    type metadata accessor for QuestionnaireState();
    v27 = &qword_100354D50;
    v28 = type metadata accessor for QuestionnaireState;
    goto LABEL_24;
  }

  swift_beginAccess();
  v3 = *(v2 + 144);
  v4 = *(v3 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v3 + v4 + 31) != 3)
  {
    v9 = qword_100353AA8;

    if (v9 == -1)
    {
LABEL_9:
      v10 = type metadata accessor for Logger();
      sub_10000F53C(v10, qword_100381E48);
      sub_10003F398(v1, v30);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      sub_10003F6D0(v1);
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v1 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v1 = 136446466;
      v13 = sub_1000B9A7C();
      v15 = sub_10017C9E8(v13, v14, &v29);

      *(v1 + 4) = v15;
      *(v1 + 12) = 2082;
      swift_beginAccess();
      if (*(*(v2 + 144) + 16))
      {

        v16 = String.init<A>(describing:)();
        v18 = sub_10017C9E8(v16, v17, &v29);

        *(v1 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] onDontSendTapped on %{public}s stage", v1, 0x16u);
        swift_arrayDestroy();
LABEL_15:

        return;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    swift_once();
    goto LABEL_9;
  }

  v5 = *(v2 + 32);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 32) = v7;
  swift_retain_n();
  v8 = sub_1000BD8A4();
  sub_10021775C();

  if (v8)
  {
    if (!*v0)
    {
      while (1)
      {
        type metadata accessor for AppEvents();
        v27 = &qword_100354D48;
        v28 = type metadata accessor for AppEvents;
LABEL_24:
        sub_10003F208(v27, v28);
        EnvironmentObject.error()();
        __break(1u);
      }
    }

    LOBYTE(v30[0]) = 1;
    v30[1] = v2;
    v31 = 3;
    v33 = 0;
    v34 = 0;
    v32 = 0;

    PassthroughSubject.send(_:)();

    goto LABEL_17;
  }

  if (qword_100353AA8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381E48);
  sub_10003F398(v1, v30);
  v11 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  sub_10003F6D0(v1);
  if (os_log_type_enabled(v11, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136446210;
    v23 = sub_1000B9A7C();
    v25 = v24;

    v26 = sub_10017C9E8(v23, v25, v30);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v11, v20, "[%{public}s] onDontSendTapped - failed to go back", v21, 0xCu);
    sub_100008964(v22);
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
}

uint64_t sub_10003E900(uint64_t a1)
{
  if (!*a1)
  {
    type metadata accessor for AppEvents();
    sub_10003F208(&qword_100354D48, type metadata accessor for AppEvents);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_8:
    type metadata accessor for QuestionnaireState();
    sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState);

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  LOBYTE(v13) = 0;
  *(&v13 + 1) = v2;
  v14 = 3;
  v16 = 0;
  v17 = 0;
  v15 = 0;

  PassthroughSubject.send(_:)();

  LOBYTE(v13) = 2;
  PassthroughSubject.send(_:)();

  swift_beginAccess();
  sub_10003F3D8(v2 + 48, &v13);
  v3 = v19;
  if (v19)
  {
    v4 = v20;
    v5 = sub_1000088DC(v18, v19);
    v6 = *(v3 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    sub_10003F434(&v13);
    v10 = (*(v4 + 24))(v3, v4);

    (*(v6 + 8))(v9, v3);
  }

  else
  {

    sub_10003F434(&v13);
    v13 = *(a1 + 48);
    sub_1000040A8(&qword_100356CA8);
    State.wrappedValue.getter();
    v10 = v12;
  }

  v13 = *(a1 + 48);
  v12 = v10;
  sub_1000040A8(&qword_100356CA8);
  return State.wrappedValue.setter();
}

void sub_10003EC24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E48);
  sub_10003F398(a3, &v19);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10003F6D0(a3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v9 = 136446466;
    if (!*(a3 + 32))
    {
      type metadata accessor for QuestionnaireState();
      sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState);
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v10 = sub_1000B9A7C();
    v12 = v11;

    v13 = sub_10017C9E8(v10, v12, v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v19 = v4;
    v20 = v5;
    sub_1000040A8(&qword_100356CC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, v18);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Auto send view: %s seconds left", v9, 0x16u);
    swift_arrayDestroy();
  }

  if ((v5 & 1) == 0)
  {
    v17 = static Animation.linear(duration:)();
    __chkstk_darwin(v17);
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10003EED8(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 == 4)
  {
    if (*a3)
    {
      if (a3[4])
      {

        PassthroughSubject.send(_:)();
      }
    }

    else
    {
      type metadata accessor for AppEvents();
      sub_10003F208(&qword_100354D48, type metadata accessor for AppEvents);
      EnvironmentObject.error()();
      __break(1u);
    }

    type metadata accessor for QuestionnaireState();
    sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState);

    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_10003F070@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10003F208(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for UIMetrics();
  sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for QuestionnaireState();
  sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  State.init(wrappedValue:)();
  v11 = [objc_allocWithZone(NSNumberFormatter) init];
  result = [v11 setNumberStyle:0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v13;
  a1[7] = v14;
  a1[8] = v11;
  return result;
}

uint64_t sub_10003F208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003F250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003F298(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_10003F314()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_10003F490()
{
  result = qword_100356CC8;
  if (!qword_100356CC8)
  {
    sub_100008CF0(&qword_100356C98);
    sub_100008CF0(&qword_100356CB0);
    sub_100009274(&qword_100356CB8, &qword_100356CB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356CC8);
  }

  return result;
}

unint64_t sub_10003F58C()
{
  result = qword_100356CD0;
  if (!qword_100356CD0)
  {
    sub_100008CF0(&qword_100356CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356CD0);
  }

  return result;
}

uint64_t sub_10003F608(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003F67C()
{
  result = qword_100356CD8;
  if (!qword_100356CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356CD8);
  }

  return result;
}

uint64_t sub_10003F71C()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10003F7B0()
{
  result = qword_100356D00;
  if (!qword_100356D00)
  {
    sub_100008CF0(&qword_100356CF8);
    sub_100009274(&qword_100356828, &qword_100356830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356D00);
  }

  return result;
}

double sub_10003F870(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10003F89C()
{
  sub_100008CF0(&qword_100356CA0);
  sub_100008CF0(&qword_100356C98);
  sub_100008CF0(&qword_100356CC0);
  sub_10003F490();
  sub_10003F58C();
  swift_getOpaqueTypeConformance2();
  sub_10003F67C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003F9E4()
{
  sub_10004242C();

  sub_100008FA0(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo, &qword_100355320);

  sub_1000452CC(*(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight), *(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 8));
  sub_10002B558(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_progressDelegate);

  return v0;
}

uint64_t sub_10003FA98()
{
  sub_10003F9E4();

  return swift_deallocClassInstance();
}

void sub_10003FAF0(char a1)
{
  *(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_connected) = a1;
  if (qword_100353A58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381D58);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v4, "onConnectionStateChange: connected = %{BOOL,public}d", v5, 8u);
  }
}

void sub_10003FC00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381D58);

    v25 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v27 = *(v1 + 16);
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v25, v11, "Message simulation: transcriptState is not .inactive (%{public}s, ignoring onReadyToStartSimulation", v12, 0xCu);
      sub_100008964(v13);
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    *(v0 + 16) = 1;
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000F53C(v17, qword_100381D58);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Message simulation: clients are ready to start", v20, 2u);
    }

    sub_10000F574();
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100045750;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100327F88;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100045708(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_100035010();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000400E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000444AC();
  }

  return result;
}

void sub_10004013C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v181 = a4;
  v179 = a3;
  v182 = a2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v169 = v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v13 = *(v178 - 8);
  __chkstk_darwin(v178);
  v15 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100357180);
  __chkstk_darwin(v16 - 8);
  v173 = v157 - v17;
  v172 = type metadata accessor for String.Encoding();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000040A8(&qword_100355320);
  __chkstk_darwin(v19 - 8);
  v174 = (v157 - v20);
  p_ivar_base_size = type metadata accessor for UUID();
  v180 = *(p_ivar_base_size - 8);
  __chkstk_darwin(p_ivar_base_size);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v175 = v157 - v24;
  __chkstk_darwin(v25);
  if (*(v4 + 16) != 1)
  {
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000F53C(v40, qword_100381D58);
    v185 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v185, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v185, v41, "Ignoring new message in not .inProgress state", v42, 2u);
    }

    v43 = v185;

    return;
  }

  v166 = v157 - v26;
  v157[0] = v28;
  v159 = v27;
  v160 = v11;
  v161 = v10;
  v177 = a1;
  v162 = v15;
  v167 = v13;
  v163 = v9;
  v164 = v7;
  v165 = v6;
  swift_beginAccess();
  v168 = v4;
  v29 = *(v4 + 32);
  v30 = (v29 >> 62);
  v31 = &OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender;
  v176 = p_ivar_base_size;
  v32 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    goto LABEL_90;
  }

  v184 = v29 & 0xFFFFFFFFFFFFFF8;
  v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_35;
  }

  v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v34;
  while (2)
  {
    v36 = v184;
    if (v29 < 0)
    {
      v36 = v29;
    }

    v185 = v36;
    v183 = (v29 + 32);

    while (1)
    {
      p_ivar_base_size = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_34:

        p_ivar_base_size = v176;
        goto LABEL_35;
      }

      if (v30 && v35 == v33)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      if (p_ivar_base_size < 0 || p_ivar_base_size >= v34)
      {
        goto LABEL_86;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

      v32 = *(v184 + 16);
      if (p_ivar_base_size >= v32)
      {
        break;
      }

      v38 = *(v183 + p_ivar_base_size);

LABEL_21:
      if ((*(v38 + *v31) & 1) == 0)
      {
        v39 = OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status;
        if (*(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) && *(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) != 1)
        {

          goto LABEL_34;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {

          p_ivar_base_size = v176;
          v31 = &OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender;
          goto LABEL_35;
        }

        *(v38 + v39) = 2;
        v31 = &OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender;
      }

      v33 = p_ivar_base_size;
      if (!p_ivar_base_size)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v184 = v32;
    v156 = _CocoaArrayWrapper.endIndex.getter();
    if (v156)
    {
      v33 = v156;
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v34 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

LABEL_35:
  v44 = v180;
  v45 = v180 + 16;
  v46 = *(v180 + 16);
  v47 = v166;
  v48 = v177;
  v46(v166, v177, p_ivar_base_size);
  type metadata accessor for TryOutTranscriptMessageItem(0);
  v49 = swift_allocObject();
  v50 = v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  *v50 = 0;
  *(v50 + 8) = 0;
  v51 = v179;
  *(v50 + 16) = v182;
  *(v50 + 24) = v51;
  *(v50 + 32) = v181 & 1;
  *(v49 + *v31) = 0;
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_hasPairedEducationalReply) = 0;
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 2;
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
  *(v49 + 16) = 2;
  v52 = *(v44 + 32);
  v166 = (v44 + 32);
  v158 = v52;
  v52((v49 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id), v47, p_ivar_base_size);
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 0;
  v53 = v168;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v53 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v51 = v179;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v54 = v174;
  v46(v174, v49 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, p_ivar_base_size);
  (*(v44 + 56))(v54, 0, 1, p_ivar_base_size);
  v55 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo;
  swift_beginAccess();
  sub_10000F630(v54, v53 + v55);
  swift_endAccess();
  sub_100044600();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10026B98C();
    swift_unknownObjectRelease();
  }

  v56 = v175;
  if (qword_100353A58 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_10000F53C(v57, qword_100381D58);
  v184 = v45;
  v183 = v46;
  v46(v56, v48, p_ivar_base_size);
  swift_bridgeObjectRetain_n();
  v185 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v59, v60);
  v157[1] = v49;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v187 = v63;
    *v62 = 136446466;
    sub_100045708(&qword_100355328, &type metadata accessor for UUID);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v56;
    v66 = v64;
    v68 = v67;
    v174 = *(v180 + 8);
    v174(v65, p_ivar_base_size);
    v69 = sub_10017C9E8(v66, v68, &v187);

    *(v62 + 4) = v69;
    *(v62 + 12) = 2050;
    *&v188 = v182;
    *(&v188 + 1) = v51;
    v70 = v170;
    static String.Encoding.utf8.getter();
    sub_100031770();
    v71 = StringProtocol.lengthOfBytes(using:)();
    (*(v171 + 8))(v70, v172);

    *(v62 + 14) = v71;

    _os_log_impl(&_mh_execute_header, v59, v60, "Message simulation: new message %{public}s of %{public}ld bytes", v62, 0x16u);
    sub_100008964(v63);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v174 = *(v180 + 8);
    v174(v56, p_ivar_base_size);
  }

  v72 = v173;
  v73 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
  v74 = swift_beginAccess();
  v75 = *(v53 + v73);
  __chkstk_darwin(v74);
  v76 = v177;
  v157[-2] = v177;

  v77 = 0;
  sub_1000417B4(sub_100045780, v75, v72);

  LODWORD(v75) = (*(v167 + 48))(v72, 1, v178);
  sub_100008FA0(v72, &qword_100357180);
  v175 = v73;
  if (v75 != 1)
  {
    v78 = v157[0];
    v79 = v176;
    v183(v157[0], v76, v176);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v173 = 0;
      v84 = v83;
      *&v188 = v83;
      *v82 = 136446210;
      sub_100045708(&qword_100355328, &type metadata accessor for UUID);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v174(v78, v79);
      v88 = sub_10017C9E8(v85, v87, &v188);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v80, v81, "Message simulation: message %{public}s is already pending", v82, 0xCu);
      sub_100008964(v84);
      v77 = v173;
    }

    else
    {

      v89 = (v174)(v78, v79);
    }

    __chkstk_darwin(v89);
    v157[-2] = v76;
    v90 = v175;
    swift_beginAccess();
    v91 = sub_10019C850(sub_1000456D8, &v157[-4]);
    v92 = *(*&v90[v53] + 16);
    if (v92 >= v91)
    {
      sub_10019E314(v91, v92);
      swift_endAccess();
      goto LABEL_50;
    }

LABEL_93:
    __break(1u);
  }

LABEL_50:
  if (v181)
  {
    v93 = sub_1002559FC(_swiftEmptyArrayStorage);
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;
    v189 = &type metadata for Int;
    *&v188 = 0;
    sub_1000456C8(&v188, &v187);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v186 = v93;
    sub_100188F48(&v187, v94, v96, isUniquelyReferenced_nonNull_native);

    v98 = v186;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
    v189 = &type metadata for Int;
    *&v188 = 1;
    sub_1000456C8(&v188, &v187);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v186 = v98;
    sub_100188F48(&v187, v99, v101, v102);

    v103 = v186;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;
    v189 = &type metadata for Bool;
    LOBYTE(v188) = 1;
    sub_1000456C8(&v188, &v187);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v186 = v103;
    sub_100188F48(&v187, v104, v106, v107);

    sub_1001457F0(v186);

    v108 = objc_allocWithZone(CTStewieEmergencyStartMessage);
    v109 = sub_100044DC4();
    if (v77)
    {
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Message simulation: failed to create CTStewieEmergencyStartMessage instance", v112, 2u);
      }

      v113 = 0.0;
    }

    else
    {
      v130 = v109;
      [v109 estimatedSendTime];
      v132 = v131;

      v113 = ceil(v132);
    }
  }

  else
  {
    *&v188 = v182;
    *(&v188 + 1) = v179;
    v114 = v170;
    static String.Encoding.utf8.getter();
    sub_100031770();
    v115 = StringProtocol.lengthOfBytes(using:)();
    (*(v171 + 8))(v114, v172);
    if (v115 / 2 <= 1)
    {
      v116 = 1;
    }

    else
    {
      v116 = v115 / 2;
    }

    v117 = objc_opt_self();
    v113 = 0.0;
    p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    v29 = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    v30 = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    while (1)
    {
      v118 = v116;
      if ([v117 maxLengthInBytesForOutgoingText] < v116)
      {
        v118 = [v117 maxLengthInBytesForOutgoingText];
      }

      v119._countAndFlagsBits = 97;
      v119._object = 0xE100000000000000;
      String.init(repeating:count:)(v119, v118);
      v120 = objc_allocWithZone(CTStewieEmergencyTextMessage);
      v31 = String._bridgeToObjectiveC()();

      *&v188 = 0;
      v121 = [v120 initWithConversationID:0 sequenceNum:0 emergencyText:v31 error:&v188];

      if (!v121)
      {
        break;
      }

      v122 = v188;
      [v121 estimatedSendTime];
      v124 = v123;

      v125 = __OFSUB__(v116, v118);
      v116 -= v118;
      if (v125)
      {
        goto LABEL_89;
      }

      v113 = v113 + ceil(v124);
      if (v116 <= 0)
      {
        goto LABEL_69;
      }
    }

    v126 = v188;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Message simulation: failed to create CTStewieEmergencyTextMessage instance", v129, 2u);
    }
  }

LABEL_69:
  if (v113 <= 0.0)
  {
    v133 = 1.0;
  }

  else
  {
    v133 = v113;
  }

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 134349056;
    *(v136 + 4) = v133;
    _os_log_impl(&_mh_execute_header, v134, v135, "Message simulation: estimatedSendingTime = %{public}f", v136, 0xCu);
  }

  v137 = v159;
  v138 = v176;
  v183(v159, v177, v176);
  v139 = v169;
  static DispatchTime.now()();
  v140 = (v181 & 1) == 0;
  v141 = v162;
  v158(v162, v137, v138);
  v142 = v178;
  v143 = (v141 + *(v178 + 20));
  v144 = v179;
  *v143 = v182;
  v143[1] = v144;
  (*(v160 + 32))(v141 + v142[6], v139, v161);
  *(v141 + v142[7]) = v133;
  *(v141 + v142[8]) = v133;
  *(v141 + v142[9]) = v140;
  v145 = v168;
  v146 = v175;
  swift_beginAccess();
  v147 = *&v146[v145];

  v148 = swift_isUniquelyReferenced_nonNull_native();
  *&v146[v145] = v147;
  v149 = v163;
  v150 = v167;
  if ((v148 & 1) == 0)
  {
    v147 = sub_10017B8B4(0, v147[2] + 1, 1, v147);
    *&v146[v145] = v147;
  }

  v152 = v147[2];
  v151 = v147[3];
  if (v152 >= v151 >> 1)
  {
    v147 = sub_10017B8B4(v151 > 1, v152 + 1, 1, v147);
  }

  v147[2] = v152 + 1;
  sub_100045414(v141, v147 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v152);
  *&v146[v145] = v147;
  swift_endAccess();
  sub_10000F574();
  *v149 = static OS_dispatch_queue.main.getter();
  v153 = v164;
  v154 = v165;
  (*(v164 + 104))(v149, enum case for DispatchPredicate.onQueue(_:), v165);
  v155 = _dispatchPreconditionTest(_:)();
  (*(v153 + 8))(v149, v154);
  if ((v155 & 1) == 0)
  {
    __break(1u);
    goto LABEL_93;
  }

  if (*(*&v146[v145] + 16))
  {
    if (!*(v145 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer))
    {
      sub_100042124();
    }
  }

  else
  {
    sub_10004242C();
  }
}

uint64_t sub_1000417B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_100045310(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_100045374(v10);
      }

      if (v14)
      {
        break;
      }

      sub_100045374(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100045414(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_100041930(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v42 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000040A8(&qword_100355318);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v40[-v12];
  v14 = sub_1000040A8(&qword_100355320);
  __chkstk_darwin(v14 - 8);
  v44 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v53 = &v40[-v17];
  v19 = __chkstk_darwin(v18);
  v21 = &v40[-v20];
  v22 = *(v8 + 16);
  v46 = a1;
  v22(&v40[-v20], a1 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v7, v19);
  v43 = *(v8 + 56);
  v43(v21, 0, 1, v7);
  v23 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo;
  swift_beginAccess();
  v24 = *(v11 + 56);
  sub_100006C20(v21, v13, &qword_100355320);
  v45 = v2;
  sub_100006C20(v2 + v23, &v13[v24], &qword_100355320);
  v25 = *(v8 + 48);
  if (v25(v13, 1, v7) != 1)
  {
    sub_100006C20(v13, v53, &qword_100355320);
    if (v25(&v13[v24], 1, v7) != 1)
    {
      v27 = v42;
      (*(v8 + 32))(v42, &v13[v24], v7);
      sub_100045708(&qword_100355330, &type metadata accessor for UUID);
      v28 = v53;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v8 + 8);
      v29(v27, v7);
      sub_100008FA0(v21, &qword_100355320);
      v29(v28, v7);
      result = sub_100008FA0(v13, &qword_100355320);
      if ((v41 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_100008FA0(v21, &qword_100355320);
    (*(v8 + 8))(v53, v7);
    return sub_100008FA0(v13, &qword_100355318);
  }

  sub_100008FA0(v21, &qword_100355320);
  if (v25(&v13[v24], 1, v7) != 1)
  {
    return sub_100008FA0(v13, &qword_100355318);
  }

  sub_100008FA0(v13, &qword_100355320);
LABEL_8:
  v30 = v44;
  v43(v44, 1, 1, v7);
  v31 = v45;
  swift_beginAccess();
  sub_10000F630(v30, v31 + v23);
  swift_endAccess();
  sub_10000F574();
  v32 = static OS_dispatch_queue.main.getter();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  aBlock[4] = sub_1000456C0;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100327F60;
  v36 = _Block_copy(aBlock);

  v37 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045708(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100035010();
  v38 = v49;
  v39 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v51 + 8))(v38, v39);
  return (*(v48 + 8))(v37, v50);
}

uint64_t sub_10004206C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      type metadata accessor for TryOutModel();
      sub_10026CC34();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100042124()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100045678;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    aBlock[3] = &unk_100327F10;
    v9 = _Block_copy(aBlock);

    v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
    _Block_release(v9);
    v11 = *(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer);
    *(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer) = v10;

    if (qword_100353A58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381D58);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Started one second timer", v15, 2u);
  }
}

uint64_t sub_1000423D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100042618();
  }

  return result;
}

void sub_10004242C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer;
    [*(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer) invalidate];
    v8 = *(v1 + v7);
    *(v1 + v7) = 0;

    if (qword_100353A58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381D58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Canceled one second timer", v12, 2u);
  }
}

uint64_t sub_100042618()
{
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v91 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  v96 = *(v1 - 8);
  __chkstk_darwin(v1);
  v95 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchTime();
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v93 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v91 - v5;
  v121 = type metadata accessor for UUID();
  v104 = *(v121 - 8);
  __chkstk_darwin(v121);
  v94 = v6;
  v120 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v122 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v91 - v11;
  v12 = sub_1000040A8(&qword_100357180);
  __chkstk_darwin(v12 - 8);
  v119 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v91 - v15;
  __chkstk_darwin(v17);
  v117 = &v91 - v18;
  __chkstk_darwin(v19);
  v21 = (&v91 - v20);
  __chkstk_darwin(v22);
  v24 = (&v91 - v23);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = sub_10000F574();
  *v28 = static OS_dispatch_queue.main.getter();
  v29 = *(v26 + 104);
  v108 = enum case for DispatchPredicate.onQueue(_:);
  v109 = v26 + 104;
  v107 = v29;
  v29(v28);
  v30 = _dispatchPreconditionTest(_:)();
  v31 = *(v26 + 8);
  v110 = v28;
  v112 = v25;
  v111 = v26 + 8;
  v106 = v31;
  v32 = v31(v28, v25);
  if ((v30 & 1) == 0)
  {
    goto LABEL_67;
  }

  v92 = v1;
  v34 = *(v8 + 56);
  v34(v24, 1, 1, v7);
  v34(v21, 1, 1, v7);
  v25 = v114;
  if (*(v114 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_connected) != 1)
  {
    goto LABEL_11;
  }

  v35 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
  swift_beginAccess();
  v30 = *(v25 + v35);
  if (!*(v30 + 16))
  {
    goto LABEL_11;
  }

  v105 = v24;
  v103 = v21;
  v24 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
  if (*(v24 + v30 + v7[8]) <= 0.0)
  {
    result = swift_beginAccess();
    if (*(v30 + 16))
    {
      v38 = v117;
      sub_100045310(v24 + v30, v117);
      v37 = v38;
      sub_10019E314(0, 1);
      swift_endAccess();
      v21 = v103;
      v30 = v103;
      v24 = v105;
      goto LABEL_10;
    }

    goto LABEL_76;
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + v35) = v30;
  if ((result & 1) == 0)
  {
    goto LABEL_74;
  }

  if (!*(v30 + 16))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return result;
  }

  while (1)
  {
    *(v24 + v30 + v7[8]) = *(v24 + v30 + v7[8]) + -1.0;
    *(v25 + v35) = v30;
    swift_endAccess();
    v37 = v117;
    sub_100045310(v24 + v30, v117);
    v24 = v105;
    v30 = v105;
    v21 = v103;
LABEL_10:
    sub_100008FA0(v30, &qword_100357180);
    v34(v37, 0, 1, v7);
    sub_100045608(v37, v30);
LABEL_11:
    sub_100006C20(v24, v16, &qword_100357180);
    v40 = *(v8 + 48);
    v8 += 48;
    v39 = v40;
    if (v40(v16, 1, v7) == 1)
    {
      sub_100008FA0(v16, &qword_100357180);
      goto LABEL_19;
    }

    v35 = v118;
    sub_100045414(v16, v118);
    v41 = *(v35 + v7[7]);
    v42 = *(v35 + v7[8]);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    v43 = ceil((v41 - v42) * 100.0 / v41);
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v43 <= -9.22337204e18)
    {
      goto LABEL_72;
    }

    if (v43 < 9.22337204e18)
    {
      sub_10026BAA8(v35, v43, *(v35 + v7[9]));
      swift_unknownObjectRelease();
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    result = sub_10019CFF0(v30);
    v30 = result;
    if (!*(result + 16))
    {
      goto LABEL_75;
    }
  }

  sub_100045374(v35);
LABEL_19:
  v44 = v119;
  sub_100006C20(v21, v119, &qword_100357180);
  if (v39(v44, 1, v7) != 1)
  {
    v45 = v122;
    sub_100045414(v44, v122);
    v91 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_progressDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10026BEE8(v45);
      swift_unknownObjectRelease();
    }

    v103 = v21;
    swift_beginAccess();
    v32 = *(v25 + 32);
    v1 = v32 >> 62;
    v105 = v24;
    v33 = (v32 & 0xFFFFFFFFFFFFFF8);
    if (v32 >> 62)
    {
      goto LABEL_69;
    }

    v116 = v32 & 0xFFFFFFFFFFFFFF8;
    v46 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      v47 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v119 = v47;
      goto LABEL_26;
    }

    goto LABEL_48;
  }

  sub_100008FA0(v44, &qword_100357180);
  while (1)
  {
    v84 = static OS_dispatch_queue.main.getter();
    v1 = v110;
    *v110 = v84;
    v85 = v112;
    v107(v1, v108, v112);
    v86 = _dispatchPreconditionTest(_:)();
    v32 = v106(v1, v85);
    if (v86)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_69:
      v116 = v33;
      v89 = v32;
      v90 = _CocoaArrayWrapper.endIndex.getter();
      if (!v90)
      {
        break;
      }

      v46 = v90;
      v119 = _CocoaArrayWrapper.endIndex.getter();
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v89;
LABEL_26:
      v25 = v32 & 0xC000000000000001;
      v48 = v116;
      if (v32 < 0)
      {
        v48 = v32;
      }

      v117 = v48;
      v115 = v32 + 32;
      v24 = (v104 + 16);
      v49 = (v104 + 8);
      v118 = v32;

      while (1)
      {
        v50 = v46 - 1;
        if (__OFSUB__(v46, 1))
        {
          break;
        }

        if (v1)
        {
          v33 = v119;
          if (v119 == v46)
          {
            v32 = _CocoaArrayWrapper.endIndex.getter();
          }
        }

        if (v50 < 0 || v50 >= v47)
        {
          goto LABEL_65;
        }

        if (v25)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v116 + 16);
          if (v50 >= v33)
          {
            goto LABEL_66;
          }

          v51 = *(v115 + 8 * v50);
        }

        v53 = v120;
        v52 = v121;
        (*v24)(v120, v51 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v121);
        v54 = static UUID.== infix(_:_:)();
        (*v49)(v53, v52);
        if (v54)
        {

          v55 = OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status;
          if (*(v51 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status))
          {
            v25 = v114;
            v24 = v105;
            v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v56)
            {
LABEL_46:
              *(v51 + v55) = 1;
            }

            goto LABEL_48;
          }

          v25 = v114;
          v24 = v105;
          goto LABEL_46;
        }

        v46 = v50;
        if (!v50)
        {

          v25 = v114;
          v24 = v105;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

LABEL_48:
    v57 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscript;
    swift_beginAccess();
    v58 = *(v25 + v57);
    if (v58 && v58[2])
    {
      v59 = v58[4];
      v60 = v58[5];
      v62 = v58[6];
      v61 = v58[7];

      result = sub_10003F980();
      v64 = result;
      if (*v63)
      {
        if (!*(*v63 + 16))
        {
          goto LABEL_77;
        }

        sub_10019E400(0, 1);
        v64(aBlock, 0);
      }

      else
      {
        (result)(aBlock, 0);
      }

      v65 = (v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
      v66 = *(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
      v67 = *(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 8);
      *v65 = v59;
      v65[1] = v60;
      v65[2] = v62;
      v65[3] = v61;

      sub_1000452CC(v66, v67);
      v118 = static OS_dispatch_queue.main.getter();
      v68 = v93;
      static DispatchTime.now()();
      + infix(_:_:)();
      v69 = *(v102 + 8);
      v102 += 8;
      v119 = v69;
      (v69)(v68, v101);
      v70 = swift_allocObject();
      swift_weakInit();
      v117 = v61;
      v71 = v62;
      v72 = v104;
      v73 = v120;
      v74 = v121;
      (*(v104 + 16))(v120, v122, v121);
      v75 = v59;
      v76 = (*(v72 + 80) + 56) & ~*(v72 + 80);
      v77 = swift_allocObject();
      *(v77 + 2) = v70;
      *(v77 + 3) = v75;
      *(v77 + 4) = v60;
      *(v77 + 5) = v71;
      *(v77 + 6) = v117;
      (*(v72 + 32))(&v77[v76], v73, v74);
      aBlock[4] = sub_100045584;
      aBlock[5] = v77;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D2438;
      aBlock[3] = &unk_100327EE8;
      v78 = _Block_copy(aBlock);

      v79 = v95;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100045708(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70);
      sub_100035010();
      v80 = v97;
      v81 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v82 = v100;
      v83 = v118;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v78);

      (*(v98 + 8))(v80, v81);
      (*(v96 + 8))(v79, v92);
      (v119)(v82, v101);
      v24 = v105;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10026B98C();
      swift_unknownObjectRelease();
    }

    sub_100045374(v122);
    v21 = v103;
  }

  v87 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
  v88 = swift_beginAccess();
  if (*(*(v25 + v87) + 16))
  {
    if (!*(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer))
    {
      sub_100042124(v88);
    }
  }

  else
  {
    sub_10004242C();
  }

  sub_100008FA0(v21, &qword_100357180);
  return sub_100008FA0(v24, &qword_100357180);
}

uint64_t sub_100043658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000436EC(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1000436EC(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v104 = a5;
  v100 = a4;
  v103 = a3;
  v9 = sub_1000040A8(&qword_100355320);
  __chkstk_darwin(v9 - 8);
  v97 = &v87 - v10;
  v91 = type metadata accessor for DispatchPredicate();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v92 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v102 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v98 = &v87 - v15;
  v16 = type metadata accessor for UUID();
  v105 = *(v16 - 8);
  v17 = v105;
  __chkstk_darwin(v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v87 - v21;
  v23 = (v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
  v24 = *(v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
  v25 = *(v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 8);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1000452CC(v24, v25);

  UUID.init()();
  v26 = type metadata accessor for TryOutTranscriptMessageItem(0);
  v27 = swift_allocObject();
  v28 = v27 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = 0;
  *(v27 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender) = 1;
  *(v27 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_hasPairedEducationalReply) = 0;
  *(v27 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 2;
  *(v27 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
  *(v27 + 16) = 2;
  v99 = *(v17 + 32);
  (v99)(v27 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v22, v16);
  v29 = [objc_opt_self() mainBundle];
  v109._object = 0x80000001002980D0;
  v30 = v6;
  v31._object = 0x80000001002980B0;
  v109._countAndFlagsBits = 0xD00000000000003ALL;
  v31._countAndFlagsBits = 0xD000000000000019;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v32, v109);

  v34 = v100;

  UUID.init()();
  v35 = *(v105 + 16);
  v95 = v19;
  v94 = v105 + 16;
  v93 = v35;
  v35(v22, v19, v16);
  v101 = v26;
  v36 = swift_allocObject();
  v37 = v36 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  *v37 = v33;
  *(v37 + 16) = v103;
  *(v37 + 24) = v34;
  *(v37 + 32) = 0;
  *(v36 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender) = 1;
  *(v36 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_hasPairedEducationalReply) = 1;
  *(v36 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 2;
  *(v36 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
  *(v36 + 16) = 2;
  v100 = v36;
  v96 = v16;
  (v99)(v36 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v22, v16);
  swift_beginAccess();
  v38 = *(v6 + 32);
  v108 = v104;

  v39 = 0;
  v40 = sub_1001DE0C0(sub_100045764, v107, v38);
  LOBYTE(v34) = v41;

  if ((v34 & 1) == 0)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    swift_beginAccess();
    v43 = *(v6 + 32);
    if (v43 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= v42)
      {
LABEL_7:
        if ((v42 & 0x8000000000000000) == 0)
        {

          sub_10019E54C(v42, v42, v27);
          swift_endAccess();

          goto LABEL_9;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }
    }

    else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v42)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_100;
  }

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_95:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_9:
  v106 = v27;
  v44 = *(v30 + 32);
  v27 = v44 & 0xFFFFFFFFFFFFFF8;
  if (v44 >> 62)
  {
    goto LABEL_93;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  v46 = 0;
  while (1)
  {
    if (v45 == v46)
    {

      swift_beginAccess();
      v22 = v100;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v30 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v30 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_22:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v49 = v105;
        v50 = v98;
LABEL_29:
        v53 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscript;
        swift_beginAccess();
        v54 = *(v30 + v53);
        if (v54 && !*(v54 + 16) && *(v30 + 16) == 1)
        {
          v55 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
          swift_beginAccess();
          v56 = *(v30 + v55);
          if (*(v56 + 16))
          {
            v57 = (*(v92 + 80) + 32) & ~*(v92 + 80);
            sub_100045310(v56 + v57, v50);
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10026BEE8(v50);
              swift_unknownObjectRelease();
            }

            sub_100045374(v50);
            v58 = *(v30 + v55);
            v59 = *(v58 + 16);
            if (v59)
            {
              v88 = v55;
              v60 = v58 + v57;
              v98 = *(v92 + 72);
              v92 = v58;

              v99 = v30;
              v27 = v102;
              while (1)
              {
                v104 = v59;
                v63 = sub_100045310(v60, v27);
                __chkstk_darwin(v63);
                v109._object = v27;
                swift_beginAccess();
                v64 = sub_10019CB78(sub_1000453D0, (&v87 - 4));
                v65 = v64;
                v44 = *(v30 + 32);
                v66 = v44 >> 62;
                if (v44 >> 62)
                {
                  v67 = _CocoaArrayWrapper.endIndex.getter();
                  v68 = v67 - v65;
                  if (v67 < v65)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  v67 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v68 = v67 - v64;
                  if (v67 < v64)
                  {
                    goto LABEL_88;
                  }
                }

                if (v65 < 0)
                {
                  goto LABEL_89;
                }

                if (v66)
                {
                  v69 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v69 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v69 < v67)
                {
                  goto LABEL_90;
                }

                v27 = -v68;
                if (__OFSUB__(0, v68))
                {
                  goto LABEL_91;
                }

                v103 = v39;
                v39 = &v87;
                if (v66)
                {
                  v70 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v70 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v71 = v70 - v68;
                if (__OFADD__(v70, v27))
                {
                  goto LABEL_92;
                }

                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                *(v30 + 32) = v44;
                if (isUniquelyReferenced_nonNull_bridgeObject)
                {
                  break;
                }

                if (v66)
                {
                  goto LABEL_57;
                }

LABEL_58:
                v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                *(v30 + 32) = v44;
                v73 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_59:
                v30 = v73 + 32;
                swift_arrayDestroy();
                if (v68)
                {
                  if (v44 >> 62)
                  {
                    v78 = _CocoaArrayWrapper.endIndex.getter();
                    v75 = v78 - v67;
                    if (__OFSUB__(v78, v67))
                    {
LABEL_74:
                      __break(1u);
LABEL_75:

                      v55 = v88;
                      v49 = v105;
                      v22 = v100;
                      goto LABEL_76;
                    }
                  }

                  else
                  {
                    v74 = *(v73 + 16);
                    v75 = v74 - v67;
                    if (__OFSUB__(v74, v67))
                    {
                      goto LABEL_74;
                    }
                  }

                  v76 = (v30 + 8 * v67);
                  if (v67 != v65 || v73 + 32 + 8 * v65 >= v76 + 8 * v75)
                  {
                    memmove((v73 + 32 + 8 * v65), v76, 8 * v75);
                  }

                  if (v44 >> 62)
                  {
                    v77 = _CocoaArrayWrapper.endIndex.getter();
                    v62 = v77 - v68;
                    if (__OFADD__(v77, v27))
                    {
LABEL_94:
                      __break(1u);
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    v61 = *(v73 + 16);
                    v62 = v61 - v68;
                    if (__OFADD__(v61, v27))
                    {
                      goto LABEL_94;
                    }
                  }

                  *(v73 + 16) = v62;
                }

                v30 = v99;
                *(v99 + 32) = v44;
                swift_endAccess();
                v27 = v102;
                sub_100045374(v102);
                v60 += v98;
                v39 = v103;
                v59 = v104 - 1;
                if (v104 == 1)
                {
                  goto LABEL_75;
                }
              }

              if (!v66)
              {
                v73 = v44 & 0xFFFFFFFFFFFFFF8;
                if (v71 <= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_59;
                }

                goto LABEL_58;
              }

LABEL_57:
              _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_58;
            }

LABEL_76:
            *(v30 + v55) = _swiftEmptyArrayStorage;

            sub_10000F574();
            v79 = static OS_dispatch_queue.main.getter();
            v80 = v89;
            *v89 = v79;
            v81 = v90;
            v82 = v91;
            (*(v90 + 104))(v80, enum case for DispatchPredicate.onQueue(_:), v91);
            v83 = _dispatchPreconditionTest(_:)();
            result = (*(v81 + 8))(v80, v82);
            if ((v83 & 1) == 0)
            {
              goto LABEL_105;
            }

            if (*(*(v30 + v55) + 16))
            {
              if (!*(v30 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer))
              {
                sub_100042124(result);
              }
            }

            else
            {
              sub_10004242C();
            }
          }

          *(v30 + 16) = 2;
        }

        v84 = v97;
        v85 = v96;
        v93(v97, &v22[OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id], v96);
        (*(v49 + 56))(v84, 0, 1, v85);
        v86 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo;
        swift_beginAccess();
        sub_10000F630(v84, v30 + v86);
        swift_endAccess();
        sub_100044600();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_10026B98C();

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return (*(v49 + 8))(v95, v85);
      }

LABEL_97:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_22;
    }

    if ((v44 & 0xC000000000000001) == 0)
    {
      if (v46 < *(v27 + 16))
      {

        goto LABEL_16;
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
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
      v45 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_11;
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v47 = static UUID.== infix(_:_:)();

    if (v47)
    {
      break;
    }

    if (__OFADD__(v46++, 1))
    {
      goto LABEL_87;
    }
  }

  v42 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  swift_beginAccess();
  v51 = *(v30 + 32);
  if (!(v51 >> 62))
  {
    result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_26;
  }

LABEL_102:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  v22 = v100;
  v50 = v98;
  if (result < v42)
  {
    __break(1u);
  }

  else if ((v42 & 0x8000000000000000) == 0)
  {

    sub_10019E54C(v42, v42, v22);
    swift_endAccess();

    v49 = v105;
    goto LABEL_29;
  }

  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}