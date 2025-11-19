id sub_100283790(uint64_t a1)
{
  if (qword_100AD1358 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() effectForBlurEffect:qword_100B22F78 style:7];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];
  v4 = objc_allocWithZone(UIColor);
  v11[4] = sub_100283984;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10038D350;
  v11[3] = &unk_100A11FD8;
  v5 = _Block_copy(v11);
  v6 = v3;
  v7 = [v4 initWithDynamicProvider:v5];
  _Block_release(v5);

  [v6 setBackgroundColor:v7];

  v8 = sub_1007A2214();
  [v6 _setGroupName:v8];

  v9 = [*(a1 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView) contentView];
  [v9 addSubview:v6];

  return v6;
}

id sub_100283984(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = [v2 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.3];

    return v4;
  }

  else
  {
    v6 = [v2 _barHairlineShadowColor];

    return v6;
  }
}

id sub_100283C38(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t (*sub_100283CF8(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100283068(v2);
  return sub_100283D68;
}

uint64_t sub_100283D6C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView) _groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1007A2254();

  return v3;
}

void sub_100283DDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView);
  if (a2)
  {
    v4 = sub_1007A2214();
  }

  else
  {
    v4 = 0;
  }

  [v3 _setGroupName:v4];
}

uint64_t (*sub_100283E54(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100282EB4(v2);
  return sub_100284398;
}

void sub_100283EC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_100283F0C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books20PaletteContainerView_containerView);
  [v3 bounds];
  [a1 setFrame:?];
  [a1 setAutoresizingMask:18];

  return [v3 addSubview:a1];
}

uint64_t sub_100283FD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[40])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100284028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

BOOL sub_100284084(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  return v4 && a1[4] == a2[4];
}

void sub_10028410C()
{
  *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_defaultHeight) = 0x4050000000000000;
  v1 = (v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v1 = UIEdgeInsetsZero.top;
  v1[1] = left;
  v1[2] = bottom;
  v1[3] = right;
  v5 = v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration;
  *v5 = 4;
  *(v5 + 8) = UIEdgeInsetsZero.top;
  *(v5 + 16) = left;
  *(v5 + 24) = bottom;
  *(v5 + 32) = right;
  v6 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for PaletteContainerView.SeparatorConfiguration.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaletteContainerView.SeparatorConfiguration.Position(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100284344()
{
  result = qword_100AD84A8;
  if (!qword_100AD84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD84A8);
  }

  return result;
}

uint64_t sub_10028439C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1002843E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10028446C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_1007A29C4();
    v7 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v10, &qword_100AD8538);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1002845C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = sub_10079D074();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079CDF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD84B0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v34 = sub_1001F1160(&qword_100AD84B8);
  __chkstk_darwin(v34);
  v12 = &v34 - v11;
  v13 = sub_1001F1160(&qword_100AD84C0);
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  *v10 = sub_10079C8F4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v16 = &v10[*(sub_1001F1160(&qword_100AD84C8) + 44)];
  v37 = v2;
  sub_100284BCC(v2, v16);
  sub_10079CDE4();
  sub_100005920(&qword_100AD84D0, &qword_100AD84B0);
  sub_100285940();
  sub_10079D6A4();
  (*(v5 + 8))(v7, v4);
  sub_100007840(v10, &qword_100AD84B0);
  v17 = &v12[*(sub_1001F1160(&qword_100AD84D8) + 36)];
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_10079C9E4();
  v20 = *(*(v19 - 8) + 104);
  v20(v17, v18, v19);
  *&v17[*(sub_1001F1160(&unk_100AE42C0) + 36)] = 256;
  v21 = &v12[*(sub_1001F1160(&qword_100AD84E0) + 36)];
  v20(v21, v18, v19);
  v21[*(sub_1001F1160(&qword_100AD84E8) + 36)] = 0;
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  v22 = &v12[*(sub_1001F1160(&qword_100AD84F0) + 36)];
  v23 = v47;
  *v22 = v46;
  *(v22 + 1) = v23;
  *(v22 + 2) = v48;
  v24 = v34;
  v25 = &v12[*(v34 + 36)];
  sub_1001F1160(&qword_100AD84F8);
  sub_10079C444();
  v26 = v37;
  v27 = sub_10028446C();
  *v25 = v27;
  v25[8] = 0;
  __chkstk_darwin(v27);
  *(&v34 - 2) = v26;
  v28 = sub_1001F1160(&qword_100AE4700);
  v29 = sub_1002859A0();
  v30 = sub_100005920(&qword_100AD8530, &qword_100AE4700);
  sub_10079D6C4();
  sub_10002E340(v12);
  v31 = v38;
  sub_10079D064();
  v42 = v24;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v36;
  sub_10079D9A4();
  (*(v39 + 8))(v31, v41);
  return (*(v35 + 8))(v15, v32);
}

uint64_t sub_100284BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v105 = sub_1001F1160(&qword_100AD8540) - 8;
  __chkstk_darwin(v105);
  v97 = &v94 - v3;
  v112 = sub_1001F1160(&qword_100AD8548);
  v4 = __chkstk_darwin(v112);
  v120 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v111 = &v94 - v7;
  __chkstk_darwin(v6);
  v126 = &v94 - v8;
  v125 = sub_100796CF4();
  v9 = *(v125 - 8);
  v10 = __chkstk_darwin(v125);
  v124 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v94 - v12;
  v123 = sub_1007A21D4();
  v14 = *(v123 - 8);
  v15 = __chkstk_darwin(v123);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v94 - v18;
  v122 = sub_1001F1160(&qword_100AD8550);
  v20 = __chkstk_darwin(v122);
  v118 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v119 = &v94 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v94 - v25;
  __chkstk_darwin(v24);
  v127 = &v94 - v27;
  v28 = a1;
  v95 = a1;
  LOBYTE(a1) = *(a1 + 48);
  v29 = *(v28 + 64);
  v30 = *(v28 + 72);
  KeyPath = swift_getKeyPath();
  *&v130 = KeyPath;
  BYTE8(v130) = 0;
  v131 = 0xD000000000000017;
  v132 = 0x80000001008C79C0;
  v133 = a1;
  v134 = v29;
  v135 = v30;
  v110 = v30;

  sub_1007A2154();
  sub_100796C94();
  v31 = *(v14 + 16);
  v32 = v123;
  v109 = v14 + 16;
  v108 = v31;
  v31(v17, v19, v123);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v104 = objc_opt_self();
  v107 = ObjCClassFromMetadata;
  v34 = [v104 bundleForClass:ObjCClassFromMetadata];
  v35 = *(v9 + 16);
  v36 = v125;
  v103 = v9 + 16;
  v102 = v35;
  v35(v124, v13, v125);
  v113 = v17;
  v37 = sub_1007A22D4();
  v39 = v38;
  v40 = *(v9 + 8);
  v116 = v13;
  v117 = v9 + 8;
  v101 = v40;
  v40(v13, v36);
  v41 = *(v14 + 8);
  v96 = v19;
  v42 = v95;
  v115 = v14 + 8;
  v100 = v41;
  v41(v19, v32);
  v43 = v97;
  *&v136 = v37;
  *(&v136 + 1) = v39;
  v44 = sub_100285CEC();
  v45 = sub_100206ECC();
  v106 = v44;
  sub_10079D8E4();

  v139 = *(v42 + 32);
  v130 = *(v42 + 32);
  v46 = *(v42 + 96);
  v47 = *(v42 + 104);

  v99 = v46;
  v98 = v47;
  v110 = v45;
  sub_10079C204();
  KeyPath = v26;
  sub_100007840(v26, &qword_100AD8550);
  v48 = *(sub_10079C3D4() + 20);
  v49 = enum case for RoundedCornerStyle.circular(_:);
  v50 = sub_10079C9E4();
  (*(*(v50 - 8) + 104))(&v43[v48], v49, v50);
  __asm { FMOV            V0.2D, #1.0 }

  *v43 = _Q0;
  sub_10079E474();
  sub_10079BE54();
  v56 = &v43[*(sub_1001F1160(&qword_100AD8560) + 36)];
  v57 = v137;
  *v56 = v136;
  *(v56 + 1) = v57;
  *(v56 + 2) = v138;
  v58 = *(v42 + 56);
  v59 = swift_getKeyPath();
  v60 = &v43[*(v105 + 44)];
  *v60 = v59;
  v60[1] = v58;
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;

  LOBYTE(v44) = sub_10079D2A4();
  *(inited + 32) = v44;
  v62 = sub_10079D2B4();
  *(inited + 33) = v62;
  v63 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v44)
  {
    v63 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v62)
  {
    v63 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v43;
  v73 = v111;
  sub_10020B3C8(v72, v111, &qword_100AD8540);
  v74 = v73 + *(v112 + 36);
  *v74 = v63;
  *(v74 + 8) = v65;
  *(v74 + 16) = v67;
  *(v74 + 24) = v69;
  *(v74 + 32) = v71;
  *(v74 + 40) = 0;
  v75 = v126;
  sub_10020B3C8(v73, v126, &qword_100AD8548);
  v76 = *(v42 + 49);
  v78 = *(v42 + 80);
  v77 = *(v42 + 88);
  *&v130 = swift_getKeyPath();
  BYTE8(v130) = 0;
  v131 = 0xD000000000000016;
  v132 = 0x80000001008C7A40;
  v133 = v76;
  v134 = v78;
  v135 = v77;

  v79 = v96;
  sub_1007A2154();
  v80 = v116;
  sub_100796C94();
  v81 = v123;
  v108(v113, v79, v123);
  v82 = [v104 bundleForClass:v107];
  v83 = v125;
  v102(v124, v80, v125);
  v84 = sub_1007A22D4();
  v86 = v85;
  v101(v80, v83);
  v100(v79, v81);
  v128 = v84;
  v129 = v86;
  v87 = v119;
  sub_10079D8E4();

  v130 = v139;
  v88 = KeyPath;
  sub_10079C204();
  sub_1002308AC(&v139);
  sub_100007840(v87, &qword_100AD8550);
  sub_1000077D8(v127, v87, &qword_100AD8550);
  v89 = v120;
  sub_1000077D8(v75, v120, &qword_100AD8548);
  v90 = v118;
  sub_1000077D8(v88, v118, &qword_100AD8550);
  v91 = v121;
  sub_1000077D8(v87, v121, &qword_100AD8550);
  v92 = sub_1001F1160(&qword_100AD8568);
  sub_1000077D8(v89, v91 + *(v92 + 48), &qword_100AD8548);
  sub_1000077D8(v90, v91 + *(v92 + 64), &qword_100AD8550);
  sub_100007840(v88, &qword_100AD8550);
  sub_100007840(v126, &qword_100AD8548);
  sub_100007840(v127, &qword_100AD8550);
  sub_100007840(v90, &qword_100AD8550);
  sub_100007840(v89, &qword_100AD8548);
  return sub_100007840(v87, &qword_100AD8550);
}

uint64_t sub_1002857BC()
{

  sub_1001F1160(&qword_100AD1D70);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
  return sub_10079E054();
}

uint64_t sub_10028587C()
{
  sub_100206ECC();

  return sub_10079DFD4();
}

unint64_t sub_100285940()
{
  result = qword_100AD5388;
  if (!qword_100AD5388)
  {
    sub_10079CDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5388);
  }

  return result;
}

unint64_t sub_1002859A0()
{
  result = qword_100AD8500;
  if (!qword_100AD8500)
  {
    sub_1001F1234(&qword_100AD84B8);
    sub_100285A58();
    sub_100005920(&qword_100AD8528, &qword_100AD84F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8500);
  }

  return result;
}

unint64_t sub_100285A58()
{
  result = qword_100AD8508;
  if (!qword_100AD8508)
  {
    sub_1001F1234(&qword_100AD84F0);
    sub_100285AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8508);
  }

  return result;
}

unint64_t sub_100285AE4()
{
  result = qword_100AD8510;
  if (!qword_100AD8510)
  {
    sub_1001F1234(&qword_100AD84E0);
    sub_100285B9C();
    sub_100005920(&qword_100AD8520, &qword_100AD84E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8510);
  }

  return result;
}

unint64_t sub_100285B9C()
{
  result = qword_100AD8518;
  if (!qword_100AD8518)
  {
    sub_1001F1234(&qword_100AD84D8);
    sub_1001F1234(&qword_100AD84B0);
    sub_10079CDF4();
    sub_100005920(&qword_100AD84D0, &qword_100AD84B0);
    sub_100285940();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8518);
  }

  return result;
}

unint64_t sub_100285CEC()
{
  result = qword_100AD8558;
  if (!qword_100AD8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8558);
  }

  return result;
}

uint64_t sub_100285DB8()
{
  result = _s5StateO21CapturingTurnSnapshotVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s5StateO7TurningVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s5StateO21CapturingDragSnapshotVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s5StateO8DraggingVMa(319);
        if (v4 <= 0x3F)
        {
          result = _s5StateO9ResettingVMa(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_100285F78()
{
  sub_1007A0F74();
  if (v0 <= 0x3F)
  {
    sub_10000A7C4(319, &qword_100AD7620);
    if (v1 <= 0x3F)
    {
      sub_100286048();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100286048()
{
  if (!qword_100AD8728)
  {
    sub_10000A7C4(255, &qword_100AD7620);
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD8728);
    }
  }
}

void sub_1002860D8()
{
  sub_1007A0F74();
  if (v0 <= 0x3F)
  {
    sub_10000A7C4(319, &qword_100AD7620);
    if (v1 <= 0x3F)
    {
      sub_100286198();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100286198()
{
  if (!qword_100AD87E0)
  {
    sub_1007A0F74();
    v0 = _s5StateO12EitherOrBothOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD87E0);
    }
  }
}

uint64_t sub_100286214()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002862C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= v3)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = ((v3 + *(v4 + 80)) & ~*(v4 + 80)) + v5;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v13 < 2)
    {
LABEL_29:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_29;
  }

LABEL_18:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_100286430(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 64);
  if (v7 <= v5)
  {
    v8 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + v7;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_100286664()
{
  sub_1007A0F74();
  if (v0 <= 0x3F)
  {
    sub_10000A7C4(319, &qword_100AD7620);
    if (v1 <= 0x3F)
    {
      sub_100286198();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100286734(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO4TurnVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002867B4(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO4TurnVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100286824()
{
  result = _s5StateO4TurnVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002868A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100286974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1007A0F74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100286A2C()
{
  result = sub_1007A0F74();
  if (v1 <= 0x3F)
  {
    result = sub_10000A7C4(319, &qword_100AD7620);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100286AD4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD8570);
  sub_100008B98(v0, qword_100AD8570);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

uint64_t sub_100286B58()
{
  if ((sub_1007A0F24() & 1) == 0)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100ADAF70);
  if ((sub_1007A3184() & 1) == 0 || (sub_1007A03D4() & 1) == 0)
  {
    return 0;
  }

  return sub_1007A0F24();
}

uint64_t sub_100286C10@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5StateOMa(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028A5C8(v4, v13, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v23 = _s5StateO4TurnVMa(0);
      (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
      return sub_10028A568(v13, _s5StateOMa);
    }

    sub_10028A500(v13, v19, _s5StateO7TurningVMa);
    v21 = v19;
    goto LABEL_9;
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    sub_10028A500(v13, v16, _s5StateO8DraggingVMa);
    sub_100286F74(a1 & 1, 0, a2, a3);
    return sub_10028A568(v16, _s5StateO8DraggingVMa);
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_10028A500(v13, v10, _s5StateO9ResettingVMa);
    v21 = v10;
LABEL_9:
    sub_10028A500(v21, a2, _s5StateO4TurnVMa);
    v24 = _s5StateO4TurnVMa(0);
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }

  v25 = _s5StateO4TurnVMa(0);
  return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
}

id sub_100286F74@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v44 = a2;
  v8 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v8 - 8);
  v10 = &v41[-v9];
  v11 = sub_1007A0F74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_100289CF0(a1 & 1);
  v22 = v21;
  if (v21 == 2)
  {
    v42 = v21;
    v23 = v14;
    v43 = a3;
    v24 = *(v12 + 16);
    v24(v20, v4, v11);
LABEL_10:
    v24(v17, v4, v11);
    v31 = _s5StateO8DraggingVMa(0);
    v32 = *(v4 + v31[5]);
    v24(v23, v20, v11);
    v33 = *(v4 + v31[10]);
    v34 = fabs(*(v4 + v31[9]));
    v35 = *(v12 + 8);
    v36 = v32;
    v35(v20, v11);
    v37 = *(v12 + 32);
    v38 = v43;
    v37(v43, v17, v11);
    v39 = _s5StateO4TurnVMa(0);
    *(v38 + v39[5]) = v36;
    *(v38 + v39[6]) = v42 & 1;
    v37(v38 + v39[7], v23, v11);
    *(v38 + v39[8]) = v44;
    *(v38 + v39[9]) = v33;
    *(v38 + v39[10]) = v34 / fmax(a4, 1.0);
    (*(*(v39 - 1) + 56))(v38, 0, 1, v39);
    v40 = v44;

    return v40;
  }

  sub_100289D5C(v21, v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v42 = v22;
    v23 = v14;
    v43 = a3;
    (*(v12 + 32))(v20, v10, v11);
    v24 = *(v12 + 16);
    goto LABEL_10;
  }

  sub_100007840(v10, &unk_100AEB380);
  if (qword_100AD1360 != -1)
  {
    swift_once();
  }

  v25 = sub_10079ACE4();
  sub_100008B98(v25, qword_100AD8570);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29A4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Missing turnDestination", v28, 2u);
  }

  v29 = _s5StateO4TurnVMa(0);
  return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
}

id sub_100287408()
{
  v1 = v0;
  v2 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateOMa(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028A5C8(v1, v10, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v16 = EnumCaseMultiPayload;
      result = 0;
      if (v16 != 6)
      {
        return result;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_10028A500(v10, v4, _s5StateO8DraggingVMa);
      v12 = *&v4[*(v2 + 20)];
      v13 = _s5StateO8DraggingVMa;
      v14 = v4;
      goto LABEL_8;
    }
  }

  else if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
  {
    sub_10028A500(v10, v7, _s5StateO7TurningVMa);
    v12 = *&v7[*(_s5StateO4TurnVMa(0) + 20)];
    v13 = _s5StateO4TurnVMa;
    v14 = v7;
LABEL_8:
    sub_10028A568(v14, v13);
    return v12;
  }

  sub_10028A568(v10, _s5StateOMa);
  return 0;
}

uint64_t sub_100287648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s5StateOMa(0);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028A5C8(v2, v15, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      sub_10028A500(v15, v18, _s5StateO8DraggingVMa);
      v23 = sub_1007A0F74();
      v24 = *(v23 - 8);
      (*(v24 + 16))(a1, v18, v23);
      v25 = _s5StateO8DraggingVMa;
      v26 = v18;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_10028A500(v15, v6, _s5StateO9ResettingVMa);
      v28 = sub_1007A0F74();
      v29 = *(v28 - 8);
      (*(v29 + 16))(a1, v6, v28);
      sub_10028A568(v6, _s5StateO4TurnVMa);
      return (*(v29 + 56))(a1, 0, 1, v28);
    }

    else
    {
      v32 = sub_1007A0F74();
      return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_10028A500(v15, v21, _s5StateO7TurningVMa);
      v23 = sub_1007A0F74();
      v24 = *(v23 - 8);
      (*(v24 + 16))(a1, v21, v23);
      v25 = _s5StateO4TurnVMa;
      v26 = v21;
LABEL_8:
      sub_10028A568(v26, v25);
      return (*(v24 + 56))(a1, 0, 1, v23);
    }

    if (!EnumCaseMultiPayload)
    {
      sub_10028A500(v15, v12, _s5StateO21CapturingTurnSnapshotVMa);
      v23 = sub_1007A0F74();
      v24 = *(v23 - 8);
      (*(v24 + 16))(a1, v12, v23);
      v25 = _s5StateO21CapturingTurnSnapshotVMa;
      v26 = v12;
      goto LABEL_8;
    }

    sub_10028A500(v15, v9, _s5StateO21CapturingDragSnapshotVMa);
    v30 = sub_1007A0F74();
    v31 = *(v30 - 8);
    (*(v31 + 16))(a1, v9, v30);
    sub_10028A568(v9, _s5StateO21CapturingDragSnapshotVMa);
    return (*(v31 + 56))(a1, 0, 1, v30);
  }
}

uint64_t sub_100287BF8(uint64_t a1)
{
  v2 = v1;
  v4 = _s5StateOMa(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD8A80);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = _s5StateO8DraggingVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v9, &qword_100AD8A80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100007840(v9, &qword_100AD8A80);
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AD8570);
    v15 = sub_10079ACC4();
    v16 = sub_1007A29B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
    }

    return sub_100007840(a1, &qword_100AD8A80);
  }

  else
  {
    sub_100007840(a1, &qword_100AD8A80);
    sub_10028A500(v9, v13, _s5StateO8DraggingVMa);
    sub_10028A5C8(v2, v6, _s5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 4)
    {
      sub_10028A568(v2, _s5StateOMa);
      sub_10028A500(v13, v2, _s5StateO8DraggingVMa);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_10028A568(v13, _s5StateO8DraggingVMa);
    }

    return sub_10028A568(v6, _s5StateOMa);
  }
}

uint64_t sub_100287FB4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8770);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(v2, v6, &qword_100AD8770);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 56))(a1, 1, 1, v7);
      return sub_100007840(v6, &qword_100AD8770);
    }

    v14 = *(sub_1001F1160(&qword_100AD8A70) + 48);
    v13 = *(v8 + 32);
    v13(v10, v6, v7);
    (*(v8 + 8))(&v6[v14], v7);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, v6, v7);
  }

  v13(a1, v10, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_1002881F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 56))(a2, 1, 1, v8);
      return (*(v4 + 8))(v6, a1);
    }

    v16 = *(a1 + 24);
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    v15 = *(v9 + 32);
    v15(v12, v6, v8);
    (*(*(v16 - 8) + 8))(&v6[v17], v16);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v12, v6, v8);
  }

  v15(a2, v12, v8);
  return (*(v9 + 56))(a2, 0, 1, v8);
}

uint64_t sub_10028845C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8770);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(v2, v6, &qword_100AD8770);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v8 + 32);
      v12(v10, v6, v7);
    }

    else
    {
      v14 = sub_1001F1160(&qword_100AD8A70);
      v12 = *(v8 + 32);
      v12(v10, &v6[*(v14 + 48)], v7);
      (*(v8 + 8))(v6, v7);
    }

    v12(a1, v10, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    return sub_100007840(v6, &qword_100AD8770);
  }
}

uint64_t sub_100288698@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v9 + 32);
      v14(v12, v6, v8);
    }

    else
    {
      v16 = *(a1 + 16);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v14 = *(v9 + 32);
      v14(v12, &v6[*(TupleTypeMetadata2 + 48)], v8);
      (*(*(v16 - 8) + 8))(v6, v16);
    }

    v14(a2, v12, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_1002888FC(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = sub_1007A0F74();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = __chkstk_darwin(v2);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v53 = &v51 - v6;
  v7 = __chkstk_darwin(v5);
  v54 = &v51 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - v10;
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = sub_1001F1160(&qword_100AD8770);
  v15 = __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v51 - v19;
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = sub_1001F1160(&qword_100AD8A90);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v51 - v25;
  v27 = &v51 + *(v24 + 56) - v25;
  sub_1000077D8(v57, &v51 - v25, &qword_100AD8770);
  sub_1000077D8(v58, v27, &qword_100AD8770);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000077D8(v26, v22, &qword_100AD8770);
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = v55;
      v47 = v56;
      (*(v55 + 32))(v13, v27, v56);
      sub_10028B1C4();
      v31 = sub_1007A2124();
      v49 = *(v48 + 8);
      v49(v13, v47);
      v49(v22, v47);
      goto LABEL_17;
    }

    (*(v55 + 8))(v22, v56);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000077D8(v26, v20, &qword_100AD8770);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v55;
      v29 = v56;
      (*(v55 + 32))(v11, v27, v56);
      sub_10028B1C4();
      v31 = sub_1007A2124();
      v32 = *(v30 + 8);
      v32(v11, v29);
      v32(v20, v29);
LABEL_17:
      sub_100007840(v26, &qword_100AD8770);
      return v31 & 1;
    }

    (*(v55 + 8))(v20, v56);
    goto LABEL_13;
  }

  sub_1000077D8(v26, v17, &qword_100AD8770);
  v33 = *(sub_1001F1160(&qword_100AD8A70) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v43 = *(v55 + 8);
    v44 = &v17[v33];
    v45 = v56;
    v43(v44, v56);
    v43(v17, v45);
LABEL_13:
    v46 = &qword_100AD8A90;
    goto LABEL_14;
  }

  v35 = v54;
  v34 = v55;
  v36 = *(v55 + 32);
  v37 = v56;
  v36(v54, v27, v56);
  v38 = v53;
  v36(v53, &v17[v33], v37);
  v39 = &v27[v33];
  v40 = v52;
  v36(v52, v39, v37);
  sub_10028B1C4();
  v41 = sub_1007A2124();
  v42 = *(v34 + 8);
  v42(v17, v37);
  if (v41)
  {
    v31 = sub_1007A2124();
    v42(v40, v37);
    v42(v38, v37);
    v42(v35, v37);
    goto LABEL_17;
  }

  v42(v40, v37);
  v42(v38, v37);
  v42(v35, v37);
  v46 = &qword_100AD8770;
LABEL_14:
  sub_100007840(v26, v46);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_100288EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v66 = a5;
  v74 = a1;
  v75 = a2;
  v73 = *(a4 - 8);
  v6 = __chkstk_darwin(a1);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v67 = &v62 - v9;
  v10 = __chkstk_darwin(v8);
  v62 = &v62 - v11;
  v72 = *(v12 - 8);
  v13 = __chkstk_darwin(v10);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v70 = v18;
  v71 = v17;
  v19 = _s5StateO12EitherOrBothOMa();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v62 - v25;
  __chkstk_darwin(v24);
  v28 = &v62 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = *(TupleTypeMetadata2 - 8);
  v30 = __chkstk_darwin(TupleTypeMetadata2);
  v32 = &v62 - v31;
  v33 = &v62 + *(v30 + 48) - v31;
  v68 = v20;
  v34 = *(v20 + 16);
  v34(&v62 - v31, v74, v19);
  v34(v33, v75, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v16;
    v34(v28, v32, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v57 = v71;
      v58 = v72;
      v59 = v43;
      (*(v72 + 32))(v43, v33, v71);
      v40 = sub_1007A2124();
      v60 = *(v58 + 8);
      v60(v59, v57);
      v60(v28, v57);
      v42 = v68;
      goto LABEL_14;
    }

    (*(v72 + 8))(v28, v71);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34(v26, v32, v19);
    v36 = swift_getEnumCaseMultiPayload();
    v37 = v70;
    if (v36 == 1)
    {
      v38 = v73;
      v39 = v62;
      (*(v73 + 32))(v62, v33, v70);
      v40 = sub_1007A2124();
      v41 = *(v38 + 8);
      v41(v39, v37);
      v41(v26, v37);
      v42 = v68;
      goto LABEL_14;
    }

    (*(v73 + 8))(v26, v70);
LABEL_13:
    v40 = 0;
    v42 = v69;
    v19 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  v34(v23, v32, v19);
  v44 = v70;
  v45 = v71;
  v46 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v73 + 8))(&v23[v46], v44);
    (*(v72 + 8))(v23, v45);
    goto LABEL_13;
  }

  v47 = v64;
  (*(v72 + 32))(v64, v33, v45);
  v48 = *(v73 + 32);
  v48(v67, &v23[v46], v44);
  v49 = &v33[v46];
  v50 = v47;
  v51 = v72;
  v52 = v63;
  v48(v63, v49, v44);
  v53 = sub_1007A2124();
  v54 = *(v51 + 8);
  v54(v23, v45);
  if (v53)
  {
    v40 = sub_1007A2124();
    v55 = *(v73 + 8);
    v55(v52, v44);
    v55(v67, v44);
    v54(v64, v45);
  }

  else
  {
    v61 = *(v73 + 8);
    v61(v52, v44);
    v61(v67, v44);
    v54(v50, v45);
    v40 = 0;
  }

  v42 = v68;
LABEL_14:
  (*(v42 + 8))(v32, v19);
  return v40 & 1;
}

uint64_t sub_100289578@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v49 = a3;
  v7 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = _s5StateO4TurnVMa(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  sub_100286F74(a2 & 1, 0, v12, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007840(v12, &qword_100AD8A78);
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100AD8570);
    sub_10028A5C8(a1, v9, _s5StateO8DraggingVMa);
    v21 = sub_10079ACC4();
    v22 = sub_1007A29B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v23 = 136315650;
      v24 = sub_100611AC4();
      v26 = v25;
      sub_10028A568(v9, _s5StateO8DraggingVMa);
      v27 = sub_1000070F4(v24, v26, &v50);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_1007A0CD4();
      v30 = sub_1000070F4(v28, v29, &v50);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2048;
      *(v23 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot produce a Turning state from %s, for pageProgressDirection: %s, contentWidth: %f", v23, 0x20u);
      swift_arrayDestroy();

      v31 = a1;
    }

    else
    {

      sub_10028A568(a1, _s5StateO8DraggingVMa);
      v31 = v9;
    }

    sub_10028A568(v31, _s5StateO8DraggingVMa);
    v34 = 1;
    v33 = v49;
    goto LABEL_25;
  }

  sub_10028A500(v12, v19, _s5StateO4TurnVMa);
  v32 = -1.0;
  if (a2)
  {
    v33 = v49;
    if (v19[*(v13 + 24)])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v33 = v49;
  if (v19[*(v13 + 24)])
  {
LABEL_12:
    v32 = 1.0;
  }

LABEL_13:
  v35 = v32 * *(a1 + *(v7 + 40));
  if (v35 >= -200.0)
  {
    if (fabs(v35) > 500.0 || *&v19[*(v13 + 40)] > 0.333333333)
    {
      sub_10028A568(a1, _s5StateO8DraggingVMa);
      sub_10028A500(v19, v33, _s5StateO4TurnVMa);
      v34 = 0;
      goto LABEL_25;
    }

    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v44 = sub_10079ACE4();
    sub_100008B98(v44, qword_100AD8570);
    sub_10028A5C8(v19, v16, _s5StateO4TurnVMa);
    v45 = sub_10079ACC4();
    v46 = sub_1007A29A4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134218752;
      v48 = *&v16[*(v13 + 40)];
      sub_10028A568(v16, _s5StateO4TurnVMa);
      *(v47 + 4) = v48;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 0x3FD5555555555555;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v35;
      *(v47 + 32) = 2048;
      *(v47 + 34) = 0x407F400000000000;
      _os_log_impl(&_mh_execute_header, v45, v46, "Refusing to drag, progress %f (threshold %f). velocity %f (threshold %f)", v47, 0x2Au);

      sub_10028A568(a1, _s5StateO8DraggingVMa);
    }

    else
    {

      sub_10028A568(a1, _s5StateO8DraggingVMa);
      sub_10028A568(v16, _s5StateO4TurnVMa);
    }

    v40 = v19;
  }

  else
  {
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v36 = sub_10079ACE4();
    sub_100008B98(v36, qword_100AD8570);
    v37 = sub_10079ACC4();
    v38 = sub_1007A29A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Refusing to drag, ended with flick in opposite direction", v39, 2u);
    }

    sub_10028A568(a1, _s5StateO8DraggingVMa);
    v40 = v19;
  }

  sub_10028A568(v40, _s5StateO4TurnVMa);
  v34 = 1;
LABEL_25:
  v42 = _s5StateO7TurningVMa(0);
  return (*(*(v42 - 8) + 56))(v33, v34, 1, v42);
}

uint64_t sub_100289CF0(char a1)
{
  v3 = _s5StateO8DraggingVMa(0);
  v4 = *(v1 + *(v3 + 36));
  if (v4 == 0.0)
  {
    v4 = *(v1 + *(v3 + 40));
    if (v4 == 0.0)
    {
      return 2;
    }
  }

  if (a1)
  {
    if (v4 >= 0.0)
    {
      return 0;
    }
  }

  else if (v4 < 0.0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100289D5C@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AD8770);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_1007A0F74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = v2 + *(_s5StateO8DraggingVMa(0) + 28);
  if (a1)
  {
    sub_1000077D8(v18, v10, &qword_100AD8770);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v12 + 56))(a2, 1, 1, v11);
        return sub_100007840(v10, &qword_100AD8770);
      }

      v24 = *(sub_1001F1160(&qword_100AD8A70) + 48);
      v23 = *(v12 + 32);
      v23(v17, v10, v11);
      (*(v12 + 8))(&v10[v24], v11);
    }

    else
    {
      v23 = *(v12 + 32);
      v23(v17, v10, v11);
    }

    v23(a2, v17, v11);
  }

  else
  {
    sub_1000077D8(v18, v7, &qword_100AD8770);
    v21 = swift_getEnumCaseMultiPayload();
    if (!v21)
    {
      (*(v12 + 56))(a2, 1, 1, v11);
      return sub_100007840(v7, &qword_100AD8770);
    }

    if (v21 == 1)
    {
      v22 = *(v12 + 32);
      v22(v14, v7, v11);
      v22(a2, v14, v11);
    }

    else
    {
      v25 = sub_1001F1160(&qword_100AD8A70);
      v26 = *(v12 + 32);
      v26(v14, &v7[*(v25 + 48)], v11);
      (*(v12 + 8))(v7, v11);
      v26(a2, v14, v11);
    }
  }

  return (*(v12 + 56))(a2, 0, 1, v11);
}

uint64_t sub_10028A0E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = _s5StateO8DraggingVMa(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = _s5StateO4TurnVMa(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100286F74(a2 & 1, *(a1 + *(v9 + 28)), v14, a4);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100007840(v14, &qword_100AD8A78);
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AD8570);
    sub_10028A5C8(a1, v11, _s5StateO8DraggingVMa);
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136315650;
      v23 = sub_100611AC4();
      v25 = v24;
      sub_10028A568(v11, _s5StateO8DraggingVMa);
      v26 = sub_1000070F4(v23, v25, &v34);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_1007A0CD4();
      v29 = sub_1000070F4(v27, v28, &v34);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2048;
      *(v22 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cannot produce a Turning state from %s, for pageProgressDirection: %s, contentWidth: %f", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10028A568(v11, _s5StateO8DraggingVMa);
    }

    v30 = 1;
  }

  else
  {
    sub_10028A500(v14, v18, _s5StateO4TurnVMa);
    sub_10028A500(v18, a3, _s5StateO4TurnVMa);
    v30 = 0;
  }

  sub_10028A568(a1, _s5StateO8DraggingVMa);
  v31 = _s5StateO9ResettingVMa(0);
  return (*(*(v31 - 8) + 56))(a3, v30, 1, v31);
}

uint64_t sub_10028A500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028A568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028A5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_10028A630(uint64_t a1, uint64_t a2)
{
  if ((sub_1007A0F24() & 1) == 0)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100ADAF70);
  v4 = _s5StateO4TurnVMa(0);
  if ((sub_1007A3184() & 1) == 0 || (sub_1007A03D4() & 1) == 0 || (sub_1007A0F24() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_10000A7C4(0, &qword_100AD7620);
    v8 = v7;
    v9 = v6;
    v10 = sub_1007A3184();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (*(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  return 0;
}

BOOL sub_10028A760(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v2 - 8);
  v68 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v4 - 8);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v61 - v7;
  v63 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v63);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v9 - 8);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v61 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v61);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateOMa(0);
  __chkstk_darwin(v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v70 = &v61 - v24;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  __chkstk_darwin(v28);
  v30 = &v61 - v29;
  __chkstk_darwin(v31);
  v33 = &v61 - v32;
  v34 = sub_1001F1160(&qword_100AD8A88);
  __chkstk_darwin(v34 - 8);
  v36 = &v61 - v35;
  v38 = *(v37 + 56);
  sub_10028A5C8(v71, &v61 - v35, _s5StateOMa);
  sub_10028A5C8(v72, &v36[v38], _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
LABEL_39:
          sub_100007840(v36, &qword_100AD8A88);
          return 0;
        }

        goto LABEL_30;
      }

      sub_10028A5C8(v36, v16, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v40 = _s5StateO9ResettingVMa;
        v41 = v16;
        goto LABEL_38;
      }

      v47 = v68;
      sub_10028A500(&v36[v38], v68, _s5StateO9ResettingVMa);
      v43 = sub_10028A630(v16, v47);
      v44 = _s5StateO9ResettingVMa;
      sub_10028A568(v47, _s5StateO9ResettingVMa);
      v45 = v16;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_10028A5C8(v36, v22, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v55 = _s5StateO8DraggingVMa;
        goto LABEL_37;
      }

      v42 = v66;
      sub_10028A500(&v36[v38], v66, _s5StateO8DraggingVMa);
      v43 = sub_10028B21C(v22, v42);
      v44 = _s5StateO8DraggingVMa;
      sub_10028A568(v42, _s5StateO8DraggingVMa);
      v45 = v22;
    }

    else
    {
      sub_10028A5C8(v36, v19, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v40 = _s5StateO8DraggingVMa;
        v41 = v19;
        goto LABEL_38;
      }

      v50 = v67;
      sub_10028A500(&v36[v38], v67, _s5StateO8DraggingVMa);
      v43 = sub_10028B21C(v19, v50);
      v44 = _s5StateO8DraggingVMa;
      sub_10028A568(v50, _s5StateO8DraggingVMa);
      v45 = v19;
    }

LABEL_20:
    v49 = v44;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10028A5C8(v36, v27, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v40 = _s5StateO7TurningVMa;
        v41 = v27;
        goto LABEL_38;
      }

      v46 = v65;
      sub_10028A500(&v36[v38], v65, _s5StateO7TurningVMa);
      v43 = sub_10028A630(v27, v46);
      v44 = _s5StateO7TurningVMa;
      sub_10028A568(v46, _s5StateO7TurningVMa);
      v45 = v27;
      goto LABEL_20;
    }

    v22 = v70;
    sub_10028A5C8(v36, v70, _s5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v51 = &v36[v38];
      v52 = v69;
      sub_10028A500(v51, v69, _s5StateO21CapturingDragSnapshotVMa);
      if (sub_1007A0F24())
      {
        sub_10000A7C4(0, &qword_100ADAF70);
        if ((sub_1007A3184() & 1) != 0 && (sub_1002888FC(&v22[v63[6]], v52 + v63[6]) & 1) != 0 && *&v22[v63[7]] == *(v52 + v63[7]) && *&v22[v63[8]] == *(v52 + v63[8]))
        {
          v53 = _s5StateO21CapturingDragSnapshotVMa;
          sub_10028A568(v52, _s5StateO21CapturingDragSnapshotVMa);
          v54 = v22;
LABEL_48:
          sub_10028A568(v54, v53);
LABEL_30:
          sub_10028A568(v36, _s5StateOMa);
          return 1;
        }
      }

      v57 = _s5StateO21CapturingDragSnapshotVMa;
      sub_10028A568(v52, _s5StateO21CapturingDragSnapshotVMa);
      v58 = v22;
LABEL_50:
      sub_10028A568(v58, v57);
      sub_10028A568(v36, _s5StateOMa);
      return 0;
    }

    v55 = _s5StateO21CapturingDragSnapshotVMa;
LABEL_37:
    v40 = v55;
    v41 = v22;
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10028A5C8(v36, v33, _s5StateOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      v40 = _s5StateO21CapturingTurnSnapshotVMa;
      v41 = v33;
LABEL_38:
      sub_10028A568(v41, v40);
      goto LABEL_39;
    }

    v59 = &v36[v38];
    v60 = v62;
    sub_10028A500(v59, v62, _s5StateO21CapturingTurnSnapshotVMa);
    if (sub_1007A0F24())
    {
      sub_10000A7C4(0, &qword_100ADAF70);
      if (sub_1007A3184() & 1) != 0 && (sub_1007A03D4() & 1) != 0 && (sub_1007A0F24())
      {
        v53 = _s5StateO21CapturingTurnSnapshotVMa;
        sub_10028A568(v60, _s5StateO21CapturingTurnSnapshotVMa);
        v54 = v33;
        goto LABEL_48;
      }
    }

    v57 = _s5StateO21CapturingTurnSnapshotVMa;
    sub_10028A568(v60, _s5StateO21CapturingTurnSnapshotVMa);
    v58 = v33;
    goto LABEL_50;
  }

  sub_10028A5C8(v36, v30, _s5StateOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = _s5StateO7TurningVMa;
    v41 = v30;
    goto LABEL_38;
  }

  v48 = v64;
  sub_10028A500(&v36[v38], v64, _s5StateO7TurningVMa);
  v43 = sub_10028A630(v30, v48);
  sub_10028A568(v48, _s5StateO7TurningVMa);
  v45 = v30;
  v49 = _s5StateO7TurningVMa;
LABEL_21:
  sub_10028A568(v45, v49);
  sub_10028A568(v36, _s5StateOMa);
  return v43;
}

unint64_t sub_10028B1C4()
{
  result = qword_100AEB790;
  if (!qword_100AEB790)
  {
    sub_1007A0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB790);
  }

  return result;
}

BOOL sub_10028B21C(uint64_t a1, uint64_t a2)
{
  if (sub_1007A0F24() & 1) != 0 && (sub_10000A7C4(0, &qword_100ADAF70), v4 = _s5StateO8DraggingVMa(0), (sub_1007A3184()) && (sub_1007A3184() & 1) != 0 && (sub_1002888FC(a1 + v4[7], a2 + v4[7]) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10028B2F8(uint64_t a1, uint64_t a2)
{
  if (sub_1007A0F24() & 1) != 0 && (sub_10000A7C4(0, &qword_100ADAF70), v4 = _s5StateO21CapturingDragSnapshotVMa(0), (sub_1007A3184()) && (sub_1002888FC(a1 + v4[6], a2 + v4[6]) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10028B3C0()
{
  result = qword_100AD8A98[0];
  if (!qword_100AD8A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AD8A98);
  }

  return result;
}

void sub_10028B41C()
{
  sub_10028B510();
  if (v0 <= 0x3F)
  {
    sub_10028B574();
    if (v1 <= 0x3F)
    {
      sub_1001F5040();
      if (v2 <= 0x3F)
      {
        sub_100247D20();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10028B510()
{
  if (!qword_100AD6F10)
  {
    sub_1001F1234(&unk_100ADB6B0);
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD6F10);
    }
  }
}

void sub_10028B574()
{
  if (!qword_100AD6F18)
  {
    sub_10079CAE4();
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD6F18);
    }
  }
}

uint64_t sub_10028B610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079CC94();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_10079CCA4();
}

uint64_t sub_10028B708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10079CC94();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_10079CCA4();
}

uint64_t sub_10028B800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB4C0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000077D8(v2, &v13 - v9, &unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v10, a1, &unk_100ADB6B0);
  }

  sub_1007A29C4();
  v12 = sub_10079D244();
  sub_10079AB44();

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10028B9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10079C824();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&unk_100ADB4E0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_1000077D8(v2 + *(a1 + 36), &v15 - v10, &unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAE4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10028BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10079E184();
  sub_10079E0A4();
  sub_10079CCB4();
  v5 = sub_10079DEF4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v18[4] = v3;
  v18[5] = v4;
  v19 = v2;
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v21 = WitnessTable;
  v22 = v13;
  v14 = swift_getWitnessTable();
  sub_10079DEE4();
  v20 = v14;
  v15 = swift_getWitnessTable();
  sub_10039232C(v9, v5, v15);
  v16 = *(v6 + 8);
  v16(v9, v5);
  sub_10039232C(v11, v5, v15);
  return (v16)(v11, v5);
}

uint64_t sub_10028BE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a1;
  v85 = a4;
  v6 = sub_10079E0A4();
  v76 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v75 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v74 = &v64[-v9];
  v10 = sub_10079E184();
  v68 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v67 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v66 = &v64[-v13];
  v14 = sub_10079CAE4();
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = __chkstk_darwin(v14);
  v71 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v70 = &v64[-v17];
  v18 = sub_10079CEE4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v69 = &v64[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1001F1160(&unk_100ADBB30);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = &v64[-v23];
  v25 = sub_1001F1160(&unk_100ADB6B0);
  v26 = __chkstk_darwin(v25 - 8);
  v77 = &v64[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v30 = &v64[-v29];
  __chkstk_darwin(v28);
  v32 = &v64[-v31];
  v83 = v10;
  v84 = v6;
  v33 = sub_10079CCB4();
  v79 = *(v33 - 8);
  v80 = v33;
  __chkstk_darwin(v33);
  v78 = &v64[-v34];
  v81 = a2;
  v82 = a3;
  v86 = type metadata accessor for OptionsAdaptiveStack();
  sub_10028B800(v32);
  (*(v19 + 104))(v30, enum case for UserInterfaceSizeClass.compact(_:), v18);
  (*(v19 + 56))(v30, 0, 1, v18);
  v35 = *(v22 + 56);
  sub_1000077D8(v32, v24, &unk_100ADB6B0);
  sub_1000077D8(v30, &v24[v35], &unk_100ADB6B0);
  v36 = *(v19 + 48);
  if (v36(v24, 1, v18) == 1)
  {
    sub_100007840(v30, &unk_100ADB6B0);
    sub_100007840(v32, &unk_100ADB6B0);
    v37 = v36(&v24[v35], 1, v18);
    v38 = v84;
    if (v37 == 1)
    {
      sub_100007840(v24, &unk_100ADB6B0);
      v39 = v83;
      v40 = v78;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000077D8(v24, v77, &unk_100ADB6B0);
  if (v36(&v24[v35], 1, v18) == 1)
  {
    sub_100007840(v30, &unk_100ADB6B0);
    sub_100007840(v32, &unk_100ADB6B0);
    (*(v19 + 8))(v77, v18);
    v38 = v84;
LABEL_6:
    sub_100007840(v24, &unk_100ADBB30);
    v39 = v83;
    v40 = v78;
LABEL_10:
    sub_10079C8F4();
    v56 = v75;
    sub_10079E094();
    WitnessTable = swift_getWitnessTable();
    v58 = v74;
    sub_10039232C(v56, v38, WitnessTable);
    v53 = *(v76 + 8);
    v53(v56, v38);
    sub_10039232C(v58, v38, WitnessTable);
    swift_getWitnessTable();
    sub_10028B708(v56, v39, v38);
    v53(v56, v38);
    v54 = v58;
    v55 = v38;
    goto LABEL_11;
  }

  v41 = v69;
  (*(v19 + 32))(v69, &v24[v35], v18);
  sub_10028C970();
  v42 = v77;
  v65 = sub_1007A2124();
  v43 = *(v19 + 8);
  v43(v41, v18);
  sub_100007840(v30, &unk_100ADB6B0);
  sub_100007840(v32, &unk_100ADB6B0);
  v43(v42, v18);
  sub_100007840(v24, &unk_100ADB6B0);
  v39 = v83;
  v38 = v84;
  v40 = v78;
  if ((v65 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v44 = v70;
  sub_10028B9E0(v86, v70);
  v46 = v71;
  v45 = v72;
  v47 = v73;
  (*(v72 + 104))(v71, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v73);
  v48 = sub_100391B98(v44, v46);
  v49 = *(v45 + 8);
  v49(v46, v47);
  v49(v44, v47);
  if (!v48)
  {
    goto LABEL_10;
  }

  sub_10079CB24();
  v50 = v67;
  sub_10079E174();
  v51 = swift_getWitnessTable();
  v52 = v66;
  sub_10039232C(v50, v39, v51);
  v53 = *(v68 + 8);
  v53(v50, v39);
  sub_10039232C(v52, v39, v51);
  swift_getWitnessTable();
  sub_10028B610(v50, v39);
  v53(v50, v39);
  v54 = v52;
  v55 = v39;
LABEL_11:
  v53(v54, v55);
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v88 = v59;
  v89 = v60;
  v61 = v80;
  v62 = swift_getWitnessTable();
  sub_10039232C(v40, v61, v62);
  return (*(v79 + 8))(v40, v61);
}

uint64_t sub_10028C83C@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1001F1160(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10028C8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_10020B3C8(a1, a7, &qword_100AE3E60);
  v13 = type metadata accessor for OptionsAdaptiveStack();
  result = sub_10020B3C8(a2, a7 + v13[9], &qword_100AD6E98);
  v15 = a7 + v13[10];
  *v15 = a3;
  *(v15 + 8) = a4 & 1;
  v16 = (a7 + v13[11]);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

unint64_t sub_10028C970()
{
  result = qword_100AE41D0;
  if (!qword_100AE41D0)
  {
    sub_10079CEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE41D0);
  }

  return result;
}

id sub_10028CAE0()
{
  sub_1001F1160(&unk_100AD8160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100815F70;
  sub_10000A7C4(0, &qword_100AD8B50);
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  KeyPath = swift_getKeyPath();
  *(v1 + 32) = sub_10028D3B4(0xD000000000000016, 0x80000001008C7B50, v3, KeyPath);
  v5 = sub_1007A2214();
  v57 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  v58 = 0;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12288;
  v6 = _Block_copy(&aBlock);
  v7 = objc_opt_self();
  v8 = [v7 entryWithTitle:v5 action:v6];

  _Block_release(v6);

  *(v1 + 40) = v8;
  v9 = [v2 standardUserDefaults];
  v10 = swift_getKeyPath();
  *(v1 + 48) = sub_10028D3B4(0x656C62616E45202DLL, 0xE900000000000064, v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v57 = sub_10028D6A8;
  v58 = v11;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A122D8;
  v12 = _Block_copy(&aBlock);
  v13 = objc_opt_self();
  v14 = v0;
  v15 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v12];
  _Block_release(v12);

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = v14;
  v18 = sub_1007A2214();
  v57 = sub_10028D730;
  v58 = v16;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12328;
  v19 = _Block_copy(&aBlock);

  v20 = [v7 entryWithTitle:v18 model:v15 action:v19];
  _Block_release(v19);

  *(v1 + 56) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v57 = sub_10028D8F8;
  v58 = v21;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A12378;
  v22 = _Block_copy(&aBlock);
  v23 = v17;
  v24 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v22];
  _Block_release(v22);

  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v23;
  v27 = sub_1007A2214();
  v57 = sub_10028D928;
  v58 = v25;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A123C8;
  v28 = _Block_copy(&aBlock);

  v29 = [v7 entryWithTitle:v27 model:v24 action:v28];
  _Block_release(v28);

  *(v1 + 64) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  v57 = sub_10028DD68;
  v58 = v30;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A12418;
  v31 = _Block_copy(&aBlock);
  v32 = v26;
  v33 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v31];
  _Block_release(v31);

  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v32;
  v36 = sub_1007A2214();
  v57 = sub_10028DE4C;
  v58 = v34;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12468;
  v37 = _Block_copy(&aBlock);

  v38 = [v7 entryWithTitle:v36 model:v33 action:v37];
  _Block_release(v37);

  *(v1 + 72) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  v57 = sub_10028E2A0;
  v58 = v39;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A124B8;
  v40 = _Block_copy(&aBlock);
  v41 = v35;
  v42 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v40];
  _Block_release(v40);

  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = v41;
  v45 = sub_1007A2214();
  v57 = sub_10028E354;
  v58 = v43;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12508;
  v46 = _Block_copy(&aBlock);

  v47 = [v7 entryWithTitle:v45 model:v42 action:v46];
  _Block_release(v46);

  *(v1 + 80) = v47;
  v48 = objc_allocWithZone(BKDebugViewSection);
  v49 = sub_1007A2214();
  isa = sub_1007A25D4().super.isa;

  v51 = [v48 initWithHeaderTitle:v49 entries:isa footerTitle:0];

  return v51;
}

id sub_10028D3B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v20 = a3;
  swift_getAtKeyPath();
  v6 = v19;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = objc_allocWithZone(type metadata accessor for DebugBoolDefaultSwitch());
  v18[4] = sub_10028FDB4;
  v18[5] = v7;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10021B6B0;
  v18[3] = &unk_100A12940;
  v9 = _Block_copy(v18);
  v10 = a3;

  v11 = [v8 initWithInitialValue:v6 synchronize:v9 action:0];

  _Block_release(v9);
  v12 = [objc_opt_self() modelWithAccessoryView:v11];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_1007A2214();

  v15 = v12;
  v16 = [ObjCClassFromMetadata entryWithTitle:v14 model:v15];

  return v16;
}

uint64_t sub_10028D5A8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2AA4();
  v2 = v1;

  if (!v2)
  {
    return 1701736270;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_1007A2424();
  }

  v4._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 0x29736574794220;
  v5._object = 0xE700000000000000;
  sub_1007A23D4(v5);

  return 40;
}

uint64_t sub_10028D6B0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2AA4();
  v3 = v2;

  sub_10028D738(v1, v3);
}

void sub_10028D738(uint64_t a1, unint64_t a2)
{
  v5 = _s23MultilineTextEditorViewVMa(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  objc_allocWithZone(_s29MultilineTextEditorControllerCMa(0));
  *&v8[*(v6 + 40)] = swift_getKeyPath();
  sub_1001F1160(&qword_100AD8B60);
  swift_storeEnumTagMultiPayload();
  v17[1] = v9;
  v17[2] = v10;
  v12 = v2;

  sub_10079DFE4();
  v13 = v19;
  *v8 = v18;
  *(v8 + 2) = v13;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0xE000000000000000;
  *(v8 + 5) = sub_10028EB6C;
  *(v8 + 6) = 0;
  *(v8 + 7) = sub_10028FD98;
  *(v8 + 8) = v11;
  v14 = sub_10079CBC4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong present:v14 :1];
  }
}

uint64_t sub_10028D96C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  v7 = sub_1007A2214();
  v8 = sub_1007A2214();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = a1;
  v10[4] = a2;
  v27 = sub_10028FDFC;
  v28 = v10;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100201C54;
  v26 = &unk_100A12828;
  v11 = _Block_copy(&v23);

  [v9 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10028FCF0;
  v13[3] = v5;
  v13[4] = v12;

  v14 = sub_1007A2214();
  v27 = sub_10028FE00;
  v28 = v13;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100201C54;
  v26 = &unk_100A12878;
  v15 = _Block_copy(&v23);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  v18 = sub_1007A2214();
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];

  [v9 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10028DCEC(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_opt_self() standardUserDefaults];
  a2();
  v5 = v4;

  if (v5)
  {
    return 1701736270;
  }

  else
  {
    return sub_1007A27C4();
  }
}

uint64_t sub_10028DD98(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v6 = [objc_opt_self() standardUserDefaults];
  a3();
  LOBYTE(a3) = v7;

  if (a3)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_1007A27C4();
    v9 = v10;
  }

  a4(v8, v9);
}

uint64_t sub_10028DE90(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  v7 = sub_1007A2214();
  v8 = sub_1007A2214();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = a1;
  v10[4] = a2;
  v27 = sub_10028FDFC;
  v28 = v10;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100201C54;
  v26 = &unk_100A12710;
  v11 = _Block_copy(&v23);

  [v9 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10028FB10;
  v13[3] = v5;
  v13[4] = v12;

  v14 = sub_1007A2214();
  v27 = sub_10028FE00;
  v28 = v13;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100201C54;
  v26 = &unk_100A12760;
  v15 = _Block_copy(&v23);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  v18 = sub_1007A2214();
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];

  [v9 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10028E210()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A64();
  v2 = v1;

  if (v2)
  {
    return 1701736270;
  }

  sub_100258D7C();
  return sub_1007A34F4();
}

uint64_t sub_10028E2A8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A64();
  v2 = v1;

  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_100258D7C();
    v3 = sub_1007A34F4();
    v4 = v5;
  }

  sub_10028E35C(v3, v4);
}

uint64_t sub_10028E35C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  v7 = sub_1007A2214();
  v8 = sub_1007A2214();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = 4;
  v10[3] = a1;
  v10[4] = a2;
  v27 = sub_10028F4D4;
  v28 = v10;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100201C54;
  v26 = &unk_100A12580;
  v11 = _Block_copy(&v23);

  [v9 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10028F490;
  v13[3] = v5;
  v13[4] = v12;

  v14 = sub_1007A2214();
  v27 = sub_10028F4E0;
  v28 = v13;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100201C54;
  v26 = &unk_100A125F8;
  v15 = _Block_copy(&v23);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  v18 = sub_1007A2214();
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];

  [v9 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

void sub_10028E6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setKeyboardType:a2];
  [a1 setClearButtonMode:1];
  if (a4)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a1 setText:?];
}

uint64_t sub_10028E77C(uint64_t a1, void (*a2)(void *, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = Strong;
  v5 = [Strong textFields];

  if (!v5)
  {
LABEL_12:
    Strong = 0;
LABEL_13:
    v13 = 0xE000000000000000;
    goto LABEL_14;
  }

  sub_10000A7C4(0, &qword_100AD8B58);
  v6 = sub_1007A25E4();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1007A38D4();
  if (!result)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_1007A3784();
LABEL_8:
    v9 = v8;

    v10 = [v9 text];

    if (v10)
    {
      v11 = sub_1007A2254();
      v13 = v12;

      Strong = v11;
LABEL_14:
      a2(Strong, v13);
    }

    goto LABEL_12;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10028E8F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1007A3744(43);

  v18._countAndFlagsBits = a1;
  v18._object = a2;
  sub_1007A23D4(v18);
  v19._object = 0x80000001008C7D30;
  v19._countAndFlagsBits = 0xD000000000000028;
  sub_1007A23D4(v19);
  v8 = sub_1007A2214();
  v9 = sub_1007A2214();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:{1, 39, 0xE100000000000000}];

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  v12 = sub_1007A2214();
  v17[4] = sub_10028FAE0;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100201C54;
  v17[3] = &unk_100A12698;
  v13 = _Block_copy(v17);

  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction:v14];
  [v10 setPreferredAction:v14];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_10028EB6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1007A22A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 1;
  }

  sub_1007A2294();
  v9 = sub_1007A2264();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  result = 0;
  if (v11 >> 60 == 15)
  {
    return result;
  }

  v13 = objc_opt_self();
  isa = sub_1007969C4().super.isa;
  v19[0] = 0;
  v15 = [v13 JSONObjectWithData:isa options:0 error:v19];

  v16 = v19[0];
  if (v15)
  {
    sub_1007A3504();
    sub_10028FDA0(v9, v11);
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AD8B68);
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    v17 = v16;
    sub_1007967D4();

    swift_willThrow();
    sub_10028FDA0(v9, v11);
  }

  return 0;
}

void sub_10028EDA0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  v5 = [v4 standardUserDefaults];
  sub_10028EEC0(a1, a2);

  sub_1007A2AB4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong tableView];

    if (v8)
    {
      [v8 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10028EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100796504();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_1007964C4();
  sub_100206ECC();
  v8 = sub_1007A3494();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  return v8;
}

void sub_10028EFE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 && (v4 = sub_10028EEC0(a1, a2), v6 = v5, , v6))
  {
    if (!sub_10028FB54(v4, v6))
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10028FD74;
      *(v8 + 24) = v7;
      v9 = v3;
      sub_10028E8F4(v4, v6, sub_10028FDF8, v8);

      return;
    }

    v13 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AC4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = [Strong tableView];

      if (v16)
      {
        [v16 reloadData];

        return;
      }

LABEL_15:
      __break(1u);
    }
  }

  else
  {
    v10 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AC4();

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v17 = [v11 tableView];

    if (!v17)
    {
      __break(1u);
      goto LABEL_15;
    }

    [v17 reloadData];
  }
}

void sub_10028F23C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 && (v4 = sub_10028EEC0(a1, a2), v6 = v5, , v6))
  {
    if (!sub_10028FB54(v4, v6))
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10028FC4C;
      *(v8 + 24) = v7;
      v9 = v3;
      sub_10028E8F4(v4, v6, sub_10028FDF8, v8);

      return;
    }

    v13 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AD4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = [Strong tableView];

      if (v16)
      {
        [v16 reloadData];

        return;
      }

LABEL_15:
      __break(1u);
    }
  }

  else
  {
    v10 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AD4();

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v17 = [v11 tableView];

    if (!v17)
    {
      __break(1u);
      goto LABEL_15;
    }

    [v17 reloadData];
  }
}

void sub_10028F4EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2 || (v4 = sub_10028EEC0(a1, a2), v6 = v5, , !v6))
  {
    v16 = [objc_opt_self() standardUserDefaults];
    sub_1007A2A74();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v18 = Strong;
    v42 = [Strong tableView];

    if (v42)
    {
      [v42 reloadData];

      return;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_75;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v12 = sub_10063DF1C(v4, v6, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v43[0] = v4;
    v43[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v25 = v43 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_81;
    }

    if (v4 != 45)
    {
      if (v7)
      {
        v12 = 0;
        v30 = v43;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v7)
    {
      if (--v7)
      {
        v12 = 0;
        v19 = v43 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_79;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v10 = sub_1007A37B4();
  }

  v11 = *v10;
  if (v11 == 43)
  {
    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v22 = v10 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_68;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_68;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_68;
            }

            ++v22;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_68;
    }

    goto LABEL_80;
  }

  if (v11 == 45)
  {
    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_68;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_68;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_68;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v8)
  {
    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v28 = *v10 - 48;
        if (v28 > 9)
        {
          goto LABEL_68;
        }

        v29 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          goto LABEL_68;
        }

        v12 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_68;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_60;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_68:
  v12 = 0;
  LOBYTE(v7) = 1;
LABEL_69:
  v44 = v7;
  if (v7)
  {
LABEL_75:
    v39 = swift_allocObject();
    *(v39 + 16) = v3;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_10028FA94;
    *(v40 + 24) = v39;
    v41 = v3;
    sub_10028E8F4(v4, v6, sub_10028FAB8, v40);

    return;
  }

LABEL_70:
  if (v12 < 0)
  {
    goto LABEL_75;
  }

  v33 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A74();

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 tableView];

    if (v36)
    {
      [v36 reloadData];

      return;
    }

    goto LABEL_83;
  }
}

void sub_10028F9CC(uint64_t a1, void *a2)
{
  v2 = a2;
  swift_setAtReferenceWritableKeyPath();
}

_BYTE *sub_10028FA18@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

BOOL sub_10028FB54(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1007A3714();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_10028FC70@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10028FD34()
{

  return swift_deallocObject();
}

uint64_t sub_10028FDA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000ADCC(a1, a2);
  }

  return a1;
}

uint64_t type metadata accessor for REMenuButtonView()
{
  result = qword_100AD8BD0;
  if (!qword_100AD8BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028FEB8()
{
  sub_10028B510();
  if (v0 <= 0x3F)
  {
    sub_10029009C(319, &qword_100AF35B0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10029004C();
      if (v2 <= 0x3F)
      {
        sub_10029009C(319, &qword_100AD6F18, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100247C8C();
          if (v4 <= 0x3F)
          {
            sub_10029009C(319, &unk_100AD8BE8, type metadata accessor for BookReaderViewModel, &type metadata accessor for Bindable);
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

void sub_10029004C()
{
  if (!qword_100AD8BE0)
  {
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD8BE0);
    }
  }
}

void sub_10029009C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10029011C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4E0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for REMenuButtonView();
  sub_1000077D8(v1 + *(v10 + 32), v9, &unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100290330()
{
  v1 = v0;
  v2 = type metadata accessor for BookReaderChromeState();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for REMenuButtonView();
  sub_1001F1160(&qword_100AD8B70);
  sub_10079E304();
  v7 = v20;
  swift_getKeyPath();
  v20 = v7;
  sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v8 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v7 + v8, v5, type metadata accessor for BookReaderChromeState);

  LODWORD(v8) = v5[*(v3 + 68)];
  sub_100296708(v5, type metadata accessor for BookReaderChromeState);
  if (v8 == 1)
  {
    v9 = sub_10066AACC(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_10066AACC((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = 0;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10066AACC(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_10066AACC((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v9[v15 + 32] = 1;
  }

  v16 = *(v1 + *(v6 + 36));
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_10079B9A4();

    if (v19[7])
    {
      return sub_1002906A4(v9);
    }

    return v9;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002906A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002F499C(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10029075C@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for REMenuButtonView();
  v73 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = v3;
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1001F1160(&qword_100AD8C38);
  __chkstk_darwin(v78);
  v5 = (&v66 - v4);
  v6 = sub_1001F1160(&qword_100AD8C40);
  v7 = __chkstk_darwin(v6 - 8);
  v80 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v66 - v9;
  v10 = sub_1001F1160(&qword_100AD8C48);
  __chkstk_darwin(v10);
  v12 = (&v66 - v11);
  v13 = sub_1001F1160(&qword_100AD8C50);
  v14 = __chkstk_darwin(v13 - 8);
  v77 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = &v66 - v16;
  v17 = *(v2 + 36);
  v75 = v1;
  v18 = *(v1 + v17);
  if (v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_10079B9A4();

    LODWORD(v71) = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
    sub_10079B9A4();

    v67 = v82;
    sub_1001F1160(&qword_100AD8B70);
    v21 = v75;
    sub_10079E304();
    v22 = *(v82 + 56);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v22 + 88))(ObjectType, v22);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v20;
    sub_10079B9A4();

    v68 = v82;
    v29 = v25;
    if (v82)
    {
      v29 = 0;
    }

    v70 = v29;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v28;
    sub_10079B9A4();

    v31 = v82;
    v32 = v27;
    if (!v82)
    {
      v32 = 0;
    }

    v69 = v32;
    v33 = sub_10079E474();
    v34 = v72;
    *v72 = v33;
    v34[1] = v35;
    v72 = (v34 + *(sub_1001F1160(&qword_100AD8C58) + 44));
    *v12 = swift_getKeyPath();
    sub_1001F1160(&unk_100ADB740);
    swift_storeEnumTagMultiPayload();
    v36 = v12 + v10[10];
    *v36 = 0;
    v36[8] = 1;
    v37 = v12 + v10[14];
    *v37 = 0;
    v37[8] = (v71 & 1) == 0;
    v38 = v12 + v10[11];
    *v38 = 0;
    v38[8] = 0;
    v39 = v12 + v10[15];
    *v39 = 0;
    v39[8] = v67;
    v40 = v21;
    sub_100291114(v12 + v10[9]);
    v41 = v12 + v10[12];
    *v41 = 0;
    v41[8] = 1;
    v42 = v12 + v10[13];
    *v42 = 0;
    v42[8] = 1;
    v71 = &unk_10080E750;
    sub_100005920(&qword_100AD8C60, &qword_100AD8C48);
    sub_10079DA64();
    sub_100007840(v12, &qword_100AD8C48);
    *v5 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v43 = v78;
    v44 = v5 + *(v78 + 40);
    *v44 = 0;
    v44[8] = 1;
    v45 = v5 + v43[14];
    *v45 = v70;
    v45[8] = v68;
    v46 = v5 + v43[11];
    *v46 = 0;
    v46[8] = 0;
    v47 = v5 + v43[15];
    *v47 = v69;
    v47[8] = v31 ^ 1;
    v48 = v5 + v43[9];
    *v48 = sub_10079C8F4();
    *(v48 + 1) = 0;
    v48[16] = 1;
    sub_1001F1160(&qword_100AD8C68);
    v82 = sub_100290330();
    v49 = v76;
    sub_1002966A0(v40, v76, type metadata accessor for REMenuButtonView);
    v50 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v51 = swift_allocObject();
    sub_1002973E0(v49, v51 + v50, type metadata accessor for REMenuButtonView);
    sub_1001F1160(&qword_100AD8C70);
    sub_1001F1160(&qword_100AD8C78);
    sub_100005920(&qword_100AD8C80, &qword_100AD8C70);
    sub_10029653C();
    sub_10029664C();
    sub_10079E274();
    KeyPath = swift_getKeyPath();
    v53 = &v48[*(sub_1001F1160(&qword_100AD8CA8) + 36)];
    v54 = *(sub_1001F1160(&qword_100ADBCE0) + 28);
    v55 = enum case for LayoutDirection.leftToRight(_:);
    v56 = sub_10079C104();
    (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
    *v53 = KeyPath;
    v57 = v5 + v43[12];
    *v57 = 0;
    v57[8] = 1;
    v58 = v5 + v43[13];
    *v58 = 0;
    v58[8] = 1;
    sub_100005920(&qword_100AD8CB0, &qword_100AD8C38);
    v59 = v79;
    sub_10079DA64();
    sub_100007840(v5, &qword_100AD8C38);
    v60 = v81;
    v61 = v77;
    sub_1000077D8(v81, v77, &qword_100AD8C50);
    v62 = v80;
    sub_1000077D8(v59, v80, &qword_100AD8C40);
    v63 = v72;
    sub_1000077D8(v61, v72, &qword_100AD8C50);
    v64 = sub_1001F1160(&qword_100AD8CB8);
    sub_1000077D8(v62, v63 + *(v64 + 48), &qword_100AD8C40);
    sub_100007840(v59, &qword_100AD8C40);
    sub_100007840(v60, &qword_100AD8C50);
    sub_100007840(v62, &qword_100AD8C40);
    return sub_100007840(v61, &qword_100AD8C50);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100291114@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v131 = sub_10079CA64();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100796CF4();
  v149 = *(v139 - 8);
  v3 = __chkstk_darwin(v139);
  v136 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v138 = &v108 - v5;
  v137 = sub_1007A21D4();
  v148 = *(v137 - 8);
  v6 = __chkstk_darwin(v137);
  v134 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v108 - v8;
  v150 = sub_10079D074();
  v122 = *(v150 - 8);
  __chkstk_darwin(v150);
  v119 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v147);
  v143 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079CCC4();
  v146 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AD8CD0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  v114 = sub_1001F1160(&qword_100AD8CD8);
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v18 = &v108 - v17;
  v117 = sub_1001F1160(&qword_100AD8CE0);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v108 - v19;
  v121 = sub_1001F1160(&qword_100AD8CE8);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v140 = (&v108 - v20);
  v141 = sub_1001F1160(&qword_100AD8CF0);
  v21 = __chkstk_darwin(v141);
  v116 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v118 = &v108 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v108 - v26;
  __chkstk_darwin(v25);
  v124 = &v108 - v27;
  v123 = sub_1001F1160(&qword_100AD8CF8);
  __chkstk_darwin(v123);
  v142 = &v108 - v28;
  v127 = sub_1001F1160(&qword_100AD8D00);
  __chkstk_darwin(v127);
  v128 = &v108 - v29;
  v126 = sub_1001F1160(&qword_100AD8D08);
  __chkstk_darwin(v126);
  v132 = &v108 - v30;
  v31 = v1;
  sub_100292BB0(v16);
  v32 = &v16[*(v14 + 36)];
  v33 = sub_1001F1160(&qword_100AD8D10);
  sub_10079C444();
  if (qword_100AD1648 != -1)
  {
    swift_once();
  }

  v34 = qword_100B23378;
  v35 = *(sub_10079C3D4() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_10079C9E4();
  (*(*(v37 - 8) + 104))(v32 + v35, v36, v37);
  *v32 = v34;
  v32[1] = v34;
  *(v32 + *(v33 + 36)) = 0;
  sub_10079C454();
  v38 = sub_100296768();
  v39 = sub_100296DE0(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  v110 = v18;
  v111 = v14;
  sub_10079D6F4();
  (*(v146 + 8))(v13, v11);
  sub_100007840(v16, &qword_100AD8CD0);
  v40 = *(type metadata accessor for REMenuButtonView() + 40);
  v41 = sub_1001F1160(&qword_100AD8B70);
  v146 = v40;
  v145 = v41;
  sub_10079E304();
  v42 = v154;
  swift_getKeyPath();
  v154 = v42;
  v144 = sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v43 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  v44 = v42 + v43;
  v45 = v143;
  sub_1002966A0(v44, v143, type metadata accessor for BookReaderChromeState);

  v46 = *(v45 + *(v147 + 44));
  sub_100296708(v45, type metadata accessor for BookReaderChromeState);
  if ((v46 & 1) == 0)
  {
    sub_10079E304();
    v47 = v154;
    swift_getKeyPath();
    v154 = v47;
    sub_100797A14();

    v48 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v49 = v143;
    sub_1002966A0(v47 + v48, v143, type metadata accessor for BookReaderChromeState);

    sub_100296708(v49, type metadata accessor for BookReaderChromeState);
  }

  v154 = v111;
  v155 = v11;
  v156 = v38;
  v157 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v113;
  v52 = v114;
  v53 = v110;
  sub_10079D964();
  (*(v112 + 8))(v53, v52);
  v54 = v119;
  sub_10079D054();
  v154 = v52;
  v155 = OpaqueTypeConformance2;
  v114 = swift_getOpaqueTypeConformance2();
  v55 = v117;
  sub_10079D9A4();
  (*(v122 + 8))(v54, v150);
  (*(v115 + 8))(v51, v55);
  v56 = v135;
  sub_1007A2154();
  v57 = v138;
  sub_100796C94();
  v58 = v148;
  v59 = *(v148 + 16);
  v150 = v31;
  v60 = v137;
  v122 = v148 + 16;
  v119 = v59;
  (v59)(v134, v56, v137);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v113 = objc_opt_self();
  v115 = ObjCClassFromMetadata;
  v62 = [v113 bundleForClass:ObjCClassFromMetadata];
  v63 = v149;
  v64 = *(v149 + 16);
  v65 = v139;
  v112 = v149 + 16;
  v111 = v64;
  v64(v136, v57, v139);
  v66 = sub_1007A22D4();
  v68 = v67;
  v69 = *(v63 + 8);
  v149 = v63 + 8;
  v110 = v69;
  v69(v57, v65);
  v70 = *(v58 + 8);
  v148 = v58 + 8;
  v109 = v70;
  v70(v56, v60);
  v154 = v66;
  v155 = v68;
  v152 = v55;
  v153 = v114;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v71 = v116;
  v72 = v121;
  v73 = v140;
  sub_10079D8E4();

  (*(v120 + 8))(v73, v72);
  v74 = v118;
  sub_10079C244();
  sub_100007840(v71, &qword_100AD8CF0);
  sub_1001F1160(&qword_100AD7060);
  v75 = v130;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_10080B690;
  sub_10079CA44();
  v154 = v76;
  sub_100296DE0(&qword_100AD7068, &type metadata accessor for AccessibilityTraits);
  sub_1001F1160(&qword_100AD7070);
  sub_100005920(&qword_100AD7078, &qword_100AD7070);
  v77 = v129;
  v78 = v131;
  sub_1007A3594();
  v79 = v125;
  sub_10079C174();
  (*(v75 + 8))(v77, v78);
  sub_100007840(v74, &qword_100AD8CF0);
  sub_10079E304();
  v80 = v154;
  swift_getKeyPath();
  v154 = v80;
  sub_100797A14();

  v81 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  v140 = type metadata accessor for BookReaderChromeState;
  v82 = v143;
  sub_1002966A0(v80 + v81, v143, type metadata accessor for BookReaderChromeState);

  v83 = v147;
  sub_100296708(v82, type metadata accessor for BookReaderChromeState);
  v84 = v124;
  sub_10079C224();
  sub_100007840(v79, &qword_100AD8CF0);
  v85 = v142;
  sub_10020B3C8(v84, v142, &qword_100AD8CF0);
  *(v85 + *(v123 + 36)) = 0;
  sub_10079E304();
  v86 = v152;
  swift_getKeyPath();
  v152 = v86;
  sub_100797A14();

  v87 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v86 + v87, v82, v140);

  LODWORD(v68) = *(v82 + *(v83 + 44) + 1);
  sub_100296708(v82, type metadata accessor for BookReaderChromeState);
  v88 = 0;
  v89 = 0;
  v90 = v82;
  if (v68 == 1)
  {
    v91 = v135;
    sub_1007A2154();
    v92 = v138;
    sub_100796C94();
    v93 = v137;
    (v119)(v134, v91, v137);
    v94 = [v113 bundleForClass:v115];
    v95 = v139;
    v111(v136, v92, v139);
    v88 = sub_1007A22D4();
    v89 = v96;
    v110(v92, v95);
    v109(v91, v93);
  }

  v97 = v128;
  sub_10020B3C8(v142, v128, &qword_100AD8CF8);
  v98 = (v97 + *(v127 + 36));
  *v98 = v88;
  v98[1] = v89;
  KeyPath = swift_getKeyPath();
  v100 = v132;
  sub_10020B3C8(v97, v132, &qword_100AD8D00);
  v101 = v100 + *(v126 + 36);
  *v101 = KeyPath;
  *(v101 + 8) = 0;
  if (qword_100AD13F8 != -1)
  {
    swift_once();
  }

  v102 = qword_100B22FF8;
  sub_10079E304();
  v103 = v151;
  swift_getKeyPath();
  v151 = v103;
  sub_100797A14();

  v104 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v103 + v104, v90, type metadata accessor for BookReaderChromeState);

  LOBYTE(v104) = *(v90 + *(v83 + 44));
  sub_100296708(v90, type metadata accessor for BookReaderChromeState);
  v105 = v133;
  sub_10020B3C8(v100, v133, &qword_100AD8D08);
  v106 = v105 + *(sub_1001F1160(&qword_100AD8DD0) + 36);
  *v106 = v102;
  *(v106 + 8) = (v104 & 1) == 0;
}

uint64_t sub_100292658@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v38 = sub_1001F1160(&qword_100AD8CC0);
  __chkstk_darwin(v38);
  v6 = &v35 - v5;
  v7 = sub_1007A1874();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v39 = type metadata accessor for ReadingLoupeButtonView();
  __chkstk_darwin(v39);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = type metadata accessor for REMenuButtonView();
  v18 = v17;
  if (v16)
  {
    sub_1001F1160(&qword_100AD8B70);
    sub_10079E304();
    v19 = *(v41 + 120);

    v20 = *(v19 + 16);

    v21 = (a2 + *(v18 + 44));
    type metadata accessor for ChromeStyle();
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    v22 = *v21;
    v36 = v21[1];
    v37 = v22;
    v23 = sub_10079C484();
    v25 = v24;
    type metadata accessor for OrientationLockHintViewModel();
    sub_100296DE0(&qword_100AD8CC8, type metadata accessor for OrientationLockHintViewModel);
    v26 = sub_10079C024();
    *v6 = v23;
    *(v6 + 1) = v25;
    *(v6 + 2) = v26;
    *(v6 + 3) = v27;
    v28 = v36;
    *(v6 + 2) = v37;
    *(v6 + 3) = v28;
    swift_storeEnumTagMultiPayload();
    sub_100296DE0(&qword_100AD8C90, type metadata accessor for ReadingLoupeButtonView);
    sub_1002965F8();
    return sub_10079CCA4();
  }

  else
  {
    v30 = a2 + *(v17 + 48);
    swift_unknownObjectWeakLoadStrong();
    *&v37 = *(v30 + 8);
    v31 = (a2 + *(v18 + 44));
    sub_1001F1160(&qword_100AD8B70);
    v32 = *v31;
    v35 = v31[1];
    v36 = v32;
    sub_10079E304();
    type metadata accessor for ChromeStyle();
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    *v15 = sub_10079C484();
    *(v15 + 1) = v33;
    *(v15 + 3) = v37;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v34 = v35;
    *(v15 + 2) = v36;
    *(v15 + 3) = v34;
    type metadata accessor for BookReaderViewModel();
    sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_10079E324();
    (*(v8 + 104))(v13, enum case for ReadingLoupeVisibilityState.medium(_:), v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_10079DFE4();
    (*(v8 + 8))(v13, v7);
    sub_1002966A0(v15, v6, type metadata accessor for ReadingLoupeButtonView);
    swift_storeEnumTagMultiPayload();
    sub_100296DE0(&qword_100AD8C90, type metadata accessor for ReadingLoupeButtonView);
    sub_1002965F8();
    sub_10079CCA4();
    return sub_100296708(v15, type metadata accessor for ReadingLoupeButtonView);
  }
}

uint64_t sub_100292BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079CF94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v204 = (&v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for REMenuButtonView();
  v190 = *(v6 - 8);
  __chkstk_darwin(v6);
  v191 = v7;
  v192 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1001F1160(&qword_100AD8B70);
  v184 = *(v213 - 8);
  __chkstk_darwin(v213);
  v182 = &v169 - v8;
  v9 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v9 - 8);
  v173 = &v169 - v10;
  v11 = sub_1001F1160(&qword_100AD8DD8);
  __chkstk_darwin(v11 - 8);
  v172 = &v169 - v12;
  v176 = sub_1001F1160(&qword_100AD1CA8);
  __chkstk_darwin(v176);
  v175 = (&v169 - v13);
  v174 = sub_1001F1160(&qword_100AD1CA0);
  __chkstk_darwin(v174);
  v178 = &v169 - v14;
  v177 = sub_1001F1160(&qword_100AD1C90);
  __chkstk_darwin(v177);
  v179 = &v169 - v15;
  v212 = sub_1001F1160(&qword_100AD1C70);
  __chkstk_darwin(v212);
  v183 = &v169 - v16;
  v17 = sub_1001F1160(&qword_100AD8DE0);
  v186 = *(v17 - 8);
  v187 = v17;
  __chkstk_darwin(v17);
  v185 = &v169 - v18;
  v181 = sub_1001F1160(&qword_100AD8D98);
  __chkstk_darwin(v181);
  v189 = &v169 - v19;
  v188 = sub_1001F1160(&qword_100AD8D88);
  __chkstk_darwin(v188);
  v194 = &v169 - v20;
  v193 = sub_1001F1160(&qword_100AD8D78);
  __chkstk_darwin(v193);
  v196 = &v169 - v21;
  v195 = sub_1001F1160(&qword_100AD8D68);
  __chkstk_darwin(v195);
  v198 = &v169 - v22;
  v197 = sub_1001F1160(&qword_100AD8D58);
  __chkstk_darwin(v197);
  v201 = &v169 - v23;
  v200 = sub_1001F1160(&qword_100AD8D48);
  __chkstk_darwin(v200);
  v199 = &v169 - v24;
  v202 = sub_1001F1160(&qword_100AD8D38);
  __chkstk_darwin(v202);
  v26 = &v169 - v25;
  v211 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v211);
  v210 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_10079BC44();
  v28 = *(v208 - 8);
  v29 = __chkstk_darwin(v208);
  v207 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v169 - v31;
  v214 = v6;
  v33 = *(v1 + *(v6 + 36));
  if (v33)
  {
    v34 = qword_100AD17D0;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = *&static REConstants.floatingButtonHeight;

    if (qword_100AD17C0 != -1)
    {
      swift_once();
    }

    v203 = v26;
    v215 = v1;
    v37 = *&qword_100B23470;
    v171 = sub_10079E404();
    sub_10079FCE4();
    sub_10079FAD4();
    v205 = v3;
    v206 = a1;
    v180 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v35;
    sub_10079B9A4();

    v39 = v236;
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v35;
    sub_10079B9A4();

    v42 = v207;
    v41 = v208;
    v170 = *(v28 + 104);
    v170(v207, enum case for ColorScheme.dark(_:), v208);
    v43 = sub_10079BC34();
    v44 = *(v28 + 8);
    v44(v42, v41);
    v44(v32, v41);
    v209 = v39;
    if (v43)
    {
      sub_10079E304();
      v45 = v236;
      swift_getKeyPath();
      *&v236 = v45;
      sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v46 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v47 = v210;
      sub_1002966A0(v45 + v46, v210, type metadata accessor for BookReaderChromeState);

      LOBYTE(v46) = *(v47 + *(v211 + 44));
      sub_100296708(v47, type metadata accessor for BookReaderChromeState);
      if (v46)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v48 = v40;
        sub_10079B9A4();

        v50 = v207;
        v49 = v208;
        v170(v207, enum case for ColorScheme.light(_:), v208);
        sub_10079BC34();
        v44(v50, v49);
        v44(v32, v49);
        v54 = sub_10079DE54();
      }

      else
      {
        v54 = v209;
      }
    }

    else
    {
      sub_10079E304();
      v51 = v236;
      swift_getKeyPath();
      *&v236 = v51;
      sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
      sub_100797A14();

      v52 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v53 = v210;
      sub_1002966A0(v51 + v52, v210, type metadata accessor for BookReaderChromeState);

      LOBYTE(v52) = *(v53 + *(v211 + 44));
      sub_100296708(v53, type metadata accessor for BookReaderChromeState);
      if (v52)
      {
        v54 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      }

      else
      {

        v54 = v39;
      }
    }

    if (v171)
    {
      v55 = 7.0;
    }

    else
    {
      v55 = 9.0;
    }

    v56 = v37 / v36;

    sub_10079DFA4();
    v57 = v54;
    v208 = v54;
    v58 = enum case for Image.TemplateRenderingMode.template(_:);
    v59 = sub_10079DF74();
    v60 = *(v59 - 8);
    v61 = v172;
    (*(v60 + 104))(v172, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_10079DF44();

    sub_100007840(v61, &qword_100AD8DD8);
    sub_10079D3F4();
    v63 = sub_10079D3A4();
    v64 = v173;
    (*(*(v63 - 8) + 56))(v173, 1, 1, v63);
    v65 = sub_10079D424();
    sub_100007840(v64, &unk_100AD1FC0);
    KeyPath = swift_getKeyPath();
    v67 = sub_1001F1160(&qword_100AD1CD8);
    v68 = v175;
    v69 = (v175 + *(v67 + 36));
    v70 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
    v71 = enum case for Image.Scale.large(_:);
    v72 = sub_10079DF84();
    (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
    *v69 = swift_getKeyPath();
    *v68 = v62;
    v68[1] = KeyPath;
    v68[2] = v65;
    v73 = swift_getKeyPath();
    v74 = (v68 + *(sub_1001F1160(&qword_100AD1CC8) + 36));
    *v74 = v73;
    v74[1] = v57;
    sub_10079E474();
    sub_10079BE54();
    v75 = (v68 + *(v176 + 9));
    v76 = v248;
    *v75 = v247;
    v75[1] = v76;
    v75[2] = v249;
    v77 = sub_10079E414();
    __chkstk_darwin(v77);
    sub_1001F1160(&qword_100AD1CB0);
    sub_1001F1440();
    sub_1001F16F4();
    v78 = v178;
    sub_10079DC54();
    sub_100007840(v68, &qword_100AD1CA8);
    *&v78[*(v174 + 36)] = 256;
    v175 = *(v214 + 40);
    v79 = v213;
    sub_10079E304();
    v80 = v236;
    swift_getKeyPath();
    *&v236 = v80;
    v207 = sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v81 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v176 = type metadata accessor for BookReaderChromeState;
    v82 = v210;
    sub_1002966A0(v80 + v81, v210, type metadata accessor for BookReaderChromeState);

    v83 = v211;
    LODWORD(v81) = *(v82 + *(v211 + 44));
    sub_100296708(v82, type metadata accessor for BookReaderChromeState);
    if (v81)
    {
      v84 = 1.0;
    }

    else
    {
      v84 = BEChromeHiddenScale;
    }

    sub_10079E634();
    v86 = v85;
    v88 = v87;
    v89 = v78;
    v90 = v179;
    sub_10020B3C8(v89, v179, &qword_100AD1CA0);
    v91 = v90 + *(v177 + 36);
    *v91 = v84;
    *(v91 + 8) = v84;
    *(v91 + 16) = v86;
    *(v91 + 24) = v88;
    v92 = v215;
    sub_10079E304();
    v93 = v236;
    swift_getKeyPath();
    *&v236 = v93;
    sub_100797A14();

    v94 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v93 + v94, v82, v176);

    LODWORD(v94) = *(v82 + *(v83 + 44));
    sub_100296708(v82, type metadata accessor for BookReaderChromeState);
    if (v94)
    {
      v95 = 1.0;
    }

    else
    {
      v95 = 0.0;
    }

    v96 = v183;
    sub_10020B3C8(v90, v183, &qword_100AD1C90);
    *(v96 + *(v212 + 36)) = v95;
    v97 = v182;
    sub_10079E314();
    swift_getKeyPath();
    sub_10079E334();

    (*(v184 + 8))(v97, v79);
    v211 = *(&v236 + 1);
    LODWORD(v213) = v237;
    v98 = v192;
    sub_1002966A0(v92, v192, type metadata accessor for REMenuButtonView);
    v99 = (*(v190 + 80) + 16) & ~*(v190 + 80);
    v100 = swift_allocObject();
    sub_1002973E0(v98, v100 + v99, type metadata accessor for REMenuButtonView);
    v101 = sub_10079E034();
    v102 = v204;
    v103 = v205;
    *v204 = v101;
    v104 = v180;
    (*(v180 + 104))(v102, enum case for PopoverAttachmentAnchor.rect(_:), v103);
    sub_1001F1160(&qword_100AD1C78);
    sub_1001F11A8();
    v105 = sub_1001F1234(&qword_100AD1D48);
    v106 = sub_1001F17AC();
    *&v226 = v105;
    *(&v226 + 1) = v106;
    swift_getOpaqueTypeConformance2();
    v107 = v185;
    sub_10079D714();

    (*(v104 + 8))(v102, v103);
    sub_100007840(v96, &qword_100AD1C70);
    v108 = sub_10079E474();
    v110 = v109;
    v111 = v189;
    v112 = &v189[*(v181 + 36)];
    sub_100294AC0(v215, v112, v55, v56);
    v113 = (v112 + *(sub_1001F1160(&qword_100AD8DA8) + 36));
    *v113 = v108;
    v113[1] = v110;
    (*(v186 + 32))(v111, v107, v187);
    v114 = sub_10079E474();
    v116 = v115;
    sub_100296228(&v217);
    v232 = v223;
    v233 = v224;
    v234 = v225;
    v228 = v219;
    v229 = v220;
    v230 = v221;
    v231 = v222;
    v226 = v217;
    v227 = v218;
    *&v235 = v114;
    *(&v235 + 1) = v116;
    v117 = v111;
    v118 = v194;
    sub_10020B3C8(v117, v194, &qword_100AD8D98);
    v119 = (v118 + *(v188 + 36));
    v120 = v233;
    v119[6] = v232;
    v119[7] = v120;
    v121 = v235;
    v119[8] = v234;
    v119[9] = v121;
    v122 = v229;
    v119[2] = v228;
    v119[3] = v122;
    v123 = v231;
    v119[4] = v230;
    v119[5] = v123;
    v124 = v227;
    *v119 = v226;
    v119[1] = v124;
    v242 = v223;
    v243 = v224;
    v244 = v225;
    v238 = v219;
    v239 = v220;
    v240 = v221;
    v241 = v222;
    v236 = v217;
    v237 = v218;
    v245 = v114;
    v246 = v116;
    sub_1000077D8(&v226, &v216, &qword_100AD8DB8);
    sub_100007840(&v236, &qword_100AD8DB8);
    LOBYTE(v108) = sub_10079D2A4();
    sub_10079BBA4();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v133 = v196;
    sub_10020B3C8(v118, v196, &qword_100AD8D88);
    v134 = v133 + *(v193 + 36);
    *v134 = v108;
    *(v134 + 8) = v126;
    *(v134 + 16) = v128;
    *(v134 + 24) = v130;
    *(v134 + 32) = v132;
    *(v134 + 40) = 0;
    LOBYTE(v108) = sub_10079D2C4();
    sub_10079BBA4();
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v143 = v133;
    v144 = v198;
    sub_10020B3C8(v143, v198, &qword_100AD8D78);
    v145 = v144 + *(v195 + 36);
    *v145 = v108;
    *(v145 + 8) = v136;
    *(v145 + 16) = v138;
    *(v145 + 24) = v140;
    *(v145 + 32) = v142;
    *(v145 + 40) = 0;
    LOBYTE(v108) = sub_10079D2E4();
    sub_10079BBA4();
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v154 = v144;
    v155 = v201;
    sub_10020B3C8(v154, v201, &qword_100AD8D68);
    v156 = v155 + *(v197 + 36);
    *v156 = v108;
    *(v156 + 8) = v147;
    *(v156 + 16) = v149;
    *(v156 + 24) = v151;
    *(v156 + 32) = v153;
    *(v156 + 40) = 0;
    LOBYTE(v108) = sub_10079D2B4();
    sub_10079BBA4();
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    v165 = v199;
    sub_10020B3C8(v155, v199, &qword_100AD8D58);
    v166 = v165 + *(v200 + 36);
    *v166 = v108;
    *(v166 + 8) = v158;
    *(v166 + 16) = v160;
    *(v166 + 24) = v162;
    *(v166 + 32) = v164;
    *(v166 + 40) = 0;
    v167 = v203;
    sub_10020B3C8(v165, v203, &qword_100AD8D48);
    *(v167 + *(v202 + 36)) = 0;
    sub_1002968DC();
    sub_10079D944();

    return sub_100007840(v167, &qword_100AD8D38);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10029445C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = sub_10079CEA4();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079D4D4();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100796CF4();
  v6 = *(v48 - 8);
  v7 = __chkstk_darwin(v48);
  v47 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_1007A21D4();
  v11 = *(v43 - 8);
  v12 = __chkstk_darwin(v43);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v42 - v15;
  v49 = type metadata accessor for TipContentView() - 8;
  __chkstk_darwin(v49);
  v18 = (v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1001F1160(&qword_100AD1D48);
  __chkstk_darwin(v50);
  v51 = v42 - v19;
  v20 = type metadata accessor for REMenuButtonView();
  v42[2] = *(v20 + 40);
  v21 = v20;
  v46 = v20;
  v42[1] = sub_1001F1160(&qword_100AD8B70);
  v42[0] = a1;
  sub_10079E304();
  v22 = *(v59 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage);
  v44 = *(v59 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage + 8);
  v45 = v22;

  v23 = *(a1 + *(v21 + 52));
  sub_1007A2154();
  sub_100796C94();
  v24 = v43;
  (*(v11 + 16))(v14, v16, v43);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v27 = v48;
  (*(v6 + 16))(v47, v10, v48);
  v28 = sub_1007A22D4();
  v30 = v29;
  (*(v6 + 8))(v10, v27);
  (*(v11 + 8))(v16, v24);
  v31 = v42[0];
  sub_10079E304();
  v32 = v59;
  type metadata accessor for ChromeStyle();
  sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  *v18 = sub_10079C484();
  v18[1] = v33;
  v34 = v44;
  v18[2] = v45;
  v18[3] = v34;
  v18[4] = v23;
  v18[5] = v28;
  v18[6] = v30;
  v18[7] = sub_1002973D8;
  v18[8] = v32;
  v59 = 0x4079E00000000000;
  (*(v53 + 104))(v52, enum case for Font.TextStyle.largeTitle(_:), v54);
  sub_100247DCC();
  sub_10079BDD4();
  v35 = *(v31 + *(v46 + 36));
  if (v35)
  {
    v36 = v35;
    v37 = sub_10079B8A4();
    v38 = v51;
    sub_1002973E0(v18, v51, type metadata accessor for TipContentView);
    v39 = (v38 + *(v50 + 36));
    *v39 = v37;
    v39[1] = v35;
    v40 = v55;
    sub_10079CE94();
    sub_1001F17AC();
    sub_10079DAA4();
    (*(v56 + 8))(v40, v58);
    return sub_100007840(v38, &qword_100AD1D48);
  }

  else
  {
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100294AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v59 = sub_1001F1160(&qword_100AD8DE8);
  __chkstk_darwin(v59);
  v9 = (v56 - v8);
  v61 = sub_1001F1160(&qword_100AD8DF0);
  __chkstk_darwin(v61);
  v64 = v56 - v10;
  v67 = sub_1001F1160(&qword_100AD8DF8);
  v66 = *(v67 - 8);
  v11 = __chkstk_darwin(v67);
  v62 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = v56 - v13;
  v14 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v14);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for REMenuButtonView() + 40);
  v18 = sub_1001F1160(&qword_100AD8B70);
  v65 = v17;
  v19 = v18;
  sub_10079E304();
  v20 = v72;
  swift_getKeyPath();
  *&v72 = v20;
  v21 = sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v22 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v20 + v22, v16, type metadata accessor for BookReaderChromeState);

  v60 = v14;
  LODWORD(v22) = v16[*(v14 + 44) + 1];
  sub_100296708(v16, type metadata accessor for BookReaderChromeState);
  if (v22 == 1)
  {
    v58 = a2;
    *v9 = sub_10079E474();
    v9[1] = v23;
    v24 = sub_1001F1160(&qword_100AD8E00);
    sub_1002952E4(a1, v9 + *(v24 + 44));
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    sub_10079E474();
    sub_10079BE54();
    v25 = (v9 + *(v59 + 9));
    v26 = v73;
    v27 = v74;
    *v25 = v72;
    v25[1] = v26;
    v25[2] = v27;
    v56[2] = v19;
    sub_10079E304();
    v28 = v71;
    swift_getKeyPath();
    v71 = v28;
    v56[1] = v21;
    sub_100797A14();

    v29 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v59 = v9;
    v57 = type metadata accessor for BookReaderChromeState;
    sub_1002966A0(v28 + v29, v16, type metadata accessor for BookReaderChromeState);

    v30 = v60;
    LODWORD(v29) = v16[*(v60 + 44)];
    v56[0] = type metadata accessor for BookReaderChromeState;
    sub_100296708(v16, type metadata accessor for BookReaderChromeState);
    if (v29)
    {
      v31 = a3;
    }

    else
    {
      v31 = 0.0;
    }

    sub_10079E304();
    v32 = v70;
    swift_getKeyPath();
    v70 = v32;
    sub_100797A14();

    v33 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v32 + v33, v16, type metadata accessor for BookReaderChromeState);

    LODWORD(v33) = v16[*(v30 + 44)];
    v34 = v56[0];
    sub_100296708(v16, v56[0]);
    if (v33)
    {
      v35 = -a3;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = v64;
    sub_10020B3C8(v59, v64, &qword_100AD8DE8);
    v37 = (v36 + *(v61 + 36));
    *v37 = v31;
    v37[1] = v35;
    sub_10079E304();
    v38 = v69;
    swift_getKeyPath();
    v69 = v38;
    sub_100797A14();

    v39 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v40 = v57;
    sub_1002966A0(v38 + v39, v16, v57);

    LODWORD(v39) = v16[*(v30 + 44)];
    sub_100296708(v16, v34);
    if (v39)
    {
      v41 = a4;
    }

    else
    {
      v41 = 1.0;
    }

    sub_10079E304();
    v42 = v68;
    swift_getKeyPath();
    v68 = v42;
    sub_100797A14();

    v43 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v42 + v43, v16, v40);

    LODWORD(v43) = v16[*(v30 + 44)];
    sub_100296708(v16, v34);
    if (v43)
    {
      v44 = a4;
    }

    else
    {
      v44 = 1.0;
    }

    sub_10079E5E4();
    v46 = v45;
    v48 = v47;
    v49 = v62;
    sub_10020B3C8(v36, v62, &qword_100AD8DF0);
    v50 = v67;
    v51 = v49 + *(v67 + 36);
    *v51 = v41;
    *(v51 + 8) = v44;
    *(v51 + 16) = v46;
    *(v51 + 24) = v48;
    v52 = v49;
    v53 = v63;
    sub_10020B3C8(v52, v63, &qword_100AD8DF8);
    a2 = v58;
    sub_10020B3C8(v53, v58, &qword_100AD8DF8);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v50 = v67;
  }

  return (*(v66 + 56))(a2, v54, 1, v50);
}

uint64_t sub_1002952E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = sub_10079CAE4();
  v3 = *(v55 - 8);
  v4 = __chkstk_darwin(v55);
  v54 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v49 - v6;
  v7 = sub_1001F1160(&qword_100AD8E08);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v50 = v49 - v9;
  v10 = sub_1001F1160(&qword_100AD8E10);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v49 - v15;
  __chkstk_darwin(v14);
  v53 = v49 - v17;
  v18 = sub_1001F1160(&qword_100AD8E18);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v51 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v49 - v22;
  sub_10079E414();
  v49[1] = a1;
  v59 = a1;
  v58 = a1;
  sub_1001F1160(&qword_100AD8E20);
  sub_100297384();
  sub_100005920(&qword_100AD8E30, &qword_100AD8E20);
  sub_10079DC54();
  v24 = sub_10079DD64();
  v25 = &v23[*(v19 + 44)];
  *v25 = v24;
  *(v25 + 4) = 256;
  v60 = sub_10079DF24();
  sub_10079E414();
  sub_1001F1160(&qword_100AD1CD8);
  sub_1001F1160(&qword_100AD1CE8);
  sub_1001F1584();
  sub_1001F163C();
  v26 = v50;
  sub_10079DC54();

  v27 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  KeyPath = swift_getKeyPath();
  v29 = (v26 + *(v8 + 44));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v52;
  sub_10029011C(v52);
  v32 = v54;
  v31 = v55;
  (*(v3 + 104))(v54, enum case for ContentSizeCategory.large(_:), v55);
  sub_100391B98(v30, v32);
  v33 = *(v3 + 8);
  v33(v32, v31);
  v33(v30, v31);
  LOBYTE(v27) = sub_10079D294();
  sub_10079BBA4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10020B3C8(v26, v16, &qword_100AD8E08);
  v42 = &v16[*(v11 + 44)];
  *v42 = v27;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = v53;
  sub_10020B3C8(v16, v53, &qword_100AD8E10);
  v44 = v51;
  sub_1000077D8(v23, v51, &qword_100AD8E18);
  v45 = v56;
  sub_1000077D8(v43, v56, &qword_100AD8E10);
  v46 = v57;
  sub_1000077D8(v44, v57, &qword_100AD8E18);
  v47 = sub_1001F1160(&qword_100AD8E38);
  sub_1000077D8(v45, v46 + *(v47 + 48), &qword_100AD8E10);
  sub_100007840(v43, &qword_100AD8E10);
  sub_100007840(v23, &qword_100AD8E18);
  sub_100007840(v45, &qword_100AD8E10);
  return sub_100007840(v44, &qword_100AD8E18);
}

double sub_100295900@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  type metadata accessor for REMenuButtonView();
  sub_1001F1160(&qword_100AD8B70);
  sub_10079E304();
  v6 = v16;
  swift_getKeyPath();
  v16 = v6;
  sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v7 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v6 + v7, v4, type metadata accessor for BookReaderChromeState);

  sub_100296708(v4, type metadata accessor for BookReaderChromeState);
  sub_10079BCF4();
  v8 = v16;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = sub_10079E474();
  result = v17;
  *a1 = v8;
  *(a1 + 8) = result;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v5;
  *(a1 + 48) = 256;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  return result;
}

uint64_t sub_100295B10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BookReaderChromeState();
  __chkstk_darwin(v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + *(type metadata accessor for REMenuButtonView() + 36));
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_10079B9A4();

    v9 = v20;
    sub_1001F1160(&qword_100AD8B70);
    sub_10079E304();
    v10 = v20;
    swift_getKeyPath();
    v20 = v10;
    sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A14();

    v11 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v10 + v11, v6, type metadata accessor for BookReaderChromeState);

    sub_100296708(v6, type metadata accessor for BookReaderChromeState);
    sub_10079BCF4();
    v12 = v20;
    v13 = v22;
    v14 = v23;
    v15 = v24;
    result = sub_10079E474();
    v17 = v21;
    *a2 = v12;
    *(a2 + 8) = v17;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v9;
    *(a2 + 48) = 256;
    *(a2 + 56) = result;
    *(a2 + 64) = v18;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100295DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v8 + 104))(v10, enum case for Font.TextStyle.subheadline(_:), v7);
  v12 = sub_10079D3A4();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_10079D434();
  sub_100007840(v6, &unk_100AD1FC0);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  v15 = (a2 + *(sub_1001F1160(&qword_100AD1CD8) + 36));
  v16 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v17 = enum case for Image.Scale.large(_:);
  v18 = sub_10079DF84();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *a2 = v11;
  a2[1] = KeyPath;
  a2[2] = v13;
}

uint64_t sub_100296048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v8 + 104))(v10, enum case for Font.TextStyle.footnote(_:), v7);
  v12 = sub_10079D3A4();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_10079D3F4();
  v13 = sub_10079D434();
  sub_100007840(v6, &unk_100AD1FC0);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  *a2 = v11;
  a2[1] = KeyPath;
  a2[2] = v13;
}

double sub_100296228@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for REMenuButtonView() + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  sub_1001F1160(&qword_100AD8B70);
  sub_10079E304();
  swift_getKeyPath();
  sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = *(v10 + 152);

  v8 = swift_allocObject();
  *(v8 + 16) = Strong;
  *(v8 + 24) = v5;
  swift_unknownObjectRetain();
  sub_10079E474();
  sub_10079BE54();
  swift_unknownObjectRelease();
  *a1 = vdupq_n_s64(0x4052000000000000uLL);
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = v10;
  *(a1 + 40) = sub_10029734C;
  *(a1 + 48) = v8;
  *(a1 + 104) = v11;
  result = *&v12;
  *(a1 + 120) = v12;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1002964BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for REMenuButtonView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100292658(a1, v6, a2);
}

unint64_t sub_10029653C()
{
  result = qword_100AD8C88;
  if (!qword_100AD8C88)
  {
    sub_1001F1234(&qword_100AD8C78);
    sub_100296DE0(&qword_100AD8C90, type metadata accessor for ReadingLoupeButtonView);
    sub_1002965F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8C88);
  }

  return result;
}

unint64_t sub_1002965F8()
{
  result = qword_100AD8C98;
  if (!qword_100AD8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8C98);
  }

  return result;
}

unint64_t sub_10029664C()
{
  result = qword_100AD8CA0;
  if (!qword_100AD8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8CA0);
  }

  return result;
}

uint64_t sub_1002966A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100296708(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100296768()
{
  result = qword_100AD8D18;
  if (!qword_100AD8D18)
  {
    sub_1001F1234(&qword_100AD8CD0);
    sub_100296820();
    sub_100005920(&qword_100AD8DC0, &qword_100AD8D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D18);
  }

  return result;
}

unint64_t sub_100296820()
{
  result = qword_100AD8D20;
  if (!qword_100AD8D20)
  {
    sub_1001F1234(&qword_100AD8D28);
    sub_1002968DC();
    sub_100296DE0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D20);
  }

  return result;
}

unint64_t sub_1002968DC()
{
  result = qword_100AD8D30;
  if (!qword_100AD8D30)
  {
    sub_1001F1234(&qword_100AD8D38);
    sub_100296994();
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D30);
  }

  return result;
}

unint64_t sub_100296994()
{
  result = qword_100AD8D40;
  if (!qword_100AD8D40)
  {
    sub_1001F1234(&qword_100AD8D48);
    sub_100296A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D40);
  }

  return result;
}

unint64_t sub_100296A20()
{
  result = qword_100AD8D50;
  if (!qword_100AD8D50)
  {
    sub_1001F1234(&qword_100AD8D58);
    sub_100296AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D50);
  }

  return result;
}

unint64_t sub_100296AAC()
{
  result = qword_100AD8D60;
  if (!qword_100AD8D60)
  {
    sub_1001F1234(&qword_100AD8D68);
    sub_100296B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D60);
  }

  return result;
}

unint64_t sub_100296B38()
{
  result = qword_100AD8D70;
  if (!qword_100AD8D70)
  {
    sub_1001F1234(&qword_100AD8D78);
    sub_100296BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D70);
  }

  return result;
}

unint64_t sub_100296BC4()
{
  result = qword_100AD8D80;
  if (!qword_100AD8D80)
  {
    sub_1001F1234(&qword_100AD8D88);
    sub_100296C7C();
    sub_100005920(&qword_100AD8DB0, &qword_100AD8DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D80);
  }

  return result;
}

unint64_t sub_100296C7C()
{
  result = qword_100AD8D90;
  if (!qword_100AD8D90)
  {
    sub_1001F1234(&qword_100AD8D98);
    sub_1001F1234(&qword_100AD1C70);
    sub_1001F1234(&qword_100AD1C78);
    sub_1001F11A8();
    sub_1001F1234(&qword_100AD1D48);
    sub_1001F17AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD8DA0, &qword_100AD8DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D90);
  }

  return result;
}

uint64_t sub_100296DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100296E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079E3B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E3A4();
  v8 = a2 + *(sub_1001F1160(&qword_100AD1CB0) + 36);
  sub_10079E3D4();
  (*(v5 + 8))(v7, v4);
  *(v8 + *(sub_1001F1160(&qword_100AD1D30) + 56)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AD1CA8);
}

uint64_t sub_100296F64()
{
  v1 = type metadata accessor for REMenuButtonView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079CEE4();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079CEE4();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[6];
  sub_1001F1160(&unk_100ADB740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10079C104();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  sub_10020B534(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v11 = v1[8];
  sub_1001F1160(&unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAE4();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  v13 = v1[10];
  v14 = sub_1001F1160(&qword_100AD8B70);
  (*(*(v14 - 8) + 8))(v3 + v13, v14);
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002972DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for REMenuButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10029445C(v4, a1);
}

uint64_t sub_10029734C()
{
  if (*(v0 + 16))
  {
    return sub_1006ABF84();
  }

  return result;
}

unint64_t sub_100297384()
{
  result = qword_100AD8E28;
  if (!qword_100AD8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8E28);
  }

  return result;
}

uint64_t sub_1002973E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10029745C()
{
  result = qword_100AD8E50;
  if (!qword_100AD8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8E50);
  }

  return result;
}

unint64_t sub_1002974B4()
{
  result = qword_100AD8E58;
  if (!qword_100AD8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8E58);
  }

  return result;
}

uint64_t sub_100297508()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD8E78);
  sub_100008B98(v0, qword_100AD8E78);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_10029757C()
{
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&qword_100AD8FF8);
  sub_100298208(&qword_100AD9000, &qword_100AD8FF8);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&unk_100AEA190);
  sub_100298208(&unk_100AF25F0, &unk_100AEA190);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_10029775C(_BYTE *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = a1[2];
  v5 = sub_10079F914();
  v7 = v6;
  if (v5 == sub_10079F914() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1007A3AB4();

    if ((v10 & 1) == 0)
    {
LABEL_16:
      sub_100297BF4(a1);
      v3[16] = v4;
      v3[17] = a1[3];
      v3[18] = a1[4];
      v20 = sub_1007A0A14();
      v22 = v21;
      if (v20 == sub_1007A0A14() && v22 == v23)
      {
        v24 = 1;
      }

      else
      {
        v24 = sub_1007A3AB4();
      }

      v3[19] = v24 & 1;

      return;
    }
  }

  v11 = sub_10079EF74();
  v13 = v12;
  if (v11 == sub_10079EF74() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_1007A3AB4();

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v16 = sub_1007A0A14();
  v18 = v17;
  if (v16 == sub_1007A0A14() && v18 == v19)
  {

    if ((v3[19] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v25 = sub_1007A3AB4() & 1;

    if (v25 != v3[19])
    {
      goto LABEL_16;
    }
  }

  if (qword_100AD1368 != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AD8E78);
  v27 = sub_10079ACC4();
  v28 = sub_1007A29A4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Reading state changed, but not visibly, ignoring", v29, 2u);
  }
}

uint64_t sub_100297A70(uint64_t a1)
{
  v2 = sub_10079F734();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    if ((*(v3 + 88))(v5, v2) == enum case for BookContentLayoutController.LayoutState.done(_:))
    {
      (*(v3 + 8))(v5, v2);

      sub_1002D7F04();
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

void sub_100297BF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v48 - v8;
  __chkstk_darwin(v10);
  v12 = v48 - v11;
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  if (qword_100AD1368 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  v17 = sub_100008B98(v16, qword_100AD8E78);
  sub_100298138(a1, v15);
  sub_100298138(a1, v12);
  sub_100298138(a1, v9);
  sub_100298138(a1, v6);
  v18 = sub_10079ACC4();
  v19 = sub_1007A29A4();
  if (os_log_type_enabled(v18, v19))
  {
    v48[1] = v17;
    v48[2] = v2;
    v20 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    v49 = v48[0];
    *v20 = 136446978;
    v21 = sub_10079F8E4();
    v23 = v22;
    sub_10029819C(v15);
    v24 = sub_1000070F4(v21, v23, &v49);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_10079EF64();
    v27 = v26;
    sub_10029819C(v12);
    v28 = sub_1000070F4(v25, v27, &v49);

    *(v20 + 14) = v28;
    *(v20 + 22) = 1024;
    LODWORD(v27) = v9[4];
    sub_10029819C(v9);
    *(v20 + 24) = v27;
    *(v20 + 28) = 1024;
    v29 = sub_1007A0A14();
    v31 = v30;
    if (v29 == sub_1007A0A14() && v31 == v32)
    {

      v33 = 1;
    }

    else
    {
      v34 = sub_1007A3AB4();

      v33 = v34 & 1;
    }

    sub_10029819C(v6);
    *(v20 + 30) = v33;
    _os_log_impl(&_mh_execute_header, v18, v19, "Handling Change to %{public}s-%{public}s, darkBackground:%{BOOL}d, scrollEnabled: %{BOOL}d", v20, 0x22u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10029819C(v6);
    sub_10029819C(v9);

    sub_10029819C(v12);
    sub_10029819C(v15);
  }

  sub_1002DA06C();
  v35 = sub_10079F914();
  v37 = v36;
  if (v35 == sub_10079F914() && v37 == v38)
  {
  }

  else
  {
    v39 = sub_1007A3AB4();

    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  v40 = sub_10079EF74();
  v42 = v41;
  if (v40 == sub_10079EF74() && v42 == v43)
  {
  }

  else
  {
    v44 = sub_1007A3AB4();

    if ((v44 & 1) == 0)
    {
      v45 = sub_10079ACC4();
      v46 = sub_1007A29A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Handling Variant Change, without waiting for layout pass", v47, 2u);
      }

      sub_1002D7F04();
    }
  }
}

uint64_t sub_1002980C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100298138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _BookReaderInteractorState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029819C(uint64_t a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100298208(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10029825C()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100AD9008 = result;
  return result;
}

id static OS_os_log.sampleHeader.getter()
{
  if (qword_100AD1370 != -1)
  {
    swift_once();
  }

  v1 = qword_100AD9008;

  return v1;
}

id static OS_os_log.serviceCenter.getter()
{
  if (qword_100AD1378 != -1)
  {
    swift_once();
  }

  v1 = qword_100AD9010;

  return v1;
}

id LanguageUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id LanguageUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s5Books17LanguageUtilitiesC08dominantB03forSSSgSo7JSValueC_tFZ_0(void *a1)
{
  if (![a1 isString])
  {
    return 0;
  }

  result = [a1 toString];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [objc_opt_self() dominantLanguageForString:result];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1007A2254();

  return v5;
}

uint64_t sub_100298570()
{
  v0 = sub_1001F1160(&unk_100AD9108);
  sub_100009A38(v0, qword_100AD9040);
  sub_100008B98(v0, qword_100AD9040);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_100298620()
{
  v0 = sub_1001F1160(&unk_100AD9108);
  sub_100009A38(v0, qword_100AD9058);
  sub_100008B98(v0, qword_100AD9058);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_1002986F4()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v17[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v17[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v15 = sub_1007A22D4();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v15;
}

uint64_t sub_100298BC8(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  if (v1 == 3)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v3 + 16))(v5, v8, v2);
    v18 = sub_1007A22D4();
    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v15, v9);
    return v18;
  }

  else
  {

    return sub_1002986F4();
  }
}

uint64_t sub_100298E88(uint64_t a1, char a2)
{
  **(*(*sub_10000E3E8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_100298EE4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B22F80);
  sub_100008B98(v0, qword_100B22F80);
  sub_10001389C();
  return sub_1007A3404();
}

uint64_t sub_100298F58(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress;
    if ((*(result + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8) & 1) != 0 && v1 > 0.0)
    {
      *v3 = v1;
      *(v3 + 8) = 0;
      v4 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
      v5 = result;
      swift_beginAccess();
      sub_1000077D8(v5 + v4, v7, &qword_100AD9580);
      if (v8)
      {
        sub_100009864(v7, v6);
        sub_100007840(v7, &qword_100AD9580);
        sub_10000E3E8(v6, v6[3]);
        sub_10079B834();

        return sub_1000074E0(v6);
      }

      else
      {

        return sub_100007840(v7, &qword_100AD9580);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002990A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    v5 = v2;
    (*(v3 + 16))(ObjectType, v3);
    swift_allocObject();
    swift_weakInit();
    sub_1001F1160(&qword_100AD95A0);
    sub_100005920(&qword_100AD95A8, &qword_100AD95A0);
    v6 = sub_10079BB04();

    v9[3] = sub_10079B884();
    v9[4] = &protocol witness table for AnyCancellable;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9[0] = v6;
    v7 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
    swift_beginAccess();
    sub_1002391EC(v9, v5 + v7, &qword_100AD9580);
    return swift_endAccess();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100299270()
{
  swift_unknownObjectRelease();
  sub_1000074E0(v0 + 32);
  sub_10002B130(v0 + 72);
  sub_10002B130(v0 + 88);
  sub_10002B130(v0 + 104);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate, &unk_100ADB5C0);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endSessionDate, &unk_100ADB5C0);
  v1 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
  v2 = sub_100798154();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
  v4 = sub_1007980B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
  v6 = sub_1007981E4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  v8 = sub_100798074();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lifeCycleCancellable, &qword_100AD9580);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable, &qword_100AD9580);

  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache, &qword_100AD9470);
  return v0;
}

uint64_t sub_10029947C()
{
  sub_100299270();

  return swift_deallocClassInstance();
}

uint64_t sub_1002994E4@<X0>(uint64_t a1@<X8>)
{
  sub_10000E3E8((v1 + 32), *(v1 + 56));
  v3 = sub_10079EB94();
  v4 = sub_100797D94();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_100A12C80 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_100299588@<X0>(uint64_t a1@<X8>)
{
  sub_10000E3E8((v1 + 32), *(v1 + 56));
  v3 = sub_10079EB94();
  v4 = sub_100798024();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_100A12CA0 + v3);

  return v5(a1, v6, v4);
}

void (*sub_100299650(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 80);
  *(v4 + 64) = Strong;
  *(v4 + 72) = v6;
  return sub_1002996D0;
}

void sub_1002996D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1002990A0(v4, v3);
  }

  else
  {
    *((*a1)[10] + 80) = v3;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v2[10];
      v6 = *(v5 + 80);
      ObjectType = swift_getObjectType();
      v2[5] = (*(v6 + 16))(ObjectType, v6);
      swift_allocObject();
      swift_weakInit();
      sub_1001F1160(&qword_100AD95A0);
      sub_100005920(&qword_100AD95A8, &qword_100AD95A0);
      v8 = sub_10079BB04();

      v2[3] = sub_10079B884();
      v2[4] = &protocol witness table for AnyCancellable;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *v2 = v8;
      v9 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
      swift_beginAccess();
      sub_1002391EC(v2, v5 + v9, &qword_100AD9580);
      swift_endAccess();
      goto LABEL_6;
    }
  }

  swift_unknownObjectRelease();
LABEL_6:

  free(v2);
}

uint64_t sub_1002998D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_10029991C(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 96);
  *a1 = Strong;
  a1[1] = v4;
  return sub_10029996C;
}

uint64_t sub_10029996C(uint64_t a1)
{
  *(*(a1 + 16) + 96) = *(a1 + 8);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002999F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100299A50(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 112);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100299AE4;
}

void sub_100299AE4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 112) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100299B6C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lifeCycleCancellable;
  swift_beginAccess();
  sub_1000077D8(v1 + v4, v8, &qword_100AD9580);
  if (v9)
  {
    sub_100009864(v8, v7);
    sub_100007840(v8, &qword_100AD9580);
    sub_10000E3E8(v7, v7[3]);
    sub_10079B834();
    result = sub_1000074E0(v7);
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = sub_100007840(v8, &qword_100AD9580);
    if (!a1)
    {
      return result;
    }
  }

  v8[0] = a1;
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&qword_100AD9588);
  sub_100005920(&unk_100AD9590, &qword_100AD9588);
  v6 = sub_10079BB04();

  v9 = sub_10079B884();
  v10 = &protocol witness table for AnyCancellable;

  v8[0] = v6;
  swift_beginAccess();
  sub_1002391EC(v8, v2 + v4, &qword_100AD9580);
  return swift_endAccess();
}

uint64_t sub_100299D68(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1001F1160(&qword_100AD9470);
  __chkstk_darwin(v3 - 8);
  v30 = &v28 - v4;
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v28 = &v28 - v6;
  v7 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  sub_100798484();
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 1, 1, v10);
  sub_1002A42D0(&unk_100AD94D0, &type metadata accessor for ReadEvent);
  sub_100798424();
  sub_100007840(v9, &unk_100ADB5C0);
  (*(v11 + 16))(v9, v29, v10);
  v12(v9, 0, 1, v10);
  v13 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
  swift_beginAccess();
  sub_1002391EC(v9, v2 + v13, &unk_100ADB5C0);
  swift_endAccess();
  v14 = (v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress);
  if (*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v2[10];
      ObjectType = swift_getObjectType();
      v17 = COERCE_DOUBLE((*(v15 + 8))(ObjectType, v15));
      v19 = v18;
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0 && v17 > 0.0)
      {
        *v14 = v17;
        *(v14 + 8) = 0;
      }
    }
  }

  sub_10000E3E8(v2 + 4, v2[7]);
  v20 = sub_10079ECA4();
  sub_1002A2BF0(v20, v21);

  if (sub_100798444())
  {
    v22 = sub_1007A2744();
    v23 = v28;
    (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v2;

    sub_1003457A0(0, 0, v23, &unk_100816910, v24);
  }

  v25 = v30;
  sub_10029AE1C(v30);
  v26 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache;
  swift_beginAccess();
  sub_1002391EC(v25, v2 + v26, &qword_100AD9470);
  return swift_endAccess();
}

uint64_t sub_10029A174(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD9468);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v47 = v5;
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1001F1160(&qword_100AD9470);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9 - 8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  __chkstk_darwin(v14);
  v49 = &v43 - v15;
  v16 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_100796BB4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a1, v19);
  v21 = 1;
  (*(v20 + 56))(v18, 0, 1, v19);
  v22 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endSessionDate;
  swift_beginAccess();
  sub_1002391EC(v18, v2 + v22, &unk_100ADB5C0);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    v25 = (*(v23 + 8))(ObjectType, v23);
    v21 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0;
  }

  v27 = v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress;
  *v27 = v25;
  *(v27 + 8) = v21 & 1;
  v28 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache;
  swift_beginAccess();
  sub_1000077D8(v2 + v28, v13, &qword_100AD9470);
  v29 = sub_100797D84();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v13, 1, v29);
  v33 = v49;
  if (v32 == 1)
  {
    sub_10029AE1C(v49);
    if (v31(v13, 1, v29) != 1)
    {
      sub_100007840(v13, &qword_100AD9470);
    }
  }

  else
  {
    (*(v30 + 32))(v49, v13, v29);
    (*(v30 + 56))(v33, 0, 1, v29);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = sub_1007983E4();
  sub_10029B3E8(v8);
  v35 = v45;
  sub_1000077D8(v33, v45, &qword_100AD9470);
  v36 = v48;
  sub_1000077D8(v8, v48, &qword_100AD9468);
  v37 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v46 + 80) + v38 + 8) & ~*(v46 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  sub_10020B3C8(v35, v40 + v37, &qword_100AD9470);
  *(v40 + v38) = v2;
  sub_10020B3C8(v36, v40 + v39, &qword_100AD9468);
  v41 = swift_allocObject();
  v41[2] = v2;
  v41[3] = &unk_100816898;
  v41[4] = v40;
  swift_retain_n();

  sub_1007983F4();

  sub_100007840(v8, &qword_100AD9468);
  sub_100007840(v49, &qword_100AD9470);
}

uint64_t sub_10029A764(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10029A7C4(v1);
  }

  return result;
}

void sub_10029A7C4(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A3504(a1);
  if (a1 == 2)
  {
    sub_100796BA4();
    sub_10029A174(v5);
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_100796BA4();
    sub_100299D68(v5);
LABEL_5:
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B22F80);
  v16 = sub_10079ACC4();
  v7 = sub_1007A2994();
  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = 0xEC00000065736163;
    v11 = 0x206E776F6E6B6E75;
    if (a1 == 3)
    {
      v11 = 0x7061736944646964;
      v10 = 0xEC00000072616570;
    }

    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x7465736E75;
    }

    if (a1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_1000070F4(v12, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v16, v7, "Unhandled lifeCycle event: %s", v8, 0xCu);
    sub_1000074E0(v9);
  }

  else
  {
    v15 = v16;
  }
}

uint64_t sub_10029AA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_100798154();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10029AB20, 0, 0);
}

uint64_t sub_10029AB20()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_10029AC48;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A12C30;
  v0[14] = v2;
  [v1 fetchCurrentState:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10029AC48()
{

  return _swift_task_switch(sub_10029AD28, 0, 0);
}

uint64_t sub_10029AD28()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = &enum case for DoNotDisturbStatus.on(_:);
  if (!*(v0 + 200))
  {
    v5 = &enum case for DoNotDisturbStatus.off(_:);
  }

  (*(*(v0 + 184) + 104))(*(v0 + 192), *v5, *(v0 + 176));
  v6 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v6, v1, v3);
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10029AE1C@<X0>(char *a1@<X8>)
{
  v3 = sub_100799004();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD9470);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_100797D84();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = v4;
    v37 = a1;
    v13 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    if ((*(v38 + 48))(v9, 1, v10) == 1)
    {
      sub_100007840(v9, &qword_100AD9470);
      if ((*(v13 + 16))(ObjectType, v13))
      {
        v15 = v37;
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v16 = sub_10079ACE4();
        sub_100008B98(v16, qword_100B22F80);
        v17 = sub_10079ACC4();
        v18 = sub_1007A29B4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v15 = v37;
      }

      return (*(v38 + 56))(v15, 1, 1, v10);
    }

    else
    {
      v26 = v9;
      v27 = *(v38 + 32);
      v27(v12, v26, v10);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v1 + 112);
        v29 = swift_getObjectType();
        v30 = (*(v28 + 16))(v29, v28);
        swift_unknownObjectRelease();
        if (v30)
        {
          v35 = v27;
          v31 = v36;
          (*(v36 + 104))(v6, enum case for BooksFeatureFlag.unifiedProductPage(_:), v3);
          sub_1002A42D0(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
          sub_100005920(&qword_100AD7778, &unk_100AD9570);
          v32 = sub_1007A2554();
          (*(v31 + 8))(v6, v3);
          if (v32)
          {
            sub_100797CC4();
            sub_100797D74();
            sub_100797CA4();
            sub_100797D64();
          }

          v27 = v35;
        }
      }

      swift_unknownObjectRelease();
      v33 = v37;
      v27(v37, v12, v10);
      return (*(v38 + 56))(v33, 0, 1, v10);
    }
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100B22F80);
    v21 = sub_10079ACC4();
    v22 = sub_1007A2994();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
    }

    v24 = *(v38 + 56);

    return v24(a1, 1, 1, v10);
  }
}

uint64_t sub_10029B3E8@<X0>(uint64_t a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    v3[3](ObjectType, v3);
    v3[4](ObjectType, v3);
    v3[5](ObjectType, v3);
    sub_1007981A4();
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100B22F80);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
    }

    v5 = 1;
  }

  v10 = sub_1007981B4();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v5, 1, v10);
}

uint64_t sub_10029B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = sub_100796BB4();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  sub_1001F1160(&unk_100ADB5C0);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v6 = sub_100798094();
  v4[45] = v6;
  v4[46] = *(v6 - 8);
  v4[47] = swift_task_alloc();
  v7 = sub_100798154();
  v4[48] = v7;
  v4[49] = *(v7 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v8 = sub_100797D24();
  v4[55] = v8;
  v4[56] = *(v8 - 8);
  v4[57] = swift_task_alloc();
  v9 = sub_100798174();
  v4[58] = v9;
  v4[59] = *(v9 - 8);
  v4[60] = swift_task_alloc();
  v10 = sub_1007981D4();
  v4[61] = v10;
  v4[62] = *(v10 - 8);
  v4[63] = swift_task_alloc();
  sub_1001F1160(&qword_100AD9468);
  v4[64] = swift_task_alloc();
  v11 = sub_1007981B4();
  v4[65] = v11;
  v4[66] = *(v11 - 8);
  v4[67] = swift_task_alloc();
  sub_1001F1160(&qword_100AD9470);
  v4[68] = swift_task_alloc();
  v12 = sub_100797D84();
  v4[69] = v12;
  v4[70] = *(v12 - 8);
  v4[71] = swift_task_alloc();
  sub_1007A26F4();
  v4[72] = sub_1007A26E4();
  v14 = sub_1007A2694();
  v4[73] = v14;
  v4[74] = v13;

  return _swift_task_switch(sub_10029BA18, v14, v13);
}

uint64_t sub_10029BA18()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  sub_1000077D8(*(v0 + 296), v3, &qword_100AD9470);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100007840(*(v0 + 544), &qword_100AD9470);
  }

  else
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    (*(v5 + 32))(v4, *(v0 + 544), v6);
    sub_1001F1160(&qword_100AD5B18);
    v7 = sub_100797B54();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10080B690;
    (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_1002A42D0(&qword_100AD9500, &type metadata accessor for ContentData);
    sub_1002A42D0(&qword_100AD9508, &type metadata accessor for ContentData);
    sub_100798414();

    (*(v5 + 8))(v4, v6);
  }

  v11 = *(v0 + 304);
  v12 = (v11 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress);
  if ((*(v11 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8) & 1) == 0)
  {
    v13 = v11 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress;
    if ((*(v13 + 8) & 1) == 0)
    {
      if ((v14 = *v12, *v13 >= 0.5) && v14 < 0.5 || *v13 >= 0.9 && v14 < 0.9)
      {
        v15 = *(v0 + 528);
        v16 = *(v0 + 520);
        v17 = *(v0 + 512);
        sub_1000077D8(*(v0 + 312), v17, &qword_100AD9468);
        if ((*(v15 + 48))(v17, 1, v16) == 1)
        {
          sub_100007840(*(v0 + 512), &qword_100AD9468);
        }

        else
        {
          v18 = *(v0 + 536);
          v19 = *(v0 + 528);
          v20 = *(v0 + 520);
          (*(v19 + 32))(v18, *(v0 + 512), v20);
          sub_1001F1160(&qword_100AD5B18);
          v21 = sub_100797B54();
          v22 = *(v21 - 8);
          v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_10080B690;
          (*(v22 + 104))(v24 + v23, enum case for DataEventTrait.onlyOnce(_:), v21);
          sub_1002A42D0(&qword_100AD94F0, &type metadata accessor for ContentSettingsData);
          sub_1002A42D0(&qword_100AD94F8, &type metadata accessor for ContentSettingsData);
          sub_100798414();

          (*(v19 + 8))(v18, v20);
        }
      }
    }
  }

  v25 = *(v0 + 504);
  v86 = *(v0 + 488);
  v89 = *(v0 + 496);
  v94 = *(v0 + 472);
  v91 = *(v0 + 480);
  v93 = *(v0 + 464);
  *(v0 + 600) = *(*(v0 + 304) + 16);
  sub_10029D148(v25);
  *(v0 + 608) = sub_1001F1160(&qword_100AD5B18);
  v26 = sub_100797B54();
  *(v0 + 616) = v26;
  v27 = *(v26 - 8);
  *(v0 + 624) = *(v27 + 72);
  v28 = *(v27 + 80);
  *(v0 + 656) = v28;
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10080B690;
  v31 = enum case for DataEventTrait.onlyOnce(_:);
  *(v0 + 660) = enum case for DataEventTrait.onlyOnce(_:);
  v32 = *(v27 + 104);
  *(v0 + 632) = v32;
  *(v0 + 640) = (v27 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v32(v30 + v29, v31, v26);
  sub_1002A42D0(&qword_100AD94A0, &type metadata accessor for ReadingSettingsData);
  sub_1002A42D0(&qword_100AD94A8, &type metadata accessor for ReadingSettingsData);
  sub_100798414();

  (*(v89 + 8))(v25, v86);
  sub_10029D5E4();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10080B690;
  v87 = v29;
  v84 = v31;
  v34 = v31;
  v35 = v32;
  v32(v33 + v29, v34, v26);
  sub_1002A42D0(&qword_100AD94B0, &type metadata accessor for ReadingSessionData);
  sub_1002A42D0(&qword_100AD94B8, &type metadata accessor for ReadingSessionData);
  sub_100798414();

  (*(v94 + 8))(v91, v93);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(*(v0 + 304) + 112);
    ObjectType = swift_getObjectType();
    v38 = (*(v36 + 8))(ObjectType, v36);
    swift_unknownObjectRelease();
    if (v38)
    {
      v40 = *(v0 + 448);
      v39 = *(v0 + 456);
      v100 = *(v0 + 440);
      sub_1007980C4();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10080B690;
      v35(v41 + v87, v84, v26);
      sub_1002A42D0(&qword_100AD94E0, &type metadata accessor for UpSellData);
      sub_1002A42D0(&qword_100AD94E8, &type metadata accessor for UpSellData);
      sub_100798414();

      (*(v40 + 8))(v39, v100);
    }
  }

  v42 = sub_100798444();
  v43 = *(v0 + 384);
  v44 = *(v0 + 392);
  if (v42)
  {
    v45 = *(v0 + 432);
    v46 = *(v0 + 304);
    v47 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
    swift_beginAccess();
    v48 = *(v44 + 16);
    *(v0 + 648) = v48;
    v48(v45, v46 + v47, v43);
    v49 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 664;
    *(v0 + 24) = sub_10029CA34;
    v50 = swift_continuation_init();
    *(v0 + 136) = sub_1001F1160(&unk_100AD67E0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100298E88;
    *(v0 + 104) = &unk_100A12BE0;
    *(v0 + 112) = v50;
    [v49 fetchCurrentState:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v51 = *(v0 + 424);
    v52 = *(v0 + 432);

    v53 = enum case for DoNotDisturbStatus.unknown(_:);
    v54 = *(v44 + 104);
    v54(v52, enum case for DoNotDisturbStatus.unknown(_:), v43);
    v54(v51, v53, v43);
    v55 = *(v44 + 16);
    v92 = *(v0 + 632);
    v90 = *(v0 + 660);
    v88 = *(v0 + 616);
    v56 = *(v0 + 424);
    v57 = *(v0 + 400);
    v58 = *(v0 + 384);
    v95 = *(v0 + 352);
    v98 = *(v0 + 328);
    v101 = *(v0 + 320);
    v59 = (*(v0 + 656) + 32) & ~*(v0 + 656);
    v85 = *(v0 + 304);
    v55(*(v0 + 408), *(v0 + 432), v58);
    v55(v57, v56, v58);
    sub_100798084();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10080B690;
    v92(v60 + v59, v90, v88);
    sub_1002A42D0(&qword_100AD94C0, &type metadata accessor for DoNotDisturbData);
    sub_1002A42D0(&qword_100AD94C8, &type metadata accessor for DoNotDisturbData);
    sub_100798414();

    sub_100798484();
    sub_1002A42D0(&unk_100AD94D0, &type metadata accessor for ReadEvent);
    sub_100798434();
    v61 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
    swift_beginAccess();
    sub_1000077D8(v85 + v61, v95, &unk_100ADB5C0);
    v62 = (*(v98 + 48))(v95, 1, v101);
    v63 = *(v0 + 352);
    if (v62)
    {
      sub_100007840(*(v0 + 352), &unk_100ADB5C0);
      v64 = 0.0;
    }

    else
    {
      v66 = *(v0 + 328);
      v65 = *(v0 + 336);
      v67 = *(v0 + 320);
      (*(v66 + 16))(v65, *(v0 + 352), v67);
      sub_100007840(v63, &unk_100ADB5C0);
      sub_100796B34();
      v64 = v68;
      (*(v66 + 8))(v65, v67);
    }

    v99 = *(v0 + 424);
    v102 = *(v0 + 432);
    v69 = *(v0 + 384);
    v70 = *(v0 + 392);
    v71 = *(v0 + 368);
    v97 = *(v0 + 376);
    v96 = *(v0 + 360);
    v72 = *(v0 + 344);
    v73 = *(v0 + 304);
    v74 = *(v0 + 288);
    (*(*(v0 + 328) + 56))(v72, 1, 1, *(v0 + 320));
    swift_beginAccess();
    sub_1002391EC(v72, v85 + v61, &unk_100ADB5C0);
    swift_endAccess();
    v75 = v73[3];
    sub_10000E3E8(v73 + 4, v73[7]);
    sub_10079ECA4();
    v76 = sub_1007A2214();

    [v75 readSessionDidEnd:v76 readTime:-v64];

    sub_10000E3E8(v73 + 4, v73[7]);
    v77 = sub_10079ECA4();
    sub_1002A37AC(v77, v78);

    (*(v71 + 8))(v97, v96);
    v79 = *(v70 + 8);
    v79(v99, v69);
    v79(v102, v69);
    swift_beginAccess();
    v80 = *(v74 + 16);
    if (v80)
    {
      [v80 invalidate];
    }

    v81 = *(v0 + 288);
    swift_beginAccess();
    *(v81 + 16) = 0;
    swift_unknownObjectRelease();

    v82 = *(v0 + 8);

    return v82();
  }
}

uint64_t sub_10029CA34()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);

  return _swift_task_switch(sub_10029CB3C, v2, v1);
}

uint64_t sub_10029CB3C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);

  v5 = &enum case for DoNotDisturbStatus.on(_:);
  if (!*(v0 + 664))
  {
    v5 = &enum case for DoNotDisturbStatus.off(_:);
  }

  (*(v4 + 104))(v1, *v5, v3);
  (*(v4 + 32))(v2, v1, v3);
  v6 = *(v0 + 648);
  v7 = *(v0 + 400);
  v38 = *(v0 + 632);
  v37 = *(v0 + 660);
  v36 = *(v0 + 616);
  v35 = *(v0 + 424);
  v8 = *(v0 + 384);
  v40 = *(v0 + 352);
  v42 = *(v0 + 328);
  v44 = *(v0 + 320);
  v9 = (*(v0 + 656) + 32) & ~*(v0 + 656);
  v10 = *(v0 + 304);
  v6(*(v0 + 408), *(v0 + 432), v8);
  v6(v7, v35, v8);
  sub_100798084();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10080B690;
  v38(v11 + v9, v37, v36);
  sub_1002A42D0(&qword_100AD94C0, &type metadata accessor for DoNotDisturbData);
  sub_1002A42D0(&qword_100AD94C8, &type metadata accessor for DoNotDisturbData);
  sub_100798414();

  sub_100798484();
  sub_1002A42D0(&unk_100AD94D0, &type metadata accessor for ReadEvent);
  sub_100798434();
  v12 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
  swift_beginAccess();
  sub_1000077D8(v10 + v12, v40, &unk_100ADB5C0);
  v13 = (*(v42 + 48))(v40, 1, v44);
  v14 = *(v0 + 352);
  if (v13)
  {
    sub_100007840(*(v0 + 352), &unk_100ADB5C0);
    v15 = 0.0;
  }

  else
  {
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 320);
    (*(v17 + 16))(v16, *(v0 + 352), v18);
    sub_100007840(v14, &unk_100ADB5C0);
    sub_100796B34();
    v15 = v19;
    (*(v17 + 8))(v16, v18);
  }

  v45 = *(v0 + 432);
  v20 = *(v0 + 384);
  v21 = *(v0 + 392);
  v22 = *(v0 + 368);
  v41 = *(v0 + 376);
  v43 = *(v0 + 424);
  v39 = *(v0 + 360);
  v23 = *(v0 + 344);
  v24 = *(v0 + 304);
  v25 = *(v0 + 288);
  (*(*(v0 + 328) + 56))(v23, 1, 1, *(v0 + 320));
  swift_beginAccess();
  sub_1002391EC(v23, v10 + v12, &unk_100ADB5C0);
  swift_endAccess();
  v26 = v24[3];
  sub_10000E3E8(v24 + 4, v24[7]);
  sub_10079ECA4();
  v27 = sub_1007A2214();

  [v26 readSessionDidEnd:v27 readTime:-v15];

  sub_10000E3E8(v24 + 4, v24[7]);
  v28 = sub_10079ECA4();
  sub_1002A37AC(v28, v29);

  (*(v22 + 8))(v41, v39);
  v30 = *(v21 + 8);
  v30(v43, v20);
  v30(v45, v20);
  swift_beginAccess();
  v31 = *(v25 + 16);
  if (v31)
  {
    [v31 invalidate];
  }

  v32 = *(v0 + 288);
  swift_beginAccess();
  *(v32 + 16) = 0;
  swift_unknownObjectRelease();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10029D148@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_100798074();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007981E4();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1007980B4();
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily + 8))
  {
    v27 = *(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily);
  }

  else
  {
    v26 = v4;
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100B22F80);
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
    }

    v27 = 0;
    v4 = v26;
  }

  if (*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8))
  {
    v26 = v4;
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100B22F80);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v25 = v9;
      *v19 = 0;
      v9 = v25;
    }

    v4 = v26;
  }

  v20 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
  swift_beginAccess();
  (*(v10 + 16))(v30, v2 + v20, v28);
  v21 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v21, v29);
  v22 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v22, v3);
  v23 = [objc_opt_self() mainScreen];
  [v23 brightness];

  return sub_1007981C4();
}

uint64_t sub_10029D5E4()
{
  v1 = sub_1001F1160(&qword_100AD9558);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8);
  v9 = (!swift_unknownObjectWeakLoadStrong() || (v5 = v0[10], ObjectType = swift_getObjectType(), (*(v5 + 8))(ObjectType, v5), v8 = v7, swift_unknownObjectRelease(), (v8 & 1) != 0)) && (*(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress + 8) & 1) != 0;
  sub_10000E3E8(v0 + 4, v0[7]);
  sub_10079EC84();
  sub_1007984D4();
  sub_100798494();
  sub_100798264();
  v10 = sub_1007980D4();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  v12[12] = v4;
  v12[8] = v9;
  return sub_100798164();
}

void sub_10029D7D0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD9550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  (*(v3 + 16))(&v19 - v4, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for EventSubmitResult.success<A>(_:))
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100B22F80);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
    }

    goto LABEL_12;
  }

  if (v6 != enum case for EventSubmitResult.failed<A>(_:))
  {
LABEL_12:
    (*(v3 + 8))(v5, v2);
    return;
  }

  (*(v3 + 96))(v5, v2);
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100B22F80);
  swift_errorRetain();
  v12 = sub_10079ACC4();
  v13 = sub_1007A29B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_1007A3B84();
    v18 = sub_1000070F4(v16, v17, &v20);

    *(v14 + 4) = v18;
    sub_1000074E0(v15);
  }

  else
  {
  }
}

uint64_t sub_10029DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1007A2744();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  sub_1003457A0(0, 0, v8, &unk_1008168B0, v10);
}

uint64_t sub_10029DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1001F1160(&qword_100AD9478);
  v6[5] = swift_task_alloc();
  v7 = sub_100798104();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10029DD50, 0, 0);
}

uint64_t sub_10029DD50()
{
  sub_100798004();
  v0[9] = sub_100797FF4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10029DE00;
  v2 = v0[5];

  return EventReporter.userEmbeddingData()(v2);
}

uint64_t sub_10029DE00()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10029E334;
  }

  else
  {

    v3 = sub_10029DF1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10029DF1C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007840(v3, &qword_100AD9478);
  }

  else
  {
    v4 = v0[8];
    (*(v2 + 32))(v4, v3, v1);
    sub_1001F1160(&qword_100AD5B18);
    v5 = sub_100797B54();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10080B690;
    (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_1002A42D0(&qword_100AD9490, &type metadata accessor for UserEmbeddingData);
    sub_1002A42D0(&qword_100AD9498, &type metadata accessor for UserEmbeddingData);
    sub_100798414();

    (*(v2 + 8))(v4, v1);
  }

  v11 = (v0[3] + *v0[3]);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10029E208;

  return v11();
}

uint64_t sub_10029E208()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10029E334()
{
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100B22F80);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_1007967C4();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to attach userEmbeddingData: %@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480);
  }

  else
  {
  }

  v9 = (*(v0 + 24) + **(v0 + 24));
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_10029E208;

  return v9();
}

void sub_10029E56C(uint64_t a1)
{
  v2 = v1;
  v190 = sub_1007981D4();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v196 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1007980B4();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_100798194();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100798074();
  v207 = *(v198 - 8);
  v7 = __chkstk_darwin(v198);
  v197 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v199 = &v179 - v10;
  v11 = __chkstk_darwin(v9);
  v204 = &v179 - v12;
  v13 = __chkstk_darwin(v11);
  v203 = &v179 - v14;
  __chkstk_darwin(v13);
  v206 = &v179 - v15;
  v16 = sub_10079EF54();
  v201 = *(v16 - 8);
  v202 = v16;
  __chkstk_darwin(v16);
  v200 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100798174();
  v19 = *(v18 - 8);
  v210 = v18;
  v211 = v19;
  __chkstk_darwin(v18);
  v209 = (&v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = sub_1007981E4();
  v208 = *(v205 - 8);
  v21 = __chkstk_darwin(v205);
  v181 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v188 = &v179 - v24;
  v25 = __chkstk_darwin(v23);
  v182 = &v179 - v26;
  v27 = __chkstk_darwin(v25);
  v183 = &v179 - v28;
  v29 = __chkstk_darwin(v27);
  v191 = &v179 - v30;
  v31 = __chkstk_darwin(v29);
  v184 = &v179 - v32;
  v33 = __chkstk_darwin(v31);
  v192 = &v179 - v34;
  __chkstk_darwin(v33);
  v36 = &v179 - v35;
  v37 = sub_10079FFF4();
  __chkstk_darwin(v37);
  v39 = &v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1001F1160(&qword_100AD9470);
  __chkstk_darwin(v40 - 8);
  v42 = &v179 - v41;
  v43 = sub_100797D84();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1002A4318(a1, &type metadata accessor for AnalyticsEvent.Reading, &type metadata accessor for AnalyticsEvent.Reading, AnalyticsEvent.Reading.description.getter);
  sub_10029AE1C(v42);
  v48 = v44;
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_100007840(v42, &qword_100AD9470);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v2 + 96);
      ObjectType = swift_getObjectType();
      if ((*(v49 + 16))(ObjectType, v49))
      {
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v51 = sub_10079ACE4();
        sub_100008B98(v51, qword_100B22F80);
        v52 = sub_10079ACC4();
        v53 = sub_1007A29B4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Failed to get necessary data to submit event", v54, 2u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  (*(v44 + 32))(v46, v42, v43);
  sub_1002A2658(v47, v39, &type metadata accessor for AnalyticsEvent.Reading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v46;
  if (EnumCaseMultiPayload > 3)
  {
    v57 = v2;
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v73 = *v39;
        v74 = v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize;
        if ((*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8) & 1) != 0 || *v74 != v73)
        {
          *v74 = v73;
          *(v74 + 8) = 0;
          sub_100798004();
          v58 = v48;
          v59 = sub_100797FF4();
          v60 = v209;
          sub_10029D5E4();
          sub_100797F14();
LABEL_54:

          (*(v211 + 8))(v60, v210);
          (*(v58 + 8))(v56, v43);
          return;
        }

        v75 = v48;
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v76 = sub_10079ACE4();
        sub_100008B98(v76, qword_100B22F80);

        v77 = sub_10079ACC4();
        v78 = sub_1007A2994();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v212 = v80;
          *v79 = 136315394;
          v81 = *(v74 + 8);
          v216 = *v74;
          LOBYTE(v217) = v81;
          sub_1001F1160(&qword_100AD4F60);
          v82 = sub_1007A22E4();
          v84 = sub_1000070F4(v82, v83, &v212);

          *(v79 + 4) = v84;
          *(v79 + 12) = 2048;
          *(v79 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v77, v78, "lastFontSize %s == fontSize %f", v79, 0x16u);
          sub_1000074E0(v80);
        }

LABEL_40:
        (*(v75 + 8))(v56, v43);
        return;
      }

      v88 = v48;
      v96 = sub_1007A2BB4();
      v97 = v194;
      v98 = &enum case for ScrollViewStatus.on(_:);
      if ((v96 & 1) == 0)
      {
        v98 = &enum case for ScrollViewStatus.off(_:);
      }

      v99 = v193;
      v100 = v195;
      (*(v194 + 104))(v193, *v98, v195);
      v101 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
      swift_beginAccess();
      (*(v97 + 40))(v57 + v101, v99, v100);
      swift_endAccess();
      if ((*(v57 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8) & 1) == 0)
      {
        sub_100798004();
        v141 = sub_100797FF4();
        v142 = v209;
        sub_10029D5E4();
        sub_1007A2BB4();
        sub_100797F64();

        (*(v211 + 8))(v142, v210);
LABEL_72:
        (v88)[1](v56, v43);
        return;
      }

      if (qword_100AD1390 == -1)
      {
LABEL_50:
        v102 = sub_10079ACE4();
        sub_100008B98(v102, qword_100B22F80);
        v103 = sub_10079ACC4();
        v104 = sub_1007A2994();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&_mh_execute_header, v103, v104, "layoutChanged but event cannot be sent due to missing lastFontSize", v105, 2u);
        }

        goto LABEL_72;
      }

LABEL_114:
      swift_once();
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload != 6)
    {
      v58 = v48;
      if (EnumCaseMultiPayload == 7)
      {
        sub_100798004();
        v59 = sub_100797FF4();
        v60 = v209;
        sub_10029D5E4();
        sub_100797F34();
      }

      else
      {
        sub_100798004();
        v59 = sub_100797FF4();
        v60 = v209;
        sub_10029D5E4();
        sub_100797F74();
      }

      goto LABEL_54;
    }

    v75 = v48;
    v85 = *v39;
    v86 = *(v39 + 1);
    v87 = *(v39 + 2);
    sub_100798004();
    v88 = sub_100797FF4();
    v89 = v196;
    sub_10029D148(v196);
    if (v85 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v86 <= 0x7FFFFFFF)
    {
      if (v85 >= 0xFFFFFFFF80000000 && v86 >= 0xFFFFFFFF80000000 && v87 >= 0xFFFFFFFF80000000)
      {
        if (v87 <= 0x7FFFFFFF)
        {
          sub_100797F94();

          (*(v189 + 8))(v89, v190);
          goto LABEL_40;
        }

        goto LABEL_113;
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    __break(1u);
    goto LABEL_112;
  }

  v61 = v2;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v48 + 8))(v56, v43);
      return;
    }

    v71 = *v39;
    v70 = *(v39 + 1);
    v72 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v72 = *v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v72)
    {
    }

    else
    {

      v70 = 0xE800000000000000;
      v71 = 1.17364461e214;
    }

    v180 = v56;
    v143 = (v61 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily);
    v144 = *(v61 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily + 8);
    if (v144)
    {
      v145 = v48;
      if (*v143 == *&v71 && v144 == v70)
      {

LABEL_80:
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v147 = sub_10079ACE4();
        sub_100008B98(v147, qword_100B22F80);

        v148 = sub_10079ACC4();
        v149 = sub_1007A2994();

        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          *v150 = 136315394;
          v151 = *(v143 + 1);
          v216 = *v143;
          v217 = v151;

          sub_1001F1160(&qword_100AD4F30);
          v152 = sub_1007A22E4();
          v154 = sub_1000070F4(v152, v153, &v212);

          *(v150 + 4) = v154;
          *(v150 + 12) = 2080;
          v155 = sub_1000070F4(*&v71, v70, &v212);

          *(v150 + 14) = v155;
          _os_log_impl(&_mh_execute_header, v148, v149, "lastFontFamily %s == font %s", v150, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v145 + 8))(v180, v43);
        return;
      }

      v146 = sub_1007A3AB4();

      if (v146)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v145 = v48;
    }

    *v143 = v71;
    *(v143 + 1) = v70;

    sub_100798004();
    v156 = sub_100797FF4();
    v157 = v209;
    sub_10029D5E4();
    v158 = v180;
    sub_100797EA4();

    (*(v211 + 8))(v157, v210);
    (*(v145 + 8))(v158, v43);
    return;
  }

  v196 = v48;
  v179 = v43;
  v180 = v56;
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v203) = *v39;
    v62 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
    swift_beginAccess();
    v63 = v208;
    v64 = *(v208 + 16);
    v207 = v62;
    v65 = v61 + v62;
    v66 = v205;
    v201 = v64;
    v202 = v208 + 16;
    (v64)(v36, v65, v205);
    v67 = *(v63 + 104);
    v68 = v192;
    v206 = (v63 + 104);
    v204 = v67;
    (v67)(v192, enum case for AutoNightThemeStatus.unknown(_:), v66);
    sub_1002A42D0(qword_100AD95D0, &type metadata accessor for AutoNightThemeStatus);
    sub_1007A2574();
    sub_1007A2574();
    if (v212 == v214 && v213 == v215)
    {
      v69 = 1;
    }

    else
    {
      v69 = sub_1007A3AB4();
    }

    v106 = *(v208 + 8);
    v107 = v205;
    v106(v68, v205);
    v106(v36, v107);

    if (v69)
    {
      if (v203)
      {
        v108 = &enum case for AutoNightThemeStatus.on(_:);
      }

      else
      {
        v108 = &enum case for AutoNightThemeStatus.off(_:);
      }

      v138 = *v108;
      v107 = v205;
      v139 = v180;
      goto LABEL_92;
    }

    v137 = v184;
    (v201)(v184, v61 + v207, v107);
    v138 = enum case for AutoNightThemeStatus.on(_:);
    (v204)(v191, enum case for AutoNightThemeStatus.on(_:), v107);
    sub_1007A2574();
    sub_1007A2574();
    if (v212 == v214 && v213 == v215)
    {
      v106(v191, v107);
      v106(v137, v107);

      v139 = v180;
      v140 = v203;
      if (v203)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v159 = sub_1007A3AB4();
      v106(v191, v107);
      v106(v137, v107);

      v160 = v159 & v203;
      v140 = v203;
      v139 = v180;
      if (v160)
      {
        goto LABEL_92;
      }
    }

    (v201)(v183, v61 + v207, v107);
    v138 = enum case for AutoNightThemeStatus.off(_:);
    (v204)(v182, enum case for AutoNightThemeStatus.off(_:), v107);
    sub_1007A2574();
    sub_1007A2574();
    if (v212 == v214 && v213 == v215)
    {
      v106(v182, v107);
      v106(v183, v107);

      if (v140)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v165 = sub_1007A3AB4();
      v106(v182, v107);
      v106(v183, v107);

      if (v140 & 1 | ((v165 & 1) == 0))
      {
LABEL_96:
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v166 = sub_10079ACE4();
        sub_100008B98(v166, qword_100B22F80);

        v167 = sub_10079ACC4();
        v168 = sub_1007A2994();

        v169 = os_log_type_enabled(v167, v168);
        v170 = v179;
        if (v169)
        {
          v171 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          *v171 = 136315394;
          (v201)(v181, v61 + v207, v205);
          v172 = sub_1007A22E4();
          v174 = v140;
          v175 = sub_1000070F4(v172, v173, &v212);

          *(v171 + 4) = v175;
          *(v171 + 12) = 2080;
          if (v174)
          {
            v176 = 1702195828;
          }

          else
          {
            v176 = 0x65736C6166;
          }

          if (v174)
          {
            v177 = 0xE400000000000000;
          }

          else
          {
            v177 = 0xE500000000000000;
          }

          v178 = sub_1000070F4(v176, v177, &v212);

          *(v171 + 14) = v178;
          _os_log_impl(&_mh_execute_header, v167, v168, "autoNightState %s == enabled %s", v171, 0x16u);
          swift_arrayDestroy();
        }

        (*(v196 + 8))(v139, v170);
        return;
      }
    }

LABEL_92:
    v161 = v188;
    (v204)(v188, v138, v107);
    v162 = v207;
    swift_beginAccess();
    (*(v208 + 40))(v61 + v162, v161, v107);
    swift_endAccess();
    sub_100798004();
    v163 = sub_100797FF4();
    v164 = v209;
    sub_10029D5E4();
    sub_100797F54();

    (*(v211 + 8))(v164, v210);
    (*(v196 + 8))(v139, v179);
    return;
  }

  v201[4](v200, v39, v202);
  v90 = sub_10079EF44();
  v91 = v207;
  v92 = *(v207 + 104);
  v93 = v198;
  v92(v206, **(&off_100A12CC0 + v90), v198);
  v94 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  swift_beginAccess();
  v208 = *(v91 + 16);
  (v208)(v203, v2 + v94, v93);
  v92(v204, enum case for BackgroundColor.unknown(_:), v93);
  sub_1002A42D0(&qword_100AD95C8, &type metadata accessor for BackgroundColor);
  sub_1007A2574();
  sub_1007A2574();
  if (v212 == v214 && v213 == v215)
  {
    v95 = 1;
  }

  else
  {
    v95 = sub_1007A3AB4();
  }

  v109 = v197;
  v110 = *(v207 + 8);
  v110(v204, v93);
  v110(v203, v93);

  if ((v95 & 1) != 0 || (v111 = v199, (v208)(v199, v61 + v94, v93), sub_1002A42D0(&qword_100AD95B8, &type metadata accessor for BackgroundColor), v112 = sub_1007A2124(), v110(v111, v93), (v112 & 1) == 0))
  {
    swift_beginAccess();
    v131 = v206;
    (*(v207 + 24))(v61 + v94, v206, v93);
    swift_endAccess();
    sub_100798004();
    v132 = sub_100797FF4();
    v133 = v93;
    v134 = v209;
    sub_10029D5E4();
    (v208)(v199, v131, v133);
    v135 = v185;
    sub_100798184();
    v136 = v180;
    sub_100797F44();

    (*(v186 + 8))(v135, v187);
    (*(v211 + 8))(v134, v210);
    v110(v131, v133);
    (v201[1])(v200, v202);
    (*(v196 + 8))(v136, v179);
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v113 = sub_10079ACE4();
    sub_100008B98(v113, qword_100B22F80);
    v114 = v206;
    (v208)(v109, v206, v93);

    v115 = sub_10079ACC4();
    v116 = sub_1007A2994();

    LODWORD(v211) = v116;
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v209 = v115;
      v118 = v117;
      v210 = swift_slowAlloc();
      v212 = v210;
      *v118 = 136315394;
      v119 = v208;
      v120 = v109;
      v121 = v199;
      (v208)(v199, v61 + v94, v93);
      v122 = sub_1007A22E4();
      v124 = sub_1000070F4(v122, v123, &v212);

      *(v118 + 4) = v124;
      *(v118 + 12) = 2080;
      v119(v121, v120, v93);
      v125 = sub_1007A22E4();
      v127 = v126;
      v110(v120, v93);
      v128 = sub_1000070F4(v125, v127, &v212);

      *(v118 + 14) = v128;
      v129 = v209;
      _os_log_impl(&_mh_execute_header, v209, v211, "backgroundColor %s == backgroundColor %s", v118, 0x16u);
      swift_arrayDestroy();

      v130 = v206;
    }

    else
    {

      v110(v109, v93);
      v130 = v114;
    }

    v110(v130, v93);
    (v201[1])(v200, v202);
    (*(v196 + 8))(v180, v179);
  }
}

void sub_1002A0364(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v150 = a6;
  v145 = a5;
  v146 = a2;
  v148 = a3;
  v149 = a4;
  LODWORD(v143) = a1;
  v8 = a1;
  v9 = sub_100798074();
  isa = v9[-1].isa;
  v10 = __chkstk_darwin(v9);
  v142 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v138 = &v129 - v13;
  v14 = __chkstk_darwin(v12);
  v141 = &v129 - v15;
  __chkstk_darwin(v14);
  v144 = &v129 - v16;
  v17 = sub_1001F1160(&qword_100AD95B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v129 - v18;
  v20 = sub_10079EF54();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v139 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v140 = &v129 - v25;
  __chkstk_darwin(v24);
  v151 = &v129 - v26;
  v27 = sub_1007980B4();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v30 = __chkstk_darwin(v29);
  v32 = &v129 - v31;
  __chkstk_darwin(v30);
  v35 = &v129 - v34;
  v152 = v21;
  v153 = v20;
  if (v8 != 2)
  {
    v133 = v19;
    v136 = v33;
    v137 = v9;
    v36 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
    swift_beginAccess();
    v132 = *(v28 + 16);
    (v132)(v35, &v7[v36], v27);
    v37 = *(v28 + 104);
    v135 = v28 + 104;
    v134 = v37;
    v37(v32, enum case for ScrollViewStatus.unknown(_:), v27);
    sub_1002A42D0(&qword_100AD95C0, &type metadata accessor for ScrollViewStatus);
    v38 = sub_1007A2124();
    v39 = *(v28 + 8);
    v39(v32, v27);
    v131 = v39;
    v39(v35, v27);
    if ((v38 & 1) == 0)
    {
      if (qword_100AD1390 != -1)
      {
        swift_once();
      }

      v40 = sub_10079ACE4();
      sub_100008B98(v40, qword_100B22F80);

      v41 = sub_10079ACC4();
      v42 = sub_1007A29B4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v156 = v130;
        *v43 = 136315394;
        (v132)(v35, &v7[v36], v27);
        v132 = v41;
        v44 = sub_1007980A4();
        v46 = v45;
        v131(v35, v27);
        v47 = sub_1000070F4(v44, v46, &v156);

        *(v43 + 4) = v47;
        *(v43 + 12) = 1024;
        *(v43 + 14) = v143 & 1;
        v48 = v42;
        v49 = v132;
        sub_1000074E0(v130);
      }

      else
      {
      }
    }

    v50 = &enum case for ScrollViewStatus.on(_:);
    if ((v143 & 1) == 0)
    {
      v50 = &enum case for ScrollViewStatus.off(_:);
    }

    v51 = v136;
    v134(v136, *v50, v27);
    swift_beginAccess();
    (*(v28 + 40))(&v7[v36], v51, v27);
    swift_endAccess();
    v21 = v152;
    v20 = v153;
    v9 = v137;
    v19 = v133;
  }

  sub_1000077D8(v146, v19, &qword_100AD95B0);
  v52 = &unk_100AD9000;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100007840(v19, &qword_100AD95B0);
    goto LABEL_21;
  }

  (*(v21 + 32))(v151, v19, v20);
  v53 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  v143 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  swift_beginAccess();
  v54 = isa;
  v55 = v144;
  v137 = *(isa + 2);
  (v137)(v144, &v7[v53], v9);
  v56 = *(v54 + 13);
  v146 = v54 + 104;
  v57 = v141;
  v56(v141, enum case for BackgroundColor.unknown(_:), v9);
  sub_1002A42D0(&qword_100AD95B8, &type metadata accessor for BackgroundColor);
  LOBYTE(v53) = sub_1007A2124();
  v58 = *(v54 + 1);
  v58(v57, v9);
  v58(v55, v9);
  if ((v53 & 1) == 0)
  {
    v136 = v58;
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v59 = sub_10079ACE4();
    sub_100008B98(v59, qword_100B22F80);
    v60 = v140;
    v61 = v153;
    (*(v152 + 16))(v140, v151, v153);

    v62 = sub_10079ACC4();
    v63 = sub_1007A29B4();

    LODWORD(v135) = v63;
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v141 = v7;
      v65 = v64;
      v154 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = v144;
      (v137)(v144, &v141[v143], v9);
      v137 = v62;
      v67 = sub_100798064();
      v69 = v68;
      v70 = v136;
      v136(v66, v9);
      v71 = sub_1000070F4(v67, v69, &v154);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = sub_10079EF44();
      v73 = v138;
      v56(v138, **(&off_100A12CC0 + v72), v9);
      v74 = sub_100798064();
      v76 = v75;
      v70(v73, v9);
      (*(v152 + 8))(v60, v153);
      v77 = sub_1000070F4(v74, v76, &v154);

      *(v65 + 14) = v77;
      v78 = v137;
      swift_arrayDestroy();

      v7 = v141;
    }

    else
    {

      (*(v152 + 8))(v60, v61);
    }
  }

  v79 = v151;
  v80 = sub_10079EF44();
  v81 = v142;
  v56(v142, **(&off_100A12CC0 + v80), v9);
  v82 = v143;
  swift_beginAccess();
  (*(isa + 5))(&v7[v82], v81, v9);
  swift_endAccess();
  v52 = &unk_100AD9000;
  v83 = &v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily];
  if (*&v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily + 8])
  {
    (*(v152 + 8))(v79, v153);
LABEL_21:
    v84 = v149;
    v85 = v148;
    if (!v149)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v111 = v7;
  v113 = v152;
  v112 = v153;
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v114 = sub_10079ACE4();
  sub_100008B98(v114, qword_100B22F80);
  v115 = v139;
  (*(v113 + 16))(v139, v79, v112);
  v116 = sub_10079ACC4();
  v117 = sub_1007A29A4();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v154 = v119;
    *v118 = 136315138;
    v120 = sub_10079ED34();
    v121 = v115;
    v123 = v122;
    v124 = *(v113 + 8);
    v124(v121, v153);
    v125 = sub_1000070F4(v120, v123, &v154);

    *(v118 + 4) = v125;
    sub_1000074E0(v119);
    v112 = v153;

    v79 = v151;
  }

  else
  {

    v124 = *(v113 + 8);
    v124(v115, v112);
  }

  v126 = sub_10079ED34();
  v128 = v127;
  v124(v79, v112);
  *v83 = v126;
  v83[1] = v128;

  v7 = v111;
  v84 = v149;
  v52 = &unk_100AD9000;
  v85 = v148;
  if (v149)
  {
LABEL_22:
    v86 = &v7[v52[44]];
    v87 = v86[1];
    if (v87 && (*v86 != v85 || v87 != v84) && (sub_1007A3AB4() & 1) == 0)
    {
      if (qword_100AD1390 != -1)
      {
        swift_once();
      }

      v88 = sub_10079ACE4();
      sub_100008B98(v88, qword_100B22F80);

      v89 = sub_10079ACC4();
      v90 = sub_1007A29B4();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v141 = v7;
        v157 = v92;
        *v91 = 136315394;
        v93 = v86[1];
        v154 = *v86;
        v155 = v93;

        sub_1001F1160(&qword_100AD4F30);
        v94 = sub_1007A22E4();
        v96 = v52;
        v97 = sub_1000070F4(v94, v95, &v157);

        *(v91 + 4) = v97;
        v52 = v96;
        *(v91 + 12) = 2080;
        *(v91 + 14) = sub_1000070F4(v85, v84, &v157);
        swift_arrayDestroy();
        v7 = v141;
      }
    }

    *v86 = v85;
    v86[1] = v84;
  }

LABEL_32:
  v98 = &v7[v52[44]];
  v99 = *(v98 + 1);
  if (!v99)
  {
    goto LABEL_36;
  }

  v100 = *v98 & 0xFFFFFFFFFFFFLL;
  if ((v99 & 0x2000000000000000) != 0)
  {
    v100 = HIBYTE(v99) & 0xF;
  }

  if (!v100)
  {
LABEL_36:
    *v98 = xmmword_100816640;
  }

  if ((v150 & 1) == 0)
  {
    v101 = &v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize];
    if ((v7[OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8] & 1) == 0)
    {
      if (qword_100AD1390 != -1)
      {
        swift_once();
      }

      v102 = sub_10079ACE4();
      sub_100008B98(v102, qword_100B22F80);

      v103 = sub_10079ACC4();
      v104 = sub_1007A29B4();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v157 = v106;
        *v105 = 136315394;
        v107 = v101[8];
        v154 = *v101;
        LOBYTE(v155) = v107;
        sub_1001F1160(&qword_100AD4F60);
        v108 = sub_1007A22E4();
        v110 = sub_1000070F4(v108, v109, &v157);

        *(v105 + 4) = v110;
        *(v105 + 12) = 2048;
        *(v105 + 14) = v145;
        sub_1000074E0(v106);
      }
    }

    *v101 = v145;
    v101[8] = 0;
  }
}