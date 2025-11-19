uint64_t sub_1003DBA30@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v48 = sub_10022C350(&qword_100CB5060);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = v40 - v5;
  v6 = type metadata accessor for MoonScrubberHeaderView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10022C350(&qword_100CB5068);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = v40 - v12;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = sub_100857ECC();
  v40[1] = v13;
  swift_endAccess();
  v14 = a1[1];
  v15 = a1[2];
  v53 = *a1;
  v54 = v14;
  v55 = v15;
  v41 = sub_10022C350(&qword_100CB5070);
  Binding.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v13;
  v54 = v59;
  LOBYTE(v55) = v60;
  v56 = v61;
  v57 = v62;
  v58 = v63;
  sub_1003DE5F8(a1, v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v40[3] = v8;
  sub_1003DE65C(v9, v17 + v16);
  v40[2] = sub_10022C350(&qword_100CA50E8);
  v18 = sub_10022C350(&qword_100CA4680);
  sub_10026F004();
  v19 = type metadata accessor for EmptyVisualEffect();
  v20 = sub_1003DEFB4(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v64 = v19;
  v65 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  swift_beginAccess();
  v22 = sub_100857ECC();
  swift_endAccess();
  v23 = a1[4];
  v24 = a1[5];
  v53 = a1[3];
  v54 = v23;
  v55 = v24;
  Binding.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v22;
  v54 = v64;
  LOBYTE(v55) = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  sub_1003DE5F8(a1, v9);
  v25 = swift_allocObject();
  sub_1003DE65C(v9, v25 + v16);
  sub_10022C350(&qword_100CA4670);
  v51 = v18;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v49;
  View.visualEffect<A>(_:)();

  v27 = v43;
  v28 = *(v43 + 16);
  v29 = v42;
  v30 = v44;
  v28(v42, v50, v44);
  v31 = v47;
  v41 = *(v47 + 16);
  v32 = v45;
  v33 = v26;
  v34 = v48;
  v41(v45, v33, v48);
  v35 = v46;
  v28(v46, v29, v30);
  v36 = sub_10022C350(&qword_100CB5078);
  v41(&v35[*(v36 + 48)], v32, v34);
  v37 = *(v31 + 8);
  v37(v49, v34);
  v38 = *(v27 + 8);
  v38(v50, v30);
  v37(v32, v34);
  return (v38)(v29, v30);
}

double sub_1003DC124(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v11 = type metadata accessor for MoonScrubberHeaderView();
  v12 = 0.0;
  if (*(v5 + *(v11 + 32)) == 1)
  {
    v13 = v11;
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    MinY = CGRectGetMinY(v20);
    v15 = *(v5 + v13[9]);
    if (MinY < v15 + a5)
    {
      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      v16 = a5 - (CGRectGetMinY(v21) - v15);
      v12 = v16 + 0.0;
      v17 = *(v5 + v13[10]);
      if (v16 >= v17)
      {
        v18 = v12 - *(v5 + v13[11]);
        if (v18 >= 0.0)
        {
          return v17 + v18;
        }

        else
        {
          return *(v5 + v13[10]);
        }
      }
    }
  }

  return v12;
}

double sub_1003DC214(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v11 = type metadata accessor for MoonScrubberHeaderView();
  v12 = 1.0;
  if (*(v5 + *(v11 + 32)) == 1)
  {
    v13 = v11;
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    MinY = CGRectGetMinY(v23);
    v15 = *(v5 + v13[9]);
    if (MinY < v15 + a5)
    {
      v24.origin.x = a1;
      v24.origin.y = a2;
      v24.size.width = a3;
      v24.size.height = a4;
      v16 = CGRectGetMinY(v24) - v15;
      v17 = *(v5 + v13[10]);
      v18 = *(v5 + v13[11]) - v17;
      v19 = v17 + v18 * 0.33;
      v20 = a5 - v16 + 0.0 - v19;
      if (v20 > 0.0)
      {
        v21 = 1.0 - v20 / (v17 + v18 * 0.67 - v19);
        if (v21 < 0.0)
        {
          return 0.0;
        }

        else
        {
          return v21;
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1003DC328@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v72 = sub_10022C350(&qword_100CB5080) - 8;
  __chkstk_darwin(v72);
  v75 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = (v62 - v5);
  v6 = type metadata accessor for MoonScrubberHeaderView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62[1] = v9;
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10022C350(&qword_100CB5088);
  v87 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v62 - v11;
  v80 = sub_10022C350(&qword_100CB5090);
  __chkstk_darwin(v80);
  v67 = v62 - v12;
  v74 = sub_10022C350(&qword_100CB5098);
  v86 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = v62 - v15;
  __chkstk_darwin(v16);
  v84 = v62 - v17;
  __chkstk_darwin(v18);
  v88 = v62 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v89 = Text.init(_:tableName:bundle:comment:)();
  v81 = v20;
  v82 = v21;
  v83 = v22;
  v62[0] = v10;
  sub_1003DE5F8(a1, v10);
  v79 = *(v8 + 80);
  v23 = (v79 + 16) & ~v79;
  v24 = swift_allocObject();
  sub_1003DE65C(v10, v24 + v23);
  v91 = 0xD000000000000015;
  v92 = 0x8000000100AC5BD0;
  v93 = sub_1003DF008;
  v94 = v24;
  v25 = a1 + *(v7 + 36);
  v63 = a1;
  v71 = *(v25 + *(type metadata accessor for MoonScrubberHeaderViewModel(0) + 40));
  v26 = sub_1003DE708();
  v27 = v77;
  v28 = v26;
  v70 = v26;
  View.isHidden(_:defaultAccessibilityHidden:)();

  v91 = &type metadata for HeaderButton;
  v92 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v67;
  v30 = v78;
  View.accessibilityLabel(_:)();
  v31 = *(v87 + 8);
  v87 += 8;
  v68 = v31;
  v31(v27, v30);
  v32 = v62[0];
  sub_1003DE5F8(a1, v62[0]);
  v33 = swift_allocObject();
  sub_1003DE65C(v32, v33 + v23);
  v65 = sub_10022C350(&qword_100CA4670);
  v64 = sub_1003DE75C();
  v34 = sub_10022E824(&qword_100CA4680);
  v35 = type metadata accessor for EmptyVisualEffect();
  v36 = sub_1003DEFB4(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v91 = v35;
  v92 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v91 = v34;
  v92 = v37;
  v66 = swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  v38 = v29;
  sub_1000180EC(v29, &qword_100CB5090);
  v39 = static HorizontalAlignment.center.getter();
  v40 = v90;
  *v90 = v39;
  v40[1] = 0;
  *(v40 + 16) = 0;
  v41 = v40;
  v42 = v40 + *(sub_10022C350(&qword_100CB50B0) + 44);
  v43 = v63;
  sub_1003DCD3C(v63, v42);
  KeyPath = swift_getKeyPath();
  v45 = v41 + *(v72 + 44);
  *v45 = KeyPath;
  v45[8] = 1;
  sub_1003DE5F8(v43, v32);
  v46 = swift_allocObject();
  sub_1003DE65C(v32, v46 + v23);
  v91 = 0xD000000000000014;
  v92 = 0x8000000100AC5BF0;
  v93 = sub_1003DE844;
  v94 = v46;
  v47 = v77;
  View.isHidden(_:defaultAccessibilityHidden:)();

  v48 = v78;
  View.accessibilityLabel(_:)();
  v68(v47, v48);
  sub_1003DE5F8(v43, v32);
  v49 = swift_allocObject();
  sub_1003DE65C(v32, v49 + v23);
  v50 = v84;
  View.visualEffect<A>(_:)();

  sub_1000180EC(v38, &qword_100CB5090);
  v51 = v85;
  v52 = *(v86 + 16);
  v53 = v74;
  v52(v85, v88, v74);
  v54 = v75;
  sub_100035AD0(v90, v75, &qword_100CB5080);
  v55 = v73;
  v52(v73, v50, v53);
  v56 = v76;
  v52(v76, v51, v53);
  v57 = sub_10022C350(&qword_100CB50B8);
  v58 = &v56[v57[12]];
  *v58 = 0x4024000000000000;
  v58[8] = 0;
  sub_100035AD0(v54, &v56[v57[16]], &qword_100CB5080);
  v59 = &v56[v57[20]];
  *v59 = 0x4024000000000000;
  v59[8] = 0;
  v52(&v56[v57[24]], v55, v53);
  sub_10010CD64(v89, v81, v82 & 1);

  v60 = *(v86 + 8);
  v60(v84, v53);
  sub_1000180EC(v90, &qword_100CB5080);
  v60(v88, v53);
  v60(v55, v53);
  sub_1000180EC(v54, &qword_100CB5080);
  return (v60)(v85, v53);
}

uint64_t sub_1003DCD3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v62 = sub_10022C350(&qword_100CB50C0);
  v68 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = v52 - v5;
  v6 = type metadata accessor for MoonScrubberHeaderView();
  v7 = v6 - 8;
  v59 = *(v6 - 8);
  v64 = *(v59 + 64);
  __chkstk_darwin(v6);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CB50C8);
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v65 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = v52 - v15;
  v16 = (a1 + *(v7 + 36));
  v17 = v16[1];
  __src[0] = *v16;
  __src[1] = v17;
  sub_10002D5A4();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v10 + 8))(v12, v9);
  v23 = Text.font(_:)();
  v53 = v23;
  v52[0] = v24;
  LODWORD(OpaqueTypeConformance2) = v25;
  v27 = v26;
  v55 = v26;

  sub_10010CD64(v18, v20, v22 & 1);

  v54 = a1;
  v28 = v57;
  sub_1003DE5F8(a1, v57);
  v29 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v56 = *(v59 + 80);
  v30 = swift_allocObject();
  sub_1003DE65C(v28, v30 + v29);
  v31 = OpaqueTypeConformance2 & 1;
  v71[120] = OpaqueTypeConformance2 & 1;
  __src[0] = v23;
  v32 = v52[0];
  __src[1] = v52[0];
  LOBYTE(__src[2]) = OpaqueTypeConformance2 & 1;
  __src[3] = v27;
  __src[4] = sub_1003DF00C;
  __src[5] = 0;
  __src[6] = sub_1003DE910;
  __src[7] = v30;
  __src[8] = 0x3FF0000000000000;
  sub_1003DE5F8(a1, v28);
  v33 = swift_allocObject();
  sub_1003DE65C(v28, v33 + v29);
  v52[1] = sub_10022C350(&qword_100CB50D0);
  v59 = sub_10022C350(&qword_100CA4680);
  sub_1003DE928();
  v34 = type metadata accessor for EmptyVisualEffect();
  v35 = sub_1003DEFB4(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v70[0] = v34;
  v70[1] = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_10010CD64(v53, v32, v31);

  LOBYTE(v34) = static Axis.Set.horizontal.getter();
  v36 = v54;
  sub_1003DD6CC(v54, __src);
  memcpy(v72, __src, 0x69uLL);
  memcpy(v73, __src, sizeof(v73));
  sub_1003DEA98(v72, v70);
  sub_1000180EC(v73, &qword_100CB5100);
  memcpy(&v71[7], v72, 0x69uLL);
  sub_1003DE5F8(v36, v28);
  v37 = swift_allocObject();
  sub_1003DE65C(v28, v37 + v29);
  LOBYTE(v70[0]) = v34;
  memcpy(v70 + 1, v71, 0x70uLL);
  *(&v70[14] + 1) = *v74;
  HIDWORD(v70[14]) = *&v74[3];
  v70[15] = sub_1003DF00C;
  v70[16] = 0;
  v70[17] = sub_1003DEB08;
  v70[18] = v37;
  sub_1003DE5F8(v36, v28);
  v38 = swift_allocObject();
  sub_1003DE65C(v28, v38 + v29);
  sub_10022C350(&qword_100CB5108);
  sub_10022C350(&qword_100CA4670);
  sub_1003DEC30();
  __src[0] = v59;
  __src[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v66;
  View.visualEffect<A>(_:)();

  memcpy(__src, v70, 0x98uLL);
  sub_1000180EC(__src, &qword_100CB5108);
  v40 = *(v67 + 16);
  v41 = v65;
  v42 = v60;
  v40(v65, v69, v60);
  v43 = *(v68 + 16);
  v45 = v61;
  v44 = v62;
  v43(v61, v39, v62);
  v46 = v43;
  v47 = v63;
  v40(v63, v41, v42);
  v48 = sub_10022C350(&qword_100CB5128);
  v46(&v47[*(v48 + 48)], v45, v44);
  v49 = *(v68 + 8);
  v49(v66, v44);
  v50 = *(v67 + 8);
  v50(v69, v42);
  v49(v45, v44);
  return (v50)(v65, v42);
}

uint64_t sub_1003DD58C()
{
  sub_1003DB164();
  sub_10022C350(&qword_100CB5070);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1003DD620()
{
  type metadata accessor for MoonScrubberHeaderView();
  GeometryProxy.frame(in:)();
  sub_1003DC124(v0, v1, v2, v3, 0.0);
  type metadata accessor for EmptyVisualEffect();
  sub_10001EB80();
  sub_1003DEFB4(v4, v5);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_1003DD6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for MoonScrubberHeaderView() + 28);
  v9 = *(v8 + 24);
  v73 = *(v8 + 16);
  v74 = v9;
  v10 = sub_10002D5A4();

  v62 = v10;
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v16 = *(v5 + 104);
  v60 = enum case for Font.TextStyle.body(_:);
  v58 = v16;
  v59 = v5 + 104;
  v16(v7);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v17 = *(v5 + 8);
  v64 = v5 + 8;
  v65 = v4;
  v57 = v17;
  v17(v7, v4);
  v55 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  KeyPath = v22;

  sub_10010CD64(v11, v13, v15 & 1);

  v56 = *(v8 + 48);
  if (v56 == 1)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v23 = v55;
  v24 = Text.foregroundColor(_:)();
  v66 = v25;
  v67 = v24;
  v61 = v26;
  v68 = v27;

  sub_10010CD64(v23, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v28 = *(v8 + 40);
  v73 = *(v8 + 32);
  v74 = v28;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  v34 = v65;
  v58(v7, v60, v65);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v57(v7, v34);
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;

  sub_10010CD64(v29, v31, v33 & 1);

  if (v56)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v40 = Text.foregroundColor(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_10010CD64(v35, v37, v39 & 1);

  v47 = swift_getKeyPath();
  v48 = v61 & 1;
  LOBYTE(v73) = v61 & 1;
  v72 = v61 & 1;
  v71 = 0;
  v49 = v44 & 1;
  v70 = v44 & 1;
  v69 = 0;
  v50 = v44 & 1;
  v52 = v66;
  v51 = v67;
  *a2 = v67;
  *(a2 + 8) = v52;
  *(a2 + 16) = v48;
  v53 = KeyPath;
  *(a2 + 24) = v68;
  *(a2 + 32) = v53;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v40;
  *(a2 + 64) = v42;
  *(a2 + 72) = v50;
  *(a2 + 80) = v46;
  *(a2 + 88) = v47;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  sub_10010CD54(v51, v52, v48);

  sub_10010CD54(v40, v42, v49);

  sub_10010CD64(v40, v42, v49);

  sub_10010CD64(v51, v52, v73);
}

uint64_t sub_1003DDB84()
{
  sub_10022C350(&qword_100CA4680);
  sub_1000037C4();
  v16 = v1;
  v17 = v2;
  __chkstk_darwin(v1);
  sub_1000040EC();
  sub_100019678();
  sub_100014580();
  sub_10022C350(&qword_100CB5070);
  Binding.wrappedValue.getter();
  v3 = sub_1000084E4();
  sub_1003DC124(v3, v4, v5, v6, v7);
  type metadata accessor for EmptyVisualEffect();
  sub_10001EB80();
  sub_1003DEFB4(v8, v9);
  VisualEffect.offset(x:y:)();
  sub_100019678();
  sub_100014580();
  Binding.wrappedValue.getter();
  v10 = sub_1000084E4();
  sub_1003DC214(v10, v11, v12, v13, v14);
  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v17 + 8))(v0, v16);
}

uint64_t sub_1003DDD6C(uint64_t a1)
{
  type metadata accessor for MoonDetailSelectedDate();
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 48), *(a1 + 72));
  v5 = a1 + *(type metadata accessor for MoonScrubberHeaderView() + 28);
  v6 = *(type metadata accessor for MoonScrubberHeaderViewModel(0) + 36);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v7 + 16))(v4, v5 + v6);
  swift_storeEnumTagMultiPayload();
  sub_1006779AC(v4);
  return sub_1003DE8B4(v4);
}

uint64_t sub_1003DDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CA4680);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v9 = sub_1000040EC();
  sub_100019678();
  sub_1003DC124(v10, v11, v12, v13, 0.0);
  type metadata accessor for EmptyVisualEffect();
  sub_10001EB80();
  sub_1003DEFB4(v14, v15);
  VisualEffect.offset(x:y:)();
  sub_100019678();
  if (*(a3 + *(v9 + 32)) == 1)
  {
    CGRectGetMinY(*&v16);
  }

  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v7 + 8))(v3, v5);
}

uint64_t sub_1003DE014@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v9 = v8;
  result = (*(v4 + 8))(v7, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_1003DE0FC()
{
  type metadata accessor for MoonScrubberHeaderView();
  sub_10022C350(&qword_100CAD708);
  return State.wrappedValue.setter();
}

uint64_t sub_1003DE178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v9 = type metadata accessor for PlainButtonStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB5140);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v18 - v15;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;

  sub_10022C350(&qword_100CB5148);
  sub_1003DED8C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100006F64(qword_100CB5178, &qword_100CB5140);
  sub_1003DEFB4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1003DE3E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = Image.init(systemName:)();
  v7 = (a1 + *(sub_10022C350(&qword_100CB5170) + 36));
  v8 = *(sub_10022C350(&qword_100CAF750) + 28);
  v9 = enum case for Image.Scale.large(_:);
  v10 = type metadata accessor for Image.Scale();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a1 = v6;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.title3(_:), v2);
  static Font.Weight.medium.getter();
  v11 = static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(sub_10022C350(&qword_100CB5160) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = static Color.cyan.getter();
  result = sub_10022C350(&qword_100CB5148);
  *(a1 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_1003DE5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DE65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003DE708()
{
  result = qword_100CB50A0;
  if (!qword_100CB50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB50A0);
  }

  return result;
}

unint64_t sub_1003DE75C()
{
  result = qword_100CB50A8;
  if (!qword_100CB50A8)
  {
    sub_10022E824(&qword_100CB5090);
    sub_1003DE708();
    swift_getOpaqueTypeConformance2();
    sub_1003DEFB4(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB50A8);
  }

  return result;
}

uint64_t sub_1003DE8B4(uint64_t a1)
{
  v2 = type metadata accessor for MoonDetailSelectedDate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DE928()
{
  result = qword_100CB50D8;
  if (!qword_100CB50D8)
  {
    sub_10022E824(&qword_100CB50D0);
    sub_1003DE9E0();
    sub_100006F64(&qword_100CA47C8, &qword_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB50D8);
  }

  return result;
}

unint64_t sub_1003DE9E0()
{
  result = qword_100CB50E0;
  if (!qword_100CB50E0)
  {
    sub_10022E824(&qword_100CB50E8);
    sub_100006F64(&qword_100CB50F0, &qword_100CB50F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB50E0);
  }

  return result;
}

uint64_t sub_1003DEA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB5100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEB20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MoonScrubberHeaderView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1003DEC30()
{
  result = qword_100CB5110;
  if (!qword_100CB5110)
  {
    sub_10022E824(&qword_100CB5108);
    sub_100006F64(&qword_100CB5118, &qword_100CB5120);
    sub_100006F64(&qword_100CB50F0, &qword_100CB50F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5110);
  }

  return result;
}

uint64_t sub_1003DED14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003DED8C()
{
  result = qword_100CB5150;
  if (!qword_100CB5150)
  {
    sub_10022E824(&qword_100CB5148);
    sub_1003DEE44();
    sub_100006F64(&qword_100CAF708, &qword_100CAF710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5150);
  }

  return result;
}

unint64_t sub_1003DEE44()
{
  result = qword_100CB5158;
  if (!qword_100CB5158)
  {
    sub_10022E824(&qword_100CB5160);
    sub_1003DEEFC();
    sub_100006F64(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5158);
  }

  return result;
}

unint64_t sub_1003DEEFC()
{
  result = qword_100CB5168;
  if (!qword_100CB5168)
  {
    sub_10022E824(&qword_100CB5170);
    sub_100006F64(&unk_100CE1690, &qword_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5168);
  }

  return result;
}

uint64_t sub_1003DEFB4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1003DF010()
{
  v1 = *v0;

  sub_10001E790();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 136)], *(v1 + 88));
  sub_10001E790();
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(v3 + 144)]);
  sub_10001E790();

  sub_10001E790();

  sub_10001E790();

  sub_10001E790();
  v6 = *(v5 + 184);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1000053B8();
  swift_getAssociatedConformanceWitness();
  sub_1000053B8();
  swift_getAssociatedConformanceWitness();
  sub_1000053B8();
  swift_getAssociatedConformanceWitness();
  sub_1000053B8();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for StatePersistenceData();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t sub_1003DF2AC()
{
  sub_1003DF010();

  return swift_deallocClassInstance();
}

uint64_t sub_1003DF304()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(v0 + v1[22]);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = *(v2 + 5);
  *(v16 + 32) = v1[12];
  *(v16 + 40) = *(v2 + 13);
  *(v16 + 56) = v1[15];
  *(v16 + 64) = v15;
  aBlock[4] = sub_1003DF94C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C54818;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v5 + 8))(v8, v3);
  (*(v11 + 8))(v14, v9);
}

uint64_t sub_1003DF608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[4] = swift_getAssociatedTypeWitness();
  v20[5] = swift_getAssociatedTypeWitness();
  v20[6] = swift_getAssociatedConformanceWitness();
  v20[7] = swift_getAssociatedConformanceWitness();
  v20[8] = swift_getAssociatedConformanceWitness();
  v20[9] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for StatePersistenceData();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v13 = *(v8 - 8);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(*result + 184);
    swift_beginAccess();
    (*(v10 + 16))(v12, v18 + v19, v9);
    if (sub_100024D10(v12, 1, v8) == 1)
    {

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v13 + 32))(v16, v12, v8);
      (*(a6 + 72))(v16, a3, a6);

      return (*(v13 + 8))(v16, v8);
    }
  }

  return result;
}

uint64_t sub_1003DFA78()
{
  type metadata accessor for HistoricalComparisons();
  sub_100068374(&qword_100CB5460, &type metadata accessor for HistoricalComparisons);
  sub_1000283CC();
  sub_100022AF4();
  sub_10004E548();
  if (v1)
  {
    type metadata accessor for HistoricalComparison();
    v4 = sub_100007E1C();
  }

  else
  {
    sub_100019690();
    sub_10007496C();
    type metadata accessor for HistoricalComparison();
    sub_1000037E8();
    v2 = sub_1000168F4();
    v3(v2);
    v0(v9, 0);
    v4 = sub_100008500();
  }

  return sub_10001B350(v4, v5, v6, v7);
}

uint64_t sub_1003DFBFC()
{
  sub_10022C350(&qword_100CB5468);
  sub_100006F64(&qword_100CB5470, &qword_100CB5468);
  sub_1000283CC();
  sub_100022AF4();
  sub_10004E548();
  if (v1)
  {
    type metadata accessor for MonthPrecipitationStatistics();
    v4 = sub_100007E1C();
  }

  else
  {
    sub_100019690();
    sub_10007496C();
    type metadata accessor for MonthPrecipitationStatistics();
    sub_1000037E8();
    v2 = sub_1000168F4();
    v3(v2);
    v0(v9, 0);
    v4 = sub_100008500();
  }

  return sub_10001B350(v4, v5, v6, v7);
}

Swift::Void __swiftcall SessionEventsAndDataCoordinator.handleActivity(_:)(NSUserActivity a1)
{
  v1 = sub_1003E0070(a1.super.isa);
  if (v2)
  {
    String.lowercased()();
  }

  __chkstk_darwin(v1);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_1003E0524();

  sub_10004A100();
}

uint64_t sub_1003DFE70()
{
  type metadata accessor for ReferralData();
  sub_100068374(&qword_100CB53C8, &type metadata accessor for ReferralData);
  return AccessTracker.clearStack<A>(of:includeParentTrackers:)();
}

uint64_t SessionEventsAndDataCoordinator.deinit()
{
  sub_1003DFFB8();

  sub_100006F14(v0 + 48);
  sub_100006F14(v0 + 88);
  sub_100006F14(v0 + 128);
  sub_100006F14(v0 + 168);
  sub_100006F14(v0 + 208);
  sub_100006F14(v0 + 248);
  sub_100006F14(v0 + 288);

  v1 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  type metadata accessor for StartMethod();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler);
  return v0;
}

void sub_1003DFFB8()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 endGeneratingDeviceOrientationNotifications];
}

uint64_t SessionEventsAndDataCoordinator.__deallocating_deinit()
{
  SessionEventsAndDataCoordinator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1003E0070(void *a1)
{
  v2 = [a1 activityType];
  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = 0xD000000000000022;
  v7 = countAndFlagsBits == 0xD000000000000022 && 0x8000000100AC5F30 == v5;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0xD000000000000015;
  }

  v8 = countAndFlagsBits == 0xD00000000000001ELL && 0x8000000100AC50A0 == v5;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_12;
  }

  v10 = countAndFlagsBits == 0x4972656874616557 && v5 == 0xED0000746E65746ELL;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000029 && 0x8000000100AC5F60 == v5)
    {
      return 0xD000000000000029;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return countAndFlagsBits;
    }

    v14 = 0xD000000000000028;
    if (countAndFlagsBits != 0xD000000000000028 || 0x8000000100AC5F90 != v5)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return countAndFlagsBits;
      }

      v14 = 0xD000000000000029;
      if (countAndFlagsBits != 0xD000000000000029 || 0x8000000100AC5FC0 != v5)
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return countAndFlagsBits;
        }

        v14 = 0xD000000000000027;
        if (countAndFlagsBits != 0xD000000000000027 || 0x8000000100AC5FF0 != v5)
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          if (countAndFlagsBits == 0xD000000000000023 && 0x8000000100AC6020 == v5)
          {
            return 0xD000000000000023;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          v14 = 0xD00000000000002ALL;
          if (countAndFlagsBits == 0xD00000000000002ALL && 0x8000000100AC6050 == v5)
          {
            return v14;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          if (countAndFlagsBits == 0xD000000000000022 && 0x8000000100AC6080 == v5)
          {
            return v6;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          v6 = 0xD000000000000026;
          if (countAndFlagsBits == 0xD000000000000026 && 0x8000000100AC60B0 == v5)
          {
            return v6;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          if (countAndFlagsBits == 0xD000000000000023 && 0x8000000100AC60E0 == v5)
          {
            return 0xD000000000000023;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          v14 = 0xD000000000000026;
          if (countAndFlagsBits != 0xD000000000000026 || 0x8000000100AC6110 != v5)
          {
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              return 0;
            }

            return countAndFlagsBits;
          }
        }
      }
    }

    return v14;
  }

  if (!sub_100166104(a1))
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_30;
  }

  static WidgetCenter.UserInfoKey.kind.getter();
  AnyHashable.init<A>(_:)();
  sub_100879F04();

  sub_100166478(&v24);
  if (!*(&v26 + 1))
  {
LABEL_30:
    sub_1000180EC(&v25, &qword_100CE2F40);
    return 0xD000000000000018;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0xD000000000000018;
  }

  v11 = String.lowercased()();
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = v11._countAndFlagsBits == 0xD000000000000011 && 0x8000000100ABB700 == v11._object;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_12:

    return 0xD000000000000018;
  }

  return countAndFlagsBits;
}

uint64_t sub_1003E0524()
{
  v1 = sub_10022C350(&qword_100CB54C8);
  v26 = *(v1 - 8);
  v27 = v1;
  __chkstk_darwin(v1);
  v25 = v16 - v2;
  v3 = type metadata accessor for ReferralData();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v16 - v6;

  ReferralData.init(referringApplication:referringUrl:)();
  v24 = *(v0 + 32);
  SessionManager.tracker.getter();
  v22 = sub_10022C350(&qword_100CAE2B0);
  v8 = type metadata accessor for DataEventTrait();
  v9 = *(v8 - 8);
  v21 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v19 = xmmword_100A2C3F0;
  *(v11 + 16) = xmmword_100A2C3F0;
  v18 = enum case for DataEventTrait.unique(_:);
  v17 = *(v9 + 104);
  v17(v11 + v10);
  v16[1] = "ent to handle the new case.";
  sub_100068374(&qword_100CB53C8, &type metadata accessor for ReferralData);
  Tracker.push<A>(data:traits:file:line:)();

  v12 = v20;
  (*(v20 + 16))(v23, v7, v3);
  v13 = v25;
  SessionData.init(key:data:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  (v17)(v14 + v10, v18, v8);
  SessionManager.push<A>(_:traits:file:line:)();

  (*(v26 + 8))(v13, v27);
  return (*(v12 + 8))(v7, v3);
}

void SessionEventsAndDataCoordinator.identityService(_:didChangeUserIdentity:)()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Logger();
  sub_1000037C4();
  v35 = v5;
  v36 = v4;
  __chkstk_darwin(v4);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for UserIdentityChangeKind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v34 = v3;
  UserIdentityChange.change.getter();
  static UserIdentityChangeKind.userIdentity.getter();
  sub_100068374(&qword_100CB5238, &type metadata accessor for UserIdentityChangeKind);
  v19 = sub_10003C40C();
  v20 = *(v12 + 8);
  v20(v15, v10);
  v20(v18, v10);
  if (v19)
  {
    static Logger.identity.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32[1] = v1;
      *v23 = 0;
      sub_10000FA14(&_mh_execute_header, v24, v25, "Received a user identity change ... pushing new identifier onto trackers");
    }

    (*(v35 + 8))(v9, v36);
    sub_10004B3D8();
  }

  UserIdentityChange.change.getter();
  static UserIdentityChangeKind.privateUserIdentity.getter();
  v26 = sub_10003C40C();
  v20(v15, v10);
  v20(v18, v10);
  if (v26)
  {
    v27 = v33;
    static Logger.identity.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      *swift_slowAlloc() = 0;
      sub_10000FA14(&_mh_execute_header, v30, v31, "Received a private user identity change ... pushing new identifier onto trackers");
    }

    (*(v35 + 8))(v27, v36);
    sub_100069188();
  }

  sub_10000536C();
}

Swift::Void __swiftcall SessionEventsAndDataCoordinator.sceneWillResignActive()()
{
  sub_1000161C0(v0 + 31, v0[34]);
  sub_100068374(&qword_100CB5240, type metadata accessor for SessionEventsAndDataCoordinator);
  sub_100003E0C();
  dispatch thunk of AppConfigurationManagerType.removeObserver(_:)();
  sub_1000161C0(v0 + 36, v0[39]);
  sub_100005B4C();
  sub_100068374(v1, type metadata accessor for SessionEventsAndDataCoordinator);
  sub_100003E0C();
  dispatch thunk of LocationManagerType.removeObserver(_:)();
}

uint64_t SessionEventsAndDataCoordinator.patterns.getter()
{
  sub_10022C350(&qword_100CB5260);
  v0 = type metadata accessor for URLHandlerPattern();
  sub_100003AE8(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  URLHandlerPattern.init(scheme:host:path:fragment:)();
  return v1;
}

void SessionEventsAndDataCoordinator.processURL(for:)()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v33 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v34 = type metadata accessor for URL();
  sub_1000037C4();
  v32 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for URLHandlerMatch();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  sub_10022C350(&qword_100CB5268);
  URLHandlerContext.clientContext.getter();
  if (v36 || (URLHandlerContext.match.getter(), URLHandlerMatch.url.getter(), (*(v17 + 8))(v21, v15), (*(v33 + 104))(v9, enum case for WeatherQueryParameterKey.openedFrom(_:), ParameterKey), Parameter = WeatherQueryParameterKey.rawValue.getter(), v24 = v23, (*(v33 + 8))(v9, ParameterKey), v25._countAndFlagsBits = Parameter, v25._object = v24, v26 = URL.queryItem(for:)(v25).value._object, , (*(v32 + 8))(v14, v34), v26))
  {
    v27 = String.lowercased()();
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
  }

  else
  {
    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  v30 = sub_1003E1248(v3, v1);
  v35 = *(v1 + 328);
  __chkstk_darwin(v30);
  *(&v31 - 4) = v1;
  *(&v31 - 3) = countAndFlagsBits;
  *(&v31 - 2) = object;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_1003E0524();

  sub_10004A100();
  sub_10000536C();
}

uint64_t sub_1003E1248(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v71 = a2;
  v78 = a1;
  v2 = sub_10022C350(&qword_100CB5268);
  v72 = *(v2 - 8);
  __chkstk_darwin(v2);
  v76 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v61 - v5;
  v6 = type metadata accessor for Logger();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v61 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLHandlerMatch();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CB5478);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for URLComponents();
  v70 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v2;
  URLHandlerContext.match.getter();
  URLHandlerMatch.url.getter();
  v63 = *(v15 + 8);
  v64 = v17;
  v68 = v14;
  v66 = v15 + 8;
  v63(v17, v14);
  URL.absoluteString.getter();
  v24 = *(v11 + 8);
  v65 = v13;
  v69 = v10;
  v67 = v11 + 8;
  v24(v13, v10);
  v25 = v21;
  URLComponents.init(string:)();

  if (sub_100024D10(v20, 1, v21) == 1)
  {
    sub_1000180EC(v20, &qword_100CB5478);
    static Logger.privacy.getter();
    v26 = v72;
    v27 = v75;
    (*(v72 + 16))(v76, v78, v75);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v32 = v24;
      v33 = v64;
      v34 = v76;
      URLHandlerContext.match.getter();
      v35 = v65;
      URLHandlerMatch.url.getter();
      v63(v33, v68);
      v36 = URL.absoluteString.getter();
      v38 = v37;
      v32(v35, v69);
      (*(v26 + 8))(v34, v30);
      v39 = sub_100078694(v36, v38, v79);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to obtain url components from url. url=%{private,mask.hash}s", v31, 0x16u);
      sub_100006F14(v78);
    }

    else
    {

      (*(v26 + 8))(v76, v27);
    }

    (*(v73 + 8))(v77, v74);
    return 0;
  }

  v40 = v78;
  v41 = v75;
  v42 = v70;
  (*(v70 + 32))(v23, v20, v25);
  v43 = URLComponents.queryItems.getter();
  sub_1003E1AB8(v43);

  URLComponents.queryItems.setter();
  v44 = URLComponents.string.getter();
  if (!v45)
  {
    v77 = v23;
    v47 = v62;
    static Logger.privacy.getter();
    v48 = v72;
    v49 = v61;
    v50 = v41;
    (*(v72 + 16))(v61, v40, v41);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v53 = 141558275;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2081;
      v71 = v24;
      v54 = v64;
      LODWORD(v76) = v52;
      URLHandlerContext.match.getter();
      v55 = v65;
      URLHandlerMatch.url.getter();
      v63(v54, v68);
      v56 = URL.absoluteString.getter();
      v58 = v57;
      v71(v55, v69);
      (*(v48 + 8))(v49, v50);
      v59 = sub_100078694(v56, v58, v79);

      *(v53 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v51, v76, "Failed to obtain string from url components. url=%{private,mask.hash}s", v53, 0x16u);
      sub_100006F14(v78);

      (*(v73 + 8))(v62, v74);
    }

    else
    {

      (*(v48 + 8))(v49, v50);
      (*(v73 + 8))(v47, v74);
    }

    (*(v42 + 8))(v77, v25);
    return 0;
  }

  v46 = v44;
  (*(v42 + 8))(v23, v25);
  return v46;
}

void *sub_1003E1AB8(uint64_t a1)
{
  v70 = type metadata accessor for Logger();
  v2 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB5480);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  v7 = *(ParameterKey - 8);
  __chkstk_darwin(ParameterKey);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLQueryItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = v61 - v14;
  __chkstk_darwin(v15);
  v68 = v61 - v16;
  __chkstk_darwin(v17);
  v67 = v61 - v18;
  __chkstk_darwin(v19);
  v21 = v61 - v20;
  if (a1)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v24 = *(v11 + 16);
      v23 = v11 + 16;
      v80 = v24;
      v25 = a1;
      v76 = (*(v23 + 64) + 32) & ~*(v23 + 64);
      v26 = (a1 + v76);
      v65 = (v7 + 32);
      v75 = *(v23 + 56);
      v64 = (v7 + 8);
      v73 = (v23 + 16);
      v74 = (v23 - 8);
      v63 = (v2 + 8);
      v61[1] = v25;

      v84 = _swiftEmptyArrayStorage;
      *&v27 = 136315138;
      v62 = v27;
      v28 = ParameterKey;
      v77 = v9;
      v81 = v21;
      v82 = v10;
      v79 = v23;
      v66 = v6;
      do
      {
        v29 = v80;
        v80(v21, v26, v10);
        URLQueryItem.name.getter();
        WeatherQueryParameterKey.init(rawValue:)();
        v30 = sub_100024D10(v6, 1, v28);
        v83 = v22;
        if (v30 == 1)
        {
          sub_1000180EC(v6, &qword_100CB5480);
          v31 = v72;
          static Logger.privacy.getter();
          v32 = v69;
          v29(v69, v21, v10);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = v32;
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v85 = v37;
            *v36 = v62;
            v38 = URLQueryItem.name.getter();
            v40 = v39;
            v41 = *v74;
            (*v74)(v35, v82);
            v42 = v38;
            v29 = v80;
            v43 = sub_100078694(v42, v40, &v85);
            v10 = v82;

            *(v36 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v33, v34, "Encountered an unrecognized url query item key. key=%s", v36, 0xCu);
            sub_100006F14(v37);

            (*v63)(v72, v70);
          }

          else
          {

            v41 = *v74;
            (*v74)(v32, v10);
            (*v63)(v31, v70);
          }

          v29(v78, v81, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v6 = v66;
          v28 = ParameterKey;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10069F478();
            v84 = v54;
          }

          v46 = v84[2];
          v47 = v46 + 1;
          if (v46 >= v84[3] >> 1)
          {
            sub_10069F478();
            v84 = v55;
          }

          v48 = v78;
        }

        else
        {
          (*v65)(v9, v6, v28);
          if (WeatherQueryParameterKey.shouldRedact.getter())
          {
            WeatherQueryParameterKey.rawValue.getter();
            URLQueryItem.init(name:value:)();

            v44 = swift_isUniquelyReferenced_nonNull_native();
            v45 = v74;
            if ((v44 & 1) == 0)
            {
              sub_10069F478();
              v84 = v56;
            }

            v46 = v84[2];
            v47 = v46 + 1;
            if (v46 >= v84[3] >> 1)
            {
              sub_10069F478();
              v84 = v57;
            }

            (*v64)(v9, v28);
            v41 = *v45;
            v48 = v67;
          }

          else
          {
            v80(v68, v21, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10069F478();
              v84 = v58;
            }

            v50 = v74;
            v46 = v84[2];
            v47 = v46 + 1;
            if (v46 >= v84[3] >> 1)
            {
              sub_10069F478();
              v84 = v59;
            }

            (*v64)(v9, v28);
            v41 = *v50;
            v48 = v68;
          }
        }

        v51 = v81;
        v10 = v82;
        v41(v81, v82);
        v21 = v51;
        v52 = v84;
        v84[2] = v47;
        v53 = v75;
        (*v73)(v52 + v76 + v46 * v75, v48, v10);
        v26 += v53;
        v22 = v83 - 1;
        v9 = v77;
      }

      while (v83 != 1);

      return v84;
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_1003E2258(uint64_t a1)
{
  started = type metadata accessor for StartMethod();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  *(a1 + 336) = 1;

  StartMethod.init(referringApplication:)();
  v9 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  swift_beginAccess();
  (*(v4 + 40))(a1 + v9, v8, started);
  return swift_endAccess();
}

uint64_t SessionEventsAndDataCoordinator.appConfigurationDidRefresh(_:)()
{
  swift_allocObject();
  swift_weakInit();

  asyncMain(block:)();
}

uint64_t SessionEventsAndDataCoordinator.updateTypes.getter()
{
  sub_10022C350(&qword_100CB5270);
  updated = type metadata accessor for LocationManagerUpdateType();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  (*(v2 + 104))(v4 + v3, enum case for LocationManagerUpdateType.authorization(_:), updated);
  return v4;
}

uint64_t SessionEventsAndDataCoordinator.authorizationDidChange(_:authorizationStatus:)()
{
  swift_allocObject();
  swift_weakInit();

  asyncMain(block:)();
}

uint64_t sub_1003E2550()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004A100();
  }

  return result;
}

uint64_t sub_1003E2674(void *a1)
{
  v2 = [a1 sourceApplication];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003E2720(uint64_t a1)
{
  result = sub_100068374(&qword_100CB5278, type metadata accessor for SessionEventsAndDataCoordinator);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionEventsAndDataCoordinator.SessionPurpose(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1003E2860()
{
  result = qword_100CB53B8;
  if (!qword_100CB53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB53B8);
  }

  return result;
}

uint64_t sub_1003E2948@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v46 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v45 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = (&v37 - v4);
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v42 = v7;
  v43 = v6;
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB5560);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v38 = sub_10022C350(&qword_100CB5568);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_10022C350(&qword_100CB5570);
  sub_1000037C4();
  v39 = v20;
  v40 = v21;
  __chkstk_darwin(v20);
  v23 = &v37 - v22;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v24 = &v19[*(sub_10022C350(&qword_100CB5578) + 44)];
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v25 = sub_10022C350(&qword_100CB5580);
  v26 = v41;
  sub_1003E2E40(v41, &v16[*(v25 + 44)]);
  *&v16[*(v11 + 44)] = 0x3FF0000000000000;
  sub_1000955E0(v16, v13, &qword_100CB5560);
  sub_1000955E0(v13, v24, &qword_100CB5560);
  v27 = v24 + *(sub_10022C350(&qword_100CB5588) + 48);
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_1000180EC(v16, &qword_100CB5560);
  sub_1000180EC(v13, &qword_100CB5560);
  static AccessibilityChildBehavior.combine.getter();
  v28 = sub_100006F64(&qword_100CB5590, &qword_100CB5568);
  v29 = v38;
  View.accessibilityElement(children:)();
  (*(v42 + 8))(v9, v43);
  sub_1000180EC(v19, &qword_100CB5568);
  v47 = v29;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  v31 = v39;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v40 + 8))(v23, v31);
  v32 = *(v26 + 48);
  *v5 = *(v26 + 40);
  v5[1] = v32;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v33 = v45;
  sub_1003E745C(v5, v45, type metadata accessor for AutomationInfo);
  v34 = v30 + *(sub_10022C350(&qword_100CB5598) + 36);
  v35 = type metadata accessor for AutomationInfoProperty();
  sub_1003E745C(v33, v34 + *(v35 + 24), type metadata accessor for AutomationInfo);

  sub_1003E74BC(v33, type metadata accessor for AutomationInfo);
  sub_1003E74BC(v5, type metadata accessor for AutomationInfo);
  *v34 = 0;
  *(v34 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v34 + 16) = result;
  *(v34 + 24) = 0;
  return result;
}

uint64_t sub_1003E2E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Description(0);
  __chkstk_darwin(v54);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v47 - v7;
  v8 = type metadata accessor for Font.Leading();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Font.TextStyle();
  v10 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherAlert.Prominence();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SevereAlertComponentViewModel();
  (*(v14 + 16))(v16, a1 + *(v17 + 36), v13);
  v18 = (*(v14 + 88))(v16, v13);
  v19 = enum case for WeatherAlert.Prominence.low(_:);
  (*(v14 + 8))(v16, v13);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v18 == v19)
  {
    v24 = *(a1 + 48);
    v58 = *(a1 + 40);
    v59 = v24;
    sub_10002D5A4();

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v30 = v47;
    (*(v10 + 104))(v12, enum case for Font.TextStyle.title3(_:), v47);
    static Font.Weight.bold.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v12, v30);
    v32 = v48;
    v31 = v49;
    v33 = v50;
    (*(v49 + 104))(v48, enum case for Font.Leading.tight(_:), v50);
    Font.leading(_:)();

    (*(v31 + 8))(v32, v33);
    v34 = v27;
    v20 = Text.font(_:)();
    v21 = v35;
    LOBYTE(v33) = v36;
    v23 = v37;

    sub_10010CD64(v25, v34, v29 & 1);

    v22 = v33 & 1;
    sub_10010CD54(v20, v21, v33 & 1);
  }

  v38 = v55;
  sub_1003E745C(a1, v55, type metadata accessor for SevereAlertComponentViewModel);
  v39 = a1 + *(type metadata accessor for SevereAlertComponentView(0) + 20);
  v40 = *v39;
  if (*(v39 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v51;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v52 + 8))(v42, v53);
    LOBYTE(v40) = v58;
  }

  *(v38 + *(v54 + 20)) = 1u >> (v40 & 7);
  v43 = v56;
  sub_1003E745C(v38, v56, type metadata accessor for Description);
  v44 = v57;
  *v57 = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  v45 = sub_10022C350(&qword_100CB55A0);
  sub_1003E745C(v43, v44 + *(v45 + 48), type metadata accessor for Description);
  sub_100148118(v20, v21, v22, v23);
  sub_10014A53C(v20, v21, v22, v23);
  sub_1003E74BC(v38, type metadata accessor for Description);
  sub_1003E74BC(v43, type metadata accessor for Description);
  return sub_10014A53C(v20, v21, v22, v23);
}

uint64_t sub_1003E3474@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v27 = type metadata accessor for ProminentPadDescription(0);
  __chkstk_darwin(v27);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CB5650);
  __chkstk_darwin(v29);
  v31 = &v25 - v3;
  v4 = sub_10022C350(&qword_100CB5658);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v30 = sub_10022C350(&qword_100CB5660);
  __chkstk_darwin(v30);
  v8 = &v25 - v7;
  v28 = type metadata accessor for StandardDescription(0);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CB5668);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for SevereAlertComponentViewModel() + 36);
  v15 = *(v1 + *(type metadata accessor for Description(0) + 20));
  v16 = type metadata accessor for WeatherAlert.Prominence();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, v1 + v14, v16);
  if (v15 == 1)
  {
    (*(v17 + 8))(v13, v16);
  }

  else
  {
    v21 = (*(v17 + 88))(v13, v16);
    if (v21 == enum case for WeatherAlert.Prominence.high(_:))
    {
      v22 = v26;
      sub_1003E745C(v1, v26, type metadata accessor for SevereAlertComponentViewModel);
      sub_1003E745C(v22, v6, type metadata accessor for ProminentPadDescription);
      swift_storeEnumTagMultiPayload();
      sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription);
      sub_1003E7798(&qword_100CB5680, type metadata accessor for ProminentPadDescription);
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v8, v31, &qword_100CB5660);
      swift_storeEnumTagMultiPayload();
      sub_1003E783C();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v8, &qword_100CB5660);
      v19 = type metadata accessor for ProminentPadDescription;
      v20 = v22;
      return sub_1003E74BC(v20, v19);
    }

    if (v21 != enum case for WeatherAlert.Prominence.low(_:))
    {
      sub_1003E745C(v1, v10, type metadata accessor for SevereAlertComponentViewModel);
      v24 = &v10[*(v28 + 20)];
      *v24 = swift_getKeyPath();
      v24[8] = 0;
      sub_1003E745C(v10, v31, type metadata accessor for StandardDescription);
      swift_storeEnumTagMultiPayload();
      sub_1003E783C();
      sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription);
      _ConditionalContent<>.init(storage:)();
      sub_1003E74BC(v10, type metadata accessor for StandardDescription);
      return (*(v17 + 8))(v13, v16);
    }
  }

  sub_1003E745C(v1, v10, type metadata accessor for SevereAlertComponentViewModel);
  v18 = &v10[*(v28 + 20)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  sub_1003E745C(v10, v6, type metadata accessor for StandardDescription);
  swift_storeEnumTagMultiPayload();
  sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription);
  sub_1003E7798(&qword_100CB5680, type metadata accessor for ProminentPadDescription);
  _ConditionalContent<>.init(storage:)();
  sub_1000955E0(v8, v31, &qword_100CB5660);
  swift_storeEnumTagMultiPayload();
  sub_1003E783C();
  _ConditionalContent<>.init(storage:)();
  sub_1000180EC(v8, &qword_100CB5660);
  v19 = type metadata accessor for StandardDescription;
  v20 = v10;
  return sub_1003E74BC(v20, v19);
}

uint64_t sub_1003E3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_10022C350(&qword_100CB5840);
  __chkstk_darwin(v3 - 8);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = (&v44 - v6);
  v7 = type metadata accessor for ProminentPadBulletedDescription(0);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB5848);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  __chkstk_darwin(v25);
  v27 = &v44 - v26;
  v28 = *(*(a1 + 32) + 16);
  v49 = &v44 - v26;
  if (v28 < 4)
  {
    sub_10001B350(&v44 - v26, 1, 1, v7);
    if (v28 != 3)
    {
      v43 = v24;
      v30 = 1;
      v29 = v43;
      sub_10001B350(v43, 1, 1, v7);
      if (v28 < 2)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    sub_1003E745C(a1, v9, type metadata accessor for SevereAlertComponentViewModel);
    *&v9[*(v7 + 20)] = 4;
    *&v9[*(v7 + 24)] = 0x4018000000000000;
    sub_1003E7C54(v9, v27);
    sub_10001B350(v27, 0, 1, v7);
  }

  sub_1003E745C(a1, v9, type metadata accessor for SevereAlertComponentViewModel);
  *&v9[*(v7 + 20)] = 3;
  *&v9[*(v7 + 24)] = 0x4018000000000000;
  sub_1003E7C54(v9, v24);
  v29 = v24;
  sub_10001B350(v24, 0, 1, v7);
LABEL_5:
  sub_1003E745C(a1, v9, type metadata accessor for SevereAlertComponentViewModel);
  *&v9[*(v7 + 20)] = 2;
  *&v9[*(v7 + 24)] = 0x4018000000000000;
  sub_1003E7C54(v9, v21);
  v30 = 0;
LABEL_6:
  sub_10001B350(v21, v30, 1, v7);
  v31 = static HorizontalAlignment.leading.getter();
  v32 = v46;
  *v46 = v31;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  v33 = v32 + *(sub_10022C350(&qword_100CB5850) + 44);
  sub_1003E745C(a1, v33, type metadata accessor for SevereAlertComponentViewModel);
  v34 = v33 + *(type metadata accessor for ProminentPadSingleDescription(0) + 20);
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  sub_1000955E0(v49, v18, &qword_100CB5848);
  v35 = v29;
  sub_1000955E0(v29, v15, &qword_100CB5848);
  sub_1000955E0(v21, v12, &qword_100CB5848);
  v36 = v47;
  sub_1000955E0(v32, v47, &qword_100CB5840);
  v37 = v18;
  v45 = v18;
  v38 = v15;
  v39 = v12;
  v40 = v48;
  sub_1000955E0(v37, v48, &qword_100CB5848);
  v41 = sub_10022C350(&qword_100CB5858);
  sub_1000955E0(v38, v40 + v41[12], &qword_100CB5848);
  sub_1000955E0(v39, v40 + v41[16], &qword_100CB5848);
  sub_1000955E0(v36, v40 + v41[20], &qword_100CB5840);
  sub_1000180EC(v32, &qword_100CB5840);
  sub_1000180EC(v21, &qword_100CB5848);
  sub_1000180EC(v35, &qword_100CB5848);
  sub_1000180EC(v49, &qword_100CB5848);
  sub_1000180EC(v36, &qword_100CB5840);
  sub_1000180EC(v39, &qword_100CB5848);
  sub_1000180EC(v38, &qword_100CB5848);
  return sub_1000180EC(v45, &qword_100CB5848);
}

uint64_t sub_1003E4100@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10022C350(&qword_100CB59C0);
  return sub_1003E4154(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1003E4154@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v73 = type metadata accessor for Font.Leading();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v4 - 8);
  v67 = v62 - v5;
  v6 = type metadata accessor for Font.TextStyle();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10022C350(&qword_100CA4000) - 8;
  __chkstk_darwin(v74);
  v75 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = v62 - v10;
  v11 = type metadata accessor for ProminentPadBulletedDescription(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v72 = sub_10022C350(&qword_100CB59C8);
  v77 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = v62 - v17;
  v18 = *(a1 + 32);
  v19 = *(a1 + *(v12 + 28));

  v78 = sub_1002B0A68(v19, v18);
  v79 = v20;
  v80 = v21;
  v81 = v22;
  v62[1] = swift_getKeyPath();
  sub_1003E745C(a1, v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProminentPadBulletedDescription);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  sub_1003E7C54(v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_10022C350(&qword_100CB59D0);
  sub_10022C350(&qword_100CB59D8);
  sub_100006F64(&qword_100CB59E0, &qword_100CB59D0);
  sub_100006F64(&qword_100CB59E8, &qword_100CB59D8);
  ForEach<>.init(_:id:content:)();
  v78 = sub_1005027C4(v19);
  v79 = v25;
  sub_10002D5A4();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(v14) = v29;
  v31 = v64;
  v30 = v65;
  v32 = v66;
  (*(v65 + 104))(v64, enum case for Font.TextStyle.footnote(_:), v66);
  v33 = type metadata accessor for Font.Design();
  v34 = v67;
  sub_10001B350(v67, 1, 1, v33);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v34, &qword_100CA4020);
  (*(v30 + 8))(v31, v32);
  v36 = v70;
  v35 = v71;
  v37 = v73;
  (*(v71 + 104))(v70, enum case for Font.Leading.tight(_:), v73);
  Font.leading(_:)();

  (*(v35 + 8))(v36, v37);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v35) = v41;

  sub_10010CD64(v26, v28, v14 & 1);

  LODWORD(v78) = static HierarchicalShapeStyle.tertiary.getter();
  v42 = Text.foregroundStyle<A>(_:)();
  v44 = v43;
  LOBYTE(v32) = v45;
  v47 = v46;
  sub_10010CD64(v38, v40, v35 & 1);

  v48 = *(v74 + 44);
  v49 = enum case for BlendMode.plusLighter(_:);
  v50 = type metadata accessor for BlendMode();
  v51 = v68;
  (*(*(v50 - 8) + 104))(&v68[v48], v49, v50);
  *v51 = v42;
  *(v51 + 8) = v44;
  *(v51 + 16) = v32 & 1;
  *(v51 + 24) = v47;
  v52 = *(v77 + 16);
  v53 = v69;
  v54 = v63;
  v55 = v72;
  v52(v69, v63, v72);
  v56 = v75;
  sub_1000955E0(v51, v75, &qword_100CA4000);
  v57 = v76;
  v52(v76, v53, v55);
  v58 = sub_10022C350(&qword_100CB59F0);
  v59 = &v57[*(v58 + 48)];
  *v59 = 0x4014000000000000;
  v59[8] = 0;
  sub_1000955E0(v56, &v57[*(v58 + 64)], &qword_100CA4000);
  sub_1000180EC(v51, &qword_100CA4000);
  v60 = *(v77 + 8);
  v60(v54, v55);
  sub_1000180EC(v56, &qword_100CA4000);
  return (v60)(v53, v55);
}

uint64_t sub_1003E492C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + *(type metadata accessor for ProminentPadBulletedDescription(0) + 24));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v17;
  v7 = v19;
  v8 = v21;
  v9 = v22;
  v25 = 1;
  v24 = v18;
  v23 = v20;
  v10 = static VerticalAlignment.top.getter();
  v15[0] = 0;
  sub_1003E4B14(v4, v5, __src);
  memcpy(__dst, __src, 0xE1uLL);
  memcpy(v27, __src, 0xE1uLL);
  sub_1000955E0(__dst, v28, &qword_100CB59F8);
  sub_1000180EC(v27, &qword_100CB59F8);
  memcpy(&v16[7], __dst, 0xE1uLL);
  v11 = v18;
  v12 = v20;
  v28[0] = v10;
  v28[1] = v6;
  LOBYTE(v28[2]) = 0;
  memcpy(&v28[2] + 1, v16, 0xE8uLL);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v14;
  *(a3 + 24) = v11;
  *(a3 + 32) = v7;
  *(a3 + 40) = v12;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  memcpy((a3 + 64), v28, 0xF9uLL);
  __src[0] = v10;
  __src[1] = v6;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v16, 0xE8uLL);
  sub_1000955E0(v28, v15, &qword_100CB5A00);
  return sub_1000180EC(__src, &qword_100CB5A00);
}

uint64_t sub_1003E4B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a3;
  v5 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-1] - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for Font.TextStyle.title3(_:), v8, v10);
  v13 = type metadata accessor for Font.Design();
  sub_10001B350(v7, 1, 1, v13);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v7, &qword_100CA4020);
  (*(v9 + 8))(v12, v8);
  v14 = Text.font(_:)();
  v16 = v15;
  LOBYTE(v7) = v17;
  v19 = v18;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v12) = v7 & 1;
  v20 = static HorizontalAlignment.center.getter();
  LOBYTE(v23[0]) = 1;
  sub_1003E4F18(a1, a2, __src);
  memcpy(v36, __src, 0x79uLL);
  memcpy(v37, __src, 0x79uLL);
  sub_1000955E0(v36, v39, &qword_100CB5A08);
  sub_1000180EC(v37, &qword_100CB5A08);
  memcpy(&v34[7], v36, 0x79uLL);
  LOBYTE(a2) = v23[0];
  *&v38[0] = v14;
  *(&v38[0] + 1) = v16;
  LOBYTE(v38[1]) = v12;
  *(&v38[1] + 1) = v35[0];
  DWORD1(v38[1]) = *(v35 + 3);
  *(&v38[1] + 1) = v19;
  v38[2] = v31;
  v38[3] = v32;
  v38[4] = v33;
  memcpy(v30, v38, 0x50uLL);
  v39[0] = v20;
  v39[1] = 0;
  LOBYTE(v39[2]) = v23[0];
  memcpy(&v39[2] + 1, v34, 0x80uLL);
  memcpy(&v30[80], v39, 0x91uLL);
  memcpy(v22, v30, 0xE1uLL);
  __src[0] = v20;
  __src[1] = 0;
  LOBYTE(__src[2]) = a2;
  memcpy(&__src[2] + 1, v34, 0x80uLL);
  sub_1000955E0(v38, v23, &qword_100CB5A10);
  sub_1000955E0(v39, v23, &qword_100CB5A18);
  sub_1000180EC(__src, &qword_100CB5A18);
  v23[0] = v14;
  v23[1] = v16;
  v24 = v12;
  *v25 = v35[0];
  *&v25[3] = *(v35 + 3);
  v26 = v19;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  return sub_1000180EC(v23, &qword_100CB5A10);
}

uint64_t sub_1003E4F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = type metadata accessor for Font.Leading();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = v54;
  v47 = v52;
  v44 = v57;
  v45 = v56;
  v60 = 1;
  v59 = v53;
  v58 = v55;
  v64 = v42;
  v65 = a2;
  sub_10002D5A4();

  v15 = Text.init<A>(_:)();
  v41 = v16;
  v42 = v15;
  v18 = v17;
  v40 = v19;
  (*(v12 + 104))(v14, enum case for Font.TextStyle.subheadline(_:), v11);
  v20 = type metadata accessor for Font.Design();
  sub_10001B350(v10, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v10, &qword_100CA4020);
  (*(v12 + 8))(v14, v11);
  v21 = v43;
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v43);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v21);
  v22 = v41;
  v23 = v42;
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(a2) = v27;
  v43 = v28;

  sub_10010CD64(v23, v22, v18 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v59;
  v31 = v58;
  *&v61 = v24;
  *(&v61 + 1) = v26;
  LOBYTE(v62) = a2 & 1;
  v32 = *v51;
  *(&v62 + 1) = *v51;
  DWORD1(v62) = *&v51[3];
  v33 = v43;
  *(&v62 + 1) = v43;
  WORD3(v63[0]) = v50;
  v34 = v49;
  *(v63 + 2) = v49;
  LOWORD(v63[0]) = 256;
  *(a3 + 8) = v60;
  *(&v63[0] + 1) = KeyPath;
  *&v63[1] = 2;
  BYTE8(v63[1]) = 0;
  *a3 = 0;
  *(a3 + 16) = v47;
  *(a3 + 24) = v30;
  *(a3 + 32) = v46;
  *(a3 + 40) = v31;
  v35 = v44;
  *(a3 + 48) = v45;
  *(a3 + 56) = v35;
  v36 = v61;
  v37 = v62;
  v38 = v63[0];
  *(a3 + 105) = *(v63 + 9);
  *(a3 + 80) = v37;
  *(a3 + 96) = v38;
  *(a3 + 64) = v36;
  v64 = v24;
  v65 = v26;
  v66 = a2 & 1;
  *&v67[3] = *&v51[3];
  *v67 = v32;
  v68 = v33;
  v69 = 256;
  v71 = v50;
  v70 = v34;
  v72 = KeyPath;
  v73 = 2;
  v74 = 0;
  sub_1000955E0(&v61, &v48, &qword_100CB5830);
  return sub_1000180EC(&v64, &qword_100CB5830);
}

uint64_t sub_1003E5388@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v84 = sub_10022C350(&qword_100CA4000);
  __chkstk_darwin(v84);
  v87 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v85 = &v65 - v4;
  v5 = type metadata accessor for EnvironmentValues();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.Leading();
  v90 = *(v7 - 8);
  __chkstk_darwin(v7);
  v88 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - v10;
  v89 = type metadata accessor for Font.TextStyle();
  v12 = *(v89 - 8);
  __chkstk_darwin(v89);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v74) = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v81 = v110;
  v82 = v108;
  v79 = v113;
  v80 = v112;
  v107 = 1;
  v106 = v109;
  v105 = v111;
  sub_10022C350(&qword_100CB59A8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2D320;
  v16 = static Axis.Set.horizontal.getter();
  *(v15 + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(v15 + 33) = v17;
  v18 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    v18 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v17)
  {
    v83 = v18;
  }

  else
  {
    v83 = Axis.Set.init(rawValue:)();
  }

  sub_1003E5D28(v1, v101);
  *&__src[7] = v101[0];
  *&__src[23] = v101[1];
  *&__src[39] = v101[2];
  *&__src[55] = v101[3];
  v19 = v89;
  v71 = *(v12 + 104);
  v71(v14, enum case for Font.TextStyle.subheadline(_:), v89);
  v70 = type metadata accessor for Font.Design();
  sub_10001B350(v11, 1, 1, v70);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v11, &qword_100CA4020);
  v20 = *(v12 + 8);
  v77 = v12 + 8;
  v69 = v20;
  v20(v14, v19);
  v21 = v90;
  v22 = *(v90 + 104);
  v23 = v88;
  v68 = enum case for Font.Leading.tight(_:);
  v67 = v22;
  v22(v88);
  v76 = Font.leading(_:)();

  v24 = *(v21 + 8);
  v78 = v7;
  v90 = v21 + 8;
  v66 = v24;
  v24(v23, v7);
  KeyPath = swift_getKeyPath();
  v25 = v1 + *(type metadata accessor for ProminentPadSingleDescription(0) + 20);
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    v100 = v26 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v28 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v72 + 8))(v28, v73);
    LOBYTE(v26) = v100;
  }

  LODWORD(v72) = (v26 & 1) == 0;
  v29 = swift_getKeyPath();
  __src[72] = 0;
  v30 = 0x4014000000000000;
  if (v74)
  {
    v30 = 0;
  }

  v73 = v29;
  v74 = v30;
  v92[0] = sub_1005027C4(*(*(v1 + 32) + 16));
  v92[1] = v31;
  sub_10002D5A4();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v37 = v89;
  v71(v14, enum case for Font.TextStyle.footnote(_:), v89);
  sub_10001B350(v11, 1, 1, v70);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v11, &qword_100CA4020);
  v69(v14, v37);
  v38 = v88;
  v39 = v78;
  v67(v88, v68, v78);
  Font.leading(_:)();

  v66(v38, v39);
  v40 = Text.font(_:)();
  v42 = v41;
  LOBYTE(v39) = v43;

  sub_10010CD64(v32, v34, v36 & 1);

  LODWORD(v92[0]) = static HierarchicalShapeStyle.tertiary.getter();
  v44 = Text.foregroundStyle<A>(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10010CD64(v40, v42, v39 & 1);

  v51 = *(v84 + 36);
  v52 = enum case for BlendMode.plusLighter(_:);
  v53 = type metadata accessor for BlendMode();
  v54 = v85;
  (*(*(v53 - 8) + 104))(&v85[v51], v52, v53);
  *v54 = v44;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48 & 1;
  *(v54 + 24) = v50;
  LOBYTE(v52) = v107;
  LOBYTE(v51) = v106;
  v55 = v105;
  v56 = v87;
  sub_1000955E0(v54, v87, &qword_100CA4000);
  v57 = v86;
  *v86 = 0;
  *(v57 + 8) = v52;
  v58 = v81;
  v57[2] = v82;
  *(v57 + 24) = v51;
  v57[4] = v58;
  *(v57 + 40) = v55;
  v59 = v79;
  v57[6] = v80;
  v57[7] = v59;
  LOBYTE(v39) = v83;
  LOBYTE(v91[0]) = v83;
  memcpy(v91 + 1, __src, 0x47uLL);
  v60 = KeyPath;
  v61 = v76;
  v91[9] = KeyPath;
  v91[10] = v76;
  LOBYTE(v91[11]) = 0;
  LOBYTE(v46) = v72;
  BYTE1(v91[11]) = v72;
  *(&v91[11] + 2) = v103;
  HIWORD(v91[11]) = v104;
  v62 = v73;
  v91[12] = v73;
  v91[13] = 4;
  LOBYTE(v91[14]) = 0;
  memcpy(v57 + 8, v91, 0x71uLL);
  v57[23] = v74;
  *(v57 + 192) = 0;
  v63 = sub_10022C350(&qword_100CB59B0);
  sub_1000955E0(v56, v57 + *(v63 + 80), &qword_100CA4000);
  sub_1000955E0(v91, v92, &qword_100CB59B8);
  sub_1000180EC(v54, &qword_100CA4000);
  sub_1000180EC(v56, &qword_100CA4000);
  LOBYTE(v92[0]) = v39;
  memcpy(v92 + 1, __src, 0x47uLL);
  v92[9] = v60;
  v92[10] = v61;
  v93 = 0;
  v94 = v46;
  v95 = v103;
  v96 = v104;
  v97 = v62;
  v98 = 4;
  v99 = 0;
  return sub_1000180EC(v92, &qword_100CB59B8);
}

uint64_t sub_1003E5D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 24))
  {
  }

  sub_10002D5A4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_10010CD54(v3, v5, v13);

  sub_10010CD54(v10, v12, v15);

  sub_10010CD64(v10, v12, v15);

  sub_10010CD64(v3, v5, v18);
}

uint64_t sub_1003E5E7C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, _BYTE *a3@<X8>)
{
  *a3 = static Axis.Set.vertical.getter();
  sub_10022C350(a1);
  return a2(v3);
}

uint64_t sub_1003E5EE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB57C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10022C350(&qword_100CB57C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10022C350(&qword_100CB57D0);
  sub_1003E6128(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_10022C350(&qword_100CB57D8);
  sub_1003E6A30(a1, &v9[*(v17 + 44)]);
  sub_1000955E0(v15, v12, &qword_100CB57C8);
  sub_1000955E0(v9, v6, &qword_100CB57C0);
  sub_1000955E0(v12, a2, &qword_100CB57C8);
  v18 = sub_10022C350(&qword_100CB57E0);
  sub_1000955E0(v6, a2 + *(v18 + 48), &qword_100CB57C0);
  sub_1000180EC(v9, &qword_100CB57C0);
  sub_1000180EC(v15, &qword_100CB57C8);
  sub_1000180EC(v6, &qword_100CB57C0);
  return sub_1000180EC(v12, &qword_100CB57C8);
}

uint64_t sub_1003E6128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v91 = sub_10022C350(&qword_100CB57E8);
  __chkstk_darwin(v91);
  v90 = &v80 - v3;
  v103 = sub_10022C350(&qword_100CB5818);
  __chkstk_darwin(v103);
  v92 = &v80 - v4;
  v5 = sub_10022C350(&qword_100CB5820);
  __chkstk_darwin(v5 - 8);
  v105 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v80 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v94 = *(v9 - 8);
  KeyPath = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v99 = v132;
  v100 = v130;
  v97 = v135;
  v98 = v134;
  v138 = 1;
  v137 = v131;
  v136 = v133;
  v93 = a1;
  v15 = *a1;
  v16 = a1[1];
  v112 = v15;
  v113 = v16;
  v17 = sub_10002D5A4();

  v85 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.subheadline.getter();
  v23 = *(v12 + 104);
  v84 = enum case for Font.Leading.tight(_:);
  v86 = v12 + 104;
  v83 = v23;
  v23(v14);
  Font.leading(_:)();

  v24 = *(v12 + 8);
  v87 = v14;
  v88 = v12 + 8;
  v25 = v14;
  v26 = v93;
  v89 = v11;
  v82 = v24;
  v24(v25, v11);
  v101 = Text.font(_:)();
  v102 = v27;
  v106 = v28;
  v30 = v29;

  sub_10010CD64(v18, v20, v22 & 1);

  v31 = v26 + *(type metadata accessor for StandardDescription(0) + 20);
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    v124 = v32 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v34 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v32, 0);
    (*(v94 + 8))(v34, KeyPath);
    v32 = v124;
  }

  KeyPath = swift_getKeyPath();
  LODWORD(v94) = v30 & 1;
  v129 = v30 & 1;
  v125 = 0;
  v35 = v26[8];
  if (v35)
  {
    v81 = v26[7];
    v112 = v81;
    v113 = v35;

    v36 = Text.init<A>(_:)();
    v93 = v32;
    v38 = v37;
    v40 = v39;
    LODWORD(v112) = static HierarchicalShapeStyle.tertiary.getter();
    v41 = Text.foregroundStyle<A>(_:)();
    v43 = v42;
    v45 = v44;
    v80 = v46;
    sub_10010CD64(v36, v38, v40 & 1);

    v47 = *(sub_10022C350(&qword_100CA4000) + 36);
    v48 = enum case for BlendMode.plusLighter(_:);
    v49 = type metadata accessor for BlendMode();
    v50 = v90;
    (*(*(v49 - 8) + 104))(&v90[v47], v48, v49);
    *v50 = v41;
    *(v50 + 8) = v43;
    *(v50 + 16) = v45 & 1;
    *(v50 + 24) = v80;
    v51 = swift_getKeyPath();
    v52 = v50 + *(v91 + 36);
    *v52 = v51;
    *(v52 + 8) = 2;
    *(v52 + 16) = 0;
    v112 = v81;
    v113 = v35;
    *&v109 = 0x20A280E220;
    *(&v109 + 1) = 0xA500000000000000;
    v107 = 8236;
    v108 = 0xE200000000000000;
    v112 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v113 = v53;
    sub_1003E7AD8();
    v32 = v92;
    View.accessibilityLabel<A>(_:)();
    sub_1000180EC(v50, &qword_100CB57E8);

    static Font.footnote.getter();
    v54 = v87;
    v55 = v89;
    v83(v87, v84, v89);
    v56 = Font.leading(_:)();

    v82(v54, v55);
    v57 = swift_getKeyPath();
    v58 = v103;
    v59 = v104;
    v60 = (v32 + *(v103 + 36));
    *v60 = v57;
    v60[1] = v56;
    v61 = v32;
    LOBYTE(v32) = v93;
    sub_10002F758(v61, v59, &qword_100CB5818);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v58 = v103;
    v59 = v104;
  }

  sub_10001B350(v59, v62, 1, v58);
  v63 = (v32 & 1) == 0;
  LODWORD(v104) = v63;
  v64 = v138;
  v65 = v137;
  v66 = v136;
  v67 = v105;
  sub_1000955E0(v59, v105, &qword_100CB5820);
  v68 = v96;
  *v96 = 0;
  *(v68 + 8) = v64;
  v69 = v99;
  v68[2] = v100;
  *(v68 + 24) = v65;
  v68[4] = v69;
  *(v68 + 40) = v66;
  v70 = v97;
  v68[6] = v98;
  v68[7] = v70;
  v71 = v101;
  v72 = v102;
  *&v109 = v101;
  *(&v109 + 1) = v106;
  v73 = v94;
  LOBYTE(v110) = v94;
  *(&v110 + 1) = *v128;
  DWORD1(v110) = *&v128[3];
  *(&v110 + 1) = v102;
  LOBYTE(v111[0]) = 0;
  BYTE1(v111[0]) = v63;
  *(v111 + 2) = v126;
  WORD3(v111[0]) = v127;
  v74 = KeyPath;
  *(&v111[0] + 1) = KeyPath;
  *&v111[1] = 4;
  BYTE8(v111[1]) = 0;
  v75 = v109;
  v76 = v110;
  v77 = v111[0];
  *(v68 + 105) = *(v111 + 9);
  *(v68 + 5) = v76;
  *(v68 + 6) = v77;
  *(v68 + 4) = v75;
  v68[16] = 0x4014000000000000;
  *(v68 + 136) = 0;
  v78 = sub_10022C350(&qword_100CB5828);
  sub_1000955E0(v67, v68 + *(v78 + 80), &qword_100CB5820);
  sub_1000955E0(&v109, &v112, &qword_100CB5830);
  sub_1000180EC(v59, &qword_100CB5820);
  sub_1000180EC(v67, &qword_100CB5820);
  v112 = v71;
  v113 = v106;
  v114 = v73;
  *v115 = *v128;
  *&v115[3] = *&v128[3];
  v116 = v72;
  v117 = 0;
  v118 = v104;
  v119 = v126;
  v120 = v127;
  v121 = v74;
  v122 = 4;
  v123 = 0;
  return sub_1000180EC(&v112, &qword_100CB5830);
}

uint64_t sub_1003E6A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v81 = sub_10022C350(&qword_100CB57E8);
  __chkstk_darwin(v81);
  v80 = &v69 - v3;
  v88 = sub_10022C350(&qword_100CB57F0);
  __chkstk_darwin(v88);
  v82 = &v69 - v4;
  v5 = sub_10022C350(&qword_100CB57F8);
  __chkstk_darwin(v5 - 8);
  v90 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v69 - v8;
  KeyPath = type metadata accessor for EnvironmentValues();
  v83 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.Leading();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v95 = *a1;
  v96 = v14;
  v15 = sub_10002D5A4();

  v75 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.subheadline.getter();
  v21 = *(v11 + 104);
  v74 = enum case for Font.Leading.tight(_:);
  v76 = v11 + 104;
  v73 = v21;
  v21(v13);
  Font.leading(_:)();

  v22 = *(v11 + 8);
  v77 = v13;
  v79 = v10;
  v78 = v11 + 8;
  v72 = v22;
  v22(v13, v10);
  v86 = Text.font(_:)();
  v85 = v23;
  v25 = v24;
  v87 = v26;

  sub_10010CD64(v16, v18, v20 & 1);

  v27 = a1 + *(type metadata accessor for StandardDescription(0) + 20);
  v28 = *v27;
  if (v27[8] == 1)
  {
    v109 = v28 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = v71;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v28, 0);
    (*(v83 + 8))(v30, KeyPath);
    v28 = v109;
  }

  KeyPath = swift_getKeyPath();
  LODWORD(v83) = v25 & 1;
  v114 = v25 & 1;
  v110 = 0;
  v31 = a1[8];
  if (v31)
  {
    v70 = a1[7];
    v95 = v70;
    v96 = v31;

    v32 = Text.init<A>(_:)();
    v71 = v28;
    v34 = v33;
    v36 = v35;
    LODWORD(v95) = static HierarchicalShapeStyle.tertiary.getter();
    v37 = Text.foregroundStyle<A>(_:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_10010CD64(v32, v34, v36 & 1);

    v44 = *(sub_10022C350(&qword_100CA4000) + 36);
    v45 = enum case for BlendMode.plusLighter(_:);
    v46 = type metadata accessor for BlendMode();
    v47 = v80;
    (*(*(v46 - 8) + 104))(&v80[v44], v45, v46);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41 & 1;
    *(v47 + 24) = v43;
    v48 = swift_getKeyPath();
    v49 = v47 + *(v81 + 36);
    *v49 = v48;
    *(v49 + 8) = 2;
    *(v49 + 16) = 0;
    v95 = v70;
    v96 = v31;
    __src[0] = 0x20A280E220;
    __src[1] = 0xA500000000000000;
    v92 = 8236;
    v93 = 0xE200000000000000;
    v95 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v96 = v50;
    sub_1003E7AD8();
    v51 = v82;
    View.accessibilityLabel<A>(_:)();
    sub_1000180EC(v47, &qword_100CB57E8);

    static Font.caption2.getter();
    v52 = v77;
    v53 = v79;
    v73(v77, v74, v79);
    v28 = Font.leading(_:)();

    v72(v52, v53);
    v54 = swift_getKeyPath();
    v55 = (v51 + *(sub_10022C350(&qword_100CB5818) + 36));
    *v55 = v54;
    v55[1] = v28;
    LOBYTE(v28) = v71;
    v56 = v88;
    *(v51 + *(v88 + 36)) = 0x3FF0000000000000;
    v57 = v89;
    sub_10002F758(v51, v89, &qword_100CB57F0);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v57 = v89;
    v56 = v88;
  }

  sub_10001B350(v57, v58, 1, v56);
  v59 = (v28 & 1) == 0;
  LODWORD(v89) = v59;
  v60 = v90;
  sub_1000955E0(v57, v90, &qword_100CB57F8);
  v61 = v91;
  *v91 = 0;
  *(v61 + 8) = 0;
  v62 = v86;
  __src[0] = v86;
  v63 = v85;
  __src[1] = v85;
  v64 = v83;
  LOBYTE(__src[2]) = v83;
  *(&__src[2] + 1) = *v113;
  HIDWORD(__src[2]) = *&v113[3];
  v65 = v87;
  __src[3] = v87;
  LOBYTE(__src[4]) = 0;
  BYTE1(__src[4]) = v59;
  *(&__src[4] + 2) = v111;
  HIWORD(__src[4]) = v112;
  v66 = KeyPath;
  __src[5] = KeyPath;
  __src[6] = 4;
  LOBYTE(__src[7]) = 0;
  *(&__src[7] + 1) = *v115;
  HIDWORD(__src[7]) = *&v115[3];
  __src[8] = 0x4000000000000000;
  memcpy(v61 + 2, __src, 0x48uLL);
  v61[11] = 0;
  *(v61 + 96) = 0;
  v67 = sub_10022C350(&qword_100CB5800);
  sub_1000955E0(v60, v61 + *(v67 + 80), &qword_100CB57F8);
  sub_1000955E0(__src, &v95, &qword_100CB5808);
  sub_1000180EC(v57, &qword_100CB57F8);
  sub_1000180EC(v60, &qword_100CB57F8);
  v95 = v62;
  v96 = v63;
  v97 = v64;
  *v98 = *v113;
  *&v98[3] = *&v113[3];
  v99 = v65;
  v100 = 0;
  v101 = v89;
  v102 = v111;
  v103 = v112;
  v104 = v66;
  v105 = 4;
  v106 = 0;
  *&v107[3] = *&v115[3];
  *v107 = *v115;
  v108 = 0x4000000000000000;
  return sub_1000180EC(&v95, &qword_100CB5808);
}

uint64_t sub_1003E745C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1003E74BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003E753C()
{
  result = type metadata accessor for SevereAlertComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003E75B0()
{
  result = qword_100CB5638;
  if (!qword_100CB5638)
  {
    sub_10022E824(&qword_100CB5598);
    sub_1003E766C();
    sub_1003E7798(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5638);
  }

  return result;
}

unint64_t sub_1003E766C()
{
  result = qword_100CB5640;
  if (!qword_100CB5640)
  {
    sub_10022E824(&qword_100CB5648);
    sub_10022E824(&qword_100CB5568);
    sub_100006F64(&qword_100CB5590, &qword_100CB5568);
    swift_getOpaqueTypeConformance2();
    sub_1003E7798(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5640);
  }

  return result;
}

uint64_t sub_1003E7798(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003E783C()
{
  result = qword_100CB5670;
  if (!qword_100CB5670)
  {
    sub_10022E824(&qword_100CB5660);
    sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription);
    sub_1003E7798(&qword_100CB5680, type metadata accessor for ProminentPadDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5670);
  }

  return result;
}

uint64_t sub_1003E7950()
{
  result = type metadata accessor for SevereAlertComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003E79E4()
{
  result = qword_100CB57A8;
  if (!qword_100CB57A8)
  {
    sub_10022E824(&qword_100CB57B0);
    sub_1003E783C();
    sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB57A8);
  }

  return result;
}

unint64_t sub_1003E7AD8()
{
  result = qword_100CB5810;
  if (!qword_100CB5810)
  {
    sub_10022E824(&qword_100CB57E8);
    sub_1003E7B90();
    sub_100006F64(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5810);
  }

  return result;
}

unint64_t sub_1003E7B90()
{
  result = qword_100CA4010;
  if (!qword_100CA4010)
  {
    sub_10022E824(&qword_100CA4000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4010);
  }

  return result;
}

uint64_t sub_1003E7C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProminentPadBulletedDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E7D08()
{
  result = type metadata accessor for SevereAlertComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003E7DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ProminentPadBulletedDescription(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003E492C(a1, v6, a2);
}

void sub_1003E7E48()
{
  type metadata accessor for ConditionDetailPlatterViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1003E7F34();
    if (v1 <= 0x3F)
    {
      sub_1000455E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1003E7F34()
{
  result = qword_100CB5AC0;
  if (!qword_100CB5AC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB5AC0);
  }

  return result;
}

uint64_t sub_1003E7FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Optional();
  sub_1000037E8();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_1003E8038()
{
  sub_100025148();
  sub_1000037E8();
  sub_100003828();
  v3 = __chkstk_darwin(v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return sub_100020F10();
}

uint64_t sub_1003E80F0()
{
  sub_100014594();
  memcpy(__dst, v2, 0x49uLL);
  v3 = sub_10001920C();
  memmove(v3, v4, 0x49uLL);
  v5 = *(v1 + 8);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  v7 = sub_10022C350(&qword_100CB5E80);
  sub_10018CF14(*(v1 + 16), v0 + v7[16], &qword_100CA6430);
  sub_10003B9C4(v0 + v7[20]);
  v8 = v0 + v7[24];
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v8 = v10;
  *(v8 + 8) = v9;
  v11 = sub_10000E9C4();
  sub_10018CF14(v11, v0 + v12, &qword_100CA6428);
  return sub_10018CF14(__dst, &v14, &qword_100CA6438);
}

uint64_t sub_1003E81E8(uint64_t a1)
{
  v2 = sub_100022B14(a1);
  sub_1003F0BEC(v2, v3, type metadata accessor for TemperatureAveragesHeroChartView);
  sub_10022C350(&qword_100CB5E90);
  v4 = sub_10000412C();
  sub_10018CF14(v4, v1 + v5, &qword_100CA71A8);
  v6 = sub_1000206F0();
  sub_1003F0BEC(v6, v1 + v7, type metadata accessor for MonthlyAveragesChart);
  v8 = sub_1000419D8();
  sub_10018CF14(v8, v1 + v9, &qword_100CA7190);
  v10 = sub_100037A8C();
  sub_1000283EC(v10, v11);
  v12 = sub_10000E9C4();
  return sub_1000283EC(v12, v13);
}

double sub_1003E82C0@<D0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000183F4(a1, a2);
  v4 = sub_10022C350(&qword_100CB5E98);
  sub_1003F0BEC(v2[1], v3 + v4[12], type metadata accessor for CalendarHeaderView);
  sub_100005B94(v3 + v4[16]);
  sub_10018CF14(v5, v3 + v4[20], &qword_100CA7288);
  v6 = v2[5];
  sub_100005B94(v3 + v4[24]);
  v7 = v4[28];
  sub_10022C350(&qword_100CA7280);
  sub_100003A9C();
  (*(v8 + 16))(v3 + v7, v6);
  v9 = v2[7];
  sub_100005B94(v3 + v4[32]);
  v10 = v4[36];
  sub_10022C350(&qword_100CA7278);
  sub_100003A9C();
  (*(v11 + 16))(v3 + v10, v9);
  *&result = sub_100005B94(v3 + v4[40]).n128_u64[0];
  return result;
}

uint64_t sub_1003E8408()
{
  sub_10000C778();
  sub_10003A1A4();
  v7 = *(v6 + 32);
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  *(v4 + 32) = v7;
  v8 = sub_10022C350(&qword_100CB5E40);
  sub_10018CF14(*(v5 + 8), v4 + v8[12], &qword_100CACF80);
  sub_100008514(v4 + v8[16]);
  sub_1003F0BEC(v9, v4 + v8[20], type metadata accessor for FeelsLikeComponentVarianceView);
  sub_10003B9C4(v4 + v8[24]);
  v10 = v4 + v8[28];
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v8) = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  LOBYTE(v11) = *(v11 + 48);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v8;
  *(v10 + 24) = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  *(v10 + 48) = v11;
  sub_100030410();

  sub_10010CD54(v12, v13, v8);

  sub_10000536C();
}

uint64_t sub_1003E852C()
{
  sub_100014594();
  sub_10022C350(&qword_100CAD1E0);
  sub_100003A9C();
  v2 = sub_10001920C();
  v3(v2);
  v4 = sub_10022C350(&qword_100CB5CD8);
  v5 = v4[12];
  v6 = v1[1];
  v7 = type metadata accessor for Divider();
  sub_1000037E8();
  v25 = *(v8 + 16);
  v25(v0 + v5, v6, v7);
  v9 = v0 + v4[16];
  v10 = v1[2];
  v11 = v1[3];
  v28 = *(v10 + 8);
  v29 = *v10;
  v12 = *(v10 + 16);
  v27 = v12;
  v30 = *(v10 + 24);
  *v9 = *v10;
  *(v9 + 8) = v28;
  *(v9 + 16) = v12;
  *(v9 + 24) = v30;
  v13 = v4[20];
  v14 = sub_10022C350(&qword_100CAD1D0);
  sub_1000037E8();
  v16 = *(v15 + 16);
  v16(v0 + v13, v11, v14);
  v16(v0 + v4[24], v1[4], v14);
  v25(v0 + v4[28], v1[5], v7);
  v17 = v0 + v4[32];
  v18 = v1[6];
  v19 = v1[7];
  v21 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v14) = *(v18 + 16);
  v26 = *(v18 + 24);
  *v17 = *v18;
  *(v17 + 8) = v20;
  *(v17 + 16) = v14;
  *(v17 + 24) = v26;
  v22 = v4[36];
  sub_10022C350(&qword_100CAD1C0);
  sub_100003A9C();
  (*(v23 + 16))(v0 + v22, v19);
  v25(v0 + v4[40], v1[8], v7);
  sub_10018CF14(v1[9], v0 + v4[44], &qword_100CAD1B0);
  sub_10010CD54(v29, v28, v27);

  sub_10010CD54(v21, v20, v14);
}

uint64_t sub_1003E87A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, sizeof(__dst));
  memcpy(__src, v4, 0x90uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v5[1];
  *&__src[144] = *v5;
  *&__src[160] = v7;
  v8 = v5[3];
  *&__src[176] = v5[2];
  *&__src[192] = v8;
  memcpy(v13, v6, sizeof(v13));
  memcpy(&__src[208], v6, 0x90uLL);
  memcpy(&__src[352], *(a1 + 24), 0x41uLL);
  memcpy(a2, __src, 0x1A1uLL);
  sub_10018CF14(__dst, v10, &qword_100CB5BF0);
  return sub_10018CF14(v13, v10, &qword_100CB5BF0);
}

uint64_t sub_1003E88A8(uint64_t a1)
{
  v3 = sub_100022B14(a1);
  sub_10018CF14(v3, v4, &qword_100CB5E00);
  sub_10022C350(&qword_100CB5E08);
  v5 = sub_10000412C();
  sub_1000283EC(v5, v6);
  v7 = sub_1000206F0();
  sub_1000283EC(v7, v8);
  v9 = sub_1000419D8();
  sub_1000283EC(v9, v10);
  v11 = sub_100037A8C();
  sub_1000283EC(v11, v12);
  v13 = sub_10000E9C4();
  sub_1000283EC(v13, v14);
  return sub_1000283EC(*(v1 + 48), *(v2 + 128));
}

uint64_t sub_1003E8948(uint64_t a1)
{
  v2 = sub_100022B14(a1);
  sub_1003F0BEC(v2, v3, type metadata accessor for ConditionDetailMapView);
  sub_10022C350(&qword_100CB5D50);
  v4 = sub_10000412C();
  sub_10018CF14(v4, v1 + v5, &qword_100CB5D58);
  v6 = sub_1000206F0();
  sub_10018CF14(v6, v1 + v7, &qword_100CA7190);
  v8 = sub_1000419D8();
  sub_10018CF14(v8, v1 + v9, &qword_100CB5D60);
  v10 = sub_100037A8C();
  sub_10018CF14(v10, v1 + v11, &qword_100CB5D68);
  v12 = sub_10000E9C4();
  return sub_10018CF14(v12, v1 + v13, &qword_100CB5D70);
}

uint64_t sub_1003E8A2C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v17 = *(*a1 + 8);
  sub_1000C8750(v18);
  sub_1000C8750(&__src[7]);
  v5 = a1[2];
  v6 = *(v5 + 1);
  *&v15[7] = *v5;
  *&v15[23] = v6;
  v7 = *(v5 + 3);
  *&v15[39] = *(v5 + 2);
  *&v15[55] = v7;
  sub_1000C8750(v19);
  v8 = a1[4];
  v9 = *(v8 + 1);
  *&v14[7] = *v8;
  *&v14[23] = v9;
  v10 = *(v8 + 3);
  *&v14[39] = *(v8 + 2);
  *&v14[55] = v10;
  LOBYTE(v8) = v17;
  *a2 = v4;
  *(a2 + 8) = v8;
  memcpy((a2 + 9), __src, 0x68uLL);
  memcpy((a2 + 113), v15, 0x47uLL);
  sub_1000C8750((a2 + 184));
  memcpy((a2 + 281), v14, 0x47uLL);
  sub_10002FEBC(v18, v11);
  return sub_10002FEBC(v19, v12);
}

uint64_t sub_1003E8B34()
{
  sub_100014594();
  sub_10022C350(&qword_100CB5D78);
  sub_100003A9C();
  v4 = sub_10001920C();
  v5(v4);
  sub_10022C350(&qword_100CB5D80);
  sub_100021454();
  memcpy(__dst, v3, 0xD2uLL);
  v6 = sub_100016380();
  memmove(v6, v7, 0xD2uLL);
  v8 = sub_1000206F0();
  sub_10018CF14(v8, v0 + v9, &qword_100CB5D88);
  v10 = sub_1000419D8();
  sub_10018CF14(v10, v0 + v11, &qword_100CB5D90);
  v12 = sub_100037A8C();
  sub_10018CF14(v12, v0 + v13, &qword_100CB5D98);
  v14 = sub_10000E9C4();
  sub_10018CF14(v14, v0 + v15, &qword_100CB5DA0);
  sub_10018CF14(*(v1 + 48), v0 + *(v2 + 128), &qword_100CB5DA8);
  return sub_1003F0B44(__dst, &v17);
}

uint64_t sub_1003E8C74()
{
  sub_100014594();
  sub_10022C350(&qword_100CB5D00);
  sub_100003A9C();
  v3 = sub_10001920C();
  v4(v3);
  sub_10022C350(&qword_100CB5D08);
  sub_100021454();
  sub_10022C350(&qword_100CB5D10);
  sub_100003A9C();
  v5 = sub_100016380();
  v6(v5);
  v7 = sub_1000206F0();
  sub_10018CF14(v7, v0 + v8, &qword_100CB5D18);
  sub_10022C350(&qword_100CB5D20);
  sub_100003A9C();
  v9 = sub_100016380();
  v10(v9);
  v11 = sub_100037A8C();
  sub_10018CF14(v11, v0 + v12, &qword_100CB5D28);
  v13 = sub_10000E9C4();
  sub_10018CF14(v13, v0 + v14, &qword_100CB5D30);
  v15 = *(v2 + 128);
  v16 = *(v1 + 48);
  sub_10022C350(&qword_100CB5D38);
  sub_100003A9C();
  v18 = *(v17 + 16);

  return v18(v0 + v15, v16);
}

uint64_t sub_1003E8E10(uint64_t a1)
{
  v4 = sub_100022B14(a1);
  sub_10018CF14(v4, v5, &qword_100CB5E48);
  sub_10022C350(&qword_100CB5E50);
  v6 = sub_10000412C();
  sub_10018CF14(v6, v1 + v7, &qword_100CB5E58);
  v8 = sub_1000206F0();
  sub_10018CF14(v8, v1 + v9, &qword_100CB5E60);
  v10 = sub_1000419D8();
  sub_10018CF14(v10, v1 + v11, &qword_100CB5E68);
  v12 = sub_100037A8C();
  sub_10018CF14(v12, v1 + v13, &qword_100CB5E70);
  v14 = sub_10000E9C4();
  sub_10018CF14(v14, v1 + v15, &qword_100CA7190);
  return sub_10018CF14(*(v2 + 48), v1 + *(v3 + 128), &qword_100CB5E78);
}

uint64_t sub_1003E8F10()
{
  sub_10003A1A4();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v6 = sub_10022C350(&qword_100CB5E20);
  v7 = v6[12];
  v8 = *(v5 + 8);
  sub_10022C350(&qword_100CB5E28);
  sub_100003A9C();
  (*(v9 + 16))(v4 + v7, v8);
  sub_100008514(v4 + v6[16]);
  sub_10018CF14(v10, v4 + v6[20], &qword_100CB5E30);
  v11 = *(v5 + 40);
  sub_100008514(v4 + v6[24]);
  v12 = v6[28];
  memcpy(__dst, v11, sizeof(__dst));
  memmove((v4 + v12), v11, 0x48uLL);
  sub_100030410();

  return sub_10018CF14(__dst, &v14, &qword_100CB5E38);
}

uint64_t sub_1003E9048(uint64_t a1)
{
  v4 = sub_100022B14(a1);
  sub_10018CF14(v4, v5, &qword_100CB5EB0);
  sub_10022C350(&qword_100CB5EB8);
  v6 = sub_10000412C();
  sub_10018CF14(v6, v1 + v7, &qword_100CB5EC0);
  v8 = sub_1000206F0();
  sub_10018CF14(v8, v1 + v9, &qword_100CB5EC8);
  v10 = sub_1000419D8();
  sub_10018CF14(v10, v1 + v11, &qword_100CB5ED0);
  v12 = sub_100037A8C();
  sub_10018CF14(v12, v1 + v13, &qword_100CB5ED8);
  v14 = *(v3 + 112);
  v15 = *(v2 + 40);
  sub_10022C350(&qword_100CB5EE0);
  sub_100003A9C();
  v17 = *(v16 + 16);

  return v17(v1 + v14, v15);
}

uint64_t sub_1003E915C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v50 = **a1;
  v51 = (*a1)[1];
  v3 = (*a1)[3];
  v4 = (*a1)[5];
  v48 = (*a1)[6];
  v49 = (*a1)[4];
  v46 = *v2;
  v47 = v2[1];
  v29 = *(v2 + 16);
  v45 = v2[4];
  v27 = v2[5];
  v28 = v2[3];
  v44 = v2[6];
  v6 = a1[2];
  v5 = a1[3];
  v37 = v6[1];
  v38 = *v6;
  v7 = v6[2];
  v39 = v6[3];
  v52 = *v5;
  v53 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = v5[5];
  v54 = v5[4];
  v55 = v5[6];
  v11 = a1[4];
  v12 = a1[5];
  v30 = *v11;
  v13 = *v11;
  v56 = v11[1];
  v57 = v11[2];
  v58 = v11[3];
  v14 = *v12;
  v31 = v12[1];
  v15 = *(v12 + 16);
  v17 = v12[3];
  v18 = v12[5];
  v16 = v12[4];
  v32 = v12[6];
  v19 = a1[6];
  v20 = a1[7];
  v33 = v19[1];
  v34 = *v19;
  v59 = v19[2];
  v60 = v19[3];
  v21 = *v20;
  v35 = v20[1];
  LOBYTE(v19) = *(v20 + 16);
  v22 = v20[3];
  v24 = v20[5];
  v23 = v20[4];
  v36 = v20[6];
  v25 = a1[8];
  v42 = v25[1];
  v43 = *v25;
  v40 = v25[3];
  v41 = v25[2];
  *(a2 + 16) = *(*a1 + 16);
  *(a2 + 24) = v3;
  *(a2 + 40) = v4;
  *(a2 + 72) = v29;
  *(a2 + 80) = v28;
  *(a2 + 96) = v27;
  *(a2 + 160) = v8;
  *(a2 + 168) = v9;
  *(a2 + 184) = v10;
  *(a2 + 248) = v15;
  *(a2 + 256) = v17;
  *(a2 + 272) = v18;
  *(a2 + 336) = v19;
  *(a2 + 344) = v22;
  *(a2 + 360) = v24;
  *a2 = v50;
  *(a2 + 8) = v51;
  *(a2 + 32) = v49;
  *(a2 + 48) = v48;
  *(a2 + 56) = v46;
  *(a2 + 64) = v47;
  *(a2 + 88) = v45;
  *(a2 + 104) = v44;
  *(a2 + 112) = v38;
  *(a2 + 120) = v37;
  *(a2 + 128) = v7;
  *(a2 + 136) = v39;
  *(a2 + 144) = v52;
  *(a2 + 152) = v53;
  *(a2 + 176) = v54;
  *(a2 + 192) = v55;
  *(a2 + 200) = v13;
  *(a2 + 208) = v56;
  *(a2 + 216) = v57;
  *(a2 + 224) = v58;
  *(a2 + 232) = v14;
  *(a2 + 240) = v31;
  *(a2 + 264) = v16;
  *(a2 + 280) = v32;
  *(a2 + 288) = v34;
  *(a2 + 296) = v33;
  *(a2 + 304) = v59;
  *(a2 + 312) = v60;
  *(a2 + 320) = v21;
  *(a2 + 328) = v35;
  *(a2 + 352) = v23;
  *(a2 + 368) = v36;
  *(a2 + 376) = v43;
  *(a2 + 384) = v42;
  *(a2 + 392) = v41;
  *(a2 + 400) = v40;

  sub_1003F0BA0(v38, v37);

  sub_1003F0BA0(v30, v56);

  sub_1003F0BA0(v34, v33);

  return sub_1003F0BA0(v43, v42);
}

uint64_t sub_1003E9448()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = (*v0)[3];
  *v2 = **v0;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  *(v2 + 3) = v6;
  v7 = sub_10022C350(&qword_100CB5CE0);
  sub_10018CF14(v1[1], &v3[v7[12]], &qword_100CB5CE8);
  v8 = v1[3];
  sub_100005B94(&v3[v7[16]]);
  v9 = v7[20];
  sub_10022C350(&qword_100CB5CF0);
  sub_100003A9C();
  (*(v10 + 16))(&v3[v9], v8);
  sub_100008514(&v3[v7[24]]);
  sub_10018CF14(v11, &v3[v7[28]], &qword_100CB5CF8);
  sub_100003940();
  sub_10000536C();

  return sub_100148118(v12, v13, v14, v15);
}

uint64_t sub_1003E9560@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = **a1;
  v45 = *(*a1 + 8);
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *v3;
  *(v47 + 15) = *(v3 + 47);
  v46[1] = v6;
  v47[0] = v5;
  v46[0] = v7;
  v8 = *v3;
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  *(&v44[3] + 6) = *(v3 + 47);
  *(&v44[2] + 7) = v10;
  *(&v44[1] + 7) = v9;
  *(v44 + 7) = v8;
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  *&__src[53] = v11[3];
  *&__src[37] = v15;
  *&__src[21] = v14;
  *&__src[5] = v13;
  v16 = *v12;
  v17 = *(v12 + 1);
  v18 = *(v12 + 2);
  *(v49 + 15) = *(v12 + 47);
  v48[1] = v17;
  v49[0] = v18;
  v48[0] = v16;
  v19 = a1[4];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v19) = v45;
  *a2 = v4;
  *(a2 + 8) = v19;
  v22 = v44[0];
  v23 = v44[1];
  v24 = v44[2];
  *(a2 + 51) = *(&v44[2] + 10);
  *(a2 + 41) = v24;
  *(a2 + 25) = v23;
  *(a2 + 9) = v22;
  memcpy((a2 + 67), __src, 0x45uLL);
  v25 = *(v12 + 1);
  *(a2 + 136) = *v12;
  *(a2 + 152) = v25;
  *(a2 + 168) = *(v12 + 2);
  *(a2 + 183) = *(v12 + 47);
  *(a2 + 192) = v20;
  *(a2 + 200) = v21;
  sub_10003712C(v46, v26, v27, v28, v29, v30, v31, v32, v41);
  return sub_10003712C(v48, v33, v34, v35, v36, v37, v38, v39, v42);
}

uint64_t sub_1003E96A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 8);
  v3 = *a1[1];
  v4 = a1[2];
  v5 = *a1[3];
  v6 = a1[4];
  v7 = *v6;
  v12 = *(v6 + 8);
  *a2 = **a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  *(a2 + 72) = v4[3];
  *(a2 + 56) = v10;
  *(a2 + 40) = v9;
  *(a2 + 24) = v8;
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
  *(a2 + 104) = v12;
}

void sub_1003E9738()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  memcpy(__dst, *v0, sizeof(__dst));
  memcpy(__src, v4, sizeof(__src));
  v5 = v1[1];
  v6 = v1[2];
  v7 = *v5;
  v18 = *(v5 + 1);
  v19 = *(v5 + 3);
  v23 = *(v5 + 16);
  v20 = v23;
  v8 = v6[1];
  v26 = *v6;
  v27 = v8;
  v9 = v6[3];
  v28 = v6[2];
  v29 = v9;
  v10 = v1[3];
  memcpy(v25, v10, sizeof(v25));
  v11 = v1[4];
  v12 = *v11;
  v13 = *(v11 + 1);
  v15 = *(v11 + 3);
  v22 = *(v11 + 16);
  v14 = v22;
  LOBYTE(v4) = v23;
  memcpy(v3, __src, 0xE8uLL);
  *(v3 + 232) = v7;
  *(v3 + 240) = v18;
  *(v3 + 248) = v4;
  *(v3 + 256) = v19;
  v16 = v27;
  *(v3 + 264) = v26;
  *(v3 + 280) = v16;
  v17 = v29;
  *(v3 + 296) = v28;
  *(v3 + 312) = v17;
  memcpy((v3 + 328), v10, 0xE8uLL);
  *(v3 + 560) = v12;
  *(v3 + 568) = v13;
  *(v3 + 576) = v14;
  *(v3 + 584) = v15;
  sub_10018CF14(__dst, v21, &qword_100CB5DF8);
  sub_10010CD54(v7, v18, v20);

  sub_10018CF14(v25, v21, &qword_100CB5DF8);
  sub_10010CD54(v12, v13, v14);

  sub_10000536C();
}

uint64_t sub_1003E98B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 24);
  v6 = *(v3 + 16);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v21 = *(v8 + 8);
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[3];
  v20 = *(v9 + 16);
  v14 = a1[4];
  v15 = *(*a1 + 48);
  *(a2 + 32) = *(*a1 + 32);
  *(a2 + 48) = v15;
  v16 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v16;
  *(a2 + 64) = v5;
  *(a2 + 72) = v4;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  *(a2 + 96) = v10;
  *(a2 + 104) = v21;
  *(a2 + 112) = v11;
  *(a2 + 120) = v12;
  *(a2 + 128) = v20;
  *(a2 + 136) = v13;
  v17 = v14[1];
  *(a2 + 144) = *v14;
  *(a2 + 160) = v17;
  v18 = v14[3];
  *(a2 + 176) = v14[2];
  *(a2 + 192) = v18;
  sub_10010CD54(v5, v4, v6);

  sub_100030410();
}

uint64_t sub_1003E9984()
{
  sub_100014594();
  sub_10022C350(&qword_100CB5D40);
  sub_100003A9C();
  v1 = sub_10001920C();
  v2(v1);
  sub_10022C350(&qword_100CB5D48);
  sub_100021454();
  sub_10022C350(&qword_100CB5D10);
  sub_100003A9C();
  v3 = sub_100016380();
  v4(v3);
  v5 = sub_1000206F0();
  sub_10018CF14(v5, v0 + v6, &qword_100CB5D18);
  sub_10022C350(&qword_100CB5D20);
  sub_100003A9C();
  v7 = sub_100016380();
  v8(v7);
  v9 = sub_100037A8C();
  sub_10018CF14(v9, v0 + v10, &qword_100CB5D28);
  v11 = sub_10000E9C4();
  return sub_10018CF14(v11, v0 + v12, &qword_100CB5D30);
}

uint64_t sub_1003E9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  v9 = v4[1];
  v22 = *v4;
  v23 = v9;
  v10 = v4[3];
  v24 = v4[2];
  v25 = v10;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = v11[1];
  sub_100036CFC();
  memcpy(__dst, v12, sizeof(__dst));
  v15 = v20[96];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v16 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v16;
  v17 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v17;
  *(a2 + 96) = v13;
  *(a2 + 104) = v14;
  *(a2 + 112) = v15;
  *(a2 + 120) = v19;
  memcpy((a2 + 128), v12, 0x60uLL);
  sub_100148118(v5, v6, v7, v8);
  sub_10010CD54(v13, v14, v2);

  return sub_10018CF14(__dst, v20, &qword_100CB5EA0);
}

uint64_t sub_1003E9BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = **a1;
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 16);
  v9 = *(*a1 + 24);
  v10 = v5[1];
  v22 = *v5;
  v23 = v10;
  v11 = v5[3];
  v24 = v5[2];
  v25 = v11;
  v12 = *(a1 + 16);
  memcpy(__dst, v12, sizeof(__dst));
  v13 = *(a1 + 24);
  v14 = *v13;
  v15 = v13[1];
  sub_100036CFC();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  v16 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v16;
  v17 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v17;
  memcpy((a2 + 96), v12, 0x60uLL);
  *(a2 + 192) = v14;
  *(a2 + 200) = v15;
  *(a2 + 208) = v2;
  *(a2 + 216) = v19;
  sub_100148118(v6, v7, v8, v9);
  sub_10018CF14(__dst, v20, &qword_100CB5EA8);
  sub_10010CD54(v14, v15, v2);
}

uint64_t sub_1003E9CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[3];
  v21 = *(v2 + 16);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *v10;
  v13 = *(v10 + 8);
  v15 = *(v10 + 24);
  v14 = *(v10 + 16);
  v17 = *v11;
  v16 = v11[1];
  v20 = v11[2];
  v19 = v11[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v21;
  *(a2 + 56) = v9;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v17;
  *(a2 + 104) = v16;
  *(a2 + 112) = v20;
  *(a2 + 120) = v19;
  sub_10010CD54(v4, v3, v5);

  sub_100030410();

  sub_10010CD54(v12, v13, v14);

  return sub_100148118(v17, v16, v20, v19);
}

uint64_t sub_1003E9DEC@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v14 = *(*a1 + 8);
  sub_1000D3E84(v15);
  sub_1000D3E84(&__src[7]);
  sub_1000D3E84(v16);
  sub_1000D3E84(&v12[5]);
  v5 = a1[3];
  v6 = *(v5 + 1);
  *&v11[5] = *v5;
  *&v11[21] = v6;
  v7 = *(v5 + 3);
  *&v11[37] = *(v5 + 2);
  *&v11[53] = v7;
  LOBYTE(v5) = v14;
  *a2 = v4;
  *(a2 + 8) = v5;
  memcpy((a2 + 9), __src, 0x62uLL);
  memcpy((a2 + 107), v12, 0x60uLL);
  memcpy((a2 + 203), v11, 0x45uLL);
  sub_10002FEBC(v15, v8);
  return sub_10002FEBC(v16, v9);
}

uint64_t sub_1003E9EE4@<X0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000183F4(a1, a2);
  v4 = sub_10022C350(&qword_100CB5DB0);
  sub_10018CF14(*(v2 + 8), v3 + v4[12], &qword_100CB5DB8);
  sub_10000CA4C(v3 + v4[16]);
  sub_1000B9918();
  memcpy(v5, v6, v7);
  sub_1000B9918();
  memmove(v8, v9, v10);
  sub_10000CA4C(v3 + v4[24]);
  sub_1000B9918();
  memcpy(v11, v12, v13);
  sub_1000B9918();
  memmove(v14, v15, v16);
  sub_10018CF14(*(v2 + 48), v3 + v4[32], &qword_100CB5DC0);
  sub_100005B94(v3 + v4[36]);
  sub_10003712C(v34, v17, v18, v19, v20, v21, v22, v23, v32);
  return sub_10003712C(v35, v24, v25, v26, v27, v28, v29, v30, v33);
}

uint64_t sub_1003E9FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, *a1, 0x80uLL);
  v4 = *(a1 + 8);
  memcpy(v15, v4, 0x4AuLL);
  memcpy(&__dst[128], v4, 0x4AuLL);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v5;
  v8 = *(v5 + 8);
  v10 = *(v5 + 24);
  v13 = *(v5 + 16);
  v9 = v13;
  memcpy(a2, __dst, 0xD0uLL);
  *(a2 + 208) = v7;
  *(a2 + 216) = v8;
  *(a2 + 224) = v9;
  *(a2 + 232) = v10;
  memcpy((a2 + 240), v6, 0x80uLL);
  sub_10018CF14(v15, v12, &qword_100CB5E18);
  sub_10010CD54(v7, v8, v9);
}

double sub_1003EA0EC()
{
  v1 = sub_10022C350(&qword_100CAE8E8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v5 = *(v0 + *(v4 + 40));
  sub_10018CF14(v0 + *(v4 + 24), v3, &qword_100CAE8E8);
  v6 = type metadata accessor for WeatherDescription();
  v7 = sub_100024D10(v3, 1, v6) != 1;
  sub_1000180EC(v3, &qword_100CAE8E8);
  return sub_100954A6C(v7, v5);
}

void sub_1003EA1D4()
{
  sub_10000C778();
  v93 = v0;
  v2 = v1;
  v86 = v1;
  v92 = v3;
  v90 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v91 = (v6 - v5);
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v88 = v8;
  v89 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  sub_10022E824(&qword_100CB5AD8);
  sub_10022E824(&qword_100CB5AE0);
  sub_10022E824(&qword_100CB5AE8);
  sub_10022E824(&qword_100CB5AF0);
  v84 = *(v2 + 16);
  type metadata accessor for Optional();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000E9D0();
  type metadata accessor for Group();
  sub_10022E824(&qword_100CB5AF8);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB5B00);
  sub_100005BA8();
  swift_getTupleTypeMetadata3();
  sub_10000E9D0();
  v76 = type metadata accessor for TupleView();
  sub_10001781C();
  v11 = type metadata accessor for VStack();
  sub_1000037C4();
  v80 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v79 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_100003990(&v68 - v19);
  v20 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v78 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_100003990(&v68 - v23);
  sub_10001377C();
  WitnessTable = swift_getWitnessTable();
  v105 = WitnessTable;
  v106 = &protocol witness table for _FlexFrameLayout;
  v70 = swift_getWitnessTable();
  v103 = v70;
  v104 = &protocol witness table for _TransactionModifier;
  v71 = swift_getWitnessTable();
  v101 = v20;
  v102 = v71;
  v72 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v73 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  type metadata accessor for AccessibilityAttachmentModifier();
  v29 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v83 = v30;
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v68 - v32;
  type metadata accessor for AutomationInfoViewModifier();
  v77 = v29;
  v34 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v85 = v35;
  __chkstk_darwin(v36);
  v81 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  sub_100003990(&v68 - v39);
  static HorizontalAlignment.leading.getter();
  v40 = *(v86 + 24);
  v94 = v84;
  v95 = v40;
  v96 = v93;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v41 = v75;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000E73C();
  v42(v15, v11);
  v43 = v74;
  View.transaction(_:)();
  sub_10000E73C();
  v44 = v16;
  v45 = v33;
  v46(v41, v44);
  v47 = v87;
  static AccessibilityChildBehavior.contain.getter();
  v48 = v71;
  View.accessibilityElement(children:)();
  (*(v88 + 8))(v47, v89);
  sub_10000E73C();
  v49(v43, v20);
  v101 = v20;
  v102 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  sub_10000E73C();
  v51(v28, OpaqueTypeMetadata2);
  if (*(v93 + 32))
  {
    v52 = *(v93 + 24);
    v53 = *(v93 + 32);
  }

  else if (*(v93 + 16) < 2u || *v93 ^ 1 | *(v93 + 8))
  {
    v52 = 0;
    v53 = 0xE000000000000000;
  }

  else
  {
    v53 = 0xE400000000000000;
    v52 = 1937204558;
  }

  v54 = v91;
  *v91 = v52;
  *(v54 + 8) = v53;
  *(v54 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_1000497AC();
  v57 = sub_1003F0910(v55, v56);
  v99 = OpaqueTypeConformance2;
  v100 = v57;

  sub_10004E558();
  v58 = v77;
  v59 = swift_getWitnessTable();
  v60 = v81;
  sub_1004C72B0(v54);
  sub_1003F0AEC(v54, type metadata accessor for AutomationInfo);
  sub_10000E73C();
  v61(v45, v58);
  sub_10007497C();
  v64 = sub_1003F0910(v62, v63);
  v97 = v59;
  v98 = v64;
  v65 = swift_getWitnessTable();
  v66 = v82;
  sub_1000833D8(v60, v34, v65);
  v67 = *(v85 + 8);
  v67(v60, v34);
  sub_1000833D8(v66, v34, v65);
  v67(v66, v34);
  sub_10000536C();
}

uint64_t sub_1003EAAFC@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X2>, uint64_t a3@<X8>)
{
  v98 = a2;
  v106 = a3;
  v90 = type metadata accessor for QuaternaryDividerStyle();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Divider();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10022C350(&qword_100CB5B08);
  __chkstk_darwin(v102);
  v101 = &v85 - v6;
  v103 = sub_10022C350(&qword_100CB5B00);
  __chkstk_darwin(v103);
  v105 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v85 - v9;
  sub_10022E824(&qword_100CB5AE0);
  sub_10022E824(&qword_100CB5AE8);
  sub_10022E824(&qword_100CB5AF0);
  v92 = type metadata accessor for Optional();
  v93 = type metadata accessor for _ConditionalContent();
  v94 = type metadata accessor for _ConditionalContent();
  v95 = type metadata accessor for _ConditionalContent();
  v10 = type metadata accessor for Group();
  sub_10022E824(&qword_100CB5AF8);
  v96 = v10;
  v97 = type metadata accessor for ModifiedContent();
  v91 = type metadata accessor for ModifiedContent();
  v110 = *(v91 - 8);
  __chkstk_darwin(v91);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  v16 = sub_10022C350(&qword_100CB5B10);
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  v19 = sub_10022C350(&qword_100CB5B18);
  __chkstk_darwin(v19);
  v21 = &v85 - v20;
  v99 = sub_10022C350(&qword_100CB5AD8);
  __chkstk_darwin(v99);
  v100 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v24 = *(a1 + 32);
  v108 = v12;
  v107 = v15;
  v109 = &v85 - v25;
  if (v24)
  {
    v26 = *(a1 + 24);
    *v18 = static HorizontalAlignment.leading.getter();
    *(v18 + 1) = 0;
    v18[16] = 0;
    v27 = sub_10022C350(&qword_100CB5C50);
    v28 = v24;
    v29 = a1;
    v30 = a1;
    v31 = v16;
    v32 = v98;
    sub_1003EB7FC(v26, v28, v29, &v18[*(v27 + 44)]);
    v33 = type metadata accessor for ConditionDetailPlatterView();
    v34 = sub_1003EA0EC();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = static Edge.Set.all.getter();
    v42 = &v18[*(v31 + 36)];
    *v42 = v41;
    *(v42 + 1) = v34;
    *(v42 + 2) = v36;
    *(v42 + 3) = v38;
    *(v42 + 4) = v40;
    v42[40] = 0;
    sub_10018CF14(v18, v21, &qword_100CB5B10);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB5B20);
    sub_1003EFDD0();
    sub_10014D3D8();
    a1 = v30;
    _ConditionalContent<>.init(storage:)();
    v12 = v108;
    v15 = v107;
    sub_1000180EC(v18, &qword_100CB5B10);
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA4FC();
    swift_endAccess();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v43 = v115[15];
    v44 = v116;
    v45 = v117;
    v46 = v118;
    LOBYTE(v115[0]) = 1;
    LOBYTE(v114[0]) = v116;
    LOBYTE(v111) = v118;
    *v21 = 0;
    v21[8] = 1;
    *(v21 + 2) = v43;
    v21[24] = v44;
    *(v21 + 4) = v45;
    v21[40] = v46;
    *(v21 + 3) = v119;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB5B20);
    sub_1003EFDD0();
    sub_10014D3D8();
    _ConditionalContent<>.init(storage:)();
    v32 = v98;
    v33 = type metadata accessor for ConditionDetailPlatterView();
  }

  sub_1003EC0C0(v33, v12);
  v47 = sub_1003EFE88();
  v48 = sub_1003F0550();
  v49 = sub_1003F05D4();
  v115[14] = v32;
  WitnessTable = swift_getWitnessTable();
  v115[12] = v49;
  v115[13] = WitnessTable;
  v51 = swift_getWitnessTable();
  v115[10] = v48;
  v115[11] = v51;
  v52 = swift_getWitnessTable();
  v115[8] = v47;
  v115[9] = v52;
  v115[7] = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v54 = sub_100006F64(&qword_100CB5C18, &qword_100CB5AF8);
  v115[5] = v53;
  v115[6] = v54;
  v115[3] = swift_getWitnessTable();
  v115[4] = &protocol witness table for _PaddingLayout;
  v55 = v91;
  v97 = swift_getWitnessTable();
  sub_1000833D8(v12, v55, v97);
  v98 = *(v110 + 8);
  v98(v12, v55);
  v56 = v101;
  if (*(a1 + *(v33 + 36)) == 1)
  {
    v57 = v85;
    Divider.init()();
    v58 = v87;
    static DividerStyle<>.quaternary.getter();
    sub_1003F0910(&qword_100CA7298, &type metadata accessor for Divider);
    sub_1003F0910(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle);
    v59 = v88;
    v60 = v90;
    View.dividerStyle<A>(_:)();
    (*(v89 + 8))(v58, v60);
    (*(v86 + 8))(v57, v59);
    v61 = static Edge.Set.top.getter();
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA570();
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v56 + *(sub_10022C350(&qword_100CB5C40) + 36);
    *v70 = v61;
    *(v70 + 8) = v63;
    *(v70 + 16) = v65;
    *(v70 + 24) = v67;
    *(v70 + 32) = v69;
    *(v70 + 40) = 0;
    v71 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v79 = v102;
    v72 = v56 + *(v102 + 36);
    *v72 = v71;
    *(v72 + 8) = v73;
    *(v72 + 16) = v74;
    *(v72 + 24) = v75;
    *(v72 + 32) = v76;
    *(v72 + 40) = 0;
    v78 = v104;
    sub_1001E3D34(v56, v104);
    v77 = 0;
    v12 = v108;
    v15 = v107;
  }

  else
  {
    v77 = 1;
    v78 = v104;
    v79 = v102;
  }

  sub_10001B350(v78, v77, 1, v79);
  v80 = v109;
  v81 = v100;
  sub_10018CF14(v109, v100, &qword_100CB5AD8);
  v115[0] = v81;
  (*(v110 + 16))(v12, v15, v55);
  v115[1] = v12;
  v82 = v105;
  sub_10018CF14(v78, v105, &qword_100CB5B00);
  v115[2] = v82;
  v114[0] = v99;
  v114[1] = v55;
  v114[2] = v103;
  v111 = sub_1003F068C();
  v112 = v97;
  v113 = sub_1003F0718();
  sub_10012E24C(v115, 3, v114);
  sub_1001E3CD4(v78);
  v83 = v98;
  v98(v15, v55);
  sub_1000180EC(v80, &qword_100CB5AD8);
  sub_1001E3CD4(v82);
  v83(v12, v55);
  return sub_1000180EC(v81, &qword_100CB5AD8);
}

uint64_t sub_1003EB7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v7 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v7 - 8);
  v78 = &v75 - v8;
  v79 = type metadata accessor for Font.TextStyle();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  __chkstk_darwin(v10 - 8);
  v75 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CAE8E8);
  __chkstk_darwin(v12 - 8);
  v85 = &v75 - v13;
  v14 = type metadata accessor for WeatherDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessibilityTraits();
  v83 = *(v18 - 8);
  v84 = v18;
  __chkstk_darwin(v18);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CB5C58);
  __chkstk_darwin(v20 - 8);
  v89 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v91 = &v75 - v23;
  v94[0] = a1;
  v94[1] = a2;
  sub_10002D5A4();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v80 = v15;
  v81 = v29;
  v30 = *(v29 + 40);
  v86 = a3;
  v87 = v17;
  v31 = *(a3 + v30);
  v88 = v14;
  if (v31 == 1)
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA308();
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA3F0();
  }

  swift_endAccess();
  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10010CD64(v24, v26, v28 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v95 = v36 & 1;
  v93[0] = v32;
  v93[1] = v34;
  LOBYTE(v93[2]) = v36 & 1;
  v93[3] = v38;
  v39 = v82;
  static AccessibilityTraits.isHeader.getter();
  sub_10022C350(&qword_100CB5BF0);
  sub_1003F04CC();
  View.accessibilityAddTraits(_:)();
  (*(v83 + 8))(v39, v84);
  memcpy(v94, v93, 0x90uLL);
  sub_1000180EC(v94, &qword_100CB5BF0);
  v40 = v85;
  sub_10018CF14(v86 + *(v81 + 24), v85, &qword_100CAE8E8);
  v41 = v88;
  if (sub_100024D10(v40, 1, v88) == 1)
  {
    sub_1000180EC(v40, &qword_100CAE8E8);
    v42 = 0;
    v86 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = v80;
    (*(v80 + 32))(v87, v40, v41);
    v52 = v76;
    v51 = v77;
    v53 = v79;
    (*(v77 + 104))(v76, enum case for Font.TextStyle.subheadline(_:), v79);
    v54 = type metadata accessor for Font.Design();
    v55 = v78;
    sub_10001B350(v78, 1, 1, v54);
    static Font.system(_:design:weight:)();
    sub_1000180EC(v55, &qword_100CA4020);
    (*(v51 + 8))(v52, v53);
    WeatherDescription.formatted(font:color:)();

    v56 = Text.init(_:)();
    v58 = v57;
    LOBYTE(v51) = v59;
    static Color.secondary.getter();
    v85 = Text.foregroundColor(_:)();
    v86 = v60;
    v62 = v61;
    v84 = v63;

    sub_10010CD64(v56, v58, v51 & 1);

    v64 = static Edge.Set.top.getter();
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA4D8();
    EdgeInsets.init(_all:)();
    v46 = v65;
    v47 = v66;
    v48 = v67;
    v49 = v68;
    (*(v50 + 8))(v87, v41);
    LOBYTE(v93[0]) = v62 & 1;
    LOBYTE(v92[0]) = 0;
    v45 = v62 & 1;
    v44 = v64;
    v43 = v84;
    v42 = v85;
  }

  v69 = v91;
  v70 = v89;
  sub_10018CF14(v91, v89, &qword_100CB5C58);
  v71 = v90;
  sub_10018CF14(v70, v90, &qword_100CB5C58);
  v72 = *(sub_10022C350(&qword_100CB5C60) + 48);
  v73 = v86;
  v92[0] = v42;
  v92[1] = v86;
  v92[2] = v45;
  v92[3] = v43;
  v92[4] = v44;
  v92[5] = v46;
  v92[6] = v47;
  v92[7] = v48;
  v92[8] = v49;
  LOBYTE(v92[9]) = 0;
  memcpy((v71 + v72), v92, 0x49uLL);
  sub_10018CF14(v92, v93, &qword_100CB5C68);
  sub_1000180EC(v69, &qword_100CB5C58);
  v93[0] = v42;
  v93[1] = v73;
  v93[2] = v45;
  v93[3] = v43;
  v93[4] = v44;
  v93[5] = v46;
  v93[6] = v47;
  v93[7] = v48;
  v93[8] = v49;
  LOBYTE(v93[9]) = 0;
  sub_1000180EC(v93, &qword_100CB5C68);
  return sub_1000180EC(v70, &qword_100CB5C58);
}

uint64_t sub_1003EC0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = type metadata accessor for RoundedRectangle();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100003990(v5 - v4);
  sub_10022E824(&qword_100CB5AE0);
  sub_10022E824(&qword_100CB5AE8);
  sub_10022E824(&qword_100CB5AF0);
  v6 = *(a1 + 16);
  type metadata accessor for Optional();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  sub_100005BA8();
  type metadata accessor for _ConditionalContent();
  v7 = type metadata accessor for Group();
  sub_1000037C4();
  v45 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v40 - v10;
  sub_10022E824(&qword_100CB5AF8);
  v43 = v7;
  v49 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v48 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003990(v40 - v14);
  v40[1] = a1;
  v15 = *(a1 + 24);
  v51 = v6;
  v52 = v15;
  v16 = v41;
  v53 = v41;
  v17 = sub_1003EFE88();
  v18 = sub_1003F0550();
  v19 = sub_1003F05D4();
  v64 = v15;
  WitnessTable = swift_getWitnessTable();
  v62 = v19;
  v63 = WitnessTable;
  v21 = swift_getWitnessTable();
  v60 = v18;
  v61 = v21;
  v22 = swift_getWitnessTable();
  v58 = v17;
  v59 = v22;
  v23 = swift_getWitnessTable();
  v44 = v11;
  Group<A>.init(content:)();
  v24 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  if (*(v16 + *(v24 + 36)) == 1)
  {
    v25 = static Color.clear.getter();
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      sub_10003C42C();
    }

    sub_100011530();
    v25 = sub_1004BA698();
    swift_endAccess();
  }

  v26 = v46;
  v57 = v25;
  if (qword_100CA21A0 != -1)
  {
    sub_10003C42C();
  }

  sub_100011530();
  v27 = sub_1004BA5B0();
  swift_endAccess();
  v28 = *(v47 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_100003A9C();
  v31 = v42;
  (*(v30 + 104))(v42 + v28, v29);
  *v31 = v27;
  v31[1] = v27;
  v56 = v23;
  v32 = v43;
  v33 = swift_getWitnessTable();
  sub_1003F0910(&qword_100CB5C70, &type metadata accessor for RoundedRectangle);
  v34 = v44;
  View.background<A, B>(_:in:fillStyle:)();
  sub_1003F0AEC(v31, &type metadata accessor for RoundedRectangle);

  sub_10000E73C();
  v35(v34, v32);
  static Edge.Set.horizontal.getter();
  if (*(v16 + *(v24 + 40)) == 1)
  {
    sub_1003EA0EC();
  }

  else
  {
    sub_100011530();
    sub_1004BA278();
    swift_endAccess();
  }

  v36 = sub_100006F64(&qword_100CB5C18, &qword_100CB5AF8);
  v54 = v33;
  v55 = v36;
  sub_100007E30();
  v37 = v49;
  swift_getWitnessTable();
  View.padding(_:_:)();
  sub_10000E73C();
  return v38(v26, v37);
}

uint64_t sub_1003EC6B4()
{
  sub_100954B84();
  if (!v0)
  {
    return 0;
  }

  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1003EC708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v353 = a3;
  *&v344 = a1;
  v350 = a4;
  v309 = a2;
  v4 = type metadata accessor for Optional();
  *&v331 = *(v4 - 8);
  __chkstk_darwin(v4);
  v315 = &v281 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v313 = &v281 - v7;
  v8 = sub_10022E824(&qword_100CB5AF0);
  v352 = v4;
  v9 = type metadata accessor for _ConditionalContent();
  v326 = *(v9 - 8);
  __chkstk_darwin(v9);
  v325 = &v281 - v10;
  v11 = sub_10022C350(&qword_100CB5C10);
  __chkstk_darwin(v11 - 8);
  v292 = (&v281 - v12);
  v318 = v8;
  __chkstk_darwin(v13);
  v293 = &v281 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v299 = &v281 - v16;
  v314 = sub_10022C350(&qword_100CB5C78);
  v312 = *(v314 - 8);
  __chkstk_darwin(v314);
  v311 = &v281 - v17;
  v296 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v296);
  v294 = &v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_10022C350(&qword_100CB5C80);
  __chkstk_darwin(v327);
  v328 = &v281 - v19;
  v20 = sub_10022C350(&qword_100CB5AE8);
  __chkstk_darwin(v20);
  *&v329 = &v281 - v21;
  *&v341 = v22;
  v351 = v9;
  v23 = type metadata accessor for _ConditionalContent();
  *&v343 = *(v23 - 8);
  __chkstk_darwin(v23);
  *&v342 = &v281 - v24;
  v321 = type metadata accessor for AttributedString();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321);
  v332 = &v281 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v330 = &v281 - v27;
  *&v339 = sub_10022C350(&qword_100CB5BD0);
  __chkstk_darwin(v339);
  v291 = &v281 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v298 = &v281 - v30;
  __chkstk_darwin(v31);
  v290 = &v281 - v32;
  __chkstk_darwin(v33);
  v297 = &v281 - v34;
  __chkstk_darwin(v35);
  v295 = &v281 - v36;
  v324 = sub_10022C350(&qword_100CB5BC0);
  __chkstk_darwin(v324);
  v300 = &v281 - v37;
  v322 = type metadata accessor for WeatherDescription();
  v320 = *(v322 - 8);
  __chkstk_darwin(v322);
  v333 = &v281 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_10022C350(&qword_100CB5C88);
  __chkstk_darwin(v316);
  v317 = &v281 - v39;
  *&v338 = sub_10022C350(&qword_100CB5B98);
  __chkstk_darwin(v338);
  v323 = &v281 - v40;
  v283 = type metadata accessor for PrecipitationTotalPlatterView(0);
  __chkstk_darwin(v283);
  v289 = &v281 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_10022C350(&qword_100CB5BA8);
  __chkstk_darwin(v310);
  v287 = &v281 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v304 = &v281 - v44;
  v305 = type metadata accessor for PrecipitationTotalPlatterViewModel();
  v303 = *(v305 - 8);
  __chkstk_darwin(v305);
  v302 = &v281 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v335 = sub_10022C350(&qword_100CB5C90);
  __chkstk_darwin(v335);
  v337 = &v281 - v46;
  v306 = sub_10022C350(&qword_100CB5C98);
  __chkstk_darwin(v306);
  v307 = (&v281 - v47);
  *&v336 = sub_10022C350(&qword_100CB5B58);
  __chkstk_darwin(v336);
  v308 = &v281 - v48;
  v49 = sub_10022C350(&qword_100CB5AE0);
  __chkstk_darwin(v49);
  *&v340 = &v281 - v50;
  v334 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v334);
  v286 = (&v281 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52);
  v284 = (&v281 - v53);
  __chkstk_darwin(v54);
  v285 = (&v281 - v55);
  __chkstk_darwin(v56);
  v282 = (&v281 - v57);
  v58 = type metadata accessor for DetailComponentContainerView();
  __chkstk_darwin(v58);
  v60 = &v281 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10022C350(&qword_100CB5B78);
  __chkstk_darwin(v61);
  v281 = &v281 - v62;
  v301 = sub_10022C350(&qword_100CB5B68);
  __chkstk_darwin(v301);
  v64 = &v281 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v288 = &v281 - v66;
  v67 = type metadata accessor for DetailComponentContainerViewModel();
  __chkstk_darwin(v67 - 8);
  v69 = &v281 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v70);
  v72 = (&v281 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v345 = v49;
  v349 = v23;
  v348 = type metadata accessor for _ConditionalContent();
  v347 = *(v348 - 8);
  __chkstk_darwin(v348);
  v346 = &v281 - v73;
  v74 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v75 = v344;
  sub_1003F0BEC(v344 + *(v74 + 28), v72, type metadata accessor for ConditionDetailPlatterViewModel.Body);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v170 = *v72;
      v169 = v72[1];
      __src[0] = *v72;
      __src[1] = v169;
      sub_10002D5A4();

      v337 = Text.init<A>(_:)();
      v172 = v171;
      v174 = v173;
      v176 = v175;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v177 = v174 & 1;
      v383 = v174 & 1;
      v178 = *(v75 + *(v74 + 36));
      v340 = 0u;
      v338 = 0u;
      if ((v178 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        *&v179 = sub_1004BA5F0();
        v340 = v179;
        v338 = v180;
        v335 = v182;
        v336 = v181;
        swift_endAccess();
        *&v183 = v338;
        *(&v183 + 1) = v335;
        v338 = v183;
        *&v183 = v340;
        *(&v183 + 1) = v336;
        v340 = v183;
      }

      v184 = static Edge.Set.all.getter();
      v364[0] = 0;
      if (*(v75 + 32))
      {
        v185 = *(v75 + 24);
        v186 = *(v75 + 32);
      }

      else if (*(v75 + 16) < 2u || *v75 ^ 1 | *(v75 + 8))
      {
        v185 = 0;
        v186 = 0xE000000000000000;
      }

      else
      {
        v186 = 0xE400000000000000;
        v185 = 1937204558;
      }

      v261 = v284;
      *v284 = v185;
      v261[1] = v186;
      v261[2] = v170;
      v261[3] = v169;
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v262 = v290;
      v263 = &v290[*(v339 + 36)];
      v264 = type metadata accessor for AutomationInfoProperty();
      sub_1003F0BEC(v261, &v263[*(v264 + 24)], type metadata accessor for AutomationInfo);

      sub_1003F0AEC(v261, type metadata accessor for AutomationInfo);
      *v263 = 0;
      *(v263 + 1) = 0xE000000000000000;
      *(v263 + 2) = swift_getKeyPath();
      v263[24] = 0;
      *v262 = v337;
      *(v262 + 8) = v172;
      *(v262 + 16) = v177;
      *(v262 + 20) = *(__src + 3);
      *(v262 + 17) = __src[0];
      *(v262 + 24) = v176;
      memcpy((v262 + 32), v382, 0x70uLL);
      *(v262 + 144) = v184;
      *(v262 + 145) = v365[0];
      *(v262 + 148) = *(v365 + 3);
      *(v262 + 168) = v338;
      *(v262 + 152) = v340;
      *(v262 + 184) = 0;
      v265 = v297;
      sub_10027FB54(v262, v297, &qword_100CB5BD0);
      sub_10018CF14(v265, v328, &qword_100CB5BD0);
      swift_storeEnumTagMultiPayload();
      sub_1003F0370();
      v266 = v329;
      _ConditionalContent<>.init(storage:)();
      v267 = sub_1003F0550();
      v268 = sub_1003F05D4();
      v381 = v353;
      WitnessTable = swift_getWitnessTable();
      v379 = v268;
      v380 = WitnessTable;
      v270 = swift_getWitnessTable();
      v271 = v342;
      sub_1003E8038();
      sub_1000180EC(v266, &qword_100CB5AE8);
      sub_1003EFE88();
      v377 = v267;
      v378 = v270;
      v272 = v349;
      swift_getWitnessTable();
      v108 = v346;
      sub_10012D09C();
      (*(v343 + 8))(v271, v272);
      sub_1000180EC(v265, &qword_100CB5BD0);
      goto LABEL_59;
    case 2u:
      v111 = v319;
      v112 = v332;
      v113 = v321;
      (*(v319 + 32))(v332, v72, v321);
      (*(v111 + 16))(v330, v112, v113);
      v114 = Text.init(_:)();
      v116 = v115;
      LOBYTE(v113) = v117;
      v337 = v118;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v119 = v113 & 1;
      LOBYTE(v365[0]) = v113 & 1;
      v120 = *(v75 + *(v74 + 36));
      v340 = 0u;
      v338 = 0u;
      if ((v120 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        *&v121 = sub_1004BA5F0();
        v340 = v121;
        v338 = v122;
        v335 = v124;
        v336 = v123;
        swift_endAccess();
        *&v125 = v338;
        *(&v125 + 1) = v335;
        v338 = v125;
        *&v125 = v340;
        *(&v125 + 1) = v336;
        v340 = v125;
      }

      v126 = static Edge.Set.all.getter();
      LOBYTE(__src[0]) = 0;
      if (*(v75 + 32))
      {
        v127 = *(v75 + 24);
        v128 = *(v75 + 32);
      }

      else if (*(v75 + 16) < 2u || *v75 ^ 1 | *(v75 + 8))
      {
        v127 = 0;
        v128 = 0xE000000000000000;
      }

      else
      {
        v128 = 0xE400000000000000;
        v127 = 1937204558;
      }

      AttributedString.characters.getter();
      sub_1003F0910(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView);
      v225 = String.init<A>(_:)();
      v226 = v286;
      *v286 = v127;
      v226[1] = v128;
      v226[2] = v225;
      v226[3] = v227;
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v228 = v291;
      v229 = &v291[*(v339 + 36)];
      v230 = type metadata accessor for AutomationInfoProperty();
      sub_1003F0BEC(v226, &v229[*(v230 + 24)], type metadata accessor for AutomationInfo);
      sub_1003F0AEC(v226, type metadata accessor for AutomationInfo);
      *v229 = 0;
      *(v229 + 1) = 0xE000000000000000;
      *(v229 + 2) = swift_getKeyPath();
      v229[24] = 0;
      *v228 = v114;
      *(v228 + 8) = v116;
      *(v228 + 16) = v119;
      *(v228 + 24) = v337;
      memcpy((v228 + 32), v389, 0x70uLL);
      *(v228 + 144) = v126;
      *(v228 + 168) = v338;
      *(v228 + 152) = v340;
      *(v228 + 184) = 0;
      v231 = v298;
      sub_10027FB54(v228, v298, &qword_100CB5BD0);
      sub_10018CF14(v231, v328, &qword_100CB5BD0);
      swift_storeEnumTagMultiPayload();
      sub_1003F0370();
      v232 = v329;
      _ConditionalContent<>.init(storage:)();
      v233 = sub_1003F0550();
      v234 = sub_1003F05D4();
      v388 = v353;
      v235 = swift_getWitnessTable();
      v386 = v234;
      v387 = v235;
      v236 = swift_getWitnessTable();
      v237 = v342;
      sub_1003E8038();
      sub_1000180EC(v232, &qword_100CB5AE8);
      sub_1003EFE88();
      v384 = v233;
      v385 = v236;
      v238 = v349;
      swift_getWitnessTable();
      v108 = v346;
      sub_10012D09C();
      (*(v343 + 8))(v237, v238);
      sub_1000180EC(v231, &qword_100CB5BD0);
      (*(v319 + 8))(v332, v321);
      v153 = v348;
      goto LABEL_56;
    case 3u:
      v129 = v311;
      (*(v312 + 32))(v311, v72, v314);
      v130 = static HorizontalAlignment.center.getter();
      v131 = v292;
      *v292 = v130;
      v131[1] = 0;
      *(v131 + 16) = 0;
      sub_10022C350(&qword_100CB5CA0);
      sub_1003EF19C(v129);
      v132 = *(v75 + *(v74 + 36));
      v344 = 0u;
      v340 = 0u;
      v133 = v353;
      v134 = v351;
      if ((v132 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        *&v135 = sub_1004BA5F0();
        v344 = v135;
        v339 = v136;
        v340 = v137;
        v338 = v138;
        swift_endAccess();
        *&v139 = v340;
        *(&v139 + 1) = v338;
        v340 = v139;
        *&v139 = v344;
        *(&v139 + 1) = v339;
        v344 = v139;
      }

      v140 = static Edge.Set.all.getter();
      v141 = v131;
      v142 = v293;
      sub_10027FB54(v141, v293, &qword_100CB5C10);
      v143 = v142 + *(v318 + 36);
      *v143 = v140;
      *(v143 + 24) = v340;
      *(v143 + 8) = v344;
      *(v143 + 40) = 0;
      v144 = v299;
      sub_10027FB54(v142, v299, &qword_100CB5AF0);
      v145 = sub_1003F05D4();
      v394 = v133;
      v146 = swift_getWitnessTable();
      v147 = v325;
      sub_1003E8038();
      v148 = sub_1003F0550();
      v392 = v145;
      v393 = v146;
      v149 = swift_getWitnessTable();
      v150 = v342;
      sub_10012D09C();
      (*(v326 + 8))(v147, v134);
      sub_1003EFE88();
      v390 = v148;
      v391 = v149;
      v151 = v349;
      swift_getWitnessTable();
      v108 = v346;
      sub_10012D09C();
      (*(v343 + 8))(v150, v151);
      v152 = v144;
      v153 = v348;
      sub_1000180EC(v152, &qword_100CB5AF0);
      (*(v312 + 8))(v311, v314);
      goto LABEL_60;
    case 4u:
      sub_1003F0A94(v72, v69, type metadata accessor for DetailComponentContainerViewModel);
      v91 = &v60[v58[5]];
      *&v343 = v69;
      sub_1003F0BEC(v69, v91, type metadata accessor for DetailComponentContainerViewModel);
      v92 = type metadata accessor for ConditionDetailPlatterView();
      sub_100035B30(v75 + *(v92 + 40), &v60[v58[6]]);
      if (qword_100CA21A0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v93 = sub_1004BA5B0();
      sub_1004BA5F0();
      v95 = v94;
      v96 = sub_1004BA5F0();
      swift_endAccess();
      *v60 = swift_getKeyPath();
      v60[8] = 0;
      *&v60[v58[7]] = v93;
      *&v60[v58[8]] = v95;
      *&v60[v58[9]] = v96;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v97 = v281;
      sub_1003F0A94(v60, v281, type metadata accessor for DetailComponentContainerView);
      memcpy((v97 + *(v61 + 36)), __src, 0x70uLL);
      v98 = v282;
      *v282 = xmmword_100A2C400;
      *(v98 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v99 = &v64[*(v301 + 36)];
      v100 = type metadata accessor for AutomationInfoProperty();
      sub_1003F0BEC(v98, &v99[*(v100 + 24)], type metadata accessor for AutomationInfo);
      sub_1003F0AEC(v98, type metadata accessor for AutomationInfo);
      *v99 = 0;
      *(v99 + 1) = 0xE000000000000000;
      *(v99 + 2) = swift_getKeyPath();
      v99[24] = 0;
      sub_10027FB54(v97, v64, &qword_100CB5B78);
      v101 = v288;
      sub_10027FB54(v64, v288, &qword_100CB5B68);
      sub_10018CF14(v101, v307, &qword_100CB5B68);
      swift_storeEnumTagMultiPayload();
      sub_1003EFFA0();
      sub_1003F0118();
      v102 = v308;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v102, v337, &qword_100CB5B58);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v103 = v340;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v102, &qword_100CB5B58);
      sub_1003EFE88();
      v104 = sub_1003F0550();
      v105 = sub_1003F05D4();
      v358 = v353;
      v106 = swift_getWitnessTable();
      v356 = v105;
      v357 = v106;
      v107 = swift_getWitnessTable();
      v354 = v104;
      v355 = v107;
      swift_getWitnessTable();
      v108 = v346;
      sub_1003E8038();
      sub_1000180EC(v103, &qword_100CB5AE0);
      sub_1000180EC(v101, &qword_100CB5B68);
      v109 = type metadata accessor for DetailComponentContainerViewModel;
      v110 = v343;
      goto LABEL_23;
    case 5u:
      memcpy(v365, v72, 0x5AuLL);
      v187 = 0.0;
      v188 = 0;
      v189 = 0;
      v190 = 0;
      v153 = v348;
      v191 = v347;
      if ((*(v75 + *(v74 + 36)) & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v187 = sub_1004BA5F0();
        v188 = v192;
        v189 = v193;
        v190 = v194;
        swift_endAccess();
      }

      memcpy(__src, v365, 0x5AuLL);
      v195 = v307;
      memcpy(v307, __src, 0x60uLL);
      v195[12] = v187;
      *(v195 + 13) = v188;
      *(v195 + 14) = v189;
      *(v195 + 15) = v190;
      swift_storeEnumTagMultiPayload();
      sub_1003F0958(v365, v364);
      sub_1003EFFA0();
      sub_1003F0118();
      v196 = v308;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v196, v337, &qword_100CB5B58);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v197 = v340;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v196, &qword_100CB5B58);
      sub_1003EFE88();
      v198 = sub_1003F0550();
      v199 = sub_1003F05D4();
      v363 = v353;
      v200 = swift_getWitnessTable();
      v361 = v199;
      v362 = v200;
      v201 = swift_getWitnessTable();
      v359 = v198;
      v360 = v201;
      swift_getWitnessTable();
      v108 = v346;
      sub_1003E8038();
      sub_1003F09B4(v365);
      sub_1000180EC(v197, &qword_100CB5AE0);
      break;
    case 6u:
      v203 = v302;
      v202 = v303;
      v204 = v305;
      (*(v303 + 32))(v302, v72, v305);
      v205 = *(v202 + 16);
      v206 = v289;
      v205(v289, v203, v204);
      *&v206[*(v283 + 20)] = 0x402A000000000000;
      v207 = *(v75 + *(v74 + 36));
      v343 = 0u;
      v344 = 0u;
      v153 = v348;
      if ((v207 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        *&v208 = sub_1004BA5F0();
        v343 = v209;
        v344 = v208;
        v341 = v211;
        v342 = v210;
        swift_endAccess();
        *&v212 = v343;
        *(&v212 + 1) = v341;
        v343 = v212;
        *&v212 = v344;
        *(&v212 + 1) = v342;
        v344 = v212;
      }

      v213 = static Edge.Set.all.getter();
      v214 = v206;
      v215 = v287;
      sub_1003F0A94(v214, v287, type metadata accessor for PrecipitationTotalPlatterView);
      v216 = v215 + *(v310 + 36);
      *v216 = v213;
      v217 = v344;
      *(v216 + 24) = v343;
      *(v216 + 8) = v217;
      *(v216 + 40) = 0;
      v218 = v304;
      sub_10027FB54(v215, v304, &qword_100CB5BA8);
      sub_10018CF14(v218, v317, &qword_100CB5BA8);
      swift_storeEnumTagMultiPayload();
      sub_1003F01F8();
      sub_1003F02B4();
      v219 = v323;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v219, v337, &qword_100CB5B98);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v220 = v340;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v219, &qword_100CB5B98);
      sub_1003EFE88();
      v221 = sub_1003F0550();
      v222 = sub_1003F05D4();
      v370 = v353;
      v223 = swift_getWitnessTable();
      v368 = v222;
      v369 = v223;
      v224 = swift_getWitnessTable();
      v366 = v221;
      v367 = v224;
      swift_getWitnessTable();
      v108 = v346;
      sub_1003E8038();
      sub_1000180EC(v220, &qword_100CB5AE0);
      sub_1000180EC(v304, &qword_100CB5BA8);
      (*(v303 + 8))(v302, v305);
      goto LABEL_60;
    case 7u:
      v154 = v353;
      v155 = type metadata accessor for ConditionDetailPlatterView();
      v156 = v315;
      sub_1003EF9A0(v155, v315);
      v406 = v154;
      v157 = v352;
      v158 = swift_getWitnessTable();
      v159 = v313;
      sub_1000833D8(v156, v157, v158);
      v160 = *(v331 + 8);
      *&v331 = v331 + 8;
      *&v344 = v160;
      v160(v156, v157);
      sub_1000833D8(v159, v157, v158);
      v161 = sub_1003F05D4();
      v162 = v325;
      sub_10012D09C();
      v163 = sub_1003F0550();
      v404 = v161;
      v405 = v158;
      v164 = v351;
      v165 = swift_getWitnessTable();
      v166 = v342;
      sub_10012D09C();
      (*(v326 + 8))(v162, v164);
      sub_1003EFE88();
      v402 = v163;
      v403 = v165;
      v167 = v349;
      swift_getWitnessTable();
      v108 = v346;
      sub_10012D09C();
      (*(v343 + 8))(v166, v167);
      v168 = v344;
      (v344)(v315, v157);
      v168(v313, v157);
      v109 = type metadata accessor for ConditionDetailPlatterViewModel.Body;
      v110 = v72;
LABEL_23:
      sub_1003F0AEC(v110, v109);
LABEL_59:
      v153 = v348;
LABEL_60:
      v191 = v347;
      break;
    default:
      (*(v320 + 32))(v333, v72, v322);
      static Font.body.getter();
      WeatherDescription.formatted(font:color:)();

      *&v341 = Text.init(_:)();
      v332 = v76;
      v78 = v77;
      v80 = v79;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v81 = v78 & 1;
      v383 = v78 & 1;
      v82 = *(v75 + *(v74 + 36));
      v342 = 0u;
      v343 = 0u;
      if ((v82 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        *&v83 = sub_1004BA5F0();
        v331 = v84;
        v342 = v85;
        v343 = v83;
        v329 = v86;
        swift_endAccess();
        *&v87 = v342;
        *(&v87 + 1) = v329;
        v342 = v87;
        *&v87 = v343;
        *(&v87 + 1) = v331;
        v343 = v87;
      }

      v88 = static Edge.Set.all.getter();
      v364[0] = 0;
      if (*(v75 + 32))
      {
        v89 = *(v75 + 24);
        v90 = *(v75 + 32);
      }

      else if (*(v75 + 16) < 2u || *v75 ^ 1 | *(v75 + 8))
      {
        v89 = 0;
        v90 = 0xE000000000000000;
      }

      else
      {
        v90 = 0xE400000000000000;
        v89 = 1937204558;
      }

      v153 = v348;

      v239 = WeatherDescription.string.getter();
      v240 = v285;
      *v285 = v89;
      v240[1] = v90;
      v240[2] = v239;
      v240[3] = v241;
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v242 = v295;
      v243 = &v295[*(v339 + 36)];
      v244 = type metadata accessor for AutomationInfoProperty();
      sub_1003F0BEC(v240, &v243[*(v244 + 24)], type metadata accessor for AutomationInfo);
      sub_1003F0AEC(v240, type metadata accessor for AutomationInfo);
      *v243 = 0;
      *(v243 + 1) = 0xE000000000000000;
      *(v243 + 2) = swift_getKeyPath();
      v243[24] = 0;
      v245 = v332;
      *v242 = v341;
      *(v242 + 8) = v245;
      *(v242 + 16) = v81;
      *(v242 + 20) = *(__src + 3);
      *(v242 + 17) = __src[0];
      *(v242 + 24) = v80;
      memcpy((v242 + 32), v376, 0x70uLL);
      *(v242 + 144) = v88;
      *(v242 + 145) = v365[0];
      *(v242 + 148) = *(v365 + 3);
      v246 = v343;
      *(v242 + 168) = v342;
      *(v242 + 152) = v246;
      *(v242 + 184) = 0;
      v247 = sub_1003EC6B4();
      if (v250)
      {
        v251 = v247;
      }

      else
      {
        static Font.body.getter();
        WeatherDescription.formatted(font:color:)();

        v251 = Text.init(_:)();
      }

      v252 = v248;
      v253 = v249;
      sub_1003F0370();
      v254 = v300;
      View.accessibilityLabel(_:)();
      sub_10010CD64(v251, v252, v253 & 1);

      sub_1000180EC(v242, &qword_100CB5BD0);
      sub_10018CF14(v254, v317, &qword_100CB5BC0);
      swift_storeEnumTagMultiPayload();
      sub_1003F01F8();
      sub_1003F02B4();
      v255 = v323;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v255, v337, &qword_100CB5B98);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v256 = v340;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v255, &qword_100CB5B98);
      sub_1003EFE88();
      v257 = sub_1003F0550();
      v258 = sub_1003F05D4();
      v375 = v353;
      v259 = swift_getWitnessTable();
      v373 = v258;
      v374 = v259;
      v260 = swift_getWitnessTable();
      v371 = v257;
      v372 = v260;
      swift_getWitnessTable();
      v108 = v346;
      sub_1003E8038();
      sub_1000180EC(v256, &qword_100CB5AE0);
      sub_1000180EC(v254, &qword_100CB5BC0);
      (*(v320 + 8))(v333, v322);
LABEL_56:
      v191 = v347;
      break;
  }

  v273 = sub_1003EFE88();
  v274 = sub_1003F0550();
  v275 = sub_1003F05D4();
  v401 = v353;
  v276 = swift_getWitnessTable();
  v399 = v275;
  v400 = v276;
  v277 = swift_getWitnessTable();
  v397 = v274;
  v398 = v277;
  v278 = swift_getWitnessTable();
  v395 = v273;
  v396 = v278;
  v279 = swift_getWitnessTable();
  sub_1000833D8(v108, v153, v279);
  return (*(v191 + 8))(v108, v153);
}

uint64_t sub_1003EF19C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB5C78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  NonEmpty.elements.getter();
  v9[0] = v9[1];
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10022C350(&qword_100CB5CA8);
  sub_10022C350(&qword_100CB5CB0);
  sub_100006F64(&qword_100CB5CB8, &qword_100CB5CA8);
  sub_100006F64(&qword_100CB5CC0, &qword_100CB5CB0);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003EF3C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a2;
  v50 = a3;
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0);
  __chkstk_darwin(v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for AttributedString();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  *&v46 = a1;
  v39 = v9;
  v69[0] = v9;
  v69[1] = v10;
  sub_10002D5A4();
  v38 = v10;

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.headline.getter();
  v16 = Text.font(_:)();
  v47 = v17;
  v48 = v16;
  v19 = v18;
  v49 = v20;

  sub_10010CD64(v11, v13, v15 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v19 & 1;
  v78 = v19 & 1;
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA650();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v79;
  v42 = v81;
  v43 = v84;
  v44 = v83;
  v77 = 1;
  v75 = v80;
  v73 = v82;
  (*(v37 + 16))(v8, v46 + *(v4 + 20), v40);
  v22 = Text.init(_:)();
  v36 = v23;
  v37 = v22;
  v25 = v24;
  v40 = v26;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v25 & 1;
  v70[112] = v25 & 1;
  sub_10022C350(&qword_100CB5C78);
  sub_100006F64(&qword_100CB5CC8, &qword_100CB5CA8);
  NonEmpty<>.last.getter();
  v28 = v39 == *v6 && v38 == v6[1];
  if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static AttributedString.== infix(_:_:)())
  {
    sub_1003F0AEC(v6, type metadata accessor for ConditionDetailPlatterViewModel.TextSection);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    LOBYTE(v69[0]) = 1;
    v46 = 0u;
  }

  else
  {
    sub_1003F0AEC(v6, type metadata accessor for ConditionDetailPlatterViewModel.TextSection);
    sub_1004BA674();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = 0;
    v29 = v85;
    v30 = v87;
    v46 = v89;
    v68[0] = 1;
    LOBYTE(v66[0]) = v86;
    LOBYTE(v54[0]) = v88;
    v33 = 1;
    v32 = v86;
    v31 = v88;
    LOBYTE(v69[0]) = 0;
  }

  v66[0] = v48;
  v66[1] = v47;
  LOBYTE(v66[2]) = v21;
  v66[3] = v49;
  memcpy(&v66[4], v71, 0x70uLL);
  v56 = v77;
  *v57 = *v76;
  *&v57[3] = *&v76[3];
  v55 = 0;
  v58 = v41;
  v59 = v75;
  *v60 = *v74;
  *&v60[3] = *&v74[3];
  v61 = v42;
  v62 = v73;
  *v63 = *v72;
  *&v63[3] = *&v72[3];
  v64 = v44;
  v65 = v43;
  v67[0] = v66;
  v67[1] = &v55;
  v54[0] = v37;
  v54[1] = v36;
  LOBYTE(v54[2]) = v27;
  v54[3] = v40;
  memcpy(&v54[4], v70, 0x70uLL);
  v51[0] = 0;
  v51[1] = v33;
  v51[2] = v29;
  v51[3] = v32;
  v51[4] = v30;
  v51[5] = v31;
  v52 = v46;
  v53 = v34;
  v67[2] = v54;
  v67[3] = v51;
  sub_1003E87A0(v67, v50);
  memcpy(v68, v54, sizeof(v68));
  sub_1000180EC(v68, &qword_100CB5BF0);
  memcpy(v69, v66, sizeof(v69));
  return sub_1000180EC(v69, &qword_100CB5BF0);
}

uint64_t sub_1003EF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 + 16);
  v33 = *(v4 - 8);
  __chkstk_darwin(a1);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v30 - v7;
  v8 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConditionDetailDynamicContentIdentifier();
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v35 = a1;
  v20 = *(v2 + *(a1 + 44));
  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_1003F0BEC(v2 + *(v21 + 28), v10, type metadata accessor for ConditionDetailPlatterViewModel.Body);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1003F0AEC(v10, type metadata accessor for ConditionDetailPlatterViewModel.Body);
LABEL_5:
    sub_10001B350(v16, 1, 1, v4);
    v23 = *(v35 + 24);
    goto LABEL_6;
  }

  sub_1003F0A94(v10, v13, type metadata accessor for ConditionDetailDynamicContentIdentifier);

  v22 = v32;
  v20(v13);
  sub_10002B028(v20);
  sub_1003F0AEC(v13, type metadata accessor for ConditionDetailDynamicContentIdentifier);
  v23 = *(v35 + 24);
  v24 = v31;
  sub_1000833D8(v22, v4, v23);
  v25 = v33;
  v26 = *(v33 + 8);
  v26(v22, v4);
  sub_1000833D8(v24, v4, v23);
  v26(v24, v4);
  (*(v25 + 32))(v16, v22, v4);
  sub_10001B350(v16, 0, 1, v4);
LABEL_6:
  sub_1003E7FD4(v16, v19);
  v27 = *(v34 + 8);
  v27(v16, v14);
  v37 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v19, v14, WitnessTable);
  return (v27)(v19, v14);
}

unint64_t sub_1003EFDD0()
{
  result = qword_100CB5B28;
  if (!qword_100CB5B28)
  {
    sub_10022E824(&qword_100CB5B10);
    sub_100006F64(&qword_100CB5B30, &qword_100CB5B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B28);
  }

  return result;
}

unint64_t sub_1003EFE88()
{
  result = qword_100CB5B48;
  if (!qword_100CB5B48)
  {
    sub_10022E824(&qword_100CB5AE0);
    sub_1003EFF14();
    sub_1003F016C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B48);
  }

  return result;
}

unint64_t sub_1003EFF14()
{
  result = qword_100CB5B50;
  if (!qword_100CB5B50)
  {
    sub_10022E824(&qword_100CB5B58);
    sub_1003EFFA0();
    sub_1003F0118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B50);
  }

  return result;
}

unint64_t sub_1003EFFA0()
{
  result = qword_100CB5B60;
  if (!qword_100CB5B60)
  {
    sub_10022E824(&qword_100CB5B68);
    sub_1003F005C();
    sub_1003F0910(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B60);
  }

  return result;
}

unint64_t sub_1003F005C()
{
  result = qword_100CB5B70;
  if (!qword_100CB5B70)
  {
    sub_10022E824(&qword_100CB5B78);
    sub_1003F0910(&qword_100CB5B80, type metadata accessor for DetailComponentContainerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B70);
  }

  return result;
}

unint64_t sub_1003F0118()
{
  result = qword_100CB5B88;
  if (!qword_100CB5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B88);
  }

  return result;
}

unint64_t sub_1003F016C()
{
  result = qword_100CB5B90;
  if (!qword_100CB5B90)
  {
    sub_10022E824(&qword_100CB5B98);
    sub_1003F01F8();
    sub_1003F02B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5B90);
  }

  return result;
}

unint64_t sub_1003F01F8()
{
  result = qword_100CB5BA0;
  if (!qword_100CB5BA0)
  {
    sub_10022E824(&qword_100CB5BA8);
    sub_1003F0910(&qword_100CB5BB0, type metadata accessor for PrecipitationTotalPlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5BA0);
  }

  return result;
}

unint64_t sub_1003F02B4()
{
  result = qword_100CB5BB8;
  if (!qword_100CB5BB8)
  {
    sub_10022E824(&qword_100CB5BC0);
    sub_1003F0370();
    sub_1003F0910(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5BB8);
  }

  return result;
}

unint64_t sub_1003F0370()
{
  result = qword_100CB5BC8;
  if (!qword_100CB5BC8)
  {
    sub_10022E824(&qword_100CB5BD0);
    sub_1003F0458(&qword_100CB5BD8, &qword_100CB5BE0, &unk_100A493D8, sub_1003F04CC);
    sub_1003F0910(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5BC8);
  }

  return result;
}

uint64_t sub_1003F0458(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    a4();
    sub_100007E30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003F04CC()
{
  result = qword_100CB5BE8;
  if (!qword_100CB5BE8)
  {
    sub_10022E824(&qword_100CB5BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5BE8);
  }

  return result;
}

unint64_t sub_1003F0550()
{
  result = qword_100CB5BF8;
  if (!qword_100CB5BF8)
  {
    sub_10022E824(&qword_100CB5AE8);
    sub_1003F0370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5BF8);
  }

  return result;
}

unint64_t sub_1003F05D4()
{
  result = qword_100CB5C00;
  if (!qword_100CB5C00)
  {
    sub_10022E824(&qword_100CB5AF0);
    sub_100006F64(&qword_100CB5C08, &qword_100CB5C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5C00);
  }

  return result;
}

unint64_t sub_1003F068C()
{
  result = qword_100CB5C20;
  if (!qword_100CB5C20)
  {
    sub_10022E824(&qword_100CB5AD8);
    sub_1003EFDD0();
    sub_10014D3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5C20);
  }

  return result;
}

unint64_t sub_1003F0718()
{
  result = qword_100CB5C28;
  if (!qword_100CB5C28)
  {
    sub_10022E824(&qword_100CB5B00);
    sub_1003F0458(&qword_100CB5C30, &qword_100CB5B08, &unk_100A49378, sub_1003F07C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5C28);
  }

  return result;
}

unint64_t sub_1003F07C8()
{
  result = qword_100CB5C38;
  if (!qword_100CB5C38)
  {
    sub_10022E824(&qword_100CB5C40);
    type metadata accessor for Divider();
    type metadata accessor for QuaternaryDividerStyle();
    sub_1003F0910(&qword_100CA7298, &type metadata accessor for Divider);
    sub_1003F0910(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5C38);
  }

  return result;
}

uint64_t sub_1003F0910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F0A08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_10022C350(&qword_100CB5C78) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003EF3C8(a1, v6, a2);
}

uint64_t sub_1003F0A94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1003F0AEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003F0BA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003F0BEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1003F0C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = [objc_opt_self() mainBundle];
  if (v1 == 10)
  {
    v10._object = 0x8000000100AC6380;
    v3._countAndFlagsBits = 0x46207961442D6425;
    v3._object = 0xEF7473616365726FLL;
    v10._countAndFlagsBits = 0xD000000000000086;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

    sub_10022C350(&qword_100CA40C8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100A2C3F0;
    *(v5 + 56) = &type metadata for Int;
    *(v5 + 64) = &protocol witness table for Int;
    *(v5 + 32) = 10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v11._object = 0x8000000100AC6330;
    v8._countAndFlagsBits = 0x6F4620796C696144;
    v8._object = 0xEE00747361636572;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000040;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v2, v9, v11)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_1003F0DEC()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1003F0E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F0E90(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003F0F18@<X0>(uint64_t a1@<X8>)
{
  v284 = a1;
  v2 = sub_10022C350(&qword_100CB5FE8);
  sub_10001BA94(v2, &v299);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_100003990(v4);
  v5 = sub_10022C350(&qword_100CB5FF0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  v8 = sub_10022C350(&qword_100CB5FF8);
  sub_10001BA94(v8, &v295);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003990(v10);
  v11 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  v12 = sub_100003AE8(v11);
  v255 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100003990(&v302._object - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  sub_100003990(&v302._object - v17);
  v18 = sub_10022C350(&qword_100CB6000);
  sub_10001BA94(v18, &v297);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  sub_100003990(v20);
  v21 = sub_10022C350(&qword_100CB6008);
  sub_10001BA94(v21, &v293);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CB6010);
  sub_10001BA94(v24, &v296);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_100003990(v26);
  v283 = sub_10022C350(&qword_100CB6018);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000039BC();
  sub_100003990(v28);
  v29 = sub_10022C350(&qword_100CB6020);
  sub_10001BA94(v29, &v291);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CB6028);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  sub_100003990(v34);
  v35 = sub_10022C350(&qword_100CB6030);
  sub_10001BA94(v35, v290);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CB6038);
  sub_100003810(v38);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CB6040);
  sub_10001BA94(v41, v288);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v277 = sub_10022C350(&qword_100CB6048);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  sub_100003990(v45);
  v46 = sub_10022C350(&qword_100CB6050);
  sub_10001BA94(v46, v287);
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  sub_100003990(v48);
  v49 = sub_10022C350(&qword_100CB6058);
  sub_100003810(v49);
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v262 = sub_10022C350(&qword_100CB6060);
  sub_100007FD0();
  v252 = v52;
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003990(v54);
  v55 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_1000037D8();
  sub_100003990(v58 - v57);
  v278 = sub_10022C350(&qword_100CB6068);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  v280 = v60;
  v61 = sub_10022C350(&qword_100CB6070);
  sub_10001BA94(v61, &v300);
  sub_100003828();
  __chkstk_darwin(v62);
  sub_1000039BC();
  v275 = v63;
  v64 = sub_10022C350(&qword_100CB6078);
  sub_10001BA94(v64, v285);
  sub_100003828();
  __chkstk_darwin(v65);
  v67 = &v302._object - v66;
  v274 = sub_10022C350(&qword_100CB6080);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v68);
  sub_1000039BC();
  sub_100003990(v69);
  v279 = sub_10022C350(&qword_100CB6088);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v70);
  sub_1000039BC();
  v276 = v71;
  v72 = type metadata accessor for ContentViewiOS(0);
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_1000037D8();
  v76 = v75 - v74;
  v77 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v78 = sub_100003810(v77);
  __chkstk_darwin(v78);
  sub_1000037D8();
  v81 = v80 - v79;
  v82 = type metadata accessor for UnitsConfigurationViewModel.Representation(0);
  sub_1000037E8();
  __chkstk_darwin(v83);
  sub_1000037D8();
  v86 = v85 - v84;
  v87 = type metadata accessor for UnitsConfigurationViewModel(0);
  v88 = sub_100003810(v87);
  __chkstk_darwin(v88);
  sub_1000037D8();
  v91 = v90 - v89;
  v92 = sub_10022C350(&qword_100CB6090);
  v93 = sub_100003810(v92);
  __chkstk_darwin(v93);
  sub_100003C38();
  v282 = v94 - v95;
  __chkstk_darwin(v96);
  v281 = &v302._object - v97;
  v98 = v1;
  sub_100988F60();
  sub_1003FD8A8(v91, v86, type metadata accessor for UnitsConfigurationViewModel.Representation);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v205 = v257;
      sub_1000419E4();
      sub_10011C0F0(v206, v207, v208);
      v209 = sub_10022C350(&qword_100CB6158);
      sub_100025174(*(v209 + 36));
      sub_10003042C();
      sub_10006A798();
      v210 = swift_allocObject();
      sub_100008528(v210);
      sub_10008654C();
      v211 = [objc_opt_self() mainBundle];
      v212 = sub_10001EB98();
      sub_100031CF0(v212, v213, v214, v215, v216, v217, v218, v219);
      sub_100017844();

      sub_1000145A4();
      *v220 = sub_1003FD990;
      v220[1] = v210;
      LOBYTE(v209) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v221 = (v91 + *(v265 + 36));
      *v221 = v209;
      sub_100069558(v221, v222, v223, v224, v225);
      sub_100052320(v91, v289);
      sub_100071930();
      sub_1003FD6AC();
      sub_1003FD764();
      v226 = v264;
      _ConditionalContent<>.init(storage:)();
      v98 = v275;
      sub_1000794BC(v226, v275);
      sub_100071930();
      sub_1003FD3D4();
      sub_1003FD620();
      sub_100087DA4();
      sub_10003FDA0(v226, &qword_100CB6048);
      v227 = sub_100024140();
      sub_1000794BC(v227, v228);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_1000196B0();
      sub_10012CCA0();
      sub_10000C90C();
      sub_10003FDA0(v229, v230);
      v120 = v205;
      v121 = &qword_100CB6038;
      goto LABEL_7;
    case 2u:
      v147 = v258;
      sub_1000419E4();
      sub_10011C0F0(v148, v149, v150);
      v151 = sub_10022C350(&qword_100CB60B8);
      sub_100025174(*(v151 + 36));
      sub_10003042C();
      sub_10006A798();
      v152 = swift_allocObject();
      sub_100008528(v152);
      sub_10008654C();
      v153 = [objc_opt_self() mainBundle];
      v154 = sub_10001EB98();
      sub_100031CF0(v154, v155, v156, v157, v158, v159, v160, v161);
      sub_100017844();

      sub_1000145A4();
      *v162 = sub_1003FD93C;
      v162[1] = v152;
      LOBYTE(v151) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v163 = (v91 + *(v266 + 36));
      *v163 = v151;
      sub_100069558(v163, v164, v165, v166, v167);
      sub_10003BDB8(v91, &v294);
      sub_1000439B4();
      sub_1003FD120();
      sub_1003FD1D8();
      sub_1000B01F8();
      _ConditionalContent<>.init(storage:)();
      v98 = v271;
      sub_1000794BC(v72, v271);
      sub_1000439B4();
      sub_1003FD094();
      sub_1003FD290();
      sub_10004223C();
      sub_100120078();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v72, &qword_100CB6010);
      v168 = sub_100024140();
      sub_1000794BC(v168, v169);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_1000196B0();
      sub_10012CCA0();
      sub_10000C90C();
      sub_10003FDA0(v170, v171);
      v120 = v147;
      v121 = &qword_100CB6028;
      goto LABEL_7;
    case 3u:
      v172 = v267;
      sub_1003FD8A8(v86, v267, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      v173 = sub_10022C350(&qword_100CB60D0);
      v174 = v260;
      sub_1000302D8(v172, v260 + v173[9], &qword_100CB6170);
      v175 = v256;
      sub_1003FDADC(v172, v256, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      v176 = (*(v255 + 80) + 16) & ~*(v255 + 80);
      v277 = swift_allocObject();
      sub_1003FD8A8(v175, v277 + v176, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      sub_1003FDADC(v172, v175, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      v177 = swift_allocObject();
      sub_1003FD8A8(v175, v177 + v176, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      sub_10003042C();
      sub_10006A798();
      v178 = swift_allocObject();
      sub_100008528(v178);
      v179 = (v174 + v173[14]);
      sub_10008654C();
      v180 = [objc_opt_self() mainBundle];
      v181 = sub_10001EB98();
      sub_100031CF0(v181, v182, v183, v184, v185, v186, v187, v188);
      sub_100017844();

      *v179 = "unit configuration view";
      v179[1] = v176;
      *v174 = 0;
      v174[1] = 0;
      sub_100028118(v174 + v173[10]);
      v189 = (v174 + v173[12]);
      v190 = v277;
      *v189 = sub_1003FD904;
      v189[1] = v190;
      v191 = (v174 + v173[13]);
      *v191 = sub_1003FD91C;
      v191[1] = v177;
      v192 = (v174 + v173[11]);
      *v192 = sub_1003FD934;
      v192[1] = v178;
      LOBYTE(v173) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v193 = v174 + *(v270 + 36);
      *v193 = v173;
      sub_100069558(v193, v194, v195, v196, v197);
      sub_1000716E8(v174, v268);
      sub_100071930();
      sub_1003FD120();
      sub_1003FD1D8();
      v98 = v269;
      _ConditionalContent<>.init(storage:)();
      sub_10003BDB8(v98, &v298);
      sub_1000439B4();
      sub_1003FD094();
      sub_1003FD290();
      v198 = v272;
      sub_100120078();
      _ConditionalContent<>.init(storage:)();
      sub_10000C90C();
      sub_10003FDA0(v199, v200);
      sub_1000302D8(v198, v280, &qword_100CB6018);
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_100022B24();
      _ConditionalContent<>.init(storage:)();
      sub_10000C90C();
      sub_10003FDA0(v201, v202);
      sub_100043718(v174);
      v203 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature;
      v204 = &v292;
      goto LABEL_9;
    case 4u:
      v122 = v259;
      sub_1000419E4();
      sub_10011C0F0(v123, v124, v125);
      v126 = sub_10022C350(&qword_100CB6098);
      sub_100025174(*(v126 + 36));
      sub_10003042C();
      sub_10006A798();
      v127 = swift_allocObject();
      sub_100008528(v127);
      v98 = v91 + *(v126 + 56);
      sub_10008654C();
      v128 = [objc_opt_self() mainBundle];
      v129 = sub_10001EB98();
      sub_100031CF0(v129, v130, v131, v132, v133, v134, v135, v136);
      sub_100017844();

      sub_1000145A4();
      *v137 = sub_1003FD040;
      v137[1] = v127;
      LOBYTE(v126) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v138 = (v91 + *(v273 + 36));
      *v138 = v126;
      sub_100069558(v138, v139, v140, v141, v142);
      sub_100052320(v91, &v298);
      sub_100071930();
      sub_1003FD094();
      sub_1003FD290();
      sub_10004223C();
      _ConditionalContent<>.init(storage:)();
      v143 = sub_100024140();
      sub_1000794BC(v143, v144);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_1000196B0();
      sub_10012CCA0();
      sub_10000C90C();
      sub_10003FDA0(v145, v146);
      v120 = v122;
      v121 = &qword_100CB5FF0;
      goto LABEL_7;
    case 5u:
      sub_1003FD8A8(v86, v261, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
      v231 = Solarium.init()();
      __chkstk_darwin(v231);
      __chkstk_darwin(v232);
      sub_10022C350(&qword_100CB6110);
      sub_1003FD568();
      object = v302._object;
      StaticIf<>.init(_:then:else:)();
      v234 = v252;
      v235 = v262;
      (*(v252 + 16))(v67, object, v262);
      sub_100071930();
      sub_100011550();
      sub_1003FD490(v236, v237);
      sub_1003FD4D8();
      sub_1000B9924();
      _ConditionalContent<>.init(storage:)();
      sub_1000716E8(v1, v275);
      sub_1000439B4();
      sub_1003FD3D4();
      sub_1003FD620();
      v238 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v1);
      sub_1000716E8(v238, v280);
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_100022B24();
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v238);
      (*(v234 + 8))(object, v235);
      v203 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows;
      v204 = &v286;
LABEL_9:
      v239 = *(v204 - 32);
      goto LABEL_11;
    case 6u:
      sub_1003FD8A8(v86, v81, type metadata accessor for UnitsConfigurationViewModel.Representation.Full);
      sub_1003FDADC(v81, v76, type metadata accessor for UnitsConfigurationViewModel.Representation.Full);
      sub_100035B30(v1 + 16, v76 + *(v72 + 20));
      v240 = (v76 + *(v72 + 24));
      v241 = [objc_opt_self() mainBundle];
      v242._countAndFlagsBits = 0xD000000000000016;
      v301._object = 0x8000000100AC64F0;
      v243._countAndFlagsBits = 0x7374696E55;
      v242._object = 0x8000000100AC64D0;
      v301._countAndFlagsBits = 0xD000000000000036;
      v243._object = 0xE500000000000000;
      v244 = NSLocalizedString(_:tableName:bundle:value:comment:)(v242, 0, v241, v243, v301);

      *v240 = v244;
      sub_1003FDADC(v76, v67, type metadata accessor for ContentViewiOS);
      sub_1000439B4();
      sub_100011550();
      sub_1003FD490(v245, v246);
      sub_1003FD4D8();
      sub_1000B9924();
      _ConditionalContent<>.init(storage:)();
      sub_1000716E8(v1, v275);
      sub_1000439B4();
      sub_1003FD3D4();
      sub_1003FD620();
      v247 = v276;
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v1);
      sub_1000716E8(v247, v280);
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_100022B24();
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v247);
      sub_1003FDA84(v76, type metadata accessor for ContentViewiOS);
      v203 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full;
      v239 = v81;
LABEL_11:
      sub_1003FDA84(v239, v203);
      break;
    default:
      v99 = v253;
      sub_10011C0F0(v86, v253, &qword_100CB6058);
      v100 = sub_10022C350(&qword_100CB6140);
      v101 = v254;
      sub_1000302D8(v99, v254 + v100[9], &qword_100CB6058);
      sub_10003042C();
      sub_10006A798();
      v102 = swift_allocObject();
      sub_100008528(v102);
      v103 = (v101 + v100[14]);
      sub_10008654C();
      v104 = [objc_opt_self() mainBundle];
      v105._countAndFlagsBits = sub_10001EB98();
      v106._countAndFlagsBits = 1953066581;
      v106._object = 0xE400000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v105, v107, v104, v106, v302);
      sub_100017844();

      *v103 = "unit configuration view";
      v103[1] = v81;
      *v101 = 0;
      v101[1] = 0;
      sub_100028118(v101 + v100[10]);
      v108 = (v101 + v100[12]);
      *v108 = 0;
      v108[1] = 0;
      v109 = (v101 + v100[13]);
      *v109 = 0;
      v109[1] = 0;
      v110 = (v101 + v100[11]);
      *v110 = sub_1003FDA20;
      v110[1] = v102;
      LOBYTE(v104) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v111 = v101 + *(v263 + 36);
      *v111 = v104;
      sub_100069558(v111, v112, v113, v114, v115);
      sub_10003BDB8(v101, v289);
      sub_1000439B4();
      sub_1003FD6AC();
      sub_1003FD764();
      sub_1000B01F8();
      _ConditionalContent<>.init(storage:)();
      v98 = v275;
      sub_1000302D8(v72, v275, &qword_100CB6048);
      sub_100071930();
      sub_1003FD3D4();
      sub_1003FD620();
      sub_100087DA4();
      sub_10003FDA0(v72, &qword_100CB6048);
      v116 = sub_100024140();
      sub_1000302D8(v116, v117, &qword_100CB6088);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_1000196B0();
      sub_10003FDA0(v82, &qword_100CB6088);
      sub_10000C90C();
      sub_10003FDA0(v118, v119);
      v120 = v99;
      v121 = &qword_100CB6058;
LABEL_7:
      sub_10003FDA0(v120, v121);
      break;
  }

  v248 = v284;
  v249 = v282;
  sub_1000716E8(v98, v282);
  sub_1000716E8(v249, v248);
  v250 = sub_10022C350(&qword_100CB6168);
  sub_100028118(v248 + *(v250 + 48));
  sub_100043718(v98);
  return sub_100043718(v249);
}

uint64_t sub_1003F2890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 56);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  v10 = *(sub_10022C350(&qword_100CB6178) + 44);
  sub_1003FDADC(a2, v8, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  sub_100035B30(a1 + 16, v22);
  sub_1003F29D8(v8, v22, a3 + v10);
  LOBYTE(a2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_10022C350(&qword_100CB6110);
  v20 = a3 + *(result + 36);
  *v20 = a2;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

void sub_1003F29D8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1003FD8A8(a1, a3, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  v5 = type metadata accessor for ConditionsContentView(0);
  sub_100013188(a2, a3 + v5[5]);
  v6 = (a3 + v5[6]);
  State.init(wrappedValue:)();
  *v6 = v33;
  v6[1] = v34;
  v7 = (a3 + v5[7]);
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000018;
  v35._object = 0x8000000100AC6550;
  v10._object = 0x8000000100AC6530;
  v35._countAndFlagsBits = 0xD000000000000057;
  v11._countAndFlagsBits = 1684957527;
  v11._object = 0xE400000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v35);

  *v7 = v12;
  v13 = (a3 + v5[8]);
  v14 = [v8 mainBundle];
  v36._object = 0x8000000100AC65E0;
  v15._countAndFlagsBits = 0x7469706963657250;
  v15._object = 0xED00006E6F697461;
  v16._countAndFlagsBits = 0xD000000000000021;
  v16._object = 0x8000000100AC65B0;
  v36._countAndFlagsBits = 0xD000000000000060;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v14, v15, v36);

  *v13 = v17;
  v18 = (a3 + v5[9]);
  v19 = [v8 mainBundle];
  v37._object = 0x8000000100AC6670;
  v20._countAndFlagsBits = 0x6572757373657250;
  v21._object = 0x8000000100AC6650;
  v37._countAndFlagsBits = 0xD00000000000005BLL;
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v20._object = 0xE800000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v19, v20, v37);

  *v18 = v22;
  v23 = (a3 + v5[10]);
  v24 = [v8 mainBundle];
  v38._object = 0x8000000100AC66F0;
  v25._countAndFlagsBits = 0x65636E6174736944;
  v26._object = 0x8000000100AC66D0;
  v38._countAndFlagsBits = 0xD00000000000005BLL;
  v26._countAndFlagsBits = 0xD00000000000001CLL;
  v25._object = 0xE800000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v24, v25, v38);

  *v23 = v27;
  v28 = (a3 + v5[11]);
  v29 = [v8 mainBundle];
  v39._object = 0x8000000100AC6770;
  v30._countAndFlagsBits = 0x74617265706D6554;
  v30._object = 0xEB00000000657275;
  v31._countAndFlagsBits = 0xD00000000000001FLL;
  v31._object = 0x8000000100AC6750;
  v39._countAndFlagsBits = 0xD00000000000004ALL;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v30, v39);

  *v28 = v32;
}

double sub_1003F2D38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v9 = *(sub_10022C350(&qword_100CB6178) + 44);
  sub_1003FDADC(a1, v8, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  sub_100035B30(a2 + 16, v13);
  sub_1003F29D8(v8, v13, a3 + v9);
  LOBYTE(a2) = static Edge.Set.all.getter();
  v10 = a3 + *(sub_10022C350(&qword_100CB6110) + 36);
  *v10 = a2;
  *(v10 + 8) = xmmword_100A49930;
  result = 12.0;
  *(v10 + 24) = xmmword_100A49940;
  *(v10 + 40) = 0;
  return result;
}

uint64_t sub_1003F2E64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = sub_100021464(a1, a2, a3);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1000161C0((v6 + 16), *(v6 + 40));
  v12 = v3(0);
  sub_1000037E8();
  (*(v13 + 16))(v11, v7, v12);
  v14 = sub_1000BCE20();
  v5(v14);
  return sub_10003FDA0(v11, v4);
}

uint64_t sub_1003F2F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConfiguration.Temperature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v13, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    sub_1000161C0((a2 + 16), *(a2 + 40));
    sub_10001B350(v10, 1, 1, v4);
    sub_1006BC130(v10);
    return sub_10003FDA0(v10, &qword_100CB6198);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_1000161C0((a2 + 16), *(a2 + 40));
    (*(v5 + 16))(v10, v7, v4);
    sub_10001B350(v10, 0, 1, v4);
    sub_1006BC130(v10);
    sub_10003FDA0(v10, &qword_100CB6198);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1003F31A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = sub_100024D10(v7, 1, v8);
  sub_1003FDA84(v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (v9 != 1)
  {
    return sub_1005B0FF4();
  }

  v10 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  return sub_1005B0D1C(a3 + *(v10 + 20), 0);
}

uint64_t sub_1003F329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = sub_100024D10(v7, 1, v8);
  sub_1003FDA84(v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (v9 != 1)
  {
    return sub_1005B11F8();
  }

  v10 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  return sub_1005B0D1C(a3 + *(v10 + 20), 1);
}

uint64_t sub_1003F3390()
{
  sub_100035B30(v0 + 8, v9);

  v1 = static Solarium.isEnabled.getter();
  v2 = 12.0;
  if (v1)
  {
    v2 = 16.0;
  }

  *(&v8 + 1) = v2;
  sub_10022C350(&qword_100CA49D8);
  sub_10023FBF4(&qword_100CA49E0, &qword_100CA49D8);
  *&v6 = ObservedObject.init(wrappedValue:)();
  *(&v6 + 1) = v3;
  sub_100013188(v9, v7);
  v10[0] = v6;
  v10[1] = v7[0];
  v10[2] = v7[1];
  v10[3] = v8;
  sub_10022C350(&qword_100CB5FA8);
  sub_1003F3E04();
  sub_10022E824(&qword_100CB5FB8);
  sub_100018414();
  sub_10023FBF4(v4, &qword_100CB5FB8);
  sub_100031590();
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1003F3E58(v10);
}

uint64_t sub_1003F353C(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CB5FB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_10022C350(&qword_100CB5FC8);
  sub_1003F3E90();
  ToolbarItem<>.init(placement:content:)();
  sub_10023FBF4(&qword_100CB5FC0, &qword_100CB5FB8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003F36F4()
{
  Solarium.init()();
  sub_10022C350(&qword_100CB5FE0);
  sub_10022C350(&qword_100CA5528);
  sub_1003F3F54();
  sub_10023FBF4(&qword_100CA5548, &qword_100CA5528);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1003F37FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v21 = type metadata accessor for AccessibilityTraits();
  v20[0] = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&unk_100CE1740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  v9 = sub_10022C350(&qword_100CB5FE0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  sub_1003F404C(a1, v22);
  v12 = swift_allocObject();
  v13 = v22[1];
  v12[1] = v22[0];
  v12[2] = v13;
  v12[3] = v22[2];
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v14, v16, v18 & 1);

  (*(v6 + 8))(v8, v5);
  static AccessibilityTraits.isSelected.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v20[0] + 8))(v4, v21);
  return sub_10003FDA0(v11, &qword_100CB5FE0);
}

uint64_t sub_1003F3B30@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1003F3B70(uint64_t a1)
{
  sub_1003F404C(a1, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  v1[1] = v4[0];
  v1[2] = v2;
  v1[3] = v4[2];
  return Button.init(action:label:)();
}

uint64_t sub_1003F3C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v11 = Text.font(_:)();
  v13 = v12;
  LOBYTE(v3) = v14;
  v16 = v15;

  sub_10010CD64(v6, v8, v10 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v16;
  return result;
}

unint64_t sub_1003F3E04()
{
  result = qword_100CB5FB0;
  if (!qword_100CB5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5FB0);
  }

  return result;
}

unint64_t sub_1003F3E90()
{
  result = qword_100CB5FD0;
  if (!qword_100CB5FD0)
  {
    sub_10022E824(&qword_100CB5FC8);
    sub_1003F3F54();
    sub_10023FBF4(&qword_100CA5548, &qword_100CA5528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5FD0);
  }

  return result;
}

unint64_t sub_1003F3F54()
{
  result = qword_100CB5FD8;
  if (!qword_100CB5FD8)
  {
    sub_10022E824(&qword_100CB5FE0);
    sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740);
    sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5FD8);
  }

  return result;
}

uint64_t sub_1003F40A0@<X0>(uint64_t a1@<X8>)
{
  sub_1000302D8(v1, a1, &qword_100CB6058);
  v3 = sub_10022C350(&qword_100CB6058);
  sub_10001B350(a1, 0, 1, v3);
  v4 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v5 = v4[5];
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  sub_1000302D8(v1 + v6[5], a1 + v5, &qword_100CB6038);
  v7 = sub_10022C350(&qword_100CB6038);
  sub_10001B350(a1 + v5, 0, 1, v7);
  v8 = v4[6];
  sub_1000302D8(v1 + v6[6], a1 + v8, &qword_100CB6028);
  v9 = sub_10022C350(&qword_100CB6028);
  sub_10001B350(a1 + v8, 0, 1, v9);
  v10 = v4[7];
  v11 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_10001B350(a1 + v10, 1, 1, v11);
  v12 = v4[8];
  sub_1000302D8(v1 + v6[8], a1 + v12, &qword_100CB5FF0);
  v13 = sub_10022C350(&qword_100CB5FF0);

  return sub_10001B350(a1 + v12, 0, 1, v13);
}

uint64_t sub_1003F4244@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsetGroupedListStyle();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10022C350(&qword_100CB6380);
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v33 - v9;
  v11 = sub_10022C350(&qword_100CB6388);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_10022C350(&qword_100CB6390);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v43 = v1;
  sub_10022C350(&qword_100CB6398);
  sub_10023FBF4(&qword_100CB63A0, &qword_100CB6398);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_10023FBF4(&qword_100CB63A8, &qword_100CB6380);
  v19 = v34;
  v18 = v35;
  View.listStyle<A>(_:)();
  (*(v36 + 8))(v7, v18);
  (*(v8 + 8))(v10, v19);
  v20 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v11 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = (v33 + *(type metadata accessor for ContentViewiOS(0) + 24));
  v25 = *v23;
  v24 = v23[1];
  v44 = v25;
  v45 = v24;
  v26 = sub_1003FE6A0();
  v27 = sub_10002D5A4();
  View.navigationTitle<A>(_:)();
  sub_10003FDA0(v13, &qword_100CB6388);
  v28 = v39;
  v29 = v40;
  v30 = v41;
  (*(v40 + 104))(v39, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v41);
  v44 = v11;
  v45 = &type metadata for String;
  v46 = v26;
  v47 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v29 + 8))(v28, v30);
  return (*(v38 + 8))(v17, v31);
}

uint64_t sub_1003F4710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for ConditionsView(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v40 - v7;
  v41 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v41);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for TemperatureView(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v40 - v17);
  v43 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v19 = a1 + *(v43 + 28);
  sub_1000302D8(v19, v18 + v14[7], &qword_100CB6170);
  v20 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_1000302D8(v19 + *(v20 + 20), v18 + v14[9], &qword_100CB6198);
  v40 = *(type metadata accessor for ContentViewiOS(0) + 20);
  sub_100035B30(a1 + v40, v18 + v14[8]);
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v49._object = 0x8000000100AC6770;
  v23._countAndFlagsBits = 0x74617265706D6554;
  v23._object = 0xEB00000000657275;
  v24._object = 0x8000000100AC6750;
  v49._countAndFlagsBits = 0xD00000000000004ALL;
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v22, v23, v49);

  *v18 = v25;
  v26 = type metadata accessor for UnitConfiguration.Temperature();
  sub_10001B350(v12, 1, 1, v26);
  sub_1003FDADC(v12, v9, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  State.init(wrappedValue:)();
  sub_1003FDA84(v12, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v27 = v42;
  sub_1003F40A0(v42);
  v28 = v40;
  sub_100035B30(a1 + v40, v27 + *(v4 + 28));
  v29 = (v27 + *(v4 + 32));
  v30 = v27;
  v31 = [v21 mainBundle];
  v50._object = 0x8000000100AC67F0;
  v32._countAndFlagsBits = 0x6E5520726568744FLL;
  v32._object = 0xEB00000000737469;
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x8000000100AC67C0;
  v50._countAndFlagsBits = 0xD000000000000083;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v31, v32, v50);

  *v29 = v34;
  sub_100035B30(a1 + v28, v47);
  sub_1003F4C5C(v47, *(a1 + *(v43 + 36)), v48);
  v35 = v44;
  sub_1003FDADC(v18, v44, type metadata accessor for TemperatureView);
  v36 = v45;
  sub_1003FDADC(v30, v45, type metadata accessor for ConditionsView);
  sub_1003FE828(v48, v47);
  v37 = v46;
  sub_1003FDADC(v35, v46, type metadata accessor for TemperatureView);
  v38 = sub_10022C350(&qword_100CB63B8);
  sub_1003FDADC(v36, v37 + *(v38 + 48), type metadata accessor for ConditionsView);
  sub_1003FE828(v47, v37 + *(v38 + 64));
  sub_1003FE860(v48);
  sub_1003FDA84(v30, type metadata accessor for ConditionsView);
  sub_1003FDA84(v18, type metadata accessor for TemperatureView);
  sub_1003FE860(v47);
  sub_1003FDA84(v36, type metadata accessor for ConditionsView);
  return sub_1003FDA84(v35, type metadata accessor for TemperatureView);
}

void sub_1003F4C5C(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100013188(a1, a3);
  *(a3 + 40) = a2;
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0x8000000100AC68B0;
  v7._countAndFlagsBits = 0x20746C7561666544;
  v7._object = 0xED00007374696E55;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x8000000100AC6880;
  v18._countAndFlagsBits = 0xD000000000000064;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v6, v7, v18);

  *(a3 + 48) = v9;
  v10 = [v5 mainBundle];
  v19._object = 0x8000000100AC6990;
  v11._countAndFlagsBits = 0xD000000000000029;
  v11._object = 0x8000000100AC6920;
  v12._countAndFlagsBits = 0xD000000000000036;
  v12._object = 0x8000000100AC6950;
  v19._countAndFlagsBits = 0xD00000000000006ALL;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19);

  *(a3 + 64) = v13;
  v14 = [v5 mainBundle];
  v20._object = 0x8000000100AC6A50;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v15._object = 0x8000000100AC6A00;
  v16._object = 0x8000000100AC6A30;
  v20._countAndFlagsBits = 0xD000000000000074;
  v16._countAndFlagsBits = 0xD000000000000010;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

  *(a3 + 80) = v17;
}

uint64_t sub_1003F4E48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v30 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v30);
  v32 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TemperatureView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = v7;
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CB6748);
  __chkstk_darwin(v29);
  v10 = v23 - v9;
  v31 = sub_10022C350(&qword_100CB6750);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = v23 - v11;
  sub_1003F529C();
  v23[2] = v2 + *(v5 + 28);
  v23[1] = *(sub_10022C350(&qword_100CB6170) + 36);
  v28 = type metadata accessor for TemperatureView;
  v24 = v8;
  sub_1003FDADC(v2, v8, type metadata accessor for TemperatureView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v25 = type metadata accessor for TemperatureView;
  sub_1003FD8A8(v8, v13 + v12, type metadata accessor for TemperatureView);
  v23[0] = sub_100400938();
  v14 = sub_1003FD490(&qword_100CB67A0, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v16 = v29;
  v15 = v30;
  View.onChange<A>(of:initial:_:)();

  sub_10003FDA0(v10, &qword_100CB6748);
  sub_10022C350(&qword_100CB6558);
  v17 = v32;
  State.wrappedValue.getter();
  v18 = v24;
  sub_1003FDADC(v2, v24, v28);
  v19 = swift_allocObject();
  sub_1003FD8A8(v18, v19 + v12, v25);
  v35 = v16;
  v36 = v15;
  v37 = v23[0];
  v38 = v14;
  swift_getOpaqueTypeConformance2();
  v20 = v31;
  v21 = v27;
  View.onChange<A>(of:initial:_:)();

  sub_1003FDA84(v17, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  return (*(v33 + 8))(v21, v20);
}

uint64_t sub_1003F529C()
{

  static Color.secondary.getter();
  Text.foregroundStyle<A>(_:)();

  sub_10022C350(&qword_100CB6778);
  sub_100400A54();
  return Section<>.init(header:content:)();
}

uint64_t sub_1003F53AC(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  sub_1003FDADC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TemperatureView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1003FD8A8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TemperatureView);

  sub_10022C350(&qword_100CB67A8);
  sub_10022C350(&qword_100CB6788);
  sub_10023FBF4(&qword_100CB67B0, &qword_100CB67A8);
  sub_1003FD490(&qword_100CB67B8, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  sub_100400AD8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003F55C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v69 = a3;
  v70 = type metadata accessor for AccessibilityTraits();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TemperatureView(0);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB6790);
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v54 = &v52 - v11;
  v12 = sub_10022C350(&qword_100CB67C0);
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v57 = &v52 - v13;
  v65 = sub_10022C350(&qword_100CB6788);
  __chkstk_darwin(v65);
  v66 = &v52 - v14;
  v15 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  sub_1003FDADC(a1, &v52 - v19, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v21 = type metadata accessor for UnitConfiguration.Temperature();
  v22 = sub_100024D10(v20, 1, v21);
  sub_1003FDA84(v20, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v55 = v7;
  if (v22 == 1)
  {
    v23 = sub_1005B0D1C(v71 + *(v7 + 28), 0);
  }

  else
  {
    v23 = sub_1005B0FF4();
  }

  v25 = v23;
  v26 = v24;
  v27 = v71;
  sub_1003FDADC(v71, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TemperatureView);
  sub_1003FDADC(a1, v17, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v28 = *(v56 + 80);
  v53 = a1;
  v29 = (v28 + 16) & ~v28;
  v30 = (v8 + *(v52 + 80) + v29) & ~*(v52 + 80);
  v31 = swift_allocObject();
  sub_1003FD8A8(v9, v31 + v29, type metadata accessor for TemperatureView);
  v32 = sub_1003FD8A8(v17, v31 + v30, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  __chkstk_darwin(v32);
  *(&v52 - 4) = v25;
  *(&v52 - 3) = v26;
  *(&v52 - 2) = a1;
  *(&v52 - 1) = v27;
  sub_10022C350(&qword_100CB67C8);
  sub_10023FBF4(&qword_100CB67D0, &qword_100CB67C8);
  v33 = v54;
  Button.init(action:label:)();
  v34 = v62;
  static AccessibilityChildBehavior.ignore.getter();
  v35 = sub_10023FBF4(&qword_100CB6798, &qword_100CB6790);
  v36 = v57;
  v37 = v59;
  View.accessibilityElement(children:)();
  (*(v63 + 8))(v34, v64);
  (*(v58 + 8))(v33, v37);
  v72 = v37;
  v73 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v66;
  v39 = v61;
  View.accessibilityLabel(_:)();

  (*(v60 + 8))(v36, v39);
  sub_10022C350(&qword_100CB6558);
  State.wrappedValue.getter();
  sub_1006FE94C(v53, v17, v40, v41, v42, v43, v44, v45, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  LOBYTE(v39) = v46;
  sub_1003FDA84(v17, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (v39)
  {
    sub_10022C350(&unk_100CE17E0);
    v47 = v68;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isSelected.getter();
    v72 = v48;
    sub_1003FD490(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0);
    v49 = v67;
    v50 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v72 = _swiftEmptyArrayStorage;
    sub_1003FD490(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0);
    v49 = v67;
    v50 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v68;
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v47 + 8))(v49, v50);
  return sub_10003FDA0(v38, &qword_100CB6788);
}

uint64_t sub_1003F5EE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TemperatureView(0);
  sub_1003FDADC(a2, v5, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  sub_10022C350(&qword_100CB6558);
  return State.wrappedValue.setter();
}

uint64_t sub_1003F5FAC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10022C350(&qword_100CB67D8);
  return sub_1003F602C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_1003F602C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a1;
  v50 = a3;
  v48 = sub_10022C350(&qword_100CB67E0);
  __chkstk_darwin(v48);
  v45 = &v44 - v3;
  v4 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB67E8);
  __chkstk_darwin(v7 - 8);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = sub_10022C350(&qword_100CB66D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = objc_opt_self();

  v19 = [v18 labelColor];
  v51 = Color.init(_:)();
  v20 = Text.foregroundStyle<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v51 = v20;
  v52 = v22;
  v24 &= 1u;
  LOBYTE(v53) = v24;
  v54 = v26;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v20, v22, v24);

  type metadata accessor for TemperatureView(0);
  sub_10022C350(&qword_100CB6558);
  State.wrappedValue.getter();
  sub_1006FE94C(v47, v6, v27, v28, v29, v30, v31, v32, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v34 = v33;
  sub_1003FDA84(v6, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v35 = 1;
  if (v34)
  {
    v36 = Image.init(systemName:)();
    v37 = static Color.blue.getter();
    v51 = v36;
    v52 = v37;
    sub_10022C350(&qword_100CAF6F8);
    sub_10035B9E4();
    v38 = v45;
    View.accessibilityHidden(_:)();

    sub_10011C0F0(v38, v11, &qword_100CB67E0);
    v35 = 0;
  }

  sub_10001B350(v11, v35, 1, v48);
  sub_1000302D8(v17, v14, &qword_100CB66D8);
  v39 = v49;
  sub_1000302D8(v11, v49, &qword_100CB67E8);
  v40 = v50;
  sub_1000302D8(v14, v50, &qword_100CB66D8);
  v41 = sub_10022C350(&qword_100CB67F0);
  v42 = v40 + *(v41 + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_1000302D8(v39, v40 + *(v41 + 64), &qword_100CB67E8);
  sub_10003FDA0(v11, &qword_100CB67E8);
  sub_10003FDA0(v17, &qword_100CB66D8);
  sub_10003FDA0(v39, &qword_100CB67E8);
  return sub_10003FDA0(v14, &qword_100CB66D8);
}

uint64_t sub_1003F64BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TemperatureView(0);
  sub_1003FDADC(a2, v5, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  sub_10022C350(&qword_100CB6558);
  return State.wrappedValue.setter();
}

uint64_t sub_1003F6580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a2, v14, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (sub_100024D10(v14, 1, v8) == 1)
  {
    v15 = type metadata accessor for TemperatureView(0);
    sub_1000161C0((a3 + *(v15 + 24)), *(a3 + *(v15 + 24) + 24));
    sub_10001B350(v7, 1, 1, v8);
    sub_1006BC130(v7);
    return sub_10003FDA0(v7, &qword_100CB6198);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v17 = type metadata accessor for TemperatureView(0);
    sub_1000161C0((a3 + *(v17 + 24)), *(a3 + *(v17 + 24) + 24));
    (*(v9 + 16))(v7, v11, v8);
    sub_10001B350(v7, 0, 1, v8);
    sub_1006BC130(v7);
    sub_10003FDA0(v7, &qword_100CB6198);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1003F6808()
{
  type metadata accessor for ConditionsView(0);

  static Color.secondary.getter();
  Text.foregroundStyle<A>(_:)();

  type metadata accessor for ConditionsContentView(0);
  sub_1003FD490(&qword_100CB6740, type metadata accessor for ConditionsContentView);
  return Section<>.init(header:content:)();
}

void sub_1003F694C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v6, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  v7 = type metadata accessor for ConditionsView(0);
  sub_100035B30(a1 + *(v7 + 20), v9);
  sub_1003F29D8(v6, v9, a2);
}

uint64_t sub_1003F6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v290 = a1;
  v277 = a2;
  v275 = sub_10022C350(&qword_100CB6140);
  __chkstk_darwin(v275);
  v256 = &v229 - v2;
  v3 = sub_10022C350(&qword_100CB63C0);
  __chkstk_darwin(v3 - 8);
  v272 = &v229 - v4;
  v271 = sub_10022C350(&qword_100CB6058);
  __chkstk_darwin(v271);
  v255 = &v229 - v5;
  v6 = sub_10022C350(&qword_100CB63C8);
  __chkstk_darwin(v6 - 8);
  v276 = &v229 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v282 = &v229 - v9;
  v270 = sub_10022C350(&qword_100CB60B8);
  __chkstk_darwin(v270);
  v254 = (&v229 - v10);
  v11 = sub_10022C350(&qword_100CB63D0);
  __chkstk_darwin(v11 - 8);
  v269 = &v229 - v12;
  v268 = sub_10022C350(&qword_100CB6028);
  __chkstk_darwin(v268);
  v253 = &v229 - v13;
  v14 = sub_10022C350(&qword_100CB63D8);
  __chkstk_darwin(v14 - 8);
  v274 = &v229 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v281 = &v229 - v17;
  v267 = sub_10022C350(&qword_100CB6158);
  __chkstk_darwin(v267);
  v252 = &v229 - v18;
  v19 = sub_10022C350(&qword_100CB63E0);
  __chkstk_darwin(v19 - 8);
  v266 = &v229 - v20;
  v265 = sub_10022C350(&qword_100CB6038);
  __chkstk_darwin(v265);
  v251 = &v229 - v21;
  v22 = sub_10022C350(&qword_100CB63E8);
  __chkstk_darwin(v22 - 8);
  v273 = &v229 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v289 = &v229 - v25;
  v264 = sub_10022C350(&qword_100CB6098);
  __chkstk_darwin(v264);
  v250 = &v229 - v26;
  v27 = sub_10022C350(&qword_100CB63F0);
  __chkstk_darwin(v27 - 8);
  v263 = &v229 - v28;
  v262 = sub_10022C350(&qword_100CB5FF0);
  __chkstk_darwin(v262);
  v249 = &v229 - v29;
  v30 = sub_10022C350(&qword_100CB63F8);
  __chkstk_darwin(v30 - 8);
  v280 = &v229 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v288 = &v229 - v33;
  v261 = sub_10022C350(&qword_100CB6400);
  __chkstk_darwin(v261);
  v248 = &v229 - v34;
  v245 = type metadata accessor for QuaternaryDividerStyle();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v242 = &v229 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for Divider();
  v241 = *(v243 - 8);
  __chkstk_darwin(v243);
  v240 = &v229 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10022C350(&qword_100CB6408);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v260 = &v229 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v259 = &v229 - v39;
  v237 = sub_10022C350(&unk_100CE0EB0);
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v229 - v40;
  v41 = type metadata accessor for ConditionsContentView(0);
  v283 = *(v41 - 8);
  __chkstk_darwin(v41);
  v284 = v42;
  v43 = &v229 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_10022C350(&qword_100CB60D0);
  __chkstk_darwin(v234);
  v45 = (&v229 - v44);
  v239 = sub_10022C350(&qword_100CB6410);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v258 = &v229 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v257 = &v229 - v48;
  v49 = sub_10022C350(&qword_100CB6418);
  __chkstk_darwin(v49 - 8);
  v51 = &v229 - v50;
  v52 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  v233 = *(v52 - 8);
  v53 = *(v233 + 64);
  __chkstk_darwin(v52);
  v54 = &v229 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v229 - v56;
  v58 = sub_10022C350(&qword_100CB6420);
  __chkstk_darwin(v58 - 8);
  v279 = &v229 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v287 = &v229 - v61;
  v286 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  sub_1000302D8(v290 + v286[7], v51, &qword_100CB6418);
  v62 = sub_100024D10(v51, 1, v52);
  v285 = v43;
  v278 = v41;
  if (v62 == 1)
  {
    sub_10003FDA0(v51, &qword_100CB6418);
    v63 = 1;
    v64 = v287;
  }

  else
  {
    v65 = v51;
    v66 = v57;
    sub_1003FD8A8(v65, v57, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v67 = *(v41 + 44);
    v68 = v290;
    v69 = (v290 + v67);
    v71 = *v69;
    v70 = v69[1];
    v231 = v71;
    v230 = v70;
    v72 = v234;
    sub_1000302D8(v66, v45 + *(v234 + 36), &qword_100CB6170);
    v73 = v66;
    v232 = v66;
    sub_1003FDADC(v66, v54, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v74 = (*(v233 + 80) + 16) & ~*(v233 + 80);
    v233 = swift_allocObject();
    sub_1003FD8A8(v54, v233 + v74, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    sub_1003FDADC(v73, v54, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v75 = swift_allocObject();
    sub_1003FD8A8(v54, v75 + v74, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v76 = v68;
    v77 = v285;
    sub_1003FDADC(v76, v285, type metadata accessor for ConditionsContentView);
    v78 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v79 = swift_allocObject();
    sub_1003FD8A8(v77, v79 + v78, type metadata accessor for ConditionsContentView);
    v80 = (v45 + v72[14]);
    v81 = objc_opt_self();
    v82 = v230;

    v83 = [v81 mainBundle];
    v294._object = 0x8000000100AC6470;
    v84._object = 0x8000000100AC6450;
    v294._countAndFlagsBits = 0xD000000000000051;
    v84._countAndFlagsBits = 0xD000000000000018;
    v85._countAndFlagsBits = 1953066581;
    v85._object = 0xE400000000000000;
    v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v294);

    *v80 = v86;
    *v45 = v231;
    v45[1] = v82;
    v87 = v45 + v72[10];
    *v87 = 0;
    v87[8] = 1;
    v88 = (v45 + v72[12]);
    v89 = v233;
    *v88 = sub_1004010F4;
    v88[1] = v89;
    v90 = (v45 + v72[13]);
    *v90 = sub_1004010F8;
    v90[1] = v75;
    v91 = (v45 + v72[11]);
    *v91 = sub_1003FEF50;
    v91[1] = v79;
    Solarium.init()();
    v92 = v235;
    static ViewInputPredicate.! prefix(_:)();
    sub_10022C350(&qword_100CB5FF8);
    sub_10023FBF4(&qword_100CB60C8, &qword_100CB60D0);
    v292 = &type metadata for Solarium;
    v293 = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    sub_1003FD1D8();
    v93 = v257;
    v94 = v237;
    View.staticIf<A, B>(_:then:)();
    (*(v236 + 8))(v92, v94);
    sub_10003FDA0(v45, &qword_100CB60D0);
    v95 = v240;
    Divider.init()();
    v96 = v242;
    static DividerStyle<>.quaternary.getter();
    sub_1003FD490(&qword_100CA7298, &type metadata accessor for Divider);
    sub_1003FD490(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle);
    v97 = v259;
    v98 = v243;
    v99 = v245;
    View.dividerStyle<A>(_:)();
    (*(v244 + 8))(v96, v99);
    (*(v241 + 8))(v95, v98);
    v100 = v238;
    v101 = *(v238 + 16);
    v102 = v258;
    v103 = v239;
    v101(v258, v93, v239);
    v104 = v246;
    v105 = *(v246 + 16);
    v106 = v97;
    v107 = v247;
    v105(v260, v106, v247);
    v108 = v248;
    v101(v248, v102, v103);
    v109 = sub_10022C350(qword_100CB6430);
    v110 = v260;
    v105((v108 + *(v109 + 48)), v260, v107);
    v111 = *(v104 + 8);
    v111(v259, v107);
    v112 = *(v100 + 8);
    v112(v257, v103);
    sub_1003FDA84(v232, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v111(v110, v107);
    v112(v258, v103);
    v113 = v287;
    sub_10011C0F0(v108, v287, &qword_100CB6400);
    v63 = 0;
    v64 = v113;
  }

  sub_10001B350(v64, v63, 1, v261);
  v114 = v290;
  v115 = v263;
  sub_1000302D8(v290 + v286[8], v263, &qword_100CB63F0);
  if (sub_100024D10(v115, 1, v262) == 1)
  {
    sub_10003FDA0(v115, &qword_100CB63F0);
    v116 = 1;
    v117 = v288;
    v118 = v264;
  }

  else
  {
    v119 = v249;
    sub_10011C0F0(v115, v249, &qword_100CB5FF0);
    v120 = v278;
    v121 = (v114 + v278[7]);
    v122 = v121[1];
    v263 = *v121;
    v118 = v264;
    v123 = v250;
    sub_1000302D8(v119, &v250[*(v264 + 36)], &qword_100CB5FF0);
    v124 = (v114 + v120[6]);
    v125 = *v124;
    v126 = v124[1];
    v292 = v125;
    v293 = v126;

    sub_10022C350(&qword_100CAD708);
    State.wrappedValue.getter();
    v127 = v291;
    v128 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v129 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v130 = swift_allocObject();
    sub_1003FD8A8(v128, v130 + v129, type metadata accessor for ConditionsContentView);
    v131 = (v123 + v118[14]);
    v132 = [objc_opt_self() mainBundle];
    v295._object = 0x8000000100AC6470;
    v133._object = 0x8000000100AC6450;
    v295._countAndFlagsBits = 0xD000000000000051;
    v133._countAndFlagsBits = 0xD000000000000018;
    v134._countAndFlagsBits = 1953066581;
    v134._object = 0xE400000000000000;
    v135 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v295);

    v114 = v290;
    sub_10003FDA0(v119, &qword_100CB5FF0);
    *v131 = v135;
    *v123 = v263;
    v123[1] = v122;
    v136 = v123 + v118[10];
    *v136 = v127;
    v136[8] = 0;
    v137 = (v123 + v118[12]);
    *v137 = 0;
    v137[1] = 0;
    v138 = (v123 + v118[13]);
    *v138 = 0;
    v138[1] = 0;
    v139 = (v123 + v118[11]);
    *v139 = sub_1003FECD4;
    v139[1] = v130;
    v140 = v123;
    v117 = v288;
    sub_10011C0F0(v140, v288, &qword_100CB6098);
    v116 = 0;
  }

  sub_10001B350(v117, v116, 1, v118);
  v141 = v266;
  sub_1000302D8(v114 + v286[5], v266, &qword_100CB63E0);
  if (sub_100024D10(v141, 1, v265) == 1)
  {
    sub_10003FDA0(v141, &qword_100CB63E0);
    v142 = 1;
    v143 = v289;
    v144 = v267;
  }

  else
  {
    v145 = v251;
    sub_10011C0F0(v141, v251, &qword_100CB6038);
    v146 = v278;
    v147 = (v114 + v278[8]);
    v148 = v147[1];
    v266 = *v147;
    v144 = v267;
    v149 = v252;
    sub_1000302D8(v145, &v252[*(v267 + 36)], &qword_100CB6038);
    v150 = (v114 + v146[6]);
    v151 = *v150;
    v152 = v150[1];
    v292 = v151;
    v293 = v152;

    sub_10022C350(&qword_100CAD708);
    State.wrappedValue.getter();
    v153 = v291;
    v154 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v155 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v156 = swift_allocObject();
    sub_1003FD8A8(v154, v156 + v155, type metadata accessor for ConditionsContentView);
    v157 = (v149 + v144[14]);
    v158 = [objc_opt_self() mainBundle];
    v296._object = 0x8000000100AC6470;
    v159._object = 0x8000000100AC6450;
    v296._countAndFlagsBits = 0xD000000000000051;
    v159._countAndFlagsBits = 0xD000000000000018;
    v160._countAndFlagsBits = 1953066581;
    v160._object = 0xE400000000000000;
    v161 = NSLocalizedString(_:tableName:bundle:value:comment:)(v159, 0, v158, v160, v296);

    v114 = v290;
    sub_10003FDA0(v145, &qword_100CB6038);
    *v157 = v161;
    *v149 = v266;
    v149[1] = v148;
    v162 = v149 + v144[10];
    *v162 = v153;
    v162[8] = 0;
    v163 = (v149 + v144[12]);
    *v163 = 0;
    v163[1] = 0;
    v164 = (v149 + v144[13]);
    *v164 = 0;
    v164[1] = 0;
    v165 = (v149 + v144[11]);
    *v165 = sub_1003FEC98;
    v165[1] = v156;
    v166 = v149;
    v143 = v289;
    sub_10011C0F0(v166, v289, &qword_100CB6158);
    v142 = 0;
  }

  sub_10001B350(v143, v142, 1, v144);
  v167 = v269;
  sub_1000302D8(v114 + v286[6], v269, &qword_100CB63D0);
  if (sub_100024D10(v167, 1, v268) == 1)
  {
    sub_10003FDA0(v167, &qword_100CB63D0);
    v168 = 1;
    v169 = v281;
    v170 = v270;
  }

  else
  {
    v171 = v253;
    sub_10011C0F0(v167, v253, &qword_100CB6028);
    v172 = v278;
    v173 = (v114 + v278[9]);
    v174 = v173[1];
    v286 = *v173;
    v170 = v270;
    v175 = v254;
    sub_1000302D8(v171, v254 + *(v270 + 36), &qword_100CB6028);
    v176 = (v114 + v172[6]);
    v177 = *v176;
    v178 = v176[1];
    v292 = v177;
    v293 = v178;

    sub_10022C350(&qword_100CAD708);
    State.wrappedValue.getter();
    v179 = v291;
    v180 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v181 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v182 = swift_allocObject();
    sub_1003FD8A8(v180, v182 + v181, type metadata accessor for ConditionsContentView);
    v183 = (v175 + v170[14]);
    v184 = [objc_opt_self() mainBundle];
    v297._object = 0x8000000100AC6470;
    v185._object = 0x8000000100AC6450;
    v297._countAndFlagsBits = 0xD000000000000051;
    v185._countAndFlagsBits = 0xD000000000000018;
    v186._countAndFlagsBits = 1953066581;
    v186._object = 0xE400000000000000;
    v187 = NSLocalizedString(_:tableName:bundle:value:comment:)(v185, 0, v184, v186, v297);

    v114 = v290;
    sub_10003FDA0(v171, &qword_100CB6028);
    *v183 = v187;
    *v175 = v286;
    v175[1] = v174;
    v188 = v175 + v170[10];
    *v188 = v179;
    v188[8] = 0;
    v189 = (v175 + v170[12]);
    *v189 = 0;
    v189[1] = 0;
    v190 = (v175 + v170[13]);
    *v190 = 0;
    v190[1] = 0;
    v191 = (v175 + v170[11]);
    *v191 = sub_1003FEC5C;
    v191[1] = v182;
    v192 = v175;
    v169 = v281;
    sub_10011C0F0(v192, v281, &qword_100CB60B8);
    v168 = 0;
  }

  sub_10001B350(v169, v168, 1, v170);
  v193 = v272;
  sub_1000302D8(v114, v272, &qword_100CB63C0);
  if (sub_100024D10(v193, 1, v271) == 1)
  {
    sub_10003FDA0(v193, &qword_100CB63C0);
    v194 = 1;
    v195 = v282;
    v196 = v275;
  }

  else
  {
    v197 = v255;
    sub_10011C0F0(v193, v255, &qword_100CB6058);
    v198 = v278;
    v199 = (v114 + v278[10]);
    v200 = v199[1];
    v290 = *v199;
    v196 = v275;
    v201 = v256;
    sub_1000302D8(v197, &v256[*(v275 + 36)], &qword_100CB6058);
    v202 = (v114 + v198[6]);
    v203 = *v202;
    v204 = v202[1];
    v292 = v203;
    v293 = v204;

    sub_10022C350(&qword_100CAD708);
    State.wrappedValue.getter();
    v205 = v291;
    v206 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v207 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v208 = swift_allocObject();
    sub_1003FD8A8(v206, v208 + v207, type metadata accessor for ConditionsContentView);
    v209 = (v201 + v196[14]);
    v210 = [objc_opt_self() mainBundle];
    v298._object = 0x8000000100AC6470;
    v211._object = 0x8000000100AC6450;
    v298._countAndFlagsBits = 0xD000000000000051;
    v211._countAndFlagsBits = 0xD000000000000018;
    v212._countAndFlagsBits = 1953066581;
    v212._object = 0xE400000000000000;
    v213 = NSLocalizedString(_:tableName:bundle:value:comment:)(v211, 0, v210, v212, v298);

    sub_10003FDA0(v197, &qword_100CB6058);
    *v209 = v213;
    *v201 = v290;
    v201[1] = v200;
    v214 = v201 + v196[10];
    *v214 = v205;
    v214[8] = 0;
    v215 = (v201 + v196[12]);
    *v215 = 0;
    v215[1] = 0;
    v216 = (v201 + v196[13]);
    *v216 = 0;
    v216[1] = 0;
    v217 = (v201 + v196[11]);
    *v217 = sub_1003FE890;
    v217[1] = v208;
    v218 = v201;
    v195 = v282;
    sub_10011C0F0(v218, v282, &qword_100CB6140);
    v194 = 0;
  }

  sub_10001B350(v195, v194, 1, v196);
  v219 = v279;
  sub_1001E42C0(v287, v279);
  v220 = v280;
  sub_1000302D8(v288, v280, &qword_100CB63F8);
  v221 = v273;
  sub_1000302D8(v289, v273, &qword_100CB63E8);
  v222 = v281;
  v223 = v274;
  sub_1000302D8(v281, v274, &qword_100CB63D8);
  v224 = v195;
  v225 = v276;
  sub_1000302D8(v224, v276, &qword_100CB63C8);
  v226 = v277;
  sub_1001E42C0(v219, v277);
  v227 = sub_10022C350(&qword_100CB6428);
  sub_1000302D8(v220, v226 + v227[12], &qword_100CB63F8);
  sub_1000302D8(v221, v226 + v227[16], &qword_100CB63E8);
  sub_1000302D8(v223, v226 + v227[20], &qword_100CB63D8);
  sub_1000302D8(v225, v226 + v227[24], &qword_100CB63C8);
  sub_10003FDA0(v282, &qword_100CB63C8);
  sub_10003FDA0(v222, &qword_100CB63D8);
  sub_10003FDA0(v289, &qword_100CB63E8);
  sub_10003FDA0(v288, &qword_100CB63F8);
  sub_10003FDA0(v287, &qword_100CB6420);
  sub_10003FDA0(v225, &qword_100CB63C8);
  sub_10003FDA0(v223, &qword_100CB63D8);
  sub_10003FDA0(v221, &qword_100CB63E8);
  sub_10003FDA0(v280, &qword_100CB63F8);
  return sub_10003FDA0(v279, &qword_100CB6420);
}

uint64_t sub_1003F8A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConfiguration.Temperature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v13, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    v14 = type metadata accessor for ConditionsContentView(0);
    sub_1000161C0((a2 + *(v14 + 20)), *(a2 + *(v14 + 20) + 24));
    sub_10001B350(v10, 1, 1, v4);
    sub_1006BC130(v10);
    return sub_10003FDA0(v10, &qword_100CB6198);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    v16 = type metadata accessor for ConditionsContentView(0);
    sub_1000161C0((a2 + *(v16 + 20)), *(a2 + *(v16 + 20) + 24));
    (*(v5 + 16))(v10, v7, v4);
    sub_10001B350(v10, 0, 1, v4);
    sub_1006BC130(v10);
    sub_10003FDA0(v10, &qword_100CB6198);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1003F8CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.vertical.getter();
  v5 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v5 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1000302D8(a1, a2, &qword_100CB60D0);
  result = sub_10022C350(&qword_100CB5FF8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1003F8D8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = sub_100021464(a1, a2, a3);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for ConditionsContentView(0);
  sub_1000161C0((v6 + *(v12 + 20)), *(v6 + *(v12 + 20) + 24));
  v13 = v3(0);
  sub_1000037E8();
  (*(v14 + 16))(v11, v7, v13);
  v15 = sub_1000BCE20();
  v5(v15);
  return sub_10003FDA0(v11, v4);
}

uint64_t sub_1003F8E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = type metadata accessor for MenuPickerStyle();
  __chkstk_darwin(v4);
  v61 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = *(a1 + 16);
  v13 = type metadata accessor for Binding();
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v53 = *(a1 + 24);
  v16 = *(v53 + 8);
  v63 = v12;
  v64 = v12;
  v60 = v4;
  v65 = v4;
  v54 = v16;
  v66 = v16;
  v67 = &protocol witness table for MenuPickerStyle;
  v17 = type metadata accessor for PickerSection();
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  __chkstk_darwin(v17);
  v55 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v45 - v21;
  if (v2[1])
  {
    v22 = *v2;
    v51 = v2[1];
    v52 = v22;
  }

  else
  {
    v23 = (v2 + *(a1 + 56));
    v24 = *v23;
    v51 = v23[1];
    v52 = v24;
  }

  v47 = v15;
  sub_1003F9308(a1, v15);
  v25 = *(a1 + 40);
  v48 = *(v2 + *(a1 + 36));
  v50 = *(v2 + v25);
  v49 = *(v2 + v25 + 8);
  v46 = *(v6 + 16);
  v46(v11, v2, a1);
  v26 = v11;
  v27 = a1;
  v28 = v6;
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = swift_allocObject();
  v45 = v7;
  v31 = v30;
  v32 = v53;
  *(v30 + 16) = v63;
  *(v30 + 24) = v32;
  v33 = *(v28 + 32);
  v33(v30 + v29, v26, v27);
  v34 = v57;
  v46(v57, v2, v27);
  v35 = swift_allocObject();
  v36 = v63;
  *(v35 + 16) = v63;
  *(v35 + 24) = v32;
  v33(v35 + v29, v34, v27);
  v37 = v48;

  v38 = v61;
  MenuPickerStyle.init()();
  v39 = v55;
  sub_1003F96BC(v52, v51, v38, v47, v37, v50, v49, sub_1003FE264, v55, v31, sub_1003FE3A4, v35, v36, v60);
  v40 = v58;
  WitnessTable = swift_getWitnessTable();
  v42 = v56;
  sub_1000833D8(v39, v40, WitnessTable);
  v43 = *(v59 + 8);
  v43(v39, v40);
  sub_1000833D8(v42, v40, WitnessTable);
  return (v43)(v42, v40);
}

uint64_t sub_1003F9308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v21 = *(v3 + 16);
  v21(&v19 - v7, v6);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  v12 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = v12;
  *(v11 + 4) = v19;
  *(v11 + 5) = v12;
  v13 = *(v3 + 32);
  v13(&v11[v10], v8, a1);
  v14 = v23;
  (v21)(v23, v22, a1);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  v17 = v19;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v17;
  *(v16 + 5) = v20;
  v13(&v16[v10], v14, a1);
  return Binding.init(get:set:)();
}

uint64_t sub_1003F9524(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + *(type metadata accessor for ConditionContentView() + 48));
  if (v9)
  {

    v10 = v9(a1, a2 & 1);
    sub_10002B028(v9);
    return v10;
  }

  else if (a2)
  {
    return (*(a5 + 24))(a4, a5);
  }

  else
  {
    return (*(a5 + 16))(a4, a5);
  }
}

uint64_t sub_1003F9600(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + *(type metadata accessor for ConditionContentView() + 52));
  if (!v9)
  {
    return (*(a5 + 32))(a4, a5);
  }

  v10 = v9(a1, a2 & 1);
  sub_10002B028(v9);
  return v10;
}

uint64_t sub_1003F96BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for PickerSection();
  v21 = v20[19];
  *(a9 + v21) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38);
  swift_storeEnumTagMultiPayload();
  v22 = (a9 + v20[13]);
  *v22 = a1;
  v22[1] = a2;
  (*(*(a14 - 8) + 32))(a9 + v20[14], a3, a14);
  v23 = type metadata accessor for Binding();
  result = (*(*(v23 - 8) + 32))(a9, a4, v23);
  *(a9 + v20[16]) = a5;
  v25 = a9 + v20[15];
  *v25 = a6;
  *(v25 + 8) = a7 & 1;
  v26 = (a9 + v20[17]);
  *v26 = a8;
  v26[1] = a10;
  v27 = (a9 + v20[18]);
  *v27 = a11;
  v27[1] = a12;
  return result;
}

uint64_t sub_1003F9868@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for ConditionContentView() + 36);
  v6 = type metadata accessor for UnitsConfigurationViewModel.Configuration();
  v7 = *(*(a2 - 8) + 16);
  v8 = v5 + *(v6 + 36);

  return v7(a3, v8, a2);
}

uint64_t sub_1003F9960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_10022E824(&qword_100CB6640);
  sub_10022E824(&qword_100CB6648);
  v3 = *(a1 + 16);
  type metadata accessor for Array();
  sub_10022E824(&qword_100CB6650);
  swift_getWitnessTable();
  v4 = *(a1 + 32);
  v58 = v3;
  v56 = v4;
  v85 = v4;
  type metadata accessor for ForEach();
  sub_1003FFD40();
  v80 = sub_1003FFFA8();
  swift_getWitnessTable();
  v81 = type metadata accessor for Menu();
  v82 = type metadata accessor for DefaultMenuStyle();
  WitnessTable = swift_getWitnessTable();
  v84 = sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10022E824(&qword_100CB66B0);
  swift_getTupleTypeMetadata2();
  v54 = type metadata accessor for TupleView();
  v52 = swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  v48[2] = type metadata accessor for TupleView();
  v48[1] = swift_getWitnessTable();
  v6 = type metadata accessor for ViewThatFits();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = v48 - v7;
  v62 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = v48 - v13;
  v48[0] = *(v5 - 8);
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  v63 = v5;
  v17 = type metadata accessor for ModifiedContent();
  v50 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v48 - v21;
  v23 = type metadata accessor for DynamicTypeSize();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v17;
  v61 = v9;
  v60 = type metadata accessor for _ConditionalContent();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v48 - v27;
  sub_10011A1CC();
  LOBYTE(v17) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v24 + 8))(v26, v23);
  if (v17)
  {
    v28 = static HorizontalAlignment.leading.getter();
    __chkstk_darwin(v28);
    VStack.init(alignment:spacing:content:)();
    static Alignment.leading.getter();
    v44 = v63;
    v46 = swift_getWitnessTable();
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v48[0] + 8))(v16, v44);
    v68 = v46;
    v69 = &protocol witness table for _FlexFrameLayout;
    v29 = v65;
    v30 = swift_getWitnessTable();
    sub_1000833D8(v19, v29, v30);
    v31 = *(v50 + 8);
    v31(v19, v29);
    sub_1000833D8(v22, v29, v30);
    v66 = swift_getWitnessTable();
    v67 = &protocol witness table for _FlexFrameLayout;
    swift_getWitnessTable();
    v32 = v57;
    sub_1003E8038();
    v31(v19, v29);
    v31(v22, v29);
  }

  else
  {
    v33 = static Axis.Set.horizontal.getter();
    __chkstk_darwin(v33);
    v34 = v49;
    ViewThatFits.init(in:content:)();
    static Alignment.leading.getter();
    v45 = v62;
    v47 = swift_getWitnessTable();
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v51 + 8))(v34, v45);
    v78 = v47;
    v79 = &protocol witness table for _FlexFrameLayout;
    v35 = v61;
    v36 = swift_getWitnessTable();
    v37 = v53;
    sub_1000833D8(v11, v35, v36);
    v38 = *(v55 + 8);
    v38(v11, v35);
    sub_1000833D8(v37, v35, v36);
    v76 = swift_getWitnessTable();
    v77 = &protocol witness table for _FlexFrameLayout;
    swift_getWitnessTable();
    v32 = v57;
    sub_10012D09C();
    v38(v11, v35);
    v38(v37, v35);
  }

  v74 = swift_getWitnessTable();
  v75 = &protocol witness table for _FlexFrameLayout;
  v39 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v73 = &protocol witness table for _FlexFrameLayout;
  v40 = swift_getWitnessTable();
  v70 = v39;
  v71 = v40;
  v41 = v60;
  v42 = swift_getWitnessTable();
  sub_1000833D8(v32, v41, v42);
  return (*(v59 + 8))(v32, v41);
}

uint64_t sub_1003FA578@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v16 = v2;
  v17 = v3;
  v6 = v5 & 1;
  LOBYTE(v18) = v5 & 1;
  v19 = v7;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v2, v4, v6);

  v8 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(sub_10022C350(&qword_100CB66C8) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  v11 = [objc_opt_self() labelColor];
  v12 = Color.init(_:)();
  v13 = swift_getKeyPath();
  result = sub_10022C350(&qword_100CB66B0);
  v15 = (a1 + *(result + 36));
  *v15 = v13;
  v15[1] = v12;
  return result;
}

uint64_t sub_1003FA6C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = type metadata accessor for DefaultMenuStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022E824(&qword_100CB6648);
  v22 = a1 + 3;
  v23 = a1 + 5;
  v6 = a1[2];
  v7 = type metadata accessor for Array();
  v8 = sub_10022E824(&qword_100CB6650);
  WitnessTable = swift_getWitnessTable();
  v10 = a1[4];
  v35 = v7;
  v36 = v6;
  v37 = v8;
  v38 = WitnessTable;
  v39 = v10;
  v11 = type metadata accessor for ForEach();
  v12 = sub_1003FFD40();
  v34 = sub_1003FFFA8();
  v13 = swift_getWitnessTable();
  v35 = v5;
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v14 = type metadata accessor for Menu();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  *&v18 = v6;
  *(&v18 + 1) = *v22;
  *&v19 = v10;
  *(&v19 + 1) = *v23;
  v31 = v18;
  v32 = v19;
  v33 = v24;
  v28 = v18;
  v29 = v19;
  v30 = v24;
  Menu.init(content:label:)();
  DefaultMenuStyle.init()();
  swift_getWitnessTable();
  sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle);
  v20 = v25;
  View.menuStyle<A>(_:)();
  (*(v26 + 8))(v4, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1003FAA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v48 = a4;
  v35 = a3;
  v49 = a1;
  v51 = a6;
  sub_10022E824(&qword_100CB66B0);
  sub_10022E824(&qword_100CB6648);
  type metadata accessor for Array();
  sub_10022E824(&qword_100CB6650);
  swift_getWitnessTable();
  v69 = a4;
  type metadata accessor for ForEach();
  sub_1003FFD40();
  v64[2] = sub_1003FFFA8();
  swift_getWitnessTable();
  v65 = type metadata accessor for Menu();
  v66 = type metadata accessor for DefaultMenuStyle();
  WitnessTable = swift_getWitnessTable();
  v68 = sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v46 = type metadata accessor for TupleView();
  v45 = swift_getWitnessTable();
  v42 = type metadata accessor for VStack();
  v47 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v34 - v11;
  sub_10022E824(&qword_100CB6640);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for HStack();
  v37 = *(v12 - 8);
  v13 = v37;
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v38 = &v34 - v17;
  v57 = a2;
  v58 = a3;
  v18 = v48;
  v19 = v50;
  v59 = v48;
  v60 = v50;
  v20 = v49;
  v61 = v49;
  j___s7SwiftUI17VerticalAlignmentV6centerACvgZ();
  HStack.init(alignment:spacing:content:)();
  v40 = swift_getWitnessTable();
  v36 = v12;
  sub_1000833D8(v15, v12, v40);
  v21 = *(v13 + 8);
  v39 = v13 + 8;
  v41 = v21;
  v21(v15, v12);
  static HorizontalAlignment.leading.getter();
  v52 = a2;
  v53 = v35;
  v54 = v18;
  v55 = v19;
  v56 = v20;
  v22 = v43;
  VStack.init(alignment:spacing:content:)();
  v23 = v42;
  v24 = swift_getWitnessTable();
  v25 = v44;
  sub_1000833D8(v22, v23, v24);
  v26 = v47;
  v27 = *(v47 + 8);
  v27(v22, v23);
  v28 = v15;
  v29 = v15;
  v30 = v38;
  v31 = v36;
  (*(v37 + 16))(v29, v38, v36);
  v65 = v28;
  (*(v26 + 16))(v22, v25, v23);
  v66 = v22;
  v64[0] = v31;
  v64[1] = v23;
  v62 = v40;
  v63 = v24;
  sub_10012E24C(&v65, 2, v64);
  v27(v25, v23);
  v32 = v41;
  v41(v30, v31);
  v27(v22, v23);
  return v32(v28, v31);
}

uint64_t sub_1003FB0AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a3;
  v35 = a5;
  v36 = a1;
  v37 = a6;
  sub_10022E824(&qword_100CB6648);
  type metadata accessor for Array();
  sub_10022E824(&qword_100CB6650);
  swift_getWitnessTable();
  v49 = a4;
  type metadata accessor for ForEach();
  sub_1003FFD40();
  v44 = sub_1003FFFA8();
  swift_getWitnessTable();
  v8 = type metadata accessor for Menu();
  v9 = type metadata accessor for DefaultMenuStyle();
  WitnessTable = swift_getWitnessTable();
  v32 = sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle);
  v45 = v8;
  v46 = v9;
  v47 = WitnessTable;
  v48 = v32;
  v30 = &opaque type descriptor for <<opaque return type of View.menuStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10022C350(&qword_100CB6640);
  v28 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v27 - v20;
  v45 = a2;
  v46 = v34;
  v47 = a4;
  v48 = v35;
  v22 = type metadata accessor for PickerSection();
  sub_1003FA578(v21);
  *&v21[*(v16 + 36)] = 257;
  sub_1003FA6C8(v22, v12);
  v45 = v8;
  v46 = v9;
  v47 = WitnessTable;
  v48 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = v31;
  v25 = *(v31 + 8);
  v25(v12, OpaqueTypeMetadata2);
  v29 = v18;
  sub_1000302D8(v21, v18, &qword_100CB6640);
  v42 = 0;
  v43 = 1;
  v45 = v18;
  v46 = &v42;
  (*(v24 + 16))(v12, v15, OpaqueTypeMetadata2);
  v47 = v12;
  v41[0] = v28;
  v41[1] = &type metadata for Spacer;
  v41[2] = OpaqueTypeMetadata2;
  v38 = sub_100400600(&qword_100CB66E8, &qword_100CB6640, &unk_100A4A030, sub_1004000AC);
  v39 = &protocol witness table for Spacer;
  v40 = OpaqueTypeConformance2;
  sub_10012E24C(&v45, 3, v41);
  v25(v15, OpaqueTypeMetadata2);
  sub_10003FDA0(v21, &qword_100CB6640);
  v25(v12, OpaqueTypeMetadata2);
  return sub_10003FDA0(v29, &qword_100CB6640);
}

void sub_1003FB51C()
{
  sub_10000C778();
  v37 = v0;
  v38 = v1;
  v3 = v2;
  v5 = v4;
  v39 = v6;
  v40 = v7;
  sub_10022E824(&qword_100CB6648);
  type metadata accessor for Array();
  sub_10022E824(&qword_100CB6650);
  sub_100051DF8();
  swift_getWitnessTable();
  v48 = v3;
  type metadata accessor for ForEach();
  sub_1003FFD40();
  v43[2] = sub_1003FFFA8();
  sub_100037A98();
  swift_getWitnessTable();
  v8 = type metadata accessor for Menu();
  v9 = type metadata accessor for DefaultMenuStyle();
  sub_10000E9DC();
  WitnessTable = swift_getWitnessTable();
  sub_10002C6BC();
  v44 = v8;
  v45 = v9;
  v46 = WitnessTable;
  v47 = sub_1003FD490(v10, v11);
  sub_1000206FC();
  v34[1] = v13;
  v35 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_100007FD0();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v34 - v22;
  v34[0] = sub_10022C350(&qword_100CB66B0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = v34 - v29;
  v44 = v5;
  v45 = v37;
  v46 = v3;
  v47 = v38;
  v31 = type metadata accessor for PickerSection();
  sub_1003FA578(v30);
  sub_1003FA6C8(v31, v20);
  v44 = v8;
  v45 = v9;
  v46 = WitnessTable;
  v47 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v33 = *(v16 + 8);
  v33(v20, OpaqueTypeMetadata2);
  sub_1000302D8(v30, v27, &qword_100CB66B0);
  v44 = v27;
  (*(v16 + 16))(v20, v23, OpaqueTypeMetadata2);
  v45 = v20;
  v43[0] = v34[0];
  v43[1] = OpaqueTypeMetadata2;
  v41 = sub_1004000AC();
  v42 = OpaqueTypeConformance2;
  sub_10012E24C(&v44, 2, v43);
  v33(v23, OpaqueTypeMetadata2);
  sub_10003FDA0(v30, &qword_100CB66B0);
  v33(v20, OpaqueTypeMetadata2);
  sub_10003FDA0(v27, &qword_100CB66B0);
  sub_10000536C();
}

uint64_t sub_1003FB88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a5;
  v35 = a6;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v9 = type metadata accessor for PickerSection();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = type metadata accessor for Array();
  v33 = v13;
  v14 = sub_10022E824(&qword_100CB6650);
  v32 = v14;
  WitnessTable = swift_getWitnessTable();
  v43 = v13;
  v44 = a2;
  v45 = v14;
  v46 = WitnessTable;
  v47 = a4;
  v15 = type metadata accessor for ForEach();
  v34 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v30 = v29 - v19;
  v43 = *(a1 + *(v9 + 64));
  v38 = a2;
  v39 = v36;
  v40 = a4;
  v41 = v37;
  v29[1] = swift_getKeyPath();
  (*(v10 + 16))(v12, a1, v9);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v23 = v36;
  v22 = v37;
  *(v21 + 2) = a2;
  *(v21 + 3) = v23;
  *(v21 + 4) = a4;
  *(v21 + 5) = v22;
  (*(v10 + 32))(&v21[v20], v12, v9);
  v24 = sub_1003FFFA8();

  ForEach<>.init(_:id:content:)();
  v42 = v24;
  v25 = swift_getWitnessTable();
  v26 = v30;
  sub_1000833D8(v17, v15, v25);
  v27 = *(v34 + 8);
  v27(v17, v15);
  sub_1000833D8(v26, v15, v25);
  return (v27)(v26, v15);
}

uint64_t sub_1003FBBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[1] = a7;
  v13 = sub_10022C350(&qword_100CB66A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v17 = type metadata accessor for PickerSection();
  v22 = (*(a2 + *(v17 + 68)))(a1, 1);
  v23 = v18;
  sub_1003FBDC8(a1, v17);
  sub_10002D5A4();
  Toggle<>.init<A>(_:isOn:)();
  v22 = (*(a2 + *(v17 + 72)))(a1, 1);
  v23 = v19;
  sub_10023FBF4(&qword_100CB6698, &qword_100CB66A0);
  View.accessibilityLabel<A>(_:)();

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1003FBDC8(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v46 = *(a2 - 8);
  v4 = v46;
  v5 = *(v46 + 64);
  __chkstk_darwin(a1);
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v10;
  v39 = v10;
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 16);
  v43 = v7 + 16;
  v45 = v12;
  v12(v9);
  v41 = *(v4 + 16);
  v41(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v40 = type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = *(v7 + 80);
  v15 = (v14 + 64) & ~v14;
  v16 = *(v4 + 80);
  v17 = (v11 + v16 + v15) & ~v16;
  v35 = v14 | v16;
  v36 = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = &protocol witness table for MainActor;
  v36 = *(a2 + 40);
  v19.i64[0] = v6;
  v34 = (v16 + 64) & ~v16;
  v31 = (v5 + v34 + v14) & ~v14;
  v32 = *(a2 + 24);
  v20 = *(a2 + 32);
  *(v18 + 32) = vzip1q_s64(v19, v32);
  *(v18 + 48) = v20;
  v21 = *(v7 + 32);
  v33 = v7 + 32;
  v22 = v37;
  v21(v18 + v15, v37, v6);
  v23 = *(v46 + 32);
  v46 += 32;
  v24 = v18 + v17;
  v25 = v38;
  v23(v24, v38, a2);
  v41(v25, v42, a2);
  (v45)(v22, v44, v6);
  v26 = static MainActor.shared.getter();
  v27 = v31;
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = &protocol witness table for MainActor;
  *(v28 + 32) = v6;
  *(v28 + 40) = v32;
  *(v28 + 56) = v36;
  v23(v28 + v34, v25, a2);
  v21(v28 + v27, v22, v6);
  Binding.init(get:set:)();
  return v47;
}

void *sub_1003FC144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v50 + 1) = a5;
  *&v50 = a4;
  *(&v49 + 1) = a3;
  v7 = a1;
  v52 = a1;
  v64 = a6;
  v63 = type metadata accessor for DynamicTypeSize();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = a2;
  v60 = *(a2 - 8);
  __chkstk_darwin(v9);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v55 - 8);
  __chkstk_darwin(v55);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10022C350(&qword_100CB66E0);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v48 - v14;
  v58 = sub_10022C350(&qword_100CB6668);
  __chkstk_darwin(v58);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = &v48 - v17;
  v18 = static VerticalAlignment.center.getter();
  __dst[0] = 1;
  sub_1003FC8A4(v7, a2, __src);
  v19 = __src[0];
  v20 = __src[1];
  v21 = BYTE8(__src[2]);
  v22 = *&__src[3];
  v48 = *(&__src[1] + 8);
  LOBYTE(__src[0]) = __src[1];
  LOBYTE(v7) = __dst[0];
  v23 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  __src[0] = v18;
  LOBYTE(__src[1]) = v7;
  *(&__src[1] + 8) = v19;
  BYTE8(__src[2]) = v20;
  __src[3] = v48;
  LOBYTE(__src[4]) = v21;
  *(&__src[4] + 1) = v22;
  *&__src[5] = KeyPath;
  *(&__src[5] + 1) = v23;
  static AccessibilityChildBehavior.ignore.getter();
  v25 = sub_10022C350(&qword_100CB6670);
  v26 = sub_1003FFEC4();
  v27 = v51;
  View.accessibilityElement(children:)();
  (*(v11 + 8))(v13, v55);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10003FDA0(__dst, &qword_100CB6670);
  v28 = v49;
  __src[0] = v49;
  __src[1] = v50;
  v29 = type metadata accessor for PickerSection();
  v30 = v52;
  v31 = (v52 + *(v29 + 52));
  v33 = *v31;
  v32 = v31[1];
  *&__src[0] = v33;
  *(&__src[0] + 1) = v32;
  v65 = v25;
  v66 = v26;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v34 = v53;
  v35 = v56;
  View.accessibilityLabel<A>(_:)();
  (*(v57 + 8))(v27, v35);
  v36 = *(v30 + *(v29 + 72));
  type metadata accessor for Binding();
  v37 = v59;
  Binding.wrappedValue.getter();
  v38 = v36(v37, 0);
  v40 = v39;
  (*(v60 + 8))(v37, v28);
  *&__src[0] = v38;
  *(&__src[0] + 1) = v40;
  v41 = v54;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  sub_10003FDA0(v34, &qword_100CB6668);
  v42 = v61;
  sub_10011A1CC();
  DynamicTypeSize.isAccessibilitySize.getter();
  v43 = *(v62 + 8);
  v44 = v63;
  v43(v42, v63);
  sub_10011A1CC();
  LOBYTE(v38) = DynamicTypeSize.isAccessibilitySize.getter();
  v43(v42, v44);
  if (v38)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v45 = v64;
  sub_10011C0F0(v41, v64, &qword_100CB6668);
  v46 = sub_10022C350(&qword_100CB6648);
  return memcpy((v45 + *(v46 + 36)), __src, 0x70uLL);
}