uint64_t sub_100974598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CBD410);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ScrubberHour(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(a1 + *(type metadata accessor for ScrubberView(0) + 40) + 8);
  v32 = a2;
  sub_1008DC6B4();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CBD410);
    goto LABEL_12;
  }

  v31 = a3;
  result = sub_100974A94(v8, v15, type metadata accessor for ScrubberHour);
  v18 = *(v16 + 16);
  if (!v18)
  {
LABEL_11:
    sub_100976B1C(v15, type metadata accessor for ScrubberHour);
    a3 = v31;
LABEL_12:
    v23 = sub_10022C350(&qword_100CE8818);
    v24 = a3;
LABEL_13:
    v25 = 1;
    return sub_10001B350(v24, v25, 1, v23);
  }

  v19 = 0;
  v20 = v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  while (1)
  {
    if (v19 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v21 = *(v10 + 72);
    sub_100974AF0(v20 + v21 * v19, v12, type metadata accessor for ScrubberHour);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      result = sub_100976B1C(v12, type metadata accessor for ScrubberHour);
      goto LABEL_10;
    }

    v22 = v12[*(v9 + 20)];
    result = sub_100976B1C(v12, type metadata accessor for ScrubberHour);
    if (v22 == v15[*(v9 + 20)])
    {
      break;
    }

LABEL_10:
    if (v18 == ++v19)
    {
      goto LABEL_11;
    }
  }

  if (!v19)
  {
    sub_100976B1C(v15, type metadata accessor for ScrubberHour);
    v23 = sub_10022C350(&qword_100CE8818);
    v24 = v31;
    goto LABEL_13;
  }

  v26 = v31;
  if (v19 <= *(v16 + 16))
  {
    v27 = v19 - 1;
    v28 = sub_10022C350(&qword_100CE8818);
    v29 = *(v28 + 48);
    sub_100974AF0(v20 + v21 * v27, v26, type metadata accessor for ScrubberHour);
    sub_100974A94(v15, v26 + v29, type metadata accessor for ScrubberHour);
    v24 = v26;
    v25 = 0;
    v23 = v28;
    return sub_10001B350(v24, v25, 1, v23);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100974950()
{
  result = qword_100CE87F0;
  if (!qword_100CE87F0)
  {
    sub_10022E824(&qword_100CE87D8);
    sub_1009749DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE87F0);
  }

  return result;
}

unint64_t sub_1009749DC()
{
  result = qword_100CE87F8;
  if (!qword_100CE87F8)
  {
    sub_10022E824(&qword_100CE87E8);
    sub_100006F64(&qword_100CE8800, &qword_100CE8808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE87F8);
  }

  return result;
}

uint64_t sub_100974A94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100974AF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100974B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100974B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = static VerticalAlignment.top.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10022C350(&qword_100CE89E8);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  swift_bridgeObjectRetain_n();
  sub_10022C350(&qword_100CE89F0);
  type metadata accessor for Date();
  sub_10022C350(&qword_100CE89F8);
  sub_100006F64(&qword_100CE8A00, &qword_100CE89F0);
  sub_100976BF8();
  sub_100974B4C(&qword_100CE8A18, type metadata accessor for ScrubberDay);
  return ForEach<>.init(_:content:)();
}

double sub_100974D24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v46 = a3;
  v9 = type metadata accessor for ScrubberDay(0);
  __chkstk_darwin(v9);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE8A20);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_10022C350(&qword_100CBD418);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v43 = type metadata accessor for ScrubberDayContainerView(0);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  sub_1003DFD18(a2, v23);
  v44 = a1;
  sub_100974AF0(a1, v20, type metadata accessor for ScrubberDay);
  sub_10001B350(v20, 0, 1, v9);
  v25 = *(v12 + 56);
  sub_1005C1F54(v23, v14, &qword_100CBD418);
  sub_1005C1F54(v20, &v14[v25], &qword_100CBD418);
  if (sub_100024D10(v14, 1, v9) != 1)
  {
    sub_1005C1F54(v14, v17, &qword_100CBD418);
    if (sub_100024D10(&v14[v25], 1, v9) == 1)
    {
      sub_1000180EC(v20, &qword_100CBD418);
      sub_1000180EC(v23, &qword_100CBD418);
      sub_100976B1C(v17, type metadata accessor for ScrubberDay);
      goto LABEL_6;
    }

    v27 = v41;
    sub_100974A94(&v14[v25], v41, type metadata accessor for ScrubberDay);
    if (static Date.== infix(_:_:)() & 1) != 0 && (sub_1009ECE20(), (v28))
    {
      v29 = *(v9 + 24);
      v30 = *&v17[v29];
      v31 = *&v17[v29 + 8];
      v32 = (v27 + v29);
      if (v30 == *v32 && v31 == v32[1])
      {
        sub_1000180EC(v20, &qword_100CBD418);
        sub_1000180EC(v23, &qword_100CBD418);
LABEL_19:
        v26 = v17[*(v9 + 28)] ^ *(v27 + *(v9 + 28)) ^ 1;
        goto LABEL_16;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000180EC(v20, &qword_100CBD418);
      sub_1000180EC(v23, &qword_100CBD418);
      v26 = 0;
      if (v34)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1000180EC(v20, &qword_100CBD418);
      sub_1000180EC(v23, &qword_100CBD418);
      v26 = 0;
    }

LABEL_16:
    sub_100976B1C(v27, type metadata accessor for ScrubberDay);
    sub_100976B1C(v17, type metadata accessor for ScrubberDay);
    sub_1000180EC(v14, &qword_100CBD418);
    goto LABEL_17;
  }

  sub_1000180EC(v20, &qword_100CBD418);
  sub_1000180EC(v23, &qword_100CBD418);
  if (sub_100024D10(&v14[v25], 1, v9) != 1)
  {
LABEL_6:
    sub_1000180EC(v14, &qword_100CE8A20);
    v26 = 0;
    goto LABEL_17;
  }

  sub_1000180EC(v14, &qword_100CBD418);
  v26 = 1;
LABEL_17:
  v35 = v42;
  v36 = v44;
  sub_100974AF0(v44, &v42[*(v43 + 20)], type metadata accessor for ScrubberDay);
  *v35 = v26 & 1;
  sub_1009752F0(v36, a4, a5);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v46;
  sub_100974A94(v35, v46, type metadata accessor for ScrubberDayContainerView);
  v38 = (v37 + *(sub_10022C350(&qword_100CE89F8) + 36));
  v39 = v48;
  *v38 = v47;
  v38[1] = v39;
  result = *&v49;
  v38[2] = v49;
  return result;
}

double sub_1009752F0(uint64_t a1, double a2, double a3)
{
  v5 = sub_10022C350(&qword_100CBD410);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = *(a1 + *(type metadata accessor for ScrubberDay(0) + 20));
  if (*(v11 + 16) < 2uLL)
  {
    goto LABEL_9;
  }

  sub_1003DFBD0(v11, v10);
  v12 = type metadata accessor for ScrubberHour(0);
  if (sub_100024D10(v10, 1, v12) == 1)
  {
    goto LABEL_3;
  }

  v13 = v10[*(v12 + 20)];
  sub_100976B1C(v10, type metadata accessor for ScrubberHour);
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  sub_1002F553C(v11);
  if (sub_100024D10(v7, 1, v12) == 1)
  {
    v10 = v7;
LABEL_3:
    sub_1000180EC(v10, &qword_100CBD410);
LABEL_9:
    v15 = *(v11 + 16);
    return v15 * a3;
  }

  v14 = v7[*(v12 + 20)];
  sub_100976B1C(v7, type metadata accessor for ScrubberHour);
  if (v14 != 1)
  {
    goto LABEL_9;
  }

  v15 = (*(v11 + 16) - 1);
  return v15 * a3;
}

uint64_t sub_1009754B4()
{
  v1 = type metadata accessor for ColorRenderingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE8AC8);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_10022C350(&qword_100CE8AD0);
  sub_100975694(v0, &v7[*(v8 + 44)]);
  (*(v2 + 104))(v4, enum case for ColorRenderingMode.nonLinear(_:), v1);
  sub_100006F64(&qword_100CE8AD8, &qword_100CE8AC8);
  View.drawingGroup(opaque:colorMode:)();
  (*(v2 + 8))(v4, v1);
  return sub_1000180EC(v7, &qword_100CE8AC8);
}

uint64_t sub_100975694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE8AE0);
  __chkstk_darwin(v7);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = a1 + *(type metadata accessor for ScrubberDayContainerView(0) + 20);
  sub_100974AF0(v12, v11, type metadata accessor for ScrubberDay);
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = sub_1008583AC();
  v14 = sub_10085834C();
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for ScrubberDayView();
  *&v11[v16[7]] = KeyPath;
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *&v11[v16[5]] = v13;
  *&v11[v16[6]] = v14;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = &v11[*(v7 + 36)];
  v18 = v61;
  *v17 = v60;
  *(v17 + 1) = v18;
  *(v17 + 2) = v62;
  v19 = type metadata accessor for ScrubberDay(0);
  v20 = (v12 + *(v19 + 24));
  v21 = v20[1];
  v45 = *v20;
  v46 = v21;
  sub_10002D5A4();

  v22 = Text.init<A>(_:)();
  v41 = v23;
  v25 = v24;
  v39 = v26;
  v40 = swift_getKeyPath();
  (*(v4 + 104))(v6, enum case for Font.TextStyle.footnote(_:), v3);
  if (*(v12 + *(v19 + 28)) == 1)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  v38 = static Font.system(_:weight:)();
  (*(v4 + 8))(v6, v3);
  v27 = swift_getKeyPath();
  v59 = v25 & 1;
  v57 = 0;
  v28 = v43;
  sub_1005C1F54(v11, v43, &qword_100CE8AE0);
  v29 = v42;
  sub_1005C1F54(v28, v42, &qword_100CE8AE0);
  v30 = *(sub_10022C350(&qword_100CE8AE8) + 48);
  __src[0] = v22;
  v31 = v41;
  __src[1] = v41;
  LOBYTE(__src[2]) = v25 & 1;
  *(&__src[2] + 1) = *v58;
  HIDWORD(__src[2]) = *&v58[3];
  v32 = v39;
  __src[3] = v39;
  v33 = v40;
  __src[4] = v40;
  v34 = v29;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v56;
  HIDWORD(__src[6]) = *&v56[3];
  __src[7] = v27;
  v35 = v38;
  __src[8] = v38;
  memcpy((v34 + v30), __src, 0x48uLL);
  sub_1005C1F54(__src, &v45, &qword_100CD3E10);
  sub_1000180EC(v11, &qword_100CE8AE0);
  v45 = v22;
  v46 = v31;
  v47 = v25 & 1;
  *v48 = *v58;
  *&v48[3] = *&v58[3];
  v49 = v32;
  v50 = v33;
  v51 = 1;
  v52 = 0;
  *v53 = *v56;
  *&v53[3] = *&v56[3];
  v54 = v27;
  v55 = v35;
  sub_1000180EC(&v45, &qword_100CD3E10);
  return sub_1000180EC(v28, &qword_100CE8AE0);
}

void *sub_100975BCC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static HorizontalAlignment.center.getter();
  v14 = 0;
  sub_100975CBC(a1, a2, __src, a4);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1005C1F54(__dst, v11, &qword_100CE89C8);
  sub_1000180EC(v16, &qword_100CE89C8);
  memcpy(&v13[7], __dst, 0x98uLL);
  v9 = v14;
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  return memcpy((a3 + 17), v13, 0x9FuLL);
}

uint64_t sub_100975CBC@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1008583DC();
  sub_1008583DC();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v46;
  v7 = v47;
  v8 = v48;
  v9 = v49;
  v11 = v50;
  v10 = v51;
  v12 = static Color.cyan.getter();
  v13 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v29) = v47;
  LOBYTE(__src[0]) = v49;
  v45 = 0;
  if (a1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.0;
  }

  v23 = sub_1008583AC();
  v24 = sub_10085834C();
  __src[0] = v46;
  LOBYTE(__src[1]) = v47;
  __src[2] = v48;
  LOBYTE(__src[3]) = v49;
  __src[4] = v50;
  __src[5] = v51;
  __src[6] = v12;
  LOBYTE(__src[7]) = v13;
  __src[8] = v15;
  __src[9] = v17;
  __src[10] = v19;
  __src[11] = v21;
  LOBYTE(__src[12]) = 0;
  *&__src[13] = a4;
  __src[14] = 0;
  *&__src[15] = v22;
  memcpy(a3, __src, 0x80uLL);
  *(a3 + 16) = v23;
  *(a3 + 17) = v24;
  a3[18] = a2;

  sub_1005C1F54(__src, &v29, &qword_100CE89D0);
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v11;
  v34 = v10;
  v35 = v12;
  v36 = v13;
  v37 = v15;
  v38 = v17;
  v39 = v19;
  v40 = v21;
  v41 = 0;
  v42 = a4;
  v43 = 0;
  v44 = v22;
  return sub_1000180EC(&v29, &qword_100CE89D0);
}

uint64_t sub_100975F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE8818);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100975FD0()
{
  result = qword_100CE8888;
  if (!qword_100CE8888)
  {
    sub_10022E824(&qword_100CE8840);
    sub_10022E824(&qword_100CE8878);
    sub_100006F64(&qword_100CE8880, &qword_100CE8878);
    swift_getOpaqueTypeConformance2();
    sub_100974B4C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8888);
  }

  return result;
}

uint64_t sub_1009760FC@<X0>(uint64_t a1@<X8>)
{
  sub_1000110C8();
  sub_100008550();

  return sub_10096DD80(v2, a1);
}

uint64_t sub_100976168(CGRect *a1)
{
  sub_1000110C8();
  sub_100008550();

  return sub_10096ED4C(a1, v2);
}

unint64_t sub_1009761C4()
{
  result = qword_100CE88D8;
  if (!qword_100CE88D8)
  {
    sub_10022E824(&qword_100CE8858);
    sub_10097627C();
    sub_100006F64(&qword_100CE88F0, &qword_100CE88B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE88D8);
  }

  return result;
}

unint64_t sub_10097627C()
{
  result = qword_100CE88E0;
  if (!qword_100CE88E0)
  {
    sub_10022E824(&qword_100CE88A8);
    sub_100976334();
    sub_100006F64(&qword_100CBDD58, &qword_100CBDD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE88E0);
  }

  return result;
}

unint64_t sub_100976334()
{
  result = qword_100CE88E8;
  if (!qword_100CE88E8)
  {
    sub_10022E824(&qword_100CE88A0);
    sub_10022E824(&qword_100CE8850);
    sub_10022E824(&qword_100CE8848);
    sub_10022E824(&qword_100CE8840);
    sub_100975FD0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CBFC28, &qword_100CBFC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE88E8);
  }

  return result;
}

uint64_t sub_1009764A8()
{
  sub_1000110C8();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10096FAA8(v2);
}

void sub_1009764FC(double *a1)
{
  sub_1000110C8();
  sub_100008550();

  sub_100970600(a1);
}

uint64_t sub_100976570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1000110C8();
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1009765F8()
{
  result = qword_100CE8900;
  if (!qword_100CE8900)
  {
    sub_10022E824(&qword_100CE8868);
    sub_1009766B0();
    sub_100006F64(&qword_100CE8910, &qword_100CE8918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8900);
  }

  return result;
}

unint64_t sub_1009766B0()
{
  result = qword_100CE8908;
  if (!qword_100CE8908)
  {
    sub_10022E824(&qword_100CE88F8);
    sub_10022E824(&qword_100CE8860);
    sub_10022E824(&qword_100CCA228);
    sub_10022E824(&qword_100CE8858);
    sub_1009761C4();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CCA260, &qword_100CCA228);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8908);
  }

  return result;
}

unint64_t sub_100976814()
{
  result = qword_100CE8958;
  if (!qword_100CE8958)
  {
    sub_10022E824(&qword_100CE8948);
    sub_100919128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8958);
  }

  return result;
}

unint64_t sub_1009768A0()
{
  result = qword_100CE8968;
  if (!qword_100CE8968)
  {
    sub_10022E824(&qword_100CE8960);
    sub_100919128();
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8968);
  }

  return result;
}

uint64_t sub_100976958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CA66A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009769E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1000110C8();
  sub_100008550();

  return a2(a1);
}

uint64_t sub_100976A88()
{
  v1 = *(type metadata accessor for ScrubberView(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100972214(*(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100976B1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100976BF8()
{
  result = qword_100CE8A08;
  if (!qword_100CE8A08)
  {
    sub_10022E824(&qword_100CE89F8);
    sub_100974B4C(&qword_100CE8A10, type metadata accessor for ScrubberDayContainerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8A08);
  }

  return result;
}

uint64_t sub_100976CFC()
{
  result = type metadata accessor for ScrubberDay(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100976D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (__chkstk_darwin)(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  LocationSearchEntityFromStringResolver.init()();
  v14 = v13;
  v16 = v15;
  v17 = [objc_opt_self() modernManager];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 activeTileGroup];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 mapAttributionURLForCoordinate:{v14, v16}];
      if (v21)
      {
        v22 = v21;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v7 + 32))(v12, v10, v6);
        v23 = URL.absoluteString.getter();
        v25 = v24;

        result = (*(v7 + 8))(v12, v6);
        *a3 = v23;
        a3[1] = v25;
        return result;
      }
    }
  }

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_100976FBC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, qword_100D91468);
  sub_10000703C(v6, qword_100D91468);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_10097719C()
{
  sub_10000C778();
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  swift_getKeyPath();
  (*(v3 + 104))(v0, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_10022C350(&qword_100CE8CF0);
  sub_10022C350(&qword_100CE8CF8);
  sub_100982C78();
  sub_100006F64(&qword_100CE8D00, &qword_100CE8CF0);
  sub_10001A2B4();
  sub_100006F64(v5, &qword_100CE8CF8);
  sub_100006F64(&qword_100CE8D10, &qword_100CE8CD8);
  ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
  sub_10000536C();
}

uint64_t sub_10097737C@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_10022C350(&qword_100CE8CF0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D38);
  sub_100982C78();
  sub_100006F64(&qword_100CE8D40, &qword_100CE8D38);
  ParameterSummarySwitchCondition.init(_:_:)();
  sub_100006F64(&qword_100CE8D00, &qword_100CE8CF0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v8 = *(v2 + 8);
  v8(v4, v1);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v8)(v7, v1);
}

uint64_t sub_100977590@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10022C350(&qword_100CE8D48);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v19 - v5;
  v6 = sub_10022C350(&qword_100CE8D50);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = sub_10022C350(&qword_100CE8CF8);
  v21 = sub_100982C78();
  sub_100982FA4();
  sub_100006F64(&qword_100CE8D08, &qword_100CE8CF8);
  v22 = v11;
  ParameterSummaryCaseCondition.init(_:_:)();
  sub_100006F64(&qword_100CE8D58, &qword_100CE8D50);
  v12 = v6;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_100006F64(&qword_100CE8D60, &qword_100CE8D48);
  v14 = v25;
  v15 = v26;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  static ParameterSummaryCaseBuilder.buildBlock<A, B>(_:_:)();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_100977988()
{
  swift_getKeyPath();
  sub_100982C78();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A3AEB0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_100977AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100977A7C();
  *a1 = result;
  return result;
}

uint64_t sub_100977AF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100977ACC();
  *a1 = result;
  return result;
}

void sub_100977B34()
{
  sub_10000C778();
  v19[0] = v0;
  v19[1] = v1;
  v2 = sub_10022C350(&qword_100CE8D18);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10022C350(&qword_100CE8D20);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10001365C();
  v5 = sub_10022C350(&qword_100CE8CF8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  sub_100982C78();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x206E65704FLL;
  v14._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D28);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v15._countAndFlagsBits = 0x736C696174656420;
  v15._object = 0xED000020726F6620;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D30);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v16);
  sub_100003B2C();
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10001A2B4();
  sub_100006F64(v17, &qword_100CE8CF8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v18 = *(v7 + 8);
  v18(v10, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  v18(v13, v5);
  sub_10000536C();
}

uint64_t sub_100977E34()
{
  swift_getKeyPath();
  sub_100982C78();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A3BD20;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100977EF0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_10022C350(&qword_100CE8D18);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10022C350(&qword_100CE8D20);
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CE8CF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_100982C78();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206E65704FLL;
  v10._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D28);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0x20726F6620;
  v11._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D30);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_100006F64(&qword_100CE8D08, &qword_100CE8CF8);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_1009782DC(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000D47CC(a1, &v6 - v4);
  IntentParameter.wrappedValue.setter();
  return sub_1001AEDF4(a1);
}

uint64_t sub_10097836C()
{
  v0 = sub_10022C350(&qword_100CE8D70);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CE8D68);
  sub_100007074(v1, qword_100D91480);
  sub_10000703C(v1, qword_100D91480);
  sub_100982C78();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100AE7E90;
  v2._countAndFlagsBits = 0xD000000000000021;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D28);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 63;
  v3._object = 0xE100000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D30);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 38;
  v4._object = 0xE100000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D78);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0x3D6574616426;
  v5._object = 0xE600000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE8D80);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

void sub_1009785BC()
{
  sub_10000C778();
  v78 = sub_10022C350(&qword_100CA2E28);
  sub_1000037C4();
  v77 = v0;
  sub_100003828();
  __chkstk_darwin(v1);
  v76 = &v71 - v2;
  type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v91 = v3;
  v92 = v4;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v82 = v6 - v5;
  v7 = sub_10022C350(&qword_100CA2D68);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v71 - v11;
  v12 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Locale();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_10000CC9C();
  v25 = type metadata accessor for LocalizedStringResource();
  v87 = v25;
  sub_100003B20();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v79 = v28 - v27;
  v75 = sub_10022C350(&qword_100CA2D78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v30 = *(v17 + 104);
  v83 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v84 = v16;
  v30(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  v80 = v17 + 104;
  v85 = v30;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10003CA80();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30(v20, v29, v16);
  v31 = v15;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v15, 0, 1, v25);
  static LocationSearchEntity.makeCurrentLocation()();
  v94 = v98;
  v95 = v99;
  v96 = v100;
  v97 = v101;
  v32 = type metadata accessor for IntentDialog();
  v86 = v32;
  sub_100003934();
  sub_10001B350(v33, v34, v35, v32);
  sub_100003934();
  sub_10001B350(v36, v37, v38, v32);
  v89 = enum case for InputConnectionBehavior.default(_:);
  v39 = *(v92 + 104);
  v92 += 104;
  v88 = v39;
  v39(v82);
  sub_10022C350(&qword_100CA2D80);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80);
  sub_10015E074();
  v75 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
  v74 = sub_10022C350(&qword_100CE8CD8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v83;
  v42 = v84;
  v41 = v85;
  v85(v20, v83, v84);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41(v20, v40, v42);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v72 = v31;
  sub_10000EF54(v31);
  v93 = 7;
  sub_100003934();
  v43 = v86;
  sub_10001B350(v44, v45, v46, v86);
  sub_100003934();
  sub_10001B350(v47, v48, v49, v43);
  v50 = sub_100031940();
  v51(v50);
  sub_100983068();
  v74 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v73 = sub_10022C350(&qword_100CE8CE0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v52 = v83;
  v53 = v84;
  v54 = v85;
  v85(v20, v83, v84);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10003CA80();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v54(v20, v52, v53);
  v55 = v72;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10000EF54(v55);
  v93 = 0;
  sub_100003934();
  v56 = v86;
  sub_10001B350(v57, v58, v59, v86);
  sub_100003934();
  sub_10001B350(v60, v61, v62, v56);
  v63 = sub_100031940();
  v64(v63);
  sub_100983688();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v81 = sub_10022C350(&qword_100CA2E30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v85(v20, v83, v84);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10003CA80();
  sub_100052204();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v67(v20, v65, v66);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10000EF54(v55);
  sub_100003934();
  sub_10001B350(v68, v69, v70, v86);
  (*(v77 + 104))(v76, enum case for IntentParameter.DateKind.dateTime<A>(_:), v78);
  v88(v82, v89, v91);
  IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  sub_10000536C();
}

uint64_t sub_100978F74@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2B50 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CE8D68);
  v3 = sub_10000703C(v2, qword_100D91480);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100979064(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100983CD8();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

void sub_100979110(void *a1@<X8>)
{
  sub_1009785BC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10097913C(uint64_t a1)
{
  v2 = sub_100982C78();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_100979178()
{
  sub_10000C778();
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10001365C();
  sub_1009785BC();
  sub_100023628(v3, v4, v5, v6);
  sub_100982C78();
  sub_10001D38C();
  v64 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v8 = sub_100003B2C();
  v7(v8);
  sub_1009785BC();
  sub_100023628(v9, v10, v11, v12);
  sub_10001D38C();
  v63 = static _AssistantIntent.Builder.buildExpression(_:)();
  v13 = sub_100003B2C();
  v7(v13);
  sub_1009785BC();
  sub_100023628(v14, v15, v16, v17);
  sub_10001D38C();
  v62 = static _AssistantIntent.Builder.buildExpression(_:)();
  v18 = sub_100003B2C();
  v7(v18);
  sub_1009785BC();
  sub_100023628(v19, v20, v21, v22);
  sub_10001D38C();
  v61 = static _AssistantIntent.Builder.buildExpression(_:)();
  v23 = sub_100003B2C();
  v7(v23);
  sub_1009785BC();
  sub_100023628(v24, v25, v26, v27);
  sub_10001D38C();
  v60 = static _AssistantIntent.Builder.buildExpression(_:)();
  v28 = sub_100003B2C();
  v7(v28);
  sub_1009785BC();
  sub_100023628(v29, v30, v31, v32);
  sub_10001D38C();
  v33 = static _AssistantIntent.Builder.buildExpression(_:)();
  v34 = sub_100003B2C();
  v7(v34);
  sub_1009785BC();
  sub_100023628(v35, v36, v37, v38);
  sub_10001D38C();
  v39 = static _AssistantIntent.Builder.buildExpression(_:)();
  v40 = sub_100003B2C();
  v7(v40);
  sub_1009785BC();
  sub_100023628(v41, v42, v43, v44);
  sub_10001D38C();
  v45 = static _AssistantIntent.Builder.buildExpression(_:)();
  v46 = sub_100003B2C();
  v7(v46);
  sub_1009785BC();
  sub_100023628(v47, v48, v49, v50);
  sub_10001D38C();
  v51 = static _AssistantIntent.Builder.buildExpression(_:)();
  v52 = sub_100003B2C();
  v7(v52);
  sub_1009785BC();
  sub_100023628(v53, v54, v55, v56);
  sub_10001D38C();
  v57 = static _AssistantIntent.Builder.buildExpression(_:)();
  v58 = sub_100003B2C();
  v7(v58);
  sub_10022C350(&qword_100CADD98);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100A30470;
  *(v59 + 32) = v64;
  *(v59 + 40) = v63;
  *(v59 + 48) = v62;
  *(v59 + 56) = v61;
  *(v59 + 64) = v60;
  *(v59 + 72) = v33;
  *(v59 + 80) = v39;
  *(v59 + 88) = v45;
  *(v59 + 96) = v51;
  *(v59 + 104) = v57;
  static _AssistantIntent.Builder.buildBlock(_:)();
  sub_1000379AC();
  sub_10000536C();
}

uint64_t sub_10097959C(uint64_t a1)
{
  v108 = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v2 = *(v1 - 8);
  v104 = v1;
  v105 = v2;
  __chkstk_darwin(v1);
  v103 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CE8CC0);
  v5 = *(v4 - 8);
  v110 = v4;
  v111 = v5;
  __chkstk_darwin(v4);
  v7 = &v86 - v6;
  v8 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v8);
  v9 = sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2073692074616857;
  v10._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v11 = sub_100982FA4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v97 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v111 + 8;
  v106 = *(v111 + 8);
  v106(v7, v4);
  v111 = v13;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2073692074616857;
  v14._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v112 = v11;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544106784;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  v107 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v96 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v106(v7, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x2073692074616857;
  v17._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  v102 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v109 = v7;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v95 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v110;
  v21 = v106;
  v106(v7, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x2073692074616857;
  v22._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 544106784;
  v23._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v94 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v26, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x2064616220776F48;
  v27._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 63;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v93 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v110;
  v21(v29, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x2064616220776F48;
  v31._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 63;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v98 = v9;
  v92 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v34, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0x2064616220776F48;
  v35._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 63;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v91 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v34, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0x2064616220776F48;
  v38._object = 0xEF20656874207369;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v39._countAndFlagsBits = 544106784;
  v39._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v40._countAndFlagsBits = 32;
  v40._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41._countAndFlagsBits = 63;
  v41._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v90 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v110;
  v21(v34, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0x206E65704FLL;
  v43._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  v100 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v45 = v104;
  v44 = v105;
  v102 = *(v105 + 104);
  v99 = v105 + 104;
  v46 = v103;
  v102(v103);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101 = *(v44 + 8);
  v101(v46, v45);
  v105 = v44 + 8;
  v47._countAndFlagsBits = 544175136;
  v47._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  v49 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v89 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v49, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50._countAndFlagsBits = 0x206E65704FLL;
  v50._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  v52 = v103;
  v51 = v104;
  (v102)(v103, v100, v104);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101(v52, v51);
  v53._countAndFlagsBits = 544175136;
  v53._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v54._countAndFlagsBits = 2126631;
  v54._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v54);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v55._countAndFlagsBits = 46;
  v55._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);
  v56 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v88 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57 = v110;
  v58 = v106;
  v106(v56, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v59._countAndFlagsBits = 0x656874206E65704FLL;
  v59._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v59);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v60._countAndFlagsBits = 0x73616365726F6620;
  v60._object = 0xEA00000000002E74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v60);
  v61 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v87 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58(v61, v57);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._countAndFlagsBits = 0x20776F6853;
  v62._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v63._countAndFlagsBits = 2126631;
  v63._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v63);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v64._countAndFlagsBits = 544106784;
  v64._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v64);
  v65 = v103;
  v66 = v104;
  (v102)(v103, v100, v104);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101(v65, v66);
  v67._countAndFlagsBits = 46;
  v67._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v67);
  v68 = v109;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v107 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v106(v68, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v69._countAndFlagsBits = 0x2079616C70736944;
  v69._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v69);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v70._countAndFlagsBits = 544106784;
  v70._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v70);
  (v102)(v65, v100, v66);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v101(v65, v66);
  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v71);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v105 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72 = v110;
  v73 = v106;
  v106(v68, v110);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v74);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v75._countAndFlagsBits = 0x73616365726F6620;
  v75._object = 0xEA00000000002E74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v75);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v73(v68, v72);
  sub_10022C350(&qword_100CE8CD0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100A9D240;
  v78 = v96;
  *(v77 + 32) = v97;
  *(v77 + 40) = v78;
  v79 = v94;
  *(v77 + 48) = v95;
  *(v77 + 56) = v79;
  v80 = v92;
  *(v77 + 64) = v93;
  *(v77 + 72) = v80;
  v81 = v90;
  *(v77 + 80) = v91;
  *(v77 + 88) = v81;
  v82 = v88;
  *(v77 + 96) = v89;
  *(v77 + 104) = v82;
  v83 = v107;
  *(v77 + 112) = v87;
  *(v77 + 120) = v83;
  *(v77 + 128) = v105;
  *(v77 + 136) = v76;
  v84 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v84;
}

uint64_t sub_10097A94C(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000D47CC(a1, &v6 - v3);
  return sub_1009782DC(v4);
}

uint64_t sub_10097AA20()
{
  v25 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v24 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v23 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v22 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v21 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v20 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v19 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v18 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v17 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v16 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v15 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v14 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v13 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A9D250;
  *(v9 + 32) = v25;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v21;
  *(v9 + 72) = v20;
  *(v9 + 80) = v19;
  *(v9 + 88) = v18;
  *(v9 + 96) = v17;
  *(v9 + 104) = v16;
  *(v9 + 112) = v15;
  *(v9 + 120) = v14;
  *(v9 + 128) = v13;
  *(v9 + 136) = v12;
  *(v9 + 144) = v0;
  *(v9 + 152) = v1;
  *(v9 + 160) = v2;
  *(v9 + 168) = v3;
  *(v9 + 176) = v4;
  *(v9 + 184) = v5;
  *(v9 + 192) = v6;
  *(v9 + 200) = v7;
  *(v9 + 208) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10097AD9C(uint64_t a1)
{
  v31 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0);
  v30 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v23 = v6;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = "How humid is it?";
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x8000000100AE7AE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v30;
  v6(v5, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100AE7B00;
  v10._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v24 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v9;
  v13 = v23;
  v23(v5, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = (v27 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v30);
  sub_10022C350(&qword_100CE8CD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100A3B020;
  v19 = v28;
  *(v18 + 32) = v29;
  *(v18 + 40) = v19;
  *(v18 + 48) = v25;
  *(v18 + 56) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

void sub_10097B2D4()
{
  sub_10000C778();
  type metadata accessor for _AssistantIntent.Value();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000CC9C();
  swift_getKeyPath();
  sub_100982FA4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100982C78();
  sub_10002CC20();
  v3 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v5 = sub_1000046B4();
  v4(v5);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v7 = sub_1000046B4();
  v4(v7);
  swift_getKeyPath();
  sub_100049FA0(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20();
  v8 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v9 = sub_1000046B4();
  v4(v9);
  sub_10022C350(&qword_100CBCBD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A3BBA0;
  *(v10 + 32) = v3;
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;
  static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();
  sub_1000379AC();
  sub_10000536C();
}

uint64_t sub_10097B500()
{
  v0 = sub_10022C350(&qword_100CE8CC0);
  v16 = v0;
  v18 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v15 - v1;
  v3 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v3);
  sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x6863756D20776F48;
  v4._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100982FA4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0x7265687420736920;
  v5._object = 0xEA00000000003F65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v18 + 8);
  v17 = v6;
  v18 += 8;
  v7(v2, v0);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x207469206C6C6957;
  v8._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 63;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v2, v16);
  sub_10022C350(&qword_100CE8CD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2D320;
  *(v12 + 32) = v17;
  *(v12 + 40) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10097B904()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BBA0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10097B9B4(uint64_t a1)
{
  v31 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0);
  v30 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v23 = v6;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27 = "How much pressure is there?";
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x8000000100AE7A80;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v30;
  v6(v5, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100AE7AA0;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v24 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v9;
  v13 = v23;
  v23(v5, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  v14._object = (v27 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v30);
  sub_10022C350(&qword_100CE8CD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100A3B020;
  v19 = v28;
  *(v18 + 32) = v29;
  *(v18 + 40) = v19;
  *(v18 + 48) = v25;
  *(v18 + 56) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_10097BF04(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CE8CC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - v5;
  sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v4 + 8);
  v35 = v7;
  v36 = v8;
  v9 = v3;
  v8(v6, v3);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32 = "Do I need sunscreen?";
  v10._countAndFlagsBits = 0xD000000000000017;
  v10._object = 0x8000000100AE79C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v31 = sub_10015E1DC();
  v29[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v3;
  v12 = v36;
  v36(v6, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100AE79E0;
  v13._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v37 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 63;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v6, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = (v32 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544108320;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 63;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v30;
  v19 = v36;
  v36(v6, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000013;
  v20._object = 0x8000000100AE7A00;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 63;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v6, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v6, v18);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v6, v18);
  sub_10022C350(&qword_100CE8CD0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100A3F990;
  v25 = v34;
  *(v24 + 32) = v35;
  *(v24 + 40) = v25;
  v26 = v32;
  *(v24 + 48) = v33;
  *(v24 + 56) = v26;
  *(v24 + 64) = v37;
  *(v24 + 72) = v22;
  *(v24 + 80) = v23;
  v27 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v27;
}

uint64_t sub_10097C5E8(uint64_t a1)
{
  v77 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v60 - v4;
  v6 = sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7 = *(v3 + 8);
  v81 = v2;
  v82 = v7;
  v7(v5, v2);
  v79 = v3 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73 = "How foggy is it?";
  v8._countAndFlagsBits = 0xD000000000000013;
  v8._object = 0x8000000100AE7880;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v78 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 63;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v2;
  v11 = v82;
  v82(v5, v10);
  v12 = v11;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100AE78A0;
  v13._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v80 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 63;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v74 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = (v73 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 63;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v73 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v81;
  v12(v5, v81);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v72 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v5, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v69 = "How much smoke is there?";
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v19._object = 0x8000000100AE78E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 63;
  v20._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v71 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v81;
  v82(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x8000000100AE7900;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v70 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v21;
  v25 = v82;
  v82(v5, v24);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  v26._object = (v69 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 63;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v81;
  v25(v5, v81);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v5, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v65 = "How much smoke is there ";
  v30._countAndFlagsBits = 0xD000000000000011;
  v30._object = 0x8000000100AE7920;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 63;
  v31._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v60 = v6;
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32 = v81;
  v82(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0xEE0020657A616820;
  v33._countAndFlagsBits = 0x6572656874207349;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 63;
  v34._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v82(v5, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000011;
  v35._object = (v65 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 63;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v38 = v81;
  v39 = v82;
  v82(v5, v81);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v5, v38);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61 = "How far can I see?";
  v40._countAndFlagsBits = 0xD000000000000015;
  v40._object = 0x8000000100AE7960;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v41._countAndFlagsBits = 63;
  v41._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v81;
  v82(v5, v81);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0xD000000000000012;
  v43._object = 0x8000000100AE7980;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44._countAndFlagsBits = 63;
  v44._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45 = v82;
  v82(v5, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46._countAndFlagsBits = 0xD000000000000015;
  v46._object = (v61 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 63;
  v48._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v45(v5, v81);
  sub_10022C350(&qword_100CE8CD0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100A9D260;
  v51 = v75;
  *(v50 + 32) = v76;
  *(v50 + 40) = v51;
  v52 = v73;
  *(v50 + 48) = v74;
  *(v50 + 56) = v52;
  v53 = v71;
  *(v50 + 64) = v72;
  *(v50 + 72) = v53;
  v54 = v69;
  *(v50 + 80) = v70;
  *(v50 + 88) = v54;
  v55 = v67;
  *(v50 + 96) = v68;
  *(v50 + 104) = v55;
  v56 = v65;
  *(v50 + 112) = v66;
  *(v50 + 120) = v56;
  v57 = v63;
  *(v50 + 128) = v64;
  *(v50 + 136) = v57;
  *(v50 + 144) = v62;
  *(v50 + 152) = v49;
  v58 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v58;
}

uint64_t sub_10097D4F4(uint64_t a1)
{
  v59 = a1;
  v1 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE8CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - v4;
  v6 = sub_100982C78();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60 = *(v3 + 8);
  v62 = v2;
  v60(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54 = "Is it going to be windy?";
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v7._object = 0x8000000100AE7760;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v63 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v56 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v2;
  v10 = v60;
  v60(v5, v9);
  v58 = v3 + 8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100AE7780;
  v11._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v61 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10(v5, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = (v54 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 63;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v62;
  v17 = v60;
  v60(v5, v62);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50 = "How fast are the wind gusts?";
  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v18._object = 0x8000000100AE77C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = v6;
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v60;
  v60(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v21._object = 0x8000000100AE77E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 63;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v23._object = (v50 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v62;
  v27 = v60;
  v60(v5, v62);
  v46 = 0xD000000000000014;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27(v5, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47 = "Show the wind chart.";
  v28._object = 0x8000000100AE7820;
  v28._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v60;
  v60(v5, v26);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._object = 0x8000000100AE7840;
  v31._countAndFlagsBits = v46;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v5, v62);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = (v47 | 0x8000000000000000);
  v33._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30(v5, v62);
  sub_10022C350(&qword_100CE8CD0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100A55560;
  v38 = v56;
  *(v37 + 32) = v57;
  *(v37 + 40) = v38;
  v39 = v54;
  *(v37 + 48) = v55;
  *(v37 + 56) = v39;
  v40 = v52;
  *(v37 + 64) = v53;
  *(v37 + 72) = v40;
  v41 = v50;
  *(v37 + 80) = v51;
  *(v37 + 88) = v41;
  v42 = v48;
  *(v37 + 96) = v49;
  *(v37 + 104) = v42;
  *(v37 + 112) = v46;
  *(v37 + 120) = v36;
  v43 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v43;
}

uint64_t sub_10097E0DC(uint64_t a1)
{
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  v116 = v2;
  v117 = v3;
  __chkstk_darwin(v2);
  v115 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE8CC0);
  v121 = *(v5 - 8);
  v122 = v5;
  __chkstk_darwin(v5);
  v7 = &v94 - v6;
  v8 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v8);
  v9 = sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2073692074616857;
  v10._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v120 = sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &unk_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 544106784;
  v11._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v114 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v106 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v121 + 8);
  v121 += 8;
  v119 = v13;
  v13(v7, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2073692074616857;
  v14._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 544106784;
  v15._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  v118 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  v113 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 63;
  v17._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v105 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v122;
  v119(v7, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20656D20776F6853;
  v19._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 544106784;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v22 = v116;
  v23 = v117;
  v109 = *(v117 + 104);
  v111 = v117 + 104;
  v24 = v115;
  v108 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v109(v115, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v25 = *(v23 + 8);
  v117 = v23 + 8;
  v110 = v25;
  v25(v24, v22);
  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v112 = v7;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v104 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v18;
  v28 = v119;
  v119(v7, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x65687420776F6853;
  v29._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 544106784;
  v30._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v32 = v115;
  v31 = v116;
  v109(v115, v21, v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v110(v32, v31);
  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v103 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = v122;
  v28(v34, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0x20776F6853;
  v36._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v102 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v38, v35);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = 0x206E65704FLL;
  v39._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v39);
  v41 = v115;
  v40 = v116;
  v109(v115, v108, v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v110(v41, v40);
  v42._countAndFlagsBits = 544175136;
  v42._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 2126631;
  v43._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v44);
  v45 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v101 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v46 = v122;
  v47 = v119;
  v119(v45, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48._countAndFlagsBits = 0x656874206E65704FLL;
  v48._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v49._countAndFlagsBits = 0x73616365726F6620;
  v49._object = 0xEA00000000002E74;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v49);
  v50 = v112;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v100 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v50, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v52._countAndFlagsBits = 2126631;
  v52._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v53._countAndFlagsBits = 46;
  v53._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v99 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v119(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v54);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v55._countAndFlagsBits = 2126631;
  v55._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v56._countAndFlagsBits = 32;
  v56._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v56);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v57._countAndFlagsBits = 46;
  v57._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v57);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v107 = v9;
  v98 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v58 = v122;
  v59 = v119;
  v119(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v60._countAndFlagsBits = 0x207374616857;
  v60._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v60);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v61._countAndFlagsBits = 2126631;
  v61._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v61);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v62._countAndFlagsBits = 63;
  v62._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v97 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v50, v58);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v63._countAndFlagsBits = 0x207374616857;
  v63._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v63);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v64._countAndFlagsBits = 2126631;
  v64._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v64);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v65._countAndFlagsBits = 32;
  v65._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v65);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v66._countAndFlagsBits = 63;
  v66._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v66);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v96 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v67 = v122;
  v119(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v68._countAndFlagsBits = 0x7420736920776F48;
  v68._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v68);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v69._countAndFlagsBits = 544106784;
  v69._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v69);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v70._countAndFlagsBits = 63;
  v70._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v70);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v95 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v71 = v67;
  v72 = v119;
  v119(v50, v71);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73._countAndFlagsBits = 0x7420736920776F48;
  v73._object = 0xEB00000000206568;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v73);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v74._countAndFlagsBits = 544106784;
  v74._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v74);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v75._countAndFlagsBits = 32;
  v75._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v75);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v76._countAndFlagsBits = 63;
  v76._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v76);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v94 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v72(v50, v122);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v77._countAndFlagsBits = 2125385;
  v77._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v77);
  v79 = v115;
  v78 = v116;
  v109(v115, v108, v116);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v110(v79, v78);
  v80._countAndFlagsBits = 0x6D20776F6873202CLL;
  v80._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v80);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v81._countAndFlagsBits = 2126631;
  v81._object = 0xE300000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v81);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v82._countAndFlagsBits = 32;
  v82._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v82);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v83);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v84 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v119(v50, v122);
  sub_10022C350(&qword_100CE8CD0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100A9D240;
  v86 = v105;
  *(v85 + 32) = v106;
  *(v85 + 40) = v86;
  v87 = v103;
  *(v85 + 48) = v104;
  *(v85 + 56) = v87;
  v88 = v101;
  *(v85 + 64) = v102;
  *(v85 + 72) = v88;
  v89 = v99;
  *(v85 + 80) = v100;
  *(v85 + 88) = v89;
  v90 = v97;
  *(v85 + 96) = v98;
  *(v85 + 104) = v90;
  v91 = v95;
  *(v85 + 112) = v96;
  *(v85 + 120) = v91;
  *(v85 + 128) = v94;
  *(v85 + 136) = v84;
  v92 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v92;
}

uint64_t sub_10097F628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100978250();
  *a1 = result;
  return result;
}

uint64_t sub_10097F6B4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3B030;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10097F7D4(uint64_t a1)
{
  v58 = a1;
  v1 = sub_10022C350(&qword_100CE8CC0);
  v2 = *(v1 - 8);
  v60 = v1;
  v61 = v2;
  __chkstk_darwin(v1);
  v4 = &v46 - v3;
  v5 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v5);
  sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x8000000100AE7660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v55 = sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &unk_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 63;
  v7._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v60;
  v59 = *(v61 + 8);
  v61 += 8;
  v59(v4, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x8000000100AE7660;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v57 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v54 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v8;
  v13 = v59;
  v59(v4, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50 = "What is the temperature ";
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100AE7680;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v56 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 63;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v17, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = (v50 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 63;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v60;
  v59(v22, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48 = "What is the temperature in ";
  v24._object = 0x8000000100AE76A0;
  v24._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v54;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v26, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._object = (v48 | 0x8000000000000000);
  v27._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 63;
  v29._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v30 = v59;
  v59(v26, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46 = "How is the temperature ";
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v31._object = 0x8000000100AE76C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 63;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v60;
  v30(v26, v60);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD00000000000001ALL;
  v35._object = (v46 | 0x8000000000000000);
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 63;
  v38._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v59(v26, v34);
  sub_10022C350(&qword_100CE8CD0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100A3ECD0;
  v41 = v52;
  *(v40 + 32) = v53;
  *(v40 + 40) = v41;
  v42 = v50;
  *(v40 + 48) = v51;
  *(v40 + 56) = v42;
  v43 = v48;
  *(v40 + 64) = v49;
  *(v40 + 72) = v43;
  *(v40 + 80) = v47;
  *(v40 + 88) = v39;
  v44 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v44;
}

void sub_100980394()
{
  sub_10000C778();
  type metadata accessor for _AssistantIntent.Value();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000CC9C();
  swift_getKeyPath();
  sub_100982FA4();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100982C78();
  sub_10002CC20();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v3 = *(v1 + 8);
  v4 = sub_1000046B4();
  v3(v4);
  swift_getKeyPath();
  sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &unk_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v6 = sub_1000046B4();
  v3(v6);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v8 = sub_1000046B4();
  v3(v8);
  swift_getKeyPath();
  sub_100049FA0(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10002CC20();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v10 = sub_1000046B4();
  v3(v10);
  sub_10022C350(&qword_100CBCBD8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A3B020;
  *(v11 + 32) = v12;
  *(v11 + 40) = v5;
  *(v11 + 48) = v7;
  *(v11 + 56) = v9;
  static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();
  sub_1000379AC();
  sub_10000536C();
}

uint64_t sub_100980634()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BBA0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100980704(uint64_t a1)
{
  v39 = a1;
  v1 = sub_10022C350(&qword_100CE8CC0);
  v41 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - v2;
  v4 = sub_10022C350(&qword_100CE8CC8);
  __chkstk_darwin(v4);
  sub_100982C78();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 544698184;
  v5._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v40 = sub_100983AE4(&qword_100CE8CB0, &qword_100CE8CB8, &unk_100A9DA80, sub_1009834F4);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 63;
  v6._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v41 + 8);
  v41 += 8;
  v36 = v7;
  v37 = v8;
  v31 = v1;
  v8(v3, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 544698184;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v38 = sub_100983AE4(&qword_100CE2568, &unk_100CB2CF0, &unk_100A2D7F0, sub_1008A56F0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v37;
  v37(v3, v1);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 544698184;
  v13._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v33 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 63;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v31;
  v12(v3, v31);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 544698184;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v3, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 544698184;
  v20._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 544106784;
  v21._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v37(v3, v16);
  sub_10022C350(&qword_100CE8CD0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100A3B030;
  v26 = v35;
  *(v25 + 32) = v36;
  *(v25 + 40) = v26;
  v27 = v32;
  *(v25 + 48) = v34;
  *(v25 + 56) = v27;
  *(v25 + 64) = v24;
  v28 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v28;
}

uint64_t sub_100980EEC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A3C3F0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_10098102C()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10001365C();
  sub_100982C78();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v2 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v3 = sub_100003B2C();
  v4(v3);
  sub_10022C350(&qword_100CADD88);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = v2;
  static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();
  sub_1000379AC();
  return v0;
}

uint64_t sub_100981154()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1009811EC()
{
  v0 = sub_10022C350(&qword_100CBCC00);
  __chkstk_darwin(v0 - 8);
  v30[1] = v30 - v1;
  v2 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v41 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE8CA0);
  v9 = sub_10022C350(&qword_100CE8CA8);
  v10 = *(v9 - 8);
  v42 = *(v10 + 72);
  v11 = v9 - 8;
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3F990;
  v14 = v13 + v12;
  v33 = *(v11 + 56);
  v34 = v13;
  *(v13 + v12) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v4, 1, 1, v5);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v39 = sub_10022C350(&qword_100CBCC18);
  v15 = *(v6 + 72);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v43 = *(v6 + 80);
  v44 = v16;
  v40 = 3 * v15;
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v35 = v8;
  v38 = v4;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v17 = v42;
  v36 = v11;
  v37 = v14;
  v18 = v11;
  v33 = *(v11 + 56);
  *(v14 + v42) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v19 = v41;
  sub_10001B350(v4, 1, 1, v41);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  LocalizedStringResource.init(stringLiteral:)();
  v20 = v38;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v21 = *(v18 + 56);
  v31 = (v14 + 2 * v17);
  v32 = v21;
  *v31 = 2;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v20, 1, 1, v19);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A41BA0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v33 = 5 * v15;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v22 = v36;
  v23 = v37;
  v32 = *(v36 + 56);
  *(v37 + 3 * v42) = 3;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v20, 1, 1, v41);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v30[0] = v15;
  *(swift_allocObject() + 16) = xmmword_100A2D320;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v38;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v32 = *(v22 + 56);
  *(v23 + 4 * v42) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v25 = v41;
  sub_10001B350(v24, 1, 1, v41);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A3C3F0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v26 = v38;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v27 = v42;
  v28 = v37;
  *(v37 + 5 * v42) = 5;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v26, 1, 1, v25);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *(v28 + 6 * v27) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v26, 1, 1, v25);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  *(swift_allocObject() + 16) = xmmword_100A3B020;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  type metadata accessor for DisplayRepresentation();
  sub_100983170();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100D914B0 = result;
  return result;
}

uint64_t sub_100981C68()
{
  result = sub_100030188();
  switch(v1)
  {
    case 1:
      result = sub_1000753B0();
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = sub_100028EBC();
      break;
    case 4:
      result = 0x7865646E497675;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100981D00(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100C45C00, v3);
  sub_1000379AC();
  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100981D44()
{
  result = sub_100030188();
  switch(v1)
  {
    case 1:
      result = sub_1000753B0();
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = sub_100028EBC();
      break;
    case 4:
      result = 6911605;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100981E00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100981D00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100981E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100981D44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100981E5C()
{
  v1 = sub_100981C68();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100981EF4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  sub_10000703C(v7, a3);
  sub_100003B20();
  v9 = *(v8 + 16);

  return v9(a4);
}

uint64_t sub_100981F94(uint64_t a1)
{
  v2 = sub_100983068();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100981FE0()
{
  if (qword_100CA2B60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10098203C(uint64_t a1)
{
  v2 = sub_100982FFC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1009820C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10000CC9C();
  v5 = type metadata accessor for LocalizedStringResource();
  sub_100003B20();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  sub_100007074(v7, a2);
  sub_10000703C(v7, a2);
  sub_100003B2C();
  LocalizedStringResource.init(stringLiteral:)();
  sub_100003934();
  sub_10001B350(v8, v9, v10, v5);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t TemperatureKind.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10000703C(v0, static TemperatureKind.typeDisplayRepresentation);
}

uint64_t static TemperatureKind.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000703C(v2, static TemperatureKind.typeDisplayRepresentation);
  swift_beginAccess();
  sub_100003B20();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static TemperatureKind.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000703C(v2, static TemperatureKind.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TemperatureKind.typeDisplayRepresentation.modify())()
{
  if (qword_100CA2B68 != -1)
  {
    sub_10000936C();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000703C(v0, static TemperatureKind.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess_1;
}

uint64_t sub_10098243C()
{
  v0 = sub_10022C350(&qword_100CBCC00);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v18[0] = v18 - v1;
  v3 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v20 = v6;
  v22 = *(v6 - 8);
  v7 = v22;
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE8D88);
  v10 = (sub_10022C350(&qword_100CE8D90) - 8);
  v11 = *v10;
  v21 = *(*v10 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v24 = v13;
  *(v13 + 16) = xmmword_100A2D320;
  v14 = v13 + v12;
  v18[1] = v10[14];
  *(v13 + v12) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v15 = v5;
  sub_10001B350(v5, 1, 1, v6);
  v19 = type metadata accessor for DisplayRepresentation.Image();
  sub_10001B350(v2, 1, 1, v19);
  sub_10022C350(&qword_100CBCC18);
  v22 = 3 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v16 = v18[0];
  v23 = v9;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *(v14 + v21) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v15, 1, 1, v20);
  sub_10001B350(v16, 1, 1, v19);
  *(swift_allocObject() + 16) = xmmword_100A55560;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  type metadata accessor for DisplayRepresentation();
  sub_1009837DC();
  result = Dictionary.init(dictionaryLiteral:)();
  static TemperatureKind.caseDisplayRepresentations = result;
  return result;
}

uint64_t *TemperatureKind.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70();
  }

  return &static TemperatureKind.caseDisplayRepresentations;
}

uint64_t static TemperatureKind.caseDisplayRepresentations.getter()
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70();
  }

  swift_beginAccess();
}

uint64_t static TemperatureKind.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70();
  }

  swift_beginAccess();
  static TemperatureKind.caseDisplayRepresentations = a1;
}

uint64_t (*static TemperatureKind.caseDisplayRepresentations.modify())()
{
  if (qword_100CA2B70 != -1)
  {
    sub_100006C70();
  }

  sub_100003B2C();
  swift_beginAccess();
  return j_j__swift_endAccess_1;
}

uint64_t TemperatureKind.urlRepresentationParameter.getter(char a1)
{
  strcpy(v6, "temperature=");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x746E657261707061;
  }

  else
  {
    v2 = 0x6C6175746361;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return v6[0];
}

uint64_t TemperatureKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E657261707061;
  }

  else
  {
    return 0x6C6175746361;
  }
}

Weather::TemperatureKind_optional __swiftcall TemperatureKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100C43F30, v3);
  sub_1000379AC();
  if (v1 == 1)
  {
    v4.value = Weather_TemperatureKind_apparent;
  }

  else
  {
    v4.value = Weather_TemperatureKind_unknownDefault;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100982C78()
{
  result = qword_100CE8B98;
  if (!qword_100CE8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8B98);
  }

  return result;
}

unint64_t sub_100982CD0()
{
  result = qword_100CE8BA0;
  if (!qword_100CE8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BA0);
  }

  return result;
}

unint64_t sub_100982D28()
{
  result = qword_100CE8BA8;
  if (!qword_100CE8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BA8);
  }

  return result;
}

unint64_t sub_100982D9C()
{
  result = qword_100CE8BB0;
  if (!qword_100CE8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BB0);
  }

  return result;
}

unint64_t sub_100982DF4()
{
  result = qword_100CE8BB8;
  if (!qword_100CE8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BB8);
  }

  return result;
}

unint64_t sub_100982E4C()
{
  result = qword_100CE8BC0;
  if (!qword_100CE8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BC0);
  }

  return result;
}

unint64_t sub_100982EA4()
{
  result = qword_100CE8BC8;
  if (!qword_100CE8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BC8);
  }

  return result;
}

unint64_t sub_100982EFC()
{
  result = qword_100CE8BD0;
  if (!qword_100CE8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BD0);
  }

  return result;
}

unint64_t sub_100982F50()
{
  result = qword_100CE8BD8;
  if (!qword_100CE8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BD8);
  }

  return result;
}

unint64_t sub_100982FA4()
{
  result = qword_100CE8BE0;
  if (!qword_100CE8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BE0);
  }

  return result;
}

unint64_t sub_100982FFC()
{
  result = qword_100CE8BE8;
  if (!qword_100CE8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BE8);
  }

  return result;
}

unint64_t sub_100983068()
{
  result = qword_100CE8BF0;
  if (!qword_100CE8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BF0);
  }

  return result;
}

unint64_t sub_1009830C0()
{
  result = qword_100CE8BF8;
  if (!qword_100CE8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8BF8);
  }

  return result;
}

unint64_t sub_100983118()
{
  result = qword_100CE8C00;
  if (!qword_100CE8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C00);
  }

  return result;
}

unint64_t sub_100983170()
{
  result = qword_100CE8C08;
  if (!qword_100CE8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C08);
  }

  return result;
}

unint64_t sub_100983218()
{
  result = qword_100CE8C20;
  if (!qword_100CE8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C20);
  }

  return result;
}

Weather::TemperatureKind_optional sub_100983284@<W0>(Swift::String *a1@<X0>, Weather::TemperatureKind_optional *a2@<X8>)
{
  result.value = TemperatureKind.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1009832B4@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1009832E4()
{
  result = qword_100CE8C28;
  if (!qword_100CE8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C28);
  }

  return result;
}

unint64_t sub_10098333C()
{
  result = qword_100CE8C30;
  if (!qword_100CE8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C30);
  }

  return result;
}

unint64_t sub_100983394()
{
  result = qword_100CE8C38;
  if (!qword_100CE8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C38);
  }

  return result;
}

uint64_t sub_1009833E8()
{
  v2 = TemperatureKind.urlRepresentationParameter.getter(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10098344C()
{
  result = qword_100CE8C40;
  if (!qword_100CE8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C40);
  }

  return result;
}

unint64_t sub_1009834A0()
{
  result = qword_100CE8C48;
  if (!qword_100CE8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C48);
  }

  return result;
}

unint64_t sub_1009834F4()
{
  result = qword_100CE8C50;
  if (!qword_100CE8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C50);
  }

  return result;
}

unint64_t sub_10098354C()
{
  result = qword_100CE8C58;
  if (!qword_100CE8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C58);
  }

  return result;
}

uint64_t sub_1009835A0@<X0>(uint64_t a1@<X8>)
{
  v2 = TemperatureKind.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

unint64_t sub_100983688()
{
  result = qword_100CE8C60;
  if (!qword_100CE8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C60);
  }

  return result;
}

uint64_t sub_1009836DC(uint64_t a1)
{
  v2 = sub_100983688();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10098372C()
{
  result = qword_100CE8C68;
  if (!qword_100CE8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C68);
  }

  return result;
}

unint64_t sub_100983784()
{
  result = qword_100CE8C70;
  if (!qword_100CE8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C70);
  }

  return result;
}

unint64_t sub_1009837DC()
{
  result = qword_100CE8C78;
  if (!qword_100CE8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8C78);
  }

  return result;
}

uint64_t sub_100983830()
{
  TemperatureKind.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
}

uint64_t sub_10098387C(uint64_t a1)
{
  v2 = sub_10098354C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for TemperatureKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100983A00(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100983AE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100983B60()
{
  v0 = sub_10022C350(&qword_100CBCC30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  v4 = sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  v6[0] = v4;
  v6[1] = &type metadata for LocationSearchEntityFromStringResolver;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100983CD8()
{
  result = qword_100CE8CE8;
  if (!qword_100CE8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE8CE8);
  }

  return result;
}

uint64_t sub_100983D4C(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  sub_100013188(a2, v4 + 24);
  sub_100013188(a3, v4 + 64);
  sub_100013188(a4, v4 + 104);
  return v4;
}

uint64_t sub_100983DA8()
{

  sub_100006F14(v0 + 24);
  sub_100006F14(v0 + 64);
  sub_100006F14(v0 + 104);
  return v0;
}

uint64_t sub_100983DE0()
{
  sub_100983DA8();

  return swift_deallocClassInstance();
}

uint64_t sub_100983E38()
{
  type metadata accessor for LocationInfoResult();
  firstly<A>(closure:)();
  v0 = zalgo.getter();
  type metadata accessor for LocationInfo();
  v1 = Promise.then<A>(on:closure:)();

  return v1;
}

uint64_t sub_100983EE0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v69 = v4;
  v70 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v68 = v6 - v5;
  v66 = type metadata accessor for WeatherServiceCaching.Options();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v65 = v9 - v8;
  v10 = sub_10022C350(&qword_100CAD030);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v61 = &v54 - v12;
  v13 = sub_10022C350(&qword_100CAD038);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v58 = &v54 - v15;
  v16 = sub_10022C350(&qword_100CE8E50);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v63 = type metadata accessor for WeatherServiceLocationOptions();
  sub_1000037C4();
  v57 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v64 = type metadata accessor for ProductRequirementsFactory.AppGeoRequiredProducts();
  sub_1000037C4();
  v62 = v25;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = sub_10022C350(&qword_100CACE08);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  v34 = &v54 - v33;
  WeatherDataRequestOptions.timeZone.getter();
  sub_1000161C0(v2 + 3, v2[6]);
  v59 = v34;
  v60 = v29;
  dispatch thunk of ProductRequirementsFactoryType.appGeoRequiredProducts(for:)();
  WeatherDataRequestOptions.locationOptions.getter();
  v35 = type metadata accessor for WeatherRequestLocationOptions();
  if (sub_100024D10(v19, 1, v35) == 1)
  {
    sub_1000180EC(v19, &qword_100CE8E50);
  }

  else
  {
    WeatherRequestLocationOptions.decimalPrecision.getter();
    (*(*(v35 - 8) + 8))(v19, v35);
  }

  sub_1000161C0(v2 + 8, v2[11]);
  dispatch thunk of LocationManagerType.limitsPrecision.getter();
  v36 = v24;
  v56 = v24;
  WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)();
  type metadata accessor for WeatherServiceFetchOptions();
  v37 = swift_allocBox();
  v54 = v38;
  v55 = v37;
  WeatherDataRequestOptions.timeZone.getter();
  v39 = v57;
  v40 = v58;
  v41 = v63;
  (*(v57 + 16))(v58, v36, v63);
  sub_10001B350(v40, 0, 1, v41);
  WeatherDataRequestOptions.treatmentIdentifiers.getter();
  type metadata accessor for WeatherNetworkActivity();
  sub_100003934();
  sub_10001B350(v42, v43, v44, v45);
  v71 = _swiftEmptyArrayStorage;
  sub_100986284();
  sub_10022C350(&qword_100CE2970);
  sub_1009862DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v53) = 0;
  WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:)();
  sub_1000161C0(v2 + 13, v2[16]);
  v46 = v68;
  v47 = dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  __chkstk_darwin(v47);
  v48 = v67;
  *(&v54 - 6) = v2;
  *(&v54 - 5) = v48;
  v49 = v60;
  v50 = v55;
  *(&v54 - 4) = v60;
  *(&v54 - 3) = v50;
  v53 = v46;
  sub_10022C350(&qword_100CE8E58);
  swift_allocObject();
  v51 = Promise.init(resolver:)();
  (*(v39 + 8))(v56, v41);
  sub_1000180EC(v59, &qword_100CACE08);
  (*(v69 + 8))(v46, v70);

  (*(v62 + 8))(v49, v64);
  return v51;
}

uint64_t sub_100984538(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a6;
  v71 = a4;
  v70 = a3;
  v68 = a2;
  v66 = a1;
  v63 = a9;
  v62 = type metadata accessor for AppConfiguration();
  v57 = *(v62 - 8);
  v61 = *(v57 + 64);
  __chkstk_darwin(v62);
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v93 = *(Options - 8);
  v94 = Options;
  __chkstk_darwin(Options);
  v92 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CE8E60);
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v91 = &v47 - v15;
  v16 = sub_10022C350(&qword_100CE2988);
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v90 = &v47 - v17;
  v18 = sub_10022C350(&qword_100CE2990);
  v77 = *(v18 - 8);
  v78 = v18;
  __chkstk_darwin(v18);
  v89 = &v47 - v19;
  v76 = sub_10022C350(&qword_100CE2998);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v88 = &v47 - v20;
  v74 = sub_10022C350(&qword_100CE29A0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v87 = &v47 - v21;
  v72 = sub_10022C350(&qword_100CE29A8);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v48 = &v47 - v22;
  v65 = sub_10022C350(&qword_100CE29B0);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v49 = &v47 - v23;
  v60 = sub_10022C350(&qword_100CAD2A0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v83 = &v47 - v24;
  v56 = sub_10022C350(&qword_100CAD290);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v84 = &v47 - v25;
  v54 = sub_10022C350(&qword_100CE29B8);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v85 = &v47 - v26;
  v52 = sub_10022C350(&qword_100CE29C0);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v86 = &v47 - v27;
  v28 = swift_projectBox();
  v50 = *(a5 + 16);
  ProductRequirementsFactory.AppGeoRequiredProducts.current.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.minutely.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.hourly.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.daily.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.airQuality.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.changes.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.alerts.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.availability.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.news.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.historicalComparisons.getter();
  ProductRequirementsFactory.AppGeoRequiredProducts.locationInfo.getter();
  swift_beginAccess();
  (*(v93 + 16))(v92, v28, v94);
  v29 = v57;
  v30 = v58;
  v31 = v62;
  (*(v57 + 16))(v58, v63, v62);
  v32 = v29;
  v33 = (*(v29 + 80) + 72) & ~*(v29 + 80);
  v34 = swift_allocObject();
  v35 = v69;
  v36 = v66;
  *(v34 + 2) = v69;
  *(v34 + 3) = v36;
  *(v34 + 4) = v68;
  *(v34 + 5) = a5;
  v37 = v71;
  *(v34 + 6) = v70;
  *(v34 + 7) = v37;
  *(v34 + 8) = a8;
  (*(v32 + 32))(&v34[v33], v30, v31);
  v66 = type metadata accessor for CurrentWeather();
  v70 = v35;

  sub_10022C350(&qword_100CB0BA0);
  sub_10022C350(&qword_100CA7030);
  sub_10022C350(&qword_100CA7000);
  sub_10022C350(&qword_100CC62B8);
  sub_10022C350(&qword_100CACDF8);
  sub_10022C350(&qword_100CD00E0);
  type metadata accessor for WeatherAvailability();
  sub_10022C350(&qword_100CE29C8);
  sub_10022C350(&qword_100CABD10);
  type metadata accessor for LocationInfo();
  v38 = v92;
  v39 = v91;
  v40 = v90;
  v41 = v89;
  v42 = v88;
  v43 = v49;
  v44 = v48;
  v45 = v87;
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K>(for:including:_:_:_:_:_:_:_:_:_:_:options:completion:)();

  (*(v93 + 8))(v38, v94);
  (*(v81 + 8))(v39, v82);
  (*(v79 + 8))(v40, v80);
  (*(v77 + 8))(v41, v78);
  (*(v75 + 8))(v42, v76);
  (*(v73 + 8))(v45, v74);
  (*(v67 + 8))(v44, v72);
  (*(v64 + 8))(v43, v65);
  (*(v59 + 8))(v83, v60);
  (*(v55 + 8))(v84, v56);
  (*(v53 + 8))(v85, v54);
  return (*(v51 + 8))(v86, v52);
}

uint64_t sub_100985144(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v121 = a8;
  v122 = a2;
  v113 = a7;
  v114 = a6;
  v112 = a5;
  v117 = a3;
  v118 = a4;
  v120 = a1;
  v111 = type metadata accessor for LocationInfo();
  v87 = *(v111 - 8);
  __chkstk_darwin(v111);
  v86 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v109 = *(Options - 8);
  v110 = Options;
  __chkstk_darwin(Options);
  v108 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE8E60);
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin(v11);
  v103 = &v83 - v12;
  v13 = sub_10022C350(&qword_100CE8E68);
  __chkstk_darwin(v13 - 8);
  v104 = &v83 - v14;
  v105 = sub_10022C350(&qword_100CE8E70);
  __chkstk_darwin(v105);
  v88 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v89 = &v83 - v17;
  v18 = type metadata accessor for WeatherServiceCaching.Options();
  __chkstk_darwin(v18 - 8);
  v102 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for WeatherDataLocationPredicate();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = (&v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for WeatherDataAgePredicate();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v96 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Policy = type metadata accessor for WeatherServiceCacheReadPolicy();
  v95 = *(Policy - 8);
  __chkstk_darwin(Policy);
  v97 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Logger();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LocationInfoResult();
  v115 = *(v24 - 8);
  v116 = v24;
  __chkstk_darwin(v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for LocationInfo();
  v27 = *(v119 - 8);
  __chkstk_darwin(v119);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v83 - v31;
  v33 = sub_10022C350(&qword_100CE8E78);
  __chkstk_darwin(v33);
  v35 = &v83 - v34;
  v36 = sub_10022C350(&qword_100CE8E80);
  __chkstk_darwin(v36);
  v38 = (&v83 - v37);
  v121 = swift_projectBox();
  sub_1000955E0(v120, v38, &qword_100CE8E80);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10002F758(v38, v35, &qword_100CE8E78);
    sub_100985F18(v122);
    v53 = v119;
    (*(v27 + 16))(v29, v32, v119);
    LocationInfoResult.init(locationInfo:isExact:)();
    v117(v26);
    (*(v115 + 8))(v26, v116);
    (*(v27 + 8))(v32, v53);
    v54 = v35;
    v55 = &qword_100CE8E78;
    return sub_1000180EC(v54, v55);
  }

  v84 = v29;
  v85 = v32;
  v120 = v26;
  v39 = *v38;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enableDynamicCacheQueries.getter();
  SettingReader.read<A>(_:)();

  v40 = v119;
  v41 = v27;
  v42 = v122;
  if (v123 == 1)
  {
    v43 = CLLocation.storeKey.getter();
    v45 = v44;
    sub_1000161C0((v112 + 64), *(v112 + 88));
    v46 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
    if (v46)
    {
      v47 = v46;
      v48 = CLLocation.storeKey.getter();
      v50 = v49;

      if (v43 == v48 && v45 == v50)
      {

LABEL_17:
        v83 = v39;
        v57 = v90;
        static Logger.geocode.getter();
        v58 = v42;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 141558275;
          *(v61 + 4) = 1752392040;
          *(v61 + 12) = 2113;
          *(v61 + 14) = v58;
          *v62 = v58;
          v63 = v58;
          _os_log_impl(&_mh_execute_header, v59, v60, "Using dynamic lookup for reverse geocode fallback at %{private,mask.hash}@", v61, 0x16u);
          sub_1000180EC(v62, &qword_100CBE0F8);
        }

        (*(v91 + 8))(v57, v92);
        (*(v93 + 104))(v96, enum case for WeatherDataAgePredicate.any(_:), v94);
        AppConfiguration.reverseGeocodingDynamicCacheQueryDistance.getter();
        v64 = v99;
        *v99 = v65;
        (*(v100 + 104))(v64, enum case for WeatherDataLocationPredicate.withinDistance(_:), v101);
        v66 = v97;
        WeatherServiceCacheReadConfig.init(age:location:)();
        (*(v95 + 104))(v66, enum case for WeatherServiceCacheReadPolicy.useCache(_:), Policy);
        v67 = v121;
        swift_beginAccess();
        WeatherServiceFetchOptions.cacheReadPolicy.setter();
        swift_endAccess();
        static WeatherServiceCaching.Options.allowsExpiredData.getter();
        swift_beginAccess();
        WeatherServiceFetchOptions.cachingOptions.setter();
        swift_endAccess();
        v68 = v111;
        v69 = v103;
        static WeatherQuery.locationInfo.getter();
        swift_beginAccess();
        v71 = v108;
        v70 = v109;
        v72 = v110;
        (*(v109 + 16))(v108, v67, v110);
        v73 = v104;
        WeatherService.cachedWeather<A>(for:including:options:)();
        (*(v70 + 8))(v71, v72);
        (*(v106 + 8))(v69, v107);
        v74 = sub_100024D10(v73, 1, v105);
        v75 = v117;
        if (v74 == 1)
        {
          sub_1000180EC(v73, &qword_100CE8E68);
          v114(v83);
        }

        v76 = v73;
        v77 = v89;
        sub_10002F758(v76, v89, &qword_100CE8E70);
        v78 = v88;
        sub_1000955E0(v77, v88, &qword_100CE8E70);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v114(*v78);

          v55 = &qword_100CE8E70;
          v54 = v77;
        }

        else
        {
          v79 = v87;
          v80 = v86;
          (*(v87 + 32))(v86, v78, v68);
          v81 = v85;
          sub_100985F18(v58);
          (*(v41 + 16))(v84, v81, v40);
          v82 = v120;
          LocationInfoResult.init(locationInfo:isExact:)();
          v75(v82);

          (*(v115 + 8))(v82, v116);
          (*(v41 + 8))(v81, v40);
          (*(v79 + 8))(v80, v68);
          v55 = &qword_100CE8E70;
          v54 = v89;
        }

        return sub_1000180EC(v54, v55);
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v114(v39);
}

uint64_t sub_100985F18(void *a1)
{
  v2 = sub_10022C350(&qword_100CE8E88);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10022C350(&qword_100CE8E90);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for Metadata();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000037D8();
  LocationInfo.date.getter();
  LocationInfo.expiration.getter();
  sub_100003934();
  sub_10001B350(v13, v14, v15, v8);
  [a1 coordinate];
  [a1 coordinate];
  type metadata accessor for Metadata.Units();
  sub_100003934();
  sub_10001B350(v16, v17, v18, v19);
  type metadata accessor for SourceType();
  sub_100003934();
  sub_10001B350(v20, v21, v22, v23);
  Metadata.init(readTime:expireTime:reportedTime:version:latitude:longitude:language:providerName:providerLogo:temporarilyUnavailable:units:attributionUrl:sourceType:)();
  LocationInfo.primaryName.getter();
  LocationInfo.secondaryName.getter();
  LocationInfo.preciseName.getter();
  LocationInfo.countryCode.getter();
  LocationInfo.timeZone.getter();
  return LocationInfo.init(metadata:primaryName:secondaryName:preciseName:countryCode:timeZone:)();
}

unint64_t sub_100986284()
{
  result = qword_100CE2968;
  if (!qword_100CE2968)
  {
    type metadata accessor for WeatherServiceCaching.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2968);
  }

  return result;
}

unint64_t sub_1009862DC()
{
  result = qword_100CE2978;
  if (!qword_100CE2978)
  {
    sub_10022E824(&qword_100CE2970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2978);
  }

  return result;
}

uint64_t sub_100986370(uint64_t a1)
{
  v3 = type metadata accessor for AppConfiguration();
  sub_100003810(v3);
  return sub_100985144(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_100986438()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29B0 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  byte_100CE8F40 = v0 & 1;
  return result;
}

unint64_t sub_1009864D8(uint64_t a1)
{
  v3 = type metadata accessor for LocationViewComponent();
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v126 = v5 - v4;
  v6 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v6 - 8);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v123 - v10;
  v12 = type metadata accessor for LocationContentState();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for LocationViewConfigurationInputs();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23)
  {
    goto LABEL_5;
  }

  if (qword_100CA2B78 != -1)
  {
    swift_once();
  }

  if (byte_100CE8F40 != 1)
  {
    return 0xC000000000000004;
  }

LABEL_5:
  v124 = v8;
  v125 = v11;
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v24 + 16))(v21, a1);
  sub_1000753C8(v12[5]);
  sub_1000753C8(v12[6]);
  sub_1000753C8(v12[7]);
  v25 = *(a1 + v12[8]);
  v26 = *(a1 + v12[9]);
  v27 = v12[10];
  v28 = v17[12];
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v29 + 16))(v21 + v28, a1 + v27);
  *(v21 + v17[8]) = v25;
  *(v21 + v17[9]) = 2;
  *(v21 + v17[10]) = v26;
  *(v21 + v17[11]) = 0;
  v30 = v1[5];
  v31 = v1[6];
  v127 = v1;
  sub_1000161C0(v1 + 2, v30);
  v32 = (*(v31 + 16))(v21, v30, v31);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_10000703C(v33, qword_100D90A90);
  sub_100111510(a1, v16, type metadata accessor for LocationContentState);
  v35 = v32 & 0xFFFFFFFFFFFFFFBLL;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *v38 = 141558531;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    v39 = Location.name.getter();
    v123 = a1;
    v41 = v40;
    sub_10001A2CC();
    sub_100078694(v39, v41, &v128);
    sub_100008CA4();

    *(v38 + 14) = v39;
    *(v38 + 22) = 2082;
    v42 = sub_1009CE4F0(v32);
    v34 = v43;
    v44 = sub_100078694(v42, v43, &v128);

    *(v38 + 24) = v44;
    v35 = v32 & 0xFFFFFFFFFFFFFFBLL;
    a1 = v123;
    _os_log_impl(&_mh_execute_header, v36, v37, "Location configuration for %{private,mask.hash}s chosen: %{public}s", v38, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = sub_10001A2CC();
  }

  switch((v32 >> 59) & 0x1E | (v32 >> 2) & 1)
  {
    case 1uLL:
      sub_100015204();
      __chkstk_darwin(v81);
      sub_1000110E8();
      v82 = sub_100004C08();
      sub_1009BDCEC(v82, v83);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 4;
    case 2uLL:
      sub_100015204();
      __chkstk_darwin(v69);
      sub_1000110E8();
      v70 = sub_100004C08();
      sub_100405CA4(v70, v71);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x1000000000000000;
    case 3uLL:
      sub_100015204();
      __chkstk_darwin(v75);
      sub_1000110E8();
      v76 = sub_100004C08();
      sub_1009993AC(v76, v77);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x1000000000000004;
      return v34 | v56;
    case 4uLL:
      sub_100015204();
      __chkstk_darwin(v57);
      sub_1000110E8();
      v58 = sub_100004C08();
      sub_10061AF64(v58, v59);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x2000000000000000;
    case 5uLL:
      sub_100015204();
      __chkstk_darwin(v92);
      sub_1000110E8();
      v93 = sub_100004C08();
      sub_1006EBE00(v93, v94);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x2000000000000004;
      return v34 | v56;
    case 6uLL:
      sub_100015204();
      __chkstk_darwin(v101);
      sub_1000110E8();
      v102 = sub_100004C08();
      sub_1008523FC(v102, v103);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x3000000000000000;
    case 7uLL:
      sub_100015204();
      __chkstk_darwin(v78);
      sub_1000110E8();
      v79 = sub_100004C08();
      sub_1007FB8B4(v79, v80);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x3000000000000004;
      return v34 | v56;
    case 8uLL:
      sub_100015204();
      __chkstk_darwin(v110);
      sub_1000110E8();
      v111 = sub_100004C08();
      sub_100683DF8(v111, v112);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x4000000000000000;
    case 9uLL:
      sub_100015204();
      __chkstk_darwin(v63);
      sub_1000110E8();
      v64 = sub_100004C08();
      sub_1008670A8(v64, v65);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x4000000000000004;
      return v34 | v56;
    case 0xAuLL:
      sub_100015204();
      __chkstk_darwin(v107);
      sub_1000110E8();
      v108 = sub_100004C08();
      sub_10038CC74(v108, v109);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x5000000000000000;
      return v34 | v56;
    case 0xBuLL:
      sub_100015204();
      __chkstk_darwin(v53);
      sub_1000110E8();
      v54 = sub_100004C08();
      sub_1003CBA5C(v54, v55);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x5000000000000004;
      return v34 | v56;
    case 0xCuLL:
      sub_100015204();
      __chkstk_darwin(v60);
      sub_1000110E8();
      v61 = sub_100004C08();
      sub_100655380(v61, v62);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x6000000000000000;
    case 0xDuLL:
      sub_100015204();
      __chkstk_darwin(v98);
      sub_1000110E8();
      v99 = sub_100004C08();
      sub_1003155EC(v99, v100);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x6000000000000004;
      return v34 | v56;
    case 0xEuLL:
      sub_100015204();
      __chkstk_darwin(v50);
      sub_1000110E8();
      v51 = sub_100004C08();
      sub_1005C06C4(v51, v52);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x7000000000000000;
    case 0xFuLL:
      sub_100015204();
      __chkstk_darwin(v72);
      sub_1000110E8();
      v73 = sub_100004C08();
      sub_100602F2C(v73, v74);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x7000000000000004;
      return v34 | v56;
    case 0x10uLL:
      sub_100015204();
      __chkstk_darwin(v47);
      sub_1000110E8();
      v48 = sub_100004C08();
      sub_1005D692C(v48, v49);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0x8000000000000000;
    case 0x11uLL:
      sub_100015204();
      __chkstk_darwin(v84);
      sub_1000110E8();
      v85 = sub_100004C08();
      sub_100424504(v85, v86);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x8000000000000004;
      return v34 | v56;
    case 0x12uLL:
      sub_100015204();
      __chkstk_darwin(v104);
      sub_1000110E8();
      v105 = sub_100004C08();
      sub_10079514C(v105, v106);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x9000000000000000;
      return v34 | v56;
    case 0x13uLL:
      sub_100015204();
      __chkstk_darwin(v116);
      sub_1000110E8();
      v117 = sub_100004C08();
      sub_100928898(v117, v118);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0x9000000000000004;
      return v34 | v56;
    case 0x14uLL:
      __chkstk_darwin(v45);
      v87 = v127;
      *(&v123 - 2) = v127;
      *(&v123 - 1) = a1;

      sub_1005D71C4(v88, sub_1009872D4);

      v89 = v126;
      sub_100111510(v35 + OBJC_IVAR____TtCV7Weather26LocationNoAqiConfiguration8_Storage_map, v126, type metadata accessor for LocationViewComponent);
      sub_1000161C0(v87 + 7, v87[10]);
      v90 = v125;
      sub_1001B1760(v89, v125);
      sub_100987238(v89, type metadata accessor for LocationViewComponent);
      v91 = type metadata accessor for LocationComponentContainerViewModel();
      sub_10001B350(v90, 0, 1, v91);
      sub_10026E174(v90, v124);
      type metadata accessor for NoAqiContent._Storage(0);
      swift_allocObject();
      v34 = sub_1002D3624();

      sub_10026E1E4(v90);
      sub_10001D3B4();
      v56 = 0xA000000000000000;
      return v34 | v56;
    case 0x15uLL:
      sub_100015204();
      __chkstk_darwin(v95);
      sub_1000110E8();
      v96 = sub_100004C08();
      sub_1005AFF60(v96, v97);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0xA000000000000004;
      return v34 | v56;
    case 0x16uLL:
      sub_100015204();
      __chkstk_darwin(v113);
      sub_1000110E8();
      v114 = sub_100004C08();
      sub_1007AB8AC(v114, v115);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0xB000000000000000;
      return v34 | v56;
    case 0x17uLL:
      sub_100015204();
      __chkstk_darwin(v119);
      sub_1000110E8();
      v120 = sub_100004C08();
      sub_1006AB430(v120, v121);
      sub_100008CA4();

      sub_10001FE14();
      v56 = 0xB000000000000004;
      return v34 | v56;
    case 0x18uLL:
      sub_100015204();
      __chkstk_darwin(v66);
      sub_1000110E8();
      v67 = sub_100004C08();
      sub_10057D56C(v67, v68);
      sub_100008CA4();

      sub_10001FE14();
      return v34 | 0xC000000000000000;
    case 0x19uLL:
      v34 = 0xC000000000000004;
      goto LABEL_20;
    default:
      sub_100015204();
      __chkstk_darwin(v46);
      sub_1000110E8();
      sub_10056835C();
      sub_100008CA4();

LABEL_20:
      sub_10001D3B4();
      break;
  }

  return v34;
}

uint64_t sub_100987238(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_1009872D8()
{
  v1 = OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100987374(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController_fetchSchedules] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugNotificationFetchSchedulesViewController();
  return objc_msgSendSuper2(&v3, "initWithStyle:", 2);
}

void sub_1009873C4()
{
  *(v0 + OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10098743C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugNotificationFetchSchedulesViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    sub_1003C1790(0x6353206863746546, 0xEF73656C75646568, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100987598(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v3 - 8);
  v81 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v76 - v6;
  __chkstk_darwin(v7);
  v9 = &v76 - v8;
  v10 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FetchScheduleEntity();
  sub_1000037C4();
  v83 = v17;
  v84 = v16;
  __chkstk_darwin(v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [a1 dequeueReusableCellWithIdentifier:v20 forIndexPath:isa];

  v23 = *(v1 + OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController_fetchSchedules);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *(v23 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v80 = v22;
  (*(v83 + 16))(v19, v23 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * result, v84);
  static UIListContentConfiguration.subtitleCell()();
  v85 = 91;
  v86 = 0xE100000000000000;
  FetchScheduleEntity.valid.getter();
  dispatch thunk of Column.value.getter();

  if (v89 == 2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v78 = v12;
  v79 = v10;
  if (v89)
  {
    v25 = 0x64696C6156;
  }

  else
  {
    v25 = 0x64696C61766E49;
  }

  if (v89)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  FetchScheduleEntity.id.getter();
  dispatch thunk of Column.value.getter();

  if (v90)
  {
    v29 = v89;
  }

  else
  {
    v29 = 0xD000000000000014;
  }

  v77 = 0x8000000100ABCAE0;
  if (v90)
  {
    v30 = v90;
  }

  else
  {
    v30 = 0x8000000100ABCAE0;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  UIListContentConfiguration.text.setter();
  v32 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v32(&v85, 0);
  v33 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.lineBreakMode.setter();
  v33(&v85, 0);
  v85 = 0;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v34._countAndFlagsBits = 0x3A64657461657243;
  v34._object = 0xE900000000000020;
  String.append(_:)(v34);
  v35 = v1;
  v36 = sub_1009872D8();
  FetchScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  v37 = type metadata accessor for Date();
  result = sub_100005404(v9);
  if (v38)
  {
    goto LABEL_29;
  }

  v39 = Date._bridgeToObjectiveC()().super.isa;
  v40 = *(*(v37 - 8) + 8);
  v40(v9, v37);
  v41 = [v36 stringFromDate:v39];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x696669646F4D0A20;
  v46._object = 0xEC000000203A6465;
  String.append(_:)(v46);
  v47 = OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter;
  v48 = *(v35 + OBJC_IVAR____TtC7Weather45DebugNotificationFetchSchedulesViewController____lazy_storage___dateFormatter);
  FetchScheduleEntity.modified.getter();
  v49 = v82;
  dispatch thunk of Column.value.getter();
  result = sub_100005404(v49);
  if (v38)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v51 = v49;
  v52 = v50.super.isa;
  v40(v51, v37);
  v53 = [v48 stringFromDate:v52];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57._countAndFlagsBits = v54;
  v57._object = v56;
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x7564656863530A20;
  v58._object = 0xED0000203A64656CLL;
  String.append(_:)(v58);
  v59 = *(v35 + v47);
  FetchScheduleEntity.date.getter();
  v60 = v81;
  dispatch thunk of Column.value.getter();
  result = sub_100005404(v60);
  if (v38)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v61 = Date._bridgeToObjectiveC()().super.isa;
  v40(v60, v37);
  v62 = [v59 stringFromDate:v61];

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66._countAndFlagsBits = v63;
  v66._object = v65;
  String.append(_:)(v66);

  v67._countAndFlagsBits = 0xD000000000000010;
  v67._object = 0x8000000100AC4760;
  String.append(_:)(v67);
  FetchScheduleEntity.subscription.getter();
  dispatch thunk of Column.value.getter();

  if (v90)
  {
    v68 = v89;
  }

  else
  {
    v68 = 0xD000000000000014;
  }

  if (v90)
  {
    v69 = v90;
  }

  else
  {
    v69 = v77;
  }

  v70 = v69;
  String.append(_:)(*&v68);

  UIListContentConfiguration.secondaryText.setter();
  v71 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v71(&v85, 0);
  v72 = v79;
  v87 = v79;
  v88 = &protocol witness table for UIListContentConfiguration;
  v73 = sub_100042FB0(&v85);
  v74 = v78;
  (*(v78 + 16))(v73, v15, v72);
  v75 = v80;
  UITableViewCell.contentConfiguration.setter();
  [v75 setSelectionStyle:0];
  (*(v74 + 8))(v15, v72);
  (*(v83 + 8))(v19, v84);
  return v75;
}

id sub_100987EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugNotificationFetchSchedulesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for WeatherMenuCommands.WeatherMapOverlayKindMapping(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100988070()
{
  result = qword_100CE9188;
  if (!qword_100CE9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9188);
  }

  return result;
}

void sub_1009880C4()
{
  sub_10000C778();
  v2 = v1;
  swift_beginAccess();
  memcpy(v14, (v0 + 16), 0x69uLL);
  v3 = v14[0];
  v4 = v14[1];
  v6 = v14[2];
  v5 = v14[3];
  if (LOBYTE(v14[13]))
  {
    if (LOBYTE(v14[13]) == 1)
    {
      *v2 = v14[1];
      v2[1] = v6;
      v2[2] = v5;
      memcpy(v2 + 3, (v0 + 48), 0x48uLL);
      sub_1000302D8(v14, v13, &qword_100CA4960);
    }

    else
    {
      *v2 = v14[0];
      v2[1] = v4;
      v2[2] = v6;
      v2[3] = v5;
      v8 = *(v0 + 64);
      *(v2 + 2) = *(v0 + 48);
      *(v2 + 3) = v8;
      v9 = *(v0 + 96);
      *(v2 + 4) = *(v0 + 80);
      *(v2 + 5) = v9;
      sub_1000302D8(v14, v13, &qword_100CA4960);
    }
  }

  else
  {
    v7 = sub_1000302D8(v14, v13, &qword_100CA4960);
    v3(&v11, v7);
    v6(&v11);

    memcpy(__dst, v2, sizeof(__dst));
    memcpy(v13, (v0 + 16), 0x69uLL);
    *(v0 + 16) = v11;
    memcpy((v0 + 24), v2, 0x60uLL);
    *(v0 + 120) = 1;
    sub_10029C25C(__dst, v10);
    sub_1000180EC(v13, &qword_100CA4960);
  }

  sub_10000536C();
}

void sub_100988268()
{
  sub_10000C778();
  sub_100037EDC();
  sub_10003BC6C();
  sub_100006C90();
  __chkstk_darwin(v1);
  sub_100008064();
  __chkstk_darwin(v2);
  sub_10001D3DC();
  sub_100069CDC();
  sub_100052210();
  v3 = sub_100030700();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_10022C350(&qword_100CA4A30);
      sub_100024C98(*(v4 + 48));
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_100020D54();
    v5();
    v6 = sub_1000301AC();
    v0(v6);

    sub_10022C350(&qword_100CA4A30);
    sub_10003A488();
    sub_100025498(v7);
    sub_100018074();
    v8 = sub_10003203C();
    sub_1000C890C(v8, v9, &qword_100CA4A20);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_1009883E0()
{
  sub_10000C778();
  sub_100037EDC();
  sub_10003BC6C();
  sub_100006C90();
  __chkstk_darwin(v1);
  sub_100008064();
  __chkstk_darwin(v2);
  sub_10001D3DC();
  sub_100069CDC();
  sub_100052210();
  v3 = sub_100030700();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_10022C350(&qword_100CA48F0);
      sub_100024C98(*(v4 + 48));
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_100020D54();
    v5();
    v6 = sub_1000301AC();
    v0(v6);

    sub_10022C350(&qword_100CA48F0);
    sub_10003A488();
    sub_100025498(v7);
    sub_100018074();
    v8 = sub_10003203C();
    sub_1000C890C(v8, v9, &qword_100CA48D8);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100988558()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for ListInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4C48);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4C48);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4C28);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100988718()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for HomeAndWorkRefinementInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4DE8);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4DE8);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4DC8);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_1009888D8()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for MoonDetailInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4940);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4940);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4920);
    swift_endAccess();
  }

  sub_10000536C();
}

id sub_100988A98()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (*(v0 + 57))
  {
    if (*(v0 + 57) == 1)
    {
      return *(v0 + 40);
    }

    else
    {
      return v1;
    }
  }

  else
  {

    (v1)(v19, v4);
    v2(v21, v19);

    v5 = v19[1];
    v6 = v20;
    v7 = v21[0];
    v8 = v21[1];
    v9 = v22;
    v10 = *(v0 + 16);
    v18 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    *(v0 + 16) = v19[0];
    *(v0 + 24) = v5;
    *(v0 + 32) = v6;
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    v14 = *(v0 + 56);
    *(v0 + 56) = v9;
    v15 = *(v0 + 57);
    *(v0 + 57) = 1;
    v16 = v7;
    sub_10026B820(v10, v18, v11, v12, v13, v14, v15);
  }

  return v16;
}

void sub_100988BE0()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for LocationPreviewInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4AB0);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4AB0);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4A90);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100988DA0()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for ConditionDetailInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4998);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4998);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4978);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100988F60()
{
  sub_10000C778();
  sub_100037EDC();
  sub_10003BC6C();
  sub_100006C90();
  __chkstk_darwin(v2);
  sub_100008064();
  __chkstk_darwin(v3);
  sub_10001D3DC();
  sub_100069CDC();
  sub_100052210();
  v4 = sub_100030700();
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_10022C350(&qword_100CA49D0);
      sub_100024C98(*(v5 + 48));
      v6 = v0[1];
      v14[0] = *v0;
      v14[1] = v6;
      *v15 = v0[2];
      *&v15[10] = *(v0 + 42);
      sub_10026AED4(v14);
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    v7 = *(v0 + 2);
    (*v0)(v12);
    v7(v12);

    v8 = *(sub_10022C350(&qword_100CA49D0) + 48);
    *(v1 + 42) = *&v13[10];
    v9 = v12[1];
    *v1 = v12[0];
    v1[1] = v9;
    v1[2] = *v13;
    sub_100025498(v8);
    sub_100018074();
    v10 = sub_100017BD8();
    sub_1000C890C(v10, v11, &qword_100CA49B0);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100989124()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for DayPickerInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4A08);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4A08);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA49E8);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_1009892E4()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for NotificationsOptInInput();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_10003BC6C();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = v24 - v12 + 41;
  v14 = *(*v1 + 120);
  swift_beginAccess();
  sub_1000302D8(v1 + v14, v13, &qword_100CA4C88);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10022C350(&qword_100CA4CA0);
      sub_100041C64();
    }
  }

  else
  {
    v16 = *(v13 + 2);
    (*v13)();
    v16(v24, v6);

    v17 = v10 + *(sub_10022C350(&qword_100CA4CA0) + 48);
    sub_100098494(v6, v10, type metadata accessor for NotificationsOptInInput);
    v18 = v24[1];
    v19 = v24[2];
    v20 = v26;
    v21 = v25;
    v22 = v27;
    *v17 = v24[0];
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 5) = v20;
    *(v17 + 3) = v21;
    *(v17 + 6) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100017BD8();
    sub_10053347C(v10, v1 + v14, &qword_100CA4C88);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_10098959C()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for WeatherMenuInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4A68);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4A68);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4A48);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_10098975C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      LOBYTE(v0) = *(v0 + 16);
    }

    else
    {
      v0 = *(v0 + 16);
    }
  }

  else
  {
    v3 = *(v0 + 32);

    v5 = v2(v4);
    v3(&v12, v5);

    LOBYTE(v0) = v12;
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    *(v1 + 16) = v12;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    v10 = *(v1 + 48);
    *(v1 + 48) = 1;
    sub_10026B12C(v6, v7, v8, v9, v10);
  }

  return v0 & 1;
}

void sub_100989840()
{
  sub_10000C778();
  sub_100037EDC();
  sub_10003BC6C();
  sub_100006C90();
  __chkstk_darwin(v1);
  sub_100008064();
  __chkstk_darwin(v2);
  sub_10001D3DC();
  sub_100069CDC();
  sub_100052210();
  v3 = sub_100030700();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_10022C350(&qword_100CA4C70);
      sub_100024C98(*(v4 + 48));
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_100020D54();
    v5();
    v6 = sub_1000301AC();
    v0(v6);

    sub_10022C350(&qword_100CA4C70);
    sub_10003A488();
    sub_100025498(v7);
    sub_100018074();
    v8 = sub_10003203C();
    sub_1000C890C(v8, v9, &qword_100CA4C60);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_1009899B8()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for InteractiveMapInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4AE8);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4AE8);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4AC8);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100989B78()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for MoonScrubberInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4D30);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4D30);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4D10);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100989D38()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(v1);
  v3 = sub_100003810(HourPrecipitationDetailInput);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4B20);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4B20);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4B00);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_100989EF8()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for AveragesDetailInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4CF8);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4CF8);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4CD8);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_10098A0B8()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for NotificationSettingsInput();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10022C350(&qword_100CA4E00);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003C38();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_10001D3DC();
  v15 = *(v14 + 120);
  swift_beginAccess();
  sub_1000302D8(v0 + v15, v0, &qword_100CA4E00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = sub_10022C350(&qword_100CA4E20);
      memcpy(v3, v0 + *(v17 + 48), 0x61uLL);
      sub_100041C64();
    }

    else
    {
      memcpy(v3, v0, 0x61uLL);
    }
  }

  else
  {
    v19 = v0[2];
    (*v0)(EnumCaseMultiPayload);
    v19(v8);

    v18 = *(sub_10022C350(&qword_100CA4E20) + 48);
    sub_100098494(v8, v12, type metadata accessor for NotificationSettingsInput);
    memcpy(v21, v3, 0x61uLL);
    memcpy((v12 + v18), v3, 0x61uLL);
    swift_storeEnumTagMultiPayload();
    sub_100017BD8();
    sub_10026BA8C(v21, &v20);
    sub_10053347C(v12, v1 + v15, &qword_100CA4E00);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_10098A320()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for SunriseSunsetDetailInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4D68);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4D68);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4D48);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_10098A4E0()
{
  sub_10000C778();
  sub_1000753E4();
  v1 = type metadata accessor for MoonCalendarInput();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4DB0);
      sub_100024C98(*(v6 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v7();
    v8 = sub_100028ED4();
    v0(v8);

    sub_10022C350(&qword_100CA4DB0);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v9 = sub_100049FC4();
    sub_1000217D8(v9, v10, &qword_100CA4D90);
    swift_endAccess();
  }

  sub_10000536C();
}

void sub_10098A6A0()
{
  sub_10000C778();
  v27 = v0;
  v2 = v1;
  v28 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v26 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v24 = v6 - v5;
  v7 = type metadata accessor for WeatherMenuViewModel();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_10022C350(&qword_100CB6198);
  sub_100006C90();
  __chkstk_darwin(v12);
  sub_100003C38();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  v25 = type metadata accessor for WeatherMenuCommands();
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.preferredTemperatureUnit.getter();

  sub_1000302D8(v18, v15, &qword_100CB6198);
  State.init(wrappedValue:)();
  sub_1000180EC(v18, &qword_100CB6198);

  sub_10022C350(&qword_100CA4A70);
  sub_100006F64(&qword_100CA4A78, &qword_100CA4A70);
  *v2 = ObservedObject.init(wrappedValue:)();
  v2[1] = v19;
  v20 = v27;
  sub_100035B30(v27, (v2 + 2));
  sub_10098959C();
  v21 = v24;
  (*(v26 + 16))(v24, v11 + *(v8 + 40), v28);
  sub_100109620(v11, type metadata accessor for WeatherMenuViewModel);
  LOBYTE(v21) = sub_10098A954(v21);

  sub_100006F14(v20);
  v22 = v2 + *(v25 + 28);
  *v22 = v21;
  *(v22 + 1) = 0;
  sub_10000536C();
}

uint64_t sub_10098A954(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayKind();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for WeatherMapOverlayKind.precipitation(_:))
  {
    if (v7 == enum case for WeatherMapOverlayKind.airQuality(_:))
    {
      v8 = 2;
      goto LABEL_9;
    }

    if (v7 == enum case for WeatherMapOverlayKind.temperature(_:))
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v7 == LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
    {
      v8 = 3;
      goto LABEL_9;
    }
  }

  (*(v3 + 8))(v6, v2);
  v8 = 0;
LABEL_9:
  (*(v3 + 8))(a1, v2);
  return v8;
}

uint64_t sub_10098AAD8()
{
  v1 = type metadata accessor for WeatherMenuCommands();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100099AEC(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_100098494(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for WeatherMenuCommands);
  sub_100099AEC(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_100098494(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5, type metadata accessor for WeatherMenuCommands);
  sub_10000F868();
  Binding.init(get:set:)();
  return v10[1];
}

id sub_10098ACAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  type metadata accessor for WeatherMenuCommands();
  sub_10022C350(&qword_100CD5528);
  State.wrappedValue.getter();
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v6 = UnitManager.temperature.getter();

LABEL_8:
    *a1 = v6;
    return result;
  }

  v8 = (*(*(v5 - 8) + 88))(v4, v5);
  if (v8 == enum case for UnitConfiguration.Temperature.fahrenheit(_:))
  {
    v9 = [objc_opt_self() fahrenheit];
LABEL_7:
    result = v9;
    v6 = result;
    goto LABEL_8;
  }

  if (v8 == enum case for UnitConfiguration.Temperature.celsius(_:))
  {
    v9 = [objc_opt_self() celsius];
    goto LABEL_7;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10098AE9C()
{
  sub_10000C778();
  v1 = v0;
  v108 = v2;
  v107 = sub_10022C350(&qword_100CE9190);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v106 = v4;
  v105 = sub_10022C350(&qword_100CE9198);
  sub_1000037C4();
  v95 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v94 = v7;
  v8 = sub_10022C350(&qword_100CE91A0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v119 = v10;
  v133 = sub_10022C350(&qword_100CE91A8);
  sub_1000037C4();
  v121 = v11;
  __chkstk_darwin(v12);
  sub_100003C38();
  v117 = v13 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v120 = v16;
  v127 = sub_10022C350(&qword_100CE91B0);
  sub_1000037C4();
  v118 = v17;
  __chkstk_darwin(v18);
  sub_100003C38();
  v130 = v19 - v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v132 = v22;
  v131 = sub_10022C350(&qword_100CE91B8);
  sub_1000037C4();
  v116 = v23;
  __chkstk_darwin(v24);
  sub_100003C38();
  v126 = v25 - v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v129 = v28;
  v128 = sub_10022C350(&qword_100CE91C0);
  sub_1000037C4();
  v115 = v29;
  __chkstk_darwin(v30);
  sub_100003C38();
  v124 = v31 - v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v125 = v34;
  v114 = sub_10022C350(&qword_100CE91C8);
  sub_1000037C4();
  v113 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v123 = v37;
  v38 = type metadata accessor for CommandGroupPlacement();
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_1000037D8();
  v122 = sub_10022C350(&qword_100CE91D0);
  sub_1000037C4();
  v112 = v40;
  __chkstk_darwin(v41);
  sub_100003C38();
  v109 = v42 - v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v110 = &v94 - v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = &v94 - v47;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24E0 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v49 = v134;
  v50 = static CommandGroupPlacement.saveItem.getter();
  __chkstk_darwin(v50);
  *(&v94 - 2) = v0;
  *(&v94 - 8) = v49;
  v104 = sub_10022C350(&qword_100CE91D8);
  sub_100006F64(&qword_100CE91E0, &qword_100CE91D8);
  v111 = v48;
  CommandGroup.init(before:addition:)();
  static CommandGroupPlacement.pasteboard.getter();
  sub_100071F14();
  __chkstk_darwin(v51);
  *(&v94 - 2) = v0;
  *(&v94 - 8) = v49;
  sub_10022C350(&qword_100CE91E8);
  sub_100006F64(&qword_100CE91F0, &qword_100CE91E8);
  CommandGroup.init(after:addition:)();
  sub_1000D4398();
  sub_100071F14();
  __chkstk_darwin(v52);
  sub_100013F84();
  sub_1000373B8();
  sub_1000D4064(&qword_100CE9200);
  sub_100020428();
  sub_1000D4398();
  sub_100071F14();
  __chkstk_darwin(v53);
  sub_100013F84();
  sub_1000373B8();
  sub_1000D4064(&qword_100CE9210);
  sub_100020428();
  sub_1000D4398();
  sub_100071F14();
  __chkstk_darwin(v54);
  sub_100013F84();
  sub_1000373B8();
  sub_1000D4064(&qword_100CE9220);
  sub_100020428();
  v55 = sub_1000D4398();
  __chkstk_darwin(v55);
  *(&v94 - 2) = v0;
  *(&v94 - 8) = v49;
  v56 = v110;
  CommandGroup.init(before:addition:)();
  static CommandGroupPlacement.sidebar.getter();
  sub_100071F14();
  __chkstk_darwin(v57);
  sub_100013F84();
  sub_10022C350(&qword_100CE9228);
  sub_100006F64(&qword_100CE9230, &qword_100CE9228);
  v58 = v120;
  CommandGroup.init(before:addition:)();
  v59 = *(v115 + 16);
  v104 = v115 + 16;
  v103 = v59;
  v59(v124, v125, v128);
  v60 = *(v116 + 16);
  v102 = v116 + 16;
  v101 = v60;
  v60(v126, v129, v131);
  v61 = *(v118 + 16);
  v100 = v118 + 16;
  v99 = v61;
  v61(v130, v132, v127);
  v98 = *(v112 + 16);
  v98(v109, v56, v122);
  v62 = *(v121 + 16);
  v97 = v121 + 16;
  v96 = v62;
  v62(v117, v58, v133);
  type metadata accessor for Capabilities();
  v63 = static Capabilities.isInternalBuild()();
  if (v63)
  {
    __chkstk_darwin(v63);
    *(&v94 - 2) = v1;
    sub_10022C350(&qword_100CE9238);
    v64 = sub_10022E824(&qword_100CA5528);
    v65 = sub_100006F64(&qword_100CA5548, &qword_100CA5528);
    v134 = v64;
    v135 = v65;
    swift_getOpaqueTypeConformance2();
    v66 = v94;
    CommandMenu.init(_:content:)();
    v67 = v119;
    v68 = v66;
    v69 = v105;
    (*(v95 + 32))(v119, v68, v105);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v67 = v119;
    v69 = v105;
  }

  sub_10001B350(v67, v70, 1, v69);
  v71 = v107[12];
  v72 = v107[16];
  v73 = v107[20];
  v74 = v107[24];
  v75 = v107[28];
  v95 = v107[32];
  v105 = v107[36];
  v76 = v106;
  v77 = v122;
  v78 = v98;
  v98(v106, v111, v122);
  (*(v113 + 16))(v76 + v71, v123, v114);
  v103(v76 + v72, v124, v128);
  v101(v76 + v73, v126, v131);
  v79 = v76 + v74;
  v80 = v127;
  v99(v79, v130, v127);
  v81 = v76 + v75;
  v82 = v109;
  v83 = v77;
  v78(v81, v109, v77);
  v84 = v117;
  v85 = v133;
  v96(v76 + v95, v117, v133);
  v86 = v119;
  sub_1000302D8(v119, v76 + v105, &qword_100CE91A0);
  TupleCommandContent.init(_:)();
  sub_1000180EC(v86, &qword_100CE91A0);
  v87 = *(v121 + 8);
  v87(v84, v85);
  v121 = *(v112 + 8);
  (v121)(v82, v83);
  v119 = *(v118 + 8);
  v119(v130, v80);
  v88 = *(v116 + 8);
  v89 = v131;
  v88(v126, v131);
  v90 = *(v115 + 8);
  v91 = v128;
  v90(v124, v128);
  v87(v120, v133);
  v93 = v121;
  v92 = v122;
  (v121)(v110, v122);
  v119(v132, v127);
  v88(v129, v89);
  v90(v125, v91);
  (*(v113 + 8))(v123, v114);
  v93(v111, v92);
  sub_10000536C();
}

uint64_t sub_10098BCD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v56) = a2;
  v63 = a3;
  v61 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v61);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KeyEquivalent();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherMenuCommands();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8 - 8);
  v51 = sub_10022C350(&qword_100CE9250);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = &v48 - v10;
  v12 = sub_10022C350(&qword_100CE9258);
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v50 = sub_10022C350(&qword_100CE92B0);
  __chkstk_darwin(v50);
  v59 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  __chkstk_darwin(v19);
  v52 = &v48 - v20;
  v53 = type metadata accessor for Divider();
  v21 = *(v53 - 8);
  __chkstk_darwin(v53);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v48 - v25;
  Divider.init()();
  v62 = a1;
  sub_100099AEC(a1, &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v28 = swift_allocObject();
  sub_100098494(&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for WeatherMenuCommands);
  v64 = v56;
  sub_10022C350(&qword_100CA2D20);
  sub_1009933F4();
  Button.init(action:label:)();
  v56 = v7;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_10022C350(&qword_100CE9288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v30 = static EventModifiers.shift.getter();
  *(inited + 32) = v30;
  v31 = static EventModifiers.command.getter();
  *(inited + 40) = v31;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v30)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v31)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100006F64(&qword_100CE9278, &qword_100CE9250);
  v32 = v14;
  v33 = v56;
  v34 = v51;
  View.keyboardShortcut(_:modifiers:)();
  (*(v57 + 8))(v33, v58);
  (*(v49 + 8))(v11, v34);
  v35 = v60;
  sub_10098959C();
  LOBYTE(v33) = *(v35 + *(v61 + 48));
  sub_100109620(v35, type metadata accessor for WeatherMenuViewModel);
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = (v33 & 1) == 0;
  (*(v54 + 32))(v18, v32, v55);
  v38 = &v18[*(v50 + 36)];
  *v38 = KeyPath;
  v38[1] = sub_100993CA8;
  v38[2] = v37;
  v39 = v52;
  sub_10011C0F0(v18, v52, &qword_100CE92B0);
  v40 = v21;
  v41 = *(v21 + 16);
  v42 = v53;
  v41(v23, v26, v53);
  v43 = v59;
  sub_1000302D8(v39, v59, &qword_100CE92B0);
  v44 = v63;
  v41(v63, v23, v42);
  v45 = sub_10022C350(&qword_100CE92B8);
  sub_1000302D8(v43, &v44[*(v45 + 48)], &qword_100CE92B0);
  sub_1000180EC(v39, &qword_100CE92B0);
  v46 = *(v40 + 8);
  v46(v26, v42);
  sub_1000180EC(v43, &qword_100CE92B0);
  return (v46)(v23, v42);
}

uint64_t sub_10098C478(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for WeatherMenuViewModel();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_1000161C0((a1 + 16), *(a1 + 40));
  sub_10098959C();
  sub_1000302D8(v11, v4, &qword_100CA65C8);
  sub_100109620(v11, type metadata accessor for WeatherMenuViewModel);
  sub_10098959C();
  LOBYTE(v6) = v8[*(v6 + 28)];
  sub_100109620(v8, type metadata accessor for WeatherMenuViewModel);
  sub_1007899C8(v4, v6);
  return sub_1000180EC(v4, &qword_100CA65C8);
}

uint64_t sub_10098C604@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA2CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100AE8490;
  v9._object = 0x8000000100AE8470;
  v14._countAndFlagsBits = 0xD000000000000049;
  v9._countAndFlagsBits = 0xD000000000000014;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v14);

  v13 = v11;
  sub_10002D5A4();
  Label<>.init<A>(_:systemImage:)();
  sub_10098C7B0(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10098C7B0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = type metadata accessor for TitleOnlyLabelStyle();
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CE9298);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v29 - v5;
  v32 = sub_10022C350(&qword_100CE92A0);
  __chkstk_darwin(v32);
  v8 = &v29 - v7;
  v9 = type metadata accessor for TitleAndIconLabelStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022C350(&qword_100CE92A8);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v29 - v14;
  if (a1)
  {
    TitleAndIconLabelStyle.init()();
    v16 = sub_10022C350(&qword_100CA2CF0);
    v17 = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
    v18 = sub_1009939D4(&qword_100CE9268, &type metadata accessor for TitleAndIconLabelStyle);
    View.labelStyle<A>(_:)();
    (*(v10 + 8))(v12, v9);
    v19 = v33;
    (*(v13 + 16))(v8, v15, v33);
    swift_storeEnumTagMultiPayload();
    v37 = v16;
    v38 = v9;
    v39 = v17;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    v20 = sub_1009939D4(&qword_100CE9270, &type metadata accessor for TitleOnlyLabelStyle);
    v37 = v16;
    v38 = v34;
    v39 = v17;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    TitleOnlyLabelStyle.init()();
    v22 = sub_10022C350(&qword_100CA2CF0);
    v23 = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
    v24 = sub_1009939D4(&qword_100CE9270, &type metadata accessor for TitleOnlyLabelStyle);
    v25 = v34;
    View.labelStyle<A>(_:)();
    (*(v30 + 8))(v4, v25);
    v26 = v31;
    v27 = v35;
    (*(v31 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1009939D4(&qword_100CE9268, &type metadata accessor for TitleAndIconLabelStyle);
    v37 = v22;
    v38 = v9;
    v39 = v23;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    v37 = v22;
    v38 = v25;
    v39 = v23;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v26 + 8))(v6, v27);
  }
}

uint64_t sub_10098CD9C@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v47 = a2;
  v55 = a3;
  v4 = type metadata accessor for KeyEquivalent();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherMenuCommands();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10022C350(&qword_100CE9250);
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v52 = sub_10022C350(&qword_100CE9258);
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v43 = type metadata accessor for Divider();
  v18 = *(v43 - 8);
  __chkstk_darwin(v43);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  Divider.init()();
  sub_100099AEC(a1, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  v24 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v25 = swift_allocObject();
  sub_100098494(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for WeatherMenuCommands);
  v56 = v47;
  sub_10022C350(&qword_100CA2D20);
  sub_1009933F4();
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v26 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v26)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100006F64(&qword_100CE9278, &qword_100CE9250);
  v44 = v17;
  v27 = v50;
  View.keyboardShortcut(_:modifiers:)();
  (*(v54 + 8))(v7, v53);
  (*(v51 + 8))(v13, v27);
  v28 = v18;
  v29 = *(v18 + 16);
  v30 = v20;
  v45 = v23;
  v31 = v23;
  v32 = v43;
  v29(v20, v31, v43);
  v33 = v48;
  v34 = v49;
  v54 = *(v48 + 16);
  v35 = v17;
  v36 = v52;
  (v54)(v49, v35, v52);
  v37 = v55;
  v29(v55, v30, v32);
  v38 = sub_10022C350(&qword_100CE9398);
  (v54)(&v37[*(v38 + 48)], v34, v36);
  v39 = *(v33 + 8);
  v39(v44, v36);
  v40 = *(v28 + 8);
  v40(v45, v32);
  v39(v34, v36);
  return (v40)(v30, v32);
}

uint64_t sub_10098D384@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10098D3CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v48 = a1;
  v62 = a3;
  v61 = type metadata accessor for Divider();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v47 - v6;
  v7 = type metadata accessor for WeatherMenuCommands();
  v57 = *(v7 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v58);
  v51 = &v47 - v9;
  v10 = type metadata accessor for InlinePickerStyle();
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CE9340);
  v49 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v52 = sub_10022C350(&qword_100CE9348);
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v17 = &v47 - v16;
  v54 = sub_10022C350(&qword_100CE9350);
  v65 = *(v54 - 8);
  __chkstk_darwin(v54);
  v64 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v47 - v20;
  v72 = sub_10098AAD8();
  v73 = v21;
  v74 = v22;
  LocalizedStringKey.init(stringLiteral:)();
  v68 = Text.init(_:tableName:bundle:comment:)();
  v69 = v23;
  LOBYTE(v70) = v24 & 1;
  v71 = v25;
  v67 = a2;
  sub_10000F868();
  sub_10022C350(&qword_100CE9358);
  sub_1009939D4(&qword_100CE9360, sub_10000F868);
  sub_100006F64(&qword_100CE9368, &qword_100CE9358);
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  v26 = sub_100006F64(&qword_100CE9370, &qword_100CE9340);
  View.pickerStyle<A>(_:)();
  (*(v50 + 8))(v12, v10);
  (*(v49 + 8))(v15, v13);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v27 = v51;
  UnitManager.preferredTemperatureUnit.getter();

  v28 = v53;
  sub_100099AEC(v48, v53, type metadata accessor for WeatherMenuCommands);
  v29 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v30 = swift_allocObject();
  sub_100098494(v28, v30 + v29, type metadata accessor for WeatherMenuCommands);
  v68 = v13;
  v69 = v10;
  v70 = v26;
  v71 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_100993920();
  v31 = v63;
  v32 = v52;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v27, &qword_100CB6198);
  (*(v55 + 8))(v17, v32);
  v33 = v66;
  Divider.init()();
  v34 = v64;
  v35 = *(v65 + 16);
  v36 = v54;
  v35(v64, v31, v54);
  v38 = v59;
  v37 = v60;
  v39 = *(v59 + 16);
  v40 = v33;
  v41 = v61;
  v39(v60, v40, v61);
  v42 = v62;
  v35(v62, v34, v36);
  v43 = sub_10022C350(&qword_100CE9380);
  v39(&v42[*(v43 + 48)], v37, v41);
  v44 = *(v38 + 8);
  v44(v66, v41);
  v45 = *(v65 + 8);
  v45(v63, v36);
  v44(v37, v41);
  return (v45)(v64, v36);
}

uint64_t sub_10098DC24@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v2 = a1;
  v48 = a1;
  v53 = a2;
  v49 = sub_10022C350(&qword_100CA2CF0);
  v55 = *(v49 - 8);
  __chkstk_darwin(v49);
  v4 = v47 - v3;
  v5 = sub_10022C350(&qword_100CA2D20);
  __chkstk_darwin(v5 - 8);
  v7 = v47 - v6;
  v8 = sub_10022C350(&qword_100CE9388);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = v47 - v12;
  __chkstk_darwin(v13);
  v50 = v47 - v14;
  __chkstk_darwin(v15);
  v54 = v47 - v16;
  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v57._object = 0x8000000100AC2DB0;
  v19._countAndFlagsBits = 0x65686E6572686146;
  v57._countAndFlagsBits = 0xD000000000000031;
  v19._object = 0xEA00000000007469;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v57);

  v56 = v21;
  v47[1] = sub_10002D5A4();
  Label<>.init<A>(_:systemImage:)();
  v22 = v7;
  sub_10098C7B0(v2, v7);
  v23 = *(v55 + 8);
  v55 += 8;
  v47[0] = v23;
  v24 = v49;
  v23(v4, v49);
  v25 = objc_opt_self();
  v26 = [v25 fahrenheit];
  v27 = v22;
  v28 = v22;
  v29 = v54;
  sub_10011C0F0(v27, v54, &qword_100CA2D20);
  v30 = sub_10022C350(&qword_100CA2D28);
  v31 = v29 + *(v30 + 36);
  *v31 = v26;
  *(v31 + 8) = 1;
  v32 = [v17 mainBundle];
  v58._object = 0x8000000100AC2E70;
  v33._countAndFlagsBits = 0x737569736C6543;
  v58._countAndFlagsBits = 0xD00000000000002ELL;
  v33._object = 0xE700000000000000;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v58);

  v56 = v35;
  Label<>.init<A>(_:systemImage:)();
  sub_10098C7B0(v48, v28);
  (v47[0])(v4, v24);
  v36 = [v25 celsius];
  v37 = v50;
  sub_10011C0F0(v28, v50, &qword_100CA2D20);
  v38 = v37 + *(v30 + 36);
  *v38 = v36;
  *(v38 + 8) = 1;
  v39 = *(v9 + 16);
  v40 = v51;
  v41 = v54;
  v39(v51, v54, v8);
  v42 = v52;
  v39(v52, v37, v8);
  v43 = v53;
  v39(v53, v40, v8);
  v44 = sub_10022C350(&qword_100CE9390);
  v39(&v43[*(v44 + 48)], v42, v8);
  v45 = *(v9 + 8);
  v45(v37, v8);
  v45(v41, v8);
  v45(v42, v8);
  return (v45)(v40, v8);
}

uint64_t sub_10098E1B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccessibilityNotification.Announcement();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAF7C0);
  __chkstk_darwin(v5 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v41 - v8;
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v41 - v14;
  v15 = type metadata accessor for UnitConfiguration.Temperature();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  type metadata accessor for WeatherMenuCommands();
  sub_1000302D8(a2, v24, &qword_100CB6198);
  sub_10022C350(&qword_100CD5528);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  if (sub_100024D10(v21, 1, v15))
  {
    return sub_1000180EC(v21, &qword_100CB6198);
  }

  (*(v16 + 16))(v18, v21, v15);
  sub_1000180EC(v21, &qword_100CB6198);
  v26 = UnitConfiguration.Temperature.description.getter();
  v28 = v27;
  (*(v16 + 8))(v18, v15);
  v29 = [objc_opt_self() mainBundle];
  v51._object = 0x8000000100AC2DF0;
  v30._countAndFlagsBits = 0x64657463656C6573;
  v30._object = 0xEC0000004025203ALL;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD000000000000075;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v51);

  sub_10022C350(&qword_100CA40C8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100A2C3F0;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100035744();
  *(v32 + 32) = v26;
  *(v32 + 40) = v28;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  v33 = v43;
  AttributedString.init(_:attributes:)();
  v34 = enum case for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority.high(_:);
  v35 = type metadata accessor for AttributeScopes.AccessibilityAttributes.AnnouncementPriorityAttribute.AnnouncementPriority();
  v36 = v45;
  (*(*(v35 - 8) + 104))(v45, v34, v35);
  sub_10001B350(v36, 0, 1, v35);
  sub_1000302D8(v36, v44, &qword_100CAF7C0);
  sub_10035BE44();
  AttributedString.subscript.setter();
  sub_1000180EC(v36, &qword_100CAF7C0);
  v38 = v46;
  v37 = v47;
  (*(v46 + 16))(v42, v33, v47);
  v39 = v48;
  AccessibilityNotification.Announcement.init(_:)();
  v40 = v50;
  _AccessibilityNotifications.post()();
  (*(v49 + 8))(v39, v40);
  return (*(v38 + 8))(v33, v37);
}

uint64_t sub_10098E800@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v86 = a3;
  v5 = type metadata accessor for WeatherMenuCommands();
  v6 = v5 - 8;
  v78 = *(v5 - 8);
  v90 = *(v78 + 8);
  __chkstk_darwin(v5);
  v76 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for WeatherMapOverlayKind();
  v91 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for WeatherMenuViewModel() - 8;
  __chkstk_darwin(v92);
  v87 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for InlinePickerStyle();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10022C350(&qword_100CE92D0);
  v12 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v61 - v13;
  v73 = sub_10022C350(&qword_100CE92D8);
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v64 = &v61 - v15;
  v80 = sub_10022C350(&qword_100CE92E0);
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v89 = &v61 - v16;
  v84 = sub_10022C350(&qword_100CE92E8) - 8;
  __chkstk_darwin(v84);
  v85 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v61 - v19;
  v83 = type metadata accessor for Divider();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v61 - v22;
  Divider.init()();
  v23 = (a1 + *(v6 + 36));
  v69 = *v23;
  v68 = *(v23 + 1);
  LOBYTE(v99) = v69;
  v100 = v68;
  v67 = sub_10022C350(&qword_100CE92F0);
  State.projectedValue.getter();
  v99 = v95;
  v100 = v96;
  v101 = v97;
  LocalizedStringKey.init(stringLiteral:)();
  v95 = Text.init(_:tableName:bundle:comment:)();
  v96 = v24;
  LOBYTE(v97) = v25 & 1;
  v98 = v26;
  v93 = a2;
  v94 = a1;
  sub_10022C350(&qword_100CE92F8);
  sub_1009937A8();
  sub_100006F64(&qword_100CE9308, &qword_100CE92F8);
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  v27 = sub_100006F64(&qword_100CE9310, &qword_100CE92D0);
  v28 = v66;
  v29 = v70;
  View.pickerStyle<A>(_:)();
  (*(v71 + 8))(v11, v29);
  (*(v12 + 8))(v14, v28);
  v63 = a1;
  v71 = *(a1 + 8);
  v30 = v87;
  sub_10098959C();
  v31 = v72;
  v32 = v74;
  (*(v91 + 16))(v72, v30 + *(v92 + 40), v74);
  v65 = type metadata accessor for WeatherMenuViewModel;
  sub_100109620(v30, type metadata accessor for WeatherMenuViewModel);
  v62 = type metadata accessor for WeatherMenuCommands;
  v33 = a1;
  v34 = v76;
  sub_100099AEC(v33, v76, type metadata accessor for WeatherMenuCommands);
  v35 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v36 = swift_allocObject();
  v78 = type metadata accessor for WeatherMenuCommands;
  sub_100098494(v34, v36 + v35, type metadata accessor for WeatherMenuCommands);
  v95 = v28;
  v96 = v29;
  v97 = v27;
  v98 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_1009939D4(&qword_100CE3918, &type metadata accessor for WeatherMapOverlayKind);
  v39 = v73;
  v40 = v32;
  v41 = v64;
  View.onChange<A>(of:initial:_:)();

  (*(v91 + 8))(v31, v40);
  (*(v75 + 8))(v41, v39);
  LOBYTE(v95) = v69;
  v96 = v68;
  State.wrappedValue.getter();
  sub_100099AEC(v63, v34, v62);
  v42 = swift_allocObject();
  sub_100098494(v34, v42 + v35, v78);
  v95 = v39;
  v96 = v40;
  v97 = OpaqueTypeConformance2;
  v98 = v38;
  swift_getOpaqueTypeConformance2();
  sub_100988070();
  v44 = v88;
  v43 = v89;
  v45 = v80;
  View.onChange<A>(of:initial:_:)();

  (*(v82 + 8))(v43, v45);
  v46 = v87;
  sub_10098959C();
  LOBYTE(v43) = *(v46 + *(v92 + 36));
  sub_100109620(v46, v65);
  KeyPath = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = (v43 & 1) == 0;
  v49 = (v44 + *(v84 + 44));
  *v49 = KeyPath;
  v49[1] = sub_100993CA8;
  v49[2] = v48;
  v50 = v81;
  v51 = *(v81 + 16);
  v52 = v79;
  v53 = v77;
  v54 = v83;
  v51(v79, v77, v83);
  v55 = v44;
  v56 = v85;
  sub_1000302D8(v55, v85, &qword_100CE92E8);
  v57 = v86;
  v51(v86, v52, v54);
  v58 = sub_10022C350(&qword_100CE9318);
  sub_1000302D8(v56, &v57[*(v58 + 48)], &qword_100CE92E8);
  sub_1000180EC(v88, &qword_100CE92E8);
  v59 = *(v50 + 8);
  v59(v53, v54);
  sub_1000180EC(v56, &qword_100CE92E8);
  return (v59)(v52, v54);
}

uint64_t sub_10098F39C@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v111 = a2;
  v131 = a1;
  v117 = a3;
  v109 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v109);
  v108 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CE9320);
  __chkstk_darwin(v4 - 8);
  v116 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v115 = &v100 - v7;
  v120 = type metadata accessor for KeyEquivalent();
  v132 = *(v120 - 8);
  __chkstk_darwin(v120);
  v103 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v106 = &v100 - v10;
  __chkstk_darwin(v11);
  v105 = &v100 - v12;
  __chkstk_darwin(v13);
  v15 = &v100 - v14;
  v16 = sub_10022C350(&qword_100CA2CF0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v100 - v18;
  v121 = sub_10022C350(&qword_100CA2D20);
  __chkstk_darwin(v121);
  v21 = &v100 - v20;
  v104 = sub_10022C350(&qword_100CE9328);
  v107 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v118 = &v100 - v24;
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  __chkstk_darwin(v28);
  v30 = &v100 - v29;
  v112 = sub_10022C350(&qword_100CE9330);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v114 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v113 = &v100 - v33;
  __chkstk_darwin(v34);
  v119 = &v100 - v35;
  __chkstk_darwin(v36);
  v101 = &v100 - v37;
  __chkstk_darwin(v38);
  v130 = &v100 - v39;
  __chkstk_darwin(v40);
  v129 = &v100 - v41;
  __chkstk_darwin(v42);
  v128 = &v100 - v43;
  v125 = objc_opt_self();
  v44 = [v125 mainBundle];
  v45._countAndFlagsBits = 0xD000000000000011;
  v136._object = 0x8000000100AE82B0;
  v45._object = 0x8000000100AC1160;
  v136._countAndFlagsBits = 0xD00000000000003DLL;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v136);

  v133 = v47;
  v124 = sub_10002D5A4();
  Label<>.init<A>(_:systemImage:)();
  sub_10098C7B0(v131, v21);
  v48 = *(v17 + 8);
  v127 = v16;
  v123 = v48;
  v48(v19, v16);
  v126 = v21;
  v49 = v21;
  v50 = v15;
  sub_10011C0F0(v49, v30, &qword_100CA2D20);
  v122 = sub_10022C350(&qword_100CA2D30);
  *&v30[*(v122 + 36)] = 256;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v51 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v51)
  {
    EventModifiers.init(rawValue:)();
  }

  v52 = sub_1009933F4();
  v53 = sub_1009937A8();
  v133._countAndFlagsBits = v121;
  v133._object = &type metadata for WeatherMenuCommands.WeatherMapOverlayKindMapping;
  v134 = v52;
  v135 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v104;
  v121 = OpaqueTypeConformance2;
  View.keyboardShortcut(_:modifiers:)();
  v56 = *(v132 + 8);
  v132 += 8;
  v56(v50, v120);
  v57 = *(v107 + 8);
  v57(v30, v55);
  v58 = [v125 mainBundle];
  v137._object = 0x8000000100AE82F0;
  v59._countAndFlagsBits = 0x74617265706D6554;
  v59._object = 0xEF70614D20657275;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v137._countAndFlagsBits = 0xD00000000000003BLL;
  v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v137);

  v133 = v61;
  Label<>.init<A>(_:systemImage:)();
  v62 = v126;
  sub_10098C7B0(v131 & 1, v126);
  v123(v19, v127);
  sub_10011C0F0(v62, v27, &qword_100CA2D20);
  *&v27[*(v122 + 36)] = 257;
  v63 = v105;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v64 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v64)
  {
    EventModifiers.init(rawValue:)();
  }

  View.keyboardShortcut(_:modifiers:)();
  v65 = v120;
  v56(v63, v120);
  v57(v27, v55);
  v66 = [v125 mainBundle];
  v138._object = 0x8000000100AE8350;
  v67._countAndFlagsBits = 0x6C61755120726941;
  v67._object = 0xEF70614D20797469;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v138._countAndFlagsBits = 0xD00000000000003BLL;
  v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v138);

  v133 = v69;
  Label<>.init<A>(_:systemImage:)();
  v70 = v126;
  sub_10098C7B0(v131 & 1, v126);
  v123(v19, v127);
  v71 = v70;
  v72 = v118;
  sub_10011C0F0(v71, v118, &qword_100CA2D20);
  *(v72 + *(v122 + 36)) = 258;
  v73 = v106;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v74 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v74)
  {
    EventModifiers.init(rawValue:)();
  }

  v75 = v118;
  View.keyboardShortcut(_:modifiers:)();
  v56(v73, v65);
  v57(v75, v55);
  v76 = v108;
  sub_10098959C();
  v77 = *(v76 + *(v109 + 56));
  sub_100109620(v76, type metadata accessor for WeatherMenuViewModel);
  if (v77)
  {
    v78 = [v125 mainBundle];
    v139._countAndFlagsBits = 0xD000000000000034;
    v139._object = 0x8000000100AE8390;
    v79._countAndFlagsBits = 0x70614D20646E6957;
    v79._object = 0xE800000000000000;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v139);

    v133 = v81;
    Label<>.init<A>(_:systemImage:)();
    v82 = v126;
    sub_10098C7B0(v131 & 1, v126);
    v123(v19, v127);
    v83 = v102;
    sub_10011C0F0(v82, v102, &qword_100CA2D20);
    *(v83 + *(v122 + 36)) = 259;
    v84 = v103;
    KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
    v85 = static EventModifiers.command.getter();
    EventModifiers.init(rawValue:)();
    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v85)
    {
      EventModifiers.init(rawValue:)();
    }

    v86 = v101;
    View.keyboardShortcut(_:modifiers:)();
    v56(v84, v65);
    v57(v83, v55);
    v87 = v110;
    v88 = v115;
    v89 = v112;
    (*(v110 + 32))(v115, v86, v112);
    v90 = 0;
  }

  else
  {
    v90 = 1;
    v88 = v115;
    v87 = v110;
    v89 = v112;
  }

  sub_10001B350(v88, v90, 1, v89);
  v91 = *(v87 + 16);
  v92 = v119;
  v91(v119, v128, v89);
  v93 = v113;
  v91(v113, v129, v89);
  v94 = v114;
  v91(v114, v130, v89);
  v95 = v116;
  sub_1000302D8(v88, v116, &qword_100CE9320);
  v96 = v117;
  v91(v117, v92, v89);
  v97 = sub_10022C350(&qword_100CE9338);
  v91(&v96[v97[12]], v93, v89);
  v91(&v96[v97[16]], v94, v89);
  sub_1000302D8(v95, &v96[v97[20]], &qword_100CE9320);
  sub_1000180EC(v88, &qword_100CE9320);
  v98 = *(v87 + 8);
  v98(v130, v89);
  v98(v129, v89);
  v98(v128, v89);
  sub_1000180EC(v95, &qword_100CE9320);
  v98(v94, v89);
  v98(v93, v89);
  return (v98)(v119, v89);
}

uint64_t sub_100990274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WeatherMapOverlayKind();
  v6 = __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8, a2, v6);
  LOBYTE(a2) = sub_10098A954(v8);
  v10 = (a3 + *(type metadata accessor for WeatherMenuCommands() + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[16] = v11;
  v15 = v12;
  v14[15] = a2;
  sub_10022C350(&qword_100CE92F0);
  return State.wrappedValue.setter();
}

uint64_t sub_10099038C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for WeatherMapOverlayKind();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  sub_1000161C0((a3 + 16), *(a3 + 40));
  switch(v9)
  {
    case 1:
      v12 = &enum case for WeatherMapOverlayKind.temperature(_:);
      break;
    case 2:
      v12 = &enum case for WeatherMapOverlayKind.airQuality(_:);
      break;
    case 3:
      v12 = enum case for WeatherMapOverlayKind.wind(_:);
      break;
    default:
      v10 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
      v11 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
      (*(*(v11 - 8) + 104))(v8, v10, v11);
      v12 = &enum case for WeatherMapOverlayKind.precipitation(_:);
      break;
  }

  (*(v6 + 104))(v8, *v12, v5);
  sub_1007898B0(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10099052C@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v82) = a2;
  v89 = a3;
  v88 = sub_10022C350(&qword_100CE92C0);
  __chkstk_darwin(v88);
  v91 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = v75 - v6;
  __chkstk_darwin(v7);
  v98 = v75 - v8;
  __chkstk_darwin(v9);
  v101 = v75 - v10;
  v100 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v100);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for KeyEquivalent();
  v84 = *(v92 - 1);
  __chkstk_darwin(v92);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherMenuCommands();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v77 = sub_10022C350(&qword_100CE9250);
  v18 = *(v77 - 8);
  __chkstk_darwin(v77);
  v20 = v75 - v19;
  v79 = sub_10022C350(&qword_100CE9258);
  v78 = *(v79 - 1);
  __chkstk_darwin(v79);
  v22 = v75 - v21;
  v76 = sub_10022C350(&qword_100CE92B0);
  __chkstk_darwin(v76);
  v97 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v75 - v25;
  __chkstk_darwin(v27);
  v99 = v75 - v28;
  v29 = type metadata accessor for Divider();
  v86 = *(v29 - 8);
  v87 = v29;
  __chkstk_darwin(v29);
  v96 = v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v95 = v75 - v32;
  Divider.init()();
  v94 = a1;
  sub_100099AEC(a1, v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  v33 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v93 = *(v16 + 80);
  v34 = v33 + v17;
  v35 = swift_allocObject();
  v83 = v33;
  v85 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098494(v85, v35 + v33, type metadata accessor for WeatherMenuCommands);
  v81 = v82 & 1;
  v102 = v82;
  v36 = sub_10022C350(&qword_100CA2D20);
  v37 = sub_1009933F4();
  v82 = v36;
  v80 = v37;
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v38 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v38)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100006F64(&qword_100CE9278, &qword_100CE9250);
  v39 = v77;
  View.keyboardShortcut(_:modifiers:)();
  (*(v84 + 1))(v14, v92);
  (*(v18 + 8))(v20, v39);
  v40 = v94;
  sub_10098959C();
  v41 = v12[*(v100 + 28)];
  v92 = type metadata accessor for WeatherMenuViewModel;
  sub_100109620(v12, type metadata accessor for WeatherMenuViewModel);
  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = (v41 & 1) == 0;
  (*(v78 + 32))(v26, v22, v79);
  v44 = &v26[*(v76 + 36)];
  *v44 = KeyPath;
  v44[1] = sub_100993CA8;
  v44[2] = v43;
  sub_10011C0F0(v26, v99, &qword_100CE92B0);
  v84 = type metadata accessor for WeatherMenuCommands;
  v45 = v85;
  sub_100099AEC(v40, v85, type metadata accessor for WeatherMenuCommands);
  v75[1] = v34;
  v46 = swift_allocObject();
  v79 = type metadata accessor for WeatherMenuCommands;
  v47 = v83;
  v48 = sub_100098494(v45, v46 + v83, type metadata accessor for WeatherMenuCommands);
  __chkstk_darwin(v48);
  LOBYTE(v39) = v81;
  LOBYTE(v75[-2]) = v81;
  v49 = v101;
  Button.init(action:label:)();
  sub_10098959C();
  v50 = v12[*(v100 + 28)];
  sub_100109620(v12, v92);
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = (v50 & 1) == 0;
  v53 = v88;
  v54 = (v49 + *(v88 + 36));
  *v54 = v51;
  v54[1] = sub_100993CA8;
  v54[2] = v52;
  sub_100099AEC(v94, v45, v84);
  v55 = swift_allocObject();
  v56 = sub_100098494(v45, v55 + v47, v79);
  __chkstk_darwin(v56);
  LOBYTE(v75[-2]) = v39;
  v57 = v98;
  Button.init(action:label:)();
  sub_10098959C();
  v58 = v12[*(v100 + 28)];
  sub_100109620(v12, v92);
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = (v58 & 1) == 0;
  v61 = (v57 + *(v53 + 36));
  v62 = v57;
  *v61 = v59;
  v61[1] = sub_100993CA8;
  v61[2] = v60;
  v64 = v86;
  v63 = v87;
  v65 = *(v86 + 16);
  v66 = v96;
  v65(v96, v95, v87);
  sub_1000302D8(v99, v97, &qword_100CE92B0);
  v67 = v90;
  sub_1000302D8(v101, v90, &qword_100CE92C0);
  v68 = v62;
  v69 = v91;
  sub_1000302D8(v68, v91, &qword_100CE92C0);
  v70 = v89;
  v65(v89, v66, v63);
  v71 = sub_10022C350(&qword_100CE92C8);
  v72 = v97;
  sub_1000302D8(v97, &v70[v71[12]], &qword_100CE92B0);
  sub_1000302D8(v67, &v70[v71[16]], &qword_100CE92C0);
  sub_1000302D8(v69, &v70[v71[20]], &qword_100CE92C0);
  sub_1000180EC(v98, &qword_100CE92C0);
  sub_1000180EC(v101, &qword_100CE92C0);
  sub_1000180EC(v99, &qword_100CE92B0);
  v73 = *(v64 + 8);
  v73(v95, v63);
  sub_1000180EC(v69, &qword_100CE92C0);
  sub_1000180EC(v67, &qword_100CE92C0);
  sub_1000180EC(v72, &qword_100CE92B0);
  return (v73)(v96, v63);
}

uint64_t sub_1009910D4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100991138@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100991178(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(*sub_1000161C0((a1 + 16), *(a1 + 40)) + 120);
  ObjectType = swift_getObjectType();
  return a2(ObjectType, v3);
}

uint64_t sub_1009911C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA2CF0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  Label.init(title:icon:)();
  sub_10098C7B0(a1, a2);
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_100991304@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100991344@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v47 = a2;
  v62 = a3;
  v4 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v4 - 8);
  v61 = &v45 - v5;
  v58 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v58);
  v59 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for KeyEquivalent();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherMenuCommands();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10022C350(&qword_100CE9250);
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v55 = sub_10022C350(&qword_100CE9258);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v45 - v14;
  v50 = sub_10022C350(&qword_100CE92B0);
  __chkstk_darwin(v50);
  v57 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  v52 = &v45 - v21;
  v51 = type metadata accessor for Divider();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v45 - v25;
  Divider.init()();
  v60 = a1;
  sub_100099AEC(a1, &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  v27 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v28 = swift_allocObject();
  sub_100098494(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for WeatherMenuCommands);
  v63 = v47;
  sub_10022C350(&qword_100CA2D20);
  sub_1009933F4();
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v29 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v29)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100006F64(&qword_100CE9278, &qword_100CE9250);
  View.keyboardShortcut(_:modifiers:)();
  (*(v54 + 8))(v8, v56);
  (*(v48 + 8))(v13, v11);
  v30 = v59;
  sub_10098959C();
  v31 = v61;
  sub_1000302D8(v30 + *(v58 + 24), v61, &qword_100CA65D8);
  sub_100109620(v30, type metadata accessor for WeatherMenuViewModel);
  v32 = type metadata accessor for Location();
  LOBYTE(v30) = sub_100024D10(v31, 1, v32) == 1;
  sub_1000180EC(v31, &qword_100CA65D8);
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  (*(v53 + 32))(v19, v15, v55);
  v35 = &v19[*(v50 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_100168F28;
  v35[2] = v34;
  v36 = v52;
  sub_10011C0F0(v19, v52, &qword_100CE92B0);
  v37 = v49;
  v38 = *(v49 + 16);
  v39 = v51;
  v38(v23, v26, v51);
  v40 = v57;
  sub_1000302D8(v36, v57, &qword_100CE92B0);
  v41 = v62;
  v38(v62, v23, v39);
  v42 = sub_10022C350(&qword_100CE92B8);
  sub_1000302D8(v40, &v41[*(v42 + 48)], &qword_100CE92B0);
  sub_1000180EC(v36, &qword_100CE92B0);
  v43 = *(v37 + 8);
  v43(v26, v39);
  sub_1000180EC(v40, &qword_100CE92B0);
  return (v43)(v23, v39);
}

uint64_t sub_100991AFC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for WeatherMenuViewModel();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 16), *(a1 + 40));
  sub_10098959C();
  sub_1000302D8(&v8[*(v6 + 32)], v4, &qword_100CA65D8);
  sub_100109620(v8, type metadata accessor for WeatherMenuViewModel);
  sub_100789D1C(v4);
  return sub_1000180EC(v4, &qword_100CA65D8);
}

uint64_t sub_100991C40@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CA2CF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100AE8130;
  v9._object = 0x8000000100AE8110;
  v14._countAndFlagsBits = 0xD000000000000035;
  v9._countAndFlagsBits = 0xD000000000000016;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v14);

  v13 = v11;
  sub_10002D5A4();
  Label<>.init<A>(_:systemImage:)();
  sub_10098C7B0(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100991DF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v94 = a2;
  v101 = a3;
  v100 = sub_10022C350(&qword_100CE9240);
  __chkstk_darwin(v100);
  v92 = v80 - v4;
  v82 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v82);
  v81 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10022C350(&qword_100CA5528);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = v80 - v6;
  v90 = sub_10022C350(&qword_100CE9238);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = v80 - v9;
  v10 = sub_10022C350(&qword_100CE9248);
  __chkstk_darwin(v10 - 8);
  v99 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = v80 - v13;
  v96 = type metadata accessor for KeyEquivalent();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v84 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v80 - v16;
  v18 = type metadata accessor for WeatherMenuCommands();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CE9250);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v80 - v24;
  v98 = sub_10022C350(&qword_100CE9258);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v104 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v108 = v80 - v28;
  v102 = type metadata accessor for Divider();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v106 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v93 = v80 - v31;
  __chkstk_darwin(v32);
  v103 = v80 - v33;
  Divider.init()();
  sub_100099AEC(a1, v21, type metadata accessor for WeatherMenuCommands);
  v34 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v80[1] = v20;
  v35 = swift_allocObject();
  sub_100098494(v21, v35 + v34, type metadata accessor for WeatherMenuCommands);
  v83 = a1;
  v109 = a1;
  v110 = v94;
  sub_10022C350(&qword_100CA2D20);
  sub_1009933F4();
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v36 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v36)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100006F64(&qword_100CE9278, &qword_100CE9250);
  View.keyboardShortcut(_:modifiers:)();
  v37 = *(v95 + 1);
  v38 = v17;
  v39 = v96;
  v37(v38, v96);
  (*(v23 + 8))(v25, v22);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24E0 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if ((v111 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v95 = v37;
    Divider.init()();
    v42 = v83;
    v43 = v81;
    sub_10098959C();
    v44 = (v43 + *(v82 + 44));
    v46 = *v44;
    v45 = v44[1];

    sub_100109620(v43, type metadata accessor for WeatherMenuViewModel);
    v111 = v46;
    v112 = v45;
    sub_100099AEC(v42, v21, type metadata accessor for WeatherMenuCommands);
    v47 = swift_allocObject();
    sub_100098494(v21, v47 + v34, type metadata accessor for WeatherMenuCommands);
    sub_10002D5A4();
    v48 = v85;
    Button<>.init<A>(_:action:)();
    v49 = v84;
    KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
    sub_10022C350(&qword_100CE9288);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v51 = static EventModifiers.control.getter();
    *(inited + 32) = v51;
    v52 = static EventModifiers.command.getter();
    *(inited + 40) = v52;
    EventModifiers.init(rawValue:)();
    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v51)
    {
      EventModifiers.init(rawValue:)();
    }

    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v52)
    {
      EventModifiers.init(rawValue:)();
    }

    v53 = v107;
    sub_100006F64(&qword_100CA5548, &qword_100CA5528);
    v54 = v91;
    v55 = v87;
    View.keyboardShortcut(_:modifiers:)();
    v95(v49, v39);
    (*(v86 + 8))(v48, v55);
    v56 = *(v53 + 16);
    v57 = v106;
    v58 = v102;
    v56(v106, v93, v102);
    v96 = v56;
    v59 = v89;
    v60 = *(v89 + 16);
    v61 = v88;
    v62 = v54;
    v63 = v90;
    v60(v88, v62, v90);
    v56(v92, v57, v58);
    v64 = sub_10022C350(&qword_100CE9290);
    v65 = v92;
    v60(&v92[*(v64 + 48)], v61, v63);
    v66 = *(v59 + 8);
    v66(v91, v63);
    v67 = *(v107 + 8);
    v67(v93, v58);
    v66(v61, v63);
    v67(v57, v58);
    v40 = v105;
    sub_10011C0F0(v65, v105, &qword_100CE9240);
    sub_10001B350(v40, 0, 1, v100);
    v41 = v96;
  }

  else
  {
    v40 = v105;
    sub_10001B350(v105, 1, 1, v100);
    v41 = *(v107 + 16);
  }

  v68 = v106;
  v69 = v102;
  v41(v106, v103, v102);
  v70 = v97;
  v71 = *(v97 + 16);
  v72 = v98;
  v71(v104, v108, v98);
  v73 = v99;
  sub_1000302D8(v40, v99, &qword_100CE9248);
  v74 = v101;
  v41(v101, v68, v69);
  v75 = sub_10022C350(&qword_100CE9280);
  v76 = v104;
  v71(&v74[*(v75 + 48)], v104, v72);
  sub_1000302D8(v73, &v74[*(v75 + 64)], &qword_100CE9248);
  sub_1000180EC(v105, &qword_100CE9248);
  v77 = *(v70 + 8);
  v77(v108, v72);
  v78 = *(v107 + 8);
  v78(v103, v69);
  sub_1000180EC(v73, &qword_100CE9248);
  v77(v76, v72);
  return (v78)(v106, v69);
}

uint64_t sub_100992B3C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMenuViewModel();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_1000161C0((a1 + 16), *(a1 + 40));
  sub_10098959C();
  v13 = v12[*(v7 + 36)];
  sub_100109620(v12, type metadata accessor for WeatherMenuViewModel);
  sub_10098959C();
  (*(v3 + 16))(v5, &v9[*(v7 + 40)], v2);
  sub_100109620(v9, type metadata accessor for WeatherMenuViewModel);
  sub_10078A34C(v13, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100992D04@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherMenuViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA2CF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - v10;
  sub_10098959C();
  v12 = &v7[*(v5 + 44)];
  v14 = *v12;
  v13 = *(v12 + 1);

  sub_100109620(v7, type metadata accessor for WeatherMenuViewModel);
  v16[0] = v14;
  v16[1] = v13;
  sub_10002D5A4();
  Label<>.init<A>(_:systemImage:)();
  sub_10098C7B0(a1, a2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100992EA4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMenuViewModel();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 16), *(a1 + 40));
  sub_10098959C();
  LOBYTE(a1) = v5[*(v3 + 48)];
  sub_100109620(v5, type metadata accessor for WeatherMenuViewModel);
  return sub_10078A150(a1);
}

uint64_t sub_100992F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for KeyEquivalent();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherMenuCommands();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_10022C350(&qword_100CA5528);
  v9 = *(v8 - 8);
  v17 = v8;
  v18 = v9;
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100099AEC(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherMenuCommands);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100098494(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for WeatherMenuCommands);
  Button<>.init(_:action:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  sub_100006F64(&qword_100CA5548, &qword_100CA5528);
  v14 = v17;
  View.keyboardShortcut(_:modifiers:)();
  (*(v19 + 8))(v4, v21);
  return (*(v18 + 8))(v11, v14);
}

void sub_100993284(uint64_t a1)
{
  v1 = sub_1000161C0((a1 + 16), *(a1 + 40));
  sub_1000161C0((*v1 + 32), *(*v1 + 56));
  sub_1005AD938();
}

uint64_t sub_100993378(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for WeatherMenuCommands();
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_1009933F4()
{
  result = qword_100CE9260;
  if (!qword_100CE9260)
  {
    sub_10022E824(&qword_100CA2D20);
    sub_10022E824(&qword_100CA2CF0);
    type metadata accessor for TitleAndIconLabelStyle();
    sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
    sub_1009939D4(&qword_100CE9268, &type metadata accessor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for TitleOnlyLabelStyle();
    sub_1009939D4(&qword_100CE9270, &type metadata accessor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9260);
  }

  return result;
}

uint64_t sub_1009935D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100993640(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for WeatherMenuCommands();
  sub_100003810(v3);
  return sub_100991178(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

unint64_t sub_1009937A8()
{
  result = qword_100CE9300;
  if (!qword_100CE9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9300);
  }

  return result;
}

uint64_t sub_100993814()
{
  v0 = type metadata accessor for WeatherMenuCommands();
  sub_100003810(v0);
  v1 = sub_1000081A4();

  return sub_10099038C(v1, v2, v3);
}

uint64_t sub_1009938A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = type metadata accessor for WeatherMenuCommands();
  sub_100003810(v3);
  v4 = sub_1000081A4();

  return a3(v4);
}

unint64_t sub_100993920()
{
  result = qword_100CE9378;
  if (!qword_100CE9378)
  {
    sub_10022E824(&qword_100CB6198);
    sub_1009939D4(qword_100CBE800, &type metadata accessor for UnitConfiguration.Temperature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9378);
  }

  return result;
}

uint64_t sub_1009939D4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100993A1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WeatherMenuCommands();
  sub_100003810(v2);

  return sub_10098ACAC(a1);
}

uint64_t sub_100993A8C()
{
  type metadata accessor for WeatherMenuCommands();
  sub_100003A0C();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  sub_100006F14(v1 + v4 + 16);
  v5 = v1 + v4 + *(v0 + 24);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100020660(v6))
  {
    (*(*(v2 - 8) + 8))(v5, v2);
  }

  sub_10022C350(&qword_100CD5528);

  return swift_deallocObject();
}

uint64_t sub_100993BBC(uint64_t a1)
{
  v3 = type metadata accessor for WeatherMenuCommands();
  sub_100003810(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_10098AE64(a1, v5, v6, v7);
}

uint64_t sub_100993CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v35 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CE9448);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  v14 = sub_10022C350(&qword_100CE9450);
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = v31 - v18;
  sub_10022C350(&qword_100CE9458);
  sub_1000037E8();
  __chkstk_darwin(v20);
  v22 = v31 - v21;
  sub_1009940BC(v2);
  static AccessibilityChildBehavior.ignore.getter();
  v23 = sub_1009948E0();
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v9, v32);
  sub_1000180EC(v13, &qword_100CE9448);
  v36 = v10;
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v16 + 8))(v19, v14);
  v24 = v31[1] + *(type metadata accessor for WindComponentView(0) + 24);
  v26 = *(v24 + 184);
  v25 = *(v24 + 192);
  v36 = v26;
  v37 = v25;
  sub_10002D5A4();
  v27 = v34;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000180EC(v22, &qword_100CE9458);
  type metadata accessor for AutomationCellInfo(0);
  v28 = v33;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v29 = v27 + *(sub_10022C350(&qword_100CE94A0) + 36);
  type metadata accessor for AutomationInfoProperty();
  sub_100994B74();
  sub_100994BCC(v28, type metadata accessor for AutomationInfo);
  *v29 = 0;
  *(v29 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v29 + 16) = result;
  *(v29 + 24) = 0;
  return result;
}

uint64_t sub_1009940BC(uint64_t *a1)
{
  v29 = type metadata accessor for WindComponentContentView(0);
  __chkstk_darwin(v29);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&qword_100CE94A8);
  __chkstk_darwin(v31);
  v33 = &v27 - v3;
  v32 = type metadata accessor for WindComponentLargeContentView(0);
  __chkstk_darwin(v32);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10022C350(&qword_100CE9488);
  __chkstk_darwin(v36);
  v6 = &v27 - v5;
  v7 = sub_10022C350(&qword_100CE94B0);
  __chkstk_darwin(v7);
  v35 = type metadata accessor for SimpleWindComponentContentView(0);
  __chkstk_darwin(v35);
  v30 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v37 = a1;
  LODWORD(v12) = *(a1 + 8);
  v34 = v6;
  if (v12 == 1)
  {
    v15 = v11;
    if ((v14 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    type metadata accessor for WindComponentView(0);
    v22 = v35;
    v23 = v30;
    sub_100994B74();
    *v23 = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    v24 = v23 + *(v22 + 20);
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    sub_100994B74();
    swift_storeEnumTagMultiPayload();
    sub_100994B2C(&qword_100CE9478, type metadata accessor for SimpleWindComponentContentView);
    sub_100994A40();
    _ConditionalContent<>.init(storage:)();
    return sub_100994BCC(v23, type metadata accessor for SimpleWindComponentContentView);
  }

  v20 = v11;

  static os_log_type_t.fault.getter();
  v21 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v14, 0);
  v15 = v20;
  (*(v10 + 8))(v13, v20);
  if (v39 == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = v37[2];
  if (*(v37 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v16, 0);
    (*(v10 + 8))(v13, v15);
    if (v38 != 1)
    {
      goto LABEL_5;
    }

LABEL_9:
    type metadata accessor for WindComponentView(0);
    v17 = v27;
    sub_100994B74();
    sub_100994B74();
    swift_storeEnumTagMultiPayload();
    sub_100994B2C(&qword_100CE9490, type metadata accessor for WindComponentLargeContentView);
    sub_100994B2C(&qword_100CE9498, type metadata accessor for WindComponentContentView);
    v18 = v34;
    _ConditionalContent<>.init(storage:)();
    v19 = type metadata accessor for WindComponentLargeContentView;
    goto LABEL_10;
  }

  if (v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  type metadata accessor for WindComponentView(0);
  v17 = v28;
  sub_100994B74();
  sub_100994B74();
  swift_storeEnumTagMultiPayload();
  sub_100994B2C(&qword_100CE9490, type metadata accessor for WindComponentLargeContentView);
  sub_100994B2C(&qword_100CE9498, type metadata accessor for WindComponentContentView);
  v18 = v34;
  _ConditionalContent<>.init(storage:)();
  v19 = type metadata accessor for WindComponentContentView;
LABEL_10:
  sub_100994BCC(v17, v19);
  sub_100095588();
  swift_storeEnumTagMultiPayload();
  sub_100994B2C(&qword_100CE9478, type metadata accessor for SimpleWindComponentContentView);
  sub_100994A40();
  _ConditionalContent<>.init(storage:)();
  return sub_1000180EC(v18, &qword_100CE9488);
}

unint64_t sub_1009948E0()
{
  result = qword_100CE9460;
  if (!qword_100CE9460)
  {
    sub_10022E824(&qword_100CE9448);
    sub_100994964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9460);
  }

  return result;
}

unint64_t sub_100994964()
{
  result = qword_100CE9468;
  if (!qword_100CE9468)
  {
    sub_10022E824(&qword_100CE9470);
    sub_100994B2C(&qword_100CE9478, type metadata accessor for SimpleWindComponentContentView);
    sub_100994A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9468);
  }

  return result;
}

unint64_t sub_100994A40()
{
  result = qword_100CE9480;
  if (!qword_100CE9480)
  {
    sub_10022E824(&qword_100CE9488);
    sub_100994B2C(&qword_100CE9490, type metadata accessor for WindComponentLargeContentView);
    sub_100994B2C(&qword_100CE9498, type metadata accessor for WindComponentContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE9480);
  }

  return result;
}

uint64_t sub_100994B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100994B74()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}