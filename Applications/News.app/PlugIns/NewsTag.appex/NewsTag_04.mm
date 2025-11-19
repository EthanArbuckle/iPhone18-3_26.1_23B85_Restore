void sub_10005E3BC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  swift_retain_n();
  v5 = v4;
  v6 = sub_1000A3540(v3);
  if (v6 < v3)
  {
    if (v3 >= -1)
    {
      v7 = v6;
      if (v3 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100017A54(&qword_1000E7720);
        v8 = sub_1000A2F60();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3 / 2;
      }

      v28[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v28[1] = (v3 / 2);
      v9 = v5;

      sub_10005DB30(v28, &v29, a1, v7, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v3 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v3)
  {
    if (v3 == 1)
    {
    }

    else
    {
      v10 = *a1;
      v11 = v5;

      v12 = -1;
      v13 = 1;
      v14 = v10;
      v24 = v3;
      do
      {
        v26 = v13;
        v27 = v12;
        v15 = *(v10 + 8 * v13);
        v25 = v14;
        do
        {
          v16 = *v14;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v17 = [v11 objectForKey:v15];
          if (v17)
          {
            v28[0] = v17;
            v18 = v17;
            swift_getAtKeyPath();

            v19 = v29;
          }

          else
          {
            v19 = 0.0;
          }

          v20 = [v11 objectForKey:v16];
          if (v20)
          {
            v28[0] = v20;
            v21 = v20;
            swift_getAtKeyPath();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            if (v29 >= v19)
            {
              break;
            }
          }

          else
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v19 <= 0.0)
            {
              break;
            }
          }

          if (!v10)
          {
            goto LABEL_31;
          }

          v22 = *v14;
          v15 = v14[1];
          *v14 = v15;
          v14[1] = v22;
          --v14;
        }

        while (!__CFADD__(v12++, 1));
        v13 = v26 + 1;
        v14 = v25 + 1;
        v12 = v27 - 1;
      }

      while (v26 + 1 != v24);
    }
  }

  else
  {
  }
}

void sub_10005E6AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  swift_retain_n();
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10007051C(v3);
    *a1 = v3;
  }

  v7 = *(v3 + 16);
  v9[0] = v3 + 32;
  v9[1] = v7;
  v8 = v5;

  sub_10005E3BC(v9, v8);

  sub_1000A3330();
}

void sub_10005E788(uint64_t a1)
{
  v1 = sub_10005CE74(a1);
  if (v1)
  {
    v2 = v1;
    sub_100017A54(&unk_1000E5270);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1000AA450;
    sub_1000A3370();
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10001A97C();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    v4 = v2[2];
    *(v3 + 96) = &type metadata for Int;
    *(v3 + 104) = &protocol witness table for Int;
    *(v3 + 72) = v4;
    sub_100028E34(0, &qword_1000E76B0);
    v5 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    sub_1000A1C60();
    v6 = sub_1000A1C50();
    v7._rawValue = v2;
    sub_1000A1C40(v7);
  }

  else
  {
    sub_1000A3070();
    sub_100017A54(&unk_1000E5270);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AA7C0;
    sub_1000A3370();
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10001A97C();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_100028E34(0, &qword_1000E76B0);
    v6 = sub_1000A3190();
    sub_1000A1DB0();
  }
}

uint64_t sub_10005E9B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005EA28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortingScore];
  *a2 = v4;
  return result;
}

id sub_10005EA68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 personalizationScore];
  *a2 = v4;
  return result;
}

uint64_t sub_10005EAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Section();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005EB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Section();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SectionHeaderView()
{
  result = qword_1000E77F8;
  if (!qword_1000E77F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005ECA0()
{
  result = type metadata accessor for Section();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005ED14(uint64_t a1, int a2)
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

uint64_t sub_10005ED5C(uint64_t result, int a2, int a3)
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

uint64_t sub_10005EDC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100017A54(&qword_1000E7830);
  __chkstk_darwin(v3);
  v5 = (v16 - v4);
  v6 = [*(v1 + 8) name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000A2D40();
    v10 = v9;

    *v5 = sub_1000A2890();
    v5[1] = v11;
    v12 = sub_100017A54(&qword_1000E7838);
    sub_10005EF44(v1, v8, v10, v5 + *(v12 + 44));

    type metadata accessor for SectionHeaderView();
    sub_1000A28C0();
    sub_1000A1E90();
    v13 = (v5 + *(v3 + 36));
    v14 = v16[1];
    *v13 = v16[0];
    v13[1] = v14;
    v13[2] = v16[2];
    sub_100061264();
  }

  result = sub_1000A2820();
  *a1 = result;
  return result;
}

uint64_t sub_10005EF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_100017A54(&qword_1000E7858);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100017A54(&qword_1000E7860);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  *v17 = sub_1000A2280();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v17[*(sub_100017A54(&qword_1000E7868) + 44)];
  *v11 = sub_1000A2160();
  *(v11 + 1) = 0x4008000000000000;
  v11[16] = 0;
  v19 = sub_100017A54(&qword_1000E7870);
  sub_10005F938(a1, a2, v25, &v11[*(v19 + 44)]);
  sub_100028B94(v11, v9, &qword_1000E7858);
  *v18 = 0;
  v18[8] = 1;
  v20 = sub_100017A54(&qword_1000E7878);
  sub_100028B94(v9, &v18[*(v20 + 48)], &qword_1000E7858);
  sub_10001FE6C(v11, &qword_1000E7858);
  sub_10001FE6C(v9, &qword_1000E7858);
  v21 = sub_10005F1FC();
  LOBYTE(a1) = sub_1000A2390();
  sub_100028B94(v17, v15, &qword_1000E7860);
  v22 = v26;
  sub_100028B94(v15, v26, &qword_1000E7860);
  v23 = v22 + *(sub_100017A54(&qword_1000E7880) + 48);
  *v23 = v21;
  *(v23 + 8) = a1;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 1;

  sub_10001FE6C(v17, &qword_1000E7860);

  return sub_10001FE6C(v15, &qword_1000E7860);
}

id sub_10005F1FC()
{
  v1 = sub_100017A54(&qword_1000E7888);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v32 - v3;
  v38 = sub_100017A54(&qword_1000E7890);
  __chkstk_darwin(v38);
  v36 = &v32 - v4;
  v5 = sub_1000A2680();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A2770();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    if (FCIsWidgetDebugInspectionEnabled())
    {

      return sub_100060A90();
    }

    else
    {
      v32 = v2;
      v33 = v1;
      if (qword_1000E46E0 != -1)
      {
        swift_once();
      }

      v14 = qword_1000F1BA8;
      sub_1000A2750();
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v35 = sub_1000A27D0();

      (*(v10 + 8))(v12, v9);
      v15 = sub_1000A2D10();
      v16 = objc_opt_self();
      v17 = [v16 colorWithHexString:v15];

      [v17 red];
      [v17 green];
      [v17 blue];
      v18 = enum case for Color.RGBColorSpace.sRGB(_:);
      v19 = *(v6 + 104);
      v19(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
      v34 = sub_1000A2730();

      v20 = sub_1000A2D10();
      v21 = [v16 colorWithHexString:v20];

      [v21 red];
      [v21 green];
      [v21 blue];
      v19(v8, v18, v5);
      v22 = sub_1000A2730();

      sub_100017A54(&qword_1000E7898);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000AA450;
      *(v23 + 32) = v34;
      *(v23 + 40) = v22;

      sub_1000A2870();
      sub_1000A28D0();
      sub_1000A28E0();
      sub_1000A1EF0();
      v24 = v43;
      LOBYTE(v42[0]) = 0;
      type metadata accessor for SectionHeaderView();
      v25 = v35;

      sub_1000A28C0();
      sub_1000A1E90();
      *&v41[38] = v48;
      *&v41[22] = v47;
      *&v41[6] = v46;
      *&v39[0] = v24;
      *(v39 + 8) = v44;
      *(&v39[1] + 8) = v45;
      *(&v39[2] + 1) = v25;
      *&v40[0] = 0x3FF0000000000000;
      WORD4(v40[0]) = 0;
      *(v40 + 10) = *v41;
      *(&v40[1] + 10) = *&v41[16];
      *(&v40[2] + 10) = *&v41[32];
      *(&v40[3] + 1) = *(&v48 + 1);
      v26 = sub_100017A54(&qword_1000E78A0);
      v27 = sub_10006131C();
      v28 = v37;
      sub_1000A25A0();
      v42[3] = v40[0];
      v42[4] = v40[1];
      v42[5] = v40[2];
      v42[6] = v40[3];
      v42[0] = v39[0];
      v42[1] = v39[1];
      v42[2] = v39[2];
      sub_10001FE6C(v42, &qword_1000E78A0);
      *&v39[0] = v26;
      *(&v39[0] + 1) = v27;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v30 = v33;
      sub_1000A2560();
      (*(v32 + 8))(v28, v30);
      *&v39[0] = v30;
      *(&v39[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v31 = sub_1000A2820();

      return v31;
    }
  }

  else
  {

    return sub_1000A2820();
  }
}

uint64_t sub_10005F938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a2;
  v102 = a3;
  v106 = a4;
  v94 = sub_1000A24F0();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000A2510();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000A2530();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000A21D0();
  __chkstk_darwin(v8 - 8);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017A54(&qword_1000E52B0);
  __chkstk_darwin(v10 - 8);
  v103 = &v79 - v11;
  v108 = sub_1000A1810();
  v105 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100017A54(&qword_1000E7940);
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v79 - v13;
  v100 = sub_100017A54(&qword_1000E7948);
  __chkstk_darwin(v100);
  v83 = &v79 - v14;
  v98 = sub_100017A54(&qword_1000E7950);
  __chkstk_darwin(v98);
  v99 = &v79 - v15;
  v80 = sub_1000A2240();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100017A54(&qword_1000E7958);
  __chkstk_darwin(v95);
  v19 = &v79 - v18;
  v97 = sub_100017A54(&qword_1000E7960);
  v20 = __chkstk_darwin(v97);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v79 - v23;
  v25 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v25 - 8);
  v27 = &v79 - v26;
  v28 = sub_1000A1700();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v79 - v33;
  v35 = sub_100017A54(&qword_1000E7968);
  v36 = __chkstk_darwin(v35 - 8);
  v104 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v109 = &v79 - v38;
  v96 = type metadata accessor for Section();
  sub_100028B94(a1 + *(v96 + 32), v27, &unk_1000E5DD0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10001FE6C(v27, &unk_1000E5DD0);
    v39 = sub_100033858();
    v41 = v101;
    v40 = v102;
    sub_1000607A8(v101, v102, v39, v19);

    v110 = v41;
    v111 = v40;
    sub_1000616C4();
    sub_10001B33C();
    sub_1000A25E0();
    sub_10001FE6C(v19, &qword_1000E7958);
    sub_1000A2220();
    sub_1000A1F10();
    (*(v79 + 8))(v17, v80);
    sub_10001FE6C(v22, &qword_1000E7960);
    sub_100028B94(v24, v99, &qword_1000E7960);
    swift_storeEnumTagMultiPayload();
    sub_1000617FC();
    sub_10006190C();
    sub_1000A22F0();
    sub_10001FE6C(v24, &qword_1000E7960);
  }

  else
  {
    (*(v29 + 32))(v34, v27, v28);
    v42 = (*(v29 + 16))(v32, v34, v28);
    __chkstk_darwin(v42);
    v43 = a1;
    v45 = v101;
    v44 = v102;
    *(&v79 - 4) = a1;
    *(&v79 - 3) = v45;
    v77 = v44;
    sub_1000616C4();
    v46 = v81;
    sub_1000A2440();
    v110 = v45;
    v111 = v44;
    sub_100029050(&qword_1000E7998, &qword_1000E7940);
    sub_10001B33C();
    v47 = v83;
    v48 = v84;
    sub_1000A25E0();
    (*(v82 + 8))(v46, v48);
    sub_100028B94(v47, v99, &qword_1000E7948);
    swift_storeEnumTagMultiPayload();
    sub_1000617FC();
    sub_10006190C();
    sub_1000A22F0();
    sub_10001FE6C(v47, &qword_1000E7948);
    (*(v29 + 8))(v34, v28);
    a1 = v43;
  }

  v49 = v103;
  sub_100028B94(a1 + *(v96 + 36), v103, &qword_1000E52B0);
  v50 = v105;
  v51 = v108;
  if ((*(v105 + 48))(v49, 1, v108) == 1)
  {
    sub_10001FE6C(v49, &qword_1000E52B0);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v102 = a1;
    (*(v50 + 32))(v107, v49, v51);
    sub_1000A21C0();
    v112._countAndFlagsBits = 40;
    v112._object = 0xE100000000000000;
    v56 = v50;
    sub_1000A21B0(v112);
    (*(v92 + 104))(v91, enum case for Text.DateStyle.UnitsConfiguration.Style.brief(_:), v94);
    v57 = v87;
    sub_1000A2500();
    v58 = v86;
    sub_1000A2520();
    (*(v90 + 8))(v57, v93);
    sub_1000A2190();
    (*(v88 + 8))(v58, v89);
    v113._countAndFlagsBits = 41;
    v113._object = 0xE100000000000000;
    sub_1000A21B0(v113);
    sub_1000A21F0();
    if (qword_1000E46C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v59 = static NSBundle.newsToday2;
    v78 = 256;
    v77 = 0;
    v60 = sub_1000A2540();
    v62 = v61;
    v64 = v63;
    sub_1000A2720();
    v52 = sub_1000A2480();
    v53 = v65;
    v67 = v66;
    v55 = v68;

    sub_100028640(v60, v62, v64 & 1);

    (*(v56 + 8))(v107, v108);
    v54 = v67 & 1;
    sub_100028630(v52, v53, v67 & 1);

    a1 = v102;
  }

  v69 = *(a1 + *(type metadata accessor for SectionHeaderView() + 20));
  v70 = v109;
  v71 = v104;
  sub_100028B94(v109, v104, &qword_1000E7968);
  v72 = v106;
  sub_100028B94(v71, v106, &qword_1000E7968);
  v73 = sub_100017A54(&qword_1000E79A8);
  v74 = (v72 + *(v73 + 48));
  *v74 = v52;
  v74[1] = v53;
  v74[2] = v54;
  v74[3] = v55;
  v75 = v72 + *(v73 + 64);
  sub_100061998(v52, v53, v54, v55);
  sub_1000619DC(v52, v53, v54, v55);
  *v75 = v69;
  *(v75 + 8) = 0;
  sub_10001FE6C(v70, &qword_1000E7968);
  sub_1000619DC(v52, v53, v54, v55);
  return sub_10001FE6C(v71, &qword_1000E7968);
}

uint64_t sub_10006073C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_100033858();
  sub_1000607A8(a1, a2, v6, a3);
}

uint64_t sub_1000607A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v33 = a4;
  v31 = sub_100017A54(&qword_1000E7978);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - v7;
  v9 = *(v4 + *(type metadata accessor for SectionHeaderView() + 20) + 16);
  sub_1000A2430();
  *&v41[0] = a1;
  *(&v41[0] + 1) = a2;
  sub_10001B33C();

  v10 = sub_1000A2550();
  v12 = v11;
  LOBYTE(a1) = v13;

  v14 = sub_1000A24C0();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_100028640(v10, v12, a1 & 1);

  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v40 = v18 & 1;
  v39 = 0;
  *&v34 = v14;
  *(&v34 + 1) = v16;
  LOBYTE(v35) = v18 & 1;
  *(&v35 + 1) = v20;
  *&v36 = KeyPath;
  *(&v36 + 1) = 1;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v22;
  v38 = v30;

  v23 = sub_100017A54(&qword_1000E56F8);
  v24 = sub_100028EE0();
  sub_1000A2560();
  v41[2] = v36;
  v41[3] = v37;
  v42 = v38;
  v41[0] = v34;
  v41[1] = v35;
  sub_10001FE6C(v41, &qword_1000E56F8);
  *&v34 = v23;
  *(&v34 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  v26 = v31;
  sub_1000A25A0();

  (*(v32 + 8))(v8, v26);
  v27 = swift_getKeyPath();
  result = sub_100017A54(&qword_1000E7958);
  v29 = (v25 + *(result + 36));
  *v29 = v27;
  v29[1] = 0x3FE8000000000000;
  return result;
}

id sub_100060A90()
{
  v29 = sub_100017A54(&qword_1000E78E0);
  __chkstk_darwin(v29);
  v0 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_1000A1700();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  result = FCURLForWidgetDebugLogs();
  if (result)
  {
    v14 = result;
    sub_1000A16C0();

    v15 = sub_1000A16D0();
    v17 = v16;
    v27 = *(v4 + 8);
    v27(v12, v3);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1000A32B0(37);

    v30 = 0xD000000000000023;
    v31 = 0x80000001000B4850;
    v32._countAndFlagsBits = v15;
    v32._object = v17;
    sub_1000A2E10(v32);
    sub_1000A16E0();

    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_10001FE6C(v2, &unk_1000E5DD0);
      sub_1000A3070();
      sub_100017A54(&unk_1000E5270);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000AA7C0;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10001A97C();
      *(v18 + 32) = v15;
      *(v18 + 40) = v17;
      sub_10001A9D0();
      v19 = sub_1000A3190();
      sub_1000A1DB0();

      return sub_1000A2820();
    }

    else
    {

      (*(v4 + 32))(v10, v2, v3);
      v20 = (*(v4 + 16))(v7, v10, v3);
      __chkstk_darwin(v20);
      *(&v26 - 2) = v28;
      sub_100017A54(&qword_1000E78E8);
      v21 = sub_100017A9C(&qword_1000E78F0);
      v22 = sub_100017A9C(&qword_1000E78F8);
      v23 = sub_1000614F4();
      v30 = v22;
      v31 = v23;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v30 = v21;
      v31 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_1000A2440();
      sub_100029050(&qword_1000E7938, &qword_1000E78E0);
      v25 = sub_1000A2820();
      v27(v10, v3);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100060F60@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_1000A2770();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100017A54(&qword_1000E78F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_1000A2760();
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v9 = sub_1000A27D0();

  (*(v2 + 8))(v4, v1);
  v10 = sub_1000A26F0();
  type metadata accessor for SectionHeaderView();
  sub_1000A28C0();
  sub_1000A1E90();
  *&v17[38] = v21;
  *&v17[22] = v20;
  *&v17[6] = v19;
  *(v16 + 10) = *v17;
  v18 = 0;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  *&v16[0] = 0x3FF0000000000000;
  WORD4(v16[0]) = 0;
  *(&v16[1] + 10) = *&v17[16];
  *(&v16[2] + 10) = *&v17[32];
  *(&v16[3] + 1) = *(&v21 + 1);
  v11 = sub_100017A54(&qword_1000E78F8);
  v12 = sub_1000614F4();
  sub_1000A25A0();
  v22[2] = v16[1];
  v22[3] = v16[2];
  v22[4] = v16[3];
  v22[0] = v15;
  v22[1] = v16[0];
  sub_10001FE6C(v22, &qword_1000E78F8);
  *&v15 = v11;
  *(&v15 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_1000A2560();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100061264()
{
  result = qword_1000E7840;
  if (!qword_1000E7840)
  {
    sub_100017A9C(&qword_1000E7830);
    sub_100029050(&qword_1000E7848, &qword_1000E7850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7840);
  }

  return result;
}

unint64_t sub_10006131C()
{
  result = qword_1000E78A8;
  if (!qword_1000E78A8)
  {
    sub_100017A9C(&qword_1000E78A0);
    sub_1000613A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E78A8);
  }

  return result;
}

unint64_t sub_1000613A8()
{
  result = qword_1000E78B0;
  if (!qword_1000E78B0)
  {
    sub_100017A9C(&qword_1000E78B8);
    sub_100061434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E78B0);
  }

  return result;
}

unint64_t sub_100061434()
{
  result = qword_1000E78C0;
  if (!qword_1000E78C0)
  {
    sub_100017A9C(&qword_1000E78C8);
    sub_100043270();
    sub_100029050(&qword_1000E78D0, &qword_1000E78D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E78C0);
  }

  return result;
}

unint64_t sub_1000614F4()
{
  result = qword_1000E7900;
  if (!qword_1000E7900)
  {
    sub_100017A9C(&qword_1000E78F8);
    sub_100061580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7900);
  }

  return result;
}

unint64_t sub_100061580()
{
  result = qword_1000E7908;
  if (!qword_1000E7908)
  {
    sub_100017A9C(&qword_1000E7910);
    sub_10006160C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7908);
  }

  return result;
}

unint64_t sub_10006160C()
{
  result = qword_1000E7918;
  if (!qword_1000E7918)
  {
    sub_100017A9C(&qword_1000E7920);
    sub_100029050(&qword_1000E7928, &qword_1000E7930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7918);
  }

  return result;
}

unint64_t sub_1000616C4()
{
  result = qword_1000E7970;
  if (!qword_1000E7970)
  {
    sub_100017A9C(&qword_1000E7958);
    sub_100017A9C(&qword_1000E7978);
    sub_100017A9C(&qword_1000E56F8);
    sub_100028EE0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100029050(&qword_1000E7980, &qword_1000E7988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7970);
  }

  return result;
}

unint64_t sub_1000617FC()
{
  result = qword_1000E7990;
  if (!qword_1000E7990)
  {
    sub_100017A9C(&qword_1000E7948);
    sub_100029050(&qword_1000E7998, &qword_1000E7940);
    sub_1000618B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7990);
  }

  return result;
}

unint64_t sub_1000618B4()
{
  result = qword_1000E54F8;
  if (!qword_1000E54F8)
  {
    sub_1000A2350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54F8);
  }

  return result;
}

unint64_t sub_10006190C()
{
  result = qword_1000E79A0;
  if (!qword_1000E79A0)
  {
    sub_100017A9C(&qword_1000E7960);
    sub_1000616C4();
    sub_1000618B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E79A0);
  }

  return result;
}

uint64_t sub_100061998(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100028630(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000619DC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100028640(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100061A50()
{
  v1 = sub_1000A2680();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + *(type metadata accessor for TodayContent() + 28)) widgetConfig];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v5 audioIndicatorColor];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_1000A2D40();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_8:
    v7 = sub_1000A2D10();
    v12 = [objc_opt_self() colorWithHexString:v7];
    goto LABEL_9;
  }

  v12 = [objc_opt_self() colorWithHexString:v7];
LABEL_9:
  v13 = v12;

  [v13 red];
  [v13 green];
  [v13 blue];
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  v14 = sub_1000A2730();

  return v14;
}

int *sub_100061C74()
{
  v1 = type metadata accessor for Item(0);
  v21 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Section();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v24 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TodayContent();
  v8 = *(v0 + result[6]);
  v23 = *(v8 + 16);
  if (v23)
  {
    v9 = 0;
    v22 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = &_swiftEmptyArrayStorage;
    v19 = v8;
    v20 = v5;
    while (v9 < *(v8 + 16))
    {
      v11 = v24;
      sub_1000648BC(v22 + *(v5 + 72) * v9, v24, type metadata accessor for Section);
      v12 = *(v11 + 16);

      sub_10006485C(v11, type metadata accessor for Section);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v15 = v12 + v14;
        v16 = *(v21 + 72);
        do
        {
          sub_1000648BC(v15, v3, type metadata accessor for Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_100084D18(0, v10[2] + 1, 1, v10);
          }

          v18 = v10[2];
          v17 = v10[3];
          if (v18 >= v17 >> 1)
          {
            v10 = sub_100084D18(v17 > 1, v18 + 1, 1, v10);
          }

          v10[2] = v18 + 1;
          sub_100064924(v3, v10 + v14 + v18 * v16, type metadata accessor for Item);
          v15 += v16;
          --v13;
        }

        while (v13);

        v8 = v19;
        v5 = v20;
      }

      else
      {
      }

      if (++v9 == v23)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100061F4C(void *a1)
{
  v2 = [a1 banner];
  if (v2 && (v3 = v2, v4 = [v2 imageMethod], v3, v4 == 1))
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 sourceIdentifier];
    v7 = sub_1000A2D40();
    v9 = v8;

    if (v7 == sub_1000A2D40() && v9 == v10)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1000A3560();
    }
  }

  return v5 & 1;
}

uint64_t sub_100062038@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000A1700();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028B94(a1, v8, &unk_1000E5DD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001FE6C(v8, &unk_1000E5DD0);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    if (qword_1000E4718 != -1)
    {
      swift_once();
    }

    sub_10002FDC4(v9, qword_1000F1C38);
    sub_100064814(&qword_1000E7B60, &type metadata accessor for URL);
    if (sub_1000A2CE0())
    {
      v14(a3, v12, v9);
      return (*(v10 + 56))(a3, 0, 1, v9);
    }

    else
    {
      v15 = objc_opt_self();
      sub_1000A1670(v16);
      v18 = v17;
      v19 = [v15 engagementDescriptorWithTargetURL:v17];

      sub_100018688(a2, a2[3]);
      sub_10007BB48(v19, a3);
      swift_unknownObjectRelease();
      return (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_100062320@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Section();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - v13;
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for TodayContent();
  v18 = *(v4 + v17[6]);
  v19 = v18[2];

  if (!v19)
  {
    sub_1000A3080();
    sub_100028E34(0, &qword_1000E76B0);
    v23 = sub_1000A3190();
    sub_1000A1DB0();

    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v20 = v18[2];
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = sub_100070428(v18);
  v20 = v18[2];
  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = v20 - 1;
  v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v9 = *(v9 + 72);
  v22 = v18 + v38 + v9 * v21;
  v18[2] = v21;
  sub_100064924(v22, v16, type metadata accessor for Section);
  sub_100033A90(a1, a2, v14);
  sub_1000648BC(v14, v39, type metadata accessor for Section);
  v19 = v18[2];
  v20 = v18[3];
  a2 = v19 + 1;
  if (v19 >= v20 >> 1)
  {
LABEL_10:
    v18 = sub_100084E4C(v20 > 1, a2, 1, v18);
  }

  sub_10006485C(v14, type metadata accessor for Section);
  sub_10006485C(v16, type metadata accessor for Section);
  v18[2] = a2;
  sub_100064924(v39, v18 + v38 + v19 * v9, type metadata accessor for Section);
LABEL_7:
  v24 = *v4;
  sub_100028B94(v4 + v17[5], a3 + v17[5], &unk_1000E8800);
  v25 = *(v4 + v17[7]);
  v26 = *(v4 + v17[8]);
  sub_100028B94(v4 + v17[9], a3 + v17[9], &unk_1000E5DD0);
  v27 = *(v4 + v17[10]);
  v28 = (v4 + v17[11]);
  v29 = *v28;
  v30 = v28[1];
  v31 = (v4 + v17[12]);
  *a3 = v24;
  *(a3 + v17[6]) = v18;
  *(a3 + v17[7]) = v25;
  *(a3 + v17[8]) = v26;
  v33 = *v31;
  v32 = v31[1];
  *(a3 + v17[10]) = v27;
  v34 = (a3 + v17[11]);
  *v34 = v29;
  v34[1] = v30;
  v35 = (a3 + v17[12]);
  *v35 = v33;
  v35[1] = v32;

  v36 = v24;
  swift_unknownObjectRetain();
}

uint64_t sub_100062694(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x72656E6E6162;
    v6 = 0x736E6F6974636573;
    if (a1 != 2)
    {
      v6 = 0x666E496863746566;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
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
    v1 = 0xD000000000000014;
    v2 = 0x6F74537465737361;
    if (a1 != 7)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
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

uint64_t sub_1000627DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100064528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062804(uint64_t a1)
{
  v2 = sub_100063388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062840(uint64_t a1)
{
  v2 = sub_100063388();

  return CodingKey.debugDescription.getter(a1, v2);
}

void TodayContent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v33);
  v34 = &v27 - v3;
  v4 = sub_100017A54(&unk_1000E8800);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_100017A54(&qword_1000E79B0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TodayContent();
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v37 = a1;
  sub_100018688(a1, v13);
  sub_100063388();
  v14 = v36;
  sub_1000A3640();
  if (v14)
  {
    goto LABEL_3;
  }

  v31 = v10;
  v36 = v12;
  v39 = 0;
  sub_100034B00();
  sub_1000A34B0();
  v15 = v38;
  sub_100028E34(0, &unk_1000E7DD0);
  sub_100028E34(0, &qword_1000E79C0);
  v16 = sub_1000A30A0();
  v30 = v15;
  if (!v16)
  {
    sub_1000633DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    sub_10001AA1C(v30, *(&v15 + 1));
    (*(v35 + 8))(v9, v7);
LABEL_3:
    sub_100018720(v37);
    return;
  }

  *v36 = v16;
  v39 = 3;
  sub_1000A34B0();
  v18 = v38;
  sub_100028E34(0, &qword_1000E79D0);
  v29 = v18;
  v19 = sub_1000A30A0();
  if (v19)
  {
    v21 = v31;
    *(v36 + v31[7]) = v19;
    LOBYTE(v38) = 1;
    sub_100063430();
    sub_1000A34B0();
    v28 = v15;
    v23 = v36;
    sub_100027904(v6, v36 + v21[5], &unk_1000E8800);
    sub_100017A54(&qword_1000E79E8);
    v39 = 2;
    sub_1000634E4();
    sub_1000A34B0();
    *(v23 + v21[6]) = v38;
    LOBYTE(v38) = 4;
    *(v23 + v21[8]) = sub_1000A3490() & 1;
    LOBYTE(v38) = 5;
    sub_100034C5C();
    v24 = v34;
    sub_1000A34B0();
    sub_100027904(v24, v23 + v21[9], &unk_1000E5DD0);
    type metadata accessor for TrackableWidgetState();
    v39 = 6;
    sub_100064814(&unk_1000E7A00, type metadata accessor for TrackableWidgetState);
    sub_1000A34B0();
    *(v36 + v31[10]) = v38;
    sub_100017A54(&unk_1000E7E10);
    v39 = 7;
    sub_100063DB0(&qword_1000E7A10);
    sub_1000A34B0();
    *(v36 + v31[11]) = v38;
    v39 = 8;
    sub_1000A34B0();
    (*(v35 + 8))(0, v7);
    sub_10001AA1C(v30, *(&v28 + 1));
    sub_10001AA1C(v29, v28);
    v25 = v32;
    v26 = v36;
    *(v36 + v31[12]) = v38;
    sub_1000648BC(v26, v25, type metadata accessor for TodayContent);
    sub_100018720(v37);
    sub_10006485C(v26, type metadata accessor for TodayContent);
  }

  else
  {
    sub_1000633DC();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    sub_10001AA1C(v30, *(&v15 + 1));
    sub_10001AA1C(v29, *(&v18 + 1));
    (*(v35 + 8))(v9, v7);
    v20 = v36;
    sub_100018720(v37);
  }
}

uint64_t type metadata accessor for TodayContent()
{
  result = qword_1000E7AC0;
  if (!qword_1000E7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100063388()
{
  result = qword_1000E79B8;
  if (!qword_1000E79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E79B8);
  }

  return result;
}

unint64_t sub_1000633DC()
{
  result = qword_1000E79C8;
  if (!qword_1000E79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E79C8);
  }

  return result;
}

unint64_t sub_100063430()
{
  result = qword_1000E79D8;
  if (!qword_1000E79D8)
  {
    sub_100017A9C(&unk_1000E8800);
    sub_100064814(&qword_1000E79E0, type metadata accessor for Banner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E79D8);
  }

  return result;
}

unint64_t sub_1000634E4()
{
  result = qword_1000E79F0;
  if (!qword_1000E79F0)
  {
    sub_100017A9C(&qword_1000E79E8);
    sub_100064814(&qword_1000E79F8, type metadata accessor for Section);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E79F0);
  }

  return result;
}

uint64_t TodayContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100017A54(&qword_1000E7A18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - v7;
  sub_100018688(a1, a1[3]);
  sub_100063388();
  sub_1000A3660();
  v9 = objc_opt_self();
  v10 = *v3;
  v43 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v43];
  v12 = v43;
  if (v11)
  {
    v40 = v3;
    v41 = v6;
    v13 = sub_1000A1730();
    v15 = v14;

    v43 = v13;
    v44 = v15;
    v42 = 0;
    sub_100034E3C();
    sub_1000A3520();
    if (v2)
    {
      (*(v41 + 8))(v8, v5);
      return sub_10001AA1C(v13, v15);
    }

    else
    {
      v37 = v5;
      v38 = v15;
      v39 = v13;
      v18 = type metadata accessor for TodayContent();
      v19 = *(v40 + v18[7]);
      v43 = 0;
      v20 = [v9 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v43];
      v21 = v43;
      if (v20)
      {
        v22 = sub_1000A1730();
        v24 = v23;

        v43 = v22;
        v44 = v24;
        v42 = 3;
        v25 = v37;
        sub_1000A3520();
        v26 = v41;
        v36 = v24;
        LOBYTE(v43) = 1;
        sub_100017A54(&unk_1000E8800);
        sub_100063C48();
        v28 = v40;
        sub_1000A3520();
        v29 = v28;
        v43 = *(v28 + v18[6]);
        v42 = 2;

        sub_100017A54(&qword_1000E79E8);
        sub_100063CFC();
        sub_1000A3520();

        LOBYTE(v43) = 4;
        sub_1000A34F0();
        LOBYTE(v43) = 5;
        sub_100017A54(&unk_1000E5DD0);
        sub_100034F44();
        sub_1000A3520();
        v43 = *(v28 + v18[10]);
        v42 = 6;
        type metadata accessor for TrackableWidgetState();
        sub_100064814(&qword_1000E7A58, type metadata accessor for TrackableWidgetState);

        sub_1000A3520();

        v30 = v28 + v18[11];
        v31 = *(v30 + 8);
        v43 = *v30;
        v44 = v31;
        v42 = 7;

        v32 = sub_100017A54(&unk_1000E7E10);
        v35[0] = sub_100063DB0(&qword_1000E7A60);
        v35[1] = v32;
        sub_1000A3520();

        v33 = v29 + v18[12];
        v34 = *(v33 + 8);
        v43 = *v33;
        v44 = v34;
        v42 = 8;

        sub_1000A3520();
        sub_10001AA1C(v22, v36);
        sub_10001AA1C(v39, v38);

        return (*(v26 + 8))(v8, v25);
      }

      else
      {
        v27 = v21;
        sub_1000A1600();

        swift_willThrow();
        sub_10001AA1C(v39, v38);
        return (*(v41 + 8))(v8, v37);
      }
    }
  }

  else
  {
    v17 = v12;
    sub_1000A1600();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_100063C48()
{
  result = qword_1000E7A28;
  if (!qword_1000E7A28)
  {
    sub_100017A9C(&unk_1000E8800);
    sub_100064814(&qword_1000E7A30, type metadata accessor for Banner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7A28);
  }

  return result;
}

unint64_t sub_100063CFC()
{
  result = qword_1000E7A38;
  if (!qword_1000E7A38)
  {
    sub_100017A9C(&qword_1000E79E8);
    sub_100064814(&unk_1000E7A40, type metadata accessor for Section);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7A38);
  }

  return result;
}

uint64_t sub_100063DB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(&unk_1000E7E10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063E60(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100017A54(&unk_1000E8800);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&unk_1000E5DD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100063FB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100017A54(&unk_1000E8800);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&unk_1000E5DD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000640EC()
{
  sub_100028E34(319, &qword_1000E79C0);
  if (v0 <= 0x3F)
  {
    sub_1000642F4(319, &qword_1000E7AD0, type metadata accessor for Banner, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000642F4(319, &qword_1000E7AD8, type metadata accessor for Section, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100064290();
        if (v3 <= 0x3F)
        {
          sub_1000642F4(319, &qword_1000E8E60, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for TrackableWidgetState();
            if (v5 <= 0x3F)
            {
              sub_100064358();
              if (v6 <= 0x3F)
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

unint64_t sub_100064290()
{
  result = qword_1000E7AE0;
  if (!qword_1000E7AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000E7AE0);
  }

  return result;
}

void sub_1000642F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100064358()
{
  if (!qword_1000E7AF0)
  {
    v0 = sub_1000A31A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E7AF0);
    }
  }
}

unint64_t sub_1000643CC()
{
  result = qword_1000E7B40;
  if (!qword_1000E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7B40);
  }

  return result;
}

unint64_t sub_100064424()
{
  result = qword_1000E7B48;
  if (!qword_1000E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7B48);
  }

  return result;
}

unint64_t sub_10006447C()
{
  result = qword_1000E7B50;
  if (!qword_1000E7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7B50);
  }

  return result;
}

unint64_t sub_1000644D4()
{
  result = qword_1000E7B58;
  if (!qword_1000E7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7B58);
  }

  return result;
}

uint64_t sub_100064528(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001000B48E0 == a2 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6E6162 && a2 == 0xE600000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E496863746566 && a2 == 0xED0000617461446FLL || (sub_1000A3560() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001000B4900 == a2 || (sub_1000A3560() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000B4920 == a2 || (sub_1000A3560() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000B4940 == a2 || (sub_1000A3560() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F74537465737361 && a2 == 0xEC00000044496572 || (sub_1000A3560() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000B4960 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_1000A3560();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100064814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006485C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000648BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100064924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006498C()
{
  v0 = sub_100017A54(&qword_1000E7B70);
  __chkstk_darwin(v0);
  v2 = &v17 - v1;
  v3 = sub_1000A1DA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E7B78);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_1000A1D90();
  sub_1000A1D80();
  (*(v4 + 8))(v6, v3);
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v14(v2, v11, v7);
  sub_1000A1E40();
  v15 = *(v8 + 8);
  v15(v13, v7);
  return (v15)(v11, v7);
}

uint64_t sub_100064BE0()
{
  v0 = sub_1000A1C00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017A54(&qword_1000E7B98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000AA7D0;
  v5 = type metadata accessor for WidgetAnalyticsAssembly();
  v6 = swift_allocObject();
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_100065748(&qword_1000E7BA0, type metadata accessor for WidgetAnalyticsAssembly);
  *(v4 + 32) = v6;
  v7 = type metadata accessor for WidgetServiceAssembly();
  v8 = swift_allocObject();
  *(v4 + 96) = v7;
  *(v4 + 104) = sub_100065748(&qword_1000E7BA8, type metadata accessor for WidgetServiceAssembly);
  *(v4 + 72) = v8;
  v9 = type metadata accessor for TagWidgetServiceAssembly();
  v10 = swift_allocObject();
  *(v4 + 136) = v9;
  *(v4 + 144) = sub_100065748(&qword_1000E7BB0, type metadata accessor for TagWidgetServiceAssembly);
  *(v4 + 112) = v10;
  sub_1000A1A50();
  swift_allocObject();
  sub_1000A1A40();
  (*(v1 + 104))(v3, enum case for Container.Environment.normal(_:), v0);
  sub_1000A1C30();
  swift_allocObject();
  result = sub_1000A1C10();
  qword_1000F1BD0 = result;
  return result;
}

uint64_t sub_100064E4C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v44 = sub_100017A54(&qword_1000E4798);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v2 = &v41 - v1;
  v3 = sub_100017A54(&qword_1000E4790);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - v4;
  v51 = sub_100017A54(&qword_1000E4788);
  v45 = *(v51 - 8);
  __chkstk_darwin(v51);
  v42 = &v41 - v5;
  v6 = sub_100017A54(&qword_1000E4780);
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v41 - v7;
  v53 = sub_1000A2D40();
  v54 = v8;
  v55 = sub_1000655BC;
  v56 = 0;
  sub_1000A21E0();
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static NSBundle.newsToday2;
  v10 = sub_1000A2540();
  v12 = v11;
  v14 = v13;
  v15 = sub_100017A54(&qword_1000E47A0);
  v16 = sub_100029050(&qword_1000E47A8, &qword_1000E47A0);
  sub_1000A22B0();
  sub_100028640(v10, v12, v14 & 1);

  sub_100017A54(&qword_1000E7B90);
  v17 = sub_1000A2B10();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AD8A0;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, enum case for WidgetFamily.accessoryRectangular(_:), v17);
  v23(v22 + v19, enum case for WidgetFamily.systemSmall(_:), v17);
  v23(v22 + 2 * v19, enum case for WidgetFamily.systemMedium(_:), v17);
  v23(v22 + 3 * v19, enum case for WidgetFamily.systemLarge(_:), v17);
  v53 = v15;
  v54 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v43;
  v25 = v44;
  sub_1000A22A0();

  (*(v41 + 8))(v2, v25);
  sub_1000A21E0();
  v27 = static NSBundle.newsToday2;
  v28 = sub_1000A2540();
  v30 = v29;
  LOBYTE(v22) = v31;
  v53 = v25;
  v54 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v42;
  v34 = v47;
  sub_1000A2290();
  sub_100028640(v28, v30, v22 & 1);

  (*(v46 + 8))(v26, v34);
  v53 = v34;
  v54 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v48;
  v37 = v51;
  sub_1000A22D0();
  (*(v45 + 8))(v33, v37);
  v38 = [objc_opt_self() currentDevice];
  [v38 userInterfaceIdiom];

  v53 = v37;
  v54 = v35;
  swift_getOpaqueTypeConformance2();
  v39 = v50;
  sub_1000A22C0();
  return (*(v49 + 8))(v36, v39);
}

uint64_t sub_1000655BC()
{
  if (qword_1000E46F8 != -1)
  {
    swift_once();
  }

  return sub_1000A1C20();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100065658();
  sub_1000A1E80();
  return 0;
}

unint64_t sub_100065658()
{
  result = qword_1000E7B68;
  if (!qword_1000E7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7B68);
  }

  return result;
}

uint64_t sub_100065748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100065790()
{
  sub_100017A9C(&qword_1000E4780);
  sub_100017A9C(&qword_1000E4788);
  sub_100017A9C(&qword_1000E4790);
  sub_100017A9C(&qword_1000E4798);
  sub_100017A9C(&qword_1000E47A0);
  sub_100029050(&qword_1000E47A8, &qword_1000E47A0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065928(uint64_t a1, uint64_t a2)
{
  sub_1000A1A90();
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 16) && (v4 = sub_10003191C(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(v8 + 56) + 16 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1000659CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A1A90();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006B288(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_1000A1AA0();
}

uint64_t sub_100065A78()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100065AD8()
{
  result = qword_1000E7C58;
  if (!qword_1000E7C58)
  {
    type metadata accessor for TodayBannerStateStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7C58);
  }

  return result;
}

void *sub_100065C78()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100068B9C();
  objc_autoreleasePoolPop(v2);
  v4 = [v1 sections];
  v5 = [v4 array];

  v6 = sub_1000A2F10();
  v7 = sub_1000509C0(v6);

  v8 = sub_1000325DC(v7, v3);

  swift_bridgeObjectRelease_n();
  return v8;
}

unint64_t sub_100065E64(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x52656C6269736976;
    v6 = 0x6E694B6B63617473;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x49746E65746E6F63;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x44497972746E65;
    v2 = 0x4473746C75736572;
    v3 = 0x666E496863746566;
    if (a1 != 3)
    {
      v3 = 0x6F4374756F79616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100065FE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100065E64(*a1);
  v5 = v4;
  if (v3 == sub_100065E64(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A3560();
  }

  return v8 & 1;
}

Swift::Int sub_10006606C()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_100065E64(v1);
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_1000660D0()
{
  sub_100065E64(*v0);
  sub_1000A2DD0();
}

Swift::Int sub_100066124()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_100065E64(v1);
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_100066184@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006CFDC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000661B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100065E64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000661FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006CFDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066230(uint64_t a1)
{
  v2 = sub_100069B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006626C(uint64_t a1)
{
  v2 = sub_100069B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000662A8(uint64_t a1)
{
  v2 = NTTodayResults.allItems.getter();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_17:
    v5 = sub_1000A33D0();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000A32D0();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v8 = [v7 isEqual:a1];
    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  v6 = -1;
LABEL_14:

  return v6;
}

uint64_t sub_1000663C8(void *a1)
{
  v31 = a1;
  v2 = sub_1000A1610();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) sections];
  v7 = [v6 array];

  v8 = sub_1000A2F10();
  v9 = sub_1000509C0(v8);

  if (v9 >> 62)
  {
    goto LABEL_38;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v22 = (v9 + 32);
    v23 = v9 & 0xFFFFFFFFFFFFFF8;
    v27 = v9;
    v28 = v3 + 1;
    v24 = v9 & 0xC000000000000001;
    v25 = v11;
LABEL_4:
    if (!v13)
    {
      break;
    }

    v14 = sub_1000A32D0();
    v15 = __OFADD__(v12, 1);
    v16 = v12 + 1;
    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_1000A33D0();
    v11 = result;
    if (!result)
    {
      goto LABEL_39;
    }
  }

  if (v12 >= *(v23 + 16))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v14 = *&v22[8 * v12];
  v15 = __OFADD__(v12, 1);
  v16 = v12 + 1;
  if (v15)
  {
    goto LABEL_36;
  }

LABEL_10:
  v26 = v16;
  v29 = v14;
  v3 = [v14 items];
  v17 = [v3 count];
  v37 = &_swiftEmptyArrayStorage;
  sub_1000A3340();
  sub_1000A3050();
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v30 = v3;
  if (v17)
  {
    v3 = sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      result = sub_1000A31C0();
      if (!v35)
      {
        goto LABEL_41;
      }

      sub_10001B390(&v34, &v32);
      sub_100017A54(&unk_1000E6020);
      swift_dynamicCast();
      sub_100018720(&v34);
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
    }

    while (--v17);
  }

  sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    sub_1000A31C0();
    if (!v33)
    {
      break;
    }

    sub_10005150C(&v32, &v34);
    sub_10005150C(&v34, &v32);
    sub_100017A54(&unk_1000E6020);
    swift_dynamicCast();
    v3 = v36;
    sub_1000A3320();
    sub_1000A3350();
    sub_1000A3360();
    sub_1000A3330();
  }

  (*v28)(v5, v2);
  sub_10002E4C4(&v32);
  v18 = v37;
  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v19 = sub_1000A33D0();
  }

  else
  {
    v19 = *(v37 + 16);
  }

  v9 = 0;
  while (v19 != v9)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v3 = sub_1000A32D0();
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9 >= *(v18 + 16))
      {
        goto LABEL_35;
      }

      v3 = *(v18 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v9, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    v20 = [v31 isEqual:v3];
    swift_unknownObjectRelease();
    ++v9;
    if (v20)
    {

      return v9 - 1;
    }
  }

  v12 = v26;
  v9 = v27;
  v13 = v24;
  if (v26 != v25)
  {
    goto LABEL_4;
  }

LABEL_39:

  return -1;
}

uint64_t sub_1000668C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  v6 = a4(a3);
  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_10006692C(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) sections];
  v4 = [v3 array];

  v5 = sub_1000A2F10();
  v6 = sub_1000509C0(v5);

  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_1000A33D0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000A32D0();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = [v9 isEqual:a1];

    if (v11)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_16;
    }
  }

  v8 = -1;
LABEL_14:

  return v8;
}

void *sub_100066AD8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) sections];
  v2 = [v1 array];

  v3 = sub_1000A2F10();
  v4 = sub_1000509C0(v3);

  v5 = objc_autoreleasePoolPush();
  sub_100068B9C();
  objc_autoreleasePoolPop(v5);
  sub_100028E34(0, &qword_1000E5DF0);
  sub_100028E34(0, &qword_1000E7EB0);
  sub_10006C818();
  v18 = sub_1000A2F30();

  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000A33D0())
  {
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000A32D0();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v11 = v8;
        v12 = sub_1000A33A0();

        if (!v12)
        {
          goto LABEL_4;
        }

        swift_dynamicCast();
        v13 = v19;
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!*(v18 + 16))
        {
          goto LABEL_4;
        }

        v14 = sub_100031A70(v8);
        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }

        v13 = *(*(v18 + 56) + 8 * v14);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      v16 = [v13 integerValue];

      if (v16 > 0)
      {
        sub_1000A3320();
        sub_1000A3350();
        sub_1000A3360();
        sub_1000A3330();
        goto LABEL_5;
      }

LABEL_4:

LABEL_5:
      ++v7;
      if (v10 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  return &_swiftEmptyArrayStorage;
}

id sub_100066E4C(uint64_t a1)
{
  v33 = a1;
  v2 = sub_1000A1610();
  i = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) sections];
  v7 = [v6 array];

  v8 = sub_1000A2F10();
  v9 = sub_1000509C0(v8);

  if (v9 >> 62)
  {
    goto LABEL_38;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = v9 + 32;
    v29 = v9;
    v30 = (i + 8);
    v25 = v9 & 0xFFFFFFFFFFFFFF8;
    v26 = v9 & 0xC000000000000001;
    v27 = v10;
    v24 = v9 + 32;
LABEL_4:
    if (v12)
    {
      break;
    }

    if (v11 < *(v13 + 16))
    {
      v15 = v11;
      v16 = *(v14 + 8 * v11);
      goto LABEL_7;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v10 = sub_1000A33D0();
    if (!v10)
    {
      goto LABEL_39;
    }
  }

  v15 = v11;
  v16 = sub_1000A32D0();
LABEL_7:
  v32 = v16;
  v17 = __OFADD__(v15, 1);
  i = v15 + 1;
  if (v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = i;
  i = [v32 items];
  v18 = [i count];
  v38 = &_swiftEmptyArrayStorage;
  sub_1000A3340();
  sub_1000A3050();
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v31 = i;
  if (!v18)
  {
LABEL_13:
    sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
    while (1)
    {
      sub_1000A31C0();
      if (!v35)
      {
        break;
      }

      sub_10005150C(&v34, &v36);
      sub_10005150C(&v36, &v34);
      sub_100017A54(&unk_1000E6020);
      swift_dynamicCast();
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
    }

    (*v30)(v5, v2);
    sub_10002E4C4(&v34);
    v20 = v38;
    if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
    {
      v9 = sub_1000A33D0();
    }

    else
    {
      v9 = *(v38 + 16);
    }

    for (i = 0; v9 != i; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1000A32D0();
        if (__OFADD__(i, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (i >= *(v20 + 16))
        {
          goto LABEL_34;
        }

        v21 = *(v20 + 8 * i + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(i, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v22 = [v21 isEqual:v33];
      swift_unknownObjectRelease();
      if (v22)
      {

        return v32;
      }
    }

    v11 = v28;
    v9 = v29;
    v13 = v25;
    v12 = v26;
    v14 = v24;
    if (v28 != v27)
    {
      goto LABEL_4;
    }

LABEL_39:

    return 0;
  }

  sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000A31C0();
    if (!v37)
    {
      break;
    }

    sub_10001B390(&v36, &v34);
    sub_100017A54(&unk_1000E6020);
    swift_dynamicCast();
    sub_100018720(&v36);
    sub_1000A3320();
    sub_1000A3350();
    sub_1000A3360();
    sub_1000A3330();
    if (!--v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_100067410(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100068B9C();
  objc_autoreleasePoolPop(v4);
  v6 = [v3 sections];
  v7 = [v6 array];

  v8 = sub_1000A2F10();
  v9 = sub_1000509C0(v8);

  v10 = sub_1000325DC(v9, v5);

  swift_bridgeObjectRelease_n();
  if (v10 >> 62)
  {
LABEL_16:
    v11 = sub_1000A33D0();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_1000A32D0();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v12 >= *(v13 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v14 = *(v10 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v14 itemType] == a1)
        {
          sub_1000A3320();
          sub_1000A3350();
          sub_1000A3360();
          sub_1000A3330();
          v13 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v12;
      }

      while (v15 != v11);
    }
  }

  return &_swiftEmptyArrayStorage;
}

id sub_1000676C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(a2 + 16) || (sub_100031A70(*a1), (v4 & 1) == 0))
  {
    v5 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

  if (!(v5 >> 62))
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = sub_1000A33D0();
LABEL_7:

  result = [objc_allocWithZone(NSNumber) initWithInteger:v6];
  *a3 = result;
  return result;
}

uint64_t sub_1000678D0()
{

  v0 = NTTodayResults.allItems.getter();
  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return v1;
  }

  v1 = sub_1000A33D0();

  if ((v1 & 0x8000000000000000) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100067AA4(void *a1)
{
  v3 = v1;
  v5 = sub_100017A54(&qword_1000E7E00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  sub_100018688(a1, a1[3]);
  sub_100069B54();
  sub_1000A3660();
  LOBYTE(v36[0]) = 0;
  sub_1000A1810();
  sub_100069BFC(&qword_1000E4CC8, &type metadata accessor for Date);
  sub_1000A3520();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v36[0]) = 1;
  sub_1000A34E0();
  v10 = objc_opt_self();
  v11 = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
  *&v36[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v36];
  v13 = *&v36[0];
  if (!v12)
  {
    v18 = v13;
    sub_1000A1600();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v34 = v10;
  v14 = sub_1000A1730();
  v16 = v15;

  *&v36[0] = v14;
  *(&v36[0] + 1) = v16;
  v35 = 2;
  v17 = sub_100034E3C();
  sub_1000A3520();
  v31[1] = v17;
  v32 = v14;
  v33 = v16;
  v19 = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo);
  *&v36[0] = 0;
  v20 = [v34 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v36];
  v21 = *&v36[0];
  if (!v20)
  {
    v26 = v21;
    sub_1000A1600();

    swift_willThrow();
    sub_10001AA1C(v32, v33);
    return (*(v6 + 8))(v8, v5);
  }

  v22 = sub_1000A1730();
  v24 = v23;

  *&v36[0] = v22;
  *(&v36[0] + 1) = v24;
  v35 = 3;
  sub_1000A3520();
  v25 = v32;
  v34 = v24;
  LOBYTE(v36[0]) = 4;
  type metadata accessor for LayoutContext();
  sub_100069BFC(&qword_1000E7E08, type metadata accessor for LayoutContext);
  sub_1000A3520();
  v27 = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID + 8);
  *&v36[0] = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID);
  *(&v36[0] + 1) = v27;
  v35 = 5;

  sub_100017A54(&unk_1000E7E10);
  sub_100069C44();
  sub_1000A3520();

  LOBYTE(v36[0]) = 6;
  sub_1000A3510();
  v28 = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect + 32);
  v29 = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect + 16);
  v36[0] = *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect);
  v36[1] = v29;
  v37 = v28;
  v35 = 7;
  sub_100017A54(&qword_1000E7E20);
  sub_100069CC0();
  sub_1000A3520();
  v30 = v33;
  LOBYTE(v36[0]) = 8;
  sub_1000A3510();
  LOBYTE(v36[0]) = 9;
  sub_1000A3510();
  (*(v6 + 8))(v8, v5);
  sub_10001AA1C(v22, v34);
  return sub_10001AA1C(v25, v30);
}

void *sub_1000680D4(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v60 = v2;
  v61 = v5;
  v56 = type metadata accessor for LayoutContext();
  __chkstk_darwin(v56);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000A1810();
  v57 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017A54(&qword_1000E7DC0);
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  sub_100018688(a1, a1[3]);
  sub_100069B54();
  v13 = v60;
  sub_1000A3640();
  if (v13)
  {
    goto LABEL_10;
  }

  v54 = v7;
  v55 = a1;
  v14 = v58;
  v60 = v1;
  LOBYTE(v62) = 0;
  sub_100069BFC(&qword_1000E4CB0, &type metadata accessor for Date);
  sub_1000A34B0();
  v3 = v60;
  v15 = *(v57 + 32);
  v52 = v60 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentFetchDate;
  v15();
  LOBYTE(v62) = 1;
  v16 = sub_1000A3450();
  v53 = v8;
  v18 = 0x6E776F6E6B6E75;
  if (v17)
  {
    v18 = v16;
  }

  v19 = 0xE700000000000000;
  if (v17)
  {
    v19 = v17;
  }

  v20 = (v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_entryID);
  *v20 = v18;
  v20[1] = v19;
  v65 = 2;
  v21 = sub_100034B00();
  v59 = 0;
  sub_1000A34B0();
  v49 = v21;
  v50 = v12;
  v51 = v10;
  v22 = v62;
  v23 = sub_100028E34(0, &unk_1000E7DD0);
  sub_100028E34(0, &qword_1000E79C0);
  v24 = sub_1000A30A0();
  v46 = v23;
  v48 = v22;
  v27 = v57;
  if (v24)
  {
    *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results) = v24;
    v65 = 3;
    v47 = v24;
    sub_1000A34B0();
    v30 = v62;
    sub_100028E34(0, &qword_1000E79D0);
    v49 = v30;
    v31 = sub_1000A30A0();
    v46 = *(&v30 + 1);
    if (v31)
    {
      v45 = *(&v22 + 1);
      *(v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_fetchInfo) = v31;
      LOBYTE(v62) = 4;
      v33 = v31;
      sub_100069BFC(&qword_1000E7DF0, type metadata accessor for LayoutContext);
      v44 = v33;
      v34 = v54;
      sub_1000A34B0();
      v36 = v44;
      sub_10006CB58(v34, v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
      LOBYTE(v62) = 5;
      v37 = sub_1000A3450();
      v38 = (v3 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentID);
      *v38 = v37;
      v38[1] = v39;
      LOBYTE(v62) = 6;
      *(v60 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_appearanceType) = sub_1000A34A0();
      type metadata accessor for CGRect(0);
      v65 = 7;
      sub_100069BFC(&qword_1000E7DF8, type metadata accessor for CGRect);
      sub_1000A3470();
      v40 = v64;
      v41 = v60 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect;
      v42 = v63;
      *v41 = v62;
      *(v41 + 1) = v42;
      v41[32] = v40;
      LOBYTE(v62) = 8;
      *(v60 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackKind) = sub_1000A34A0();
      LOBYTE(v62) = 9;
      v43 = sub_1000A34A0();
      sub_10001AA1C(v48, v45);
      sub_10001AA1C(v49, v46);

      (*(v14 + 8))(v50, v51);
      v3 = v60;
      *(v60 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_stackLocation) = v43;
      v25 = v55;
      goto LABEL_11;
    }

    sub_100069BA8();
    swift_allocError();
    *v35 = 4;
    swift_willThrow();
    sub_10001AA1C(v48, *(&v22 + 1));
    sub_10001AA1C(v49, v46);

    (*(v14 + 8))(v50, v51);
    v29 = 1;
  }

  else
  {
    sub_100069BA8();
    swift_allocError();
    *v28 = 3;
    swift_willThrow();
    sub_10001AA1C(v48, *(&v22 + 1));
    (*(v14 + 8))(v50, v22);
    v29 = 0;
  }

  v32 = v59;
  (*(v27 + 8))(v52, v53);
  if (!v32)
  {

    if (!v29)
    {
      goto LABEL_9;
    }

LABEL_13:

    goto LABEL_9;
  }

  if (v29)
  {
    goto LABEL_13;
  }

LABEL_9:
  a1 = v55;
LABEL_10:
  swift_deallocPartialClassInstance();
  v25 = a1;
LABEL_11:
  sub_100018720(v25);
  return v3;
}

void *sub_100068B9C()
{
  v1 = sub_1000A1610();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect);
  if (*(v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_visibleRect + 32))
  {
LABEL_2:

    return sub_10006C720(&_swiftEmptyArrayStorage);
  }

  v8 = v5[2];
  v7 = v5[3];
  v9 = *v5;
  v10 = v5[1];
  v11 = *(v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_results);
  v83.origin.x = *v5;
  v83.origin.y = v10;
  v83.size.width = v8;
  v83.size.height = v7;
  MinX = CGRectGetMinX(v83);
  v13 = v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext;
  v14 = *(v13 + 24);
  v15 = ceil(MinX * v14);
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v13 + 24);
  }

  v84.origin.x = v9;
  v84.origin.y = v10;
  v84.size.width = v8;
  v84.size.height = v7;
  v75 = v7;
  MinY = CGRectGetMinY(v84);
  v18 = *(v13 + 32);
  v19 = ceil(MinY * v18);
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(v13 + 32);
  }

  v85.origin.x = v9;
  v85.origin.y = v10;
  v85.size.width = v8;
  v85.size.height = v7;
  v21 = ceil(v14 * CGRectGetWidth(v85));
  if (v14 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v14;
  }

  v86.origin.x = v9;
  v86.origin.y = v10;
  v86.size.width = v8;
  v86.size.height = v75;
  v23 = ceil(v18 * CGRectGetHeight(v86));
  if (v18 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  if (*(v13 + 16) == 1)
  {
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v87.origin.x = v16;
    v87.origin.y = v20;
    v87.size.width = v22;
    v87.size.height = v24;
    v89.size.width = v14;
    v89.size.height = v18;
    if (!CGRectContainsRect(v87, v89))
    {
      goto LABEL_2;
    }

    v25 = [v11 sections];
    v26 = [v25 array];

    v27 = sub_1000A2F10();
    sub_1000509C0(v27);

    sub_100028E34(0, &qword_1000E5DF0);
    sub_100017A54(&qword_1000E5DE0);
    sub_10006C818();
    v28 = COERCE_DOUBLE(sub_1000A2F30());

    return *&v28;
  }

  v29 = sub_100047118();
  [v29 nt_scaledValueForValue:1.0];
  v75 = v30;

  v74 = *v13;
  sub_1000474D0();
  v73 = v31;
  sub_100047FDC();
  *&v72 = v32;
  v33 = *(v13 + *(type metadata accessor for LayoutContext() + 40));
  sub_100047FDC();
  v71 = v34;
  sub_1000474D0();
  v70 = v35;
  sub_1000474D0();
  v67 = v36;
  sub_100047FDC();
  v38 = v37;
  v39 = sub_100047C84();
  sub_1000474D0();
  *&v66 = v40;
  v68 = *(v13 + 8);
  sub_1000474D0();
  v64 = v41;
  v42 = [v11 sections];
  v43 = [v42 array];

  v44 = sub_1000A2F10();
  v45 = COERCE_DOUBLE(sub_1000509C0(v44));

  v46 = v45;
  if (!(*&v45 >> 62))
  {
    v47 = *((*&v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_22;
    }

LABEL_62:

    v28 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
    return *&v28;
  }

LABEL_61:
  v62 = v46;
  v47 = sub_1000A33D0();
  v46 = v62;
  if (!v47)
  {
    goto LABEL_62;
  }

LABEL_22:
  v48 = 0.0;
  v49 = v73 + *&v72 * (v39 * ((v33 * v71 - (*&v70 + *&v70) + (v33 + v33) * v67) / v38));
  v71 = v75 * 12.0 + v74 + 6.0;
  v38 = *&v66 + v49;
  v72 = *&v46 & 0xC000000000000001;
  v66 = *&v46 & 0xFFFFFFFFFFFFFF8;
  v67 = v46;
  v65 = *&v46 + 32;
  v70 = (v2 + 8);
  v28 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v68 = v68 - v64;
  v39 = 0.0;
  v69 = v47;
  while (1)
  {
    if (*&v72 == 0.0)
    {
      if (*&v48 >= *(v66 + 16))
      {
        goto LABEL_60;
      }

      *&v46 = *(v65 + 8 * *&v48);
      v53 = __OFADD__(*&v48, 1);
      *&v54 = *&v48 + 1;
      if (v53)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v46 = COERCE_DOUBLE(sub_1000A32D0());
      v53 = __OFADD__(*&v48, 1);
      *&v54 = *&v48 + 1;
      if (v53)
      {
        goto LABEL_57;
      }
    }

    v81 = &_swiftEmptyArrayStorage;
    v75 = v46;
    v55 = [*&v46 items];
    v2 = [v55 count];
    v80 = &_swiftEmptyArrayStorage;
    sub_1000A3340();
    v46 = COERCE_DOUBLE(sub_1000A3050());
    if (v2 < 0)
    {
      goto LABEL_58;
    }

    v73 = v28;
    v74 = v54;
    if (v2)
    {
      break;
    }

LABEL_36:
    v2 = sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
    sub_1000A31C0();
    while (v77)
    {
      sub_10005150C(&v76, &v78);
      sub_10005150C(&v78, &v76);
      sub_100017A54(&unk_1000E6020);
      swift_dynamicCast();
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
      sub_1000A31C0();
    }

    (*v70)(v4, v1);
    v46 = COERCE_DOUBLE(sub_10002E4C4(&v76));
    v56 = v80;
    if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
    {
      v46 = COERCE_DOUBLE(sub_1000A33D0());
      v57 = *&v46;
    }

    else
    {
      v57 = *(v80 + 16);
    }

    v39 = v71 + v39;
    if (v57)
    {
      if (v57 < 1)
      {
        goto LABEL_59;
      }

      v58 = 0;
      v50 = &_swiftEmptyArrayStorage;
      do
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = sub_1000A32D0();
        }

        else
        {
          v59 = *(v56 + 8 * v58 + 32);
          swift_unknownObjectRetain();
        }

        v60 = [v59 itemType];
        v61 = 0.0;
        if (!v60)
        {
          v61 = 1.0;
        }

        v33 = v38 * v61;
        v90.origin.x = 0.0;
        v88.origin.x = v16;
        v88.origin.y = v20;
        v88.size.width = v22;
        v88.size.height = v24;
        v90.origin.y = v39;
        v90.size.width = v14;
        v90.size.height = v33;
        if (CGRectContainsRect(v88, v90))
        {
          swift_unknownObjectRetain();
          sub_1000A2EF0();
          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000A2F50();
          }

          sub_1000A2F80();
          swift_unknownObjectRelease();
          v50 = v81;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v58;
        v39 = v39 + v33;
      }

      while (v57 != v58);
    }

    else
    {
      v50 = &_swiftEmptyArrayStorage;
    }

    v51 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78 = v51;
    v2 = *&v75;
    sub_10006B3FC(v50, *&v75, isUniquelyReferenced_nonNull_native);

    v28 = *&v78;
    v39 = v68 + v39;
    v48 = v74;
    if (*&v74 == v69)
    {

      return *&v28;
    }
  }

  sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000A31C0();
    if (!v79)
    {
      break;
    }

    sub_10001B390(&v78, &v76);
    sub_100017A54(&unk_1000E6020);
    swift_dynamicCast();
    sub_100018720(&v78);
    sub_1000A3320();
    sub_1000A3350();
    sub_1000A3360();
    sub_1000A3330();
    if (!--v2)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_100069558(id *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000A1610();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 items];
  v9 = [v8 count];
  v18 = &_swiftEmptyArrayStorage;
  sub_1000A3340();
  sub_1000A3050();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v5;
  v13 = a2;
  if (v9)
  {
    sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      sub_1000A31C0();
      if (!v17)
      {
        goto LABEL_10;
      }

      sub_10001B390(&v16, &v14);
      sub_100017A54(&unk_1000E6020);
      swift_dynamicCast();
      sub_100018720(&v16);
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
    }

    while (--v9);
  }

  sub_100069BFC(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  sub_1000A31C0();
  while (v15)
  {
    sub_10005150C(&v14, &v16);
    sub_10001B390(&v16, &v14);
    sub_100017A54(&unk_1000E6020);
    swift_dynamicCast();
    sub_100018720(&v16);
    sub_1000A3320();
    sub_1000A3350();
    sub_1000A3360();
    sub_1000A3330();
    sub_1000A31C0();
  }

  (*(v12 + 8))(v7, v4);
  sub_10002E4C4(&v14);

  *v13 = v18;
}

uint64_t sub_10006988C()
{
  v1 = OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_contentFetchDate;
  v2 = sub_1000A1810();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100048474(v0 + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackableWidgetState()
{
  result = qword_1000E7CE8;
  if (!qword_1000E7CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000699D4()
{
  result = sub_1000A1810();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LayoutContext();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_100069AD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1000680D4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_100069B54()
{
  result = qword_1000E7DC8;
  if (!qword_1000E7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7DC8);
  }

  return result;
}

unint64_t sub_100069BA8()
{
  result = qword_1000E7DE0;
  if (!qword_1000E7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7DE0);
  }

  return result;
}

uint64_t sub_100069BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100069C44()
{
  result = qword_1000E7A60;
  if (!qword_1000E7A60)
  {
    sub_100017A9C(&unk_1000E7E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7A60);
  }

  return result;
}

unint64_t sub_100069CC0()
{
  result = qword_1000E7E28;
  if (!qword_1000E7E28)
  {
    sub_100017A9C(&qword_1000E7E20);
    sub_100069BFC(&unk_1000E7E30, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7E28);
  }

  return result;
}

uint64_t sub_100069D74(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1000A3390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100017A54(&qword_1000E7EA0);
  v39 = a2;
  result = sub_1000A33F0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_10005150C((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_10001B390(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1000A2C70();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_10005150C(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10006A114(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1000A1700();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageStore.Image(0);
  v58 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImageStore.Key(0);
  v57 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = *v2;
  sub_100017A54(&unk_1000E7E70);
  v59 = a2;
  result = sub_1000A33F0();
  v17 = result;
  if (*(v15 + 16))
  {
    v55 = v5;
    v48 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v54 = (v6 + 48);
    v50 = (v6 + 32);
    v49 = (v6 + 8);
    v24 = result + 64;
    v53 = v15;
    v25 = v52;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v61 = *(v57 + 72);
      v32 = v31 + v61 * v30;
      if (v59)
      {
        sub_10006CB58(v32, v14, type metadata accessor for ImageStore.Key);
        v33 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_10006CB58(v33 + v60 * v30, v25, type metadata accessor for ImageStore.Image);
      }

      else
      {
        sub_10006CAF0(v32, v14, type metadata accessor for ImageStore.Key);
        v34 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_10006CAF0(v34 + v60 * v30, v25, type metadata accessor for ImageStore.Image);
      }

      sub_1000A35F0();
      v35 = v14;
      v36 = v56;
      sub_10006CAF0(v14, v56, type metadata accessor for ImageStore.Key);
      v37 = v55;
      if ((*v54)(v36, 1, v55) == 1)
      {
        sub_1000A3600(1uLL);
      }

      else
      {
        v38 = v51;
        (*v50)(v51, v36, v37);
        sub_1000A3600(0);
        sub_100069BFC(&qword_1000E8870, &type metadata accessor for URL);
        sub_1000A2C80();
        v39 = v38;
        v25 = v52;
        (*v49)(v39, v37);
      }

      result = sub_1000A3620();
      v40 = -1 << *(v17 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v14 = v35;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_10006CB58(v35, *(v17 + 48) + v61 * v26, type metadata accessor for ImageStore.Key);
      result = sub_10006CB58(v25, *(v17 + 56) + v60 * v26, type metadata accessor for ImageStore.Image);
      ++*(v17 + 16);
      v15 = v53;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_37;
    }

    v47 = 1 << *(v15 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v19, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_10006A730(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100017A54(&qword_1000E7EB8);
  v35 = a2;
  result = sub_1000A33F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000A35F0();
      sub_1000A2DD0();
      result = sub_1000A3620();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10006A9D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100017A54(&qword_1000E7EA8);
  v33 = a2;
  result = sub_1000A33F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1000A35F0();
      sub_1000A2DD0();
      result = sub_1000A3620();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10006AC80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100017A54(&qword_1000E7E48);
  result = sub_1000A33F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1000A3170(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_10006AEF0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000A3390();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100031620(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10006B724();
      goto LABEL_7;
    }

    sub_100069D74(v17, a3 & 1);
    v23 = sub_100031620(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10006B578(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1000A3590();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_100018720(v21);

  return sub_10005150C(a1, v21);
}

uint64_t sub_10006B0C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_100031684(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10006B9A8();
      goto LABEL_7;
    }

    sub_10006A114(v16, a3 & 1);
    v23 = sub_100031684(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10006CAF0(a2, v10, type metadata accessor for ImageStore.Key);
      return sub_10006B638(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1000A3590();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for ImageStore.Image(0) - 8) + 72) * v13;

  return sub_10006CA8C(a1, v21);
}

unint64_t sub_10006B288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10003191C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10006A9D4(v18, a5 & 1);
      result = sub_10003191C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1000A3590();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_10006BE00();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

id sub_10006B3FC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100031A70(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10006AC80(v13, a3 & 1);
      v8 = sub_100031A70(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100028E34(0, &qword_1000E5DF0);
        result = sub_1000A3590();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10006BF68();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

_OWORD *sub_10006B578(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000A3390();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_10005150C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10006B638(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ImageStore.Key(0);
  sub_10006CB58(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ImageStore.Key);
  v10 = a4[7];
  v11 = type metadata accessor for ImageStore.Image(0);
  result = sub_10006CB58(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ImageStore.Image);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_10006B724()
{
  v1 = v0;
  v26 = sub_1000A3390();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017A54(&qword_1000E7EA0);
  v3 = *v0;
  v4 = sub_1000A33E0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_10001B390(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_10005150C(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10006B9A8()
{
  v1 = v0;
  v2 = type metadata accessor for ImageStore.Image(0);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageStore.Key(0);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017A54(&unk_1000E7E70);
  v8 = *v0;
  v9 = sub_1000A33E0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_10006CAF0(*(v8 + 48) + v24, v7, type metadata accessor for ImageStore.Key);
        v25 = *(v29 + 72) * v23;
        sub_10006CAF0(*(v8 + 56) + v25, v4, type metadata accessor for ImageStore.Image);
        sub_10006CB58(v7, *(v10 + 48) + v24, type metadata accessor for ImageStore.Key);
        result = sub_10006CB58(v4, *(v10 + 56) + v25, type metadata accessor for ImageStore.Image);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

id sub_10006BC94()
{
  v1 = v0;
  sub_100017A54(&qword_1000E7EB8);
  v2 = *v0;
  v3 = sub_1000A33E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_10006BE00()
{
  v1 = v0;
  sub_100017A54(&qword_1000E7EA8);
  v2 = *v0;
  v3 = sub_1000A33E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_10006BF68()
{
  v1 = v0;
  sub_100017A54(&qword_1000E7E48);
  v2 = *v0;
  v3 = sub_1000A33E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_10006C0CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017A54(&qword_1000E7E60);
    v3 = sub_1000A3400();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100032BD4();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10006C1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017A54(&unk_1000E7E50);
    v3 = sub_1000A3400();
    v4 = a1 + 32;

    while (1)
    {
      sub_100028B94(v4, &v11, &qword_1000E5848);
      v5 = v11;
      result = sub_100032BD4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005150C(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10006C2E4(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E7E90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100017A54(&qword_1000E7E98);
    v7 = sub_1000A3400();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100028B94(v9, v5, &qword_1000E7E90);
      result = sub_100031994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000A1700();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10006C4CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017A54(&qword_1000E7E68);
    v3 = sub_1000A3400();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      v9 = v8;
      v10 = v7;

      result = sub_10003191C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 16 * result);
      *v14 = v8;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_10006C5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017A54(&qword_1000E7EC0);
    v3 = sub_1000A3400();
    v4 = a1 + 32;

    while (1)
    {
      sub_100028B94(v4, v13, &qword_1000E7EC8);
      result = sub_100031A2C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10005150C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10006C720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017A54(&qword_1000E7E48);
    v3 = sub_1000A3400();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100031A70(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10006C818()
{
  result = qword_1000E7E40;
  if (!qword_1000E7E40)
  {
    sub_100028E34(255, &qword_1000E5DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7E40);
  }

  return result;
}

unint64_t sub_10006C880(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E7E80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100017A54(&qword_1000E7E88);
    v7 = sub_1000A3400();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_100028B94(v9, v5, &qword_1000E7E80);
      result = sub_100031994(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_1000A1700();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10006CA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStore.Image(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006CAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006CB58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TrackableWidgetState.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackableWidgetState.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackableWidgetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackableWidgetState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006CE80()
{
  result = qword_1000E7ED0;
  if (!qword_1000E7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7ED0);
  }

  return result;
}

unint64_t sub_10006CED8()
{
  result = qword_1000E7ED8;
  if (!qword_1000E7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7ED8);
  }

  return result;
}

unint64_t sub_10006CF30()
{
  result = qword_1000E7EE0;
  if (!qword_1000E7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7EE0);
  }

  return result;
}

unint64_t sub_10006CF88()
{
  result = qword_1000E7EE8;
  if (!qword_1000E7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7EE8);
  }

  return result;
}

uint64_t sub_10006CFDC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000D7710;
  v6._object = a2;
  v4 = sub_1000A3420(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

id sub_10006D048(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for WidgetPersonalizationConfigurationManager();
  v5 = objc_allocWithZone(v4);
  v6 = sub_1000A1C80();
  objc_allocWithZone(v6);
  swift_unknownObjectRetain();
  v7 = sub_1000A1C70();
  v8 = &v5[OBJC_IVAR____TtC7NewsTag41WidgetPersonalizationConfigurationManager_configurationManager];
  v8[3] = v6;
  v8[4] = &protocol witness table for NewsAppConfigurationManager;
  *v8 = v7;
  v17.receiver = v5;
  v17.super_class = v4;
  v9 = objc_msgSendSuper2(&v17, "init");
  sub_1000A1D30();
  sub_10006D2A0();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = a1;
  v11 = v9;
  v12 = sub_1000A1CF0();
  v13 = *(v2 + OBJC_IVAR____TtC7NewsTag23FeedPersonalizerFactory_configurationSet);
  v14 = objc_allocWithZone(type metadata accessor for WidgetPersonalizationService());
  v15 = sub_10005BDB4(v12, v13);

  return v15;
}

unint64_t sub_10006D2A0()
{
  result = qword_1000E7F28;
  if (!qword_1000E7F28)
  {
    type metadata accessor for WidgetPersonalizationConfigurationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7F28);
  }

  return result;
}

void sub_10006D2F8()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = sub_1000A2D10();
  [v0 setDateFormat:v1];

  qword_1000E7F30 = v0;
}

id sub_10006D378()
{
  v0 = sub_1000A1700();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForWidgetDebugLogs();
  if (result)
  {
    v5 = result;
    sub_1000A16C0();

    type metadata accessor for WidgetDebugLogStore();
    v6 = swift_allocObject();
    *(v6 + OBJC_IVAR____TtC7NewsTag19WidgetDebugLogStore_maxCountOnDisk) = 10;
    result = (*(v1 + 32))(v6 + OBJC_IVAR____TtC7NewsTag19WidgetDebugLogStore_logsDirectory, v3, v0);
    qword_1000F1C28 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006D490(unint64_t a1)
{
  if (FCIsWidgetDebugInspectionEnabled())
  {
    v3 = objc_autoreleasePoolPush();
    sub_10006D534(v1, a1);

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_10006D534(uint64_t a1, unint64_t a2)
{
  v46 = a2;
  v3 = sub_1000A1700();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A1810();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v45 = a1;
  sub_1000A1670(&unk_1000E7000);
  v12 = v11;
  v49 = 0;
  v13 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v49];

  if (!v13)
  {
    v26 = v49;
    v25 = sub_1000A1600();

    swift_willThrow();
    goto LABEL_9;
  }

  v14 = v49;
  sub_1000A1800();
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1000A32B0(37);

  v49 = 0xD000000000000017;
  v50 = 0x80000001000B4D30;
  sub_1000A17D0();
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 < 9.22337204e18)
  {
    v43 = v3;
    v48 = v15;
    v51._countAndFlagsBits = sub_1000A3550();
    sub_1000A2E10(v51);

    v52._countAndFlagsBits = 45;
    v52._object = 0xE100000000000000;
    sub_1000A2E10(v52);
    if (qword_1000E4700 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_6:
  v16 = qword_1000E7F30;
  isa = sub_1000A1770().super.isa;
  v18 = [v16 stringFromDate:isa];

  v19 = sub_1000A2D40();
  v21 = v20;

  v53._countAndFlagsBits = v19;
  v53._object = v21;
  sub_1000A2E10(v53);

  v54._countAndFlagsBits = 0x697A2E6E6F736A2ELL;
  v54._object = 0xE900000000000070;
  sub_1000A2E10(v54);
  v22 = v47;
  v23 = sub_1000A2A20();
  v25 = v22;
  if (v22)
  {
    (*(v7 + 8))(v9, v6);

LABEL_9:
    sub_1000A3070();
    sub_100017A54(&unk_1000E5270);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000AA7C0;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = v25;
    sub_100017A54(&unk_1000E52C0);
    sub_1000A3370();
    v28 = v49;
    v29 = v50;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_10001A97C();
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    sub_10001A9D0();
    v30 = sub_1000A3190();
    sub_1000A1DB0();
  }

  v46 = v24;
  v47 = v6;
  v42 = v23;
  v32 = sub_1000A1720().super.isa;
  v33 = [(objc_class *)v32 fc_gzipDeflate];

  if (!v33)
  {

    sub_10006E264();
    v25 = swift_allocError();
    swift_willThrow();
    sub_10001AA1C(v42, v46);
    (*(v7 + 8))(v9, v47);
    goto LABEL_9;
  }

  v41 = sub_1000A1730();
  v35 = v34;

  sub_1000A16A0();
  v36 = v35;
  v37 = v41;

  sub_1000A1740();
  v38 = (v7 + 8);
  v39 = v47;
  (*(v44 + 8))(v5, v43);
  sub_10006DB68();
  sub_10001AA1C(v42, v46);
  sub_10001AA1C(v37, v36);
  return (*v38)(v9, v39);
}

uint64_t sub_10006DB68()
{
  v0 = sub_1000A1700();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = &selRef_colorWithRed_green_blue_alpha_;
  v6 = [v4 defaultManager];
  sub_1000A1670(OBJC_IVAR____TtC7NewsTag19WidgetDebugLogStore_logsDirectory);
  v8 = v7;
  v52 = 0;
  v9 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:4 error:&v52];

  v10 = v52;
  if (v9)
  {
    v11 = sub_1000A2F10();
    v12 = v10;

    v52 = v11;

    v10 = 0;
    sub_10006E808(&v52);

    v13 = v52;
    if (*(v52 + 2) < 0xBuLL)
    {
    }

    else
    {
      v14 = v1 + 32;
      v50 = (v1 + 8);
      v46 = xmmword_1000AA450;
      v47 = v3;
      do
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v13[2];
          if (!v16)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v13 = sub_10007043C(v13);
          v16 = v13[2];
          if (!v16)
          {
LABEL_11:
            __break(1u);
            goto LABEL_12;
          }
        }

        v17 = v16 - 1;
        v18 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17;
        v13[2] = v17;
        (*(v1 + 32))(v3, v18, v0);
        v19 = [v4 v5[17]];
        sub_1000A1670(v20);
        v22 = v21;
        v52 = 0;
        v23 = [v19 removeItemAtURL:v21 error:&v52];

        if (v23)
        {
          v10 = *v50;
          v15 = v52;
          v10(v3, v0);
        }

        else
        {
          v24 = v52;
          v48 = sub_1000A1600();

          swift_willThrow();
          v49 = sub_1000A3070();
          sub_100017A54(&unk_1000E5270);
          v25 = swift_allocObject();
          *(v25 + 16) = v46;
          sub_100070450();
          v26 = sub_1000A3550();
          v27 = v13;
          v28 = v14;
          v29 = v5;
          v31 = v30;
          *(v25 + 56) = &type metadata for String;
          v32 = v1;
          v33 = v4;
          v34 = v0;
          v35 = sub_10001A97C();
          *(v25 + 64) = v35;
          *(v25 + 32) = v26;
          *(v25 + 40) = v31;
          v5 = v29;
          v14 = v28;
          v13 = v27;
          v52 = 0;
          v53 = 0xE000000000000000;
          v10 = v48;
          v51 = v48;
          sub_100017A54(&unk_1000E52C0);
          sub_1000A3370();
          v36 = v52;
          v37 = v53;
          *(v25 + 96) = &type metadata for String;
          *(v25 + 104) = v35;
          v0 = v34;
          v4 = v33;
          v1 = v32;
          v3 = v47;
          *(v25 + 72) = v36;
          *(v25 + 80) = v37;
          sub_10001A9D0();
          v38 = sub_1000A3190();
          sub_1000A1DB0();

          (*v50)(v3, v0);
        }
      }

      while (v13[2] > 0xAuLL);
    }
  }

  else
  {
LABEL_12:
    v39 = v10;
    v40 = sub_1000A1600();

    swift_willThrow();
    sub_1000A3070();
    sub_100017A54(&unk_1000E5270);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000AA7C0;
    v52 = 0;
    v53 = 0xE000000000000000;
    v51 = v40;
    sub_100017A54(&unk_1000E52C0);
    sub_1000A3370();
    v42 = v52;
    v43 = v53;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_10001A97C();
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    sub_10001A9D0();
    v44 = sub_1000A3190();
    sub_1000A1DB0();
  }
}

uint64_t sub_10006E0D8()
{
  v1 = OBJC_IVAR____TtC7NewsTag19WidgetDebugLogStore_logsDirectory;
  v2 = sub_1000A1700();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetDebugLogStore()
{
  result = qword_1000E7F70;
  if (!qword_1000E7F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006E1C8()
{
  result = sub_1000A1700();
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

unint64_t sub_10006E264()
{
  result = qword_1000E8000;
  if (!qword_1000E8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8000);
  }

  return result;
}

char *sub_10006E2B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017A54(&qword_1000E5290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10006E3C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100017A54(&unk_1000E88D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100017A54(&qword_1000E73D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10006E50C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100017A54(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10006E6E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017A54(&qword_1000E8018);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10006E808(void **a1)
{
  v2 = *(sub_1000A1700() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100070530(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10006E8B0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10006E8B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1000A3540(v2);
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
        sub_1000A1700();
        v6 = sub_1000A2F60();
        v6[2] = v5;
      }

      v7 = *(sub_1000A1700() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10006ED70(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_10006E9DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10006E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100017A54(&qword_1000E8008);
  __chkstk_darwin(v8 - 8);
  v55 = &v39 - v9;
  v10 = sub_1000A1700();
  v11 = __chkstk_darwin(v10);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v54 = &v39 - v14;
  result = __chkstk_darwin(v13);
  v53 = &v39 - v17;
  v41 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v50 = (v19 - 8);
    v51 = v20;
    v52 = v19;
    v47 = (v19 + 16);
    v48 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v46 = -v21;
    v23 = a1 - a3;
    v40 = v21;
    v24 = v18 + v21 * a3;
    v60 = v10;
LABEL_5:
    v44 = v22;
    v45 = a3;
    v42 = v24;
    v43 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v53;
      v27 = v51;
      v51(v53, v24, v10);
      v28 = v54;
      v27(v54, v25, v60);
      v58 = sub_1000A1660();
      v59 = v29;
      v56 = sub_1000A1660();
      v57 = v30;
      v31 = sub_1000A1880();
      v32 = v55;
      (*(*(v31 - 8) + 56))(v55, 1, 1, v31);
      sub_10001B33C();
      v33 = sub_1000A31F0();
      sub_10007057C(v32);

      v34 = *v50;
      v35 = v28;
      v10 = v60;
      (*v50)(v35, v60);
      result = v34(v26, v10);
      if (v33 != 1)
      {
LABEL_4:
        a3 = v45 + 1;
        v22 = v44 + v40;
        v23 = v43 - 1;
        v24 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v36 = *v47;
      v37 = v49;
      (*v47)(v49, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v36)(v25, v37, v10);
      v25 += v46;
      v24 += v46;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10006ED70(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v8 = sub_100017A54(&qword_1000E8008);
  __chkstk_darwin(v8 - 8);
  v150 = &v125 - v9;
  v10 = sub_1000A1700();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v132 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v143 = &v125 - v15;
  v16 = __chkstk_darwin(v14);
  v149 = &v125 - v17;
  result = __chkstk_darwin(v16);
  v151 = &v125 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v23 = a3;
    v22 = &_swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v129;
    if (!*v129)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_1000701E8(v22);
      v22 = result;
    }

    v156 = v22;
    v120 = *(v22 + 16);
    if (v120 >= 2)
    {
      while (*v23)
      {
        v121 = *(v22 + 16 * v120);
        v122 = v22;
        v123 = *(v22 + 16 * (v120 - 1) + 32);
        v22 = *(v22 + 16 * (v120 - 1) + 40);
        sub_10006F9FC(&(*v23)[v11[9] * v121], &(*v23)[v11[9] * v123], &(*v23)[v11[9] * v22], a4);
        if (v5)
        {
        }

        if (v22 < v121)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1000701E8(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_121;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v22;
        v156 = v122;
        result = sub_10007015C(v120 - 1);
        v22 = v156;
        v120 = *(v156 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v126 = a4;
  v21 = 0;
  v146 = (v11 + 1);
  v147 = v11 + 2;
  v145 = (v11 + 4);
  v22 = &_swiftEmptyArrayStorage;
  v23 = a3;
  v131 = a3;
  v139 = v11;
  v148 = v10;
  while (1)
  {
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v140 = v20;
      v127 = v22;
      v128 = v5;
      v24 = v11[9];
      v25 = &(*v23)[v24 * (v21 + 1)];
      v144 = *v23;
      v26 = v144;
      v27 = v11[2];
      a4 = v25;
      (v27)(v151);
      v28 = &v26[v24 * v21];
      v29 = v149;
      v138 = v27;
      (v27)(v149, v28, v10);
      v30 = sub_1000A1660();
      v130 = v21;
      v154 = v30;
      v155 = v31;
      v152 = sub_1000A1660();
      v153 = v32;
      v33 = sub_1000A1880();
      v34 = *(v33 - 8);
      v35 = v150;
      v136 = *(v34 + 56);
      v137 = v33;
      v135 = v34 + 56;
      (v136)(v150, 1, 1);
      v134 = sub_10001B33C();
      v141 = sub_1000A31F0();
      sub_10007057C(v35);

      v36 = v11[1];
      v36(v29, v10);
      v133 = v36;
      result = (v36)(v151, v10);
      v37 = v130 + 2;
      v142 = v24;
      v38 = &v144[v24 * (v130 + 2)];
      while (1)
      {
        v39 = v140;
        if (v140 == v37)
        {
          break;
        }

        LODWORD(v144) = v141 == 1;
        v40 = v148;
        v41 = v138;
        v138();
        v42 = v149;
        (v41)(v149, a4, v40);
        v154 = sub_1000A1660();
        v155 = v43;
        v152 = sub_1000A1660();
        v153 = v44;
        v45 = v150;
        (v136)(v150, 1, 1, v137);
        v46 = sub_1000A31F0();
        sub_10007057C(v45);

        v47 = v133;
        v133(v42, v40);
        result = v47(v151, v40);
        ++v37;
        v38 = &v142[v38];
        a4 += v142;
        if (((v144 ^ (v46 != 1)) & 1) == 0)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v5 = v128;
      v23 = v131;
      v11 = v139;
      v22 = v127;
      v10 = v148;
      v21 = v130;
      if (v141 == 1)
      {
        if (v39 < v130)
        {
          goto LABEL_124;
        }

        if (v130 < v39)
        {
          v48 = v39;
          v49 = v142 * (v39 - 1);
          v50 = v39 * v142;
          v140 = v39;
          v51 = v130;
          v52 = v130 * v142;
          do
          {
            if (v51 != --v48)
            {
              v53 = *v23;
              if (!v53)
              {
                goto LABEL_130;
              }

              a4 = &v53[v52];
              v54 = *v145;
              (*v145)(v132, &v53[v52], v10);
              if (v52 < v49 || a4 >= &v53[v50])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v54)(&v53[v49], v132, v10);
              v23 = v131;
              v11 = v139;
            }

            ++v51;
            v49 -= v142;
            v50 -= v142;
            v52 += v142;
          }

          while (v51 < v48);
          v5 = v128;
          v22 = v127;
          v21 = v130;
          v39 = v140;
        }
      }
    }

    v55 = v23[1];
    if (v39 < v55)
    {
      if (__OFSUB__(v39, v21))
      {
        goto LABEL_123;
      }

      if (v39 - v21 < v126)
      {
        if (__OFADD__(v21, v126))
        {
          goto LABEL_125;
        }

        if (v21 + v126 >= v55)
        {
          a4 = v23[1];
        }

        else
        {
          a4 = v21 + v126;
        }

        if (a4 < v21)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v39 != a4)
        {
          break;
        }
      }
    }

    a4 = v39;
    if (v39 < v21)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v135 = a4;
    if ((result & 1) == 0)
    {
      result = sub_1000702FC(0, *(v22 + 16) + 1, 1, v22);
      v22 = result;
    }

    a4 = *(v22 + 16);
    v56 = *(v22 + 24);
    v57 = a4 + 1;
    if (a4 >= v56 >> 1)
    {
      result = sub_1000702FC((v56 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 16) = v57;
    v58 = v22 + 16 * a4;
    v59 = v135;
    *(v58 + 32) = v21;
    *(v58 + 40) = v59;
    if (!*v129)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v11 = *v129;
      while (1)
      {
        a4 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v22 + 32);
          v61 = *(v22 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_53:
          if (v63)
          {
            goto LABEL_111;
          }

          v76 = (v22 + 16 * v57);
          v78 = *v76;
          v77 = v76[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_114;
          }

          v82 = (v22 + 32 + 16 * a4);
          v84 = *v82;
          v83 = v82[1];
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_118;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              a4 = v57 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v86 = (v22 + 16 * v57);
        v88 = *v86;
        v87 = v86[1];
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_67:
        if (v81)
        {
          goto LABEL_113;
        }

        v89 = v22 + 16 * a4;
        v91 = *(v89 + 32);
        v90 = *(v89 + 40);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_116;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_74:
        v97 = a4 - 1;
        if (a4 - 1 >= v57)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_126;
        }

        if (!*v23)
        {
          goto LABEL_129;
        }

        v98 = *(v22 + 32 + 16 * v97);
        v99 = *(v22 + 32 + 16 * a4 + 8);
        sub_10006F9FC(&(*v23)[v139[9] * v98], &(*v23)[v139[9] * *(v22 + 32 + 16 * a4)], &(*v23)[v139[9] * v99], v11);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1000701E8(v22);
        }

        if (v97 >= *(v22 + 16))
        {
          goto LABEL_108;
        }

        v100 = v22 + 16 * v97;
        *(v100 + 32) = v98;
        *(v100 + 40) = v99;
        v156 = v22;
        result = sub_10007015C(a4);
        v22 = v156;
        v57 = *(v156 + 16);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = v22 + 32 + 16 * v57;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_109;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_110;
      }

      v71 = (v22 + 16 * v57);
      v73 = *v71;
      v72 = v71[1];
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_112;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_115;
      }

      if (v75 >= v67)
      {
        v93 = (v22 + 32 + 16 * a4);
        v95 = *v93;
        v94 = v93[1];
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v62 < v96)
        {
          a4 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v20 = v23[1];
    v21 = v135;
    v11 = v139;
    if (v135 >= v20)
    {
      goto LABEL_95;
    }
  }

  v127 = v22;
  v128 = v5;
  v101 = *v23;
  v102 = v11[9];
  v144 = v11[2];
  v103 = &v101[v102 * (v39 - 1)];
  v141 = -v102;
  v130 = v21;
  v11 = (v21 - v39);
  v142 = v101;
  v134 = v102;
  v104 = &v101[v39 * v102];
  v135 = a4;
LABEL_86:
  v140 = v39;
  v136 = v104;
  v137 = v11;
  v105 = v104;
  v138 = v103;
  v106 = v103;
  while (1)
  {
    v107 = v151;
    v108 = v144;
    (v144)(v151, v105, v10);
    v109 = v149;
    v108(v149, v106, v10);
    v154 = sub_1000A1660();
    v155 = v110;
    v152 = sub_1000A1660();
    v153 = v111;
    v112 = sub_1000A1880();
    v113 = v150;
    (*(*(v112 - 8) + 56))(v150, 1, 1, v112);
    sub_10001B33C();
    v114 = sub_1000A31F0();
    v115 = v113;
    v10 = v148;
    sub_10007057C(v115);

    v116 = *v146;
    (*v146)(v109, v10);
    result = v116(v107, v10);
    if (v114 != 1)
    {
LABEL_85:
      v39 = v140 + 1;
      v103 = (v138 + v134);
      v11 = (v137 - 1);
      a4 = v135;
      v104 = &v136[v134];
      if (v140 + 1 != v135)
      {
        goto LABEL_86;
      }

      v5 = v128;
      v23 = v131;
      v22 = v127;
      v21 = v130;
      if (v135 < v130)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (!v142)
    {
      break;
    }

    v117 = *v145;
    v118 = v143;
    (*v145)(v143, v105, v10);
    swift_arrayInitWithTakeFrontToBack();
    v117(v106, v118, v10);
    v106 = (v106 + v141);
    v105 += v141;
    v119 = __CFADD__(v11, 1);
    v11 = (v11 + 1);
    if (v119)
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_10006F9FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_100017A54(&qword_1000E8008);
  __chkstk_darwin(v8 - 8);
  v65 = &v56 - v9;
  v69 = sub_1000A1700();
  v10 = *(v69 - 8);
  v11 = __chkstk_darwin(v69);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v67 = &v56 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v76 = a1;
  v75 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v20;
    if (v20 >= 1)
    {
      v39 = -v16;
      v59 = (v10 + 8);
      v60 = (v10 + 16);
      v40 = v38;
      v58 = a4;
      v68 = a1;
      v61 = -v16;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v41 = a2;
          v42 = a2 + v39;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            if (v41 <= a1)
            {
              v76 = v41;
              v74 = v56;
              goto LABEL_59;
            }

            v44 = a3;
            v57 = v38;
            v66 = a3 + v39;
            v45 = v40 + v39;
            v46 = *v60;
            v47 = v69;
            (*v60)();
            v48 = v64;
            (v46)(v64, v42, v47);
            v72 = sub_1000A1660();
            v73 = v49;
            v70 = sub_1000A1660();
            v71 = v50;
            v51 = sub_1000A1880();
            v52 = v65;
            (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
            sub_10001B33C();
            v53 = sub_1000A31F0();
            sub_10007057C(v52);

            v54 = *v59;
            (*v59)(v48, v47);
            v54(v67, v47);
            if (v53 == 1)
            {
              break;
            }

            v38 = v45;
            a3 = v66;
            if (v44 < v40 || v66 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v43 = v58;
              a1 = v68;
              v39 = v61;
            }

            else
            {
              v42 = v63;
              v43 = v58;
              a1 = v68;
              v39 = v61;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            v41 = v62;
            if (v45 <= v43)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          a3 = v66;
          if (v44 < v62 || v66 >= v62)
          {
            break;
          }

          a2 = v63;
          v38 = v57;
          v55 = v58;
          a1 = v68;
          v39 = v61;
          if (v44 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v57;
        a1 = v68;
        v39 = v61;
        if (v40 > v58)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v74 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v22 = *(v10 + 16);
      v61 = v16;
      v62 = v10 + 16;
      v59 = (v10 + 8);
      v60 = v22;
      v66 = a3;
      v23 = v64;
      do
      {
        v68 = a1;
        v24 = v67;
        v25 = v69;
        v26 = v60;
        (v60)(v67, a2, v69);
        (v26)(v23, a4, v25);
        v72 = sub_1000A1660();
        v73 = v27;
        v28 = a2;
        v70 = sub_1000A1660();
        v71 = v29;
        v30 = sub_1000A1880();
        v31 = v65;
        (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
        sub_10001B33C();
        v32 = sub_1000A31F0();
        sub_10007057C(v31);

        v33 = *v59;
        (*v59)(v23, v25);
        v33(v24, v25);
        if (v32 == 1)
        {
          v34 = v61;
          a2 += v61;
          v35 = v68;
          if (v68 < v28 || v68 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v66;
          }

          else
          {
            v36 = v66;
            if (v68 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v34 = v61;
          v37 = a4 + v61;
          v35 = v68;
          if (v68 < a4 || v68 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v66;
          }

          else
          {
            v36 = v66;
            if (v68 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v75 = v37;
          a4 += v34;
        }

        a1 = v35 + v34;
        v76 = a1;
      }

      while (a4 < v63 && a2 < v36);
    }
  }

LABEL_59:
  sub_100070214(&v76, &v75, &v74, &type metadata accessor for URL);
  return 1;
}

uint64_t sub_10007015C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000701E8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100070214(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000702FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017A54(&qword_1000E8010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_100070450()
{
  result = qword_1000E8840[0];
  if (!qword_1000E8840[0])
  {
    sub_1000A1700();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000E8840);
  }

  return result;
}

uint64_t sub_10007057C(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E8008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000705F8()
{
  result = qword_1000E8020;
  if (!qword_1000E8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8020);
  }

  return result;
}

uint64_t sub_100070660(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Banner();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&qword_1000E8028);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000707A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Banner();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&qword_1000E8028);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for BannerView()
{
  result = qword_1000E8088;
  if (!qword_1000E8088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100070920()
{
  type metadata accessor for Banner();
  if (v0 <= 0x3F)
  {
    sub_1000709B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000709B4()
{
  if (!qword_1000E8098)
  {
    sub_100043460();
    v0 = sub_1000A1E70();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E8098);
    }
  }
}

uint64_t sub_100070A10(uint64_t *a1, int a2)
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

uint64_t sub_100070A58(uint64_t result, int a2, int a3)
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

uint64_t sub_100070AC0@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v23 = sub_100017A54(&qword_1000E80D0);
  __chkstk_darwin(v23);
  v3 = &v21 - v2;
  v22 = sub_100017A54(&qword_1000E80D8);
  __chkstk_darwin(v22);
  v21 = &v21 - v4;
  v5 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000A1700();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = &v1[*(type metadata accessor for BannerView() + 20)];
  v16 = type metadata accessor for Banner();
  sub_100028B94(&v15[*(v16 + 28)], v7, &unk_1000E5DD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001FE6C(v7, &unk_1000E5DD0);
    *v3 = sub_1000A2280();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v17 = sub_100017A54(&qword_1000E80E0);
    sub_100070F18(v1, &v3[*(v17 + 44)]);
    sub_100029050(&qword_1000E80E8, &qword_1000E80D0);
    result = sub_1000A2820();
    v19 = result;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v20 = (*(v9 + 16))(v12, v14, v8);
    __chkstk_darwin(v20);
    *(&v21 - 2) = v1;
    sub_100029050(&qword_1000E80E8, &qword_1000E80D0);
    sub_1000A2440();
    sub_100029050(&qword_1000E80F0, &qword_1000E80D8);
    v19 = sub_1000A2820();
    result = (*(v9 + 8))(v14, v8);
  }

  *v24 = v19;
  return result;
}

uint64_t sub_100070EC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000A2280();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100017A54(&qword_1000E80E0);
  return sub_100070F18(a1, a2 + *(v4 + 44));
}

uint64_t sub_100070F18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E80F8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  type metadata accessor for BannerView();
  sub_100017A54(&qword_1000E8028);
  sub_1000A1E60();
  v10 = v15[1];
  *v9 = sub_1000A2170();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = sub_100017A54(&qword_1000E8100);
  sub_1000710B8(a1, &v9[*(v11 + 44)]);
  sub_100028B94(v9, v7, &qword_1000E80F8);
  *a2 = v10;
  *(a2 + 8) = 0;
  v12 = sub_100017A54(&qword_1000E8108);
  sub_100028B94(v7, a2 + *(v12 + 48), &qword_1000E80F8);
  v13 = a2 + *(v12 + 64);
  *v13 = 0x4028000000000000;
  *(v13 + 8) = 0;
  sub_10001FE6C(v9, &qword_1000E80F8);
  return sub_10001FE6C(v7, &qword_1000E80F8);
}

uint64_t sub_1000710B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E8110);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  *v9 = sub_1000A2280();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100017A54(&qword_1000E8118);
  sub_100071298(a1, &v9[*(v10 + 44)]);
  sub_100071BE8(v24);
  v11 = v24[0];
  sub_1000A28C0();
  sub_1000A1E90();
  v12 = v24[1];
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v22 = v29;
  v23 = v28;
  sub_100028B94(v9, v7, &qword_1000E8110);
  sub_100028B94(v7, a2, &qword_1000E8110);
  v16 = sub_100017A54(&qword_1000E8120);
  v17 = a2 + *(v16 + 48);
  *v17 = 0x4020000000000000;
  *(v17 + 8) = 0;
  v18 = a2 + *(v16 + 64);
  *v18 = v11;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  v19 = v22;
  *(v18 + 40) = v23;
  *(v18 + 48) = v19;

  sub_10001FE6C(v9, &qword_1000E8110);

  return sub_10001FE6C(v7, &qword_1000E8110);
}

uint64_t sub_100071298@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v113 = a1;
  v111 = a2;
  v3 = sub_100017A54(&qword_1000E8160);
  v108 = *(v3 - 8);
  v109 = v3;
  __chkstk_darwin(v3);
  v102 = &v100 - v4;
  v5 = sub_100017A54(&qword_1000E8168);
  v6 = __chkstk_darwin(v5 - 8);
  v110 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v122 = &v100 - v8;
  v9 = sub_1000A23D0();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v118 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = (v2 + *(type metadata accessor for BannerView() + 20));
  v11 = v114[3];
  *&v130 = v114[2];
  *(&v130 + 1) = v11;
  v112 = sub_10001B33C();

  v12 = sub_1000A2550();
  v14 = v13;
  v16 = v15;
  sub_1000A23E0();
  v17 = sub_1000A24C0();
  v19 = v18;
  LOBYTE(v2) = v20;

  sub_100028640(v12, v14, v16 & 1);

  sub_1000A23A0();
  v21 = sub_1000A2460();
  v23 = v22;
  LOBYTE(v12) = v24;
  sub_100028640(v17, v19, v2 & 1);

  v101 = v113[1];
  v25 = sub_1000A2480();
  v106 = v26;
  v107 = v25;
  v104 = v27;
  v121 = v28;
  sub_100028640(v21, v23, v12 & 1);

  KeyPath = swift_getKeyPath();
  v29 = v114[5];
  *&v130 = v114[4];
  *(&v130 + 1) = v29;

  v30 = sub_1000A2550();
  v32 = v31;
  LOBYTE(v2) = v33;
  sub_1000A23F0();
  v35 = v118;
  v34 = v119;
  v36 = v120;
  (*(v119 + 104))(v118, enum case for Font.Leading.tight(_:), v120);
  sub_1000A2400();

  (*(v34 + 8))(v35, v36);
  v37 = sub_1000A24C0();
  v39 = v38;
  LOBYTE(v34) = v40;

  sub_100028640(v30, v32, v2 & 1);

  sub_1000A23C0();
  v41 = sub_1000A2460();
  v43 = v42;
  LOBYTE(v32) = v44;
  sub_100028640(v37, v39, v34 & 1);

  sub_1000A2690();
  v45 = sub_1000A2480();
  v118 = v46;
  v119 = v45;
  LOBYTE(v39) = v47;
  v120 = v48;

  sub_100028640(v41, v43, v32 & 1);

  v117 = swift_getKeyPath();
  v116 = swift_getKeyPath();
  v115 = v39 & 1;
  LOBYTE(v130) = v39 & 1;
  v103 = swift_getKeyPath();
  v49 = (v114 + *(type metadata accessor for Banner() + 32));
  v50 = v49[1];
  if (v50)
  {
    *&v130 = *v49;
    *(&v130 + 1) = v50;

    v51 = sub_1000A2550();
    v53 = v52;
    v55 = v54;
    sub_1000A23F0();
    v56 = sub_1000A24C0();
    v58 = v57;
    v60 = v59;

    sub_100028640(v51, v53, v55 & 1);

    sub_1000A23C0();
    v61 = sub_1000A2460();
    v114 = v62;
    LOBYTE(v53) = v63;
    v112 = v64;
    sub_100028640(v56, v58, v60 & 1);

    sub_1000A28C0();
    sub_1000A1E90();
    v65 = v53 & 1;
    v123 = v53 & 1;
    LOBYTE(v53) = sub_1000A2370();
    sub_1000A1E00();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    LOBYTE(v124) = 0;
    v74 = *v113;
    v75 = sub_100017A54(&qword_1000E8180);
    v76 = v102;
    v77 = &v102[*(v75 + 36)];
    v78 = sub_100017A54(&qword_1000E8188);
    v79 = *(v78 + 52);
    v80 = enum case for RoundedCornerStyle.continuous(_:);
    v81 = sub_1000A2200();
    (*(*(v81 - 8) + 104))(&v77[v79], v80, v81);
    *v77 = v74;
    *&v77[*(v78 + 56)] = 256;
    v82 = v114;
    *v76 = v61;
    *(v76 + 8) = v82;
    *(v76 + 16) = v65;
    *(v76 + 24) = v112;
    v83 = v131;
    *(v76 + 32) = v130;
    *(v76 + 48) = v83;
    *(v76 + 64) = v132;
    *(v76 + 80) = v53;
    *(v76 + 88) = v67;
    *(v76 + 96) = v69;
    *(v76 + 104) = v71;
    *(v76 + 112) = v73;
    *(v76 + 120) = 0;
    v84 = swift_getKeyPath();
    v85 = v109;
    v86 = (v76 + *(v109 + 36));
    v87 = v101;
    *v86 = v84;
    v86[1] = v87;
    v88 = v122;
    sub_100072BC0(v76, v122);
    (*(v108 + 56))(v88, 0, 1, v85);
  }

  else
  {
    (*(v108 + 56))(v122, 1, 1, v109);
  }

  v89 = v110;
  sub_100028B94(v122, v110, &qword_1000E8168);
  v90 = v111;
  v91 = v106;
  v92 = v107;
  *v111 = v107;
  v90[1] = v91;
  v93 = v104 & 1;
  *(v90 + 16) = v104 & 1;
  v94 = KeyPath;
  v90[3] = v121;
  v90[4] = v94;
  v90[5] = 0x3FE6666666666666;
  v90[6] = 0x4010000000000000;
  *(v90 + 56) = 0;
  *&v124 = v119;
  *(&v124 + 1) = v118;
  LOBYTE(v125) = v115;
  *(&v125 + 1) = v138[0];
  DWORD1(v125) = *(v138 + 3);
  *(&v125 + 1) = v120;
  *&v126 = v117;
  *(&v126 + 1) = 0x3FECCCCCCCCCCCCDLL;
  *&v127 = v116;
  *(&v127 + 1) = 0x3FE6666666666666;
  v95 = v103;
  *&v128 = v103;
  *(&v128 + 1) = 4;
  v129 = 0;
  *(v90 + 144) = 0;
  v96 = v125;
  *(v90 + 4) = v124;
  *(v90 + 5) = v96;
  v97 = v127;
  *(v90 + 6) = v126;
  *(v90 + 7) = v97;
  *(v90 + 8) = v128;
  v98 = sub_100017A54(&qword_1000E8170);
  sub_100028B94(v89, v90 + *(v98 + 80), &qword_1000E8168);
  sub_100028630(v92, v91, v93);

  sub_100028B94(&v124, &v130, &qword_1000E8178);
  sub_10001FE6C(v122, &qword_1000E8168);
  sub_10001FE6C(v89, &qword_1000E8168);
  *&v130 = v119;
  *(&v130 + 1) = v118;
  LOBYTE(v131) = v115;
  *(&v131 + 1) = v138[0];
  DWORD1(v131) = *(v138 + 3);
  *(&v131 + 1) = v120;
  *&v132 = v117;
  *(&v132 + 1) = 0x3FECCCCCCCCCCCCDLL;
  v133 = v116;
  v134 = 0x3FE6666666666666;
  v135 = v95;
  v136 = 4;
  v137 = 0;
  sub_10001FE6C(&v130, &qword_1000E8178);
  sub_100028640(v92, v91, v93);
}

uint64_t sub_100071BE8@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = sub_100017A54(&qword_1000E6660);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1000A2770();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100017A54(&qword_1000E6678);
  v9 = __chkstk_darwin(v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_100017A54(&qword_1000E8128);
  __chkstk_darwin(v14);
  v16 = (&v26 - v15);
  v17 = v1 + *(type metadata accessor for BannerView() + 20);
  v18 = *(v17 + *(type metadata accessor for Banner() + 36));
  if (v18)
  {
    if (v18 != 1)
    {
      sub_100072A5C(v18);
      v22 = v18;
      sub_1000A2750();
      (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
      sub_1000A27D0();

      (*(v6 + 8))(v8, v5);
      sub_1000A2A60();
      v23 = sub_1000A2A70();
      (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
      sub_1000A27C0();

      sub_10001FE6C(v4, &qword_1000E6660);
      v24 = &v13[*(v26 + 36)];
      *v24 = 0;
      *(v24 + 4) = 1;
      sub_100072A6C(v13, v11);
      sub_10003D4E4();
      v25 = sub_1000A2820();
      sub_100072ADC(v18);
      sub_100072AEC(v13);
      result = v25;
      goto LABEL_7;
    }
  }

  else
  {
    *v16 = sub_1000A28C0();
    v16[1] = v19;
    v20 = sub_100017A54(&qword_1000E8130);
    sub_100071FBC(v1, v16 + *(v20 + 44));
    sub_100029050(&qword_1000E8138, &qword_1000E8128);
  }

  result = sub_1000A2820();
LABEL_7:
  *v27 = result;
  return result;
}

uint64_t sub_100071FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = sub_100017A54(&qword_1000E8140);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v28 - v7;
  v8 = sub_100017A54(&qword_1000E8148);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1000A2770();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100072960();
  sub_1000A2750();
  (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
  sub_1000A27D0();

  (*(v12 + 8))(v14, v11);
  v16 = enum case for Image.TemplateRenderingMode.template(_:);
  v17 = sub_1000A27A0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  v19 = sub_1000A2780();

  sub_10001FE6C(v10, &qword_1000E8148);
  v20 = *(v31 + 8);
  KeyPath = swift_getKeyPath();

  v22 = v29;
  sub_100072398(v29);
  v23 = *(v4 + 16);
  v24 = v30;
  v23(v30, v22, v3);
  *a2 = v19;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v20;
  v25 = sub_100017A54(&qword_1000E8150);
  v23((a2 + *(v25 + 48)), v24, v3);
  v26 = *(v4 + 8);

  v26(v22, v3);
  v26(v24, v3);
}

id sub_100072398@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v29 = sub_100017A54(&qword_1000E8158);
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - v1;
  v2 = sub_1000A2680();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A2770();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() premiumSealInner];
  if (result)
  {
    sub_1000A2750();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v25 = sub_1000A27D0();

    (*(v7 + 8))(v9, v6);
    v11 = sub_1000A2D10();
    v12 = objc_opt_self();
    v13 = [v12 colorWithHexString:v11];

    [v13 red];
    [v13 green];
    [v13 blue];
    v14 = enum case for Color.RGBColorSpace.sRGB(_:);
    v15 = *(v3 + 104);
    v15(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    v16 = sub_1000A2730();

    v17 = sub_1000A2D10();
    v18 = [v12 colorWithHexString:v17];

    [v18 red];
    [v18 green];
    [v18 blue];
    v15(v5, v14, v2);
    v19 = sub_1000A2730();

    sub_100017A54(&qword_1000E7898);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000AA450;
    *(v20 + 32) = v16;
    *(v20 + 40) = v19;

    sub_1000A2870();
    sub_1000A28D0();
    sub_1000A28E0();
    sub_1000A1EF0();
    v31 = 0;
    *v30 = v34;
    *&v30[8] = v35;
    *&v30[24] = v36;
    *&v30[40] = v25;
    *&v30[48] = 0x3FF0000000000000;
    *&v30[56] = 0;

    v21 = sub_100017A54(&qword_1000E78B8);
    v22 = sub_1000613A8();
    v23 = v26;
    sub_1000A25A0();
    v32[0] = *v30;
    v32[1] = *&v30[16];
    v33[0] = *&v30[32];
    *(v33 + 10) = *&v30[42];
    sub_10001FE6C(v32, &qword_1000E78B8);
    *v30 = v21;
    *&v30[8] = v22;
    swift_getOpaqueTypeConformance2();
    v24 = v29;
    sub_1000A2560();

    return (*(v28 + 8))(v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100072960()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 supportedContentLanguage];

  result = objc_opt_self();
  if (v1 != 1)
  {
    v3 = &stru_1000E1000;
    if (v1)
    {
      goto LABEL_7;
    }

    result = [result premiumSealOuter];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result premiumSealOuterFR];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_7:
  result = [result v3[173].name];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100072A1C@<X0>(void *a1@<X8>)
{
  result = sub_100070AC0(&v3);
  *a1 = v3;
  return result;
}

id sub_100072A5C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100072A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E6678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100072ADC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_100072AEC(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E6678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100072B64@<X0>(void *a1@<X8>)
{
  result = sub_1000A2050();
  *a1 = v3;
  return result;
}

uint64_t sub_100072BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E8160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100072C3C(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

void sub_100072C84()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  qword_1000F1C30 = v2;
}

UIImage *sub_100072D24(CGFloat a1, CGFloat a2)
{
  result = 0;
  if (a1 != 0.0)
  {
    v4 = (*&a1 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&a1 & 0x7FF0000000000000) == 0;
    if (!v4 && a2 != 0.0)
    {
      if ((~*&a2 & 0x7FF0000000000000) != 0 || (*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
        [v2 set];
        v7 = [objc_opt_self() ts_bezierPathWithPillRect:0.0 cornerRadius:{0.0, a1, a2, 2.0}];
        [v7 addClip];

        v9.origin.x = 0.0;
        v9.origin.y = 0.0;
        v9.size.width = a1;
        v9.size.height = a2;
        UIRectFill(v9);
        v8 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return v8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100072E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1000731F4;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = a4;

  sub_1000A2AE0();
}

uint64_t sub_100072EFC(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v35 = sub_1000A2AB0();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a5(a1);
  }

  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v27 = a4;
    v28 = a3;
    v36 = &_swiftEmptyArrayStorage;
    sub_10001EC94(0, v13, 0);
    v14 = v36;
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v30 = *(v15 + 56);
    v31 = v16;
    v32 = v15;
    v29 = (v15 - 8);
    do
    {
      v31(v34, v17, v35);
      v18 = sub_1000A2A90();
      if (v18)
      {
        swift_getObjectType();
        v19 = swift_conformsToProtocol2();
        if (!v19)
        {

          v18 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v34;
      v33 = sub_1000A2A80();
      v21 = sub_1000A2AA0();
      v23 = v22;
      (*v29)(v20, v35);
      v36 = v14;
      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        sub_10001EC94((v24 > 1), v25 + 1, 1);
        v14 = v36;
      }

      v14[2] = v25 + 1;
      v26 = &v14[5 * v25];
      v26[4] = v18;
      v26[5] = v19;
      v26[6] = v33;
      v26[7] = v21;
      v26[8] = v23;
      v17 += v30;
      --v13;
    }

    while (v13);
    a3 = v28;
  }

  a3(v14);
}

uint64_t sub_100073154()
{
  sub_100017A54(&qword_1000E8190);
  swift_allocObject();
  return sub_1000A1BD0();
}

uint64_t sub_1000731BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000731F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10007322C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007327C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000732C4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100073320()
{
  result = type metadata accessor for TaskContext();
  if (v1 <= 0x3F)
  {
    result = sub_1000A31A0();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10007343C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  sub_10007349C(a1, a2, a3);
  return v6;
}

double *sub_10007349C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000A1980();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000A1840();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1830();
  v14 = sub_1000A1820();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *(v4 + 2) = v14;
  *(v4 + 3) = v16;
  v17 = qword_1000E81A0;
  *(v4 + v17) = dispatch_group_create();
  v18 = qword_1000E81A8;
  *(v4 + v18) = dispatch_group_create();
  v19 = qword_1000E81B0;
  sub_1000A1970();
  sub_1000A19A0();
  swift_allocObject();
  *(v4 + v19) = sub_1000A1990();
  *(v4 + qword_1000E81B8) = &_swiftEmptyArrayStorage;
  (*(*(*(v8 + 80) - 8) + 56))(v4 + *(*v4 + 168), 1, 1);
  v4[4] = a3 + -1.0;
  *(v4 + 5) = a1;
  sub_1000757D8(a2, v4 + qword_1000E8198);
  return v4;
}

uint64_t sub_1000736D0(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = sub_1000A2900();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000A2930();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A28F0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_1000A2960();
  v39 = *(v47 - 8);
  v13 = __chkstk_darwin(v47);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v38 - v16;
  sub_100028E34(0, &qword_1000E76B0);

  v17 = sub_1000A3190();
  v18 = sub_1000A3090();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a2;
    v20 = v19;
    v21 = a1;
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v20 = 136446210;
    *(v20 + 4) = sub_10008B5B0(*(v3 + 16), *(v3 + 24), &aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "task manager %{public}s will start task", v20, 0xCu);
    sub_100018720(v22);
    a1 = v21;

    a2 = v38;
  }

  dispatch_group_enter(*(v3 + qword_1000E81A0));
  v23 = *(v3 + qword_1000E81A8);
  dispatch_group_enter(v23);
  result = sub_1000A2940();
  v25 = *(v3 + 32);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v25 < 9.22337204e18)
  {
    *v12 = v25;
    (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
    sub_1000A2990();
    (*(v10 + 8))(v12, v9);
    v39 = *(v39 + 8);
    (v39)(v15, v47);
    sub_100028E34(0, &qword_1000E87E0);
    v38 = v23;
    v26 = sub_1000A30F0();
    v27 = swift_allocObject();
    v27[2] = v3;
    v27[3] = a1;
    v27[4] = a2;

    sub_1000A2950();
    v28 = swift_allocObject();
    v28[2] = v3;
    v28[3] = v26;
    v28[4] = sub_100075528;
    v28[5] = v27;
    v53 = sub_10007557C;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1000311D0;
    v52 = &unk_1000D9728;
    v29 = _Block_copy(&aBlock);

    v30 = v26;

    v31 = FCHandleOperationTimeout();
    _Block_release(v29);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = sub_1000755D8;
    v33[4] = v32;
    v33[5] = sub_100075528;
    v33[6] = v27;
    v53 = sub_100075644;
    v54 = v33;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1000311D0;
    v52 = &unk_1000D97A0;
    v34 = _Block_copy(&aBlock);

    v35 = v40;
    sub_1000A2910();
    v48 = &_swiftEmptyArrayStorage;
    sub_100075654();
    sub_100017A54(&qword_1000E82E0);
    sub_1000756AC();
    v36 = v42;
    v37 = v45;
    sub_1000A3230();
    sub_1000A30B0();
    _Block_release(v34);

    (*(v44 + 8))(v36, v37);
    (*(v41 + 8))(v35, v43);
    (v39)(v46, v47);
  }

LABEL_9:
  __break(1u);
  return result;
}