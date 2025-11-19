uint64_t sub_1000AF41C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000AF474()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000AF528(uint64_t a1, uint64_t a2)
{
  sub_100024D10(a1, a2, v2);
}

uint64_t sub_1000AF594()
{

  return swift_slowAlloc();
}

uint64_t sub_1000AF5B0()
{
}

uint64_t sub_1000AF5CC()
{

  return sub_10011A1F4(v1, v0);
}

uint64_t sub_1000AF5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 280);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_1000AF628()
{

  return sub_100051BBC();
}

uint64_t sub_1000AF67C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000AF69C()
{

  return type metadata accessor for AppConfiguration();
}

void sub_1000AF6DC()
{
  sub_10000C778();
  v3 = v1;
  v5 = v4;
  v114 = v6;
  v111 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v113 = v8;
  sub_1000038CC();
  v119 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v112 = v10;
  v11 = sub_1000038CC();
  v107 = type metadata accessor for ViewState.SecondaryViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v110 = v13;
  v14 = sub_10022C350(&qword_100CA6698);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  v18 = sub_10022C350(&qword_100CA5CF8);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_10002C698();
  v20 = sub_10022C350(&qword_100CA65F0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  v109 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v117 = v24;
  v25 = sub_10022C350(&qword_100CA65F8);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  v108 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v116 = v29;
  v30 = sub_10022C350(&qword_100CA6608);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_100003C38();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v102 - v36;
  v38 = sub_10022C350(&qword_100CA6600);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  v105 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  v118 = &v102 - v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  v45 = &v102 - v44;
  v115 = type metadata accessor for SearchViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  sub_10000C790();
  v47 = type metadata accessor for ViewState(0);
  v48 = v47;
  v103 = v3 + *(v47 + 36);
  v49 = v5;
  v50 = *(v103 + 1) != 2 || *(v5 + 8) != 1;
  v104 = *(v47 + 32);
  sub_1000302D8(v3 + v104, v45, &qword_100CA6600);
  sub_1000038B4(v45, 1, v115);
  if (v51)
  {
    sub_1000180EC(v45, &qword_100CA6600);
LABEL_14:
    v106 = sub_1000B010C();
    goto LABEL_16;
  }

  sub_100019FD0();
  sub_1000AFEF8();
  v52 = v0[1];
  if ((v52 & 0x2000000000000000) != 0)
  {
    v53 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v53 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  sub_1000B005C(v0, type metadata accessor for SearchViewState);
  if (v53)
  {
    v54 = v50;
  }

  else
  {
    v54 = 1;
  }

  if (v54)
  {
    goto LABEL_14;
  }

  v106 = 0;
LABEL_16:
  sub_100003934();
  v55 = v107;
  sub_10001B350(v56, v57, v58, v107);
  sub_100009084();
  sub_1000A078C();
  sub_10000E7B0();
  sub_10001B350(v59, v60, v61, v119);
  v62 = v48[10];
  v63 = *(v3 + v62);
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003934();
  sub_10001B350(v64, v65, v66, v67);
  type metadata accessor for WeatherMapTrackingState(0);
  sub_100003934();
  sub_10001B350(v68, v69, v70, v71);
  v102 = v62;
  sub_1000B0430(v63, v49, v2, v17, v117);
  sub_1000180EC(v17, &qword_100CA6698);
  sub_1000180EC(v2, &qword_100CA5CF8);
  sub_10000E7B0();
  v72 = v111;
  sub_10001B350(v73, v74, v75, v111);
  v76 = *v3;
  sub_1000302D8(v37, v34, &qword_100CA6608);
  v77 = sub_1000182B8();
  sub_1000038B4(v77, v78, v55);
  if (v51)
  {
    sub_10001F968();
    sub_1000A078C();
    v79 = sub_1000182B8();
    v81 = sub_100024D10(v79, v80, v55);

    if (v81 != 1)
    {
      sub_1000180EC(v34, &qword_100CA6608);
    }
  }

  else
  {
    sub_10001CE5C();
    sub_1000AFEF8();
  }

  v82 = *(v3 + v48[6]);
  sub_1000180EC(v37, &qword_100CA6608);
  v83 = v104;
  v84 = v105;
  sub_1000302D8(v3 + v104, v105, &qword_100CA6600);
  v85 = sub_100007FC4();
  v86 = v115;
  sub_1000038B4(v85, v87, v115);
  if (v51)
  {
    sub_1000302D8(v3 + v83, v118, &qword_100CA6600);
    v88 = sub_100007FC4();
    sub_1000038B4(v88, v89, v86);
    v93 = v119;
    if (!v51)
    {
      sub_1000180EC(v84, &qword_100CA6600);
    }
  }

  else
  {
    sub_100019FD0();
    sub_1000AFEF8();
    sub_10000E7B0();
    sub_10001B350(v90, v91, v92, v86);
    v93 = v119;
  }

  v94 = v108;
  sub_10011C0F0(v116, v108, &qword_100CA65F8);
  v95 = sub_100007FC4();
  sub_1000038B4(v95, v96, v93);
  if (v51)
  {
    sub_100009084();
    sub_1000A078C();
    v97 = sub_100007FC4();
    sub_1000038B4(v97, v98, v93);
    if (!v51)
    {
      sub_1000180EC(v94, &qword_100CA65F8);
    }
  }

  else
  {
    sub_10000686C();
    sub_1000AFEF8();
  }

  v99 = v109;
  sub_10011C0F0(v117, v109, &qword_100CA65F0);
  sub_1000038B4(v99, 1, v72);
  if (v51)
  {
    sub_100004BD8();
    sub_1000A078C();
    sub_1000038B4(v99, 1, v72);
    if (!v51)
    {
      sub_1000180EC(v99, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100010CB8();
    sub_1000AFEF8();
  }

  v100 = *(v3 + v48[11]);
  v101 = v114;
  *v114 = v76;
  sub_10001CE5C();
  sub_1000AFEF8();
  *(v101 + v48[6]) = v82;
  *(v101 + v48[7]) = v106 & 1;
  sub_10011C0F0(v118, v101 + v48[8], &qword_100CA6600);
  sub_10000686C();
  sub_1000AFEF8();
  sub_100010CB8();
  sub_1000AFEF8();
  *(v101 + v48[11]) = v100;
  sub_10000536C();
}

uint64_t sub_1000AFEF8()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000AFF4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000AFFAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B0004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B005C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B00B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B010C()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = type metadata accessor for ViewState(0);
  if (v2 && *(v0 + *(v3 + 36) + 8) == 2)
  {
    return 1;
  }

  else
  {
    return *(v0 + *(v3 + 28));
  }
}

uint64_t sub_1000B0234@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_1002AB08C(v4, v2, a1);
}

uint64_t sub_1000B0278()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1000B0294(uint64_t a1)
{

  return sub_10009EEC0(a1, type metadata accessor for NotificationsOptInState);
}

uint64_t sub_1000B02B8()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t sub_1000B02D4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B02F0()
{

  return ShortDescription.init(name:_:)();
}

uint64_t sub_1000B0318()
{

  return sub_100051BBC();
}

uint64_t sub_1000B037C()
{

  return swift_getAtKeyPath();
}

uint64_t sub_1000B03C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CA6660);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1000B0430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v70 = a5;
  v7 = type metadata accessor for WeatherMapTrackingState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v73 = v10 - v9;
  v11 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v74 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v72 = v15 - v14;
  v16 = sub_10022C350(&qword_100CA6698);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v67 - v23;
  __chkstk_darwin(v22);
  v26 = &v67 - v25;
  v27 = sub_10022C350(&qword_100CA5CF8);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  v31 = v29 - v30;
  v33 = __chkstk_darwin(v32);
  v35 = &v67 - v34;
  __chkstk_darwin(v33);
  v37 = &v67 - v36;
  v38 = 0x80;
  v71 = a1;
  switch(a1)
  {
    case 1:
    case 3:
      if (DeviceIsSlow())
      {
        v38 = 64;
      }

      else
      {
        v38 = 65;
      }

      break;
    case 2:
      v38 = 65;
      break;
    case 4:
      break;
    case 5:
      v38 = sub_10099A07C(v67);
      break;
    default:
      v38 = 64;
      if (*(v67 + 8) != 1)
      {
        if (DeviceIsSlow())
        {
          v38 = 64;
        }

        else
        {
          v38 = 65;
        }
      }

      break;
  }

  v39 = v38;
  sub_100035AD0(v68, v35, &qword_100CA5CF8);
  sub_100003BFC(v35);
  if (v40)
  {
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100023634();
    v41(v37);
    sub_100003BFC(v35);
    if (!v40)
    {
      sub_1000180EC(v35, &qword_100CA5CF8);
    }
  }

  else
  {
    (*(v74 + 32))(v37, v35, v11);
  }

  sub_10000E7B0();
  sub_10001B350(v42, v43, v44, v11);
  sub_100035AD0(v69, v24, &qword_100CA6698);
  if (sub_100024D10(v24, 1, v7) == 1)
  {
    v45 = type metadata accessor for WeatherMapPresentationState(0);
    sub_1000B0A6C(v5 + *(v45 + 32), v26);
    if (sub_100024D10(v24, 1, v7) != 1)
    {
      sub_1000180EC(v24, &qword_100CA6698);
    }
  }

  else
  {
    sub_1000B0AD0(v24, v26);
  }

  sub_10000E7B0();
  sub_10001B350(v46, v47, v48, v7);
  sub_100035AD0(v37, v31, &qword_100CA5CF8);
  sub_100003BFC(v31);
  if (v40)
  {
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100023634();
    v49(v72);
    sub_100003BFC(v31);
    if (!v40)
    {
      sub_1000180EC(v31, &qword_100CA5CF8);
    }
  }

  else
  {
    (*(v74 + 32))(v72, v31, v11);
  }

  v50 = type metadata accessor for WeatherMapPresentationState(0);
  v51 = (v5 + v50[7]);
  v53 = *v51;
  v52 = v51[1];
  sub_100035AD0(v26, v20, &qword_100CA6698);
  v54 = sub_100007FC4();
  if (sub_100024D10(v54, v55, v7) == 1)
  {
    sub_1000B0A6C(v5 + v50[8], v73);
    v56 = sub_100007FC4();
    v58 = sub_100024D10(v56, v57, v7);

    if (v58 != 1)
    {
      sub_1000180EC(v20, &qword_100CA6698);
    }
  }

  else
  {
    sub_1000B0AD0(v20, v73);
  }

  v59 = *(v5 + 1);
  IsSlow = DeviceIsSlow();
  sub_1000180EC(v26, &qword_100CA6698);
  sub_1000180EC(v37, &qword_100CA5CF8);
  v61 = 0;
  if (IsSlow)
  {
    v63 = v71;
    v62 = v39;
  }

  else
  {
    v62 = v39;
    v63 = v71;
    if ((v39 & 0xC1) != 0x40)
    {
      v61 = (v59 & 0xFFFFFFC1) != 64;
    }
  }

  v64 = v70;
  *v70 = v63;
  v64[1] = v62;
  (*(v74 + 32))(&v64[v50[6]], v72, v11);
  v65 = &v64[v50[7]];
  *v65 = v53;
  v65[1] = v52;
  result = sub_1000B0AD0(v73, &v64[v50[8]]);
  v64[v50[9]] = v61;
  return result;
}

uint64_t sub_1000B0A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6660);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B0A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapTrackingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B0AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapTrackingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B0B48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  result = type metadata accessor for WeatherMapOverlayKind();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[7] + 8) = a2;
      return result;
    }

    v9 = type metadata accessor for WeatherMapTrackingState(0);
    v10 = a4[8];
  }

  return sub_10001B350(v4 + v10, a2, a2, v9);
}

uint64_t sub_1000B0CD0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char a14)
{

  return sub_100042DA8(a1, a2, a3, 0, 0, 0, 0xE000000000000000, 0, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000B0D14()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t sub_1000B0D6C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  v6 = type metadata accessor for WeatherMapOverlayKind();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_10:

    return sub_100024D10(v3 + v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for WeatherMapTrackingState(0);
    v8 = a3[8];
    goto LABEL_10;
  }

  v9 = *(v3 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1000B0E70()
{

  return swift_once();
}

uint64_t sub_1000B0F30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B0F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v1151 = a3;
  v1152 = a2;
  v1139 = a1;
  v1134 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v1110 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003990(v6);
  v7 = sub_10022C350(&qword_100CA6698);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_10000E70C();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CA5CF8);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v1137 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v1131 = v15;
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v19 = sub_100003918(v18);
  v1126 = type metadata accessor for WeatherMapTrackingState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v23 = sub_100003918(v22);
  v1143 = type metadata accessor for WeatherMapPresentationState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  sub_100003918(v28);
  v1138 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v34 = sub_100003918(v33);
  v1141 = type metadata accessor for ViewState.SecondaryViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CA65F0);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  sub_100003990(v49);
  v50 = sub_10022C350(&qword_100CA65F8);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003990(v58);
  v59 = sub_10022C350(&qword_100CA6600);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_10000E70C();
  sub_100003990(v70);
  v71 = sub_10022C350(&qword_100CA6608);
  v72 = sub_100003810(v71);
  __chkstk_darwin(v72);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  v1136 = v76;
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  sub_100003918(v80);
  v1105 = type metadata accessor for NotificationsOptInInput();
  sub_1000037E8();
  __chkstk_darwin(v81);
  sub_1000037D8();
  v84 = sub_100003918(v83 - v82);
  v1150 = type metadata accessor for ViewState(v84);
  sub_1000037E8();
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  v1140 = v90;
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_10000E70C();
  sub_100003918(v98);
  v1144 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v99);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_10000E70C();
  sub_100003918(v105);
  v1149 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v106);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_10000E70C();
  sub_100003918(v112);
  v1147 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v113);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_10000E70C();
  sub_100003918(v119);
  v1148 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v120);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_10000E70C();
  sub_100003918(v126);
  v1145 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v127);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_10000E70C();
  v134 = sub_100003918(v133);
  v1146 = type metadata accessor for ModalViewState(v134);
  sub_1000037E8();
  __chkstk_darwin(v135);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  v1142 = v147;
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_10000E70C();
  sub_100003990(v150);
  v151 = sub_10022C350(&qword_100CA6610);
  v152 = sub_100003810(v151);
  __chkstk_darwin(v152);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_10000E70C();
  sub_100003990(v165);
  v166 = sub_10022C350(&qword_100CA6618);
  v167 = sub_100003810(v166);
  __chkstk_darwin(v167);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_10000E70C();
  sub_100003918(v180);
  v1135 = type metadata accessor for Date();
  sub_1000037C4();
  v1109 = v181;
  __chkstk_darwin(v182);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_10000E70C();
  sub_100003990(v184);
  v185 = sub_10022C350(&unk_100CB2CF0);
  v186 = sub_100003810(v185);
  __chkstk_darwin(v186);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_10000E70C();
  sub_100003918(v190);
  v1153 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v191);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_10000E70C();
  sub_100003990(v199);
  v200 = sub_10022C350(&qword_100CA6620);
  v201 = sub_100003810(v200);
  __chkstk_darwin(v201);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_10000E70C();
  sub_100003990(v214);
  v215 = sub_10022C350(&qword_100CA6628);
  v216 = sub_100003810(v215);
  __chkstk_darwin(v216);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_10000E70C();
  sub_100003990(v229);
  v230 = sub_10022C350(&qword_100CA6630);
  v231 = sub_100003810(v230);
  __chkstk_darwin(v231);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_10000E70C();
  sub_100003990(v244);
  v245 = sub_10022C350(&qword_100CA6638);
  v246 = sub_100003810(v245);
  __chkstk_darwin(v246);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_10000E70C();
  sub_100003990(v259);
  v260 = sub_10022C350(&qword_100CA6640);
  v261 = sub_100003810(v260);
  __chkstk_darwin(v261);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_10000E70C();
  sub_100003990(v274);
  v275 = sub_10022C350(&qword_100CA65E8);
  v276 = sub_100003810(v275);
  __chkstk_darwin(v276);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_10000E70C();
  sub_100003918(v289);
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v290);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  v293 = __chkstk_darwin(v292);
  v295 = &v977 - v294;
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  v298 = &v977 - v297;
  v299 = sub_10022C350(&qword_100CA65B8);
  v300 = sub_100003810(v299);
  __chkstk_darwin(v300);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  v305 = __chkstk_darwin(v304);
  v307 = &v977 - v306;
  v308 = __chkstk_darwin(v305);
  v310 = &v977 - v309;
  v311 = __chkstk_darwin(v308);
  v313 = &v977 - v312;
  __chkstk_darwin(v311);
  v315 = &v977 - v314;
  v316 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v1122 = v317;
  __chkstk_darwin(v318);
  sub_1000037D8();
  v321 = (v320 - v319);
  type metadata accessor for LocationViewerViewAction();
  sub_1000037E8();
  __chkstk_darwin(v322);
  sub_1000037D8();
  v325 = v324 - v323;
  sub_1000B7D3C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v414 = v1131;
      v415 = *(v1131 + 32);
      v416 = v1130;
      v417 = v1137;
      v415(v1130, v325, v1137);
      v418 = sub_100003BCC(&v1146);
      sub_10001B350(v418, v419, v420, v1145);
      v421 = sub_100003BCC(&v1148);
      sub_10001B350(v421, v422, v423, v1148);
      v424 = sub_100003BCC(&v1149);
      sub_10001B350(v424, v425, v426, v1147);
      v427 = sub_100003BCC(&v1151);
      sub_10001B350(v427, v428, v429, v1149);
      v430 = sub_100003BCC(&v1153);
      sub_10001B350(v430, v431, v432, v1153);
      v433 = sub_100003BCC(v1154);
      sub_10001B350(v433, v434, v435, v1144);
      v436 = v1152 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001C83C();
      sub_1000B7D3C();
      sub_100003934();
      sub_10001B350(v437, v438, v439, v1141);
      type metadata accessor for SearchViewState(0);
      v440 = sub_100003BCC(v1155);
      v1151 = v441;
      sub_10001B350(v440, v442, v443, v441);
      v444 = sub_100003BCC(&v1156);
      sub_10001B350(v444, v445, v446, v1138);
      sub_10002FF74();
      v1135 = v436;
      sub_100037814();
      sub_1000B7D3C();
      v447 = *(v414 + 16);
      v447(v1128, v416, v417);
      v448 = sub_1000A7CCC();
      sub_10001B350(v448, v449, v450, v417);
      v451 = sub_100021088(v1123);
      sub_10001B350(v451, v452, v453, v1126);
      LODWORD(v1139) = *v315;
      v454 = v315[1];
      sub_100032590();
      sub_100095588();
      sub_10000554C(v416);
      if (v332)
      {
        v447(v1116, &v315[v1143[6]], v417);
        sub_10000554C(v416);
        if (!v332)
        {
          sub_1000180EC(v416, &qword_100CA5CF8);
        }
      }

      else
      {
        v415(v1116, v416, v417);
      }

      v585 = &v315[v1143[7]];
      v587 = *v585;
      v586 = *(v585 + 1);
      sub_100021424();
      sub_100095588();
      v588 = sub_100016298();
      v589 = v1126;
      sub_1000038B4(v588, v590, v1126);
      if (v332)
      {
        sub_100037814();
        sub_1000B7D3C();
        v591 = sub_100016298();
        v593 = v447;
        v594 = sub_100024D10(v591, v592, v589);

        if (v594 != 1)
        {
          sub_1000180EC(v593, &qword_100CA6698);
        }
      }

      else
      {
        sub_100079524();
        sub_100037814();
        sub_100620EDC();
      }

      v595 = v1143;
      v596 = v1127;
      v597 = *(v1127 + v1143[9]);
      sub_1000180EC(v436, &qword_100CA6698);
      sub_1000180EC(v1128, &qword_100CA5CF8);
      sub_10009EEC0(v596, type metadata accessor for WeatherMapPresentationState);
      v598 = v1129;
      *v1129 = v1139;
      v598[1] = v454;
      v415(&v598[v595[6]], v1116, v1137);
      v599 = &v598[v595[7]];
      *v599 = v587;
      v599[1] = v586;
      sub_100079524();
      sub_100620EDC();
      v598[v595[9]] = v597;
      sub_10000E7B0();
      sub_10001B350(v600, v601, v602, v595);
      v603 = v1140;
      v604 = *v1140;
      sub_100042230();
      sub_100095588();
      v605 = sub_1000182B8();
      v606 = v1141;
      sub_1000038B4(v605, v607, v1141);
      if (v332)
      {
        v611 = v1150;
        sub_100051F44();
        sub_1000B7D3C();
        v608 = sub_1000182B8();
        v610 = sub_100024D10(v608, v609, v606);

        v612 = v1100;
        v613 = v1096;
        v614 = v1090;
        v615 = v1089;
        if (v610 != 1)
        {
          sub_1000180EC(v415, &qword_100CA6608);
        }
      }

      else
      {
        sub_10002490C();
        sub_100620EDC();

        v611 = v1150;
        v612 = v1100;
        v613 = v1096;
        v614 = v1090;
        v615 = v1089;
      }

      LODWORD(v1141) = *(v603 + v611[6]);
      v616 = [objc_opt_self() currentDevice];
      v617 = v603;
      v618 = [v616 userInterfaceIdiom];

      if (v618 && *(v617 + v611[9] + 8) == 2)
      {
        v619 = 1;
      }

      else
      {
        v619 = *(v617 + v611[7]);
      }

      sub_1000180EC(v1136, &qword_100CA6608);
      (*(v1131 + 8))(v1130, v1137);
      sub_1000C8B14(v1155);
      sub_100051BBC();
      v620 = v1151;
      sub_1000038B4(v614, 1, v1151);
      if (v332)
      {
        sub_100095588();
        sub_10000C814(v614);
        if (!v332)
        {
          sub_1000180EC(v614, &qword_100CA6600);
        }
      }

      else
      {
        sub_100021584();
        sub_1000113EC();
        sub_100620EDC();
        sub_10000E7B0();
        sub_10001B350(v621, v622, v623, v620);
      }

      sub_1000870F8(&v1156);
      sub_100051BBC();
      sub_10000554C(v613);
      if (v332)
      {
        sub_100031E5C();
        sub_1000B7D3C();
        sub_10000554C(v613);
        v624 = v1072;
        if (!v332)
        {
          sub_1000180EC(v613, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100022F24();
        sub_100620EDC();
        v624 = v1072;
      }

      sub_1000C8EE0();
      sub_100003A40(v612);
      if (v332)
      {
        sub_10002FF74();
        sub_1000519E0();
        sub_1000B7D3C();
        sub_100003A40(v612);
        if (!v332)
        {
          sub_1000180EC(v612, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100019BD0();
        sub_1000519E0();
        sub_100620EDC();
      }

      v625 = *(v1140 + v611[11]);
      sub_1000105CC();
      sub_10009EEC0(v626, v627);
      *v615 = v604;
      sub_10002490C();
      sub_100620EDC();
      *(v615 + v611[6]) = v1141;
      *(v615 + v611[7]) = v619;
      sub_100051BBC();
      sub_100022F24();
      sub_100620EDC();
      sub_100019BD0();
      sub_100620EDC();
      *(v615 + v611[11]) = v625;
      sub_10000E7B0();
      sub_10001B350(v628, v629, v630, v611);
      v631 = sub_100020EE4(v1115);
      v632 = v1146;
      sub_10001B350(v631, v633, v634, v1146);
      sub_100006378();
      sub_1000325C0();
      sub_1000B7D3C();
      sub_100051BBC();
      v635 = sub_10000C834();
      if (sub_100024D10(v635, v636, v632) == 1)
      {
        sub_1000180EC(v624, &qword_100CA65E8);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v612, v637);
        sub_10001F304();
        sub_100620EDC();
      }

      v638 = v1145;
      v639 = v1087;
      v640 = v1074;
      sub_10001F304();
      sub_100620EDC();
      v641 = *(v1152 + 16);
      LODWORD(v1147) = *(v1152 + 24);
      sub_1000325C0();
      sub_100051BBC();
      sub_10000394C(v612);
      if (v332)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v642 = sub_100024D10(v612, 1, v638);

        v643 = v612;
        v644 = v1076;
        if (v642 != 1)
        {
          sub_1000180EC(v643, &qword_100CA6640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v644 = v1076;
      }

      v1151 = v641;
      sub_1000870F8(&v1148);
      sub_100051BBC();
      sub_10000C814(v640);
      if (v332)
      {
        sub_10002014C();
        sub_100020968();
        sub_1000B7D3C();
        sub_10000C814(v640);
        v645 = v1082;
        v646 = v1078;
        if (!v332)
        {
          sub_1000180EC(v640, &qword_100CA6638);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v645 = v1082;
        v646 = v1078;
      }

      sub_1000C8EE0();
      sub_100005404(v644);
      if (v332)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100005404(v644);
        if (!v332)
        {
          sub_1000180EC(v644, &qword_100CA6630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_10001627C(v646, 1);
      if (v332)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_100005404(v646);
        if (!v332)
        {
          sub_1000180EC(v646, &qword_100CA6628);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100052378(&v1153);
      sub_100051BBC();
      v647 = sub_100016298();
      sub_10001627C(v647, v648);
      if (v332)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        sub_100005404(v645);
        v649 = v1092[0];
        if (!v332)
        {
          sub_1000180EC(v645, &qword_100CA6620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
        v649 = v1092[0];
      }

      sub_1000C8B14(v1154);
      sub_100051BBC();
      sub_10000554C(v639);
      if (v332)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_10000554C(v639);
        if (!v332)
        {
          sub_1000180EC(v639, &qword_100CA6618);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_1000038B4(v649, 1, v611);
      if (v332)
      {
        sub_10001C83C();
        sub_1000113EC();
        sub_1000B7D3C();
        sub_1000038B4(v649, 1, v611);
        if (!v332)
        {
          sub_1000180EC(v649, &qword_100CA6610);
        }
      }

      else
      {
        sub_100028844();
        sub_1000113EC();
        sub_100620EDC();
      }

      sub_10001F304();
      v650 = v1142;
      sub_100620EDC();
      sub_10001327C();
      sub_1000BCED8();
      v652 = *(v651 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_100071D94();
      sub_10003E038(v1151, v1147, v1117, v1118, v1119, v1120, v1115[0], v1121, v639, v650, v971, v972, v973, v974, v975, v976, v645, v652, v977, v978, v979, v980, v981, v982, v983, v984, v985, v986, v987, v988, v989, v990, v991, v992, v993);
      goto LABEL_135;
    case 2u:
      v381 = v1110;
      v382 = v1111;
      v383 = v1134;
      (*(v1110 + 32))(v1111, v325, v1134);
      v384 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001C83C();
      v334 = v1152;
      sub_1000131DC();
      sub_1000B7D3C();
      v385 = v1150;
      sub_100051F44();
      sub_10003778C();
      sub_1000B7D3C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000105CC();
        sub_10009EEC0(v310, v386);
        (*(v381 + 8))(v382, v383);
        sub_10012CD60();
        v388 = &OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
        goto LABEL_40;
      }

      v1151 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      if (*&v310[v385[9] + 8] == 1)
      {
        v509 = [objc_opt_self() currentDevice];
        [v509 userInterfaceIdiom];

        LOBYTE(v509) = v310[v385[7]];
        sub_1000105CC();
        sub_10009EEC0(v310, v510);
        v511 = v1147;
        v512 = v1148;
        v513 = v1069;
        if ((v509 & 1) == 0)
        {
          (*(v1110 + 8))(v1111, v383);
          goto LABEL_238;
        }
      }

      else
      {
        sub_1000105CC();
        sub_10009EEC0(v310, v746);
        v511 = v1147;
        v512 = v1148;
        v513 = v1069;
      }

      v1140 = v384;
      sub_100074CF0();
      sub_1000113EC();
      sub_1000B7D3C();
      v747 = v1068;
      sub_10089E774(v1068);
      sub_1000719A4();
      sub_10009EEC0(v383, v748);
      sub_100042230();
      if ((static Location.Identifier.== infix(_:_:)() & 1) == 0)
      {

        v830 = *(v1110 + 8);
        sub_1000113EC();
        v830();
        (v830)(&OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v383);
        goto LABEL_240;
      }

      v749 = sub_100003BCC(&v1079);
      sub_10001B350(v749, v750, v751, v1145);
      v752 = sub_100003BCC(&v1080);
      sub_10001B350(v752, v753, v754, v512);
      v755 = sub_100003BCC(v1081);
      sub_10001B350(v755, v756, v757, v511);
      v758 = sub_100003BCC(&v1082);
      sub_10001B350(v758, v759, v760, v1149);
      v761 = sub_100003BCC(v1083);
      sub_10001B350(v761, v762, v763, v1153);
      v764 = sub_100003BCC(&v1084);
      sub_10001B350(v764, v765, v766, v1144);
      sub_10001C83C();
      sub_1000B7D3C();
      v767 = sub_100020EE4(&v1032);
      sub_1000AF5E4(v767, v768, v769);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v511);
      if (v332)
      {
        sub_100074CF0();
        v853 = v1151;
        sub_100020FE8();
        sub_1000B7D3C();
        sub_100003A40(v511);
        v852 = v1004;
        if (!v332)
        {
          sub_1000180EC(v511, &qword_100CA65B8);
        }
      }

      else
      {
        sub_1000046C0();
        sub_100020FE8();
        sub_100620EDC();
        v852 = v1004;
        v853 = v1151;
      }

      sub_1000046C0();
      sub_100032590();
      sub_100620EDC();
      v854 = *(v853 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
      v855 = *(v853 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
      v856 = *(v853 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
      v857 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v853);
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C();
      v858 = sub_10003DDB8(v747, v857, v854, v856, v855, 2);
      sub_1000180EC(v1011, &qword_100CA65B8);
      v859 = v1026;
      *v1026 = v858;
      v860 = v1141;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v861, v862, v863, v860);
      v864 = type metadata accessor for SearchViewState(0);
      v865 = sub_100003BCC(v1086);
      sub_10001B350(v865, v866, v867, v864);
      v868 = sub_100003BCC(&v1087);
      sub_10001B350(v868, v869, v870, v1138);
      v871 = sub_100003BCC(v1088);
      sub_10001B350(v871, v872, v873, v1143);
      v874 = *v513;
      sub_1000131DC();
      sub_100095588();
      sub_100003A40(v859);
      if (v332)
      {
        sub_100051F44();
        sub_1000B7D3C();
        v875 = sub_100024D10(v859, 1, v860);

        v876 = v1008;
        if (v875 != 1)
        {
          sub_1000180EC(v859, &qword_100CA6608);
        }
      }

      else
      {
        sub_10002490C();
        sub_100620EDC();

        v876 = v1008;
      }

      v877 = *(v513 + v385[6]);
      v878 = sub_1000B010C();
      sub_100095588();
      sub_100005404(v852);
      if (v332)
      {
        sub_100095588();
        sub_100005404(v852);
        v882 = v1007;
        if (!v332)
        {
          sub_1000180EC(v852, &qword_100CA6600);
        }
      }

      else
      {
        sub_100021584();
        sub_1000519E0();
        sub_100620EDC();
        v879 = sub_1000A7CCC();
        sub_10001B350(v879, v880, v881, v864);
        v882 = v1007;
      }

      sub_1000870F8(&v1087);
      sub_100095588();
      v883 = sub_100007FC4();
      sub_10001627C(v883, v884);
      if (v332)
      {
        sub_100031E5C();
        sub_100087FF4(v885);
        sub_1000B7D3C();
        sub_100005404(v882);
        if (!v332)
        {
          sub_1000180EC(v882, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100022F24();
        sub_100620EDC();
      }

      sub_1000519E0();
      sub_100095588();
      v886 = sub_100007FC4();
      sub_10001627C(v886, v887);
      if (v332)
      {
        sub_10002FF74();
        sub_100087FF4(v888);
        sub_1000B7D3C();
        sub_100005404(v882);
        if (!v332)
        {
          sub_1000180EC(v882, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100019BD0();
        sub_100620EDC();
      }

      v889 = v1069;
      v890 = *(v1069 + v385[11]);
      v891 = v1065;
      *v1065 = v874;
      sub_10002490C();
      sub_100620EDC();
      *(v891 + v385[6]) = v877;
      *(v891 + v385[7]) = v878 & 1;
      sub_100051BBC();
      sub_100022F24();
      sub_100620EDC();
      sub_100019BD0();
      sub_100620EDC();
      *(v891 + v385[11]) = v890;
      sub_1000180EC(v1067, &qword_100CA65F0);
      sub_1000180EC(v1066, &qword_100CA65F8);
      v892 = sub_1000C893C(v1086);
      sub_1000180EC(v892, v893);
      sub_1000180EC(v1026, &qword_100CA6608);
      sub_1000105CC();
      sub_10009EEC0(v889, v894);
      v895 = sub_1000A7CCC();
      sub_10001B350(v895, v896, v897, v385);
      v898 = sub_100021088(v1043);
      sub_10001B350(v898, v899, v900, v1146);
      sub_100006378();
      sub_100021424();
      sub_1000B7D3C();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(&unk_100A5C400);
      if (v332)
      {
        sub_1000180EC(&unk_100A5C400, &qword_100CA65E8);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v876, v901);
        sub_10001F304();
        sub_100620EDC();
      }

      v902 = v996;
      v903 = v991;
      v904 = v989;
      sub_10001F304();
      sub_100620EDC();
      v905 = *(v334 + 16);
      LODWORD(v1147) = *(v334 + 24);
      sub_1000C893C(&v1079);
      sub_100095588();
      v906 = sub_10000C834();
      v907 = v1145;
      sub_1000038B4(v906, v908, v1145);
      v1148 = v905;
      if (v332)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v909 = sub_10000C834();
        v911 = v904;
        v912 = sub_100024D10(v909, v910, v907);

        v913 = v997;
        if (v912 != 1)
        {
          sub_1000180EC(v911, &qword_100CA6640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v913 = v997;
      }

      sub_1000870F8(&v1080);
      sub_100095588();
      sub_100005404(v903);
      if (v332)
      {
        sub_10002014C();
        sub_100020968();
        sub_1000B7D3C();
        sub_100005404(v903);
        v914 = v1002;
        v915 = v993;
        if (!v332)
        {
          sub_1000180EC(v903, &qword_100CA6638);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v914 = v1002;
        v915 = v993;
      }

      sub_1000C893C(v1081);
      sub_100095588();
      sub_100003A40(v915);
      if (v332)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100003A40(v915);
        v916 = v1006;
        if (!v332)
        {
          sub_1000180EC(v915, &qword_100CA6630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
        v916 = v1006;
      }

      sub_100095588();
      v917 = sub_1000182B8();
      sub_1000038B4(v917, v918, v1149);
      if (v332)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_10000554C(v902);
        if (!v332)
        {
          sub_1000180EC(v902, &qword_100CA6628);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100052378(v1083);
      sub_100095588();
      v919 = sub_100016298();
      sub_1000038B4(v919, v920, v1153);
      if (v332)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        sub_10000554C(v913);
        v921 = v1009;
        if (!v332)
        {
          sub_1000180EC(v913, &qword_100CA6620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
        v921 = v1009;
      }

      sub_1000436AC(&v1084);
      sub_100095588();
      sub_1000038B4(v914, 1, v1144);
      if (v332)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_10000394C(v914);
        if (!v332)
        {
          sub_1000180EC(v914, &qword_100CA6618);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_1000C8B14(v1085);
      sub_100095588();
      sub_100003BDC(v916);
      if (v332)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_100003BDC(v916);
        v922 = v921;
        if (!v332)
        {
          sub_1000180EC(v916, &qword_100CA6610);
        }
      }

      else
      {
        sub_100028844();
        sub_100620EDC();
        v922 = v921;
      }

      sub_10001F304();
      sub_10008889C();
      v923 = (v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v924 = v334;
      v926 = *(v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v925 = v923[1];
      v928 = v923[2];
      v927 = v923[3];
      v929 = *(v924 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v931 = *(v924 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v930 = *(v924 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v932 = *(v924 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v975) = v929;
      sub_10003E038(v1148, v1147, v1027, v1028, v1029, v1030, v1023, v1031, v922, v916, v926, v925, v928, v927, v975, v931, v930, v932, v977, v978, v979, v980, v981, v982, v983, v984, v985, v986, v987, v988, v989, v990, v991, v992, v993);
      v334 = v933;

      sub_1000180EC(v1018, &qword_100CA65E8);
      sub_1000180EC(v1065, &qword_100CA6610);
      sub_1000180EC(v1064, &qword_100CA6618);
      sub_1000180EC(v1063, &qword_100CA6620);
      sub_1000180EC(v1062, &qword_100CA6628);
      sub_1000180EC(v1061, &qword_100CA6630);
      sub_1000180EC(v1060, &qword_100CA6638);
      sub_1000180EC(v1059, &qword_100CA6640);
      v934 = *(v1110 + 8);
      sub_1000113EC();
      v934();
      v935 = sub_1000C8B14(v1125);
      (v934)(v935);
      return v334;
    case 3u:
      v389 = sub_100003BCC(&v1142);
      sub_10001B350(v389, v390, v391, v1145);
      v392 = sub_100003BCC(&v1143);
      sub_10001B350(v392, v393, v394, v1148);
      v395 = sub_100003BCC(&v1144);
      sub_10001B350(v395, v396, v397, v1147);
      v398 = sub_100003BCC(&v1145);
      sub_10001B350(v398, v399, v400, v1149);
      sub_100008AEC();
      v1138 = v401;
      sub_1000131DC();
      sub_1000B7D3C();
      v402 = v1103;
      sub_100003934();
      v403 = v1135;
      sub_10001B350(v404, v405, v406, v1135);
      LODWORD(v1139) = *v310;
      v407 = *(v310 + 1);
      LODWORD(v1151) = v310[17];
      LODWORD(v1143) = v310[18];
      LODWORD(v1141) = v310[19];
      LODWORD(v1140) = v310[20];
      sub_100020FE8();
      sub_100051BBC();
      sub_10000394C(v402);
      if (v332)
      {
        v515 = v1153;
        v514 = v1109;
        (*(v1109 + 16))(v1113[0], &v310[v1153[11]], v403);
        v408 = sub_10000C834();
        v410 = sub_100024D10(v408, v409, v403);

        if (v410 != 1)
        {
          sub_1000180EC(v402, &unk_100CB2CF0);
        }
      }

      else
      {
        v514 = v1109;
        (*(v1109 + 32))(v1113[0], v402, v403);

        v515 = v1153;
      }

      v516 = v310[v515[12]];
      v517 = v310[v515[13]];
      v518 = v310[v1153[14]];
      v519 = v310[v1153[15]];
      sub_100044E24();
      v521 = v310[v520];
      v522 = v310;
      v524 = v310[v523];
      v525 = *(v522 + v1153[18]);
      sub_1000B0294(v522);
      v526 = v1124;
      *v1124 = v1139;
      *(v526 + 1) = v407;
      v526[16] = 1;
      v526[17] = v1151;
      v526[18] = v1143;
      v526[19] = v1141;
      v526[20] = v1140;
      (*(v514 + 32))(&v526[v1153[11]], v1113[0], v1135);
      v526[v1153[12]] = v516;
      v526[v1153[13]] = v517;
      v527 = v1153;
      v526[v1153[14]] = v518;
      v526[v527[15]] = v519;
      v526[v527[16]] = v521;
      v526[v527[17]] = v524;
      v526[v527[18]] = v525;
      sub_10000E7B0();
      sub_10001B350(v528, v529, v530, v527);
      v531 = sub_100003BCC(&v1150);
      sub_10001B350(v531, v532, v533, v1144);
      v534 = sub_100003BCC(&v1152);
      sub_10001B350(v534, v535, v536, v1150);
      v537 = sub_100020EE4(v1114);
      sub_10001B350(v537, v538, v539, v1146);
      sub_100006378();
      v540 = v1152;
      sub_100042230();
      sub_1000B7D3C();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v521);
      if (v332)
      {
        sub_1000180EC(v521, &qword_100CA65E8);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v525, v541);
        sub_10001F304();
        sub_100620EDC();
      }

      v542 = v1145;
      v543 = v1077;
      v544 = v1071;
      v545 = v1070;
      sub_10001F304();
      sub_100620EDC();
      v546 = *(v540 + 16);
      LODWORD(v1146) = *(v540 + 24);
      sub_1000C8EE0();
      sub_100005404(v545);
      v547 = v1149;
      v1151 = v546;
      if (v332)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v548 = sub_100024D10(v545, 1, v542);

        if (v548 != 1)
        {
          sub_1000180EC(v545, &qword_100CA6640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_1000038B4(v544, 1, v1148);
      if (v332)
      {
        sub_10002014C();
        sub_100020968();
        sub_1000B7D3C();
        sub_100003BDC(v544);
        v549 = v1073;
        if (!v332)
        {
          sub_1000180EC(v544, &qword_100CA6638);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v549 = v1073;
      }

      sub_100037814();
      sub_100051BBC();
      sub_100005404(v544);
      if (v332)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100005404(v544);
        v550 = v1080;
        if (!v332)
        {
          sub_1000180EC(v544, &qword_100CA6630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
        v550 = v1080;
      }

      sub_1000C8EE0();
      sub_10000C814(v549);
      if (v332)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_10000C814(v549);
        if (!v332)
        {
          sub_1000180EC(v549, &qword_100CA6628);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100042230();
      sub_100051BBC();
      v551 = sub_1000182B8();
      sub_1000038B4(v551, v552, v527);
      if (v332)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        v553 = sub_1000182B8();
        sub_1000038B4(v553, v554, v527);
        if (!v332)
        {
          sub_1000180EC(v547, &qword_100CA6620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
      }

      sub_1000C893C(&v1150);
      sub_100051BBC();
      sub_100003A40(v543);
      if (v332)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_100003A40(v543);
        if (!v332)
        {
          sub_1000180EC(v543, &qword_100CA6618);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_1000436AC(&v1152);
      sub_100051BBC();
      sub_100003BFC(v550);
      if (v332)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_100003BFC(v550);
        if (!v332)
        {
          sub_1000180EC(v550, &qword_100CA6610);
        }
      }

      else
      {
        sub_100028844();
        sub_100021CEC();
        sub_100620EDC();
      }

      sub_10001F304();
      sub_10008889C();
      sub_10001327C();
      sub_1000BCED8();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v555 = sub_100030540();
      v556 = v1146;
      v557 = v1114[0];
      v558 = v1114[1];
      v559 = v1115[1];
      v560 = v1115[2];
      v561 = v1113[1];
      v562 = v1132;
      goto LABEL_230;
    case 4u:
      sub_1000161C0(v1132[0] + 2, v1132[0][5]);
      v333 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001C83C();
      v334 = v1152;
      sub_1000131DC();
      sub_1000B7D3C();
      v335 = v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v336 = *(v335 + 1);
      v337 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
      v338 = *(v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      v339 = v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
      v340 = v1153;
      v341 = *(v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1153[15]);
      v342 = *(v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1153[18]);
      v343 = *(v335 + 2);
      v344 = *(v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1153[16]);
      v345 = *(v334 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1153[17]);
      v346 = v1105;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + *(v1105 + 20)) = 0;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[6]) = v336;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[7]) = v338;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[8]) = v343;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[9]) = v341;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[10]) = v342;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[11]) = v344;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v346[12]) = v345;
      v347 = sub_1007274D0(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_10009EEC0(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, type metadata accessor for NotificationsOptInInput);
      if (v347 > 1u)
      {
        goto LABEL_240;
      }

      active = v335;
      v1137 = v333;
      v348 = v347 >> 8;
      type metadata accessor for NotificationsOptInViewState._Storage();
      v349 = swift_allocObject();
      *(v349 + 16) = v347;
      *(v349 + 18) = BYTE2(v347) & 1;
      *(v349 + 21) = BYTE5(v347);
      *(v349 + 19) = v347 >> 24;
      *(v349 + 22) = BYTE6(v347) & 1;
      v350 = sub_100003BCC(&v1089);
      sub_10001B350(v350, v351, v352, v1145);
      v353 = sub_100003BCC(v1091);
      sub_10001B350(v353, v354, v355, v1148);
      v356 = sub_100003BCC(&v1093);
      sub_10001B350(v356, v357, v358, v1147);
      v359 = sub_100003BCC(&v1095);
      sub_10001B350(v359, v360, v361, v1149);
      sub_100008AEC();
      sub_1000325C0();
      sub_1000B7D3C();
      v362 = sub_100021088(&v1064);
      v363 = v1135;
      sub_10001B350(v362, v364, v365, v1135);
      LODWORD(v1138) = *v298;
      v1151 = *(v298 + 1);
      v366 = v298[17];
      v367 = v298[18];
      LODWORD(v1140) = v298[19];
      LODWORD(v1139) = v298[20];
      sub_100042230();
      sub_100051BBC();
      sub_10000394C(v347 >> 8);
      v1136 = v339;
      v1134 = v337;
      LODWORD(v1143) = v366;
      LODWORD(v1141) = v367;
      if (v332)
      {
        v702 = v1109;
        v703 = v1044[0];
        (*(v1109 + 16))(v1044[0], &v298[v340[11]], v363);
        v368 = sub_1000182B8();
        v370 = sub_100024D10(v368, v369, v363);

        if (v370 != 1)
        {
          sub_1000180EC(v348, &unk_100CB2CF0);
        }
      }

      else
      {
        v702 = v1109;
        v703 = v1044[0];
        (*(v1109 + 32))(v1044[0], v348, v363);
      }

      v704 = v298[v340[12]];
      v705 = v298[v340[13]];
      v706 = v298;
      v707 = v298[v340[14]];
      v708 = v706[v340[15]];
      sub_100044E24();
      v711 = *(v709 + v710);
      v713 = *(v709 + v712);
      sub_1000B0294(v709);
      v714 = v1075;
      *v1075 = v1138;
      *(v714 + 1) = v1151;
      v714[16] = 0;
      v714[17] = v1143;
      v714[18] = v1141;
      v714[19] = v1140;
      v714[20] = v1139;
      (*(v702 + 32))(&v714[v1153[11]], v703, v1135);
      v714[v1153[12]] = v704;
      v714[v1153[13]] = v705;
      v714[v1153[14]] = v707;
      v714[v1153[15]] = v708;
      v715 = v1153;
      v714[v1153[16]] = v711;
      v714[v715[17]] = v713;
      v714[v715[18]] = 0;
      sub_10000E7B0();
      sub_10001B350(v716, v717, v718, v715);
      v719 = sub_100003BCC(v1101);
      sub_10001B350(v719, v720, v721, v1144);
      v722 = sub_100003BCC(v1102);
      sub_10001B350(v722, v723, v724, v1150);
      v725 = v1032;
      *v1032 = v349;
      v726 = v1146;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v727, v728, v729, v726);
      sub_100006378();
      v730 = v1152;
      sub_1000131DC();
      sub_1000B7D3C();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v725);
      if (v332)
      {
        sub_1000180EC(v725, &qword_100CA65E8);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v704, v731);
        sub_10001F304();
        sub_100620EDC();
      }

      v732 = v1049;
      v733 = v1044[1];
      v734 = v1037;
      v735 = v1035;
      sub_10001F304();
      sub_100620EDC();
      v736 = *(v730 + 16);
      LODWORD(v1146) = *(v730 + 24);
      sub_100051BBC();
      v737 = v1145;
      sub_1000038B4(v735, 1, v1145);
      v1151 = v736;
      if (v332)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v738 = sub_100024D10(v735, 1, v737);

        v332 = v738 == 1;
        v739 = v1148;
        if (!v332)
        {
          sub_1000180EC(v735, &qword_100CA6640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v739 = v1148;
      }

      sub_100052378(v1091);
      sub_100051BBC();
      sub_100003BFC(v734);
      if (v332)
      {
        sub_100020968();
        sub_1000B7D3C();
        sub_100003BFC(v734);
        if (!v332)
        {
          sub_1000180EC(v734, &qword_100CA6638);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
      }

      sub_1000131DC();
      sub_100051BBC();
      sub_1000038B4(v739, 1, v1147);
      if (v332)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_10000394C(v739);
        v740 = v1046;
        if (!v332)
        {
          sub_1000180EC(v739, &qword_100CA6630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
        v740 = v1046;
      }

      sub_1000436AC(&v1095);
      sub_100051BBC();
      sub_100003BDC(v733);
      if (v332)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_100003BDC(v733);
        if (!v332)
        {
          sub_1000180EC(v733, &qword_100CA6628);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100052378(&v1097);
      sub_100051BBC();
      v741 = sub_100016298();
      sub_1000038B4(v741, v742, v715);
      if (v332)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        v743 = sub_100016298();
        sub_1000038B4(v743, v744, v715);
        v745 = v1051;
        if (!v332)
        {
          sub_1000180EC(v740, &qword_100CA6620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
        v745 = v1051;
      }

      sub_1000C893C(v1101);
      sub_100051BBC();
      sub_100003A40(v732);
      if (v332)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_100003A40(v732);
        if (!v332)
        {
          sub_1000180EC(v732, &qword_100CA6618);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_1000436AC(v1102);
      sub_100051BBC();
      sub_100003BFC(v745);
      if (v332)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_100003BFC(v745);
        if (!v332)
        {
          sub_1000180EC(v745, &qword_100CA6610);
        }
      }

      else
      {
        sub_100028844();
        sub_100021CEC();
        sub_100620EDC();
      }

      sub_10001F304();
      sub_10008889C();
      sub_10001327C();
      sub_1000BCED8();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v555 = sub_100030540();
      v556 = v1146;
      v557 = v1088[0];
      v558 = v1088[1];
      v559 = v1088[4];
      v560 = v1092[1];
      v561 = v1079;
      v562 = &v1106;
      goto LABEL_230;
    case 5u:
      sub_100006378();
      v334 = v1152;
      sub_1000B7D3C();
      v455 = v1108;
      swift_storeEnumTagMultiPayload();
      sub_1000BC008();
      v457 = v456;
      sub_10009EEC0(v455, type metadata accessor for ModalViewState);
      v458 = sub_100021CEC();
      sub_10009EEC0(v458, v459);
      if ((v457 & 1) == 0)
      {
        if (qword_100CA26B0 != -1)
        {
          swift_once();
        }

        v654 = type metadata accessor for Logger();
        sub_10000703C(v654, qword_100D90A78);
        v655 = Logger.logObject.getter();
        v656 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v655, v656))
        {
          v657 = swift_slowAlloc();
          *v657 = 0;
          _os_log_impl(&_mh_execute_header, v655, v656, "Trying to dismiss Location Viewer while modal view is presented, aborting dismissal.", v657, 2u);
        }

        goto LABEL_240;
      }

      v460 = sub_100003BCC(v1092);
      sub_10001B350(v460, v461, v462, v1145);
      v463 = sub_100003BCC(v1094);
      sub_10001B350(v463, v464, v465, v1148);
      v466 = sub_100003BCC(&v1096);
      sub_10001B350(v466, v467, v468, v1147);
      v469 = sub_100003BCC(v1098);
      sub_10001B350(v469, v470, v471, v1149);
      v472 = sub_100003BCC(&v1100);
      sub_10001B350(v472, v473, v474, v1153);
      v475 = sub_100003BCC(&v1103);
      sub_10001B350(v475, v476, v477, v1144);
      sub_10001C83C();
      v1140 = v478;
      sub_1000519E0();
      sub_1000B7D3C();
      sub_100074CF0();
      sub_100021424();
      sub_1000B7D3C();
      v479 = sub_1000E0924();
      v481 = v480;
      sub_1000719A4();
      sub_10009EEC0(v455, v482);
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v486 = sub_100042DA8(v483, v484, v485, 0, 0, 0, 0xE000000000000000, 0, 0, 0, v479, v481, 1, 0);
      sub_100003934();
      v487 = v1141;
      sub_10001B350(v488, v489, v490, v1141);
      v491 = type metadata accessor for SearchViewState(0);
      v492 = sub_100003BCC(v1104);
      sub_10001B350(v492, v493, v494, v491);
      sub_100003934();
      sub_10001B350(v495, v496, v497, v1138);
      v498 = v1057;
      sub_100003934();
      sub_10001B350(v499, v500, v501, v1143);
      sub_1000325C0();
      sub_100051BBC();
      sub_100005404(v298);
      if (v332)
      {
        v770 = v1150;
        sub_100051F44();
        sub_1000B7D3C();
        v502 = sub_100024D10(v298, 1, v487);

        v771 = v1054;
        if (v502 != 1)
        {
          sub_1000180EC(v298, &qword_100CA6608);
        }
      }

      else
      {
        sub_10002490C();
        sub_100620EDC();

        v770 = v1150;
        v771 = v1054;
      }

      v772 = *(v1112 + v770[6]);
      sub_1000870F8(v1104);
      sub_100051BBC();
      sub_100003A40(v771);
      if (v332)
      {
        sub_100095588();
        sub_100003A40(v771);
        v773 = v771;
        v777 = v1056;
        v778 = v1050;
        if (!v332)
        {
          sub_1000180EC(v773, &qword_100CA6600);
        }
      }

      else
      {
        sub_100021584();
        sub_100021424();
        sub_100620EDC();
        sub_10000E7B0();
        sub_10001B350(v774, v775, v776, v491);
        v777 = v1056;
        v778 = v1050;
      }

      sub_100051BBC();
      v779 = sub_100007FC4();
      sub_1000038B4(v779, v780, v1138);
      if (v332)
      {
        sub_100031E5C();
        sub_100087FF4(v781);
        sub_1000B7D3C();
        sub_10000394C(v777);
        if (!v332)
        {
          sub_1000180EC(v777, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100022F24();
        sub_100620EDC();
      }

      sub_100032590();
      sub_100051BBC();
      sub_100003A40(v498);
      if (v332)
      {
        sub_10002FF74();
        sub_100087FF4(v782);
        sub_1000B7D3C();
        sub_100003A40(v498);
        v783 = v1053;
        if (!v332)
        {
          sub_1000180EC(v498, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100019BD0();
        sub_100620EDC();
        v783 = v1053;
      }

      v784 = *(v1112 + v770[11]);
      sub_1000105CC();
      sub_10009EEC0(v785, v786);
      *v783 = v486;
      sub_10002490C();
      sub_100620EDC();
      *(v783 + v770[6]) = v772;
      *(v783 + v770[7]) = 0;
      sub_100051BBC();
      sub_100022F24();
      sub_100620EDC();
      sub_100019BD0();
      sub_100620EDC();

      *(v783 + v770[11]) = v784;
      v787 = sub_1000A7CCC();
      sub_10001B350(v787, v788, v789, v770);
      v790 = sub_100021088(v1058);
      sub_10001B350(v790, v791, v792, v1146);
      sub_100006378();
      sub_1000B7D3C();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v784);
      if (v332)
      {
        sub_1000180EC(v784, &qword_100CA65E8);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v778, v793);
        sub_10001F304();
        sub_100620EDC();
      }

      v794 = v1052;
      v795 = v1048;
      v796 = v1047;
      v797 = v1038;
      sub_10001F304();
      sub_100620EDC();
      v798 = *(v334 + 16);
      LODWORD(v1148) = *(v334 + 24);
      sub_100052378(v1092);
      sub_100051BBC();
      v799 = sub_100016298();
      v800 = v1145;
      sub_10001627C(v799, v801);
      v1151 = v798;
      if (v332)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v802 = sub_100016298();
        v804 = sub_100024D10(v802, v803, v800);

        v805 = v1045;
        if (v804 != 1)
        {
          sub_1000180EC(v797, &qword_100CA6640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v805 = v1045;
      }

      sub_100021424();
      sub_100051BBC();
      sub_100003A40(v797);
      if (v332)
      {
        sub_10002014C();
        sub_100020968();
        sub_1000B7D3C();
        sub_100003A40(v797);
        v806 = v1055;
        if (!v332)
        {
          sub_1000180EC(v797, &qword_100CA6638);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v806 = v1055;
      }

      sub_1000C8EE0();
      sub_100003A40(v805);
      if (v332)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100003A40(v805);
        if (!v332)
        {
          sub_1000180EC(v805, &qword_100CA6630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_1000038B4(v796, 1, v1149);
      if (v332)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_100003BDC(v796);
        if (!v332)
        {
          sub_1000180EC(v796, &qword_100CA6628);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_100003BDC(v795);
      if (v332)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        sub_100003BDC(v795);
        if (!v332)
        {
          sub_1000180EC(v795, &qword_100CA6620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
      }

      sub_1000C893C(&v1103);
      sub_100051BBC();
      sub_10000394C(v794);
      if (v332)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_10000394C(v794);
        if (!v332)
        {
          sub_1000180EC(v794, &qword_100CA6618);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_10000C814(v806);
      if (v332)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_10000C814(v806);
        if (!v332)
        {
          sub_1000180EC(v806, &qword_100CA6610);
        }
      }

      else
      {
        sub_100028844();
        sub_100021CEC();
        sub_100620EDC();
      }

      sub_10001F304();
      sub_10008889C();
      sub_10001327C();
      sub_1000BCED8();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v555 = sub_100030540();
      v556 = v1148;
      v557 = v1093;
      v558 = v1095;
      v559 = v1097;
      v560 = v1099;
      v561 = v1084;
      v562 = v1113;
LABEL_230:
      sub_10003E038(v555, v556, v557, v558, v559, v560, v561, *(v562 - 32), v977, v978, v979, v980, v981, v982, v983, v984, v985, v986, v987, *(&v987 + 1), v988, v989, v990, v991, v992, v993, v994, v995, v996, v997, v998, v999, v1000, v1001, v1002);
      v334 = v807;

      goto LABEL_231;
    case 6u:
      sub_10022C350(&qword_100CA6660);
      v377 = v1107;
      v503 = sub_10000C834();
      sub_10001B350(v503, v504, 3, v505);
      v378 = v377;
      v379 = v1139;
      v380 = v1152;
      goto LABEL_37;
    case 7u:
      sub_100003934();
      sub_10001B350(v411, v412, v413, active);
      sub_100051BBC();
      sub_10000554C(v307);
      if (v332)
      {
        sub_100074CF0();
        v565 = v1139;
        sub_1000B7D3C();
        sub_10000554C(v307);
        v563 = v1152;
        v564 = v1146;
        if (!v332)
        {
          sub_1000180EC(v307, &qword_100CA65B8);
        }
      }

      else
      {
        sub_1000046C0();
        sub_100620EDC();
        v563 = v1152;
        v564 = v1146;
        v565 = v1139;
      }

      v566 = *(v565 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
      v567 = *(v565 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C();
      sub_1000C85E8(v295, 0, v566);
      v568 = sub_100021088(&v1157);
      sub_10001B350(v568, v569, v570, v564);
      v571 = sub_100003940();
      v334 = sub_10061D0E8(v571, v572, v563);

      v573 = &qword_100CA65E8;
      v574 = v567;
      goto LABEL_77;
    case 8u:
      sub_10001C83C();
      v334 = v1152;
      sub_100021424();
      sub_1000B7D3C();
      v506 = v1150;
      sub_100051F44();
      sub_100020FE8();
      sub_1000B7D3C();
      v507 = v1141;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v658 = *v321;
        if (*(v316 + *(v506 + 36) + 8) == 1)
        {
          v659 = [objc_opt_self() currentDevice];
          [v659 userInterfaceIdiom];

          LOBYTE(v659) = *(v316 + *(v506 + 28));
          sub_1000105CC();
          sub_10009EEC0(v316, v660);
          v661 = v1144;
          v662 = v1149;
          v663 = v1153;
          if ((v659 & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        else
        {
          sub_1000105CC();
          sub_10009EEC0(v316, v808);
          v661 = v1144;
          v662 = v1149;
          v663 = v1153;
        }

        if (*(v658 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState) == 1)
        {
          v809 = sub_100003BCC(&v1035);
          sub_10001B350(v809, v810, v811, v1145);
          v812 = sub_100003BCC(v1036);
          sub_10001B350(v812, v813, v814, v1148);
          v815 = sub_100003BCC(&v1038);
          sub_10001B350(v815, v816, v817, v1147);
          v818 = sub_100003BCC(v1039);
          sub_10001B350(v818, v819, v820, v662);
          v821 = sub_100003BCC(v1040);
          sub_10001B350(v821, v822, v823, v663);
          v824 = sub_100003BCC(v1042);
          sub_10001B350(v824, v825, v826, v661);
          sub_10001C83C();
          sub_1000B7D3C();
          v827 = sub_100020EE4(&v1031);
          sub_1000AF5E4(v827, v828, v829);
          sub_100021424();
          sub_100095588();
          sub_100003A40(v661);
          if (v332)
          {
            sub_100074CF0();
            sub_10003778C();
            sub_1000B7D3C();
            sub_100003A40(v661);
            v936 = v1003;
            if (!v332)
            {
              sub_1000180EC(v661, &qword_100CA65B8);
            }
          }

          else
          {
            sub_1000046C0();
            sub_10003778C();
            sub_100620EDC();
            v936 = v1003;
          }

          sub_1000046C0();
          sub_100042230();
          sub_100620EDC();
          v937 = *(v658 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
          v938 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v658);
          type metadata accessor for LocationViewerViewState._Storage(0);
          sub_100003B6C();
          v939 = sub_1000C85E8(&OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v938, 0);
          sub_1000180EC(v1010, &qword_100CA65B8);
          v940 = v999;
          *v999 = v939;
          swift_storeEnumTagMultiPayload();
          sub_10000E7B0();
          sub_10001B350(v941, v942, v943, v507);
          type metadata accessor for SearchViewState(0);
          v944 = v1000;
          sub_100003934();
          sub_10001B350(v945, v946, v947, v948);
          v949 = sub_100020EE4(v1025);
          sub_10001B350(v949, v950, v951, v1138);
          sub_100003934();
          sub_10001B350(v952, v953, v954, v1143);
          v955 = v994;
          v956 = v1020;
          sub_10081B470();
          sub_1000180EC(v936, &qword_100CA65F0);
          sub_1000180EC(v937, &qword_100CA65F8);
          sub_1000180EC(v944, &qword_100CA6600);
          sub_1000180EC(v940, &qword_100CA6608);
          sub_1000105CC();
          sub_10009EEC0(v956, v957);
          v958 = sub_1000A7CCC();
          sub_10001B350(v958, v959, v960, v506);
          v961 = v1132[1];
          sub_100003934();
          sub_10001B350(v962, v963, v964, v1146);
          v965 = v1012;
          v966 = v1013;
          v967 = v1014;
          v968 = v1015;
          v969 = v1016;
          v970 = v1017;
          v334 = sub_1000D2C20(0, 3u, v1012, v1013, v1014, v1015, v1016, v1017, v955, v961, 0, 0, 0, 0, 0, 0, 0, 0, v334);

          sub_1000180EC(v961, &qword_100CA65E8);
          sub_1000180EC(v955, &qword_100CA6610);
          sub_1000180EC(v970, &qword_100CA6618);
          sub_1000180EC(v969, &qword_100CA6620);
          sub_1000180EC(v968, &qword_100CA6628);
          sub_1000180EC(v967, &qword_100CA6630);
          sub_1000180EC(v966, &qword_100CA6638);
          v573 = &qword_100CA6640;
          v574 = v965;
LABEL_77:
          sub_1000180EC(v574, v573);
          return v334;
        }

LABEL_238:

        goto LABEL_240;
      }

      sub_1000105CC();
      sub_10009EEC0(v316, v508);
      sub_10012CD60();
      v388 = v321;
LABEL_40:
      sub_10009EEC0(v388, v387);
LABEL_240:

      return v334;
    case 9u:
      if (qword_100CA24D0 != -1)
      {
        swift_once();
      }

      v334 = v1152;
      v371 = v1150;
      if ((byte_100D90788 & 1) == 0)
      {
        goto LABEL_240;
      }

      v372 = v1152 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_100031E5C();
      sub_10003778C();
      sub_1000B7D3C();
      v373 = sub_1004B5684();
      sub_10009EEC0(v325, type metadata accessor for DisplayMetrics);
      v374 = v1149;
      v375 = v1153;
      if ((v373 & 1) != 0 || (*(v372 + *(v371 + 40) + 1) & 0xC0) != 0x40)
      {
        v1151 = v372;
        v664 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
        sub_100006378();
        v665 = v1142;
        sub_1000B7D3C();
        type metadata accessor for ModalViewState.MapViewModal(0);
        v666 = v1108;
        sub_100003934();
        sub_10001B350(v667, v668, v669, v670);
        v671 = v1146;
        swift_storeEnumTagMultiPayload();
        sub_1000BC008();
        v673 = v672;
        sub_10009EEC0(v666, type metadata accessor for ModalViewState);
        sub_10009EEC0(v665, type metadata accessor for ModalViewState);
        if ((v673 & 1) == 0)
        {
          goto LABEL_240;
        }

        v674 = sub_100003BCC(v1033);
        v675 = v1145;
        sub_10001B350(v674, v676, v677, v1145);
        v678 = sub_100003BCC(v1034);
        sub_10001B350(v678, v679, v680, v1148);
        v681 = sub_100003BCC(&v1037);
        sub_10001B350(v681, v682, v683, v1147);
        v684 = sub_100021088(&v1013);
        sub_10001B350(v684, v685, v686, v374);
        v687 = sub_100003BCC(v1041);
        sub_10001B350(v687, v688, v689, v375);
        v690 = sub_100003BCC(v1044);
        sub_10001B350(v690, v691, v692, v1144);
        v693 = sub_100003BCC(&v1045);
        sub_10001B350(v693, v694, v695, v371);
        v696 = v982;
        swift_storeEnumTagMultiPayload();
        v697 = sub_1000A7CCC();
        sub_10001B350(v697, v698, v699, v671);
        sub_100006378();
        sub_100021424();
        sub_1000B7D3C();
        sub_1000519E0();
        sub_100051BBC();
        v700 = sub_100007FC4();
        sub_1000038B4(v700, v701, v671);
        if (v332)
        {
          sub_1000180EC(v696, &qword_100CA65E8);
        }

        else
        {
          sub_100014B40();
          sub_10009EEC0(v664, v832);
          sub_10001F304();
          sub_100620EDC();
        }

        v833 = v985;
        sub_10001F304();
        sub_100620EDC();
        v834 = *(v334 + 16);
        LODWORD(v1143) = *(v334 + 24);
        sub_100021424();
        sub_100051BBC();
        sub_10000C814(v664);
        v1146 = v834;
        if (v332)
        {
          sub_10000EC10();
          sub_1000B7D3C();
          v835 = sub_100016298();
          v837 = sub_100024D10(v835, v836, v675);
          v838 = v664;
          v839 = v837;

          if (v839 != 1)
          {
            sub_1000180EC(v838, &qword_100CA6640);
          }
        }

        else
        {
          sub_10002C8CC();
          sub_100620EDC();
        }

        sub_100051BBC();
        sub_1000038B4(v833, 1, v1148);
        if (v332)
        {
          sub_10002014C();
          sub_100020968();
          sub_1000B7D3C();
          sub_10000C814(v833);
          v840 = *(&v996 + 1);
          v841 = v995;
          if (!v332)
          {
            sub_1000180EC(v833, &qword_100CA6638);
          }
        }

        else
        {
          sub_10000CD2C();
          sub_100620EDC();
          v840 = *(&v996 + 1);
          v841 = v995;
        }

        sub_100032590();
        sub_100051BBC();
        sub_100005404(v833);
        if (v332)
        {
          sub_10003C680();
          sub_1000B7D3C();
          sub_100005404(v833);
          v842 = v1005;
          if (!v332)
          {
            sub_1000180EC(v833, &qword_100CA6630);
          }
        }

        else
        {
          sub_100017B7C();
          sub_100620EDC();
          v842 = v1005;
        }

        sub_1000113EC();
        sub_100051BBC();
        sub_100003BDC(v673);
        if (v332)
        {
          sub_10006976C();
          sub_1000B7D3C();
          sub_100003BDC(v673);
          v843 = v1144;
          if (!v332)
          {
            sub_1000180EC(v673, &qword_100CA6628);
          }
        }

        else
        {
          sub_100013A48();
          sub_100620EDC();
          v843 = v1144;
        }

        sub_1000325C0();
        sub_100051BBC();
        sub_10000554C(v374);
        if (v332)
        {
          sub_100008AEC();
          sub_1000B7D3C();
          sub_10000554C(v374);
          if (!v332)
          {
            sub_1000180EC(v374, &qword_100CA6620);
          }
        }

        else
        {
          sub_10004E800();
          sub_100620EDC();
        }

        sub_100051BBC();
        v844 = sub_1000182B8();
        sub_1000038B4(v844, v845, v843);
        if (v332)
        {
          sub_100016C70();
          sub_1000B7D3C();
          v846 = sub_1000182B8();
          sub_1000038B4(v846, v847, v843);
          if (!v332)
          {
            sub_1000180EC(v841, &qword_100CA6618);
          }
        }

        else
        {
          sub_100049A3C();
          sub_100620EDC();
        }

        sub_100052378(&v1045);
        sub_100051BBC();
        sub_100003BFC(v840);
        if (v332)
        {
          sub_10001C83C();
          sub_1000B7D3C();
          sub_100003BFC(v840);
          v848 = v842;
          if (!v332)
          {
            sub_1000180EC(v840, &qword_100CA6610);
          }
        }

        else
        {
          sub_100028844();
          sub_100620EDC();
          v848 = v842;
        }

        sub_10001F304();
        v849 = v1142;
        sub_100620EDC();
        sub_10001327C();
        sub_1000BCED8();
        v851 = *(v850 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
        type metadata accessor for MainState._Storage(0);
        sub_100003B6C();
        sub_100071D94();
        sub_10003E038(v1146, v1143, v1021, v1022, v1024, v1025[0], v1019, v1025[1], v848, v849, v971, v972, v973, v974, v975, v976, v840, v851, v977, v978, v979, v980, v981, v982, v983, v984, v985, v986, v987, v988, v989, v990, v991, v992, v993);
LABEL_135:
        v334 = v653;

LABEL_231:
      }

      else
      {
        v376 = sub_10022C350(&qword_100CA6660);
        v377 = v1107;
        sub_10001B350(v1107, 2, 3, v376);
        v378 = v377;
        v379 = v1139;
        v380 = v334;
LABEL_37:
        v334 = sub_10061EA14(v378, v379, v380, v1132[0], v1151);
        sub_10009EEC0(v377, type metadata accessor for WeatherMapTrackingState);
      }

      return v334;
    default:
      (*(v1122 + 32))(v321, v325, v316);
      LocationModel.identifier.getter();
      sub_10000E7B0();
      sub_10001B350(v326, v327, v328, v1134);
      sub_10000E7B0();
      sub_1000AF5E4(v329, v330, v331);
      sub_100051BBC();
      sub_100003A40(v313);
      if (v332)
      {
        sub_100074CF0();
        v576 = v1139;
        sub_1000B7D3C();
        sub_100003A40(v313);
        v575 = v1152;
        if (!v332)
        {
          sub_1000180EC(v313, &qword_100CA65B8);
        }
      }

      else
      {
        sub_1000046C0();
        sub_100620EDC();
        v575 = v1152;
        v576 = v1139;
      }

      v577 = *(v576 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
      v578 = *(v576 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
      v579 = *(v576 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
      v580 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v576);
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C();
      v581 = sub_10003DDB8(v298, v580, v577, 1, v578, v579);
      v582 = sub_100020EE4(&v1157);
      sub_10001B350(v582, v583, v584, v1146);
      v334 = sub_10061D0E8(v581, v578, v575);

      sub_1000180EC(v578, &qword_100CA65E8);
      (*(v1122 + 8))(v321, v316);
      return v334;
  }
}

void sub_1000B7B40(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{
  v6 = *(v3 + 2256);

  _os_log_impl(a1, v6, a3, a2, v4, 0x16u);
}

uint64_t sub_1000B7BA4()
{

  return swift_unknownObjectRelease();
}

void *sub_1000B7BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a2 - 256);
  *v2 = a1;
  return v2;
}

uint64_t sub_1000B7C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 224);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t type metadata accessor for NotificationsOptInInput()
{
  result = qword_100CCBA48;
  if (!qword_100CCBA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B7C90()
{
  result = type metadata accessor for ViewState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B7D3C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000B7D94()
{
  result = sub_1000B7DB8();
  byte_100D90788 = result & 1;
  return result;
}

uint64_t sub_1000B7DB8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1 || (DeviceIsSlow() & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for MapsExperiments();
  return static MapsExperiments.isPinnedMapEnabledOnIpad.getter() & 1;
}

void sub_1000B7E38()
{
  v1 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for BannerStateComputer();
  v8 = *(v0 + *(v7 + 20));
  v9 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  if (*(v8 + v9 + *(type metadata accessor for ViewState(0) + 36) + 8) == 1 && *(v0 + *(v7 + 28)) == 1)
  {
    v10 = v8 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v10 + *(type metadata accessor for EnvironmentState() + 68)))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = type metadata accessor for ContentStatusBanner();
    sub_10087ECB4(&v6[*(v12 + 24)]);
    *v6 = v11;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    sub_10001B350(v6, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for ContentStatusBanner();
    sub_10001B350(v3, 1, 1, v13);
  }

  sub_1000B8080();
}

uint64_t sub_1000B7FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    v7 = sub_10022C350(&unk_100CB2CF0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000B8080()
{
  sub_100022B34();
  v2 = sub_10022C350(&qword_100CA5010);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10002841C();
  type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v4);
  v5 = sub_10001EBE0();
  sub_1000038B4(v5, v6, v7);
  if (v8)
  {
    v9 = sub_10000E78C();
    sub_1000180EC(v9, v10);
    sub_10004E570();
    sub_1000B8260();
    sub_1000B84FC(v1, v0);
    sub_1000315A8();
  }

  else
  {
    sub_10000E78C();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005C10();
    sub_100239AA0();
    sub_1000B84FC(v1, v0);
    sub_10002FED8();
  }
}

uint64_t sub_1000B81BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 2;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10022C350(&unk_100CB2CF0);
    v10 = a1 + *(a3 + 24);

    return sub_100024D10(v10, a2, v9);
  }
}

uint64_t sub_1000B8260()
{
  sub_100020714();
  v3 = sub_1000B8384(v1, v2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v0;
    v7 = *(*v0 + 24);
    sub_10022C350(&qword_100CA3A30);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    sub_1000B84FC(*(*(v14 + 48) + 16 * v5), *(*(v14 + 48) + 16 * v5 + 8));
    v8 = type metadata accessor for ContentStatusBanner();
    sub_1000037E8();
    sub_100107040();
    sub_100072E1C();
    _NativeDictionary._delete(at:)();
    *v0 = v14;
    v9 = sub_10000FEF4();
    v12 = v8;
  }

  else
  {
    type metadata accessor for ContentStatusBanner();
    v9 = sub_100007E1C();
  }

  return sub_10001B350(v9, v10, v11, v12);
}

unint64_t sub_1000B8384(uint64_t a1, uint64_t a2)
{
  sub_10006A6C0();
  if (!a2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = 2;
LABEL_5:
    Hasher._combine(_:)(v3);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1uLL);
  sub_10003140C();
  String.hash(into:)();
LABEL_7:
  Hasher._finalize()();
  v4 = sub_100003984();

  return sub_1000B8418(v4, v5, v6);
}

unint64_t sub_1000B8418(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1000B84FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

BOOL sub_1000B855C(char *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v36 = v2;
  v37 = v3;
  v7 = a2[1];
  v8 = LocationAuthorizationState.rawValue.getter(a1[1]);
  v10 = v9;
  v12 = v8 == LocationAuthorizationState.rawValue.getter(v7) && v10 == v11;
  if (v12)
  {
  }

  else
  {
    v13 = sub_10001F23C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = a2[2];
  v15 = PredictedLocationsAuthorizationState.rawValue.getter(a1[2]);
  v17 = v16;
  if (v15 == PredictedLocationsAuthorizationState.rawValue.getter(v14) && v17 == v18)
  {
  }

  else
  {
    v20 = sub_10001F23C();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (!sub_1000B89C4(a1[3], a2[3]))
  {
    return 0;
  }

  v21 = type metadata accessor for EnvironmentState();
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v21[9];
  v23 = *&a1[v22];
  v24 = *&a1[v22 + 8];
  v25 = &a2[v22];
  v26 = v23 == *v25 && v24 == *(v25 + 1);
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  if (*&a1[v21[14]] != *&a2[v21[14]])
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v12)
  {
    return 0;
  }

  v27 = v21[18];
  v28 = *&a1[v27 + 16];
  v34[0] = *&a1[v27];
  v34[1] = v28;
  v29 = *&a1[v27 + 32];
  v30 = &a2[v27];
  v31 = *v30;
  v32 = *(v30 + 1);
  v34[2] = v29;
  v35[0] = v31;
  v33 = *(v30 + 2);
  v35[1] = v32;
  v35[2] = v33;
  if ((sub_1000B8A2C(v34, v35) & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  return v12;
}

unint64_t LocationAuthorizationState.rawValue.getter(char a1)
{
  result = 0x7265746544746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6465696E6564;
      break;
    case 4:
      result = 0x7463697274736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B8844()
{
  sub_1000186F0();
  sub_100017D38();
  v4 = v2;
  v5 = v0;
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v5 = 0xE700000000000000;
      v4 = 0x64656C62616E65;
      break;
    case 3:
      v5 = 0x8000000100ABA9E0;
      v4 = v3 + 6;
      break;
    case 4:
      v5 = 0x8000000100ABAA00;
      v4 = v3 + 7;
      break;
    default:
      v5 = 0x8000000100ABA9C0;
      v4 = 0xD000000000000012;
      break;
  }

  switch(v1)
  {
    case 1:
      break;
    case 2:
      v0 = 0xE700000000000000;
      v2 = 0x64656C62616E65;
      break;
    case 3:
      v0 = 0x8000000100ABA9E0;
      v2 = v3 + 6;
      break;
    case 4:
      v0 = 0x8000000100ABAA00;
      v2 = v3 + 7;
      break;
    default:
      v0 = 0x8000000100ABA9C0;
      v2 = 0xD000000000000012;
      break;
  }

  if (v4 == v2 && v5 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0();
  }

  return v8 & 1;
}

BOOL sub_1000B89C4(char a1, char a2)
{
  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a2 == 4)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_1000B8A2C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v33 = *a2;
  v34 = v4;
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v33, &v32);
    sub_1000B8CEC(&v34, &v32);
    v6 = sub_100019FE8();
    sub_1000B8D48(&v34);
    sub_1000B8D48(&v33);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v32 = a1[1];
  v7 = a2[1];
  v31 = v7;
  if (v32)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v31, &v30);
    sub_1000B8CEC(&v32, &v30);
    v8 = sub_100019FE8();
    sub_1000B8D48(&v32);
    sub_1000B8D48(&v31);
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a2[2];
  v29 = v10;
  v30 = v9;
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v29, &v28);
    sub_1000B8CEC(&v30, &v28);
    v11 = sub_100019FE8();
    sub_1000B8D48(&v30);
    sub_1000B8D48(&v29);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = a1[3];
  v13 = a2[3];
  v27 = v13;
  v28 = v12;
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v27, &v26);
    sub_1000B8CEC(&v28, &v26);
    v14 = sub_100019FE8();
    sub_1000B8D48(&v28);
    sub_1000B8D48(&v27);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = a1[4];
  v16 = a2[4];
  v25 = v16;
  v26 = v15;
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v25, &v24);
    sub_1000B8CEC(&v26, &v24);
    v17 = sub_100019FE8();
    sub_1000B8D48(&v26);
    sub_1000B8D48(&v25);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  v23 = v19;
  v24 = v18;
  if (v18)
  {
    if (v19)
    {
      sub_1000B8CA8();
      sub_1000B8CEC(&v23, v22);
      sub_1000B8CEC(&v24, v22);
      v20 = static NSObject.== infix(_:_:)();
      sub_1000B8D48(&v24);
      sub_1000B8D48(&v23);
      if (v20)
      {
        return 1;
      }
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1000B8CA8()
{
  result = qword_100CBC9B8;
  if (!qword_100CBC9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CBC9B8);
  }

  return result;
}

uint64_t sub_1000B90CC(uint64_t result, double a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1000B90D8()
{

  return type metadata accessor for LocationComponentHeaderViewModel(0);
}

uint64_t sub_1000B90F0()
{

  return swift_beginAccess();
}

uint64_t sub_1000B911C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000B9164()
{

  return Error.logSafeDescription.getter();
}

uint64_t sub_1000B9194()
{
}

uint64_t sub_1000B91E8()
{

  return Hasher.init(_seed:)();
}

void sub_1000B9218()
{
  sub_10000C778();
  v33 = v0;
  v34 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = *(v6 + 16);
  if (v15 == *(v4 + 16) && v15 && v6 != v4)
  {
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = v6 + v16;
    v18 = v4 + v16;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v21 = (v19 - 8);
    v30 = *(v19 + 56);
    v31 = v20;
    while (1)
    {
      v22 = v31;
      (v31)(v14, v17, v8);
      if (!v15)
      {
        break;
      }

      sub_1000C8C48();
      v23 = v19;
      v22();
      sub_1000E1334(v32, v33);
      sub_10000810C();
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v21;
      v26 = sub_1000314C8();
      v25(v26);
      v27 = sub_100027E24();
      v25(v27);
      if (v24)
      {
        v18 += v30;
        v17 += v30;
        v28 = v15-- == 1;
        v19 = v23;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_10000536C();
  }
}

void sub_1000B946C()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for LocationModel();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA838);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA840);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA840);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v29, v30, v31, v32);
          v35 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v22 = sub_10022C350(v21);
        sub_1000BAEAC(v22);
        if (v9)
        {
          break;
        }

        v23 = sub_1000522BC();
        v24(v23);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v33 = sub_1002E4D14();
          v34(v33);
          break;
        }

        v25 = sub_1000377B0();
        v26(v25);
        sub_1000E1628(&qword_100CAA848, 255, &type metadata accessor for LocationModel);
        sub_1000E15F4();
        v27 = sub_1001921F8();
        v1(v27);
        v28 = sub_1002E52D0();
        v1(v28);
        v10 = v35;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

uint64_t sub_1000B97CC()
{

  return swift_allocObject();
}

uint64_t sub_1000B97E4()
{
}

uint64_t sub_1000B9858(uint64_t a1)
{
  sub_10001B350(a1, 1, 1, v1[265]);
  v2 = v1[203];
  v3 = v1[266];

  return sub_10001B350(v2, 1, 1, v3);
}

uint64_t sub_1000B98A4(uint64_t a1)
{
  *(v1 - 160) = a1;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000B9A0C()
{

  return sub_1000D394C();
}

uint64_t sub_1000B9A44()
{

  return static Logger.automation.getter();
}

uint64_t sub_1000B9AB0(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_1000B9AD0()
{
  v2 = *(v0 - 688);

  return sub_10011CA9C(v2, type metadata accessor for DetailChartsViewModel);
}

uint64_t sub_1000B9AFC()
{

  return swift_once();
}

uint64_t sub_1000B9B2C(uint64_t a1)
{
  v4 = *(v1 - 168);

  return sub_10001B350(v4, 1, 1, a1);
}

void sub_1000B9B64()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA828);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA830);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA830);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v29, v30, v31, v32);
          v35 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v22 = sub_10022C350(v21);
        sub_1000BAEAC(v22);
        if (v9)
        {
          break;
        }

        v23 = sub_1000522BC();
        v24(v23);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v33 = sub_1002E4D14();
          v34(v33);
          break;
        }

        v25 = sub_1000377B0();
        v26(v25);
        sub_1000E1628(&qword_100CA3A00, 255, &type metadata accessor for Location);
        sub_1000E15F4();
        v27 = sub_1001921F8();
        v1(v27);
        v28 = sub_1002E52D0();
        v1(v28);
        v10 = v35;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

uint64_t sub_1000B9E54()
{

  return type metadata accessor for WeatherAlert.Prominence();
}

void sub_1000B9E84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_8;
      }

      break;
    case 2:
      if (a6 == 2)
      {
        sub_1000B9424();
        if (v6)
        {
          goto LABEL_8;
        }
      }

      break;
    case 3:
      return;
    default:
      if (!a6)
      {
LABEL_8:

        sub_1000B9424();
      }

      break;
  }
}

void sub_1000B9F58()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for LocationDisplayContext();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA810);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA818);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA818);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v29, v30, v31, v32);
          v35 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v22 = sub_10022C350(v21);
        sub_1000BAEAC(v22);
        if (v9)
        {
          break;
        }

        v23 = sub_1000522BC();
        v24(v23);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v33 = sub_1002E4D14();
          v34(v33);
          break;
        }

        v25 = sub_1000377B0();
        v26(v25);
        sub_1000E1628(&qword_100CAA820, 255, &type metadata accessor for LocationDisplayContext);
        sub_1000E15F4();
        v27 = sub_1001921F8();
        v1(v27);
        v28 = sub_1002E52D0();
        v1(v28);
        v10 = v35;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

uint64_t sub_1000BA240(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (sub_1000BA238(*a1, *a2) & 1) != 0 && (sub_1000BA494(), (v4) && (sub_1000BA494(), (v5) && (v6 = type metadata accessor for NotificationsState(), type metadata accessor for PredictedLocationsNotificationSubscription.Kind(), sub_10001C59C(), sub_1000BA524(v7, v8), sub_10002C598(), dispatch thunk of RawRepresentable.rawValue.getter(), sub_10002C598(), dispatch thunk of RawRepresentable.rawValue.getter(), v12 == v11))
  {
    v9 = a1[*(v6 + 32)] ^ a2[*(v6 + 32)] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000BA344()
{
  sub_1000186F0();
  sub_100017D38();
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v4 = 0xE700000000000000;
      v3 = 0x6465776F6C6C61;
      break;
    case 2:
      v3 = sub_1000B0ED0();
      break;
    case 3:
      v3 = 0xD000000000000011;
      v4 = 0x8000000100ABABC0;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE700000000000000;
      v2 = 0x6465776F6C6C61;
      break;
    case 2:
      sub_1000F0040();
      break;
    case 3:
      sub_10002168C();
      v0 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0();
  }

  return v8 & 1;
}

uint64_t sub_1000BA4DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BA524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BA584(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_100073B0C(*(a1 + 1), *(a2 + 1));
    if (v5 & 1) != 0 && a1[16] == a2[16] && a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && (v6 = type metadata accessor for NotificationsOptInState(), (static Date.== infix(_:_:)()) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7))
    {
      v2 = a1[*(v6 + 72)] ^ a2[*(v6 + 72)] ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1000BA6B4()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SearchViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CA6600);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  v13 = sub_10022C350(&qword_100CDC280);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10001320C();
  type metadata accessor for ListViewState._Storage();
  if ((sub_1000BAC0C() & 1) == 0)
  {
    goto LABEL_17;
  }

  v15 = type metadata accessor for ViewState(0);
  sub_1000BA9A0();
  if ((v16 & 1) == 0 || *(v5 + v15[6]) != *(v3 + v15[6]) || *(v5 + v15[7]) != *(v3 + v15[7]))
  {
    goto LABEL_17;
  }

  v17 = v15[8];
  v18 = *(v13 + 48);
  sub_1000302D8(v5 + v17, v0, &qword_100CA6600);
  sub_1000302D8(v3 + v17, v0 + v18, &qword_100CA6600);
  sub_1000038B4(v0, 1, v6);
  if (!v19)
  {
    sub_1000302D8(v0, v1, &qword_100CA6600);
    sub_1000038B4(v0 + v18, 1, v6);
    if (!v19)
    {
      sub_100019FD0();
      sub_1000AFEF8();
      sub_1000BB254();
      v22 = v21;
      sub_1000B005C(v10, type metadata accessor for SearchViewState);
      sub_1000B005C(v1, type metadata accessor for SearchViewState);
      sub_1000180EC(v0, &qword_100CA6600);
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    sub_10003A3D0();
    sub_1000B005C(v1, v20);
LABEL_13:
    sub_1000180EC(v0, &qword_100CDC280);
    goto LABEL_17;
  }

  sub_1000038B4(v0 + v18, 1, v6);
  if (!v19)
  {
    goto LABEL_13;
  }

  sub_1000180EC(v0, &qword_100CA6600);
LABEL_15:
  if (sub_1000BB930(v5 + v15[9], v3 + v15[9]))
  {
    sub_1000BBA50((v5 + v15[10]), (v3 + v15[10]));
  }

LABEL_17:
  sub_10000536C();
}

void sub_1000BA9A0()
{
  sub_10000C778();
  v1 = type metadata accessor for VFXTestViewState();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v11 = sub_10022C350(&qword_100CDC288);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10000C790();
  sub_1000A078C();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001F968();
    sub_1000A078C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100014F5C();
      sub_1000AFEF8();
      sub_1007488C4(v9, v5);
      sub_1000B005C(v5, type metadata accessor for VFXTestViewState);
      sub_1000B005C(v9, type metadata accessor for VFXTestViewState);
LABEL_9:
      sub_100075088();
      sub_1000B005C(v0, v14);
      goto LABEL_10;
    }

    sub_10004EB7C();
    sub_1000B005C(v9, v13);
  }

  else
  {
    sub_10001F968();
    sub_1000A078C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_1000BAD54();

      goto LABEL_9;
    }
  }

  sub_1000180EC(v0, &qword_100CDC288);
LABEL_10:
  sub_10000536C();
}

uint64_t sub_1000BAC0C()
{
  sub_100003A00();
  v4 = *(v2 + 24);
  if (*(v3 + 24) == 1)
  {
    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(v1 + 16) != *(v0 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_25;
    }
  }

  if (*(v1 + 25) != *(v0 + 25) || *(v1 + 26) != *(v0 + 26) || *(v1 + 27) != *(v0 + 27))
  {
    goto LABEL_25;
  }

  v5 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = *(v1 + 56);
  v7 = *(v0 + 56);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = *(v1 + 48) == *(v0 + 48) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v7)
  {
    goto LABEL_25;
  }

  if (*(v1 + 64) == *(v0 + 64))
  {
    v11 = *(v1 + 80);
    v12 = *(v0 + 80);
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      v13 = *(v1 + 72) == *(v0 + 72) && v11 == v12;
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v12)
    {
      goto LABEL_25;
    }

    if (*(v1 + 88) == *(v0 + 88))
    {
      v9 = *(v1 + 89) ^ *(v0 + 89) ^ 1;
      return v9 & 1;
    }
  }

LABEL_25:
  v9 = 0;
  return v9 & 1;
}

BOOL sub_1000BAD54()
{
  sub_100003B38();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v1 = sub_100003810(active);
  __chkstk_darwin(v1);
  sub_1000281F0();
  __chkstk_darwin(v2);
  sub_100030230();
  sub_100066B44();
  sub_100066B44();
  v3 = sub_100003984();
  v5 = sub_1000BAF7C(v3, v4);
  sub_100040B64();
  sub_100040B64();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v6)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v6)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v6)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v6)
  {
    return 0;
  }

  sub_100003CE8();
  return v6 != 0;
}

void sub_1000BAED4(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  v5 = (v4 + *(v3 + 128));
  *v5 = 0;
  v5[1] = 0;
}

uint64_t sub_1000BAEF0()
{
}

uint64_t sub_1000BAF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_10022C350(a5);
}

uint64_t sub_1000BAF48()
{

  return sub_100095588();
}

uint64_t sub_1000BAF7C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10001365C();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v10 = sub_100003810(active);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CE2448);
  sub_100003810(v14);
  sub_100003828();
  v16 = __chkstk_darwin(v15);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  sub_1000BB194(a1, &v24 - v17);
  sub_1000BB194(a2, &v18[v19]);
  sub_10000554C(v18);
  if (!v21)
  {
    sub_1000BB194(v18, v13);
    sub_10000554C(&v18[v19]);
    if (!v21)
    {
      (*(v7 + 32))(v2, &v18[v19], v5);
      v20 = static Location.Identifier.== infix(_:_:)();
      v22 = *(v7 + 8);
      v22(v2, v5);
      v22(v13, v5);
      sub_1000BB1F8(v18);
      return v20 & 1;
    }

    (*(v7 + 8))(v13, v5);
LABEL_9:
    sub_10002C4AC(v18, &qword_100CE2448);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000554C(&v18[v19]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1000BB1F8(v18);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1000BB194(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for LocationViewerActiveLocationState();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1000BB1F8(uint64_t a1)
{
  active = type metadata accessor for LocationViewerActiveLocationState();
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

void sub_1000BB254()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Location();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CF8();
  v14 = sub_10022C350(&qword_100CAEE78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *v4 == *v2 && v4[1] == v2[1];
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = type metadata accessor for SearchViewState(0);
    if ((sub_1000BB564(v4 + v19[5], v2 + v19[5]) & 1) != 0 && *(v4 + v19[6]) == *(v2 + v19[6]))
    {
      v31 = v7;
      v20 = v19[7];
      v21 = *(v14 + 48);
      sub_100035AD0(v4 + v20, v17, &qword_100CA65D8);
      sub_100035AD0(v2 + v20, &v17[v21], &qword_100CA65D8);
      sub_100003A40(v17);
      if (!v18)
      {
        sub_100035AD0(v17, v0, &qword_100CA65D8);
        sub_100003A40(&v17[v21]);
        if (!v22)
        {
          v25 = v31;
          (*(v31 + 32))(v11, &v17[v21], v5);
          sub_100005924();
          sub_10036AD7C(v26, v27);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *(v25 + 8);
          v28(v11, v5);
          v29 = sub_100031474();
          (v28)(v29);
          sub_1000180EC(v17, &qword_100CA65D8);
          goto LABEL_17;
        }

        v23 = sub_100031474();
        v24(v23);
LABEL_16:
        sub_1000180EC(v17, &qword_100CAEE78);
        goto LABEL_17;
      }

      sub_100003A40(&v17[v21]);
      if (!v18)
      {
        goto LABEL_16;
      }

      sub_1000180EC(v17, &qword_100CA65D8);
    }
  }

LABEL_17:
  sub_10000536C();
}

uint64_t sub_1000BB818(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BB878()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BB8D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BB930(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  switch(*(a2 + 16))
  {
    case 1:
      if (v2 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (v2 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v2 != 3)
      {
        return 0;
      }

      break;
    default:
      if (*(a1 + 16))
      {
        return 0;
      }

      break;
  }

  if (*(a2 + 17) == 1)
  {
    if ((*(a1 + 17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a1 + 17))
  {
    return 0;
  }

  v3 = *(a1 + 18);
  if (!*(a2 + 18))
  {
    if (!*(a1 + 18))
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (*(a2 + 18) == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v3 != 2)
  {
    return 0;
  }

LABEL_18:
  type metadata accessor for DisplayMetrics();

  return static DynamicTypeSize.== infix(_:_:)();
}

uint64_t sub_1000BBA50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      goto LABEL_36;
    }
  }

  else if (v4 == 4)
  {
    if (v5 != 4)
    {
      goto LABEL_36;
    }
  }

  else if (v4 != v5 || (v5 & 0xFE) == 4)
  {
    goto LABEL_36;
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      v9 = v8 & 0xC0;
      v10 = (v8 ^ v7) & 1;
      if (v9 != 64 || v10 != 0)
      {
        goto LABEL_36;
      }
    }

    else if (v8 != 128)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = (v8 ^ v7) & 1;
    if (v8 > 0x3F || v12 != 0)
    {
      goto LABEL_36;
    }
  }

  v14 = type metadata accessor for WeatherMapPresentationState(0);
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_36;
  }

  v15 = v14[7];
  v16 = &a1[v15];
  v17 = *&a1[v15 + 8];
  v18 = &a2[v15];
  v19 = *(v18 + 1);
  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_34;
    }

LABEL_36:
    v21 = 0;
    return v21 & 1;
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  v20 = *v16 == *v18 && v17 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  if ((sub_1000BBBA8(&a1[v14[8]], &a2[v14[8]]) & 1) == 0)
  {
    goto LABEL_36;
  }

  v21 = a1[v14[9]] ^ a2[v14[9]] ^ 1;
  return v21 & 1;
}

uint64_t sub_1000BBBA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for WeatherMapTrackingState(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = (v17 - v16);
  v19 = sub_10022C350(&qword_100CB1CA0);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  sub_10000C8C8();
  v22 = (v2 + *(v21 + 56));
  sub_1000BBEF8(a1, v2);
  sub_1000BBEF8(a2, v22);
  v23 = sub_10022C350(&qword_100CA6660);
  switch(sub_100024D10(v2, 3, v23))
  {
    case 1u:
      if (sub_100036CC8() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_100036CC8() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (sub_100036CC8() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1000059AC();
      sub_1000BBFB0(v2, v25);
      v26 = 1;
      return v26 & 1;
    default:
      sub_10000FDE0();
      sub_1000BBEF8(v2, v18);
      v24 = *(v23 + 48);
      if (sub_100036CC8())
      {
        (*(v7 + 8))(&v18[v24], v5);
LABEL_7:
        sub_1000180EC(v2, &qword_100CB1CA0);
        goto LABEL_8;
      }

      v28 = *v18;
      v35 = *v22;
      v36 = v28;
      v29 = *(v7 + 32);
      v29(v13, &v18[v24], v5);
      v29(v11, &v22[v24], v5);
      if (v36 != v35)
      {
        v30 = *(v7 + 8);
        v30(v11, v5);
        v30(v13, v5);
        sub_1000059AC();
        sub_1000BBFB0(v2, v31);
LABEL_8:
        v26 = 0;
        return v26 & 1;
      }

      v26 = static WeatherMapOverlayKind.== infix(_:_:)();
      v32 = *(v7 + 8);
      v32(v11, v5);
      v32(v13, v5);
      sub_1000059AC();
      sub_1000BBFB0(v2, v33);
      return v26 & 1;
  }
}

uint64_t sub_1000BBEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1000BBF54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BBFB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1000BC008()
{
  sub_10000C778();
  v64 = v5;
  v65 = v6;
  v7 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v61 = v9;
  v10 = sub_1000038CC();
  v62 = type metadata accessor for ModalViewState.MapViewModal(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v56 = v12;
  v13 = sub_10022C350(&qword_100CA65E0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v57 = v15;
  v60 = sub_10022C350(&qword_100CDA930);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v63 = v17;
  v18 = sub_1000038CC();
  v58 = type metadata accessor for LocationPreviewViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v59 = v20;
  v21 = sub_1000038CC();
  type metadata accessor for ModalViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  sub_10000C930();
  __chkstk_darwin(v23);
  sub_10003C868();
  __chkstk_darwin(v24);
  sub_100017E40();
  v26 = __chkstk_darwin(v25);
  v28 = (&v56 - v27);
  __chkstk_darwin(v26);
  sub_10003A2D4();
  __chkstk_darwin(v29);
  v31 = &v56 - v30;
  v32 = sub_10022C350(&qword_100CDA938);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_10000C8C8();
  v35 = (v0 + *(v34 + 56));
  sub_1000BCB40(v64, v0);
  sub_1000BCB40(v65, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100010C3C();
      sub_1000BCB40(v0, v1);
      if (sub_100014300() != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    case 2u:
      sub_100010C3C();
      sub_1000BCB40(v0, v28);
      v41 = *v28;
      if (sub_100014300() != 2)
      {
        goto LABEL_13;
      }

      v42 = *v35;
      type metadata accessor for NotificationsOptInViewState._Storage();
      sub_1002D4854(v41, v42);
      goto LABEL_12;
    case 3u:
      sub_100010C3C();
      sub_1000BCB40(v0, v4);
      v43 = *v4;
      if (sub_100014300() != 3)
      {
LABEL_13:

        goto LABEL_25;
      }

      v44 = *v35;
      type metadata accessor for ReportWeatherViewState._Storage();
      sub_1002D88C8(v43, v44);
LABEL_12:

      goto LABEL_35;
    case 4u:
      sub_100010C3C();
      sub_1000BCB40(v0, v3);
      if (sub_100014300() != 4)
      {
        sub_1000180EC(v3, &qword_100CA65E0);
        goto LABEL_25;
      }

      v38 = *(v60 + 48);
      v39 = v63;
      sub_1003C9FB0(v3, v63);
      sub_1003C9FB0(v35, v39 + v38);
      v40 = v62;
      if (sub_100024D10(v39, 1, v62) == 1)
      {
        if (sub_100024D10(v39 + v38, 1, v40) == 1)
        {
          sub_1000180EC(v39, &qword_100CA65E0);
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v51 = v57;
      sub_1007F43F4(v39, v57);
      if (sub_100024D10(v39 + v38, 1, v40) == 1)
      {
        sub_1000D4010();
        sub_1000E01F8(v51, v52);
LABEL_34:
        sub_1000180EC(v39, &qword_100CDA930);
        goto LABEL_35;
      }

      sub_100017E28();
      v53 = v56;
      sub_1007F4464(v39 + v38, v56);
      v54 = sub_10000C8E8();
      sub_1007EE674(v54, v55);
      sub_1000E01F8(v53, type metadata accessor for ModalViewState.MapViewModal);
      sub_1000E01F8(v51, type metadata accessor for ModalViewState.MapViewModal);
      sub_1000180EC(v39, &qword_100CA65E0);
LABEL_35:
      sub_100013C84();
LABEL_26:
      sub_10000536C();
      return;
    case 5u:
      sub_100010C3C();
      sub_1000BCB40(v0, v2);
      if (sub_100014300() == 5)
      {
        sub_100075018();
        v45 = v61;
        sub_1007F4464(v35, v61);
        sub_10000C8E8();
        sub_1007EF290();
        sub_1000E01F8(v45, type metadata accessor for ModalViewState.LocationDetailModal);
        sub_1000E01F8(v2, type metadata accessor for ModalViewState.LocationDetailModal);
        goto LABEL_35;
      }

      sub_10000682C();
      v37 = v2;
      goto LABEL_24;
    case 6u:
      if (sub_100014300() == 6)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    case 7u:
      if (sub_100014300() != 7)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    default:
      sub_100010C3C();
      sub_1000BCB40(v0, v31);
      if (!sub_100014300())
      {
        sub_100023278();
        v46 = v59;
        sub_1007F4464(v35, v59);
        sub_1006E6E98();
        if (v47 & 1) != 0 && (sub_10043F9F0(&v31[*(v58 + 20)], v46 + *(v58 + 20)))
        {
          sub_1009614B0(&v31[*(v58 + 24)], v46 + *(v58 + 24));
          sub_10001CDBC();
          sub_1000E01F8(v46, v48);
        }

        else
        {
          sub_10001CDBC();
          sub_1000E01F8(v46, v50);
        }

        sub_10001CDBC();
        sub_1000E01F8(v31, v49);
        goto LABEL_35;
      }

      sub_10001CDBC();
      v37 = v31;
LABEL_24:
      sub_1000E01F8(v37, v36);
LABEL_25:
      sub_1000180EC(v0, &qword_100CDA938);
      goto LABEL_26;
  }
}

uint64_t sub_1000BC6C0()
{

  return swift_task_create();
}

uint64_t sub_1000BC6F0(uint64_t a1)
{

  return sub_100024D10(v2 + v1, 1, a1);
}

uint64_t sub_1000BC728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BC784(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BC7E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BC84C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BC8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BC914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BC974()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000BC9D0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BCA28()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BCA80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BCAE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BCB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1000BCB9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BCBF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BCC54()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BCCAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BCD08()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000BCD60()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_1000BCDB8(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = *(v2 - 224);
  *(v3 + 8) = v1;
}

uint64_t sub_1000BCDDC(unint64_t *a1)
{

  return sub_10011C0A0(a1);
}

void sub_1000BCE4C()
{
  v0[560] = v1[18];
  v0[558] = v1[19];
  v0[556] = v1[20];
}

uint64_t sub_1000BCE74()
{

  return sub_1000B0F30(v0, type metadata accessor for ViewAction);
}

uint64_t sub_1000BCEE4(unint64_t *a1)
{

  return sub_10068280C(a1, v1);
}

uint64_t sub_1000BCEFC()
{

  return swift_allocObject();
}

uint64_t sub_1000BCF14()
{

  return swift_deallocObject();
}

uint64_t sub_1000BCF8C()
{
  *(v2 - 128) = v1;
  *(v2 - 120) = v0;

  return State.wrappedValue.getter();
}

void sub_1000BCFBC()
{
  sub_10000C778();
  v2 = sub_1000B8A08();
  v3 = type metadata accessor for LocationWeatherDataState(v2);
  __chkstk_darwin(v3 - 8);
  sub_100003C38();
  __chkstk_darwin(v4);
  sub_1000B9E20();
  v5 = sub_10022C350(&qword_100CAA800);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100003848();
  v40 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_1000B9E30();
  if (v0 == v1 || *(v0 + 16) != *(v1 + 16))
  {
LABEL_19:
    sub_1002E5700();
    sub_10000536C();
  }

  else
  {
    v39 = v9;
    v10 = 0;
    sub_1002E539C();
    v38 = v0;
    sub_100069460();
    v13 = v12 >> 6;
    while (v11)
    {
      sub_100074730();
      v41 = v14;
      v15 = v40;
LABEL_11:
      sub_1002E5390();
      v21 = *v20;
      v22 = v20[1];
      sub_1002E4F70();
      sub_100066B44();
      v23 = sub_10022C350(&qword_100CAA808);
      *v15 = v21;
      v15[1] = v22;
      sub_1002E4F58();
      sub_10003DE74();
      sub_10000E7B0();
      sub_10001B350(v24, v25, v26, v23);

      v16 = v39;
LABEL_12:
      sub_100051BBC();
      v27 = sub_1000BA488();
      v28 = sub_10022C350(v27);
      sub_1000038B4(v16, 1, v28);
      if (v29)
      {
        goto LABEL_19;
      }

      sub_1002E4F58();
      sub_10003DE74();
      sub_100031B34();
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        sub_100040B64();
        goto LABEL_19;
      }

      sub_1002E4F70();
      sub_100066B44();
      sub_10070EA0C();
      v33 = v32;
      sub_100040B64();
      sub_10002FDB4();
      sub_100040B64();
      v11 = v41;
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v16 = v39;
    v15 = v40;
    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v13)
      {
        sub_10022C350(&qword_100CAA808);
        sub_100003934();
        sub_10001B350(v34, v35, v36, v37);
        v41 = 0;
        goto LABEL_12;
      }

      ++v10;
      if (*(v38 + 8 * v17))
      {
        sub_10003B93C();
        v41 = v18;
        v10 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1000BD330()
{
  sub_10000C778();
  v4 = v3;
  sub_1002E5718();
  v78 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v76 = v8;
  v83 = sub_10022C350(&qword_100CAA7E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v89 = v10;
  v11 = sub_1000038CC();
  v88 = type metadata accessor for LocationAvailableDataSetState(v11);
  sub_1000037C4();
  v86 = v12;
  __chkstk_darwin(v13);
  sub_100003848();
  v77 = v14;
  sub_10000386C();
  v16 = __chkstk_darwin(v15);
  v18 = v72 - v17;
  __chkstk_darwin(v16);
  sub_100003878();
  v87 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v79 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v82 = v23;
  v24 = sub_10022C350(&qword_100CAA7E8);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v26);
  sub_10003C300();
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_37:
    sub_10000536C();
    return;
  }

  v80 = v0;
  v81 = v4;
  v27 = 0;
  v28 = v0 + 64;
  sub_100069460();
  v30 = v29 >> 6;
  v72[1] = v6 + 32;
  v73 = v1;
  v74 = v18;
  v75 = (v6 + 8);
  v31 = v79;
  v84 = v2;
  if (!v32)
  {
    goto LABEL_5;
  }

  do
  {
    v33 = v31;
    sub_100074730();
    v85 = v34;
LABEL_9:
    sub_1002E5390();
    v40 = *v38;
    v39 = v38[1];
    sub_1002E5890(v86);
    sub_1001711A8();
    sub_100066B44();
    v41 = sub_10022C350(&qword_100CAA7F0);
    v42 = v84;
    *v84 = v40;
    v42[1] = v39;
    sub_1002E4F28();
    sub_10003DE74();
    sub_10000E7B0();
    sub_1002E5980(v43, v44, v45, v41);
LABEL_10:
    sub_1000BA488();
    sub_100051BBC();
    v46 = sub_10022C350(&qword_100CAA7F0);
    sub_1000038B4(v1, 1, v46);
    if (v56)
    {
      goto LABEL_37;
    }

    sub_1002E4F28();
    v31 = v33;
    sub_10003DE74();
    sub_100031B34();
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_100066B44();
    v49 = (v89 + *(v83 + 48));
    sub_10008672C();
    sub_100066B44();
    sub_100003940();
    sub_100066B44();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1001711A8();
        v51 = v77;
        sub_100066B44();
        v53 = *v51;
        v52 = v51[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v54 = *v49;
          v55 = v49[1];
          v56 = v53 == v54 && v52 == v55;
          if (v56)
          {

            sub_100071468();
            sub_100040B64();
            sub_100003940();
            sub_100040B64();
          }

          else
          {
            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100071468();
            sub_100040B64();
            sub_100003940();
            sub_100040B64();
            if ((v57 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_28;
        }

        sub_100040B64();
        sub_100003B2C();
        sub_100040B64();
LABEL_36:
        sub_1000180EC(v89, &qword_100CAA7E0);
        goto LABEL_37;
      }

      sub_100040B64();
      sub_1000370B0();
      sub_100040B64();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1001711A8();
      v58 = v74;
      sub_100066B44();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100071468();
        sub_100040B64();
        sub_100040B64();
        (*v75)(v58, v78);
        goto LABEL_36;
      }

      v59 = sub_100027E24();
      v60 = v78;
      v61(v59);
      sub_1000E1628(&qword_100CAA7F8, 255, &type metadata accessor for AvailableDataSets);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v62 = *v75;
      v63 = sub_10008672C();
      (v62)(v63);
      sub_100071468();
      sub_100040B64();
      v64 = v79;
      sub_100027E24();
      sub_100040B64();
      v66 = v90;
      v65 = v91;
      v67 = v58;
      v31 = v64;
      v62(v67, v60);
      v1 = v73;
      if (v65 != v66)
      {
LABEL_32:
        sub_1000BA56C();
LABEL_33:
        sub_100040B64();
        goto LABEL_37;
      }
    }

LABEL_28:
    sub_1000BA56C();
    sub_100040B64();
  }

  while (v85);
LABEL_5:
  while (1)
  {
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v35 >= v30)
    {
      v33 = v31;
      sub_10022C350(&qword_100CAA7F0);
      sub_100003934();
      sub_10001B350(v68, v69, v70, v71);
      v85 = 0;
      goto LABEL_10;
    }

    ++v27;
    if (*(v28 + 8 * v35))
    {
      v33 = v31;
      sub_10003B93C();
      v85 = v36;
      v27 = v37;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1000BDA70()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for WeatherCondition();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA7C8);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA7D0);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA7D0);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v29, v30, v31, v32);
          v35 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v22 = sub_10022C350(v21);
        sub_1000BAEAC(v22);
        if (v9)
        {
          break;
        }

        v23 = sub_1000522BC();
        v24(v23);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v33 = sub_1002E4D14();
          v34(v33);
          break;
        }

        v25 = sub_1000377B0();
        v26(v25);
        sub_1000E1628(&qword_100CAA7D8, 255, &type metadata accessor for WeatherCondition);
        sub_1000E15F4();
        v27 = sub_1001921F8();
        v1(v27);
        v28 = sub_1002E52D0();
        v1(v28);
        v10 = v35;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

void sub_1000BDD2C()
{
  sub_1002E56CC();
  if (v2 != v1)
  {
    v3 = v1;
    sub_1000A403C();
    if (v45)
    {
      v5 = 0;
      v6 = v4 + 64;
      sub_1002E4F88();
      sub_100030378();
      sub_1002E589C();
      v8 = v7 >> 6;
      while (v0)
      {
        sub_1002E4CD8();
LABEL_12:
        v14 = *(*(v9 + 56) + (v10 | (v5 << 6)));

        v15 = sub_100031B34();
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          goto LABEL_78;
        }

        v18 = *(*(v3 + 56) + v15);
        v19 = 0xE700000000000000;
        v20 = 0x746C7561666564;
        switch(v18)
        {
          case 1:
            v20 = sub_1002E5558() | 0x77654E6900000000;
            v19 = 0xE900000000000073;
            break;
          case 2:
            v19 = 0xE600000000000000;
            v20 = sub_1002E4EE8();
            break;
          case 3:
            v19 = 0xE300000000000000;
            v20 = 7366766;
            break;
          case 4:
            sub_1002E54E0();
            v20 = v22 - 4;
            v19 = 0x8000000100ABA1D0;
            break;
          case 5:
            v20 = 0x4E746C7561666564;
            v26 = 7567205;
            goto LABEL_40;
          case 6:
            v20 = sub_1002E5748();
            v24 = 1315504128;
            goto LABEL_33;
          case 7:
            v20 = sub_1002E4E54();
            v24 = 1315241984;
LABEL_33:
            v19 = v24 | 0xEF73776500000000;
            break;
          case 8:
            v20 = sub_1002E4E54();
            v19 = 0xEE0070684E650000;
            break;
          case 9:
            v20 = sub_1002E5558() | 0x70684E6900000000;
            v23 = 1937204558;
            goto LABEL_21;
          case 10:
            v20 = 0xD000000000000015;
            v19 = 0x8000000100ABA230;
            break;
          case 11:
            v20 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v19 = 0xE900000000000070;
            break;
          case 12:
            v20 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v23 = 1769030000;
LABEL_21:
            v19 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 13:
            v20 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x654E000000000000;
            v19 = 0xEA00000000007377;
            break;
          case 14:
            v20 = 0x7377654E70686ELL;
            break;
          case 15:
            v20 = 0xD000000000000015;
            v19 = 0x8000000100ABA270;
            break;
          case 16:
            sub_1002E54E0();
            v20 = v21 - 3;
            v19 = 0x8000000100ABA290;
            break;
          case 17:
            v20 = 0x726F6E694D70686ELL;
            v25 = 0x7472656C41;
            goto LABEL_38;
          case 18:
            v20 = sub_1002E5748();
            v26 = 0xE700000000690000;
            goto LABEL_40;
          case 19:
            v20 = sub_1002E4E54();
            v26 = 0xE700000000650000;
LABEL_40:
            v19 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 20:
            v19 = 0xE800000000000000;
            v20 = sub_1002E5558() | 0x70684E6900000000;
            break;
          case 21:
            v19 = 0xE500000000000000;
            v20 = sub_1002E5558() & 0xFFFF0000FFFFFFFFLL | 0x6900000000;
            break;
          case 22:
            v20 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v25 = 0x7377654E70;
LABEL_38:
            v19 = v25 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 23:
            sub_1002E54E0();
            v20 = v27 - 5;
            v19 = 0x8000000100ABA2F0;
            break;
          case 24:
            v20 = 0x656C41726F6E696DLL;
            v19 = 0xEA00000000007472;
            break;
          default:
            break;
        }

        v28 = 0xE700000000000000;
        v29 = 0x746C7561666564;
        switch(v14)
        {
          case 1:
            sub_1002E5528();
            v29 = v30 | 0x77654E6900000000;
            v28 = 0xE900000000000073;
            break;
          case 2:
            v28 = 0xE600000000000000;
            sub_1002E4E14();
            break;
          case 3:
            v28 = 0xE300000000000000;
            v29 = 7366766;
            break;
          case 4:
            sub_1002E54E0();
            v29 = v33 - 4;
            v28 = 0x8000000100ABA1D0;
            break;
          case 5:
            v29 = 0x4E746C7561666564;
            v40 = 7567205;
            goto LABEL_69;
          case 6:
            sub_1000E67DC();
            v37 = 1315504128;
            goto LABEL_62;
          case 7:
            sub_1002E4E24();
            v37 = 1315241984;
LABEL_62:
            v28 = v37 | 0xEF73776500000000;
            break;
          case 8:
            sub_1002E4E24();
            v28 = 0xEE0070684E650000;
            break;
          case 9:
            sub_1002E5528();
            v29 = v36 | 0x70684E6900000000;
            v35 = 1937204558;
            goto LABEL_50;
          case 10:
            v29 = 0xD000000000000015;
            v28 = 0x8000000100ABA230;
            break;
          case 11:
            sub_1002E4E14();
            v29 = v32 & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v28 = 0xE900000000000070;
            break;
          case 12:
            sub_1002E4E14();
            v29 = v34 & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v35 = 1769030000;
LABEL_50:
            v28 = v35 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 13:
            sub_1002E4E14();
            v29 = v42 & 0xFFFFFFFFFFFFLL | 0x654E000000000000;
            v28 = 0xEA00000000007377;
            break;
          case 14:
            v29 = 0x7377654E70686ELL;
            break;
          case 15:
            v29 = 0xD000000000000015;
            v28 = 0x8000000100ABA270;
            break;
          case 16:
            sub_1002E54E0();
            v29 = v31 - 3;
            v28 = 0x8000000100ABA290;
            break;
          case 17:
            v29 = 0x726F6E694D70686ELL;
            v38 = 0x7472656C41;
            goto LABEL_67;
          case 18:
            sub_1000E67DC();
            v40 = 0xE700000000690000;
            goto LABEL_69;
          case 19:
            sub_1002E4E24();
            v40 = 0xE700000000650000;
LABEL_69:
            v28 = v40 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 20:
            v28 = 0xE800000000000000;
            sub_1002E5528();
            v29 = v39 | 0x70684E6900000000;
            break;
          case 21:
            v28 = 0xE500000000000000;
            sub_1002E5528();
            v29 = v41 & 0xFFFF0000FFFFFFFFLL | 0x6900000000;
            break;
          case 22:
            sub_1002E4E14();
            v29 = v43 & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v38 = 0x7377654E70;
LABEL_67:
            v28 = v38 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 23:
            sub_1002E54E0();
            v29 = v44 - 5;
            v28 = 0x8000000100ABA2F0;
            break;
          case 24:
            v29 = 0x656C41726F6E696DLL;
            v28 = 0xEA00000000007472;
            break;
          default:
            break;
        }

        v45 = v20 == v29 && v19 == v28;
        if (v45)
        {
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v46 & 1) == 0)
          {
            goto LABEL_78;
          }
        }
      }

      v11 = v5;
      while (1)
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          JUMPOUT(0x1000BE2E4);
        }

        if (v5 >= v8)
        {
          break;
        }

        ++v11;
        if (*(v6 + 8 * v5))
        {
          sub_1000C825C();
          v0 = v13 & v12;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_78:
  sub_1002E56B0();
}

void sub_1000BE3AC()
{
  sub_10000C778();
  sub_1000E1520();
  v79 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v71 = v7;
  v8 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v72 = v10;
  v11 = sub_10022C350(qword_100CA4F80);
  sub_100021368(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  type metadata accessor for ContentStatusBanner();
  sub_1000037C4();
  v78 = v13;
  __chkstk_darwin(v14);
  sub_100003848();
  v80 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100021390();
  v18 = __chkstk_darwin(v17);
  sub_1002E4BCC(v18, v19, v20, v21, v22, v23, v24, v25, v67);
  v26 = sub_10022C350(&qword_100CA38A0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100031BFC();
  __chkstk_darwin(v28);
  sub_1000B9E30();
  if (v1 != v0 && *(v1 + 16) == *(v0 + 16))
  {
    v73 = v29;
    v74 = v30;
    v31 = 0;
    v32 = v30;
    sub_100069460();
    v68 = v33 >> 6;
    v69 = v1 + 64;
    v70 = (v5 + 8);
    v76 = v2;
    if (!v34)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_100074730();
      v77 = v35;
LABEL_9:
      sub_1002E5390();
      v40 = *v39;
      v41 = v39[1];
      sub_1002E5890(v78);
      sub_100086524();
      sub_100066B44();
      v42 = sub_10022C350(&qword_100CA38A8);
      *v32 = v40;
      v32[1] = v41;
      sub_100087D60();
      sub_10003DE74();
      sub_10000E7B0();
      sub_10001B350(v43, v44, v45, v42);
      sub_10010ABD0(v40, v41);
LABEL_10:
      sub_100051BBC();
      sub_10022C350(&qword_100CA38A8);
      sub_100005404(v73);
      if (v54)
      {
        break;
      }

      v46 = *v73;
      v47 = v73[1];
      sub_100087D60();
      sub_10003DE74();
      sub_1000B8384(v46, v47);
      v49 = v48;
      sub_1000B84FC(v46, v47);
      if ((v49 & 1) == 0)
      {
        goto LABEL_39;
      }

      sub_100086524();
      sub_100066B44();
      v32 = v74;
      if (*v80 != *v76)
      {
        goto LABEL_38;
      }

      v50 = *(v80 + 2);
      v51 = *(v76 + 2);
      if (v50)
      {
        if (v50 == 1)
        {
          if (v51 != 1)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v51 < 2)
          {
            goto LABEL_38;
          }

          sub_1002E585C();
          v54 = v54 && v52 == v53;
          if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else if (v51)
      {
        goto LABEL_38;
      }

      v55 = *(v75 + 48);
      sub_100095588();
      sub_100095588();
      sub_1000038B4(v3, 1, v79);
      if (v54)
      {
        sub_1000038B4(v3 + v55, 1, v79);
        if (!v54)
        {
          goto LABEL_37;
        }

        v56 = sub_1000E17C0();
        sub_1000180EC(v56, v57);
      }

      else
      {
        sub_100095588();
        sub_1000038B4(v3 + v55, 1, v79);
        if (v58)
        {
          (*v70)(v72, v79);
LABEL_37:
          sub_1000180EC(v3, qword_100CA4F80);
LABEL_38:
          sub_1002E5308();
LABEL_39:
          sub_100040B64();
          break;
        }

        sub_10003E21C();
        v59(v71, v3 + v55, v79);
        sub_1000426B4();
        sub_1000E1628(&qword_100CA39D0, 255, v60);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        v62 = *v70;
        (*v70)(v71, v79);
        v62(v72, v79);
        sub_1000180EC(v3, &unk_100CB2CF0);
        if ((v61 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_100040B64();
      sub_100040B64();
      if (!v77)
      {
LABEL_5:
        while (1)
        {
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v36 >= v68)
          {
            sub_10022C350(&qword_100CA38A8);
            sub_100003934();
            sub_10001B350(v63, v64, v65, v66);
            v77 = 0;
            goto LABEL_10;
          }

          ++v31;
          if (*(v69 + 8 * v36))
          {
            sub_10003B93C();
            v77 = v37;
            v31 = v38;
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_1000BEA00()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t sub_1000BEA60()
{
  result = qword_100CB3D98;
  if (!qword_100CB3D98)
  {
    sub_10000C70C(255, &qword_100CB3D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D98);
  }

  return result;
}

uint64_t sub_1000BEB58(uint64_t a1, const char *a2, void (*a3)(uint64_t, uint64_t))
{
  if (qword_100CA26C8 != -1)
  {
    sub_10001EAC4();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100019600(v5, qword_100D90AC0);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_10000389C();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
    sub_100003884();
  }

  sub_1003BF5AC(v12);
  v9 = v13;
  v10 = v14;
  sub_1000161C0(v12, v13);
  a3(v9, v10);
  return sub_100006F14(v12);
}

uint64_t sub_1000BECF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_10000C70C(0, &qword_100CA2E40);
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  sub_100003984();
  sub_1000167F8();
  os_log(_:dso:log:type:_:)();

  sub_1003558E0(v8);
  v5 = v9;
  v6 = v10;
  sub_1000161C0(v8, v9);
  a3(v5, v6);
  return sub_100006F14(v8);
}

uint64_t sub_1000BEDB8(char a1)
{
  type metadata accessor for MainAction();
  sub_100003D98();
  __chkstk_darwin(v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v5, v7, v6);
  sub_100018144(v9, &unk_100CD81B0);
  return sub_1000547B8(v5);
}

uint64_t sub_1000BEE7C(uint64_t (*a1)(void *, unint64_t, uint64_t, uint64_t))
{
  v3 = v1[7];
  v4 = v1[8];
  sub_1000161C0(v1 + 4, v3);
  v5 = sub_1000BEF0C();
  return a1(v1, v5, v3, v4);
}

unint64_t sub_1000BEF0C()
{
  result = qword_100CCDE60;
  if (!qword_100CCDE60)
  {
    type metadata accessor for AppConfigurationMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDE60);
  }

  return result;
}

uint64_t sub_1000BEF8C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  v5 = *(v0 + 144);
  OSSignpostID.init(log:)();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v4, v1);
  sub_1000161C0((v0 + 32), *(v0 + 56));
  return dispatch thunk of LocationManagerType.requestAuthorization()();
}

uint64_t sub_1000BF0B0()
{
  sub_1000BEF8C();
  sub_1000161C0((v0 + 32), *(v0 + 56));
  sub_1000BF0FC();
  sub_100010A98();
  return dispatch thunk of LocationManagerType.addObserver(_:)();
}

unint64_t sub_1000BF0FC()
{
  result = qword_100CD7510[0];
  if (!qword_100CD7510[0])
  {
    type metadata accessor for CurrentLocationMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD7510);
  }

  return result;
}

uint64_t sub_1000BF150()
{
  v62 = type metadata accessor for UnitConfiguration.Temperature();
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v53[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_10022C350(&qword_100CBE7F8);
  __chkstk_darwin(v61);
  v66 = &v53[-v2];
  v3 = sub_10022C350(&qword_100CB6198);
  __chkstk_darwin(v3 - 8);
  v57 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v65 = &v53[-v6];
  v67 = type metadata accessor for MainAction();
  __chkstk_darwin(v67);
  v63 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CAA9F8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v53[-v10];
  v12 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v12 - 8);
  v60 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v56 = &v53[-v15];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v53[-v24];
  static Locale.current.getter();
  v68 = v20;
  v69 = v25;
  v59 = *(v20 + 16);
  v59(v18, v25, v19);
  sub_10001B350(v18, 0, 1, v19);
  v26 = OBJC_IVAR____TtC7Weather13LocaleMonitor_lastLocale;
  swift_beginAccess();
  v27 = *(v9 + 56);
  sub_100060DE0(v18, v11, &qword_100CAA9F0);
  v64 = v0;
  sub_100060DE0(v0 + v26, &v11[v27], &qword_100CAA9F0);
  if (sub_100024D10(v11, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &qword_100CAA9F0);
    v28 = sub_100024D10(&v11[v27], 1, v19);
    v29 = v64;
    v30 = v66;
    if (v28 == 1)
    {
      sub_10003FDF4(v11, &qword_100CAA9F0);
      v31 = v65;
      v32 = v63;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v33 = v56;
  sub_100060DE0(v11, v56, &qword_100CAA9F0);
  if (sub_100024D10(&v11[v27], 1, v19) == 1)
  {
    sub_10003FDF4(v18, &qword_100CAA9F0);
    (*(v68 + 8))(v33, v19);
    v29 = v64;
    v30 = v66;
LABEL_6:
    sub_10003FDF4(v11, &qword_100CAA9F8);
    v32 = v63;
LABEL_7:
    v34 = *(v29 + 16);
    v35 = v69;
    v36 = v59;
    v59(v32, v69, v19);
    type metadata accessor for EnvironmentAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    sub_10004F034(v32, &v70, v34);
    sub_10003FDF4(&v70, &unk_100CD81B0);
    sub_1000547B8(v32);
    v37 = v60;
    v36(v60, v35, v19);
    v31 = v65;
    sub_10001B350(v37, 0, 1, v19);
    swift_beginAccess();
    sub_1000C8C54(v37, v29 + v26);
    swift_endAccess();
    goto LABEL_8;
  }

  v44 = v68;
  (*(v68 + 32))(v22, &v11[v27], v19);
  sub_1004B866C(&qword_100CAAA10, &type metadata accessor for Locale);
  v45 = v33;
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v44 + 8);
  v46(v22, v19);
  sub_10003FDF4(v18, &qword_100CAA9F0);
  v46(v45, v19);
  sub_10003FDF4(v11, &qword_100CAA9F0);
  v29 = v64;
  v31 = v65;
  v32 = v63;
  v30 = v66;
  if ((v54 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.systemWideTemperatureUnit.getter();

  v38 = OBJC_IVAR____TtC7Weather13LocaleMonitor_lastTemperatureUnit;
  swift_beginAccess();
  v39 = *(v61 + 48);
  sub_100060DE0(v31, v30, &qword_100CB6198);
  sub_100060DE0(v29 + v38, &v30[v39], &qword_100CB6198);
  v40 = v62;
  if (sub_100024D10(v30, 1, v62) == 1)
  {
    if (sub_100024D10(&v30[v39], 1, v40) == 1)
    {
      sub_10003FDF4(v30, &qword_100CB6198);
LABEL_18:
      v43 = v31;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v41 = v57;
  sub_100060DE0(v30, v57, &qword_100CB6198);
  if (sub_100024D10(&v30[v39], 1, v40) == 1)
  {
    (*(v58 + 8))(v41, v40);
LABEL_13:
    sub_10003FDF4(v30, &qword_100CBE7F8);
    goto LABEL_14;
  }

  v47 = v30;
  v48 = v58;
  v49 = &v47[v39];
  v50 = v55;
  (*(v58 + 32))(v55, v49, v40);
  sub_1004B866C(qword_100CBE800, &type metadata accessor for UnitConfiguration.Temperature);
  LODWORD(v64) = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v48 + 8);
  v51(v50, v40);
  v51(v41, v40);
  sub_10003FDF4(v66, &qword_100CB6198);
  if (v64)
  {
    goto LABEL_18;
  }

LABEL_14:
  swift_beginAccess();
  sub_1000C8CC4(v31, v29 + v38);
  swift_endAccess();
  v42 = *(v29 + 16);
  sub_100060DE0(v31, v32, &qword_100CB6198);
  type metadata accessor for ConfiguredUnitsAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  sub_10004F034(v32, &v70, v42);
  sub_10003FDF4(&v70, &unk_100CD81B0);
  sub_1000547B8(v32);
  v43 = v31;
LABEL_19:
  sub_10003FDF4(v43, &qword_100CB6198);
  return (*(v68 + 8))(v69, v19);
}

Swift::Void __swiftcall LocaleMonitor.applicationWillEnterForeground()()
{
  sub_1000BF150();

  sub_1000C9138();
}

uint64_t sub_1000BFBA0(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unsigned __int8 *, uint64_t))
{
  v1582 = a1;
  v1583 = a3;
  v1586 = a2;
  v3 = type metadata accessor for ActivityAction();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v6 = sub_100003918(&v1404 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1589 = type metadata accessor for ViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_10000E70C();
  sub_100003918(v16);
  v1588 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003918(v26);
  v1587 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  sub_100003918(v36);
  v1585 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  sub_100003918(v46);
  v1584 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  sub_100003918(v56);
  v1591 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  sub_100003918(v66);
  v1590 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_10000E70C();
  v77 = sub_100003918(v76);
  v1580[1] = type metadata accessor for ModalViewState(v77);
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_10000E70C();
  sub_100003990(v97);
  v98 = sub_10022C350(&qword_100CA65E8);
  v99 = sub_100003810(v98);
  __chkstk_darwin(v99);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_10000E70C();
  sub_100003990(v118);
  v119 = sub_10022C350(&qword_100CA6610);
  v120 = sub_100003810(v119);
  __chkstk_darwin(v120);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_10000E70C();
  sub_100003990(v139);
  v140 = sub_10022C350(&qword_100CA6618);
  v141 = sub_100003810(v140);
  __chkstk_darwin(v141);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_10000E70C();
  sub_100003990(v160);
  v161 = sub_10022C350(&qword_100CA6620);
  v162 = sub_100003810(v161);
  __chkstk_darwin(v162);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_10000E70C();
  sub_100003990(v181);
  v182 = sub_10022C350(&qword_100CA6628);
  v183 = sub_100003810(v182);
  __chkstk_darwin(v183);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_10000E70C();
  sub_100003990(v202);
  v203 = sub_10022C350(&qword_100CA6630);
  v204 = sub_100003810(v203);
  __chkstk_darwin(v204);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_10000E70C();
  sub_100003918(v223);
  v1580[0] = type metadata accessor for Locale();
  v1581 = *(v1580[0] - 8);
  __chkstk_darwin(v1580[0]);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_10000E70C();
  sub_100003990(v236);
  v237 = sub_10022C350(&qword_100CAA9F0);
  v238 = sub_100003810(v237);
  __chkstk_darwin(v238);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_10000E70C();
  sub_100003990(v263);
  v264 = sub_10022C350(&qword_100CA6638);
  v265 = sub_100003810(v264);
  __chkstk_darwin(v265);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  v277 = __chkstk_darwin(v276);
  v279 = &v1404 - v278;
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  v290 = &v1404 - v289;
  v291 = sub_10022C350(&qword_100CA6640);
  v292 = sub_100003810(v291);
  __chkstk_darwin(v292);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  v303 = __chkstk_darwin(v302);
  v305 = (&v1404 - v304);
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  v311 = __chkstk_darwin(v310);
  v313 = (&v1404 - v312);
  v314 = __chkstk_darwin(v311);
  v316 = &v1404 - v315;
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  v318 = __chkstk_darwin(v317);
  v319 = __chkstk_darwin(v318);
  v321 = &v1404 - v320;
  __chkstk_darwin(v319);
  v323 = &v1404 - v322;
  type metadata accessor for EnvironmentAction();
  sub_1000037E8();
  __chkstk_darwin(v324);
  v326 = &v1404 - ((v325 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C81EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LODWORD(v1583) = *v326;
      v426 = sub_100003BCC(&v1576);
      sub_10001B350(v426, v427, v428, v1590);
      v429 = sub_100031F38(v1436);
      sub_1000C8420(v429, v430, v431);
      v432 = v1582;
      sub_1000D3DC0(*v1582);
      sub_1000F0054(v432[1]);
      sub_1000C8A78(v432[3]);
      sub_100021424();
      sub_100051BBC();
      sub_100003A40(v326);
      if (v338)
      {
        sub_100038068();
        v433 = sub_1000E159C(v1509);
        v434(v433);
        sub_100003A40(v326);
        if (!v338)
        {
          sub_1000180EC(v326, &qword_100CAA9F0);
        }
      }

      else
      {
        v1087 = sub_1000B91C8();
        v1088(v1087);
        v305 = v1591;
      }

      v1089 = &v432[v305[9]];
      v1090 = v305[11];
      LODWORD(v1569) = v432[v305[10]];
      LODWORD(v1573) = v432[v1090];
      v1091 = v305[13];
      LODWORD(v1567) = v432[v305[12]];
      LODWORD(v1572) = v432[v1091];
      v1092 = v1591[15];
      v1566 = *&v432[v1591[14]];
      LODWORD(v1571) = v432[v1092];
      v1093 = v1591[17];
      LODWORD(v1565) = v432[v1591[16]];
      LODWORD(v1570) = v432[v1093];
      v1094 = *v1089;
      v1580[0] = v1089[1];
      v1095 = v1580[0];
      sub_1000E1414();
      v1097 = &v432[v1096];
      v1098 = v1097[1];
      v1574 = *v1097;
      v1099 = v1574;
      v1575 = v1098;
      v1101 = v1097[2];
      v1100 = v1097[3];
      v1103 = v432[v1102];
      v1105 = v1097[4];
      v1104 = v1097[5];
      v1106 = v1548;
      sub_1000C8A6C();
      *v1106 = v1107;
      sub_10005275C();
      v1106[1] = v1108;
      v1106[2] = v1583;
      sub_1001707F0();
      v1106[3] = v1109;
      (*(v1581 + 4))(&v1106[v1110], v1490);
      sub_1000884A4();
      v1112 = &v1106[v1111];
      *v1112 = v1094;
      v1112[1] = v1095;
      sub_1000D3C58();
      sub_100011524(v1113);
      sub_100011524(v1591[11]);
      sub_100011524(v1591[12]);
      v1114 = v1591;
      sub_100011524(v1591[13]);
      *&v1106[v1114[14]] = v1566;
      sub_100011524(v1114[15]);
      sub_100011524(v1114[16]);
      sub_100011524(v1114[17]);
      v1115 = &v1106[v1114[18]];
      *v1115 = v1099;
      v1115[1] = v1098;
      v1115[2] = v1101;
      v1115[3] = v1100;
      v1115[4] = v1105;
      v1115[5] = v1104;
      v1106[v1114[19]] = v1103;
      sub_10000E7B0();
      sub_10001B350(v1116, v1117, v1118, v1114);
      v1119 = sub_100003BCC(&v1583);
      sub_10001B350(v1119, v1120, v1121, v1584);
      v1122 = sub_100003BCC(&v1587);
      sub_10001B350(v1122, v1123, v1124, v1585);
      v1125 = sub_100003BCC(&v1591);
      sub_10001B350(v1125, v1126, v1127, v1587);
      v1128 = sub_100003BCC(v1595);
      sub_10001B350(v1128, v1129, v1130, v1588);
      v1131 = sub_100003BCC(&v1596[24]);
      sub_10001B350(v1131, v1132, v1133, v1589);
      v1134 = sub_100021088(v1540);
      sub_100043840(v1134, v1135, v1136);
      sub_100017D68();
      v1137 = v1586;
      sub_10003778C();
      sub_1000C81EC();
      sub_1000131DC();
      sub_100095588();
      v1138 = sub_1000162A4();
      sub_100041064(v1138, v1139);
      v1140 = v1104;

      sub_100040D24();
      v1141 = v1575;
      v1142 = v1101;
      v1143 = v1100;
      v1144 = v1105;
      if (v1098 == 1)
      {
        sub_1000180EC(v1106, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1099, v1145);
        sub_10001F700();
        sub_1000730E8();
      }

      v1146 = v1590;
      v1147 = v1457;
      sub_10001F700();
      sub_1000730E8();
      v1148 = *(v1137 + 16);
      LODWORD(v1583) = *(v1137 + 24);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v1099);
      v1149 = v1449;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1150 = sub_1000131C4();
        v1152 = sub_100024D10(v1150, v1151, v1146);
        v1153 = v1099;
        v1154 = v1152;

        v338 = v1154 == 1;
        v1155 = v1434;
        if (!v338)
        {
          sub_1000180EC(v1153, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1155 = v1434;
      }

      v1590 = v1148;
      sub_1000436AC(v1580);
      sub_100095588();
      v1156 = sub_1000131C4();
      sub_1000038B4(v1156, v1157, v1114);
      if (v338)
      {
        v1158 = v1155;
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        sub_1000038B4(v1155, 1, v1114);
        v364 = v1467;
        if (!v338)
        {
          sub_1000180EC(v1158, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v364 = v1467;
      }

      sub_100037814();
      sub_100095588();
      v1159 = sub_1000201BC();
      sub_1000038B4(v1159, v1160, v1584);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000C814(v1114);
        if (!v338)
        {
          sub_1000180EC(v1114, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000519E0();
      sub_100095588();
      sub_10000E7EC(v1101);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v1101);
        if (!v338)
        {
          sub_1000180EC(v1101, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100030224(&v1591);
      sub_100095588();
      sub_10000C814(v1149);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000C814(v1149);
        if (!v338)
        {
          sub_1000180EC(v1149, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(v1595);
      sub_100095588();
      sub_100003A40(v1147);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003A40(v1147);
        if (!v338)
        {
          sub_1000180EC(v1147, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1596[24]);
      sub_100095588();
      v1161 = sub_1000131C4();
      sub_100013710(v1161, v1162);
      if (v338)
      {
        sub_100010A64();
        sub_1000113EC();
        sub_1000C81EC();
        sub_10000554C(v364);
        if (!v338)
        {
          sub_1000180EC(v364, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      sub_1000E5A60();
      sub_100003B6C();
      sub_100020B34();
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v1163, v1164, v1165, v1166, v1167, v1168, v1169, v1170, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, *(&v1414 + 1), v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429);
      sub_1000BCF58();

      sub_1000180EC(v1510, &qword_100CA65E8);
      sub_1000180EC(v1568, &qword_100CA6610);
      sub_1000180EC(v1564, &qword_100CA6618);
      sub_1000180EC(v1560, &qword_100CA6620);
      sub_1000180EC(v1556, &qword_100CA6628);
      sub_1000180EC(v1552, &qword_100CA6630);
      sub_1000180EC(v1548, &qword_100CA6638);
      v603 = &v1576;
      goto LABEL_253;
    case 2u:
      v389 = *v326;
      v390 = v326[1];
      sub_100045448();
      sub_1000161C0((v391 + 56), *(v391 + 80));
      v329 = sub_10017F658(v1582[3], v1586, v389 | (v390 << 8));
      goto LABEL_25;
    case 3u:
      v402 = v1581;
      v403 = v1581 + 32;
      v404 = *(v1581 + 4);
      v405 = sub_1000326C8(v1445);
      v406 = v1580[0];
      v404(v405, v326, v1580[0]);
      sub_100003934();
      sub_10001B350(v407, v408, v409, v1590);
      v410 = sub_100192448(&v1434);
      v404(v410, v323, v406);
      sub_10000E7B0();
      sub_10001B350(v411, v412, v413, v406);
      v414 = v1582;
      sub_1000D3DC0(*v1582);
      sub_1000F0054(v414[1]);
      sub_100040FAC(v414[2]);
      LODWORD(v1574) = v414[3];
      sub_100042230();
      sub_100051BBC();
      sub_10000554C(v323);
      v1583 = v404;
      v1578 = v403;
      if (v338)
      {
        v960 = v1591;
        v402[2](v1488, &v414[v1591[8]], v406);
        sub_10000554C(v323);
        if (!v338)
        {
          sub_1000180EC(v323, &qword_100CAA9F0);
        }
      }

      else
      {
        v404(v1488, v323, v406);
        v960 = v1591;
      }

      v961 = v960[11];
      LODWORD(v1570) = v414[v960[10]];
      LODWORD(v1571) = v414[v961];
      v962 = v960[13];
      LODWORD(v1568) = v414[v960[12]];
      LODWORD(v1569) = v414[v962];
      v963 = v960[15];
      v1566 = *&v414[v960[14]];
      v964 = v414;
      LODWORD(v1567) = v414[v963];
      v965 = &v414[v960[9]];
      v966 = v960[17];
      LODWORD(v1565) = v414[v960[16]];
      v968 = *v965;
      v1581 = *(v965 + 1);
      v967 = v1581;
      LODWORD(v1564) = v964[v966];
      v969 = v960[19];
      v970 = &v964[v960[18]];
      v971 = *(v970 + 1);
      v1572 = *v970;
      v972 = v1572;
      v1573 = v971;
      v974 = *(v970 + 3);
      v1580[0] = *(v970 + 2);
      v973 = v1580[0];
      LODWORD(v1582) = v964[v969];
      v975 = *(v970 + 4);
      v1563 = *(v970 + 5);
      v976 = v1479;
      sub_1000C8A6C();
      *v976 = v977;
      sub_10005275C();
      v976[1] = v978;
      sub_100192580();
      v976[2] = v979;
      v976[3] = v1574;
      (v1583)(&v976[v980], v1488);
      v981 = &v976[v960[9]];
      *v981 = v968;
      v981[1] = v967;
      sub_100043AA4(v960[10]);
      sub_100043AA4(v960[11]);
      sub_100043AA4(v960[12]);
      sub_100043AA4(v960[13]);
      *&v976[v960[14]] = v1566;
      sub_100043AA4(v960[15]);
      sub_100043AA4(v960[16]);
      sub_100043AA4(v960[17]);
      v982 = &v976[v960[18]];
      *v982 = v972;
      v982[1] = v971;
      v982[2] = v973;
      v982[3] = v974;
      v983 = v1563;
      v982[4] = v975;
      v982[5] = v983;
      v976[v960[19]] = v1582;
      sub_10000E7B0();
      sub_10001B350(v984, v985, v986, v960);
      v987 = sub_100003BCC(v1517);
      v988 = v1584;
      sub_10001B350(v987, v989, v990, v1584);
      v991 = sub_100003BCC(v1522);
      sub_10001B350(v991, v992, v993, v1585);
      v994 = sub_100003BCC(v1527);
      sub_10001B350(v994, v995, v996, v1587);
      v997 = sub_100003BCC(v1532);
      sub_10001B350(v997, v998, v999, v1588);
      v1000 = sub_100003BCC(v1537);
      sub_10001B350(v1000, v1001, v1002, v1589);
      v1003 = sub_100021088(&v1465);
      sub_100043840(v1003, v1004, v1005);
      sub_100017D68();
      v1006 = v1586;
      sub_10003778C();
      sub_1000C81EC();
      sub_1000131DC();
      sub_100051BBC();
      v1007 = sub_1000162A4();
      sub_100041064(v1007, v1008);
      v1009 = v983;

      v1010 = v1572;
      v1011 = v1573;
      sub_100195598();
      v1012 = v974;
      v1013 = v975;
      v1014 = v988;
      if (v967 == 1)
      {
        sub_1000180EC(v972, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v971, v1015);
        sub_10001F700();
        sub_1000730E8();
      }

      v1016 = v1590;
      v1017 = v1456;
      sub_10001F700();
      sub_1000730E8();
      v1018 = *(v1006 + 16);
      LODWORD(v1583) = *(v1006 + 24);
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v971);
      v1019 = v1448;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1020 = sub_1000131C4();
        v1022 = sub_100024D10(v1020, v1021, v1016);
        v1023 = v971;
        v1024 = v1022;

        v338 = v1024 == 1;
        v1025 = v1442;
        v1026 = v1433;
        if (!v338)
        {
          sub_1000180EC(v1023, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1025 = v1442;
        v1026 = v1433;
      }

      v1590 = v1018;
      sub_1000436AC(v1503);
      sub_100051BBC();
      v1027 = sub_1000131C4();
      sub_1000113D0(v1027, v1028);
      if (v338)
      {
        v1029 = v1026;
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        sub_100003A40(v1026);
        v364 = v1466;
        if (!v338)
        {
          sub_1000180EC(v1029, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v364 = v1466;
      }

      sub_100042230();
      sub_100051BBC();
      sub_1000038B4(v983, 1, v1014);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000E7EC(v983);
        if (!v338)
        {
          sub_1000180EC(v983, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000870F8(v1522);
      sub_100051BBC();
      sub_1000038B4(v1025, 1, v1585);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000C814(v1025);
        if (!v338)
        {
          sub_1000180EC(v1025, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100030224(v1527);
      sub_100051BBC();
      sub_10000C814(v1019);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000C814(v1019);
        if (!v338)
        {
          sub_1000180EC(v1019, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(v1532);
      sub_100051BBC();
      sub_1000038B4(v1017, 1, v1588);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BFC(v1017);
        if (!v338)
        {
          sub_1000180EC(v1017, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(v1537);
      sub_100051BBC();
      v1030 = sub_1000131C4();
      sub_100013710(v1030, v1031);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_10000554C(v364);
        if (!v338)
        {
          sub_1000180EC(v364, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      sub_1000E5A60();
      sub_100003B6C();
      sub_100020B34();
      sub_1000888E4();
      goto LABEL_320;
    case 4u:
      v362 = v1473;
      sub_1000730E8();
      sub_100045448();
      sub_1000161C0((v363 + 96), *(v363 + 120));
      v364 = sub_100728154(v1586, v362);
      v365 = type metadata accessor for ActivityAction;
      v366 = v362;
      goto LABEL_153;
    case 5u:
      v435 = *(v326 + 1);
      v1578 = *v326;
      v1577 = v435;
      sub_100003934();
      sub_10001B350(v436, v437, v438, v1590);
      v439 = sub_100031F38(&v1435);
      v440 = v1580[0];
      sub_10001B350(v439, v441, v442, v1580[0]);
      v443 = v1582;
      sub_1000F0054(*v1582);
      sub_100040FAC(v443[1]);
      LODWORD(v1574) = v443[2];
      LODWORD(v1573) = v443[3];
      sub_1000131DC();
      sub_100051BBC();
      sub_100005404(v279);
      if (v338)
      {
        sub_100038068();
        sub_1000C8F78();
        v445(v1486, &v443[v444], v440);
        sub_100005404(v279);
        if (!v338)
        {
          sub_1000180EC(v279, &qword_100CAA9F0);
        }
      }

      else
      {
        sub_1000AF66C();
        v1171(v1486, v279, v440);
        v305 = v1591;
      }

      sub_100021DCC(v443[v305[10]]);
      LODWORD(v1572) = v443[v1172];
      v1173 = v305[13];
      LODWORD(v1569) = v443[v305[12]];
      LODWORD(v1570) = v443[v1173];
      v1174 = v305[15];
      v1567 = *&v443[v305[14]];
      LODWORD(v1568) = v443[v1174];
      v1175 = v305[17];
      LODWORD(v1565) = v443[v305[16]];
      LODWORD(v1566) = v443[v1175];
      v1176 = v305[19];
      v1177 = &v443[v305[18]];
      v1178 = *(v1177 + 1);
      v1583 = *v1177;
      v1580[0] = v1178;
      v1180 = *(v1177 + 2);
      v1179 = *(v1177 + 3);
      v1182 = *(v1177 + 4);
      v1181 = *(v1177 + 5);
      v1581 = v1182;
      v1564 = v1181;
      v1183 = v443[v1176];
      v1184 = v1478;
      sub_10005275C();
      *v1184 = v1185;
      sub_100192580();
      v1184[1] = v1186;
      v1184[2] = v1574;
      v1184[3] = v1573;
      v1188 = *(v326 + 4);
      v1187 = (v326 + 32);
      v1188(&v1184[v305[8]], v1486);
      v1189 = &v1184[v305[9]];
      v1190 = v1577;
      *v1189 = v1578;
      v1189[1] = v1190;
      sub_10003BB84(v305[10]);
      sub_10003BB84(v305[11]);
      sub_10003BB84(v305[12]);
      sub_10003BB84(v305[13]);
      *&v1184[v305[14]] = v1567;
      sub_10003BB84(v305[15]);
      sub_10003BB84(v305[16]);
      sub_10003BB84(v305[17]);
      v1191 = &v1184[v305[18]];
      *v1191 = v1583;
      v1191[1] = v1178;
      v1191[2] = v1180;
      v1191[3] = v1179;
      v1192 = v1564;
      v1191[4] = v1182;
      v1191[5] = v1192;
      v1184[v305[19]] = v1183;
      sub_10000E7B0();
      sub_10001B350(v1193, v1194, v1195, v305);
      v1196 = sub_100003BCC(v1516);
      sub_1000C8B5C(v1196, v1197, v1198);
      v1199 = sub_100003BCC(v1521);
      sub_10001B350(v1199, v1200, v1201, v1585);
      v1202 = sub_100003BCC(&v1526);
      sub_10001B350(v1202, v1203, v1204, v1587);
      v1205 = sub_100003BCC(v1531);
      sub_10001B350(v1205, v1206, v1207, v1588);
      v1208 = sub_100003BCC(v1536);
      sub_10001B350(v1208, v1209, v1210, v1589);
      v1211 = v1452;
      sub_1000253CC();
      sub_100051B1C(v1212, v1213, v1214, v1215);
      sub_100017D68();
      v1216 = v1586;
      sub_100021424();
      sub_1000C81EC();
      sub_10003778C();
      sub_100051BBC();
      v1217 = sub_1000131C4();
      v1219 = sub_100024D10(v1217, v1218, v305);
      v1220 = v1192;
      v1221 = v1583;
      sub_100195598();
      v1222 = v1180;
      v1223 = v1179;
      v1224 = v1581;
      v1225 = v1183;
      if (v1219 == 1)
      {
        sub_1000180EC(v1211, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1187, v1226);
        sub_10001F700();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000730E8();
      v1227 = *(v1216 + 16);
      LODWORD(v1582) = *(v1216 + 24);
      sub_100051BBC();
      v1228 = v1590;
      sub_100013710(v313, 1);
      v1229 = v1447;
      v1583 = v1227;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1230 = sub_100024D10(v313, 1, v1228);

        v338 = v1230 == 1;
        v1231 = v1455;
        v1232 = v1441;
        if (!v338)
        {
          sub_1000180EC(v313, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1231 = v1455;
        v1232 = v1441;
      }

      sub_1000325C0();
      sub_100051BBC();
      v1233 = sub_1000162B0();
      sub_100013710(v1233, v1234);
      if (v338)
      {
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        sub_10000554C(v1227);
        v1235 = v1465;
        if (!v338)
        {
          sub_1000180EC(v1227, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v1235 = v1465;
      }

      sub_100042230();
      sub_100051BBC();
      sub_1000038B4(v1179, 1, v1225);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v1179);
        if (!v338)
        {
          sub_1000180EC(v1179, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_1000038B4(v1232, 1, v1585);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000C814(v1232);
        if (!v338)
        {
          sub_1000180EC(v1232, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_1000436AC(&v1526);
      sub_100051BBC();
      sub_10000C814(v1229);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000C814(v1229);
        if (!v338)
        {
          sub_1000180EC(v1229, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_1000038B4(v1231, 1, v1588);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100005404(v1231);
        if (!v338)
        {
          sub_1000180EC(v1231, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100005404(v1235);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100005404(v1235);
        if (!v338)
        {
          sub_1000180EC(v1235, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000E3238();
      v364 = *(v1216 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_100041990();
      v899 = sub_10004277C();
      v901 = v1520;
      v902 = v1529;
      v903 = v1538;
      v904 = v1542;
      v905 = v1544;
      v906 = &v1564;
      goto LABEL_287;
    case 6u:
      v457 = *v326;
      v458 = sub_100003BCC(v1498);
      sub_10001B350(v458, v459, v460, v1590);
      v461 = v1413;
      sub_10002435C();
      v463 = *(v462 - 256);
      sub_10001B350(v464, v465, v466, v463);
      v467 = *v1582;
      v468 = v1582[1];
      v469 = v1582[2];
      v470 = v1582[3];
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v461);
      LODWORD(v1583) = v457;
      LODWORD(v1578) = v467;
      LODWORD(v1577) = v468;
      LODWORD(v1576) = v469;
      LODWORD(v1575) = v470;
      if (v338)
      {
        v1308 = v1591;
        v471 = sub_1000E159C(&v1510);
        v472(v471);
        sub_100003A40(v461);
        if (!v338)
        {
          sub_1000180EC(v461, &qword_100CAA9F0);
        }
      }

      else
      {
        (*(v1581 + 4))(v1491, v461, v463);
        v1308 = v1591;
      }

      v1309 = &v1582[v1308[9]];
      v1310 = *v1309;
      v1580[0] = v1309[1];
      v1311 = v1580[0];
      v1312 = v1308[12];
      LODWORD(v1570) = v1582[v1308[11]];
      LODWORD(v1573) = v1582[v1312];
      v1313 = v1308[14];
      LODWORD(v1569) = v1582[v1308[13]];
      v1572 = *&v1582[v1313];
      v1314 = v1308[16];
      LODWORD(v1568) = v1582[v1308[15]];
      sub_100021DCC(v1582[v1314]);
      v1315 = v1308[18];
      LODWORD(v1567) = *(v1316 + v1308[17]);
      v1318 = *(v1316 + v1315 + 8);
      v1574 = *(v1316 + v1315);
      v1317 = v1574;
      v1320 = *(v1316 + v1315 + 16);
      v1319 = *(v1316 + v1315 + 24);
      LODWORD(v1582) = *(v1316 + v1308[19]);
      v1322 = *(v1316 + v1315 + 32);
      v1321 = *(v1316 + v1315 + 40);
      v1323 = v1480;
      sub_1001707F0();
      *v1323 = v1324;
      sub_1000C8A6C();
      v1323[1] = v1325;
      sub_10005275C();
      v1323[2] = v1326;
      sub_100192580();
      v1328 = sub_1000B7C04(v1327);
      v1329(v1328, v1491);
      v1330 = &v1323[v1308[9]];
      *v1330 = v1310;
      v1330[1] = v1311;
      v1323[v1308[10]] = v1583;
      sub_10003BB84(v1308[11]);
      sub_10003BB84(v1308[12]);
      sub_10003BB84(v1308[13]);
      *&v1323[v1308[14]] = v1572;
      sub_10003BB84(v1308[15]);
      sub_10003BB84(v1308[16]);
      sub_10003BB84(v1308[17]);
      v1331 = &v1323[v1308[18]];
      *v1331 = v1317;
      v1331[1] = v1318;
      v1331[2] = v1320;
      v1331[3] = v1319;
      v1331[4] = v1322;
      v1331[5] = v1321;
      v1323[v1308[19]] = v1582;
      sub_10000E7B0();
      sub_10001B350(v1332, v1333, v1334, v1308);
      v1335 = sub_100003BCC(v1518);
      sub_10001B350(v1335, v1336, v1337, v1584);
      v1338 = sub_100003BCC(v1523);
      sub_10001B350(v1338, v1339, v1340, v1585);
      v1341 = sub_100003BCC(v1528);
      sub_10001B350(v1341, v1342, v1343, v1587);
      v1344 = sub_100003BCC(v1533);
      sub_10001B350(v1344, v1345, v1346, v1588);
      v1347 = sub_100003BCC(&v1538);
      sub_10001B350(v1347, v1348, v1349, v1589);
      v1350 = sub_100021088(&v1467);
      sub_100043840(v1350, v1351, v1352);
      sub_100017D68();
      v1353 = v1586;
      sub_10003778C();
      sub_1000C81EC();
      sub_1000325C0();
      sub_100051BBC();
      v1354 = sub_1000162B0();
      sub_100041064(v1354, v1355);
      v1356 = v1321;

      sub_100040D24();
      v1357 = v1318;
      v1358 = v1320;
      v1359 = v1319;
      v1360 = v1322;
      if (v1310 == 1)
      {
        sub_1000180EC(v1308, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1323, v1361);
        sub_10001F700();
        sub_1000730E8();
      }

      v1362 = v1411;
      sub_10001F700();
      sub_1000730E8();
      v1363 = v1353;
      v1364 = *(v1353 + 16);
      LODWORD(v1582) = *(v1353 + 24);
      sub_100030224(v1498);
      sub_100051BBC();
      v1365 = sub_1000162A4();
      v1366 = v1590;
      sub_100013710(v1365, v1367);
      v1368 = v1443;
      v1369 = v1435;
      v1370 = v1584;
      v1583 = v1364;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1371 = sub_1000162A4();
        v1373 = sub_100024D10(v1371, v1372, v1366);

        if (v1373 != 1)
        {
          sub_1000180EC(v1362, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_100051BBC();
      v1374 = sub_1000162B0();
      sub_1000113D0(v1374, v1375);
      if (v338)
      {
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        sub_100003A40(v1369);
        v1376 = v1474;
        v1377 = v1468;
        if (!v338)
        {
          sub_1000180EC(v1369, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v1376 = v1474;
        v1377 = v1468;
      }

      sub_1000325C0();
      sub_100051BBC();
      v1378 = sub_1000162B0();
      sub_1000038B4(v1378, v1379, v1370);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        v1380 = sub_1000162B0();
        sub_1000038B4(v1380, v1381, v1370);
        v1382 = v1450;
        if (!v338)
        {
          sub_1000180EC(v1369, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
        v1382 = v1450;
      }

      sub_1000436AC(v1523);
      sub_100051BBC();
      sub_10000C814(v1368);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000C814(v1368);
        v1383 = v1368;
        v1384 = v1458;
        if (!v338)
        {
          sub_1000180EC(v1383, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
        v1384 = v1458;
      }

      sub_100051BBC();
      sub_10000E7EC(v1382);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000E7EC(v1382);
        if (!v338)
        {
          sub_1000180EC(v1382, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000436AC(v1533);
      sub_100051BBC();
      sub_10000C814(v1384);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_10000C814(v1384);
        if (!v338)
        {
          sub_1000180EC(v1384, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100003BFC(v1377);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100003BFC(v1377);
        v364 = v1376;
        if (!v338)
        {
          sub_1000180EC(v1377, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
        v364 = v1376;
      }

      sub_10001F700();
      sub_1000113EC();
      sub_1000730E8();
      v1386 = *(v1353 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v1385 = *(v1353 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v1388 = *(v1363 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v1387 = *(v1363 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v1389 = v1363;
      v1390 = *(v1363 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v1392 = *(v1363 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v1391 = *(v1363 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v1393 = *(v1389 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v1403) = v1390;
      sub_10001322C();
      sub_10003E038(v1394, v1395, v1396, v1397, v1398, v1399, v1400, v1401, v364, v1377, v1386, v1385, v1388, v1387, v1403, v1392, v1391, v1393, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420);
      sub_1000BCF58();

      goto LABEL_322;
    case 7u:
      LODWORD(v1583) = *v326;
      v415 = sub_100003BCC(v1499);
      sub_10001B350(v415, v416, v417, v1590);
      sub_10002435C();
      v419 = *(v418 - 256);
      sub_10001B350(v420, v421, v422, v419);
      v423 = v1582;
      LODWORD(v1590) = *v1582;
      v1579 = v1582[1];
      sub_1000F0054(v1582[2]);
      LODWORD(v1571) = v423[3];
      sub_100042230();
      sub_100051BBC();
      sub_100003A40(v323);
      if (v338)
      {
        v364 = v1591;
        sub_1000C8F78();
        v424 = sub_1000E159C(&v1511);
        v425(v424);
        sub_100003A40(v323);
        if (!v338)
        {
          sub_1000180EC(v323, &qword_100CAA9F0);
        }
      }

      else
      {
        sub_1000AF66C();
        v1032(v1492, v323, v419);
        v364 = v1591;
      }

      v1033 = &v423[*(v364 + 36)];
      LODWORD(v1562) = v423[*(v364 + 40)];
      v1034 = *(v364 + 52);
      LODWORD(v1565) = v423[*(v364 + 48)];
      v1035 = v423;
      LODWORD(v1568) = v423[v1034];
      v1036 = *(v364 + 60);
      v1564 = *&v423[*(v364 + 56)];
      LODWORD(v1567) = v423[v1036];
      v1037 = *(v364 + 68);
      LODWORD(v1563) = v423[*(v364 + 64)];
      LODWORD(v1566) = v423[v1037];
      v1038 = *v1033;
      v1591 = v1033[1];
      v1039 = v1591;
      v1040 = *(v364 + 76);
      v1041 = &v1035[*(v364 + 72)];
      v1042 = *(v1041 + 1);
      v1569 = *v1041;
      v1043 = v1569;
      v1570 = v1042;
      v1045 = *(v1041 + 3);
      v1580[0] = *(v1041 + 2);
      v1044 = v1580[0];
      v1581 = v1045;
      LODWORD(v1582) = v1035[v1040];
      v1046 = *(v1041 + 4);
      v1561 = *(v1041 + 5);
      *v279 = v1590;
      v279[1] = v1579;
      sub_10005275C();
      v279[2] = v1047;
      v279[3] = v1571;
      (*(v326 + 4))(&v279[v1048], v1492);
      v1049 = &v279[*(v364 + 36)];
      *v1049 = v1038;
      v1049[1] = v1039;
      sub_100011524(*(v364 + 40));
      v279[*(v364 + 44)] = v1583;
      sub_100011524(*(v364 + 48));
      sub_100011524(*(v364 + 52));
      *&v279[*(v364 + 56)] = v1564;
      sub_100011524(*(v364 + 60));
      sub_100011524(*(v364 + 64));
      sub_100011524(*(v364 + 68));
      v1050 = &v279[*(v364 + 72)];
      *v1050 = v1043;
      *(v1050 + 1) = v1042;
      *(v1050 + 2) = v1044;
      *(v1050 + 3) = v1045;
      v1051 = v1561;
      *(v1050 + 4) = v1046;
      *(v1050 + 5) = v1051;
      v279[*(v364 + 76)] = v1582;
      sub_10000E7B0();
      sub_10001B350(v1052, v1053, v1054, v364);
      v1055 = v1572;
      sub_100003934();
      sub_100045288(v1056, v1057, v1058);
      sub_100192448(v1059);
      sub_1000372BC();
      sub_10001B350(v1060, v1061, v1062, v1063);
      v1064 = sub_100020FBC(&v1599);
      sub_100040E40(v1064, v1065, v1066);
      v1068 = *(v1067 - 256);
      sub_100003934();
      sub_100040F10(v1069, v1070, v1071);
      v1073 = sub_100021088(v1072);
      sub_1000FFC84(v1073, v1074, v1075);
      v1077 = sub_100031F38(v1076);
      sub_100040C3C(v1077, v1078, v1079);
      v1080 = v1051;

      v1081 = v1569;
      v1082 = v1570;
      sub_100195598();
      v1083 = v1581;
      v1084 = v1046;
      sub_100030610();
      v1085 = sub_100037894();
      v658 = v1475;
      sub_1000D2C20(v1085, v1086, v1475, v279, v1055, v1042, v1039, v1068, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414);
      sub_1000C8560();
      sub_1000180EC(v1038, &qword_100CA65E8);
      sub_1000180EC(v1044, &qword_100CA6610);
      sub_1000180EC(v1068, &qword_100CA6618);
      sub_1000180EC(v1039, &qword_100CA6620);
      sub_1000180EC(v1042, &qword_100CA6628);
      sub_1000180EC(v1055, &qword_100CA6630);
      v660 = v279;
      goto LABEL_220;
    case 8u:
      v476 = *v326;
      v477 = v1591;
      v478 = v1582;
      v479 = v1582[v1591[15]] | v476;
      v364 = 1;
      sub_100003934();
      sub_10001B350(v480, v481, v482, v483);
      sub_1000326C8(&v1441);
      sub_10002435C();
      sub_10001B350(v485, v486, v487, *(v484 - 256));
      *v1596 = 1;
      memset(&v1596[8], 0, 40);
      v488 = v1412;
      sub_100816210(2, 5, 5, 5, v323, 0, 0, 2, v1412, 2u, 2u, 2u, v479 & 1, 0, 1, 2u, 2u, v1596, 3u);
      sub_1000180EC(v323, &qword_100CAA9F0);
      sub_10000E7B0();
      sub_10001B350(v489, v490, v491, v477);
      v492 = v1572;
      sub_100003934();
      sub_100045288(v493, v494, v495);
      sub_100192448(v496);
      sub_1000372BC();
      sub_10001B350(v497, v498, v499, v500);
      v501 = sub_100020FBC(&v1599);
      sub_100040E40(v501, v502, v503);
      v505 = *(v504 - 256);
      sub_100003934();
      sub_100040F10(v506, v507, v508);
      v510 = *(v509 - 256);
      sub_100003934();
      sub_1000FFC84(v511, v512, v513);
      v515 = sub_100021088(v514);
      sub_100040C3C(v515, v516, v517);
      sub_100030610();
      sub_1000D2C20(0, 3u, v305, v488, v492, v316, v323, v505, v510, v478, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414);
      sub_1000C8560();
      sub_1000180EC(v478, &qword_100CA65E8);
      sub_1000180EC(v510, &qword_100CA6610);
      sub_1000180EC(v505, &qword_100CA6618);
      sub_1000180EC(v323, &qword_100CA6620);
      sub_1000180EC(v316, &qword_100CA6628);
      sub_1000180EC(v492, &qword_100CA6630);
      sub_1000180EC(v488, &qword_100CA6638);
      v518 = v305;
      goto LABEL_254;
    case 9u:
      v375 = *v326;
      v376 = sub_100003BCC(v1500);
      sub_10001B350(v376, v377, v378, v1590);
      v379 = sub_100031F38(v1439);
      sub_1000C8420(v379, v380, v381);
      v382 = v1582;
      v383 = *v1582;
      v384 = v1582[1];
      v385 = v1582[2];
      v386 = v1582[3];
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v290);
      LODWORD(v1583) = v375;
      LODWORD(v1578) = v383;
      LODWORD(v1577) = v384;
      LODWORD(v1576) = v385;
      LODWORD(v1575) = v386;
      if (v338)
      {
        sub_100038068();
        v825 = v1581;
        v387 = sub_1000E159C(v1512);
        v388(v387);
        sub_100003A40(v290);
        if (!v338)
        {
          sub_1000180EC(v290, &qword_100CAA9F0);
        }
      }

      else
      {
        v825 = v1581;
        (*(v1581 + 4))(v1493, v290, v313);
        v305 = v1591;
      }

      v826 = &v382[v305[9]];
      v827 = v826[1];
      v1567 = *v826;
      v1581 = v827;
      v828 = v382[v305[10]];
      LODWORD(v1566) = v382[v305[11]];
      v829 = v1591[14];
      LODWORD(v1570) = v382[v1591[13]];
      v1572 = *&v382[v829];
      v830 = v1591[16];
      LODWORD(v1569) = v382[v1591[15]];
      sub_100021DCC(v382[v830]);
      v831 = v1591[18];
      LODWORD(v1568) = v382[v1591[17]];
      v833 = *&v382[v831 + 8];
      v1574 = *&v382[v831];
      v832 = v1574;
      v1580[0] = v833;
      v835 = *&v382[v831 + 16];
      v834 = *&v382[v831 + 24];
      sub_1000E1414();
      LODWORD(v1573) = v382[v836];
      v838 = *(v837 + 40);
      v1582 = *(v837 + 32);
      v839 = v1582;
      v840 = v1481;
      sub_1001707F0();
      *v840 = v841;
      sub_1000C8A6C();
      v840[1] = v842;
      sub_10005275C();
      v840[2] = v843;
      sub_100192580();
      v840[3] = v844;
      (*(v825 + 4))(&v840[v845], v1493);
      sub_1000884A4();
      v847 = &v840[v846];
      *v847 = v1567;
      v847[1] = v827;
      sub_1000D3C58();
      v840[v848] = v828;
      sub_100028B04(v1591[11]);
      v849 = v1591;
      v840[v1591[12]] = v1583;
      sub_100028B04(v849[13]);
      *&v840[v849[14]] = v1572;
      sub_100028B04(v849[15]);
      sub_100028B04(v849[16]);
      sub_100028B04(v849[17]);
      v850 = &v840[v849[18]];
      *v850 = v832;
      v850[1] = v833;
      v850[2] = v835;
      v850[3] = v834;
      v850[4] = v839;
      v850[5] = v838;
      sub_100028B04(v849[19]);
      sub_10000E7B0();
      sub_10001B350(v851, v852, v853, v849);
      v854 = sub_100003BCC(v1519);
      sub_10001B350(v854, v855, v856, v1584);
      v857 = sub_100003BCC(v1524);
      sub_10001B350(v857, v858, v859, v1585);
      v860 = sub_100003BCC(&v1529);
      sub_10001B350(v860, v861, v862, v1587);
      v863 = sub_100003BCC(v1534);
      sub_10001B350(v863, v864, v865, v1588);
      v866 = sub_100003BCC(v1539);
      sub_10001B350(v866, v867, v868, v1589);
      v869 = v1453;
      sub_1000253CC();
      v871 = *(v870 - 256);
      sub_10001B350(v872, v873, v874, v871);
      sub_100017D68();
      v875 = v1586;
      sub_100037814();
      sub_1000C81EC();
      sub_1000325C0();
      sub_100051BBC();
      v876 = sub_1000162B0();
      LODWORD(v871) = sub_100024D10(v876, v877, v871);
      v878 = v838;

      sub_100040D24();
      sub_100195598();
      v879 = v835;
      v880 = v834;
      v881 = v1582;
      if (v871 == 1)
      {
        sub_1000180EC(v869, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v833, v882);
        sub_10001F700();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000730E8();
      v883 = *(v875 + 16);
      LODWORD(v1582) = *(v875 + 24);
      sub_1000325C0();
      sub_100051BBC();
      v884 = sub_1000162B0();
      v885 = v1590;
      sub_1000113D0(v884, v886);
      v887 = v1438;
      v1583 = v883;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v888 = sub_1000162B0();
        v890 = sub_100024D10(v888, v889, v885);

        if (v890 != 1)
        {
          sub_1000180EC(v869, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100051BBC();
      v891 = sub_1000162B0();
      sub_1000038B4(v891, v892, v849);
      if (v338)
      {
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        v893 = sub_1000162B0();
        sub_1000038B4(v893, v894, v849);
        v895 = v1470;
        v896 = v1444;
        if (!v338)
        {
          sub_1000180EC(v869, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v895 = v1470;
        v896 = v1444;
      }

      sub_100051BBC();
      sub_10000C814(v887);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000C814(v887);
        v897 = v1451;
        if (!v338)
        {
          sub_1000180EC(v887, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
        v897 = v1451;
      }

      sub_1000870F8(v1524);
      sub_100051BBC();
      sub_10000554C(v896);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000554C(v896);
        v898 = v1460;
        if (!v338)
        {
          sub_1000180EC(v896, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
        v898 = v1460;
      }

      sub_100051BBC();
      sub_10000554C(v897);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000554C(v897);
        if (!v338)
        {
          sub_1000180EC(v897, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100003BDC(v898);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BDC(v898);
        if (!v338)
        {
          sub_1000180EC(v898, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100005404(v895);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100005404(v895);
        if (!v338)
        {
          sub_1000180EC(v895, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000E3238();
      v364 = *(v875 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      sub_1000E5A60();
      sub_100003B6C();
      sub_100041990();
      v899 = sub_10004277C();
      v901 = v1526;
      v902 = v1535;
      v903 = v1541;
      v904 = v1543;
      v905 = v1545;
      v906 = &v1570;
LABEL_287:
      v1236 = *(v906 - 32);
      goto LABEL_321;
    case 0xAu:
      v473 = *v326;
      v474 = *(v326 + 1);
      sub_100045448();
      sub_1000161C0((v475 + 136), *(v475 + 160));
      v364 = sub_100333940(v1586, v473, v474);
      sub_1000B84FC(v473, v474);
      return v364;
    case 0xBu:
      v1583 = *v326;
      v353 = sub_100003BCC(&v1578);
      sub_10001B350(v353, v354, v355, v1590);
      v356 = sub_100021088(v1505);
      sub_100051B1C(v356, v357, v358, &v1600);
      v359 = v1582;
      sub_1000C8A78(*v1582);
      sub_1000D3DC0(v359[1]);
      sub_1000F0054(v359[2]);
      sub_100040FAC(v359[3]);
      sub_100021424();
      sub_100095588();
      sub_10000554C(v326);
      if (v338)
      {
        sub_100030280();
        v361(v1494, &v359[v360], v305);
        sub_10000554C(v326);
        if (!v338)
        {
          sub_1000180EC(v326, &qword_100CAA9F0);
        }
      }

      else
      {
        v279 = v1581;
        v661 = sub_1000B91C8();
        v662(v661);
        v313 = v1591;
      }

      v663 = &v359[v313[9]];
      v664 = *(v663 + 1);
      v1573 = *v663;
      v665 = v313[11];
      LODWORD(v1569) = v359[v313[10]];
      LODWORD(v1572) = v359[v665];
      v666 = v359[v313[12]];
      sub_100021DCC(v359[v313[13]]);
      v667 = v313[16];
      LODWORD(v1580[0]) = v359[v313[15]];
      LODWORD(v1581) = v359[v667];
      v668 = v313[18];
      LODWORD(v1574) = v359[v313[17]];
      v669 = *&v359[v668];
      v670 = *&v359[v668 + 8];
      v672 = *&v359[v668 + 16];
      v671 = *&v359[v668 + 24];
      sub_1000E1414();
      LODWORD(v1582) = v359[v673];
      v676 = *(v674 + 32);
      v675 = *(v674 + 40);
      v677 = v1550;
      sub_1001707F0();
      *v677 = v678;
      sub_1000C8A6C();
      v677[1] = v679;
      sub_10005275C();
      v677[2] = v680;
      sub_100192580();
      v677[3] = v681;
      (*(v279 + 4))(&v677[v682], v1494);
      sub_1000884A4();
      v684 = &v677[v683];
      *v684 = v1573;
      v684[1] = v664;
      sub_1000D3C58();
      sub_1000A7D34(v685);
      sub_1000A7D34(*(v686 + 44));
      v677[*(v687 + 48)] = v666;
      sub_1000A7D34(v1591[13]);
      *&v677[*(v688 + 56)] = v1583;
      sub_1000A7D34(v1591[15]);
      v677[*(v689 + 64)] = v1581;
      sub_1000A7D34(v1591[17]);
      v691 = &v677[*(v690 + 72)];
      *v691 = v669;
      v691[1] = v670;
      v691[2] = v672;
      v691[3] = v671;
      v691[4] = v676;
      v691[5] = v675;
      v677[v1591[19]] = v1582;
      v692 = v675;

      v693 = v669;
      v694 = v670;
      v695 = v1591;
      v696 = v672;
      v697 = v671;
      v698 = v676;
      sub_1000180EC(v1483, &qword_100CAA9F0);
      sub_10000E7B0();
      sub_10001B350(v699, v700, v701, v695);
      v702 = sub_100003BCC(&v1585);
      sub_1000C8B5C(v702, v703, v704);
      v705 = sub_100003BCC(&v1589);
      v706 = v1585;
      sub_10001B350(v705, v707, v708, v1585);
      v709 = sub_100003BCC(v1593);
      sub_10001B350(v709, v710, v711, v1587);
      v712 = sub_100003BCC(&v1596[8]);
      sub_10001B350(v712, v713, v714, v1588);
      v715 = sub_100003BCC(&v1596[40]);
      sub_10001B350(v715, v716, v717, v1589);
      v718 = v1513;
      sub_1000253CC();
      sub_100051B1C(v719, v720, v721, v722);
      sub_100017D68();
      v723 = v1586;
      sub_1000519E0();
      sub_1000C81EC();
      sub_10003778C();
      sub_100095588();
      sub_10000554C(v718);
      if (v338)
      {
        sub_1000180EC(v718, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v672, v724);
        sub_10001F700();
        sub_1000730E8();
      }

      v725 = v1590;
      v726 = v1461;
      v727 = v1420;
      sub_10001F700();
      sub_1000730E8();
      v728 = *(v723 + 16);
      LODWORD(v1583) = *(v723 + 24);
      sub_100030224(&v1578);
      sub_100095588();
      sub_100005404(v727);
      v729 = v1439[0];
      v1590 = v728;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v730 = sub_1000162A4();
        v732 = sub_100024D10(v730, v731, v725);

        if (v732 != 1)
        {
          sub_1000180EC(v727, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_1000131DC();
      sub_100095588();
      v733 = sub_1000162A4();
      sub_1000038B4(v733, v734, v695);
      if (v338)
      {
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        v735 = sub_1000162A4();
        sub_1000038B4(v735, v736, v695);
        v364 = v1471;
        if (!v338)
        {
          sub_1000180EC(v727, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v364 = v1471;
      }

      sub_1000870F8(&v1585);
      sub_100095588();
      sub_100003BDC(v729);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v729);
        if (!v338)
        {
          sub_1000180EC(v729, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100095588();
      sub_10000E7EC(v671);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v671);
        if (!v338)
        {
          sub_1000180EC(v671, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100032590();
      sub_100095588();
      sub_100003A40(v706);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_100003A40(v706);
        if (!v338)
        {
          sub_1000180EC(v706, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1596[8]);
      sub_100095588();
      sub_100003BFC(v726);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BFC(v726);
        if (!v338)
        {
          sub_1000180EC(v726, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1596[40]);
      sub_100095588();
      v737 = sub_1000131C4();
      sub_100013710(v737, v738);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_10000554C(v364);
        if (!v338)
        {
          sub_1000180EC(v364, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      sub_1000E5A60();
      sub_100003B6C();
      sub_100020B34();
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v739, v740, v741, v742, v743, v744, v745, v746, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, *(&v1414 + 1), v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429);
      sub_1000BCF58();

      sub_1000180EC(v1513, &qword_100CA65E8);
      sub_1000180EC(v1570, &qword_100CA6610);
      sub_1000180EC(v1566, &qword_100CA6618);
      sub_1000180EC(v1562, &qword_100CA6620);
      sub_1000180EC(v1558, &qword_100CA6628);
      sub_1000180EC(v1554, &qword_100CA6630);
      sub_1000180EC(v1550, &qword_100CA6638);
      v603 = &v1578;
      goto LABEL_253;
    case 0xCu:
      v367 = sub_100003BCC(&v1577);
      sub_10001B350(v367, v368, v369, v1590);
      v370 = sub_100031F38(v1504);
      sub_1000C8420(v370, v371, v372);
      sub_10002F7A8();
      v373 = v1582;
      LODWORD(v1583) = *v1582;
      sub_1000C8A78(v1582[1]);
      sub_1000D3DC0(v373[2]);
      sub_1000F0054(v373[3]);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v290);
      if (v338)
      {
        sub_100038068();
        v747 = v1581;
        v748 = v1437;
        (*(v1581 + 2))(v1437, &v373[v374], v313);
        sub_100003A40(v290);
        if (!v338)
        {
          sub_1000180EC(v290, &qword_100CAA9F0);
        }
      }

      else
      {
        v747 = v1581;
        v748 = v1437;
        (*(v1581 + 4))(v1437, v290, v313);
        v305 = v1591;
      }

      v749 = v305[11];
      LODWORD(v1580[0]) = v373[v305[10]];
      LODWORD(v1581) = v373[v749];
      v750 = v305[13];
      LODWORD(v1574) = v373[v305[12]];
      sub_100040FAC(v373[v750]);
      v751 = *&v373[v1591[14]];
      LODWORD(v1573) = v373[v1591[15]];
      v752 = v373[v1591[16]];
      v753 = v373[v1591[17]];
      sub_1000884A4();
      sub_1000E1414();
      v755 = v373[v754];
      v758 = *v756;
      v757 = v756[1];
      v759 = v1549;
      *v1549 = v1583;
      sub_1001707F0();
      v759[1] = v760;
      sub_1000C8A6C();
      v759[2] = v761;
      sub_10005275C();
      v759[3] = v762;
      (*(v747 + 4))(&v759[v763], v748);
      sub_1000884A4();
      v765 = &v759[v764];
      *v765 = v758;
      v765[1] = v757;
      sub_1000D3C58();
      sub_10003BB84(v766);
      v759[v1591[11]] = v1581;
      sub_10003BB84(v1591[12]);
      sub_10003BB84(v1591[13]);
      v767 = v1591;
      *&v759[v1591[14]] = v751;
      sub_10003BB84(v767[15]);
      v759[v767[16]] = v752;
      v759[v767[17]] = v753;
      v768 = &v759[v767[18]];
      v769 = *&v1596[16];
      *v768 = *v1596;
      v768[1] = v769;
      v768[2] = *&v1596[32];
      v759[v767[19]] = v755;

      sub_1000180EC(v1482, &qword_100CAA9F0);
      sub_10000E7B0();
      sub_10001B350(v770, v771, v772, v767);
      v773 = sub_100003BCC(&v1584);
      sub_1000C8B5C(v773, v774, v775);
      v776 = sub_100003BCC(&v1588);
      v777 = v1585;
      sub_10001B350(v776, v778, v779, v1585);
      v780 = sub_100003BCC(v1592);
      sub_10001B350(v780, v781, v782, v1587);
      v783 = sub_100003BCC(v1596);
      sub_10001B350(v783, v784, v785, v1588);
      v786 = sub_100003BCC(&v1596[32]);
      sub_10001B350(v786, v787, v788, v1589);
      v789 = v1511;
      sub_1000253CC();
      sub_10001B350(v791, v792, v793, *(v790 - 256));
      sub_100017D68();
      v794 = v1586;
      sub_1000113EC();
      sub_1000C81EC();
      sub_100037814();
      sub_100095588();
      sub_100005404(v789);
      if (v338)
      {
        sub_1000180EC(v789, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v751, v795);
        sub_10001F700();
        sub_1000730E8();
      }

      v796 = v1590;
      sub_10001F700();
      sub_1000730E8();
      v797 = *(v794 + 16);
      LODWORD(v1583) = *(v794 + 24);
      sub_100037814();
      sub_100095588();
      sub_100005404(v789);
      v1590 = v797;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v798 = sub_1000201BC();
        v800 = sub_100024D10(v798, v799, v796);

        v801 = v1459;
        if (v800 != 1)
        {
          sub_1000180EC(v789, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v801 = v1459;
      }

      sub_100037814();
      sub_100095588();
      v802 = sub_1000201BC();
      sub_1000038B4(v802, v803, v767);
      if (v338)
      {
        swift_beginAccess();
        sub_100016E84();
        sub_1000C81EC();
        v804 = sub_1000201BC();
        sub_1000038B4(v804, v805, v767);
        v806 = v1469;
        if (!v338)
        {
          sub_1000180EC(v789, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v806 = v1469;
      }

      sub_1000519E0();
      sub_100095588();
      sub_100003BDC(v767);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v767);
        if (!v338)
        {
          sub_1000180EC(v767, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100095588();
      sub_10000E7EC(v755);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v755);
        if (!v338)
        {
          sub_1000180EC(v755, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100032590();
      sub_100095588();
      sub_10000554C(v777);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000554C(v777);
        v807 = v1546;
        if (!v338)
        {
          sub_1000180EC(v777, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
        v807 = v1546;
      }

      sub_100095588();
      sub_10000C814(v801);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_10000C814(v801);
        if (!v338)
        {
          sub_1000180EC(v801, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1596[32]);
      sub_100095588();
      v808 = sub_1000131C4();
      sub_1000113D0(v808, v809);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100003A40(v806);
        if (!v338)
        {
          sub_1000180EC(v806, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000E3238();
      v364 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v810 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v812 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v811 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v813 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v815 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v814 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v816 = *(v794 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v1403) = v813;
      v1402 = v1546;
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v817, v818, v819, v820, v821, v822, v823, v824, v1402, v807, v364, v810, v812, v811, v1403, v815, v814, v816, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420);
      sub_1000BCF58();

      sub_1000180EC(v1511, &qword_100CA65E8);
      sub_1000180EC(v1569, &qword_100CA6610);
      sub_1000180EC(v1565, &qword_100CA6618);
      sub_1000180EC(v1561, &qword_100CA6620);
      sub_1000180EC(v1557, &qword_100CA6628);
      sub_1000180EC(v1553, &qword_100CA6630);
      sub_1000180EC(v1549, &qword_100CA6638);
      sub_1000180EC(v1547, &qword_100CA6640);
      v365 = type metadata accessor for EnvironmentAction;
      v366 = v326;
LABEL_153:
      sub_1000E01A0(v366, v365);
      return v364;
    case 0xDu:
      sub_100003934();
      sub_10001B350(v446, v447, v448, v1590);
      v449 = sub_100021088(&v1432);
      v450 = v1580[0];
      sub_10001B350(v449, v451, v452, v1580[0]);
      v453 = v1582;
      v454 = v1582[1];
      v455 = v1582[2];
      v456 = v1582[3];
      sub_100021424();
      sub_100051BBC();
      sub_100003BFC(v326);
      LODWORD(v1583) = v454;
      LODWORD(v1578) = v455;
      LODWORD(v1577) = v456;
      if (v338)
      {
        (*(v1581 + 2))(v1485, &v453[v1591[8]], v450);
        sub_100003BFC(v326);
        if (!v338)
        {
          sub_1000180EC(v326, &qword_100CAA9F0);
        }
      }

      else
      {
        v1237 = sub_1000B91C8();
        v1238(v1237);
      }

      v1239 = v1591;
      v1240 = &v453[v1591[9]];
      v1241 = v1591[11];
      LODWORD(v1567) = v453[v1591[10]];
      LODWORD(v1572) = v453[v1241];
      v1242 = v1591[13];
      LODWORD(v1566) = v453[v1591[12]];
      LODWORD(v1571) = v453[v1242];
      v1243 = v1591[15];
      v1244 = v453;
      v1565 = *&v453[v1591[14]];
      LODWORD(v1570) = v453[v1243];
      v1245 = v1591[17];
      LODWORD(v1564) = v453[v1591[16]];
      LODWORD(v1569) = v453[v1245];
      v1246 = v1240[1];
      v1562 = *v1240;
      v1576 = v1246;
      v1247 = v1591[19];
      v1248 = &v1244[v1591[18]];
      v1250 = *(v1248 + 1);
      v1573 = *v1248;
      v1249 = v1573;
      v1574 = v1250;
      v1252 = *(v1248 + 3);
      v1575 = *(v1248 + 2);
      v1251 = v1575;
      LODWORD(v1568) = v1244[v1247];
      v1254 = *(v1248 + 4);
      v1253 = *(v1248 + 5);
      v1582 = v1254;
      v1563 = v1253;
      *v290 = 0;
      v290[1] = v1583;
      sub_1001707F0();
      v290[2] = v1255;
      sub_1000C8A6C();
      v1257 = sub_1000B7C04(v1256);
      v1258(v1257, v1485);
      v1259 = &v290[v1239[9]];
      *v1259 = v1562;
      *(v1259 + 1) = v1246;
      sub_10003BB84(v1239[10]);
      sub_10003BB84(v1239[11]);
      sub_10003BB84(v1239[12]);
      sub_10003BB84(v1239[13]);
      *&v290[v1239[14]] = v1565;
      sub_10003BB84(v1239[15]);
      sub_10003BB84(v1239[16]);
      sub_10003BB84(v1239[17]);
      v1260 = &v290[v1239[18]];
      *v1260 = v1249;
      *(v1260 + 1) = v1250;
      *(v1260 + 2) = v1251;
      *(v1260 + 3) = v1252;
      *(v1260 + 4) = v1254;
      v1261 = v1563;
      *(v1260 + 5) = v1563;
      sub_10003BB84(v1239[19]);
      sub_10000E7B0();
      sub_10001B350(v1262, v1263, v1264, v1239);
      v1265 = sub_100003BCC(v1515);
      sub_10001B350(v1265, v1266, v1267, v1584);
      v1268 = sub_100003BCC(&v1520);
      sub_10001B350(v1268, v1269, v1270, v1585);
      v1271 = sub_100003BCC(v1525);
      sub_10001B350(v1271, v1272, v1273, v1587);
      v1274 = sub_100003BCC(v1530);
      sub_10001B350(v1274, v1275, v1276, v1588);
      v1277 = sub_100003BCC(&v1535);
      sub_10001B350(v1277, v1278, v1279, v1589);
      v1280 = sub_100021088(v1463);
      sub_100043840(v1280, v1281, v1282);
      sub_100017D68();
      v1283 = v1586;
      sub_100021424();
      sub_1000C81EC();
      sub_100032590();
      sub_100051BBC();
      sub_100041064(v1250, 1);
      v1284 = v1261;

      v1285 = v1573;
      sub_100040D24();
      v1286 = v1575;
      v1287 = v1252;
      v1288 = v1582;
      if (v1249 == 1)
      {
        sub_1000180EC(v1250, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1251, v1289);
        sub_10001F700();
        sub_1000730E8();
      }

      v1290 = v1454;
      sub_10001F700();
      sub_1000730E8();
      v1291 = *(v1283 + 16);
      LODWORD(v1582) = *(v1283 + 24);
      sub_100051BBC();
      v1292 = sub_1000201BC();
      v1293 = v1590;
      sub_1000113D0(v1292, v1294);
      v1295 = v1430;
      v1583 = v1291;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1296 = sub_1000201BC();
        v1298 = sub_100024D10(v1296, v1297, v1293);

        v338 = v1298 == 1;
        v1299 = v1589;
        if (!v338)
        {
          sub_1000180EC(v321, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1299 = v1589;
      }

      sub_100051BBC();
      sub_1000113D0(v1295, 1);
      if (v338)
      {
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        sub_100003A40(v1295);
        v1300 = v1440;
        if (!v338)
        {
          sub_1000180EC(v1295, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v1300 = v1440;
      }

      sub_1000519E0();
      sub_100051BBC();
      sub_10000E7EC(v1252);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000E7EC(v1252);
        v1301 = v1446;
        if (!v338)
        {
          sub_1000180EC(v1252, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
        v1301 = v1446;
      }

      sub_100051BBC();
      sub_100005404(v1300);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_100005404(v1300);
        v1302 = v1464;
        if (!v338)
        {
          sub_1000180EC(v1300, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
        v1302 = v1464;
      }

      sub_100051BBC();
      sub_100003A40(v1301);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_100003A40(v1301);
        if (!v338)
        {
          sub_1000180EC(v1301, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(v1530);
      sub_100051BBC();
      sub_10000C814(v1290);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_10000C814(v1290);
        if (!v338)
        {
          sub_1000180EC(v1290, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      v1303 = sub_1000131C4();
      sub_1000038B4(v1303, v1304, v1299);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        v1305 = sub_1000131C4();
        sub_1000038B4(v1305, v1306, v1299);
        if (!v338)
        {
          sub_1000180EC(v1302, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_1000113EC();
      sub_1000730E8();
      v364 = *(v1283 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_100020B34();
LABEL_320:
      sub_10001322C();
LABEL_321:
      sub_10003E038(v899, v900, v901, v902, v903, v904, v905, v1236, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, *(&v1414 + 1), v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429);
      sub_1000BCF58();

LABEL_322:

      return v364;
    case 0xEu:
      v341 = v1586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v342 = v1591;
      LODWORD(v1583) = *(v341 + v1591[16]) ^ 1;
      v343 = sub_100003BCC(v1501);
      sub_10001B350(v343, v344, v345, v346);
      v347 = sub_100021088(v1506);
      sub_100051B1C(v347, v348, v349, &v1600);
      v350 = v1582;
      LODWORD(v1590) = *v1582;
      v1579 = v1582[1];
      sub_1000F0054(v1582[2]);
      LODWORD(v1571) = v350[3];
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v313);
      if (v338)
      {
        sub_1000C8F78();
        v352(v1495, &v350[v351], v341);
        sub_10000554C(v313);
        if (!v338)
        {
          sub_1000180EC(v313, &qword_100CAA9F0);
        }
      }

      else
      {
        sub_1000AF66C();
        v604(v1495, v313, v341);
      }

      v605 = &v350[v342[9]];
      v364 = *(v605 + 1);
      v1570 = *v605;
      v606 = v342[11];
      LODWORD(v1566) = v350[v342[10]];
      LODWORD(v1569) = v350[v606];
      v607 = v350[v342[12]];
      LODWORD(v1568) = v350[v342[13]];
      v608 = v342[15];
      v1565 = *&v350[v342[14]];
      LODWORD(v1567) = v350[v608];
      v609 = v342[18];
      LODWORD(v1581) = v350[v342[17]];
      v610 = *&v350[v609];
      v611 = *&v350[v609 + 8];
      v612 = v342;
      v614 = *&v350[v609 + 16];
      v613 = *&v350[v609 + 24];
      LODWORD(v1582) = v350[v342[19]];
      v615 = *&v350[v609 + 40];
      v1580[0] = *&v350[v609 + 32];
      v616 = v1431;
      *v1431 = v1590;
      v616[1] = v1579;
      sub_10005275C();
      v616[2] = v617;
      v616[3] = v1571;
      (*(v326 + 4))(&v616[v618], v1495);
      v619 = &v616[v612[9]];
      *v619 = v1570;
      v619[1] = v364;
      sub_100028B04(v612[10]);
      sub_100028B04(v612[11]);
      v616[v612[12]] = v607;
      sub_100028B04(v612[13]);
      *&v616[v612[14]] = v1565;
      sub_100028B04(v612[15]);
      v616[v612[16]] = v1583 & 1;
      v616[v612[17]] = v1581;
      v620 = &v616[v612[18]];
      *v620 = v610;
      v620[1] = v611;
      v620[2] = v614;
      v620[3] = v613;
      v621 = v1580[0];
      v620[4] = v1580[0];
      v620[5] = v615;
      v616[v612[19]] = v1582;
      v622 = v615;

      v623 = v610;
      v624 = v611;
      v625 = v614;
      v626 = v613;
      v627 = v621;
      sub_1000180EC(v1484, &qword_100CAA9F0);
      sub_10000E7B0();
      sub_10001B350(v628, v629, v630, v612);
      v631 = v1572;
      sub_100003934();
      sub_100045288(v632, v633, v634);
      sub_1000326C8(v635);
      sub_1000372BC();
      sub_10001B350(v636, v637, v638, v639);
      v640 = v1574;
      sub_100003934();
      sub_100040E40(v641, v642, v643);
      v645 = *(v644 - 256);
      sub_100003934();
      sub_100040F10(v646, v647, v648);
      v650 = sub_100021088(v649);
      sub_1000FFC84(v650, v651, v652);
      v654 = sub_100031F38(v653);
      sub_100040C3C(v654, v655, v656);
      sub_100030610();
      v657 = sub_100037894();
      v658 = v1476;
      sub_1000D2C20(v657, v659, v1476, v616, v631, v607, v640, v645, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414);
      sub_1000C8560();
      sub_1000180EC(v612, &qword_100CA65E8);
      sub_1000180EC(v610, &qword_100CA6610);
      sub_1000180EC(v645, &qword_100CA6618);
      sub_1000180EC(v640, &qword_100CA6620);
      sub_1000180EC(v607, &qword_100CA6628);
      sub_1000180EC(v631, &qword_100CA6630);
      v660 = v616;
LABEL_220:
      sub_1000180EC(v660, &qword_100CA6638);
      v518 = v658;
      goto LABEL_254;
    case 0xFu:
      v392 = sub_100003BCC(v1502);
      sub_10001B350(v392, v393, v394, v1590);
      v395 = sub_100021088(v1507);
      v396 = v1580[0];
      sub_10001B350(v395, v397, v398, v1580[0]);
      v399 = v1582;
      sub_1000F0054(*v1582);
      LODWORD(v1590) = v399[1];
      LODWORD(v1583) = v399[2];
      v1579 = v399[3];
      sub_100042230();
      sub_100095588();
      sub_100005404(v323);
      if (v338)
      {
        sub_100030280();
        v401(v1496, &v399[v400], v396);
        sub_100005404(v323);
        if (!v338)
        {
          sub_1000180EC(v323, &qword_100CAA9F0);
        }
      }

      else
      {
        v279 = v1581;
        (*(v1581 + 4))(v1496, v323, v396);
        v313 = v1591;
      }

      v907 = &v399[v313[9]];
      v908 = v907[1];
      v1591 = *v907;
      v909 = v313[11];
      LODWORD(v1569) = v399[v313[10]];
      LODWORD(v1581) = v399[v909];
      v910 = v313[13];
      LODWORD(v1568) = v399[v313[12]];
      LODWORD(v1580[0]) = v399[v910];
      v911 = v313[15];
      v1567 = *&v399[v313[14]];
      sub_100021DCC(v399[v911]);
      v912 = v313[17];
      LODWORD(v1566) = v399[v313[16]];
      LODWORD(v1570) = v399[v912];
      v913 = &v399[v313[18]];
      v915 = *v913;
      v914 = *(v913 + 1);
      v917 = *(v913 + 2);
      v916 = *(v913 + 3);
      v918 = v1432;
      *v1432 = v1576;
      v364 = *(v913 + 4);
      v919 = *(v913 + 5);
      v918[1] = v1590;
      v918[2] = v1583;
      v918[3] = v1579;
      (*(v279 + 4))(&v918[v920], v1496);
      v921 = &v918[v313[9]];
      *v921 = v1591;
      v921[1] = v908;
      sub_100087234(v313[10]);
      v918[v313[11]] = v1581;
      sub_100087234(v313[12]);
      sub_100087234(v313[13]);
      *&v918[v313[14]] = v1567;
      sub_100087234(v313[15]);
      sub_100087234(v313[16]);
      sub_100087234(v313[17]);
      v922 = &v918[v313[18]];
      *v922 = v915;
      v922[1] = v914;
      v922[2] = v917;
      v922[3] = v916;
      v922[4] = v364;
      v922[5] = v919;
      v918[v313[19]] = 0;
      v923 = v919;

      v924 = v915;
      v925 = v914;
      v926 = v917;
      v927 = v916;
      v928 = v364;
      sub_1000180EC(v1487, &qword_100CAA9F0);
      sub_10000E7B0();
      sub_10001B350(v929, v930, v931, v313);
      sub_100192448(&v1598);
      sub_100003934();
      sub_100045288(v932, v933, v934);
      sub_1000326C8(v935);
      sub_1000372BC();
      sub_10001B350(v936, v937, v938, v939);
      v940 = v1574;
      sub_100003934();
      sub_100040E40(v941, v942, v943);
      v945 = *(v944 - 256);
      sub_100003934();
      sub_100040F10(v946, v947, v948);
      v950 = sub_100021088(v949);
      sub_1000FFC84(v950, v951, v952);
      v954 = sub_100031F38(v953);
      sub_100040C3C(v954, v955, v956);
      sub_100030610();
      v957 = sub_100037894();
      v958 = v1477;
      sub_1000D2C20(v957, v959, v1477, v918, v917, v916, v940, v945, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414);
      sub_1000C8560();
      sub_1000180EC(v919, &qword_100CA65E8);
      sub_1000180EC(v313, &qword_100CA6610);
      sub_1000180EC(v945, &qword_100CA6618);
      sub_1000180EC(v940, &qword_100CA6620);
      sub_1000180EC(v916, &qword_100CA6628);
      sub_1000180EC(v917, &qword_100CA6630);
      sub_1000180EC(v918, &qword_100CA6638);
      v518 = v958;
      goto LABEL_254;
    case 0x10u:
      v330 = sub_100003BCC(&v1579);
      sub_10001B350(v330, v331, v332, v1590);
      v333 = sub_100031F38(v1508);
      sub_1000C8420(v333, v334, v335);
      v336 = v1582;
      v337 = *v1582;
      LODWORD(v1583) = v1582[1];
      sub_1000C8A78(v1582[2]);
      sub_1000D3DC0(v336[3]);
      sub_100021424();
      sub_100095588();
      sub_100003A40(v326);
      if (v338)
      {
        sub_100038068();
        v519 = v1581;
        v339 = sub_1000E159C(&v1514);
        v340(v339);
        sub_100003A40(v326);
        if (!v338)
        {
          sub_1000180EC(v326, &qword_100CAA9F0);
        }
      }

      else
      {
        v519 = v1581;
        v520 = sub_1000B91C8();
        v521(v520);
        v305 = v1591;
      }

      v522 = &v336[v305[9]];
      v523 = v522[1];
      v1581 = *v522;
      v524 = v305[11];
      LODWORD(v1573) = v336[v305[10]];
      LODWORD(v1580[0]) = v336[v524];
      v525 = v305[13];
      LODWORD(v1572) = v336[v305[12]];
      LODWORD(v1576) = v336[v525];
      v526 = v305[15];
      v1570 = *&v336[v305[14]];
      LODWORD(v1575) = v336[v526];
      v527 = v336[v305[16]];
      LODWORD(v1574) = v336[v305[17]];
      v528 = &v336[v1591[18]];
      v530 = *v528;
      v529 = *(v528 + 1);
      v532 = *(v528 + 2);
      v531 = *(v528 + 3);
      v533 = v1551;
      *v1551 = v337;
      v535 = *(v528 + 4);
      v534 = *(v528 + 5);
      v533[1] = v1583;
      sub_1001707F0();
      v533[2] = v536;
      sub_1000C8A6C();
      v533[3] = v537;
      (*(v519 + 4))(&v533[v538], v1497);
      sub_1000884A4();
      v540 = &v533[v539];
      *v540 = v1581;
      v540[1] = v523;
      sub_1000D3C58();
      sub_1000715E4(v541);
      sub_1000715E4(*(v542 + 44));
      sub_1000715E4(*(v543 + 48));
      sub_1000715E4(*(v544 + 52));
      *&v533[*(v545 + 56)] = v1570;
      sub_1000715E4(v1591[15]);
      v533[*(v546 + 64)] = v527;
      v547 = v1591;
      v533[v1591[17]] = v1574;
      v548 = &v533[*(v547 + 72)];
      *v548 = v530;
      v548[1] = v529;
      v548[2] = v532;
      v548[3] = v531;
      v548[4] = v535;
      v548[5] = v534;
      v533[*(v547 + 76)] = 1;
      v549 = v534;

      v550 = v530;
      v551 = v529;
      v552 = v532;
      v553 = v531;
      v554 = v535;
      sub_1000180EC(v1489, &qword_100CAA9F0);
      sub_10000E7B0();
      sub_10001B350(v555, v556, v557, v547);
      v558 = sub_100003BCC(&v1586);
      sub_1000C8B5C(v558, v559, v560);
      v561 = sub_100003BCC(&v1590);
      v562 = v1585;
      sub_10001B350(v561, v563, v564, v1585);
      v565 = sub_100003BCC(v1594);
      sub_10001B350(v565, v566, v567, v1587);
      v568 = sub_100003BCC(&v1596[16]);
      sub_10001B350(v568, v569, v570, v1588);
      v571 = sub_100003BCC(v1597);
      sub_10001B350(v571, v572, v573, v1589);
      v574 = v1514;
      sub_1000253CC();
      sub_100051B1C(v575, v576, v577, v578);
      sub_100017D68();
      v579 = v1586;
      sub_1000519E0();
      sub_1000C81EC();
      sub_10003778C();
      sub_100095588();
      sub_10000554C(v574);
      if (v338)
      {
        sub_1000180EC(v574, &qword_100CA65E8);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v530, v580);
        sub_10001F700();
        sub_1000730E8();
      }

      v581 = v1590;
      v582 = v1462;
      v583 = v1424;
      sub_10001F700();
      sub_1000730E8();
      v584 = *(v579 + 16);
      LODWORD(v1583) = *(v579 + 24);
      sub_100030224(&v1579);
      sub_100095588();
      sub_100005404(v583);
      v585 = v1439[1];
      v1590 = v584;
      if (v338)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v586 = sub_1000162A4();
        v588 = sub_100024D10(v586, v587, v581);

        if (v588 != 1)
        {
          sub_1000180EC(v583, &qword_100CA6640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_1000131DC();
      sub_100095588();
      v589 = sub_1000162A4();
      sub_1000038B4(v589, v590, v547);
      if (v338)
      {
        sub_10008661C();
        sub_100016E84();
        sub_1000C81EC();
        v591 = sub_1000162A4();
        sub_1000038B4(v591, v592, v547);
        v364 = v1472;
        if (!v338)
        {
          sub_1000180EC(v583, &qword_100CA6638);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v364 = v1472;
      }

      sub_1000870F8(&v1586);
      sub_100095588();
      sub_100003BDC(v585);
      if (v338)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v585);
        if (!v338)
        {
          sub_1000180EC(v585, &qword_100CA6630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100095588();
      sub_10000E7EC(v529);
      if (v338)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v529);
        if (!v338)
        {
          sub_1000180EC(v529, &qword_100CA6628);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100032590();
      sub_100095588();
      sub_100003A40(v562);
      if (v338)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_100003A40(v562);
        if (!v338)
        {
          sub_1000180EC(v562, &qword_100CA6620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1596[16]);
      sub_100095588();
      sub_100003BFC(v582);
      if (v338)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BFC(v582);
        if (!v338)
        {
          sub_1000180EC(v582, &qword_100CA6618);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(v1597);
      sub_100095588();
      v593 = sub_1000131C4();
      sub_100013710(v593, v594);
      if (v338)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_10000554C(v364);
        if (!v338)
        {
          sub_1000180EC(v364, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      sub_1000E5A60();
      sub_100003B6C();
      sub_100020B34();
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v595, v596, v597, v598, v599, v600, v601, v602, v1404, v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, *(&v1414 + 1), v1415, v1416, v1417, v1418, v1419, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429);
      sub_1000BCF58();

      sub_1000180EC(v1514, &qword_100CA65E8);
      sub_1000180EC(v1571, &qword_100CA6610);
      sub_1000180EC(v1567, &qword_100CA6618);
      sub_1000180EC(v1563, &qword_100CA6620);
      sub_1000180EC(v1559, &qword_100CA6628);
      sub_1000180EC(v1555, &qword_100CA6630);
      sub_1000180EC(v1551, &qword_100CA6638);
      v603 = &v1579;
LABEL_253:
      v518 = *(v603 - 32);
LABEL_254:
      sub_1000180EC(v518, &qword_100CA6640);
      break;
    default:
      sub_100045448();
      v327 = *v326;
      sub_1000161C0((v328 + 16), *(v328 + 40));
      v329 = sub_1003D3E3C(v1582[1], v1586, v327);
LABEL_25:
      v364 = v329;
      break;
  }

  return v364;
}