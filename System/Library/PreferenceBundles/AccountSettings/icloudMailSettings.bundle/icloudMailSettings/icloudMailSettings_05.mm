uint64_t sub_82620()
{
  v1 = *&aMove_0[8 * *v0];
  sub_D6680();
}

uint64_t sub_82668@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_82A1C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_826F8()
{
  result = qword_1276B8;
  if (!qword_1276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1276B8);
  }

  return result;
}

unint64_t sub_82780()
{
  result = qword_1276D0;
  if (!qword_1276D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1276D0);
  }

  return result;
}

uint64_t sub_827EC()
{
  *v0;
  *v0;
  *v0;
  sub_D6680();
}

uint64_t sub_82900@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_82CE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_82930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x584F424E49;
  v5 = 0xE400000000000000;
  v6 = 1802401098;
  if (v2 != 5)
  {
    v6 = 0x73726568744FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000000000E6D30;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x65766968637241;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737466617244;
  if (v2 != 1)
  {
    v10 = 0x73654D20746E6553;
    v9 = 0xED00007365676173;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_82A1C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113278;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_82A68(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113520;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for MailRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_82C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_82C94()
{
  result = qword_1276E8;
  if (!qword_1276E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1276E8);
  }

  return result;
}

uint64_t sub_82CE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113CE0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_82D3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_82D84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_82DF0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_66D4(&qword_1276F0, &qword_E0C38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_66D4(&qword_1276F8, &qword_E0C40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_66D4(&qword_127700, &qword_E0C48);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  if (a3)
  {
    sub_830C4(a1, a2, 1, &v23 - v16);
    sub_FBD4(v17, v13, &qword_127700, &qword_E0C48);
    swift_storeEnumTagMultiPayload();
    sub_849C8();
    sub_84A84();
    sub_D5BF0();
    return sub_FC3C(v17, &qword_127700, &qword_E0C48);
  }

  else
  {
    *v9 = sub_D5BA0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v19 = sub_66D4(&qword_127708, &qword_E0C50);
    sub_83760(a1, a2, 0, &v9[*(v19 + 44)]);
    v20 = sub_D5DD0();
    v21 = &v9[*(sub_66D4(&qword_127710, &qword_E0C58) + 36)];
    *v21 = v20;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    v22 = &v9[*(v6 + 36)];
    *v22 = sub_84D14;
    *(v22 + 1) = 0;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    sub_FBD4(v9, v13, &qword_1276F0, &qword_E0C38);
    swift_storeEnumTagMultiPayload();
    sub_849C8();
    sub_84A84();
    sub_D5BF0();
    return sub_FC3C(v9, &qword_1276F0, &qword_E0C38);
  }
}

uint64_t sub_830C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v59 = a1;
  v60 = a2;
  v62 = a4;
  v4 = sub_66D4(&qword_123508, &qword_DB0E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v57 = &v49 - v6;
  v7 = sub_66D4(&qword_123510, &qword_DB0F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v49 - v11;
  v12 = sub_66D4(&qword_123518, &qword_DB0F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v53 = &v49 - v14;
  v15 = sub_66D4(&qword_123520, &qword_DB100);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v51 = &v49 - v17;
  v18 = sub_66D4(&qword_123528, &unk_DB108);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v49 - v20);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass:ObjCClassFromMetadata];
  v63._countAndFlagsBits = 2777980912;
  v63._object = 0xA400000000000000;
  v64._object = 0x80000000000E9500;
  v64._countAndFlagsBits = 0xD000000000000019;
  sub_D66D0(v64);
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  sub_D66D0(v65);
  v46._countAndFlagsBits = 0xE000000000000000;
  v66._object = 0x80000000000E9500;
  v66._countAndFlagsBits = 0xD000000000000019;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v25.super.isa = v24;
  v26 = sub_D4E80(v66, v73, v25, v63, v46);
  v55 = v27;
  v56 = v26;

  v28 = [v23 bundleForClass:ObjCClassFromMetadata];
  v63._countAndFlagsBits = 2777980912;
  v63._object = 0xA400000000000000;
  v67._countAndFlagsBits = 0xD00000000000001FLL;
  v67._object = 0x80000000000E9520;
  sub_D66D0(v67);
  v68._countAndFlagsBits = 2777980912;
  v68._object = 0xA400000000000000;
  sub_D66D0(v68);
  v47._countAndFlagsBits = 0xE000000000000000;
  v69._countAndFlagsBits = 0xD00000000000001FLL;
  v69._object = 0x80000000000E9520;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v29.super.isa = v28;
  v52 = sub_D4E80(v69, v74, v29, v63, v47);
  v54 = v30;

  *v21 = 0xD000000000000015;
  v21[1] = 0x80000000000E9540;
  v31 = enum case for OBKHeaderImage.symbol(_:);
  v32 = sub_D51B0();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v21, v31, v32);
  (*(v33 + 56))(v21, 0, 1, v32);
  v34 = sub_D5180();
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  v35 = sub_D5170();
  (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
  v36 = [v23 bundleForClass:ObjCClassFromMetadata];
  v63._countAndFlagsBits = 2777980912;
  v63._object = 0xA400000000000000;
  v70._countAndFlagsBits = 1162760004;
  v70._object = 0xE400000000000000;
  sub_D66D0(v70);
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  sub_D66D0(v71);
  v48._countAndFlagsBits = 0xE000000000000000;
  v72._countAndFlagsBits = 1162760004;
  v72._object = 0xE400000000000000;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v37.super.isa = v36;
  sub_D4E80(v72, v75, v37, v63, v48);

  v38 = sub_D51E0();
  (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = v59;
  *(v39 + 24) = v60;
  *(v39 + 32) = v61;

  v40 = v50;
  sub_D5230();
  v41 = sub_D5240();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 0, 1, v41);
  v42(v58, 1, 1, v41);
  v43 = v62;
  sub_D51F0();
  result = sub_66D4(&qword_127700, &qword_E0C48);
  v45 = (v43 + *(result + 36));
  *v45 = sub_84D14;
  v45[1] = 0;
  v45[2] = 0;
  v45[3] = 0;
  return result;
}

uint64_t sub_83760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v46 = a1;
  v47 = a2;
  v55 = a4;
  v4 = sub_D5D10();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_66D4(&qword_127740, &qword_E0C70);
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = sub_66D4(&qword_127748, &qword_E0C78);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v54 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v46 - v19;
  v21 = sub_66D4(&qword_1235C0, &unk_E0C80);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21);
  v51 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v46 - v26;
  sub_D5DC0();
  sub_66D4(&qword_1235C8, &unk_DB260);
  sub_109A8(&qword_1235D0, &qword_1235C8, &unk_DB260);
  sub_D56F0();
  v28 = sub_D5DD0();
  v29 = &v27[*(v22 + 44)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = swift_allocObject();
  *(v30 + 16) = v46;
  *(v30 + 24) = v47;
  *(v30 + 32) = v48;

  sub_66D4(&qword_1235D8, &unk_E0C90);
  v31 = sub_6110(&qword_121370, &qword_DB270);
  v32 = sub_3A810();
  v56 = v31;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  sub_D6260();
  sub_D5D00();
  sub_109A8(&qword_127750, &qword_127740, &qword_E0C70);
  sub_84C20(&qword_1235E8, &type metadata accessor for BorderedProminentButtonStyle);
  v33 = v49;
  v34 = v52;
  sub_D5FD0();
  (*(v53 + 8))(v8, v34);
  (*(v50 + 8))(v13, v33);
  v35 = &v20[*(sub_66D4(&qword_127758, &unk_E0CA0) + 36)];
  v36 = *(sub_66D4(&qword_1235F8, &qword_DB280) + 28);
  v37 = enum case for ControlSize.large(_:);
  v38 = sub_D5720();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  v39 = sub_D5DD0();
  v40 = &v20[*(v15 + 44)];
  *v40 = v39;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  v40[40] = 1;
  v41 = v51;
  sub_FBD4(v27, v51, &qword_1235C0, &unk_E0C80);
  v42 = v54;
  sub_FBD4(v20, v54, &qword_127748, &qword_E0C78);
  v43 = v55;
  sub_FBD4(v41, v55, &qword_1235C0, &unk_E0C80);
  v44 = sub_66D4(&qword_127760, &unk_E0CE0);
  sub_FBD4(v42, v43 + *(v44 + 48), &qword_127748, &qword_E0C78);
  sub_FC3C(v20, &qword_127748, &qword_E0C78);
  sub_FC3C(v27, &qword_1235C0, &unk_E0C80);
  sub_FC3C(v42, &qword_127748, &qword_E0C78);
  return sub_FC3C(v41, &qword_1235C0, &unk_E0C80);
}

uint64_t sub_83D4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_D5BA0();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v2 = sub_66D4(&qword_123608, &unk_DB2C0);
  return sub_83D9C((a1 + *(v2 + 44)));
}

uint64_t sub_83D9C@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v55 = sub_66D4(&qword_123610, &qword_E0CF0);
  v57 = *(v55 - 8);
  v1 = v57[8];
  v2 = __chkstk_darwin(v55);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v58 = &v53 - v4;
  v5 = sub_D61D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D61C0();
  (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5);
  v61 = sub_D61F0();

  (*(v6 + 8))(v9, v5);
  v60 = sub_D6180();
  sub_D63E0();
  sub_D57C0();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = objc_opt_self();
  v11 = [v54 bundleForClass:ObjCClassFromMetadata];
  v85._countAndFlagsBits = 2777980912;
  v85._object = 0xA400000000000000;
  v90._object = 0x80000000000E9500;
  v90._countAndFlagsBits = 0xD000000000000019;
  sub_D66D0(v90);
  v91._countAndFlagsBits = 2777980912;
  v91._object = 0xA400000000000000;
  sub_D66D0(v91);
  v51._countAndFlagsBits = 0xE000000000000000;
  v92._object = 0x80000000000E9500;
  v92._countAndFlagsBits = 0xD000000000000019;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v12.super.isa = v11;
  v13 = sub_D4E80(v92, v96, v12, v85, v51);
  v15 = v14;

  v85._countAndFlagsBits = v13;
  v85._object = v15;
  sub_DFAC();
  v16 = sub_D5F50();
  v18 = v17;
  LOBYTE(v13) = v19;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = sub_D5DF0();
  v24 = swift_getKeyPath();
  LOBYTE(v71[0]) = v13 & 1;
  v85._countAndFlagsBits = v16;
  v85._object = v18;
  LOBYTE(v86) = v13 & 1;
  *(&v86 + 1) = *v68;
  DWORD1(v86) = *&v68[3];
  *(&v86 + 1) = v21;
  *&v87 = KeyPath;
  BYTE8(v87) = 1;
  *(&v87 + 9) = *v67;
  HIDWORD(v87) = *&v67[3];
  *&v88 = v24;
  *(&v88 + 1) = v23;
  sub_D5E10();
  sub_66D4(&qword_123618, &unk_DB330);
  sub_3A91C();
  v25 = v58;
  sub_D5FC0();
  v69[0] = v85;
  v69[1] = v86;
  v69[2] = v87;
  v69[3] = v88;
  sub_FC3C(v69, &qword_123618, &unk_DB330);
  v26 = [v54 bundleForClass:ObjCClassFromMetadata];
  v85._countAndFlagsBits = 2777980912;
  v85._object = 0xA400000000000000;
  v93._countAndFlagsBits = 0xD00000000000001FLL;
  v93._object = 0x80000000000E9520;
  sub_D66D0(v93);
  v94._countAndFlagsBits = 2777980912;
  v94._object = 0xA400000000000000;
  sub_D66D0(v94);
  v52._countAndFlagsBits = 0xE000000000000000;
  v95._countAndFlagsBits = 0xD00000000000001FLL;
  v95._object = 0x80000000000E9520;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v27.super.isa = v26;
  v28 = sub_D4E80(v95, v97, v27, v85, v52);
  v30 = v29;

  v85._countAndFlagsBits = v28;
  v85._object = v30;
  v31 = sub_D5F50();
  v33 = v32;
  LOBYTE(v26) = v34;
  v54 = v35;
  v53 = swift_getKeyPath();
  LOBYTE(v30) = v26 & 1;
  LOBYTE(v85._countAndFlagsBits) = v26 & 1;
  v36 = v57[2];
  v37 = v59;
  v38 = v55;
  v36(v59, v25, v55);
  v71[0] = v61;
  v71[1] = 0;
  LOWORD(v72) = 1;
  *(&v72 + 2) = v65;
  WORD3(v72) = v66;
  *(&v72 + 1) = v60;
  v39 = v62;
  v73 = v62;
  v74 = v63;
  v40 = v64;
  v75 = v64;
  v41 = v61;
  v42 = v56;
  *(v56 + 3) = v63;
  *(v42 + 4) = v40;
  *(v42 + 1) = v72;
  *(v42 + 2) = v39;
  *v42 = v41;
  v43 = sub_66D4(&qword_123658, &unk_DB350);
  v36(&v42[*(v43 + 48)], v37, v38);
  v44 = &v42[*(v43 + 64)];
  *&v76 = v31;
  *(&v76 + 1) = v33;
  LOBYTE(v77[0]) = v30;
  *(v77 + 1) = *v70;
  DWORD1(v77[0]) = *&v70[3];
  v45 = v53;
  v46 = v54;
  *(&v77[0] + 1) = v54;
  *&v77[1] = v53;
  WORD4(v77[1]) = 1;
  BYTE10(v77[1]) = 1;
  v47 = v76;
  *(v44 + 27) = *(v77 + 11);
  v48 = v77[0];
  *v44 = v47;
  *(v44 + 1) = v48;
  sub_FBD4(v71, &v85, &qword_123660, &unk_E0D80);
  sub_FBD4(&v76, &v85, &qword_123668, &qword_DB360);
  v49 = v57[1];
  v49(v58, v38);
  v78[0] = v31;
  v78[1] = v33;
  v79 = v30;
  *v80 = *v70;
  *&v80[3] = *&v70[3];
  v81 = v46;
  v82 = v45;
  v83 = 1;
  v84 = 1;
  sub_FC3C(v78, &qword_123668, &qword_DB360);
  v49(v59, v38);
  v85 = v61;
  LOWORD(v86) = 1;
  *(&v86 + 2) = v65;
  WORD3(v86) = v66;
  *(&v86 + 1) = v60;
  v87 = v62;
  v88 = v63;
  v89 = v64;
  return sub_FC3C(&v85, &qword_123660, &unk_E0D80);
}

uint64_t sub_8448C()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Mail Import All Set] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_84618(uint64_t (*a1)(uint64_t))
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Mail Import All Set] tapped on Done", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return a1(v11);
}

uint64_t sub_847C0()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 1162760004;
  v23._object = 0xE400000000000000;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v27._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 1162760004;
  v25._object = 0xE400000000000000;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v2.super.isa = v1;
  v27._object = 0xA400000000000000;
  sub_D4E80(v25, v26, v2, v27, v11);

  sub_DFAC();
  v3 = sub_D5F50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_D63E0();
  sub_D5930();
  v22 = v7 & 1;
  *&v12 = v3;
  *(&v12 + 1) = v5;
  LOBYTE(v13) = v7 & 1;
  *(&v13 + 1) = v9;
  sub_D5E20();
  sub_66D4(&qword_121370, &qword_DB270);
  sub_3A810();
  sub_D5FC0();
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v20;
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v17;
  v21[0] = v12;
  v21[1] = v13;
  return sub_FC3C(v21, &qword_121370, &qword_DB270);
}

unint64_t sub_849C8()
{
  result = qword_127718;
  if (!qword_127718)
  {
    sub_6110(&qword_127700, &qword_E0C48);
    sub_84C20(&qword_1234A0, &type metadata accessor for OBKView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127718);
  }

  return result;
}

unint64_t sub_84A84()
{
  result = qword_127720;
  if (!qword_127720)
  {
    sub_6110(&qword_1276F0, &qword_E0C38);
    sub_84B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127720);
  }

  return result;
}

unint64_t sub_84B10()
{
  result = qword_127728;
  if (!qword_127728)
  {
    sub_6110(&qword_127710, &qword_E0C58);
    sub_109A8(&qword_127730, &qword_127738, &unk_E0C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127728);
  }

  return result;
}

uint64_t sub_84BC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_84C00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_84618(*(v0 + 16));
}

uint64_t sub_84C20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_84C84()
{
  result = qword_127768;
  if (!qword_127768)
  {
    sub_6110(&qword_127770, qword_E0D90);
    sub_849C8();
    sub_84A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127768);
  }

  return result;
}

uint64_t sub_84D1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(sub_66D4(&qword_1277A0, &unk_E0DF0) + 80);
  result = sub_2AEE0(v3, v4, v5, v6);
  *a2 = result & 1;
  return result;
}

uint64_t sub_84D94(uint64_t a1, uint64_t a2)
{
  sub_2A5C4(a2, v24);
  v2 = v25;
  v3 = sub_38BFC(v24, v25);
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v9 = type metadata accessor for MSRepositoryDefault();
  v23[3] = v9;
  v23[4] = &off_1188F0;
  v23[0] = v8;
  v10 = _s9ViewModelCMa_1(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = sub_38BFC(v23, v9);
  v15 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;

  v21 = sub_894E0(v20, v19, v13);

  sub_67D4(v23);
  sub_67D4(v24);
  return v21;
}

uint64_t sub_84F70@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = sub_66D4(&qword_127850, &qword_E0E50);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = v23 - v5;
  v24 = v1;
  v23[0] = sub_66D4(&qword_127858, &qword_E0E58);
  v7 = sub_6110(&qword_127860, &unk_E0E60);
  v8 = sub_6110(&qword_124770, &qword_DC340);
  v9 = sub_6110(&qword_127868, &qword_E0E70);
  v10 = sub_6110(&qword_127870, &qword_E0E78);
  v11 = sub_109A8(&qword_127878, &qword_127870, &qword_E0E78);
  v12 = sub_DFAC();
  *&v28 = v10;
  *(&v28 + 1) = &type metadata for String;
  *&v29 = v11;
  *(&v29 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v28 = v9;
  *(&v28 + 1) = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340);
  *&v28 = v7;
  *(&v28 + 1) = v8;
  *&v29 = v14;
  *(&v29 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  sub_D5850();
  v16 = &v6[*(v3 + 44)];
  *v16 = sub_89334;
  v17 = type metadata accessor for MSAutoReplyView();
  v16[2] = 0;
  v16[3] = 0;
  v16[1] = 0;
  v18 = (v1 + *(v17 + 20));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v28 = v25;
  v29 = v26;
  v30[0] = v27[0];
  *(v30 + 9) = *(v27 + 9);
  sub_A0C80(&v28, 19279, 0xE200000000000000);
  v31 = v28;
  sub_E158(&v31);

  v32 = v29;
  v33[0] = v30[0];
  *(v33 + 9) = *(v30 + 9);
  sub_FC3C(&v32, &qword_120EE8, &qword_D8DD0);
  return sub_FC3C(v6, &qword_127850, &qword_E0E50);
}

uint64_t sub_85310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v40 = sub_D5B20();
  v37 = *(v40 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_127870, &qword_E0E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_66D4(&qword_127868, &qword_E0E70);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = sub_66D4(&qword_127860, &unk_E0E60);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v35 = &v34 - v17;
  v45 = a1;
  sub_66D4(&qword_127880, &qword_E0EA8);
  sub_109A8(&qword_127888, &qword_127880, &qword_E0EA8);
  sub_D5E60();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v46._countAndFlagsBits = 2777980912;
  v46._object = 0xA400000000000000;
  v49._countAndFlagsBits = 0x5045522D4F545541;
  v49._object = 0xEA0000000000594CLL;
  sub_D66D0(v49);
  v50._countAndFlagsBits = 2777980912;
  v50._object = 0xA400000000000000;
  sub_D66D0(v50);
  v33._countAndFlagsBits = 0xE000000000000000;
  v51._countAndFlagsBits = 0x5045522D4F545541;
  v51._object = 0xEA0000000000594CLL;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v20.super.isa = v19;
  v21 = sub_D4E80(v51, v52, v20, v46, v33);
  v23 = v22;

  v46._countAndFlagsBits = v21;
  v46._object = v23;
  v24 = sub_109A8(&qword_127878, &qword_127870, &qword_E0E78);
  v25 = sub_DFAC();
  sub_D6040();

  (*(v6 + 8))(v9, v5);
  v26 = v37;
  v27 = v39;
  v28 = v40;
  (*(v37 + 104))(v39, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v40);
  v46._countAndFlagsBits = v5;
  v46._object = &type metadata for String;
  v47 = v24;
  v48 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_D60D0();
  (*(v26 + 8))(v27, v28);
  (*(v38 + 8))(v13, v10);
  v44 = v36;
  sub_66D4(&qword_124770, &qword_DC340);
  v46._countAndFlagsBits = v10;
  v46._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340);
  v31 = v41;
  sub_D6120();
  return (*(v42 + 8))(v30, v31);
}

uint64_t sub_85898@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v117 = a2;
  v3 = sub_66D4(&qword_127890, &qword_E0FB0);
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  __chkstk_darwin(v3);
  v114 = &v92 - v5;
  v101 = sub_66D4(&qword_127898, &qword_E0FB8);
  v100 = *(v101 - 8);
  v6 = *(v100 + 64);
  v7 = __chkstk_darwin(v101);
  v113 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v92 - v9;
  v111 = sub_66D4(&qword_1278A0, &qword_E0FC0);
  v99 = *(v111 - 8);
  v10 = *(v99 + 64);
  v11 = __chkstk_darwin(v111);
  v119 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v105 = &v92 - v13;
  v98 = sub_66D4(&qword_1278A8, &qword_E0FC8);
  v106 = *(v98 - 8);
  v14 = v106[8];
  v15 = __chkstk_darwin(v98);
  v103 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v118 = &v92 - v17;
  v18 = sub_66D4(&qword_1278B0, &qword_E0FD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v112 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v102 = &v92 - v22;
  v23 = sub_66D4(&qword_1278B8, &qword_E0FD8);
  v109 = *(v23 - 8);
  v110 = v23;
  v24 = *(v109 + 64);
  v25 = __chkstk_darwin(v23);
  v107 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v92 - v27;
  v120 = a1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_opt_self();
  v31 = [v30 bundleForClass:ObjCClassFromMetadata];
  v121._countAndFlagsBits = 2777980912;
  v121._object = 0xA400000000000000;
  v125._object = 0x80000000000E9560;
  v125._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v125);
  v126._countAndFlagsBits = 2777980912;
  v126._object = 0xA400000000000000;
  sub_D66D0(v126);
  v90._countAndFlagsBits = 0xE000000000000000;
  v127._object = 0x80000000000E9560;
  v127._countAndFlagsBits = 0xD000000000000011;
  v131.value._countAndFlagsBits = 0;
  v131.value._object = 0;
  v32.super.isa = v31;
  v33 = sub_D4E80(v127, v131, v32, v121, v90);
  v35 = v34;

  v121._countAndFlagsBits = v33;
  v121._object = v35;
  v97 = sub_DFAC();
  v121._countAndFlagsBits = sub_D5F50();
  v121._object = v36;
  v122 = v37 & 1;
  v123 = v38;
  v124 = 256;
  sub_66D4(&qword_121338, &qword_DF070);
  v39 = sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_109A8(&qword_121340, &qword_121338, &qword_DF070);
  v40 = sub_4ABC8();
  v104 = v28;
  v96 = v39;
  v95 = v40;
  sub_D63A0();
  v41 = (a1 + *(type metadata accessor for MSAutoReplyView() + 20));
  v43 = *v41;
  v42 = v41[1];
  v44 = *(v41 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  v94 = v42;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v121._countAndFlagsBits) == 1)
  {
    v93 = &v92;
    __chkstk_darwin(v45);
    v92 = a1;
    v46 = [v30 bundleForClass:ObjCClassFromMetadata];
    v121._countAndFlagsBits = 2777980912;
    v121._object = 0xA400000000000000;
    v128._countAndFlagsBits = 0xD000000000000013;
    v128._object = 0x80000000000E9580;
    sub_D66D0(v128);
    v129._countAndFlagsBits = 2777980912;
    v129._object = 0xA400000000000000;
    sub_D66D0(v129);
    v91._countAndFlagsBits = 0xE000000000000000;
    v130._countAndFlagsBits = 0xD000000000000013;
    v130._object = 0x80000000000E9580;
    v132.value._countAndFlagsBits = 0;
    v132.value._object = 0;
    v47.super.isa = v46;
    v48 = sub_D4E80(v130, v132, v47, v121, v91);
    v50 = v49;

    v121._countAndFlagsBits = v48;
    v121._object = v50;
    v121._countAndFlagsBits = sub_D5F50();
    v121._object = v51;
    v122 = v52 & 1;
    v123 = v53;
    sub_66D4(&qword_1278C8, &qword_E1030);
    sub_109A8(&qword_1278D0, &qword_1278C8, &qword_E1030);
    v54 = sub_D6370();
    v93 = &v92;
    __chkstk_darwin(v54);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v121._countAndFlagsBits = sub_D5F50();
    v121._object = v55;
    v122 = v56 & 1;
    v123 = v57;
    v124 = 256;
    v58 = v105;
    v59 = sub_D63A0();
    __chkstk_darwin(v59);
    sub_66D4(&qword_1278D8, &unk_E1080);
    v60 = sub_6110(&qword_121420, &qword_DA840);
    v61 = sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
    v121._countAndFlagsBits = v60;
    v121._object = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v108;
    sub_D6390();
    v63 = v106[2];
    v64 = v98;
    (v63)(v103, v118);
    v65 = v99;
    v97 = *(v99 + 16);
    v97(v119, v58, v111);
    v66 = v100;
    v96 = *(v100 + 16);
    v67 = v101;
    v96(v113, v62, v101);
    v68 = v114;
    v69 = v64;
    v63();
    v70 = sub_66D4(&qword_1278E0, &qword_E1090);
    v71 = v68 + *(v70 + 48);
    v72 = v68;
    v73 = v111;
    v97(v71, v119, v111);
    v74 = v113;
    v96((v72 + *(v70 + 64)), v113, v67);
    v75 = *(v66 + 8);
    v75(v108, v67);
    v76 = *(v65 + 8);
    v76(v105, v73);
    v77 = v106[1];
    v77(v118, v69);
    v75(v74, v67);
    v76(v119, v73);
    v77(v103, v69);
    v78 = v102;
    sub_8B338(v114, v102);
    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v102;
  }

  (*(v115 + 56))(v78, v79, 1, v116);
  v81 = v109;
  v80 = v110;
  v82 = *(v109 + 16);
  v83 = v107;
  v84 = v104;
  v82(v107, v104, v110);
  v85 = v112;
  sub_8B2A8(v78, v112);
  v86 = v117;
  v82(v117, v83, v80);
  v87 = sub_66D4(&qword_1278C0, &qword_E1028);
  sub_8B2A8(v85, &v86[*(v87 + 48)]);
  sub_FC3C(v78, &qword_1278B0, &qword_E0FD0);
  v88 = *(v81 + 8);
  v88(v84, v80);
  sub_FC3C(v85, &qword_1278B0, &qword_E0FD0);
  return (v88)(v83, v80);
}

uint64_t sub_865C8(uint64_t a1)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 2777980912;
  v11._object = 0x80000000000E9620;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v11);
  v12._countAndFlagsBits = 2777980912;
  v12._object = 0xA400000000000000;
  sub_D66D0(v12);
  v15._countAndFlagsBits = 2777980912;
  v10._countAndFlagsBits = 0xE000000000000000;
  v13._object = 0x80000000000E9620;
  v13._countAndFlagsBits = 0xD000000000000011;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v4.super.isa = v3;
  v15._object = 0xA400000000000000;
  sub_D4E80(v13, v14, v4, v15, v10);

  v5 = (a1 + *(type metadata accessor for MSAutoReplyView() + 20));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  return sub_D62D0();
}

uint64_t sub_867A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v64 = sub_D5C30();
  v60 = *(v64 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v64);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_1278F0, &qword_E10C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v62 = &v58 - v7;
  v70 = sub_66D4(&qword_1278F8, &qword_E10D0);
  v68 = *(v70 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v70);
  v61 = &v58 - v9;
  v10 = sub_66D4(&qword_127900, &qword_E10D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v58 - v14;
  v71 = sub_66D4(&qword_121338, &qword_DF070);
  v66 = *(v71 - 8);
  v15 = *(v66 + 64);
  v16 = __chkstk_darwin(v71);
  v69 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = objc_opt_self();
  v59 = ObjCClassFromMetadata;
  v21 = [v58 bundleForClass:ObjCClassFromMetadata];
  v74._countAndFlagsBits = 2777980912;
  v74._object = 0xA400000000000000;
  v77._countAndFlagsBits = 0xD00000000000001CLL;
  v77._object = 0x80000000000E95E0;
  sub_D66D0(v77);
  v78._countAndFlagsBits = 2777980912;
  v78._object = 0xA400000000000000;
  sub_D66D0(v78);
  v56._countAndFlagsBits = 0xE000000000000000;
  v79._countAndFlagsBits = 0xD00000000000001CLL;
  v79._object = 0x80000000000E95E0;
  v83.value._countAndFlagsBits = 0;
  v83.value._object = 0;
  v22.super.isa = v21;
  v23 = sub_D4E80(v79, v83, v22, v74, v56);
  v25 = v24;

  v75 = v23;
  v76 = v25;
  v26 = (a1 + *(type metadata accessor for MSAutoReplyView() + 20));
  v28 = *v26;
  v27 = v26[1];
  v29 = *(v26 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  v67 = v19;
  sub_D62D0();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v74._countAndFlagsBits) == 1)
  {
    v30 = [v58 bundleForClass:v59];
    v74._countAndFlagsBits = 2777980912;
    v74._object = 0xA400000000000000;
    v80._object = 0x80000000000E9600;
    v80._countAndFlagsBits = 0xD000000000000010;
    sub_D66D0(v80);
    v81._countAndFlagsBits = 2777980912;
    v81._object = 0xA400000000000000;
    sub_D66D0(v81);
    v57._countAndFlagsBits = 0xE000000000000000;
    v82._object = 0x80000000000E9600;
    v82._countAndFlagsBits = 0xD000000000000010;
    v84.value._countAndFlagsBits = 0;
    v84.value._object = 0;
    v31.super.isa = v30;
    v32 = sub_D4E80(v82, v84, v31, v74, v57);
    v34 = v33;

    v74._countAndFlagsBits = v32;
    v74._object = v34;
    sub_D5750();
    swift_getKeyPath();
    sub_D5880();

    sub_66D4(&qword_127910, &qword_E11A0);
    v35 = *(v60 + 72);
    v36 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_DA270;
    sub_D5C20();
    sub_D5C10();
    v75 = v37;
    sub_8B3C8(&qword_127918, &type metadata accessor for DatePickerComponents);
    sub_66D4(&qword_127920, &qword_E11A8);
    sub_109A8(&qword_127928, &qword_127920, &qword_E11A8);
    sub_D6990();
    v38 = v61;
    sub_D5670();
    v39 = v68;
    v40 = v65;
    v41 = v38;
    v42 = v70;
    (*(v68 + 32))(v65, v41, v70);
    v43 = 0;
    v44 = v42;
    v45 = v39;
  }

  else
  {
    v43 = 1;
    v44 = v70;
    v40 = v65;
    v45 = v68;
  }

  (*(v45 + 56))(v40, v43, 1, v44);
  v46 = v66;
  v47 = v67;
  v48 = *(v66 + 16);
  v49 = v69;
  v50 = v71;
  v48(v69, v67, v71);
  v51 = v72;
  sub_FBD4(v40, v72, &qword_127900, &qword_E10D8);
  v52 = v73;
  v48(v73, v49, v50);
  v53 = sub_66D4(&qword_127908, &qword_E1128);
  sub_FBD4(v51, &v52[*(v53 + 48)], &qword_127900, &qword_E10D8);
  sub_FC3C(v40, &qword_127900, &qword_E10D8);
  v54 = *(v46 + 8);
  v54(v47, v50);
  sub_FC3C(v51, &qword_127900, &qword_E10D8);
  return (v54)(v49, v50);
}

uint64_t sub_86FE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v69 = sub_D5C30();
  v67 = *(v69 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v69);
  v68 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D5030();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v72 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_66D4(&qword_1278E8, &qword_E10C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v76 = v65 - v10;
  v11 = sub_66D4(&qword_1278F0, &qword_E10C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v75 = v65 - v13;
  v81 = sub_66D4(&qword_1278F8, &qword_E10D0);
  v79 = *(v81 - 8);
  v14 = *(v79 + 64);
  __chkstk_darwin(v81);
  v66 = v65 - v15;
  v16 = sub_66D4(&qword_127900, &qword_E10D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v84 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v80 = v65 - v20;
  v21 = sub_66D4(&qword_121338, &qword_DF070);
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = *(v82 + 64);
  v23 = __chkstk_darwin(v21);
  v78 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v65 - v25;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = objc_opt_self();
  v71 = ObjCClassFromMetadata;
  v28 = [v70 bundleForClass:ObjCClassFromMetadata];
  v86._countAndFlagsBits = 2777980912;
  v86._object = 0xA400000000000000;
  v89._object = 0x80000000000E95C0;
  v89._countAndFlagsBits = 0xD00000000000001ALL;
  sub_D66D0(v89);
  v90._countAndFlagsBits = 2777980912;
  v90._object = 0xA400000000000000;
  sub_D66D0(v90);
  v63._countAndFlagsBits = 0xE000000000000000;
  v91._object = 0x80000000000E95C0;
  v91._countAndFlagsBits = 0xD00000000000001ALL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v29.super.isa = v28;
  v30 = sub_D4E80(v91, v95, v29, v86, v63);
  v32 = v31;

  v87 = v30;
  v88 = v32;
  v33 = (a1 + *(type metadata accessor for MSAutoReplyView() + 20));
  v34 = *v33;
  v35 = v33[1];
  v36 = *(v33 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v37 = sub_DFAC();
  v77 = v26;
  v65[1] = v37;
  sub_D62D0();
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v86._countAndFlagsBits) != 1)
  {
    v53 = 1;
    v50 = v80;
    v52 = v81;
    v49 = v79;
    goto LABEL_5;
  }

  v38 = [v70 bundleForClass:v71];
  v86._countAndFlagsBits = 2777980912;
  v86._object = 0xA400000000000000;
  v92._countAndFlagsBits = 0x5045525F4F545541;
  v92._object = 0xEE00444E455F594CLL;
  sub_D66D0(v92);
  v93._countAndFlagsBits = 2777980912;
  v93._object = 0xA400000000000000;
  sub_D66D0(v93);
  v64._countAndFlagsBits = 0xE000000000000000;
  v94._countAndFlagsBits = 0x5045525F4F545541;
  v94._object = 0xEE00444E455F594CLL;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v39.super.isa = v38;
  v40 = sub_D4E80(v94, v96, v39, v86, v64);
  v42 = v41;

  v86._countAndFlagsBits = v40;
  v86._object = v42;
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  sub_D5570();

  sub_D4FC0();
  (*(v73 + 8))(v43, v74);
  sub_8B3C8(&qword_122F50, &type metadata accessor for Date);
  result = sub_D65B0();
  if (result)
  {
    sub_66D4(&qword_127910, &qword_E11A0);
    v45 = *(v67 + 72);
    v46 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_DA270;
    sub_D5C20();
    sub_D5C10();
    v87 = v47;
    sub_8B3C8(&qword_127918, &type metadata accessor for DatePickerComponents);
    sub_66D4(&qword_127920, &qword_E11A8);
    sub_109A8(&qword_127928, &qword_127920, &qword_E11A8);
    sub_D6990();
    v48 = v66;
    sub_D5680();
    v49 = v79;
    v50 = v80;
    v51 = v48;
    v52 = v81;
    (*(v79 + 32))(v80, v51, v81);
    v53 = 0;
LABEL_5:
    (*(v49 + 56))(v50, v53, 1, v52);
    v55 = v82;
    v54 = v83;
    v56 = *(v82 + 16);
    v57 = v77;
    v58 = v78;
    v56(v78, v77, v83);
    v59 = v84;
    sub_FBD4(v50, v84, &qword_127900, &qword_E10D8);
    v60 = v85;
    v56(v85, v58, v54);
    v61 = sub_66D4(&qword_127908, &qword_E1128);
    sub_FBD4(v59, &v60[*(v61 + 48)], &qword_127900, &qword_E10D8);
    sub_FC3C(v50, &qword_127900, &qword_E10D8);
    v62 = *(v55 + 8);
    v62(v57, v54);
    sub_FC3C(v59, &qword_127900, &qword_E10D8);
    return (v62)(v58, v54);
  }

  __break(1u);
  return result;
}

uint64_t sub_87A0C(uint64_t a1)
{
  v2 = sub_66D4(&qword_121420, &qword_DA840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 2777980912;
  v19._object = 0xA400000000000000;
  v22._object = 0x80000000000E95A0;
  v22._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v22);
  v23._countAndFlagsBits = 2777980912;
  v23._object = 0xA400000000000000;
  sub_D66D0(v23);
  v18._countAndFlagsBits = 0xE000000000000000;
  v24._object = 0x80000000000E95A0;
  v24._countAndFlagsBits = 0xD000000000000012;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v9.super.isa = v8;
  v10 = sub_D4E80(v24, v25, v9, v19, v18);
  v12 = v11;

  v20 = v10;
  v21 = v12;
  v13 = (a1 + *(type metadata accessor for MSAutoReplyView() + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  sub_D6420();
  sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
  sub_D6160();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_87CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_66D4(&qword_1247C8, &qword_DC3C0);
  v3 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v21 = &v21 - v4;
  v22 = sub_66D4(&qword_1247D0, &qword_DC3C8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v21 - v7;
  v9 = sub_D5C80();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_66D4(&qword_1247D8, &unk_DC3D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_D5C60();
  v26 = a1;
  sub_66D4(&qword_1247E0, &unk_E2C60);
  sub_52748(&qword_1247E8, &qword_1247E0, &unk_E2C60, sub_52658);
  sub_D5920();
  sub_D5C70();
  v25 = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5920();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_D5BC0();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_8802C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_66D4(&qword_121280, &unk_D8E40);
  v3 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v5 = &v40 - v4;
  v40 = sub_66D4(&qword_124800, &qword_DC4F8);
  v6 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v8 = &v40 - v7;
  v9 = type metadata accessor for MSAutoReplyView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_66D4(&qword_1247F8, &qword_DC3E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = *(a1 + *(v9 + 28));
  sub_8AF00(a1, v12);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_8AF68(v12, v19 + v18);
  if (v17 == 1)
  {
    sub_D5190();
    v20 = a1 + *(v9 + 20);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    _s9ViewModelCMa_1(0);
    sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v24 = v43;
    KeyPath = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = &v16[*(v13 + 36)];
    *v27 = KeyPath;
    v27[1] = sub_10ACC;
    v27[2] = v26;
    v28 = &qword_1247F8;
    v29 = &qword_DC3E0;
    sub_FBD4(v16, v8, &qword_1247F8, &qword_DC3E0);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v30 = v16;
  }

  else
  {
    sub_D6260();
    v31 = a1 + *(v9 + 20);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    _s9ViewModelCMa_1(0);
    sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v35 = v44;
    v36 = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = &v5[*(v41 + 36)];
    *v38 = v36;
    v38[1] = sub_10ACC;
    v38[2] = v37;
    v28 = &qword_121280;
    v29 = &unk_D8E40;
    sub_FBD4(v5, v8, &qword_121280, &unk_D8E40);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v30 = v5;
  }

  return sub_FC3C(v30, v28, v29);
}

uint64_t sub_8859C(uint64_t a1)
{
  v19 = sub_D5B10();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = sub_D57E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_D57D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_88818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = sub_66D4(&qword_121280, &unk_D8E40);
  v3 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v49 = &v46 - v4;
  v60 = sub_66D4(&qword_121288, &unk_E0ED0);
  v5 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v46 - v6;
  v7 = type metadata accessor for MSAutoReplyView();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v51 = v9;
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_66D4(&qword_121258, &unk_D8E30);
  v10 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v48 = &v46 - v11;
  v64 = sub_66D4(&qword_121248, &unk_E0EC0);
  v12 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v62 = &v46 - v13;
  v14 = sub_66D4(&qword_121290, &qword_D8E50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = sub_66D4(&qword_121238, &unk_D8E20);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v23 = *(v7 + 20);
  v58 = a1;
  v24 = (a1 + v23);
  v26 = *v24;
  v25 = v24[1];
  LODWORD(a1) = *(v24 + 16);
  v27 = _s9ViewModelCMa_1(0);
  v28 = sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  v53 = v26;
  v54 = v25;
  v55 = a1;
  v52 = v27;
  v50 = v28;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v68 == 1)
  {
    sub_D5780();
    (*(v19 + 16))(v17, v22, v18);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_52748(&qword_121240, &qword_121248, &unk_E0EC0, sub_EA20);
    sub_D5BF0();
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    v46 = v14;
    v47 = v17;
    v30 = v57;
    v31 = *(v58 + *(v7 + 28));
    sub_8AF00(v58, v57);
    v32 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v33 = swift_allocObject();
    sub_8AF68(v30, v33 + v32);
    if (v31 == 1)
    {
      v34 = v48;
      sub_D5150();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v35 = v66;
      KeyPath = swift_getKeyPath();
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      v38 = (v34 + *(v59 + 36));
      *v38 = KeyPath;
      v38[1] = sub_10ACC;
      v38[2] = v37;
      v39 = &qword_121258;
      v40 = &unk_D8E30;
      sub_FBD4(v34, v61, &qword_121258, &unk_D8E30);
    }

    else
    {
      v34 = v49;
      sub_D6260();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v42 = v67;
      v43 = swift_getKeyPath();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      v45 = (v34 + *(v63 + 36));
      *v45 = v43;
      v45[1] = sub_F0D0;
      v45[2] = v44;
      v39 = &qword_121280;
      v40 = &unk_D8E40;
      sub_FBD4(v34, v61, &qword_121280, &unk_D8E40);
    }

    swift_storeEnumTagMultiPayload();
    sub_EA20();
    sub_EB50();
    v41 = v62;
    sub_D5BF0();
    sub_FC3C(v34, v39, v40);
    sub_FBD4(v41, v47, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_52748(&qword_121240, &qword_121248, &unk_E0EC0, sub_EA20);
    sub_D5BF0();
    return sub_FC3C(v41, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_890B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for MSAutoReplyView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = a1 + *(__chkstk_darwin(v5 - 8) + 28);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
  sub_D5740();
  sub_8AF00(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_8AF68(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_2D184(a3, v13);
}

uint64_t sub_89238(uint64_t a1, uint64_t a2)
{
  v4 = sub_D57E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + *(type metadata accessor for MSAutoReplyView() + 24);
  v10 = *(v9 + 8);
  (*v9)(a1);
  sub_EC34(v8);
  sub_D57D0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_89334()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Auto Reply] page viewed", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_78BC4(2u);
  v9();
}

uint64_t sub_894E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v153 = a1;
  v140 = sub_66D4(&qword_122F78, &qword_DAD90);
  v5 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v139 = &v123 - v6;
  v144 = sub_66D4(&qword_122F80, &qword_DFB50);
  v143 = *(v144 - 8);
  v7 = *(v143 + 64);
  v8 = __chkstk_darwin(v144);
  v141 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = &v123 - v10;
  v133 = sub_66D4(&qword_122F60, &unk_E2B60);
  v11 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v131 = &v123 - v12;
  v135 = sub_66D4(&qword_127778, &qword_E0DD0);
  v134 = *(v135 - 8);
  v13 = *(v134 + 64);
  __chkstk_darwin(v135);
  v132 = &v123 - v14;
  v138 = sub_66D4(&qword_127780, &qword_E0DD8);
  v137 = *(v138 - 8);
  v15 = *(v137 + 64);
  __chkstk_darwin(v138);
  v136 = &v123 - v16;
  v17 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v152 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v125 = &v123 - v22;
  v23 = __chkstk_darwin(v21);
  v123 = &v123 - v24;
  v25 = __chkstk_darwin(v23);
  v124 = &v123 - v26;
  v27 = __chkstk_darwin(v25);
  v129 = &v123 - v28;
  v29 = __chkstk_darwin(v27);
  v128 = &v123 - v30;
  v31 = __chkstk_darwin(v29);
  v145 = &v123 - v32;
  __chkstk_darwin(v31);
  v127 = &v123 - v33;
  v34 = sub_D5030();
  v150 = *(v34 - 8);
  v151 = v34;
  v35 = *(v150 + 64);
  v36 = __chkstk_darwin(v34);
  v147 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v146 = &v123 - v39;
  __chkstk_darwin(v38);
  v148 = (&v123 - v40);
  v149 = sub_66D4(&qword_121948, &unk_DC5C0);
  v154 = *(v149 - 8);
  v41 = *(v154 + 64);
  __chkstk_darwin(v149);
  v43 = &v123 - v42;
  v44 = sub_66D4(&qword_121070, &qword_DAFE0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v123 - v47;
  v49 = sub_66D4(&qword_121068, &qword_DBEE0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v53 = &v123 - v52;
  v160[3] = type metadata accessor for MSRepositoryDefault();
  v160[4] = &off_1188F0;
  v160[0] = a2;
  v54 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__isUpdating;
  LOBYTE(v157) = 0;
  sub_D5530();
  v55 = *(v50 + 32);
  v55(a3 + v54, v53, v49);
  v56 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__error;
  v157 = 0u;
  memset(v158, 0, 25);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  (*(v45 + 32))(a3 + v56, v48, v44);
  v57 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__isDoneDisabled;
  LOBYTE(v157) = 1;
  sub_D5530();
  v130 = v49;
  v58 = v49;
  v59 = a3;
  v55(a3 + v57, v53, v58);
  v60 = v153;
  v61 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__statusMessage;
  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  sub_D5530();
  (*(v154 + 32))(v59 + v61, v43, v149);
  *(v59 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  sub_2A5C4(v160, v59 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_repository);
  *(v59 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_autoReply) = v60;

  sub_D54F0();
  if (*v158 == 1)
  {
    sub_31650(v157, *(&v157 + 1), 1);
    v62 = 0;
  }

  else
  {
    v62 = v157;
    sub_31650(v157, *(&v157 + 1), *v158);
  }

  swift_beginAccess();
  LOBYTE(v155) = v62 & 1;
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  v63 = *v158;
  if (*v158 > 1uLL)
  {
    v70 = v157;

    sub_31650(v70, *(&v70 + 1), v63);
    v71 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v71 setFormatOptions:3955];
    v72 = sub_D65C0();

    v73 = [v71 dateFromString:v72];

    if (v73)
    {
      v74 = v152;
      sub_D5000();

      v75 = 0;
      v65 = v150;
      v64 = v151;
      v67 = v147;
      v68 = v146;
      v69 = v145;
    }

    else
    {
      v75 = 1;
      v65 = v150;
      v64 = v151;
      v67 = v147;
      v68 = v146;
      v69 = v145;
      v74 = v152;
    }

    v154 = *(v65 + 56);
    (v154)(v74, v75, 1, v64);
    v66 = v127;
    sub_314A0(v74, v127);
    v152 = *(v65 + 48);
    if (v152(v66, 1, v64) != 1)
    {
      (*(v65 + 32))(v148, v66, v64);
      goto LABEL_13;
    }
  }

  else
  {
    sub_31650(v157, *(&v157 + 1), *v158);
    v65 = v150;
    v64 = v151;
    v66 = v127;
    v154 = *(v150 + 56);
    (v154)(v127, 1, 1, v151);
    v67 = v147;
    v68 = v146;
    v69 = v145;
  }

  sub_80708(v148);
  v152 = *(v65 + 48);
  if (v152(v66, 1, v64) != 1)
  {
    sub_FC3C(v66, &qword_122F48, &unk_E0DE0);
  }

LABEL_13:
  swift_beginAccess();
  v76 = *(v65 + 16);
  v77 = v148;
  v127 = v65 + 16;
  v126 = v76;
  v76(v68, v148, v64);
  sub_D5530();
  v148 = *(v65 + 8);
  (v148)(v77, v64);
  swift_endAccess();
  sub_D54F0();
  v78 = *v158;
  if (*v158 > 1uLL)
  {
    v81 = v157;

    p_type = &stru_11EFF0.type;
    sub_31650(v81, *(&v81 + 1), v78);
    v82 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v82 setFormatOptions:3955];
    v83 = sub_D65C0();

    v84 = [v82 dateFromString:v83];

    if (v84)
    {
      v85 = v125;
      sub_D5000();

      v86 = 0;
      v64 = v151;
      v67 = v147;
      v69 = v145;
    }

    else
    {
      v86 = 1;
      v64 = v151;
      v67 = v147;
      v69 = v145;
      v85 = v125;
    }

    (v154)(v85, v86, 1, v64);
    sub_314A0(v85, v69);
    v79 = v152(v69, 1, v64) != 1;
    v68 = v146;
  }

  else
  {
    sub_31650(v157, *(&v157 + 1), *v158);
    (v154)(v69, 1, 1, v64);
    v79 = 0;
    p_type = (&stru_11EFF0 + 16);
  }

  sub_FC3C(v69, &qword_122F48, &unk_E0DE0);
  swift_beginAccess();
  LOBYTE(v155) = v79;
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  if (*v158 == 1 || !*&v158[16])
  {
    sub_31650(v157, *(&v157 + 1), *v158);
    v96 = v128;
    (v154)(v128, 1, 1, v64);
  }

  else
  {
    v87 = v157;
    v88 = p_type;
    v89 = *v158;

    sub_31650(v87, *(&v87 + 1), v89);
    v90 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v90 v88[302]];
    v91 = sub_D65C0();

    v92 = [v90 dateFromString:v91];

    if (v92)
    {
      v93 = v123;
      sub_D5000();

      v94 = 0;
      v95 = v150;
      v64 = v151;
      v96 = v128;
      v67 = v147;
      v68 = v146;
    }

    else
    {
      v94 = 1;
      v95 = v150;
      v64 = v151;
      v96 = v128;
      v67 = v147;
      v68 = v146;
      v93 = v123;
    }

    (v154)(v93, v94, 1, v64);
    sub_314A0(v93, v96);
    p_type = &stru_11EFF0.type;
    if (v152(v96, 1, v64) != 1)
    {
      (*(v95 + 32))(v67, v96, v64);
      goto LABEL_29;
    }
  }

  sub_80708(v68);
  sub_D4FC0();
  (v148)(v68, v64);
  if (v152(v96, 1, v64) != 1)
  {
    sub_FC3C(v96, &qword_122F48, &unk_E0DE0);
  }

LABEL_29:
  swift_beginAccess();
  v126(v68, v67, v64);
  sub_D5530();
  (v148)(v67, v64);
  swift_endAccess();
  sub_D54F0();
  if (*v158 == 1)
  {
    v97 = v129;
  }

  else
  {
    v97 = v129;
    if (*&v158[16])
    {
      v98 = v157;
      v99 = p_type;
      v100 = *v158;

      sub_31650(v98, *(&v98 + 1), v100);
      v101 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v101 v99[302]];
      v102 = sub_D65C0();

      v103 = [v101 dateFromString:v102];

      if (v103)
      {
        v104 = v124;
        sub_D5000();

        v105 = 0;
        v106 = v151;
      }

      else
      {
        v105 = 1;
        v106 = v151;
        v104 = v124;
      }

      (v154)(v104, v105, 1, v106);
      sub_314A0(v104, v97);
      v107 = v152(v97, 1, v106) != 1;
      goto LABEL_37;
    }
  }

  sub_31650(v157, *(&v157 + 1), *v158);
  (v154)(v97, 1, 1, v64);
  v107 = 0;
LABEL_37:
  sub_FC3C(v97, &qword_122F48, &unk_E0DE0);
  swift_beginAccess();
  LOBYTE(v155) = v107;
  sub_D5530();
  swift_endAccess();
  sub_D54F0();
  v108 = *v158;
  if (*v158 == 1)
  {
    sub_31650(v157, *(&v157 + 1), 1);
    v109 = 0;
    v110 = 0xE000000000000000;
  }

  else
  {
    v111 = *&v158[24];
    v112 = v159;
    v113 = v157;

    sub_31650(v113, *(&v113 + 1), v108);
    if (v112)
    {
      v109 = v111;
    }

    else
    {
      v109 = 0;
    }

    if (v112)
    {
      v110 = v112;
    }

    else
    {
      v110 = 0xE000000000000000;
    }
  }

  swift_beginAccess();
  v155 = v109;
  v156 = v110;
  sub_D5530();

  sub_D5540();
  swift_endAccess();

  swift_beginAccess();
  v114 = v142;
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  v115 = v141;
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_66D4(&qword_122F98, &qword_DADA8);
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_127788, &qword_122F60, &unk_E2B60);
  sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
  sub_109A8(&qword_122FA8, &qword_122F78, &qword_DAD90);
  v116 = v132;
  v117 = v144;
  sub_D54A0();
  sub_109A8(&qword_127790, &qword_127778, &qword_E0DD0);
  v118 = v136;
  v119 = v135;
  sub_D55C0();
  (*(v134 + 8))(v116, v119);
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_127798, &qword_127780, &qword_E0DD8);
  v120 = v138;
  sub_D5620();
  (*(v137 + 8))(v118, v120);
  v121 = v143;
  (*(v143 + 16))(v115, v114, v117);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v121 + 8))(v114, v117);
  sub_2B000();
  sub_67D4(v160);
  return v59;
}

uint64_t sub_8AB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_8AC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSAutoReplyView()
{
  result = qword_127800;
  if (!qword_127800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8AD74()
{
  sub_6C10();
  if (v0 <= 0x3F)
  {
    sub_8AE18();
    if (v1 <= 0x3F)
    {
      sub_6CFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8AE18()
{
  if (!qword_127810)
  {
    _s9ViewModelCMa_1(255);
    sub_8B3C8(&unk_127818, _s9ViewModelCMa_1);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_127810);
    }
  }
}

uint64_t sub_8AF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAutoReplyView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAutoReplyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8B10C()
{
  v1 = type metadata accessor for MSAutoReplyView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_E0C4();
  v12 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1278B0, &qword_E0FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8B338(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_127890, &qword_E0FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8B3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8B418()
{
  sub_6110(&qword_127850, &qword_E0E50);
  sub_6110(&qword_121178, &qword_DB0C0);
  sub_8B4F0();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8B4F0()
{
  result = qword_127930;
  if (!qword_127930)
  {
    sub_6110(&qword_127850, &qword_E0E50);
    sub_109A8(&qword_127938, &qword_127940, &qword_E11F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127930);
  }

  return result;
}

uint64_t sub_8B5D0()
{
  sub_66D4(&qword_127B58, &qword_E1318);
  sub_8EE10();
  return sub_D6390();
}

uint64_t sub_8B640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v59 = sub_66D4(&qword_121238, &unk_D8E20);
  v57 = *(v59 - 8);
  v3 = *(v57 + 64);
  __chkstk_darwin(v59);
  v5 = &v57 - v4;
  v63 = sub_66D4(&qword_121360, &unk_D8FE0);
  v6 = *(*(v63 - 8) + 64);
  v7 = __chkstk_darwin(v63);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v57 - v10;
  v65 = sub_66D4(&qword_127BB8, &qword_E1348);
  v11 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v13 = &v57 - v12;
  v61 = sub_66D4(&qword_127BC0, &unk_E1350);
  v14 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = &v57 - v15;
  v64 = sub_66D4(&qword_127B68, &qword_E1320);
  v16 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v62 = &v57 - v17;
  v18 = type metadata accessor for MSFolderListSelectionView();
  v19 = v18 - 8;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v22 = sub_66D4(&qword_127B78, &qword_E1328);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v27 = &v57 - v26;
  v28 = *(a1 + *(v19 + 28));
  v29 = v28[8];
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = a1;
      v31 = v28[2];
      v59 = v24;
      v32 = v25;

      sub_D54F0();

      v33 = v67;
      if (!v67)
      {
        v33 = _swiftEmptyArrayStorage;
      }

      *&v67 = v33;
      sub_8F108(v30, &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v35 = swift_allocObject();
      sub_8F28C(&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
      sub_66D4(&qword_127BC8, &qword_E1360);
      sub_66D4(&qword_127B88, &qword_E1330);
      sub_109A8(&qword_127BD0, &qword_127BC8, &qword_E1360);
      sub_8EFAC();
      sub_8F370();
      sub_D6340();
      v36 = v59;
      (*(v32 + 16))(v60, v27, v59);
      swift_storeEnumTagMultiPayload();
      sub_8EF28();
      sub_F5B8();
      v37 = v62;
      sub_D5BF0();
      sub_FBD4(v37, v13, &qword_127B68, &qword_E1320);
      swift_storeEnumTagMultiPayload();
      sub_8EE9C();
      sub_D5BF0();
      sub_FC3C(v37, &qword_127B68, &qword_E1320);
      return (*(v32 + 8))(v27, v36);
    }

    else
    {
      *&v67 = v28[7];
      *(&v67 + 1) = v29;
      sub_DFAC();

      v45 = sub_D5F50();
      v47 = v46;
      v49 = v48;
      sub_D61B0();
      v50 = sub_D5F00();
      v52 = v51;
      v54 = v53;
      v56 = v55;

      sub_F16C(v45, v47, v49 & 1);

      *v13 = v50;
      *(v13 + 1) = v52;
      v13[16] = v54 & 1;
      *(v13 + 3) = v56;
      swift_storeEnumTagMultiPayload();
      sub_8EE9C();
      return sub_D5BF0();
    }
  }

  else
  {
    sub_D5780();
    sub_D63E0();
    sub_D5930();
    (*(v57 + 32))(v9, v5, v59);
    v39 = &v9[*(v63 + 36)];
    v40 = v72;
    *(v39 + 4) = v71;
    *(v39 + 5) = v40;
    *(v39 + 6) = v73;
    v41 = v68;
    *v39 = v67;
    *(v39 + 1) = v41;
    v42 = v70;
    *(v39 + 2) = v69;
    *(v39 + 3) = v42;
    v43 = v58;
    sub_8F098(v9, v58);
    sub_FBD4(v43, v60, &qword_121360, &unk_D8FE0);
    swift_storeEnumTagMultiPayload();
    sub_8EF28();
    sub_F5B8();
    v44 = v62;
    sub_D5BF0();
    sub_FBD4(v44, v13, &qword_127B68, &qword_E1320);
    swift_storeEnumTagMultiPayload();
    sub_8EE9C();
    sub_D5BF0();
    sub_FC3C(v44, &qword_127B68, &qword_E1320);
    return sub_FC3C(v43, &qword_121360, &unk_D8FE0);
  }
}

uint64_t sub_8BE4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MSFolderListSelectionView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = a1[1];
  v21 = *a1;
  v22 = v9;
  v23 = a1[2];
  v24 = *(a1 + 6);
  sub_8F108(a2, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = v22;
  *(v11 + 16) = v21;
  *(v11 + 32) = v12;
  *(v11 + 48) = v23;
  *(v11 + 64) = v24;
  sub_8F28C(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v18 = &v21;
  v19 = a2;
  sub_8F568(&v21, v20);
  sub_66D4(&qword_127BE0, &qword_E1368);
  sub_109A8(&qword_127BE8, &qword_127BE0, &qword_E1368);
  sub_D6260();
  v13 = sub_D61A0();
  KeyPath = swift_getKeyPath();
  result = sub_66D4(&qword_127B88, &qword_E1330);
  v16 = (a3 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_8C03C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_D57E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 33))
  {
    v10 = *(a2 + *(type metadata accessor for MSFolderListSelectionView() + 20));
    v12 = *(v10 + 40);
    v11 = *(v10 + 48);
    v14 = *a1;
    v13 = a1[1];

    v12(v14, v13);

    sub_EC34(v9);
    sub_D57D0();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_8C164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_D5B40();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_66D4(&qword_127BF0, &unk_E13A0);
  return sub_8C1CC(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_8C1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v100 = a3;
  v99 = sub_66D4(&qword_127BF8, &qword_E6710);
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v99);
  v86 = &v85 - v6;
  v7 = sub_66D4(&qword_127C00, &qword_E13B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v104 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v85 - v11;
  v12 = sub_66D4(&qword_127C08, &qword_E13B8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v103 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v85 - v16);
  if (sub_90F74() < 1)
  {
    v101 = 0;
    v97 = 0;
    v96 = 0;
    v95 = 0;
    v94 = 0;
    v93 = 0;
    v92 = 0;
  }

  else
  {
    v18 = sub_D61C0();
    sub_90F74();
    sub_D63E0();
    sub_D57C0();
    v97 = v108;
    v96 = v109;
    v95 = v110;
    v94 = v111;
    v93 = v112;
    v92 = v113;
    v101 = v18;
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);

  v21 = sub_D61C0();
  v22 = (v17 + *(sub_66D4(&qword_127C10, &qword_E13C0) + 36));
  v23 = *(sub_66D4(&qword_127C18, &qword_E13C8) + 28);
  v24 = enum case for Image.Scale.large(_:);
  v25 = sub_D61E0();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v17 = v21;
  v26 = sub_D6180();
  *(v17 + *(sub_66D4(&qword_127C20, &qword_E1400) + 36)) = v26;
  sub_D63E0();
  v27 = sub_D57C0();
  v28 = (v17 + *(v12 + 36));
  v29 = v115;
  *v28 = v114;
  v28[1] = v29;
  v28[2] = v116;
  v105 = 47;
  v106 = 0xE100000000000000;
  v31 = *a1;
  v30 = *(a1 + 8);
  __chkstk_darwin(v27);
  *(&v85 - 2) = &v105;

  sub_4461C(sub_8F5F4, (&v85 - 4), v31, v30);
  v32 = v17;
  if (v33)
  {

    v34 = *(a1 + 16);
    v35 = *(a1 + 24);
  }

  else
  {
    v36 = sub_D66B0();
    sub_45BE8(v36, v31, v30);

    v34 = sub_D6670();
    v35 = v37;
  }

  v105 = v34;
  v106 = v35;
  sub_DFAC();
  v38 = sub_D5F50();
  v40 = v39;
  v42 = v41;
  v43 = *(a2 + *(type metadata accessor for MSFolderListSelectionView() + 20));
  if (v31 == *(v43 + 24) && v30 == *(v43 + 32) || (sub_D6C20() & 1) != 0)
  {
    v44 = sub_D6180();
  }

  else if (*(a1 + 33))
  {
    v44 = sub_D61A0();
  }

  else
  {
    v44 = sub_D61B0();
  }

  v105 = v44;
  v90 = sub_D5F10();
  v89 = v45;
  v88 = v46;
  v91 = v47;
  sub_F16C(v38, v40, v42 & 1);

  v48 = *(v43 + 24);
  v49 = *(v43 + 32);
  if (v31 != v48 || v30 != v49)
  {
    v50 = *(v43 + 24);
    v51 = *(v43 + 32);
    if ((sub_D6C20() & 1) == 0)
    {
      v52 = *(a1 + 32);
      v53 = 0xE500000000000000;
      v54 = 0x584F424E49;
      v55 = 0xE400000000000000;
      v56 = 1802401098;
      if (v52 != 5)
      {
        v56 = 0x73726568744FLL;
        v55 = 0xE600000000000000;
      }

      v57 = 0x80000000000E6D30;
      v58 = 0xD000000000000010;
      if (v52 != 3)
      {
        v58 = 0x65766968637241;
        v57 = 0xE700000000000000;
      }

      if (*(a1 + 32) <= 4u)
      {
        v56 = v58;
        v55 = v57;
      }

      v59 = 0xE600000000000000;
      v60 = 0x737466617244;
      if (v52 != 1)
      {
        v60 = 0x73654D20746E6553;
        v59 = 0xED00007365676173;
      }

      if (*(a1 + 32))
      {
        v54 = v60;
        v53 = v59;
      }

      if (*(a1 + 32) <= 2u)
      {
        v61 = v54;
      }

      else
      {
        v61 = v56;
      }

      if (*(a1 + 32) <= 2u)
      {
        v62 = v53;
      }

      else
      {
        v62 = v55;
      }

      if (v61 == v48 && v62 == v49)
      {
      }

      else
      {
        v63 = sub_D6C20();

        if ((v63 & 1) == 0)
        {
          v71 = 1;
          v69 = v102;
          v70 = v99;
          v68 = v98;
          goto LABEL_37;
        }
      }
    }
  }

  v64 = sub_D61C0();
  v65 = sub_D6180();
  KeyPath = swift_getKeyPath();
  v105 = v64;
  v106 = KeyPath;
  v107 = v65;
  sub_D5E20();
  sub_66D4(&qword_127C30, qword_E1410);
  sub_8F614();
  v67 = v86;
  sub_D5FC0();

  v68 = v98;
  v69 = v102;
  v70 = v99;
  (*(v98 + 32))(v102, v67, v99);
  v71 = 0;
LABEL_37:
  (*(v68 + 56))(v69, v71, 1, v70);
  v87 = v32;
  v72 = v103;
  sub_FBD4(v32, v103, &qword_127C08, &qword_E13B8);
  v73 = v104;
  sub_FBD4(v69, v104, &qword_127C00, &qword_E13B0);
  v74 = v100;
  v75 = v97;
  *v100 = v101;
  v74[1] = v75;
  v76 = v95;
  v74[2] = v96;
  v74[3] = v76;
  v77 = v93;
  v74[4] = v94;
  v74[5] = v77;
  v74[6] = v92;
  v78 = sub_66D4(&qword_127C28, &qword_E1408);
  sub_FBD4(v72, v74 + v78[12], &qword_127C08, &qword_E13B8);
  v79 = v74 + v78[16];
  v80 = v90;
  v81 = v89;
  *v79 = v90;
  *(v79 + 1) = v81;
  v82 = v88 & 1;
  v79[16] = v88 & 1;
  *(v79 + 3) = v91;
  v83 = v74 + v78[20];
  *v83 = 0;
  v83[8] = 1;
  sub_FBD4(v73, v74 + v78[24], &qword_127C00, &qword_E13B0);

  sub_166E0(v80, v81, v82);

  sub_FC3C(v69, &qword_127C00, &qword_E13B0);
  sub_FC3C(v87, &qword_127C08, &qword_E13B8);
  sub_FC3C(v73, &qword_127C00, &qword_E13B0);
  sub_F16C(v80, v81, v82);

  sub_FC3C(v72, &qword_127C08, &qword_E13B8);
}

uint64_t sub_8CBA0()
{
  v1 = sub_66D4(&qword_127B38, &qword_E1308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-v4];
  v15 = v0;
  sub_66D4(&qword_127B40, &qword_E1310);
  sub_8ED80();
  sub_D5E60();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v16._countAndFlagsBits = 2777980912;
  v16._object = 0xA400000000000000;
  v17._object = 0x80000000000E9860;
  v17._countAndFlagsBits = 0xD000000000000023;
  sub_D66D0(v17);
  v18._countAndFlagsBits = 2777980912;
  v18._object = 0xA400000000000000;
  sub_D66D0(v18);
  v13._countAndFlagsBits = 0xE000000000000000;
  v19._object = 0x80000000000E9860;
  v19._countAndFlagsBits = 0xD000000000000023;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v8.super.isa = v7;
  v9 = sub_D4E80(v19, v20, v8, v16, v13);
  v11 = v10;

  v16._countAndFlagsBits = v9;
  v16._object = v11;
  sub_109A8(&qword_127BB0, &qword_127B38, &qword_E1308);
  sub_DFAC();
  sub_D6040();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_8CDF0()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Rules - Folder List] fetch started", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  LOBYTE(v35) = 1;
  BYTE8(v35) = 0;
  LOWORD(v36) = 1;
  v37 = 0;
  *&v38 = 0;
  BYTE8(v38) = -1;
  v39 = 0;
  v40 = 0;
  LOBYTE(v41[0]) = 1;
  *(&v41[0] + 1) = &off_113DD0;
  *&v41[1] = &off_113DF8;
  BYTE8(v41[1]) = 1;
  v42 = v35;
  v43 = v36;
  *(v46 + 9) = *(v41 + 9);
  v45 = 0u;
  v46[0] = v41[0];
  v44 = v38;
  v11 = CFStringConvertEncodingToNSStringEncoding(0xA10u);
  v12 = sub_6648(v1 + 9, v1[12]);
  v13 = *(*v12 + 16);
  v14 = *(*v12 + 24);
  v34[3] = &type metadata for DalRequest;
  v34[4] = sub_468FC();
  v15 = swift_allocObject();
  v34[0] = v15;
  v16 = v45;
  v15[3] = v44;
  v15[4] = v16;
  v15[5] = v46[0];
  *(v15 + 89) = *(v46 + 9);
  v17 = v43;
  v15[1] = v42;
  v15[2] = v17;
  v18 = objc_allocWithZone(type metadata accessor for GeQSFolderListAPI());
  sub_FBD4(v34, v33, &qword_121F30, &unk_DC820);
  v19 = v13;
  v20 = v14;
  sub_8E988(&v35, v32);
  v21 = sub_46950(v13, v20, v33);

  sub_FC3C(v34, &qword_121F30, &unk_DC820);
  v22 = sub_202E0();

  v32[0] = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v45;
  *(v24 + 48) = v44;
  *(v24 + 64) = v25;
  *(v24 + 80) = v46[0];
  *(v24 + 89) = *(v46 + 9);
  v26 = v43;
  *(v24 + 16) = v42;
  *(v24 + 32) = v26;
  *(v24 + 112) = v23;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v11;
  sub_66D4(&qword_127A98, &unk_E12A8);
  sub_109A8(&qword_127AA0, &qword_127A98, &unk_E12A8);
  v29 = sub_D55D0();

  v31 = v1[19];
  v1[19] = v29;
  if (v31)
  {

    sub_D54C0();
  }

  return result;
}

uint64_t sub_8D260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = v48 - v12;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = *(a1 + 16);
    v51 = *a1;
    v52 = v15;
    v54 = *(a1 + 32);
    v53 = *(a1 + 40);
    v50 = *(a1 + 24);
    v16 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (sub_3E540())
    {
      v49 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v5, qword_137988);
      (*(v6 + 16))(v13, v19, v5);

      v20 = sub_D5320();
      v21 = sub_D68B0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v48[1] = a3;
        v23 = v22;
        v24 = swift_slowAlloc();
        v55[0] = v24;
        *v23 = 136642819;
        v25 = sub_558F0(v49, v18, v55);
        LODWORD(v49) = v21;
        v26 = v14;
        v27 = v6;
        v28 = v10;
        v29 = v25;

        *(v23 + 4) = v29;
        v10 = v28;
        v6 = v27;
        v14 = v26;
        _os_log_impl(&dword_0, v20, v49, "[Rules - Folder List] params: %{sensitive}s", v23, 0xCu);
        sub_67D4(v24);
        v16 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
      }

      else
      {
      }

      (*(v6 + 8))(v13, v5);
    }

    if (v16[91].isa != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v10, v30, v5);

    v31 = sub_D5320();
    v32 = sub_D68B0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v59._countAndFlagsBits = v34;
      *v33 = 136315138;
      v55[0] = v51;
      v55[1] = v14;
      v55[2] = v52;
      v56 = v50 & 1;
      v57 = v54;
      v58 = v53 & 1;
      sub_6780();
      v35 = sub_D6C60();
      v37 = sub_558F0(v35, v36, &v59._countAndFlagsBits);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v31, v32, "[Rules - Folder List] fetch failed: %s", v33, 0xCu);
      sub_67D4(v34);
    }

    (*(v6 + 8))(v10, v5);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v38 = result;
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v59._countAndFlagsBits = 2777980912;
      v59._object = 0xA400000000000000;
      v60._object = 0x80000000000E8950;
      v60._countAndFlagsBits = 0xD000000000000015;
      sub_D66D0(v60);
      v61._countAndFlagsBits = 2777980912;
      v61._object = 0xA400000000000000;
      sub_D66D0(v61);
      v47._countAndFlagsBits = 0xE000000000000000;
      v62._object = 0x80000000000E8950;
      v62._countAndFlagsBits = 0xD000000000000015;
      v63.value._countAndFlagsBits = 0;
      v63.value._object = 0;
      v41.super.isa = v40;
      v42 = sub_D4E80(v62, v63, v41, v59, v47);
      v44 = v43;

      v45 = *(v38 + 56);
      v46 = *(v38 + 64);
      *(v38 + 56) = v42;
      *(v38 + 64) = v44;
      sub_F2AC(v45, v46);
    }
  }

  return result;
}

uint64_t sub_8D7D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v11 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v11, v4);
    v12 = sub_D5320();
    v13 = sub_D68A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "[Rules - Folder List] fetch successful", v14, 2u);
    }

    (*(v5 + 8))(v8, v4);
    v15 = _swiftEmptyArrayStorage;
    v85 = _swiftEmptyArrayStorage;
    v64 = v10;
    sub_8E510();
    v16 = 0;
    v79 = 0x80000000000E6D30;
    do
    {
      v17 = *(&off_113DA8 + v16 + 32);
      if (v17 > 5)
      {
      }

      else
      {
        v18 = sub_D6C20();

        if ((v18 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_11C30(0, *(v15 + 2) + 1, 1);
            v15 = v84;
          }

          v21 = *(v15 + 2);
          v20 = *(v15 + 3);
          if (v21 >= v20 >> 1)
          {
            sub_11C30((v20 > 1), v21 + 1, 1);
            v15 = v84;
          }

          *(v15 + 2) = v21 + 1;
          v15[v21 + 32] = v17;
        }
      }

      ++v16;
    }

    while (v16 != 7);
    v22 = *(v15 + 2);
    if (v22)
    {
      v23 = (v15 + 32);
      v77 = "folderListPublisher";
      v78 = "MAILBOX.DISPLAYNAME.DRAFTS";
      v75 = "LAYNAME.ARCH🔥";
      v76 = "WARDTOANDMARKREAD";
      v73 = "LAYNAME.TRASH🔥";
      v74 = "MAILBOX.DISPLAYNAME.ARCH";
      v71 = "LAYNAME.JUNK🔥";
      v72 = "MAILBOX.DISPLAYNAME.JUNK";
      v69 = "LAYNAME.SENT🔥";
      v70 = "PTION.DESCRIPTOR.FROM";
      v68 = "LAYNAME.DRAFTS🔥";
      v67 = "MAILBOX.DISPLAYNAME.INBOX";
      v24 = _swiftEmptyArrayStorage;
      while (1)
      {
        v28 = *v23++;
        v27 = v28;
        if (v28 <= 2)
        {
          v82 = v23;
          v83 = v15;
          if (v27)
          {
            type metadata accessor for MAPreferencesViewProvider();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v62._countAndFlagsBits = 0xE000000000000000;
            if (v27 == 1)
            {
              v87._countAndFlagsBits = 0xD00000000000001ALL;
              v87._object = (v70 | 0x8000000000000000);
              v99._countAndFlagsBits = 0x1000000000000022;
              v99._object = (v69 | 0x8000000000000000);
              v93.value._countAndFlagsBits = 0;
              v93.value._object = 0;
              v39.super.isa = v30;
              v40 = sub_D4E80(v87, v93, v39, v99, v62);
              v80 = v41;
              v81 = v40;
              v35 = 0xE300000000000000;
              v36 = 0xE600000000000000;
              v34 = 0x737466617244;
              v37 = 6516580;
            }

            else
            {
              v90._object = (v72 | 0x8000000000000000);
              v102._object = (v71 | 0x8000000000000000);
              v90._countAndFlagsBits = 0xD000000000000018;
              v96.value._countAndFlagsBits = 0;
              v96.value._object = 0;
              v50.super.isa = v30;
              v102._countAndFlagsBits = 0x1000000000000020;
              v51 = sub_D4E80(v90, v96, v50, v102, v62);
              v80 = v52;
              v81 = v51;
              v35 = 0xEA0000000000656ELL;
              v34 = 0x73654D20746E6553;
              v36 = 0xED00007365676173;
              v37 = 0x616C707265706170;
            }
          }

          else
          {
            type metadata accessor for MAPreferencesViewProvider();
            v46 = swift_getObjCClassFromMetadata();
            v30 = [objc_opt_self() bundleForClass:v46];
            v62._countAndFlagsBits = 0xE000000000000000;
            v89._countAndFlagsBits = 0xD000000000000019;
            v89._object = (v68 | 0x8000000000000000);
            v101._countAndFlagsBits = 0x1000000000000021;
            v101._object = (v67 | 0x8000000000000000);
            v95.value._countAndFlagsBits = 0;
            v95.value._object = 0;
            v47.super.isa = v30;
            v48 = sub_D4E80(v89, v95, v47, v101, v62);
            v80 = v49;
            v81 = v48;
            v35 = 0xE400000000000000;
            v36 = 0xE500000000000000;
            v34 = 0x584F424E49;
            v37 = 2036429428;
          }

          goto LABEL_32;
        }

        if (v27 <= 4)
        {
          break;
        }

        if (v27 == 5)
        {
          v82 = v23;
          v83 = v15;
          type metadata accessor for MAPreferencesViewProvider();
          v42 = swift_getObjCClassFromMetadata();
          v30 = [objc_opt_self() bundleForClass:v42];
          v62._countAndFlagsBits = 0xE000000000000000;
          v88._object = (v74 | 0x8000000000000000);
          v100._object = (v73 | 0x8000000000000000);
          v88._countAndFlagsBits = 0xD000000000000018;
          v94.value._countAndFlagsBits = 0;
          v94.value._object = 0;
          v43.super.isa = v30;
          v100._countAndFlagsBits = 0x1000000000000020;
          v44 = sub_D4E80(v88, v94, v43, v100, v62);
          v80 = v45;
          v81 = v44;
          v35 = 0xE90000000000006ELL;
          v36 = 0xE400000000000000;
          v34 = 1802401098;
          v37 = 0x69622E6B72616D78;
LABEL_32:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_A5944(0, *(v24 + 2) + 1, 1, v24);
          }

          v57 = *(v24 + 2);
          v56 = *(v24 + 3);
          if (v57 >= v56 >> 1)
          {
            v24 = sub_A5944((v56 > 1), v57 + 1, 1, v24);
          }

          *(v24 + 2) = v57 + 1;
          v25 = &v24[56 * v57];
          *(v25 + 4) = v34;
          *(v25 + 5) = v36;
          v26 = v80;
          *(v25 + 6) = v81;
          *(v25 + 7) = v26;
          v25[64] = v27;
          v25[65] = v27 > 1;
          LOWORD(v26) = WORD2(v84);
          *(v25 + 66) = v84;
          *(v25 + 35) = v26;
          *(v25 + 9) = v37;
          *(v25 + 10) = v35;
          v85 = v24;
          v23 = v82;
          v15 = v83;
        }

        if (!--v22)
        {
          goto LABEL_36;
        }
      }

      v82 = v23;
      v83 = v15;
      type metadata accessor for MAPreferencesViewProvider();
      v29 = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass:v29];
      v62._countAndFlagsBits = 0xE000000000000000;
      if (v27 == 3)
      {
        v86._countAndFlagsBits = 0xD000000000000019;
        v86._object = (v76 | 0x8000000000000000);
        v98._countAndFlagsBits = 0x1000000000000021;
        v98._object = (v75 | 0x8000000000000000);
        v92.value._countAndFlagsBits = 0;
        v92.value._object = 0;
        v31.super.isa = v30;
        v32 = sub_D4E80(v86, v92, v31, v98, v62);
        v80 = v33;
        v81 = v32;
        v34 = 0xD000000000000010;
        v35 = 0xE500000000000000;
        v36 = v79;
        v37 = 0x6873617274;
      }

      else
      {
        v91._object = (v78 | 0x8000000000000000);
        v103._object = (v77 | 0x8000000000000000);
        v91._countAndFlagsBits = 0xD000000000000018;
        v97.value._countAndFlagsBits = 0;
        v97.value._object = 0;
        v53.super.isa = v30;
        v103._countAndFlagsBits = 0x1000000000000020;
        v54 = sub_D4E80(v91, v97, v53, v103, v62);
        v80 = v55;
        v81 = v54;
        v35 = 0xEA0000000000786FLL;
        v36 = 0xE700000000000000;
        v34 = 0x65766968637241;
        v37 = 0x6265766968637261;
      }

      goto LABEL_32;
    }

LABEL_36:

    v58 = v64;

    sub_8E8C0(v65, v66, v58, &v85);

    v59 = v58[2];
    v84 = v85;

    sub_D5500();
    v60 = v58[7];
    v61 = v58[8];
    *(v58 + 7) = xmmword_DBAE0;
    sub_F2AC(v60, v61);
  }

  return result;
}

uint64_t sub_8E174(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = sub_D6630();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_D6620();
  v15 = sub_D6600();
  v17 = v16;
  result = (*(v9 + 8))(v12, v8);
  if (v17 >> 60 != 15)
  {
    v19 = objc_allocWithZone(NSString);
    sub_26558(v15, v17);
    isa = sub_D4F30().super.isa;
    v21 = [v19 initWithData:isa encoding:a2];

    sub_8EAD0(v15, v17);
    if (!v21)
    {
      return sub_8EAD0(v15, v17);
    }

    v33 = 0;
    v34 = 0;
    sub_D65E0();

    v22 = v34;
    if (!v34)
    {
      return sub_8EAD0(v15, v17);
    }

    v23 = v33;
    swift_beginAccess();
    v24 = *(a3 + 112);

    v25 = sub_8E418(v23, v22, v24);

    if (v25)
    {

      return sub_8EAD0(v15, v17);
    }

    v26 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_A5944(0, *(v26 + 2) + 1, 1, v26);
      *a4 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      *a4 = sub_A5944((v28 > 1), v29 + 1, 1, v26);
    }

    result = sub_8EAD0(v15, v17);
    v30 = *a4;
    *(v30 + 2) = v29 + 1;
    v31 = &v30[56 * v29];
    *(v31 + 4) = v23;
    *(v31 + 5) = v22;
    *(v31 + 6) = v23;
    *(v31 + 7) = v22;
    *(v31 + 32) = 262;
    *(v31 + 9) = 0x7265646C6F66;
    *(v31 + 10) = 0xE600000000000000;
  }

  return result;
}

uint64_t sub_8E418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_D6CB0();
  sub_D6680();
  v7 = sub_D6CE0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_D6C20() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_8E510()
{
  swift_beginAccess();
  sub_45294(&v6, 0x584F424E49, 0xE500000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_45294(&v6, 1802401098, 0xE400000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_45294(&v6, 0x65766968637241, 0xE700000000000000);
  swift_endAccess();

  swift_beginAccess();
  sub_45294(&v6, 0x737466617244, 0xE600000000000000);
  swift_endAccess();

  v1 = v0[15];
  v2 = v0[16];
  swift_beginAccess();

  sub_45294(&v6, v1, v2);
  swift_endAccess();

  v3 = v0[17];
  v4 = v0[18];
  swift_beginAccess();

  sub_45294(&v6, v3, v4);
  swift_endAccess();
}

void *sub_8E6C8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  sub_F2AC(v0[7], v0[8]);
  sub_67D4(v0 + 9);
  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  v7 = v0[19];

  return v0;
}

uint64_t sub_8E728()
{
  sub_8E6C8();

  return _swift_deallocClassInstance(v0, 160, 7);
}

uint64_t sub_8E780()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_8E7E0(*(v0 + 40), *(v0 + 48), v1);
  }

  sub_8E7E0(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_8E7E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_8E7F8(uint64_t a1)
{
  v2 = sub_D61E0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D5950();
}

uint64_t sub_8E8C0(uint64_t result, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 56); ; i += 4)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12 = *(i - 2);
      v13[0] = *(i - 3);
      v13[1] = v12;
      v13[2] = v10;
      v13[3] = v11;

      sub_8E174(v13, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_8E9E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8EA1C()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_8E7E0(*(v0 + 40), *(v0 + 48), v1);
  }

  sub_8E7E0(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_8EA90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8EAD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26628(a1, a2);
  }

  return a1;
}

uint64_t sub_8EAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
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

uint64_t sub_8EBD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
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

uint64_t type metadata accessor for MSFolderListSelectionView()
{
  result = qword_127B00;
  if (!qword_127B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8ECE4()
{
  sub_6C10();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MSFolderListSelectionView.ViewModel();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_8ED80()
{
  result = qword_127B48;
  if (!qword_127B48)
  {
    sub_6110(&qword_127B40, &qword_E1310);
    sub_8EE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B48);
  }

  return result;
}

unint64_t sub_8EE10()
{
  result = qword_127B50;
  if (!qword_127B50)
  {
    sub_6110(&qword_127B58, &qword_E1318);
    sub_8EE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B50);
  }

  return result;
}

unint64_t sub_8EE9C()
{
  result = qword_127B60;
  if (!qword_127B60)
  {
    sub_6110(&qword_127B68, &qword_E1320);
    sub_8EF28();
    sub_F5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B60);
  }

  return result;
}

unint64_t sub_8EF28()
{
  result = qword_127B70;
  if (!qword_127B70)
  {
    sub_6110(&qword_127B78, &qword_E1328);
    sub_8EFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B70);
  }

  return result;
}

unint64_t sub_8EFAC()
{
  result = qword_127B80;
  if (!qword_127B80)
  {
    sub_6110(&qword_127B88, &qword_E1330);
    sub_109A8(&qword_127B90, &qword_127B98, &qword_E1338);
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B80);
  }

  return result;
}

uint64_t sub_8F098(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_121360, &unk_D8FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSFolderListSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F16C()
{
  v1 = type metadata accessor for MSFolderListSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8F28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSFolderListSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F2F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MSFolderListSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_8BE4C(a1, v6, a2);
}

unint64_t sub_8F370()
{
  result = qword_127BD8;
  if (!qword_127BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127BD8);
  }

  return result;
}

uint64_t sub_8F3C4()
{
  v1 = type metadata accessor for MSFolderListSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 8);

  v8 = &v0[v3];
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_D57E0();
    (*(*(v9 - 8) + 8))(&v0[v3], v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = *&v8[*(v1 + 20)];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8F4FC()
{
  v1 = *(type metadata accessor for MSFolderListSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return sub_8C03C((v0 + 16), v2);
}

unint64_t sub_8F614()
{
  result = qword_127C38;
  if (!qword_127C38)
  {
    sub_6110(&qword_127C30, qword_E1410);
    sub_109A8(&qword_127BA0, &qword_127BA8, &qword_E1340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127C38);
  }

  return result;
}

uint64_t sub_8F6CC()
{
  sub_6110(&qword_127B38, &qword_E1308);
  sub_109A8(&qword_127BB0, &qword_127B38, &qword_E1308);
  sub_DFAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8F7F0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_8F8FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_8F988()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_8FA0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title);
  v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title + 8);

  return v1;
}

uint64_t sub_8FA48()
{
  v1 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName);
  v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName + 8);

  return v1;
}

uint64_t sub_8FA84()
{
  v1 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName);
  v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName + 8);

  return v1;
}

double sub_8FAD4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_8FB60(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *v4 = a1[1];
  *&v4[9] = *(a1 + 25);

  return sub_D5580();
}

uint64_t sub_8FBDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t *sub_8FC50@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = objc_allocWithZone(NSRegularExpression);
  v7 = sub_9099C(0xD000000000000030, 0x80000000000E9A40, 1);
  v8 = sub_D6690();
  v9 = sub_D65C0();
  v10 = [v7 matchesInString:v9 options:1 range:{0, v8}];

  sub_90BCC();
  v11 = sub_D67A0();

  v12 = v11 >> 62 ? sub_D6AB0() : *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));

  if (v12 >= 2)
  {
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v19._object = 2777980912;
    v20._object = 0x80000000000E9A80;
    v20._countAndFlagsBits = 0xD000000000000015;
    sub_D66D0(v20);
    v21._countAndFlagsBits = 2777980912;
    v21._object = 0xA400000000000000;
    sub_D66D0(v21);
    v24._countAndFlagsBits = 2777980912;
    v19._countAndFlagsBits = 0xE000000000000000;
    v22._object = 0x80000000000E9A80;
    v22._countAndFlagsBits = 0xD000000000000015;
    v23.value._countAndFlagsBits = 0;
    v23.value._object = 0;
    v15.super.isa = v14;
    v24._object = 0xA400000000000000;
    v16 = sub_D4E80(v22, v23, v15, v24, v19);
    v18 = v17;

    *a2 = v16;
    a2[1] = v18;
  }

  else
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_8FE60(uint64_t result)
{
  if (!*(result + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_D5580();
  }

  return result;
}

uint64_t sub_8FF3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v1 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v1 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v2 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sharedPreference);
    sub_D54F0();
    if (v14 == 1)
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {

      v3 = v15;
      v4 = v16;
    }

    sub_461BC(v13, v14);
    sub_D54F0();
    if (v14 == 1)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {

      v9 = v17;
      v10 = v18;
    }

    sub_461BC(v13, v14);
    v8 = sub_46210(v13, v14, v3, v4, v9, v10);
  }

  else
  {
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v19._object = 0x80000000000E9AA0;
    v19._countAndFlagsBits = 0xD000000000000019;
    sub_D66D0(v19);
    v20._countAndFlagsBits = 2777980912;
    v20._object = 0xA400000000000000;
    sub_D66D0(v20);
    v23._countAndFlagsBits = 2777980912;
    v12._countAndFlagsBits = 0xE000000000000000;
    v21._object = 0x80000000000E9AA0;
    v21._countAndFlagsBits = 0xD000000000000019;
    v22.value._countAndFlagsBits = 0;
    v22.value._object = 0;
    v7.super.isa = v6;
    v23._object = 0xA400000000000000;
    v8 = sub_D4E80(v21, v22, v7, v23, v12);
  }

  return v8;
}

uint64_t sub_901D0()
{
  v1 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__ruleName;
  v2 = sub_66D4(&qword_121948, &unk_DC5C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__selectedAction;
  v5 = sub_66D4(&qword_128210, &qword_E1538);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__selectedCondition;
  v7 = sub_66D4(&qword_128218, &unk_E1540);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__conditionValue, v2);
  v3(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__actionEmailValue, v2);
  v3(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__actionFolderValue, v2);
  v3(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__conditionGreyText, v2);
  v8 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__enableActionFolderMenu;
  v9 = sub_66D4(&qword_121068, &qword_DBEE0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__enableActionEmailInput, v9);
  v11 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__loadingState;
  v12 = sub_66D4(&qword_124208, &unk_E1550);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v10(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__isUpdating, v9);
  v10(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__isDoneDisabled, v9);
  v13(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__state, v12);
  v13(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__folderState, v12);
  v14 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_title + 8);

  v15 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderList);

  v16 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sharedPreference);

  v17 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_trashFolderName + 8);

  v18 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_sentFolderName + 8);

  v19 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_onDone + 8);

  sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository));
  v20 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__error;
  v21 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel__inlineErrorMessage;
  v23 = sub_66D4(&qword_124830, &qword_E1560);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_cancellables);

  v25 = *(v0 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_folderListPublisher);

  return v0;
}

uint64_t sub_905C4()
{
  sub_901D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MSRuleBaseViewModel()
{
  result = qword_127CF0;
  if (!qword_127CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_90670()
{
  sub_116AC(319, &qword_121638);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_116AC(319, &qword_127D00);
    if (v4 <= 0x3F)
    {
      v16 = *(v3 - 8) + 64;
      sub_116AC(319, &qword_127D08);
      if (v6 <= 0x3F)
      {
        v17 = *(v5 - 8) + 64;
        sub_116AC(319, &qword_120ED8);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_116AC(319, &qword_123F08);
          if (v11 <= 0x3F)
          {
            v18 = *(v10 - 8) + 64;
            sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
            if (v13 <= 0x3F)
            {
              v19 = *(v12 - 8) + 64;
              sub_6158(319, &unk_127D10, &qword_124838, &qword_E1490);
              if (v15 <= 0x3F)
              {
                v20 = *(v14 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_9095C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MSRuleBaseViewModel();
  result = sub_D54D0();
  *a1 = result;
  return result;
}

id sub_9099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D65C0();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_D4EA0();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_90A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_90AF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

unint64_t sub_90BCC()
{
  result = qword_128208;
  if (!qword_128208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128208);
  }

  return result;
}

double sub_90C18@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_90C98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

BOOL sub_90D1C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v13 = objc_allocWithZone(NSRegularExpression);
    v15 = sub_9099C(0xD000000000000030, 0x80000000000E9A40, 1);
    v16 = sub_D6690();
    v17 = sub_D65C0();
    v18 = [v15 matchesInString:v17 options:1 range:{0, v16}];

    sub_90BCC();
    v19 = sub_D67A0();

    if (v19 >> 62)
    {
      v20 = sub_D6AB0();
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    }

    if (v20 >= 2)
    {
      v14 = 0;
    }

    else if ((a1 & 0xF9) != 0)
    {
      v14 = 1;
    }

    else if ((a1 & 2) != 0)
    {
      v14 = sub_2A17C(a4, a5);
    }

    else
    {
      v21 = HIBYTE(a7) & 0xF;
      if ((a7 & 0x2000000000000000) == 0)
      {
        v21 = a6 & 0xFFFFFFFFFFFFLL;
      }

      v14 = v21 != 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return (v14 & 1) == 0;
}

uint64_t sub_90F74()
{
  v0[1];
  v7 = *v0;

  v1._countAndFlagsBits = sub_D66E0();
  for (i = v1._object; v1._object; i = v1._object)
  {
    if (v1._countAndFlagsBits == 47 && i == 0xE100000000000000 || (countAndFlagsBits = v1._countAndFlagsBits, v4 = sub_D6C20(), v1._countAndFlagsBits = countAndFlagsBits, (v4 & 1) != 0))
    {
      v1._object = i;
      sub_D66C0(v1);
    }

    v1._countAndFlagsBits = sub_D66E0();
  }

  v5 = sub_D6690();

  return v5;
}

uint64_t sub_91064(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_128468, &qword_E1E20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_94EF0();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v25[15] = 0;
  sub_D6BC0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v25[14] = 1;
  sub_D6BC0();
  v15 = v3[4];
  v16 = v3[5];
  v25[13] = 2;
  sub_D6BC0();
  v17 = v3[6];
  v18 = v3[7];
  v25[12] = 3;
  sub_D6BC0();
  v19 = v3[8];
  v20 = v3[9];
  v25[11] = 4;
  sub_D6B80();
  v21 = v3[10];
  v22 = v3[11];
  v25[10] = 5;
  sub_D6B80();
  v24 = v3[12];
  v25[9] = 6;
  sub_D6BE0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_91284()
{
  v1 = *v0;
  v2 = 0x6449656C7572;
  v3 = 0x656D614E656C7572;
  if (v1 != 5)
  {
    v3 = 0x75716553656C7572;
  }

  v4 = 0x6E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x746567726174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x786966657270;
  if (v1 != 1)
  {
    v5 = 2036625250;
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

uint64_t sub_91350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_93DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_91384(uint64_t a1)
{
  v2 = sub_94EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_913C0(uint64_t a1)
{
  v2 = sub_94EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_913FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_93FFC(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_91474@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_91480()
{
  v1 = *v0;
  v2 = v0[1];
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_914CC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_D6680();
}

Swift::Int sub_914D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_9156C(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_128538, &qword_E2448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_958A4();
  sub_D6D00();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_D6BC0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_D6BC0();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_D6BC0();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  sub_D6B80();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  sub_D6B80();
  v22 = v3[10];
  v23 = *(v3 + 88);
  v24[10] = 5;
  sub_D6BA0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_91770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = sub_66D4(&qword_128448, &qword_E1E10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_6648(a1, a1[3]);
  sub_94DFC();
  sub_D6D00();
  v17 = 0;
  sub_D6BC0();
  if (!v5)
  {
    v16 = 1;
    sub_D6BA0();
  }

  return (*(v8 + 8))(v11, v7);
}

BOOL sub_91910(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_93C84(v11, v13);
}

uint64_t sub_9197C()
{
  v1 = *v0;
  v2 = 0x786966657270;
  v3 = 0x746567726174;
  v4 = 0x656D614E656C7572;
  if (v1 != 4)
  {
    v4 = 0x75716553656C7572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2036625250;
  if (v1 != 1)
  {
    v5 = 0x6E6F69746361;
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

uint64_t sub_91A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_94558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_91A54(uint64_t a1)
{
  v2 = sub_958A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_91A90(uint64_t a1)
{
  v2 = sub_958A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_91ACC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_9474C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_91B38()
{
  if (*v0)
  {
    result = 0x75716553656C7572;
  }

  else
  {
    result = 0x6449656C7572;
  }

  *v0;
  return result;
}

uint64_t sub_91B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449656C7572 && a2 == 0xE600000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x75716553656C7572 && a2 == 0xEC00000065636E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

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

uint64_t sub_91C54(uint64_t a1)
{
  v2 = sub_94DFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_91C90(uint64_t a1)
{
  v2 = sub_94DFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_91CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_94C18(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_91D28()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x6F6974617265706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_91D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

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

uint64_t sub_91E44(uint64_t a1)
{
  v2 = sub_93B34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_91E80(uint64_t a1)
{
  v2 = sub_93B34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_91EBC()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 49, 7);
}

uint64_t sub_91F18(void *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_128488, &qword_E1E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_93B34();
  sub_D6D00();
  LOBYTE(v14) = *(v3 + 16);
  v17 = 0;
  sub_9500C();
  sub_D6BF0();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v14 = *(v3 + 24);
    v15 = v11;
    v16 = v12;
    v17 = 1;
    sub_95060();
    sub_D6BF0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_920BC(uint64_t *a1)
{
  v4 = sub_66D4(&qword_1283F0, &qword_E1DF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_93B34();
  sub_D6CF0();
  if (v2)
  {
    type metadata accessor for MailRuleBatchRequestUnit();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_93B88();
    sub_D6B70();
    *(v1 + 16) = v13;
    v16 = 1;
    sub_93BDC();
    sub_D6B70();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
    v12 = v15;
    *(v1 + 24) = v13;
    *(v1 + 40) = v11;
    *(v1 + 48) = v12;
  }

  sub_67D4(a1);
  return v1;
}

uint64_t sub_92328@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
}

Swift::Int sub_92338()
{
  v1 = *v0;
  sub_D6CB0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_92380()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  return sub_D6680();
}

Swift::Int sub_9238C()
{
  sub_D6CB0();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_923D0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(*a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_D6C20();
  }
}

uint64_t sub_923FC(uint64_t a1)
{
  v2 = sub_93C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_92438(uint64_t a1)
{
  v2 = sub_93C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_92474()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_924D0(void *a1)
{
  v2 = v1;
  v4 = sub_66D4(&qword_128470, &qword_E1E28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_93C30();
  sub_D6D00();
  swift_beginAccess();
  v11 = *(v2 + 16);
  sub_66D4(&qword_128420, &qword_E1E00);
  sub_94F44(&qword_128478, &qword_128480);
  sub_D6BF0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_9267C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_926C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_92738(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_92764(uint64_t a1, int a2)
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

uint64_t sub_927AC(uint64_t result, int a2, int a3)
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

unint64_t sub_92814()
{
  result = qword_1283D0;
  if (!qword_1283D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1283D0);
  }

  return result;
}

uint64_t sub_9286C(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_66D4(&qword_128410, &qword_E1DF8);
  v15[0] = *(v5 - 8);
  v6 = *(v15[0] + 64);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v9 = (v1 + 16);
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_93C30();
  sub_D6CF0();
  if (v2)
  {
  }

  else
  {
    v11 = v15[0];
    sub_66D4(&qword_128420, &qword_E1E00);
    sub_94F44(&qword_128428, &qword_128430);
    sub_D6B70();
    (*(v11 + 8))(v8, v5);
    v12 = v15[5];
    swift_beginAccess();
    v13 = *v9;
    *v9 = v12;
  }

  sub_67D4(a1);
  return v3;
}

uint64_t sub_92AD0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_92B64(char *a1, char *a2)
{
  if (*&aCreate_1[8 * *a1] == *&aCreate_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_D6C20();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_92BCC()
{
  v1 = *v0;
  sub_D6CB0();
  v2 = *&aCreate_1[8 * v1];
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_92C28()
{
  v1 = *&aCreate_1[8 * *v0];
  sub_D6680();
}

Swift::Int sub_92C68()
{
  v1 = *v0;
  sub_D6CB0();
  v2 = *&aCreate_1[8 * v1];
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_92CC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_94E50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_92D6C(void *a1, char a2)
{
  v4 = sub_66D4(&qword_128518, &qword_E2438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_6648(a1, a1[3]);
  sub_95754();
  sub_D6D00();
  v11[15] = a2 & 1;
  sub_957FC();
  sub_D6BF0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_92F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_92FA0(uint64_t a1)
{
  v2 = sub_95754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_92FDC(uint64_t a1)
{
  v2 = sub_95754();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_93018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_955E4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_93064(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4552554C494146;
  }

  else
  {
    v2 = 0x53534543435553;
  }

  if (*a2)
  {
    v3 = 0x4552554C494146;
  }

  else
  {
    v3 = 0x53534543435553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_D6C20();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_930EC()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_93164()
{
  *v0;
  sub_D6680();
}

Swift::Int sub_931C0()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_93234@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113EA0;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_93294(uint64_t *a1@<X8>)
{
  v2 = 0x53534543435553;
  if (*v1)
  {
    v2 = 0x4552554C494146;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_93390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449656C7572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_93414(uint64_t a1)
{
  v2 = sub_95850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_93450(uint64_t a1)
{
  v2 = sub_95850();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9348C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_66D4(&qword_128550, &qword_E2458);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_95850();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v11 = sub_D6B40();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_67D4(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_93608(void *a1)
{
  v3 = sub_66D4(&qword_128528, &qword_E2440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_95850();
  sub_D6D00();
  sub_D6BC0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_93744()
{
  v1 = *v0;
  v2 = v0[1];
  sub_D6680();
  v3 = v0[2];
  v4 = v0[3];
  sub_D6680();
  *(v0 + 32);
  *(v0 + 32);
  sub_D6680();

  sub_D6CD0(*(v0 + 33) & 1);
  v5 = v0[5];
  v6 = v0[6];

  return sub_D6680();
}

Swift::Int sub_93890()
{
  sub_D6CB0();
  sub_93744();
  return sub_D6CE0();
}

Swift::Int sub_938D4()
{
  sub_D6CB0();
  sub_93744();
  return sub_D6CE0();
}

uint64_t sub_93910(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_D6C20() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_D6C20() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_81AD4(v4, v8);
  result = 0;
  if ((v12 & 1) != 0 && ((v5 ^ v9) & 1) == 0)
  {
    if (v14 == v10 && v15 == v11)
    {
      return 1;
    }

    else
    {

      return sub_D6C20();
    }
  }

  return result;
}

unint64_t sub_93A54()
{
  result = qword_1283D8;
  if (!qword_1283D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1283D8);
  }

  return result;
}

unint64_t sub_93AAC()
{
  result = qword_1283E0;
  if (!qword_1283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1283E0);
  }

  return result;
}

unint64_t sub_93B34()
{
  result = qword_1283F8;
  if (!qword_1283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1283F8);
  }

  return result;
}

unint64_t sub_93B88()
{
  result = qword_128400;
  if (!qword_128400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128400);
  }

  return result;
}

unint64_t sub_93BDC()
{
  result = qword_128408;
  if (!qword_128408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128408);
  }

  return result;
}

unint64_t sub_93C30()
{
  result = qword_128418;
  if (!qword_128418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128418);
  }

  return result;
}

BOOL sub_93C84(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_D6C20() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_D6C20() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_D6C20() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_D6C20() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[9];
  v7 = a2[9];
  if (v6)
  {
    if (!v7 || (a1[8] != a2[8] || v6 != v7) && (sub_D6C20() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[11];
  v9 = a2[11];
  if (v8)
  {
    if (v9 && (a1[10] == a2[10] && v8 == v9 || (sub_D6C20() & 1) != 0))
    {
      return a1[12] == a2[12];
    }
  }

  else if (!v9)
  {
    return a1[12] == a2[12];
  }

  return 0;
}

uint64_t sub_93DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C7572 && a2 == 0xE600000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966657270 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E656C7572 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x75716553656C7572 && a2 == 0xEC00000065636E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_93FFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_128458, &qword_E1E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_94EF0();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = sub_D6B40();
  v37 = v12;
  LOBYTE(v45[0]) = 1;
  *&v36 = sub_D6B40();
  *(&v36 + 1) = v13;
  LOBYTE(v45[0]) = 2;
  v34 = sub_D6B40();
  v15 = v14;
  LOBYTE(v45[0]) = 3;
  v16 = sub_D6B40();
  v35 = v17;
  v30 = v16;
  LOBYTE(v45[0]) = 4;
  v33 = 0;
  v29 = sub_D6B00();
  v32 = v18;
  LOBYTE(v45[0]) = 5;
  v28 = sub_D6B00();
  v31 = v19;
  v46 = 6;
  v20 = sub_D6B60();
  (*(v6 + 8))(v9, v5);
  *&v38 = v11;
  v21 = v37;
  *(&v38 + 1) = v37;
  v39 = v36;
  v22 = *(&v36 + 1);
  *&v40 = v34;
  *(&v40 + 1) = v15;
  *&v41 = v30;
  v23 = v35;
  *(&v41 + 1) = v35;
  *&v42 = v29;
  *(&v42 + 1) = v32;
  *&v43 = v28;
  *(&v43 + 1) = v31;
  v44 = v20;
  sub_26A60(&v38, v45);
  sub_67D4(a1);
  v45[0] = v11;
  v45[1] = v21;
  v45[2] = v36;
  v45[3] = v22;
  v45[4] = v34;
  v45[5] = v15;
  v45[6] = v30;
  v45[7] = v23;
  v45[8] = v29;
  v45[9] = v32;
  v45[10] = v28;
  v45[11] = v31;
  v45[12] = v20;
  result = sub_26ABC(v45);
  v25 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v25;
  *(a2 + 96) = v44;
  v26 = v39;
  *a2 = v38;
  *(a2 + 16) = v26;
  v27 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v27;
  return result;
}

uint64_t sub_94558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E656C7572 && a2 == 0xE800000000000000 || (sub_D6C20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x75716553656C7572 && a2 == 0xEC00000065636E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_D6C20();

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

uint64_t sub_9474C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_66D4(&qword_128548, &qword_E2450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_958A4();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  LOBYTE(v43[0]) = 0;
  v11 = sub_D6B40();
  v13 = v12;
  LOBYTE(v43[0]) = 1;
  v35 = sub_D6B40();
  v37 = v14;
  LOBYTE(v43[0]) = 2;
  v15 = sub_D6B40();
  v36 = v16;
  v31 = v15;
  LOBYTE(v43[0]) = 3;
  v34 = 0;
  v30 = sub_D6B00();
  v33 = v17;
  LOBYTE(v43[0]) = 4;
  v29 = sub_D6B00();
  v32 = v18;
  v46 = 5;
  v19 = sub_D6B20();
  v21 = v20;
  v22 = *(v6 + 8);
  v34 = v19;
  v22(v9, v5);
  v21 &= 1u;
  v45 = v21;
  *&v38 = v11;
  *(&v38 + 1) = v13;
  *&v39 = v35;
  v23 = v37;
  *(&v39 + 1) = v37;
  *&v40 = v31;
  v24 = v36;
  *(&v40 + 1) = v36;
  *&v41 = v30;
  v25 = v33;
  *(&v41 + 1) = v33;
  *v42 = v29;
  *&v42[8] = v32;
  *&v42[16] = v34;
  v42[24] = v21;
  sub_958F8(&v38, v43);
  sub_67D4(a1);
  v43[0] = v11;
  v43[1] = v13;
  v43[2] = v35;
  v43[3] = v23;
  v43[4] = v31;
  v43[5] = v24;
  v43[6] = v30;
  v43[7] = v25;
  v43[8] = v29;
  v43[9] = v32;
  v43[10] = v34;
  v44 = v21;
  result = sub_95930(v43);
  v27 = v41;
  a2[2] = v40;
  a2[3] = v27;
  a2[4] = *v42;
  *(a2 + 73) = *&v42[9];
  v28 = v39;
  *a2 = v38;
  a2[1] = v28;
  return result;
}

uint64_t sub_94C18(uint64_t *a1)
{
  v3 = sub_66D4(&qword_128438, &qword_E1E08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_6648(a1, a1[3]);
  sub_94DFC();
  sub_D6CF0();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_D6B40();
    v11 = 1;
    sub_D6B20();
    (*(v4 + 8))(v7, v3);
  }

  sub_67D4(a1);
  return v8;
}

unint64_t sub_94DFC()
{
  result = qword_128440;
  if (!qword_128440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128440);
  }

  return result;
}

uint64_t sub_94E50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113E38;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_94E9C()
{
  result = qword_128450;
  if (!qword_128450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128450);
  }

  return result;
}

unint64_t sub_94EF0()
{
  result = qword_128460;
  if (!qword_128460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128460);
  }

  return result;
}

uint64_t sub_94F44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_128420, &qword_E1E00);
    sub_94FCC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_94FCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MailRuleBatchRequestUnit();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_9500C()
{
  result = qword_128490;
  if (!qword_128490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128490);
  }

  return result;
}

unint64_t sub_95060()
{
  result = qword_128498;
  if (!qword_128498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128498);
  }

  return result;
}

uint64_t sub_950B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_950FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_951C8()
{
  result = qword_1284A0;
  if (!qword_1284A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284A0);
  }

  return result;
}

unint64_t sub_95220()
{
  result = qword_1284A8;
  if (!qword_1284A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284A8);
  }

  return result;
}

unint64_t sub_95278()
{
  result = qword_1284B0;
  if (!qword_1284B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284B0);
  }

  return result;
}

unint64_t sub_952D0()
{
  result = qword_1284B8;
  if (!qword_1284B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284B8);
  }

  return result;
}

unint64_t sub_95328()
{
  result = qword_1284C0;
  if (!qword_1284C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284C0);
  }

  return result;
}

unint64_t sub_95380()
{
  result = qword_1284C8;
  if (!qword_1284C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284C8);
  }

  return result;
}

unint64_t sub_953D8()
{
  result = qword_1284D0;
  if (!qword_1284D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284D0);
  }

  return result;
}

unint64_t sub_95430()
{
  result = qword_1284D8;
  if (!qword_1284D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284D8);
  }

  return result;
}

unint64_t sub_95488()
{
  result = qword_1284E0;
  if (!qword_1284E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284E0);
  }

  return result;
}

unint64_t sub_954E0()
{
  result = qword_1284E8;
  if (!qword_1284E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284E8);
  }

  return result;
}

unint64_t sub_95538()
{
  result = qword_1284F0;
  if (!qword_1284F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284F0);
  }

  return result;
}

unint64_t sub_95590()
{
  result = qword_1284F8;
  if (!qword_1284F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1284F8);
  }

  return result;
}

void *sub_955E4(uint64_t *a1)
{
  v3 = sub_66D4(&qword_128500, &qword_E2430);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_6648(a1, a1[3]);
  sub_95754();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_957A8();
    sub_D6B70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_67D4(a1);
  }

  return v9;
}

unint64_t sub_95754()
{
  result = qword_128508;
  if (!qword_128508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128508);
  }

  return result;
}

unint64_t sub_957A8()
{
  result = qword_128510;
  if (!qword_128510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128510);
  }

  return result;
}

unint64_t sub_957FC()
{
  result = qword_128520;
  if (!qword_128520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128520);
  }

  return result;
}

unint64_t sub_95850()
{
  result = qword_128530;
  if (!qword_128530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128530);
  }

  return result;
}

unint64_t sub_958A4()
{
  result = qword_128540;
  if (!qword_128540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128540);
  }

  return result;
}

unint64_t sub_959A4()
{
  result = qword_128558;
  if (!qword_128558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128558);
  }

  return result;
}

unint64_t sub_959FC()
{
  result = qword_128560;
  if (!qword_128560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128560);
  }

  return result;
}

unint64_t sub_95A54()
{
  result = qword_128568;
  if (!qword_128568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128568);
  }

  return result;
}

unint64_t sub_95AAC()
{
  result = qword_128570;
  if (!qword_128570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128570);
  }

  return result;
}

unint64_t sub_95B04()
{
  result = qword_128578;
  if (!qword_128578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128578);
  }

  return result;
}

unint64_t sub_95B5C()
{
  result = qword_128580;
  if (!qword_128580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128580);
  }

  return result;
}

unint64_t sub_95BB4()
{
  result = qword_128588;
  if (!qword_128588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128588);
  }

  return result;
}

unint64_t sub_95C0C()
{
  result = qword_128590;
  if (!qword_128590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128590);
  }

  return result;
}

unint64_t sub_95C64()
{
  result = qword_128598;
  if (!qword_128598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128598);
  }

  return result;
}

unint64_t sub_95CBC()
{
  result = qword_1285A0;
  if (!qword_1285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1285A0);
  }

  return result;
}

unint64_t sub_95D10()
{
  result = qword_1285A8[0];
  if (!qword_1285A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1285A8);
  }

  return result;
}

uint64_t sub_95DAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v52 = *v2;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v51 = v4;
  v49 = v8;
  if ((v63 & 0xF9) != 0)
  {
    v48 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v9 = *(&v63 + 1);
    v48 = v63;
  }

  v47 = v9;
  v10 = v3 + qword_137AA0;
  v11 = *(v3 + qword_137AA0 + 8);
  v46 = *(v3 + qword_137AA0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5570();

  v50 = v5;
  if (v63 > 2u)
  {
    if (v63 == 3)
    {
      *(&v45 + 1) = 0xE400000000000000;
      v12 = 1346585938;
    }

    else
    {
      *(&v45 + 1) = 0xE400000000000000;
      if (v63 == 4)
      {
        v12 = 1245861203;
      }

      else
      {
        v12 = 1414744396;
      }
    }
  }

  else if (v63)
  {
    *(&v45 + 1) = 0xE200000000000000;
    if (v63 == 1)
    {
      v12 = 20308;
    }

    else
    {
      v12 = 17219;
    }
  }

  else
  {
    *(&v45 + 1) = 0xE400000000000000;
    v12 = 1297044038;
  }

  *&v45 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v13 = v63;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v14 = *&aMove_1[8 * v63];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v15 = *(v10 + 12);
  *&v58[0] = v46;
  *(&v58[0] + 1) = v11;
  v58[1] = v45;
  v58[2] = v13;
  *&v59 = v14;
  *(&v59 + 1) = 0xE400000000000000;
  *&v60 = v48;
  *(&v60 + 1) = v47;
  v61 = v63;
  v62 = v15;
  v63 = v58[0];
  v64 = v45;
  v69 = v15;
  v67 = v60;
  v68 = v61;
  v65 = v13;
  v66 = v59;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = v51;
  v17 = sub_6610(v51, qword_137988);
  v18 = v49;
  v19 = v50;
  (*(v50 + 16))(v49, v17, v16);
  v20 = sub_D5320();
  v21 = sub_D68A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "[Edit Rule] edit rule started", v22, 2u);
  }

  (*(v19 + 8))(v18, v16);
  v23 = sub_6648((v3 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository), *(v3 + OBJC_IVAR____TtC18icloudMailSettings19MSRuleBaseViewModel_repository + 24));
  v24 = *(*v23 + 16);
  v25 = *(*v23 + 24);
  v57[3] = &type metadata for MailRule;
  v57[4] = sub_468A8();
  v26 = swift_allocObject();
  v57[0] = v26;
  v27 = v68;
  *(v26 + 80) = v67;
  *(v26 + 96) = v27;
  *(v26 + 112) = v69;
  v28 = v64;
  *(v26 + 16) = v63;
  *(v26 + 32) = v28;
  v29 = v66;
  *(v26 + 48) = v65;
  *(v26 + 64) = v29;
  v30 = objc_allocWithZone(type metadata accessor for MSRuleUpdateAPI());
  sub_13E28(v57, v56);
  v31 = v24;
  v32 = v25;
  sub_26A60(v58, v55);
  v33 = sub_46884(v24, v32, v56);

  sub_13EF4(v57);
  v34 = sub_1FFF4();

  v55[0] = v34;
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = *(v52 + 1240);
  v38 = v65;
  *(v36 + 72) = v66;
  v39 = v68;
  *(v36 + 88) = v67;
  *(v36 + 104) = v39;
  v40 = v64;
  *(v36 + 24) = v63;
  *(v36 + 40) = v40;
  *(v36 + 16) = v37;
  v41 = v69;
  *(v36 + 56) = v38;
  *(v36 + 120) = v41;
  *(v36 + 128) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v53;
  *(v42 + 24) = v54;

  sub_66D4(&qword_128630, &qword_E2A08);
  sub_96EA8();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_96510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 32);
    v47 = *a1;
    v48 = v14;
    v45 = *(a1 + 40);
    v15 = *(a1 + 24);
    v46 = *(a1 + 16);
    v44 = v15;

    v16 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
    if (sub_3E740())
    {
      v17 = sub_D6550();
      v19 = v18;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v20 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v12, v20, v4);

      v21 = sub_D5320();
      v22 = sub_D68B0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v43 = v21;
        v24 = v17;
        v25 = v23;
        v26 = swift_slowAlloc();
        v50 = v26;
        *v25 = 136642819;
        v27 = sub_558F0(v24, v19, &v50);
        v28 = v13;
        v29 = v5;
        v30 = v9;
        v31 = v27;

        *(v25 + 4) = v31;
        v9 = v30;
        v5 = v29;
        v13 = v28;
        v32 = v43;
        _os_log_impl(&dword_0, v43, v22, "[Edit Rule] params: %{sensitive}s", v25, 0xCu);
        sub_67D4(v26);
        v16 = &OBJC_METACLASS___MailSettingsSpecifierProvider;
      }

      else
      {
      }

      (*(v5 + 8))(v12, v4);
    }

    if (v16[91].isa != -1)
    {
      swift_once();
    }

    v33 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v33, v4);

    v34 = sub_D5320();
    v35 = sub_D68B0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56 = v37;
      *v36 = 136315138;
      v50 = v47;
      v51 = v13;
      v52 = v46;
      LOBYTE(v53) = v44 & 1;
      v54 = v48;
      v55 = v45 & 1;
      sub_6780();
      v38 = sub_D6C60();
      v40 = sub_558F0(v38, v39, &v56);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "[Edit Rule] edit rule failed: %s", v36, 0xCu);
      sub_67D4(v37);
    }

    (*(v5 + 8))(v9, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v41 = v44 & 1;
      v42 = v45 & 1;
      swift_getKeyPath();
      swift_getKeyPath();
      v50 = v47;
      v51 = v13;
      v52 = v46;
      v53 = v41;
      v54 = v48;
      v55 = v42;
      return sub_D5580();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_96A14(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "[Edit Rule] edit rule successful", v11, 2u);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return a2(v12);
}

uint64_t sub_96BBC()
{
  v1 = (v0 + qword_137AA0);
  v2 = *(v0 + qword_137AA0 + 8);
  v3 = *(v0 + qword_137AA0 + 24);
  v4 = v1[5];
  v5 = v1[7];
  v6 = v1[9];
  v7 = v1[11];
}

uint64_t sub_96C44()
{
  v0 = sub_901D0();
  v1 = *(v0 + qword_137AA0 + 8);
  v2 = *(v0 + qword_137AA0 + 24);
  v3 = *(v0 + qword_137AA0 + 40);
  v4 = *(v0 + qword_137AA0 + 56);
  v5 = *(v0 + qword_137AA0 + 72);
  v6 = *(v0 + qword_137AA0 + 88);

  return v0;
}

uint64_t sub_96CCC()
{
  v0 = sub_96C44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_96D58()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_96DB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_96DF0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_96E68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_96EA8()
{
  result = qword_128638;
  if (!qword_128638)
  {
    sub_6110(&qword_128630, &qword_E2A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128638);
  }

  return result;
}

uint64_t sub_96F24(uint64_t a1, uint64_t a2)
{
  sub_2A5C4(a2, v26);
  v3 = v27;
  v4 = sub_38BFC(v26, v27);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v7);
  v9 = *v7;
  v10 = type metadata accessor for MSRepositoryDefault();
  v25[3] = v10;
  v25[4] = &off_1188F0;
  v25[0] = v9;
  v11 = _s11descr112941C9ViewModelCMa();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_38BFC(v25, v10);
  v16 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v19 + 16))(v18);
  v20 = *v18;
  sub_FBD4(a1, v24, &qword_125930, &unk_DFB90);
  v21 = sub_9AC48(a1, v20, v14);
  sub_67D4(v25);
  sub_67D4(v26);
  return v21;
}

uint64_t sub_97110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v54 = a2;
  v3 = sub_D5B20();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_128730, &unk_E38C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = sub_66D4(&qword_128728, &unk_E2C00);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_66D4(&qword_128718, &unk_E2BF0);
  v15 = *(v14 - 8);
  v50 = v14;
  v51 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v44 = &v43 - v17;
  v18 = sub_66D4(&qword_128710, &unk_E2BE0);
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  __chkstk_darwin(v18);
  v45 = &v43 - v20;
  v56 = a1;
  sub_66D4(&qword_128758, &qword_E2C18);
  sub_109A8(&qword_128760, &qword_128758, &qword_E2C18);
  sub_D5E60();
  v21 = &v9[*(v6 + 36)];
  *v21 = sub_98CB0;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21[2] = 0;
  v21[3] = 0;
  v21[1] = 0;
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v60._countAndFlagsBits = 2777980912;
  v60._object = 0xA400000000000000;
  v66._countAndFlagsBits = 0x524F465F4C49414DLL;
  v66._object = 0xEF474E4944524157;
  sub_D66D0(v66);
  v67._countAndFlagsBits = 2777980912;
  v67._object = 0xA400000000000000;
  sub_D66D0(v67);
  v42._countAndFlagsBits = 0xE000000000000000;
  v68._countAndFlagsBits = 0x524F465F4C49414DLL;
  v68._object = 0xEF474E4944524157;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v24.super.isa = v23;
  v25 = sub_D4E80(v68, v69, v24, v60, v42);
  v27 = v26;

  v60._countAndFlagsBits = v25;
  v60._object = v27;
  v28 = sub_9B8A4();
  v29 = sub_DFAC();
  sub_D6040();

  sub_FC3C(v9, &qword_128730, &unk_E38C0);
  v31 = v48;
  v30 = v49;
  v32 = v46;
  (*(v48 + 104))(v46, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v49);
  v60._countAndFlagsBits = v6;
  v60._object = &type metadata for String;
  *&v61 = v28;
  *(&v61 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v44;
  sub_D60D0();
  (*(v31 + 8))(v32, v30);
  (*(v47 + 8))(v13, v10);
  v35 = v43;
  v55 = v43;
  sub_66D4(&qword_128720, &unk_E38B0);
  v60._countAndFlagsBits = v10;
  v60._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_128750, &qword_128720, &unk_E38B0);
  v36 = v45;
  v37 = v50;
  sub_D6120();
  (*(v51 + 8))(v34, v37);
  v38 = *v35;
  v39 = v35[1];
  v40 = *(v35 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v60 = v57;
  v61 = v58;
  v62[0] = v59[0];
  *(v62 + 9) = *(v59 + 9);
  sub_A0CBC(&v60._countAndFlagsBits, v54);
  countAndFlagsBits = v60._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v64 = v61;
  v65[0] = v62[0];
  *(v65 + 9) = *(v62 + 9);
  sub_FC3C(&v64, &qword_120EE8, &qword_D8DD0);
  return (*(v52 + 8))(v36, v53);
}

uint64_t sub_97820@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v84 = sub_66D4(&qword_1287E0, &qword_E2DA0);
  v82 = *(v84 - 8);
  v4 = *(v82 + 64);
  __chkstk_darwin(v84);
  v76 = &v67 - v5;
  v75 = sub_66D4(&qword_1287E8, &qword_E2DA8);
  v74 = *(v75 - 8);
  v6 = *(v74 + 64);
  v7 = __chkstk_darwin(v75);
  v79 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v67 - v9;
  v10 = sub_66D4(&qword_1287F0, &unk_E2DB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v83 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v67 - v14;
  v15 = sub_66D4(&qword_1278B8, &qword_E0FD8);
  v86 = *(v15 - 8);
  v16 = v86[8];
  v17 = __chkstk_darwin(v15);
  v78 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v85 = &v67 - v20;
  __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v87 = a1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = objc_opt_self();
  v73 = ObjCClassFromMetadata;
  v24 = [v72 bundleForClass:ObjCClassFromMetadata];
  v88._countAndFlagsBits = 2777980912;
  v88._object = 0xA400000000000000;
  v92._object = 0x80000000000E9BA0;
  v92._countAndFlagsBits = 0xD000000000000016;
  sub_D66D0(v92);
  v93._countAndFlagsBits = 2777980912;
  v93._object = 0xA400000000000000;
  sub_D66D0(v93);
  v65._countAndFlagsBits = 0xE000000000000000;
  v94._object = 0x80000000000E9BA0;
  v94._countAndFlagsBits = 0xD000000000000016;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v25.super.isa = v24;
  v26 = sub_D4E80(v94, v98, v25, v88, v65);
  v28 = v27;

  v88._countAndFlagsBits = v26;
  v88._object = v28;
  v71 = sub_DFAC();
  v88._countAndFlagsBits = sub_D5F50();
  v88._object = v29;
  v89 = v30 & 1;
  v90 = v31;
  v91 = 256;
  v32 = sub_66D4(&qword_121338, &qword_DF070);
  v33 = sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_109A8(&qword_121340, &qword_121338, &qword_DF070);
  sub_4ABC8();
  v80 = v22;
  v69 = v32;
  v70 = v33;
  sub_D63A0();
  v34 = *a1;
  v35 = a1[1];
  v36 = *(a1 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v88._countAndFlagsBits) == 1)
  {
    v68 = a2;
    __chkstk_darwin(v37);
    sub_66D4(&qword_128800, &qword_E2E10);
    sub_109A8(&qword_128808, &qword_128800, &qword_E2E10);
    v38 = v77;
    v39 = sub_D6390();
    v67 = &v67;
    __chkstk_darwin(v39);
    v40 = [v72 bundleForClass:v73];
    v88._countAndFlagsBits = 2777980912;
    v88._object = 0xA400000000000000;
    v95._countAndFlagsBits = 0xD00000000000001DLL;
    v95._object = 0x80000000000E9BC0;
    sub_D66D0(v95);
    v96._countAndFlagsBits = 2777980912;
    v96._object = 0xA400000000000000;
    sub_D66D0(v96);
    v66._countAndFlagsBits = 0xE000000000000000;
    v97._countAndFlagsBits = 0xD00000000000001DLL;
    v97._object = 0x80000000000E9BC0;
    v99.value._countAndFlagsBits = 0;
    v99.value._object = 0;
    v41.super.isa = v40;
    v42 = sub_D4E80(v97, v99, v41, v88, v66);
    v44 = v43;

    v88._countAndFlagsBits = v42;
    v88._object = v44;
    v88._countAndFlagsBits = sub_D5F50();
    v88._object = v45;
    v89 = v46 & 1;
    v90 = v47;
    v91 = 256;
    sub_D63A0();
    v48 = v74;
    v49 = *(v74 + 16);
    v50 = v79;
    v51 = v75;
    v49(v79, v38, v75);
    v52 = v86[2];
    v52(v78, v85, v15);
    v53 = v76;
    v49(v76, v50, v51);
    v54 = sub_66D4(&qword_128810, &qword_E2E18);
    v55 = v78;
    v52((v53 + *(v54 + 48)), v78, v15);
    v56 = v86[1];
    v56(v85, v15);
    v57 = *(v48 + 8);
    v57(v77, v51);
    v56(v55, v15);
    v57(v79, v51);
    a2 = v68;
    v58 = v81;
    sub_9C174(v53, v81);
    (*(v82 + 56))(v58, 0, 1, v84);
  }

  else
  {
    v58 = v81;
    (*(v82 + 56))(v81, 1, 1, v84);
    v52 = v86[2];
  }

  v59 = v85;
  v60 = v80;
  v52(v85, v80, v15);
  v61 = v83;
  sub_9C0F4(v58, v83);
  v52(a2, v59, v15);
  v62 = sub_66D4(&qword_1287F8, &qword_E2E08);
  sub_9C0F4(v61, &a2[*(v62 + 48)]);
  sub_FC3C(v58, &qword_1287F0, &unk_E2DB0);
  v63 = v86[1];
  v63(v60, v15);
  sub_FC3C(v61, &qword_1287F0, &unk_E2DB0);
  return (v63)(v59, v15);
}

uint64_t sub_98194(uint64_t *a1)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._object = 2777980912;
  v10._object = 0x80000000000E9C20;
  v10._countAndFlagsBits = 0xD000000000000016;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E9C20;
  v12._countAndFlagsBits = 0xD000000000000016;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  return sub_D62D0();
}

uint64_t sub_9835C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_128818, &qword_E2E48);
  return sub_983B4(a1, a2 + *(v4 + 44));
}

uint64_t sub_983B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_66D4(&qword_122758, &unk_E2E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_66D4(&qword_121420, &qword_DA840);
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  v62 = sub_66D4(&qword_128820, &qword_E2E60);
  v64 = *(v62 - 8);
  v13 = *(v64 + 64);
  __chkstk_darwin(v62);
  v57 = &v54 - v14;
  v15 = sub_66D4(&qword_128828, &qword_E2E68);
  v16 = *(v15 - 8);
  v65 = v15;
  v66 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v58 = &v54 - v18;
  v63 = sub_66D4(&qword_128830, &qword_E2E70);
  v19 = *(v63 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v63);
  v61 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v67 = &v54 - v23;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v68._countAndFlagsBits = 2777980912;
  v68._object = 0xA400000000000000;
  v69._object = 0x80000000000E9C00;
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  sub_D66D0(v69);
  v70._countAndFlagsBits = 2777980912;
  v70._object = 0xA400000000000000;
  sub_D66D0(v70);
  v53._countAndFlagsBits = 0xE000000000000000;
  v71._object = 0x80000000000E9C00;
  v71._countAndFlagsBits = 0xD00000000000001ALL;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v26.super.isa = v25;
  v27 = sub_D4E80(v71, v72, v26, v68, v53);
  v29 = v28;

  v68._countAndFlagsBits = v27;
  v68._object = v29;
  sub_DFAC();
  v30 = sub_D5F50();
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v34 = *a1;
  v35 = a1[1];
  v36 = *(a1 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_D6400();
  v37 = sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
  v38 = v57;
  v39 = v59;
  sub_D5FF0();
  (*(v60 + 8))(v12, v39);
  sub_D5CE0();
  v40 = sub_D5CF0();
  (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
  v68._countAndFlagsBits = v39;
  v68._object = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v58;
  v43 = v62;
  sub_D60B0();
  sub_FC3C(v7, &qword_122758, &unk_E2E50);
  (*(v64 + 8))(v38, v43);
  v68._countAndFlagsBits = v43;
  v68._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v44 = v67;
  v45 = v65;
  sub_D6080();
  (*(v66 + 8))(v42, v45);
  v46 = v19[2];
  v47 = v61;
  v48 = v63;
  v46(v61, v44, v63);
  v49 = v54;
  *a2 = v30;
  *(a2 + 8) = v49;
  LOBYTE(v34) = v55 & 1;
  *(a2 + 16) = v55 & 1;
  *(a2 + 24) = v56;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v50 = sub_66D4(&qword_128838, &qword_E2EA0);
  v46((a2 + *(v50 + 64)), v47, v48);
  sub_166E0(v30, v49, v34);
  v51 = v19[1];

  v51(v67, v48);
  v51(v47, v48);
  sub_F16C(v30, v49, v34);
}

uint64_t sub_98AE8(uint64_t *a1)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._object = 2777980912;
  v10._object = 0x80000000000E9BE0;
  v10._countAndFlagsBits = 0xD000000000000016;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E9BE0;
  v12._countAndFlagsBits = 0xD000000000000016;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  return sub_D62D0();
}

uint64_t sub_98CB0()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Mail Forwarding] page viewed", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_78BC4(4u);
  v9();
}

uint64_t sub_98E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_66D4(&qword_128768, &qword_E2C48);
  v3 = *(*(v20[0] - 8) + 64);
  __chkstk_darwin(v20[0]);
  v5 = v20 - v4;
  v6 = sub_66D4(&qword_128770, &unk_E2C50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = sub_D5C80();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_66D4(&qword_1247D8, &unk_DC3D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  sub_D5C60();
  v20[8] = a1;
  sub_66D4(&qword_1247E0, &unk_E2C60);
  sub_9B97C();
  sub_D5920();
  sub_D5C70();
  v20[4] = a1;
  sub_66D4(&qword_128778, &unk_E2C80);
  sub_9BA10();
  sub_D5920();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_D5BC0();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_9916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_66D4(&qword_121280, &unk_D8E40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v37 = sub_66D4(&qword_124800, &qword_DC4F8);
  v7 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v9 = &v36 - v8;
  v10 = type metadata accessor for MailForwadingView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = sub_66D4(&qword_1247F8, &qword_DC3E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  LODWORD(v11) = *(a1 + *(v11 + 36));
  sub_9BC88(a1, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  sub_9BCF0(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  if (v11 == 1)
  {
    sub_D5190();
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    _s11descr112941C9ViewModelCMa();
    sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    LOBYTE(v21) = v39;
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v25 = &v17[*(v14 + 36)];
    *v25 = KeyPath;
    v25[1] = sub_10ACC;
    v25[2] = v24;
    v26 = &qword_1247F8;
    v27 = &qword_DC3E0;
    sub_FBD4(v17, v9, &qword_1247F8, &qword_DC3E0);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v28 = v17;
  }

  else
  {
    sub_D6260();
    v29 = *a1;
    v30 = *(a1 + 8);
    v31 = *(a1 + 16);
    _s11descr112941C9ViewModelCMa();
    sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    LOBYTE(v30) = v40;
    v32 = swift_getKeyPath();
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    v34 = &v6[*(v3 + 36)];
    *v34 = v32;
    v34[1] = sub_10ACC;
    v34[2] = v33;
    v26 = &qword_121280;
    v27 = &unk_D8E40;
    sub_FBD4(v6, v9, &qword_121280, &unk_D8E40);
    swift_storeEnumTagMultiPayload();
    sub_52658();
    sub_EB50();
    sub_D5BF0();
    v28 = v6;
  }

  return sub_FC3C(v28, v26, v27);
}

uint64_t sub_996C8(uint64_t a1)
{
  v20 = sub_D5B10();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v19 - v8);
  v10 = sub_D57E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MailForwadingView();
  sub_FBD4(a1 + *(v15 + 20), v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_D68C0();
    v17 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_D57D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_99964@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  sub_D66D0(v14);
  v15._countAndFlagsBits = 2777980912;
  v15._object = 0xA400000000000000;
  sub_D66D0(v15);
  v18._countAndFlagsBits = 2777980912;
  v13._countAndFlagsBits = 0xE000000000000000;
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v8.super.isa = v7;
  v18._object = 0xA400000000000000;
  sub_D4E80(v16, v17, v8, v18, v13);

  sub_DFAC();
  result = sub_D5F50();
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_99A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = sub_66D4(&qword_1287A0, &qword_E2CA0);
  v3 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v53 = v49 - v4;
  v64 = sub_66D4(&qword_1287B8, &qword_E2CB0);
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = v49 - v6;
  v7 = type metadata accessor for MailForwadingView();
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v55 = v10;
  v62 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_66D4(&qword_121258, &unk_D8E30);
  v11 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v52 = v49 - v12;
  v68 = sub_66D4(&qword_128790, &unk_E2C90);
  v13 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v66 = v49 - v14;
  v15 = sub_66D4(&qword_1287C0, &qword_E2CB8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v49 - v17;
  v19 = sub_66D4(&qword_121238, &unk_D8E20);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v49 - v22;
  v25 = *a1;
  v24 = *(a1 + 8);
  v26 = *(a1 + 16);
  v27 = _s11descr112941C9ViewModelCMa();
  v28 = sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  v57 = v25;
  v58 = v24;
  v59 = v26;
  v56 = v27;
  v54 = v28;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v72 == 1)
  {
    sub_D5780();
    (*(v20 + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_9BAC8();
    sub_D5BF0();
    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v49[1] = v15;
    v50 = v18;
    v51 = v19;
    v30 = *(a1 + *(v60 + 28));
    v31 = v62;
    sub_9BC88(a1, v62);
    v32 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v33 = swift_allocObject();
    if (v30 == 1)
    {
      sub_9BCF0(v31, v33 + v32);
      v34 = v52;
      sub_D5150();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v35 = v70;
      KeyPath = swift_getKeyPath();
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      v38 = (v34 + *(v63 + 36));
      *v38 = KeyPath;
      v38[1] = sub_10ACC;
      v38[2] = v37;
      v39 = &qword_121258;
      v40 = &unk_D8E30;
      sub_FBD4(v34, v65, &qword_121258, &unk_D8E30);
      swift_storeEnumTagMultiPayload();
      sub_EA20();
      sub_9BB9C();
      v41 = v66;
      sub_D5BF0();
      v42 = v34;
    }

    else
    {
      v43 = sub_9BCF0(v31, v33 + v32);
      __chkstk_darwin(v43);
      v49[-2] = a1;
      sub_66D4(&qword_1287C8, &qword_E2D10);
      sub_9BD7C();
      v44 = v53;
      sub_D6260();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v45 = v71;
      v46 = swift_getKeyPath();
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      v48 = (v44 + *(v67 + 36));
      *v48 = v46;
      v48[1] = sub_F0D0;
      v48[2] = v47;
      v39 = &qword_1287A0;
      v40 = &qword_E2CA0;
      sub_FBD4(v44, v65, &qword_1287A0, &qword_E2CA0);
      swift_storeEnumTagMultiPayload();
      sub_EA20();
      sub_9BB9C();
      v41 = v66;
      sub_D5BF0();
      v42 = v44;
    }

    sub_FC3C(v42, v39, v40);
    sub_FBD4(v41, v50, &qword_128790, &unk_E2C90);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_9BAC8();
    sub_D5BF0();
    return sub_FC3C(v41, &qword_128790, &unk_E2C90);
  }
}

uint64_t sub_9A314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for MailForwadingView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5740();
  sub_9BC88(a1, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_9BCF0(v8, v13 + v12);
  sub_B3000(a3, v13);
}

uint64_t sub_9A48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_D57E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MailForwadingView();
  v10 = a2 + *(v9 + 24);
  v11 = *(v10 + 8);
  (*v10)(a1);
  v12 = a2 + *(v9 + 20);
  sub_EC34(v8);
  sub_D57D0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_9A598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34[2] = a2;
  v3 = sub_66D4(&qword_1287D8, &unk_E2D90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v34 - v5;
  v7 = sub_66D4(&qword_121238, &unk_D8E20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v34 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  _s11descr112941C9ViewModelCMa();
  sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v35._countAndFlagsBits) == 1)
  {
    sub_D5780();
    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_D5BF0();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v35._countAndFlagsBits = 2777980912;
    v35._object = 0xA400000000000000;
    v36._countAndFlagsBits = 1162760004;
    v36._object = 0xE400000000000000;
    sub_D66D0(v36);
    v37._countAndFlagsBits = 2777980912;
    v37._object = 0xA400000000000000;
    sub_D66D0(v37);
    v33._countAndFlagsBits = 0xE000000000000000;
    v38._countAndFlagsBits = 1162760004;
    v38._object = 0xE400000000000000;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v18.super.isa = v17;
    v19 = sub_D4E80(v38, v39, v18, v35, v33);
    v21 = v20;

    v35._countAndFlagsBits = v19;
    v35._object = v21;
    sub_DFAC();
    v22 = sub_D5F50();
    v24 = v23;
    LOBYTE(v19) = v25;
    sub_D5E30();
    v26 = sub_D5E80();
    v28 = v27;
    v30 = v29;
    v34[1] = v7;
    v32 = v31;
    sub_F16C(v22, v24, v19 & 1);

    *v6 = v26;
    *(v6 + 1) = v28;
    v6[16] = v30 & 1;
    *(v6 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    return sub_D5BF0();
  }
}

uint64_t sub_9A9B8()
{
  sub_66D4(&qword_128708, &qword_E2BD8);
  sub_6110(&qword_128710, &unk_E2BE0);
  sub_6110(&qword_121178, &qword_DB0C0);
  sub_6110(&qword_128718, &unk_E2BF0);
  sub_6110(&qword_128720, &unk_E38B0);
  sub_6110(&qword_128728, &unk_E2C00);
  sub_6110(&qword_128730, &unk_E38C0);
  sub_9B8A4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_128750, &qword_128720, &unk_E38B0);
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

void *sub_9AC00@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 1)
  {
    result = sub_2A17C(result[1], result[2]);
    v3 = result ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_9AC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = sub_66D4(&qword_122F60, &unk_E2B60);
  v6 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v52 = &v48 - v7;
  v59 = sub_66D4(&qword_122F80, &qword_DFB50);
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  v9 = __chkstk_darwin(v59);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v51 = sub_66D4(&qword_128640, &qword_E2B70);
  v50 = *(v51 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v51);
  v49 = &v48 - v14;
  v56 = sub_66D4(&qword_128648, &unk_E2B78);
  v54 = *(v56 - 8);
  v15 = *(v54 + 64);
  __chkstk_darwin(v56);
  v53 = &v48 - v16;
  v17 = sub_66D4(&qword_121068, &qword_DBEE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v22 = sub_66D4(&qword_121070, &qword_DAFE0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v48 - v25;
  v64[3] = type metadata accessor for MSRepositoryDefault();
  v64[4] = &off_1188F0;
  v64[0] = a2;
  v27 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__error;
  memset(v60, 0, 41);
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  (*(v23 + 32))(a3 + v27, v26, v22);
  v28 = OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel__isUpdating;
  LOBYTE(v60[0]) = 0;
  sub_D5530();
  (*(v18 + 32))(a3 + v28, v21, v17);
  *(a3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_cancellable) = 0;
  sub_2A5C4(v64, a3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_repository);
  v29 = 0;
  v30 = a3 + OBJC_IVAR____TtCV18icloudMailSettings17MailForwadingView9ViewModel_preferences;
  *(v30 + 80) = *(a1 + 80);
  v31 = *(a1 + 16);
  *v30 = *a1;
  *(v30 + 16) = v31;
  v32 = *(a1 + 64);
  *(v30 + 48) = *(a1 + 48);
  *(v30 + 64) = v32;
  *(v30 + 32) = *(a1 + 32);
  if (*(a1 + 16) != 1)
  {
    v29 = *a1;
  }

  swift_beginAccess();
  v61 = v29 & 1;
  sub_FBD4(a1, v60, &qword_125930, &unk_DFB90);
  sub_D5530();
  swift_endAccess();
  v33 = *(a1 + 16);
  if (v33 >= 2)
  {
    v34 = *(a1 + 8);
    v35 = *(a1 + 16);
  }

  else
  {

    v34 = 0;
    v33 = 0xE000000000000000;
  }

  swift_beginAccess();
  v62 = v34;
  v63 = v33;
  sub_D5530();
  swift_endAccess();
  if (*(a1 + 16) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(a1 + 24);
  }

  swift_beginAccess();
  LOBYTE(v62) = v36 & 1;
  sub_D5530();
  swift_endAccess();
  v37 = *(a1 + 16);
  if (v37 == 1 || (v38 = *(a1 + 8), v39 = *(a1 + 16), , sub_FC3C(a1, &qword_125930, &unk_DFB90), !v37))
  {

    v38 = 0;
    v37 = 0xE000000000000000;
  }

  v40 = sub_2A17C(v38, v37);

  swift_beginAccess();
  LOBYTE(v62) = (v40 & 1) == 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_66D4(&qword_121948, &unk_DC5C0);
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
  sub_109A8(&qword_127788, &qword_122F60, &unk_E2B60);
  v41 = v49;
  v42 = v59;
  sub_D5490();
  sub_109A8(&qword_128650, &qword_128640, &qword_E2B70);
  v43 = v53;
  v44 = v51;
  sub_D55C0();
  (*(v50 + 8))(v41, v44);
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_128658, &qword_128648, &unk_E2B78);
  v45 = v56;
  sub_D5620();
  (*(v54 + 8))(v43, v45);
  v46 = v58;
  (*(v58 + 16))(v57, v12, v42);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v46 + 8))(v12, v42);
  sub_67D4(v64);
  return a3;
}

uint64_t sub_9B554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_9B634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MailForwadingView()
{
  result = qword_1286B8;
  if (!qword_1286B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9B748()
{
  sub_9B7EC();
  if (v0 <= 0x3F)
  {
    sub_6C10();
    if (v1 <= 0x3F)
    {
      sub_6CFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_9B7EC()
{
  if (!qword_1286C8)
  {
    _s11descr112941C9ViewModelCMa();
    sub_9BB54(&unk_1286D0, _s11descr112941C9ViewModelCMa);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_1286C8);
    }
  }
}

unint64_t sub_9B8A4()
{
  result = qword_128738;
  if (!qword_128738)
  {
    sub_6110(&qword_128730, &unk_E38C0);
    sub_109A8(&qword_128740, &qword_128748, &qword_E2C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128738);
  }

  return result;
}

unint64_t sub_9B97C()
{
  result = qword_1247E8;
  if (!qword_1247E8)
  {
    sub_6110(&qword_1247E0, &unk_E2C60);
    sub_52658();
    sub_EB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1247E8);
  }

  return result;
}

unint64_t sub_9BA10()
{
  result = qword_128780;
  if (!qword_128780)
  {
    sub_6110(&qword_128778, &unk_E2C80);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_9BAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128780);
  }

  return result;
}

unint64_t sub_9BAC8()
{
  result = qword_128788;
  if (!qword_128788)
  {
    sub_6110(&qword_128790, &unk_E2C90);
    sub_EA20();
    sub_9BB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128788);
  }

  return result;
}

uint64_t sub_9BB54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_9BB9C()
{
  result = qword_128798;
  if (!qword_128798)
  {
    sub_6110(&qword_1287A0, &qword_E2CA0);
    sub_109A8(&qword_1287A8, &qword_1287B0, &qword_E2CA8);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128798);
  }

  return result;
}

uint64_t sub_9BC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailForwadingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailForwadingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_9BD7C()
{
  result = qword_1287D0;
  if (!qword_1287D0)
  {
    sub_6110(&qword_1287C8, &qword_E2D10);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1287D0);
  }

  return result;
}

uint64_t sub_9BF54()
{
  v1 = type metadata accessor for MailForwadingView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_E0C4();
  v9 = *(v1 + 20);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_D57E0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_9C0F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1287F0, &unk_E2DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C174(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1287E0, &qword_E2DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_9C260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleDeleteAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleDeleteAPI()
{
  result = qword_128878;
  if (!qword_128878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9C2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2A5C4(a4, v30);
  v8 = v31;
  v9 = sub_38BFC(v30, v31);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = type metadata accessor for MSRepositoryDefault();
  v29[3] = v15;
  v29[4] = &off_1188F0;
  v29[0] = v14;
  v16 = _s9ViewModelCMa_4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = sub_38BFC(v29, v15);
  v21 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;

  v27 = sub_9EFBC(v26, a2, a3, v25, a5, v19);

  sub_67D4(v29);
  sub_67D4(v30);
  return v27;
}

uint64_t sub_9C500@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_66D4(&qword_128A68, &qword_E3010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v46 - v5;
  v7 = sub_66D4(&qword_128A70, &qword_E3018);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v50 = sub_66D4(&qword_128A78, &qword_E3020);
  v51 = *(v50 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v50);
  v48 = &v46 - v12;
  v52 = sub_66D4(&qword_128A80, &qword_E3028);
  v53 = *(v52 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v52);
  v55 = &v46 - v14;
  v56 = v1;
  sub_66D4(&qword_128A88, &qword_E3030);
  sub_109A8(&qword_128A90, &qword_128A88, &qword_E3030);
  sub_D5E60();
  sub_109A8(&qword_128A98, &qword_128A68, &qword_E3010);
  sub_D5F90();
  (*(v3 + 8))(v6, v2);
  OpaqueTypeConformance2 = v7;
  v15 = &v10[*(v7 + 36)];
  *v15 = sub_9E2F8;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15[2] = 0;
  v15[3] = 0;
  v15[1] = 0;
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v69._countAndFlagsBits = 0x5F53455341494C41;
  v69._object = 0xED0000454C544954;
  sub_D66D0(v69);
  v70._countAndFlagsBits = 2777980912;
  v70._object = 0xA400000000000000;
  sub_D66D0(v70);
  v45._countAndFlagsBits = 0xE000000000000000;
  v71._countAndFlagsBits = 0x5F53455341494C41;
  v71._object = 0xED0000454C544954;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v18.super.isa = v17;
  v19 = sub_D4E80(v71, v72, v18, v57, v45);
  v21 = v20;

  v57._countAndFlagsBits = v19;
  v57._object = v21;
  v22 = sub_9F76C();
  v23 = sub_DFAC();
  sub_D6040();

  sub_9F868(v10);
  v24 = v49;
  v25 = *v49;
  v26 = *(v49 + 8);
  v27 = *(v49 + 16);
  _s9ViewModelCMa_4();
  sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v63 = v66;
  v64 = v67;
  v65 = v68;
  sub_9F8D8(v24, &v57);
  v28 = swift_allocObject();
  v29 = v60;
  *(v28 + 48) = v59;
  *(v28 + 64) = v29;
  v30 = v62;
  *(v28 + 80) = v61;
  *(v28 + 96) = v30;
  v31 = v58;
  *(v28 + 16) = v57;
  *(v28 + 32) = v31;
  v46 = _s9ViewModelCMa_0();
  v32 = type metadata accessor for MSAddressDetailView();
  v57._countAndFlagsBits = OpaqueTypeConformance2;
  v57._object = &type metadata for String;
  *&v58 = v22;
  *(&v58 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_9F924(&qword_128AB0, _s9ViewModelCMa_0);
  v34 = sub_9F924(&qword_128AB8, type metadata accessor for MSAddressDetailView);
  v35 = v50;
  v36 = v48;
  sub_D6100();

  (*(v51 + 8))(v36, v35);
  v37 = *(v24 + 32);
  LOBYTE(v66) = *(v24 + 24);
  v67 = v37;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  sub_9F8D8(v24, &v57);
  v38 = swift_allocObject();
  v39 = v60;
  *(v38 + 48) = v59;
  *(v38 + 64) = v39;
  v40 = v62;
  *(v38 + 80) = v61;
  *(v38 + 96) = v40;
  v41 = v58;
  *(v38 + 16) = v57;
  *(v38 + 32) = v41;
  type metadata accessor for MSAddAliasView();
  v57._countAndFlagsBits = v35;
  v57._object = v46;
  *&v58 = v32;
  *(&v58 + 1) = OpaqueTypeConformance2;
  *&v59 = v33;
  *(&v59 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  sub_9F924(&qword_128AC0, type metadata accessor for MSAddAliasView);
  v42 = v52;
  v43 = v55;
  sub_D60F0();

  return (*(v53 + 8))(v43, v42);
}

uint64_t sub_9CD60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v52 = sub_66D4(&qword_128AC8, &qword_E30C0);
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  v4 = __chkstk_darwin(v52);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v47 - v6;
  v7 = sub_66D4(&qword_128AD0, &qword_E30C8);
  v49 = *(v7 - 8);
  v8 = v49;
  v9 = *(v49 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v56 = a1;
  sub_66D4(&qword_128AD8, &qword_E30D0);
  sub_109A8(&qword_128AE0, &qword_128AD8, &qword_E30D0);
  v48 = v14;
  sub_D6390();
  v55 = a1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v65._countAndFlagsBits = 0x53455341494C41;
  v65._object = 0xE700000000000000;
  sub_D66D0(v65);
  v66._countAndFlagsBits = 2777980912;
  v66._object = 0xA400000000000000;
  sub_D66D0(v66);
  v46._countAndFlagsBits = 0xE000000000000000;
  v67._countAndFlagsBits = 0x53455341494C41;
  v67._object = 0xE700000000000000;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v17.super.isa = v16;
  v18 = sub_D4E80(v67, v68, v17, v57, v46);
  v20 = v19;

  v57._countAndFlagsBits = v18;
  v57._object = v20;
  sub_DFAC();
  v61 = sub_D5F50();
  v62 = v21;
  v63 = v22 & 1;
  v64 = v23;
  v24 = *a1;
  v25 = a1[1];
  v26 = *(a1 + 16);
  _s9ViewModelCMa_4();
  sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  v27 = sub_D5740();
  v28 = *(v27 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer);
  v29 = *(v27 + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_footer + 8);

  sub_D5B60();
  v57._countAndFlagsBits = sub_D5F40();
  v57._object = v30;
  v58 = v31 & 1;
  v59 = v32;
  v60 = 256;
  sub_66D4(&qword_128AE8, &unk_E30D8);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_109A8(&qword_128AF0, &qword_128AE8, &unk_E30D8);
  sub_4ABC8();
  v33 = v54;
  sub_D6380();
  v34 = *(v8 + 16);
  v35 = v7;
  v47 = v7;
  v34(v12, v14, v7);
  v36 = v50;
  v37 = *(v50 + 16);
  v39 = v51;
  v38 = v52;
  v37(v51, v33, v52);
  v40 = v53;
  v34(v53, v12, v35);
  v41 = sub_66D4(&qword_128AF8, &unk_E30E8);
  v37(&v40[*(v41 + 48)], v39, v38);
  v42 = *(v36 + 8);
  v42(v54, v38);
  v43 = *(v49 + 8);
  v44 = v47;
  v43(v48, v47);
  v42(v39, v38);
  return (v43)(v12, v44);
}

uint64_t sub_9D304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_66D4(&qword_128B28, &qword_E3180);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v39 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = v32 - v9;
  v10 = *a1;
  v33 = *(a1 + 8);
  v34 = v10;
  v32[1] = *(a1 + 16);
  _s9ViewModelCMa_4();
  sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  object = v41._object;
  countAndFlagsBits = v41._countAndFlagsBits;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v41._countAndFlagsBits = 2777980912;
  v41._object = 0xA400000000000000;
  v47._object = 0x80000000000E9C70;
  v47._countAndFlagsBits = 0xD00000000000001BLL;
  sub_D66D0(v47);
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  sub_D66D0(v48);
  v31._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x80000000000E9C70;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v13.super.isa = v12;
  v35 = sub_D4E80(v49, v50, v13, v41, v31);
  v15 = v14;

  sub_9F8D8(a1, &v41);
  v16 = swift_allocObject();
  v17 = v44;
  *(v16 + 48) = v43;
  *(v16 + 64) = v17;
  v18 = v46;
  *(v16 + 80) = v45;
  *(v16 + 96) = v18;
  v19 = v42;
  *(v16 + 16) = v41;
  *(v16 + 32) = v19;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v40 = v41._countAndFlagsBits;
  sub_9F8D8(a1, &v41);
  v20 = swift_allocObject();
  v21 = v44;
  *(v20 + 48) = v43;
  *(v20 + 64) = v21;
  v22 = v46;
  *(v20 + 80) = v45;
  *(v20 + 96) = v22;
  v23 = v42;
  *(v20 + 16) = v41;
  *(v20 + 32) = v23;
  sub_66D4(&qword_128A60, &qword_E4D20);
  sub_109A8(&qword_128B30, &qword_128A60, &qword_E4D20);
  sub_9F9D8();
  sub_9FB94();
  v24 = v38;
  sub_D6340();
  v25 = v5[2];
  v26 = v39;
  v25(v39, v24, v4);
  v27 = object;
  *a2 = countAndFlagsBits;
  a2[1] = v27;
  a2[2] = v35;
  a2[3] = v15;
  a2[4] = sub_9FB28;
  a2[5] = v16;
  v28 = sub_66D4(&qword_128B40, &qword_E3218);
  v25(a2 + *(v28 + 48), v26, v4);
  v29 = v5[1];

  v29(v24, v4);
  v29(v26, v4);
}

uint64_t sub_9D7F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  _s9ViewModelCMa_4();
  sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  sub_D5740();
  sub_CD4C8();
}

uint64_t sub_9D894@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6 = a1[3];
  v25 = a1[2];
  v26 = v6;
  v27 = *(a1 + 8);

  v28._countAndFlagsBits = 64;
  v28._object = 0xE100000000000000;
  sub_D66D0(v28);

  sub_D66D0(v24);

  v7 = v23;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v22[0] = 2777980912;
  *(&v22[0] + 1) = 0xA400000000000000;
  v29._object = 0x80000000000E9C90;
  v29._countAndFlagsBits = 0xD000000000000014;
  sub_D66D0(v29);
  v30._countAndFlagsBits = 2777980912;
  v30._object = 0xA400000000000000;
  sub_D66D0(v30);
  v33._countAndFlagsBits = 2777980912;
  v21._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x80000000000E9C90;
  v31._countAndFlagsBits = 0xD000000000000014;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v10.super.isa = v9;
  v33._object = 0xA400000000000000;
  v11 = sub_D4E80(v31, v32, v10, v33, v21);
  v13 = v12;

  sub_9F8D8(a2, v22);
  v14 = swift_allocObject();
  v15 = v22[3];
  *(v14 + 48) = v22[2];
  *(v14 + 64) = v15;
  v16 = v22[5];
  *(v14 + 80) = v22[4];
  *(v14 + 96) = v16;
  v17 = v22[1];
  *(v14 + 16) = v22[0];
  *(v14 + 32) = v17;
  v18 = v26;
  *(v14 + 144) = v25;
  *(v14 + 160) = v18;
  *(v14 + 176) = v27;
  v19 = v24;
  *(v14 + 112) = v23;
  *(v14 + 128) = v19;
  *a3 = v7;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = sub_9FC5C;
  *(a3 + 40) = v14;
  return sub_13E98(&v23, v22);
}

uint64_t sub_9DA7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  _s9ViewModelCMa_4();
  sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  sub_D5740();
  sub_CD910(a2);
}

uint64_t sub_9DB2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = sub_66D4(&qword_121280, &unk_D8E40);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_66D4(&qword_128B00, &qword_E30F8);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v52 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v44 - v15;
  v16 = *a1;
  v50 = *(a1 + 8);
  v51 = v16;
  v49 = *(a1 + 16);
  v48 = _s9ViewModelCMa_4();
  v47 = sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  countAndFlagsBits = v57._countAndFlagsBits;
  sub_9F8D8(a1, &v57);
  v17 = swift_allocObject();
  v18 = v60;
  *(v17 + 48) = v59;
  *(v17 + 64) = v18;
  v19 = v62;
  *(v17 + 80) = v61;
  *(v17 + 96) = v19;
  v20 = v58;
  *(v17 + 16) = v57;
  *(v17 + 32) = v20;
  sub_66D4(&qword_128A58, qword_E2FB0);
  sub_109A8(&qword_128B08, &qword_128A58, qword_E2FB0);
  sub_9F9D8();
  sub_9FA2C();
  sub_D6340();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v57._countAndFlagsBits = 2777980912;
  v57._object = 0xA400000000000000;
  v63._countAndFlagsBits = 0x41494C415F444441;
  v63._object = 0xE900000000000053;
  sub_D66D0(v63);
  v64._countAndFlagsBits = 2777980912;
  v64._object = 0xA400000000000000;
  sub_D66D0(v64);
  v43._countAndFlagsBits = 0xE000000000000000;
  v65._countAndFlagsBits = 0x41494C415F444441;
  v65._object = 0xE900000000000053;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v23.super.isa = v22;
  v24 = sub_D4E80(v65, v66, v23, v57, v43);
  v26 = v25;

  countAndFlagsBits = v24;
  v56 = v26;
  sub_9F8D8(a1, &v57);
  v27 = swift_allocObject();
  v28 = v60;
  *(v27 + 48) = v59;
  *(v27 + 64) = v28;
  v29 = v62;
  *(v27 + 80) = v61;
  *(v27 + 96) = v29;
  v30 = v58;
  *(v27 + 16) = v57;
  *(v27 + 32) = v30;
  sub_DFAC();
  v31 = v9;
  v45 = v9;
  sub_D6280();
  LOBYTE(ObjCClassFromMetadata) = *(sub_D5740() + OBJC_IVAR____TtCV18icloudMailSettings15MSAddressesView9ViewModel_isAddAliasDisabled);

  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = ObjCClassFromMetadata;
  v34 = &v9[*(v4 + 44)];
  *v34 = KeyPath;
  v34[1] = sub_F0D0;
  v34[2] = v33;
  v35 = v11[2];
  v36 = v52;
  v37 = v46;
  v35(v52, v46, v10);
  v38 = v53;
  sub_FBD4(v31, v53, &qword_121280, &unk_D8E40);
  v39 = v54;
  v35(v54, v36, v10);
  v40 = sub_66D4(&qword_128B20, &qword_E3178);
  sub_FBD4(v38, &v39[*(v40 + 48)], &qword_121280, &unk_D8E40);
  sub_FC3C(v45, &qword_121280, &unk_D8E40);
  v41 = v11[1];
  v41(v37, v10);
  sub_FC3C(v38, &qword_121280, &unk_D8E40);
  return (v41)(v36, v10);
}

uint64_t sub_9E108@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  v18[0] = a1[2];
  *(v18 + 9) = *(a1 + 41);
  v6 = sub_B55C0();
  v8 = v7;
  sub_9F8D8(a2, v15);
  v9 = swift_allocObject();
  v10 = v15[3];
  v9[3] = v15[2];
  v9[4] = v10;
  v11 = v15[5];
  v9[5] = v15[4];
  v9[6] = v11;
  v12 = v15[1];
  v9[1] = v15[0];
  v9[2] = v12;
  *(v9 + 153) = *(v18 + 9);
  v13 = v18[0];
  v9[8] = v17;
  v9[9] = v13;
  v9[7] = v16;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = sub_9FB14;
  a3[5] = v9;
  return sub_5842C(&v16, v15);
}

uint64_t sub_9E1E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  _s9ViewModelCMa_4();
  sub_9F924(&qword_128AA8, _s9ViewModelCMa_4);
  sub_D5740();
  sub_CDCF0(a2);
}

uint64_t sub_9E298(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_9E2F8()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Addresses] page viewed", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_78BC4(1u);
  v9();
}

uint64_t sub_9E4A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_9E520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_9E59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_D5220();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  *a3 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for MSAddressDetailView();
  v15 = a3 + v14[6];
  LOBYTE(v24) = 0;

  sub_D6200();
  v16 = v26;
  *v15 = v25;
  *(v15 + 1) = v16;
  v17 = (a3 + v14[8]);
  v24 = 0;
  sub_D6200();
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  v19 = v14[9];
  (*(v7 + 104))(v10, enum case for Solarium.main(_:), v6);
  LOBYTE(v17) = sub_D5210();
  result = (*(v7 + 8))(v10, v6);
  *(a3 + v19) = v17 & 1;
  v21 = a3 + v14[5];
  *v21 = sub_9F9B0;
  *(v21 + 1) = v11;
  v21[16] = 0;
  v22 = (a3 + v14[7]);
  *v22 = v13;
  v22[1] = v12;
  return result;
}

uint64_t sub_9E79C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_D5220();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2A5C4(a1 + 56, v23);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  *a2 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for MSAddAliasView();
  v12 = a2 + v11[5];

  *v12 = sub_D56D0() & 1;
  *(v12 + 1) = v13;
  v12[16] = v14 & 1;
  v15 = (a2 + v11[6]);
  v22[0] = 0;
  sub_D6200();
  v16 = v22[2];
  *v15 = v22[1];
  v15[1] = v16;
  v17 = v11[9];
  (*(v5 + 104))(v8, enum case for Solarium.main(_:), v4);
  LOBYTE(v15) = sub_D5210();
  (*(v5 + 8))(v8, v4);
  *(a2 + v17) = v15 & 1;
  v18 = swift_allocObject();
  result = sub_38BDC(v23, v18 + 16);
  v20 = a2 + v11[7];
  *v20 = sub_9F9A8;
  *(v20 + 1) = v18;
  v20[16] = 0;
  v21 = (a2 + v11[8]);
  *v21 = v10;
  v21[1] = v9;
  return result;
}

uint64_t sub_9E9AC()
{
  sub_66D4(&qword_128B60, &qword_E32D0);
  sub_109A8(&qword_128B68, &qword_128B60, &qword_E32D0);
  return sub_D5810();
}

uint64_t sub_9EA60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5BB0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_128B70, &qword_E32D8);
  return sub_9EAB8(a1, a2 + *(v4 + 44));
}

uint64_t sub_9EAB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_66D4(&qword_1266A0, &qword_E32E0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v49 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v46 - v8;
  v10 = a1[1];
  v50 = *a1;
  v51 = v10;
  v11 = sub_DFAC();

  v46[1] = v11;
  v12 = sub_D5F50();
  v14 = v13;
  v16 = v15;
  v47 = v17;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v16 &= 1u;
  LOBYTE(v50) = v16;
  v52 = 0;
  v20 = &v9[*(v4 + 44)];
  v21 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v22 = enum case for Text.TruncationMode.tail(_:);
  v23 = sub_D5EF0();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v9 = v12;
  *(v9 + 1) = v14;
  v9[16] = v16;
  *(v9 + 17) = *v53;
  *(v9 + 5) = *&v53[3];
  *(v9 + 3) = v47;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = 0x3FE999999999999ALL;
  *(v9 + 6) = v19;
  *(v9 + 7) = 1;
  v9[64] = 0;
  v24 = a1[3];
  if (v24)
  {
    v50 = a1[2];
    v51 = v24;

    v25 = sub_D5F50();
    v27 = v26;
    v29 = v28;
    sub_D61B0();
    v30 = sub_D5F00();
    v32 = v31;
    v34 = v33;

    sub_F16C(v25, v27, v29 & 1);

    sub_D5E50();
    v35 = sub_D5F20();
    v37 = v36;
    LOBYTE(v27) = v38;
    v40 = v39;

    sub_F16C(v30, v32, v34 & 1);

    v41 = v27 & 1;
    sub_166E0(v35, v37, v27 & 1);
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v41 = 0;
    v40 = 0;
  }

  v42 = v49;
  sub_FBD4(v9, v49, &qword_1266A0, &qword_E32E0);
  v43 = v48;
  sub_FBD4(v42, v48, &qword_1266A0, &qword_E32E0);
  v44 = (v43 + *(sub_66D4(&qword_128B78, &qword_E3380) + 48));
  sub_A0010(v35, v37, v41, v40);
  sub_A0054(v35, v37, v41, v40);
  *v44 = v35;
  v44[1] = v37;
  v44[2] = v41;
  v44[3] = v40;
  sub_FC3C(v9, &qword_1266A0, &qword_E32E0);
  sub_A0054(v35, v37, v41, v40);
  return sub_FC3C(v42, &qword_1266A0, &qword_E32E0);
}

uint64_t sub_9EE5C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v10 = v1[1];
  v11 = v3;
  v9 = *v1;
  v12 = v9;
  v13 = v10;
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  sub_9FF94(&v12, v8);
  sub_FBD4(&v13, v8, &qword_124838, &qword_E1490);

  sub_66D4(&qword_128B48, &qword_E32C0);
  sub_109A8(&qword_128B50, &qword_128B48, &qword_E32C0);
  sub_D6260();
  v6 = sub_D5CA0();
  result = sub_66D4(&qword_128B58, &qword_E32C8);
  *(a1 + *(result + 36)) = v6;
  return result;
}