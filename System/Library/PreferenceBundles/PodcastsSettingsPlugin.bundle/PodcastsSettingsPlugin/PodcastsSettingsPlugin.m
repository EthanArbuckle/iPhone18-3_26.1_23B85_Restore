uint64_t sub_1A88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_176EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(sub_2CFC(&qword_248F0, &qword_19020) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = (&v16 - v9);
  v11 = type metadata accessor for AutomaticDownloadsSettingsSection();
  sub_3518(v1 + *(v11 + 20), v10, &qword_248F0, &qword_19020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_173AC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_17D3C();
    v15 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1C90()
{
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x800000000001C8B0;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._object = 0x800000000001C8D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_248C0, &qword_18858);
  sub_3070();
  return sub_17B3C();
}

uint64_t sub_1D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1734C();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = (__chkstk_darwin)();
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v50 - v7;
  v8 = type metadata accessor for AutomaticDownloadsSettingsSection();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_2CFC(&qword_248D0, &qword_18860);
  v54 = *(v10 - 8);
  v11 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v52 = &v50 - v12;
  v13 = sub_173AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = sub_2CFC(&qword_248D8, &qword_18868);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v55 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v53 = &v50 - v25;
  v26 = a1;
  sub_1A88(v20);
  sub_1739C();
  sub_311C(&qword_248E0, &type metadata accessor for DeviceCapabilities);
  LOBYTE(a1) = sub_17E2C();
  v27 = *(v14 + 8);
  v27(v18, v13);
  v27(v20, v13);
  if (a1)
  {
    v63._object = 0x800000000001C8F0;
    v63._countAndFlagsBits = 0xD000000000000018;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v61 = sub_1737C(v63, v64);
    v62 = v28;
    sub_31CC(v26, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_17D0C();
    v29 = sub_17CFC();
    v30 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = &protocol witness table for MainActor;
    sub_3234(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    sub_31CC(v26, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = sub_17CFC();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = &protocol witness table for MainActor;
    sub_3234(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v30);
    sub_17AEC();
    sub_34C4();
    v34 = v52;
    sub_17ADC();
    v36 = v53;
    v35 = v54;
    (*(v54 + 32))(v53, v34, v10);
    v37 = 0;
    v38 = v10;
    v39 = v35;
  }

  else
  {
    v37 = 1;
    v38 = v10;
    v36 = v53;
    v39 = v54;
  }

  (*(v39 + 56))(v36, v37, 1, v38);
  v40 = v56;
  sub_1733C();
  v41 = v55;
  sub_3518(v36, v55, &qword_248D8, &qword_18868);
  v43 = v59;
  v42 = v60;
  v44 = *(v59 + 16);
  v45 = v57;
  v44(v57, v40, v60);
  v46 = v58;
  sub_3518(v41, v58, &qword_248D8, &qword_18868);
  v47 = sub_2CFC(&qword_248E8, &unk_18870);
  v44((v46 + *(v47 + 48)), v45, v42);
  v48 = *(v43 + 8);
  v48(v40, v42);
  sub_3164(v36);
  v48(v45, v42);
  return sub_3164(v41);
}

uint64_t sub_23AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_16D14(2, 26, 0, 0))
  {
    sub_1778C();

    return sub_1761C();
  }

  else
  {
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    sub_1761C();
    sub_17DFC();
    swift_getWitnessTable();
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    return sub_1761C();
  }
}

uint64_t sub_2510(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_16D14(2, 26, 0, 0))
  {
    sub_1778C();
    sub_1761C();
  }

  else
  {
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    sub_1761C();
    sub_17DFC();
    swift_getWitnessTable();
    sub_1763C();
    swift_getWitnessTable();
    sub_1776C();
    sub_1761C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2710@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_2AD4(a3, a4, a5 & 1);
}

uint64_t sub_2770@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_16D14(2, 26, 4, 0))
  {
    v32 = a6;
    v33 = a7;
    v34 = v8;
    v31 = sub_1760C();
    v17 = *(v31 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin(v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_17E9C(17);

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      v38._countAndFlagsBits = a3;
      v38._object = a4;
      sub_17C8C(v38);
      v39._countAndFlagsBits = 58;
      v39._object = 0xE100000000000000;
      sub_17C8C(v39);
      v35 = a5;
      v40._countAndFlagsBits = sub_17F4C();
      sub_17C8C(v40);
    }

    v25 = sub_17D2C();
    v26 = *(*(v25 - 8) + 64);
    __chkstk_darwin(v25);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_175FC();
    sub_2C8C(v34, a8);
    v29 = sub_2CFC(&qword_24800, &unk_18770);
    return (*(v17 + 32))(a8 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a8 + *(sub_2CFC(&qword_24808, &qword_19010) + 36));
    v22 = *(sub_1758C() + 20);
    v23 = sub_17D2C();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;

    return sub_2C8C(v8, a8);
  }
}

uint64_t sub_2AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2AE4(uint64_t *a1)
{
  v1 = *a1;
  if (sub_16D14(2, 26, 4, 0))
  {
    sub_1760C();
  }

  else
  {
    sub_1758C();
  }

  return sub_1761C();
}

uint64_t sub_2B4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_16D14(2, 26, 4, 0))
  {
    sub_1760C();
    sub_1761C();
    sub_2C40();
  }

  else
  {
    sub_1758C();
    sub_1761C();
    sub_311C(&qword_247F0, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_2C40()
{
  result = qword_247E8;
  if (!qword_247E8)
  {
    sub_1760C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_247E8);
  }

  return result;
}

uint64_t sub_2C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_247F8, &qword_18F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2CFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2D80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2CFC(&qword_24818, "v");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2E50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2CFC(&qword_24818, "v");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AutomaticDownloadsSettingsSection()
{
  result = qword_24878;
  if (!qword_24878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2F4C()
{
  sub_35A8(319, &qword_24888, &type metadata for Bool, &type metadata accessor for AppStorage);
  if (v0 <= 0x3F)
  {
    sub_2FF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2FF4()
{
  if (!qword_24890)
  {
    sub_173AC();
    v0 = sub_1752C();
    if (!v1)
    {
      atomic_store(v0, &qword_24890);
    }
  }
}

unint64_t sub_3070()
{
  result = qword_248C8;
  if (!qword_248C8)
  {
    sub_30D4(&qword_248C0, &qword_18858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248C8);
  }

  return result;
}

uint64_t sub_30D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_311C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3164(uint64_t a1)
{
  v2 = sub_2CFC(&qword_248D8, &qword_18868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_31CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticDownloadsSettingsSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticDownloadsSettingsSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3298@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for AutomaticDownloadsSettingsSection() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  result = sub_174BC();
  *a1 = (v6 & 1) == 0;
  return result;
}

uint64_t sub_331C()
{
  v1 = (type metadata accessor for AutomaticDownloadsSettingsSection() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[7];
  sub_2CFC(&qword_248F0, &qword_19020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_173AC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3440(_BYTE *a1)
{
  v3 = *(type metadata accessor for AutomaticDownloadsSettingsSection() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v6 = (*a1 & 1) == 0;
  return sub_174CC();
}

unint64_t sub_34C4()
{
  result = qword_248F8;
  if (!qword_248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248F8);
  }

  return result;
}

uint64_t sub_3518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_35A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_35FC()
{
  result = qword_24908;
  if (!qword_24908)
  {
    sub_30D4(&qword_24910, qword_18898);
    sub_3070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24908);
  }

  return result;
}

uint64_t sub_36BC()
{
  v1._countAndFlagsBits = 0x445F454453495045;
  v1._object = 0xEE0059414C505349;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._object = 0x800000000001C9A0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_248D0, &qword_18860);
  sub_3870();
  return sub_17B3C();
}

uint64_t sub_37C0()
{
  v1._object = 0x800000000001C9C0;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_1737C(v1, v2);
  sub_174DC();
  sub_34C4();
  return sub_17ADC();
}

unint64_t sub_3870()
{
  result = qword_24918;
  if (!qword_24918)
  {
    sub_30D4(&qword_248D0, &qword_18860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24918);
  }

  return result;
}

unint64_t sub_38D8()
{
  result = qword_24920;
  if (!qword_24920)
  {
    sub_30D4(&qword_24928, qword_18970);
    sub_3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24920);
  }

  return result;
}

uint64_t sub_397C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2CFC(&qword_24818, "v");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_3A4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2CFC(&qword_24818, "v");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DownloadsSettingsSection()
{
  result = qword_24988;
  if (!qword_24988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B48()
{
  sub_3BCC();
  if (v0 <= 0x3F)
  {
    sub_2FF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3BCC()
{
  if (!qword_24888)
  {
    v0 = sub_174EC();
    if (!v1)
    {
      atomic_store(v0, &qword_24888);
    }
  }
}

uint64_t sub_3C38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_176EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CFC(&qword_248F0, &qword_19020);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for DownloadsSettingsSection();
  sub_3518(v1 + *(v12 + 24), v11, &qword_248F0, &qword_19020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_173AC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_17D3C();
    v16 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_3E40()
{
  v1._countAndFlagsBits = 0x44414F4C4E574F44;
  v1._object = 0xE900000000000053;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._object = 0x800000000001C9E0;
  v2._countAndFlagsBits = 0xD000000000000015;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_249C8, &unk_18A10);
  sub_4540();
  return sub_17B3C();
}

uint64_t sub_3F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_2CFC(&qword_248D0, &qword_18860);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v3);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v58 = &v51 - v8;
  v9 = __chkstk_darwin(v7);
  v55 = &v51 - v10;
  __chkstk_darwin(v9);
  v61 = &v51 - v11;
  v12 = type metadata accessor for CellularDownloadsPicker();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_173AC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = sub_2CFC(&qword_249D8, &qword_18A20);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v54 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v51 - v28;
  v30 = a1;
  sub_3C38(v23);
  sub_1739C();
  sub_45A4();
  LOBYTE(a1) = sub_17E2C();
  v31 = *(v17 + 8);
  v31(v21, v16);
  v31(v23, v16);
  if (a1)
  {
    *v15 = swift_getKeyPath();
    sub_2CFC(&qword_249E8, &unk_18A60);
    swift_storeEnumTagMultiPayload();
    v32 = *(v12 + 20);
    sub_17C5C();
    v33 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    *(v15 + v32) = sub_174AC();
    sub_466C(v15, v29);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v53 + 56))(v29, v34, 1, v12);
  v64._object = 0x800000000001CA00;
  v64._countAndFlagsBits = 0xD000000000000014;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v62 = sub_1737C(v64, v66);
  v63 = v35;
  v36 = *v30;
  v52 = v29;
  sub_174DC();
  sub_34C4();
  v37 = v61;
  sub_17ADC();
  v65._countAndFlagsBits = 0xD00000000000001ELL;
  v65._object = 0x800000000001CA20;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v62 = sub_1737C(v65, v67);
  v63 = v38;
  v39 = v30[1];
  sub_174DC();
  v40 = v55;
  sub_17ADC();
  v41 = v54;
  sub_3518(v29, v54, &qword_249D8, &qword_18A20);
  v42 = v56;
  v43 = v57;
  v44 = *(v56 + 16);
  v45 = v58;
  v44(v58, v37, v57);
  v46 = v59;
  v44(v59, v40, v43);
  v47 = v60;
  sub_3518(v41, v60, &qword_249D8, &qword_18A20);
  v48 = sub_2CFC(&qword_249E0, &qword_18A28);
  v44((v47 + *(v48 + 48)), v45, v43);
  v44((v47 + *(v48 + 64)), v46, v43);
  v49 = *(v42 + 8);
  v49(v40, v43);
  v49(v61, v43);
  sub_45FC(v52);
  v49(v46, v43);
  v49(v45, v43);
  return sub_45FC(v41);
}

unint64_t sub_4540()
{
  result = qword_249D0;
  if (!qword_249D0)
  {
    sub_30D4(&qword_249C8, &unk_18A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_249D0);
  }

  return result;
}

unint64_t sub_45A4()
{
  result = qword_248E0;
  if (!qword_248E0)
  {
    sub_173AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248E0);
  }

  return result;
}

uint64_t sub_45FC(uint64_t a1)
{
  v2 = sub_2CFC(&qword_249D8, &qword_18A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_466C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularDownloadsPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_46D4()
{
  result = qword_249F0;
  if (!qword_249F0)
  {
    sub_30D4(&qword_249F8, &unk_18A70);
    sub_4540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_249F0);
  }

  return result;
}

uint64_t sub_4790()
{
  v1._object = 0x800000000001CA40;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_1737C(v1, v2);
  sub_174DC();
  sub_34C4();
  return sub_17ADC();
}

uint64_t sub_4830()
{
  v1 = *v0;
  v3._countAndFlagsBits = 0x4B43414259414C50;
  v3._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1737C(v3, v5);
  v4._object = 0xEC0000005049545FLL;
  v4._countAndFlagsBits = 0x4B43414259414C50;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_1737C(v4, v6);
  sub_2CFC(&qword_248D0, &qword_18860);
  sub_3870();
  return sub_17B3C();
}

uint64_t sub_4930@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_176EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CFC(&qword_249E8, &unk_18A60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_3518(v2, &v16 - v11, &qword_249E8, &unk_18A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_6318(v12, a1);
  }

  v14 = *v12;
  sub_17D3C();
  v15 = sub_1787C();
  sub_1740C();

  sub_176DC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_4B00@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v111 = sub_1736C();
  v109 = *(v111 - 8);
  v2 = *(v109 + 64);
  __chkstk_darwin(v111);
  v108 = v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CFC(&qword_24AC0, &qword_18C60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v110 = v95 - v6;
  v113 = sub_1728C();
  v112 = *(v113 - 8);
  v7 = *(v112 + 64);
  __chkstk_darwin(v113);
  v100 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1723C();
  v132 = *(v130 - 8);
  v9 = *(v132 + 64);
  __chkstk_darwin(v130);
  v107 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_172AC();
  v131 = *(v129 - 8);
  v11 = *(v131 + 64);
  v12 = __chkstk_darwin(v129);
  v105 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = v95 - v14;
  v128 = sub_17C2C();
  v133 = *(v128 - 8);
  v15 = v133[8];
  v16 = __chkstk_darwin(v128);
  v127 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = v95 - v18;
  v99 = sub_1724C();
  v118 = *(v99 - 8);
  v19 = *(v118 + 64);
  __chkstk_darwin(v99);
  v117 = v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1777C();
  v121 = *(v21 - 8);
  v22 = *(v121 + 8);
  __chkstk_darwin(v21);
  v120 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CFC(&qword_24AC8, &qword_18C68);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = v95 - v27;
  v29 = sub_2CFC(&qword_24A88, qword_19370);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v122 = v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = v95 - v34;
  __chkstk_darwin(v33);
  v37 = v95 - v36;
  v116 = sub_177AC();
  v126 = *(v116 - 8);
  v38 = *(v126 + 8);
  __chkstk_darwin(v116);
  v125 = v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2CFC(&qword_24AD0, &qword_18C70);
  v124 = *(v114 - 8);
  v40 = *(v124 + 8);
  __chkstk_darwin(v114);
  v42 = v95 - v41;
  v98 = sub_2CFC(&qword_24AD8, &qword_18C78);
  v97 = *(v98 - 8);
  v43 = *(v97 + 64);
  __chkstk_darwin(v98);
  v115 = v95 - v44;
  v140._object = 0x800000000001CA60;
  v140._countAndFlagsBits = 0xD000000000000012;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v138 = sub_1737C(v140, v141);
  v139 = v45;
  v46 = *(v1 + *(type metadata accessor for CellularDownloadsPicker() + 20));
  sub_174DC();
  sub_2CFC(&qword_24AE0, &qword_18C80);
  sub_623C();
  sub_34C4();
  v123 = v42;
  v47 = v121;
  sub_17ABC();
  sub_4930(v37);
  (*(v47 + 13))(v35, enum case for UserInterfaceSizeClass.compact(_:), v21);
  (*(v47 + 7))(v35, 0, 1, v21);
  v48 = *(v25 + 56);
  sub_3518(v37, v28, &qword_24A88, qword_19370);
  sub_3518(v35, &v28[v48], &qword_24A88, qword_19370);
  v49 = *(v47 + 6);
  if (v49(v28, 1, v21) == 1)
  {
    sub_62B8(v35, &qword_24A88, qword_19370);
    sub_62B8(v37, &qword_24A88, qword_19370);
    v50 = v49(&v28[v48], 1, v21);
    v51 = v114;
    if (v50 == 1)
    {
      sub_62B8(v28, &qword_24A88, qword_19370);
LABEL_7:
      v52 = v116;
      goto LABEL_9;
    }

LABEL_6:
    sub_62B8(v28, &qword_24AC8, &qword_18C68);
    goto LABEL_7;
  }

  sub_3518(v28, v122, &qword_24A88, qword_19370);
  if (v49(&v28[v48], 1, v21) == 1)
  {
    sub_62B8(v35, &qword_24A88, qword_19370);
    sub_62B8(v37, &qword_24A88, qword_19370);
    (*(v47 + 1))(v122, v21);
    v51 = v114;
    goto LABEL_6;
  }

  v53 = v120;
  (*(v47 + 4))(v120, &v28[v48], v21);
  sub_63D0(&qword_24B00, &type metadata accessor for UserInterfaceSizeClass);
  v54 = v122;
  sub_17C0C();
  v55 = *(v47 + 1);
  v55(v53, v21);
  sub_62B8(v35, &qword_24A88, qword_19370);
  sub_62B8(v37, &qword_24A88, qword_19370);
  v55(v54, v21);
  sub_62B8(v28, &qword_24A88, qword_19370);
  v52 = v116;
  v51 = v114;
LABEL_9:
  v56 = v125;
  sub_1779C();
  v96 = sub_6388(&qword_24AF0, &qword_24AD0, &qword_18C70);
  v57 = v123;
  sub_1794C();
  (*(v126 + 1))(v56, v52);
  (*(v124 + 1))(v57, v51);
  v58 = v104;
  sub_17C1C();
  v59 = v106;
  sub_1729C();
  v102 = objc_opt_self();
  v60 = [v102 podcastsFoundationBundle];
  v61 = v133[2];
  v125 = (v133 + 2);
  v126 = v61;
  v62 = v128;
  (v61)(v127, v58);
  v63 = v131;
  v64 = *(v131 + 16);
  v123 = (v131 + 16);
  v124 = v64;
  v65 = v105;
  v66 = v129;
  v64(v105, v59, v129);
  v67 = [v60 bundleURL];
  v68 = v107;
  sub_1726C();

  LODWORD(v122) = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v69 = *(v132 + 104);
  v132 += 104;
  v121 = v69;
  v69(v68);
  sub_1725C();

  v119 = *(v63 + 8);
  v131 = v63 + 8;
  v119(v59, v66);
  v70 = v133[1];
  ++v133;
  v120 = v70;
  v71 = v62;
  (v70)(v58, v62);
  sub_2CFC(&qword_24AF8, &qword_18C88);
  v103 = *(v118 + 72);
  v72 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_18B30;
  v95[1] = v73;
  sub_17C1C();
  sub_1729C();
  v74 = v102;
  v75 = [v102 podcastsFoundationBundle];
  v76 = v127;
  v126(v127, v58, v71);
  v77 = v129;
  v124(v65, v59, v129);
  v78 = [v75 bundleURL];
  sub_1726C();

  (v121)(v68, v122, v130);
  sub_1725C();

  v79 = v77;
  v119(v59, v77);
  v80 = v128;
  (v120)(v58, v128);
  sub_17C1C();
  sub_1729C();
  v81 = [v74 podcastsFoundationBundle];
  v126(v76, v58, v80);
  v82 = v79;
  v124(v65, v59, v79);
  v83 = [v81 bundleURL];
  sub_1726C();

  (v121)(v68, v122, v130);
  sub_1725C();

  v119(v59, v82);
  (v120)(v58, v80);
  v84 = v109;
  v85 = v108;
  v86 = v111;
  (*(v109 + 104))(v108, enum case for PodcastsSettingsDeepLinkURLs.cellularDownloadsURL(_:), v111);
  sub_1735C();
  (*(v84 + 8))(v85, v86);
  v87 = v110;
  sub_1727C();

  v88 = v112;
  v89 = v113;
  result = (*(v112 + 48))(v87, 1, v113);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v91 = v100;
    (*(v88 + 32))(v100, v87, v89);
    v134 = v114;
    v135 = v116;
    v136 = v96;
    v137 = &protocol witness table for NavigationLinkPickerStyle;
    swift_getOpaqueTypeConformance2();
    v92 = v117;
    v93 = v98;
    v94 = v115;
    sub_1791C();

    (*(v88 + 8))(v91, v89);
    (*(v118 + 8))(v92, v99);
    return (*(v97 + 8))(v94, v93);
  }

  return result;
}

uint64_t sub_5C94()
{
  sub_2CFC(&qword_24A08, qword_18B40);
  sub_6388(&qword_24B08, &qword_24A08, qword_18B40);
  sub_63D0(&qword_24B10, type metadata accessor for MTPodcastCellularDownloadLimit);
  return sub_17B1C();
}

uint64_t sub_5DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 == 2)
  {
    v4._object = 0x800000000001CAC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4._countAndFlagsBits = 0x4120737961776C41;
    v4._object = 0xEA00000000006B73;
LABEL_7:
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    result = sub_1737C(v4, v8);
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = &_swiftEmptyArrayStorage;
    return result;
  }

  if (!v3)
  {
    v4._countAndFlagsBits = 0x4120737961776C41;
    v4._object = 0xEC000000776F6C6CLL;
    goto LABEL_7;
  }

  v7 = *a1;
  type metadata accessor for MTPodcastCellularDownloadLimit(0);
  result = sub_17F6C();
  __break(1u);
  return result;
}

uint64_t sub_5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CFC(&qword_24A10, qword_19320);
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

uint64_t sub_5FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2CFC(&qword_24A10, qword_19320);
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

uint64_t type metadata accessor for CellularDownloadsPicker()
{
  result = qword_24A70;
  if (!qword_24A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_60E8()
{
  sub_616C();
  if (v0 <= 0x3F)
  {
    sub_61D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_616C()
{
  if (!qword_24A80)
  {
    sub_30D4(&qword_24A88, qword_19370);
    v0 = sub_1752C();
    if (!v1)
    {
      atomic_store(v0, &qword_24A80);
    }
  }
}

void sub_61D0()
{
  if (!qword_24A90)
  {
    v0 = sub_174EC();
    if (!v1)
    {
      atomic_store(v0, &qword_24A90);
    }
  }
}

unint64_t sub_623C()
{
  result = qword_24AE8;
  if (!qword_24AE8)
  {
    sub_30D4(&qword_24AE0, &qword_18C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24AE8);
  }

  return result;
}

uint64_t sub_62B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2CFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24A88, qword_19370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6388(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_30D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_63D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6418()
{
  sub_30D4(&qword_24AD8, &qword_18C78);
  sub_30D4(&qword_24AD0, &qword_18C70);
  sub_177AC();
  sub_6388(&qword_24AF0, &qword_24AD0, &qword_18C70);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_6538()
{
  v1._object = 0x800000000001CAE0;
  v1._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1737C(v1, v3);
  v2._countAndFlagsBits = 0xD000000000000015;
  v2._object = 0x800000000001CB00;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1737C(v2, v4);
  sub_2CFC(&qword_24B18, &qword_18D40);
  sub_30D4(&qword_24B20, &qword_18D48);
  sub_30D4(&qword_24B28, &qword_18D50);
  sub_1770C();
  sub_6388(&qword_24B30, &qword_24B28, &qword_18D50);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_17B3C();
}

uint64_t sub_6704@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1770C();
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CFC(&qword_24B28, &qword_18D50);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = v19 - v8;
  v10 = sub_2CFC(&qword_24B20, &qword_18D48);
  v11 = *(v10 - 8);
  v21 = v10;
  v22 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v19[1] = sub_1772C();
  sub_174DC();
  sub_2CFC(&qword_24B38, &qword_18D58);
  sub_6388(&qword_24B40, &qword_24B38, &qword_18D58);
  sub_17AAC();
  sub_176FC();
  v15 = sub_6388(&qword_24B30, &qword_24B28, &qword_18D50);
  v16 = v23;
  sub_1794C();
  (*(v24 + 8))(v5, v16);
  (*(v20 + 8))(v9, v6);
  v26 = v6;
  v27 = v16;
  v28 = v15;
  v29 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  sub_1795C();
  return (*(v22 + 8))(v14, v17);
}

uint64_t sub_6A94@<X0>(char *a1@<X8>)
{
  v2 = sub_2CFC(&qword_24B48, &qword_18D60);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v23._countAndFlagsBits = 0x4552505F5458454ELL;
  v23._object = 0xE900000000000056;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  *v15 = sub_1737C(v23, v25);
  *(v15 + 1) = v16;
  v15[16] = 0;
  *(v15 + 3) = &_swiftEmptyArrayStorage;
  *(v15 + 16) = 256;
  v24._countAndFlagsBits = 0x5F44524157524F46;
  v24._object = 0xEC0000004B434142;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  *v13 = sub_1737C(v24, v26);
  *(v13 + 1) = v17;
  v13[16] = 0;
  *(v13 + 3) = &_swiftEmptyArrayStorage;
  *(v13 + 16) = 257;
  v18 = v3[2];
  v18(v10, v15, v2);
  v18(v7, v13, v2);
  v18(a1, v10, v2);
  v19 = sub_2CFC(&qword_24B50, &qword_18D68);
  v18(&a1[*(v19 + 48)], v7, v2);
  v20 = v3[1];
  v20(v13, v2);
  v20(v15, v2);
  v20(v7, v2);
  return (v20)(v10, v2);
}

unint64_t sub_6D20()
{
  result = qword_24B58;
  if (!qword_24B58)
  {
    sub_30D4(&qword_24B60, qword_18D70);
    sub_30D4(&qword_24B20, &qword_18D48);
    sub_30D4(&qword_24B28, &qword_18D50);
    sub_1770C();
    sub_6388(&qword_24B30, &qword_24B28, &qword_18D50);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24B58);
  }

  return result;
}

uint64_t type metadata accessor for GlobalSettingsHostingController()
{
  result = qword_24B70;
  if (!qword_24B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6F18(uint64_t a1)
{
  v2 = qword_24B68;
  v3 = sub_1732C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(a1 + v2) = sub_1731C();
  sub_17F2C();
  __break(1u);
}

id sub_6FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlobalSettingsHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_7074(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_7088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_70D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_7148()
{
  v0 = objc_allocWithZone(type metadata accessor for SpecifierState());

  return [v0 init];
}

uint64_t sub_7180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a1;
  v142 = a3;
  v144 = sub_2CFC(&qword_24BD8, &qword_18F00);
  v143 = *(v144 - 8);
  v4 = *(v143 + 64);
  __chkstk_darwin(v144);
  v141 = &v137 - v5;
  v186 = sub_2CFC(&qword_24BE0, &qword_18F08);
  v6 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v178 = &v137 - v7;
  v176 = sub_2CFC(&qword_24BE8, &qword_18F10);
  v8 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v177 = &v137 - v9;
  v175 = sub_2CFC(&qword_24BF0, &qword_18F18);
  v174 = *(v175 - 8);
  v10 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v137 - v11;
  v12 = sub_2CFC(&qword_247F8, &qword_18F20);
  v13 = *(v12 - 8);
  v170 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v185 = &v137 - v15;
  v166 = sub_2CFC(&qword_24BF8, &qword_18F28);
  v167 = *(v166 - 8);
  v16 = *(v167 + 64);
  __chkstk_darwin(v166);
  v156 = &v137 - v17;
  v154 = sub_2CFC(&qword_24C00, &qword_18F30);
  v157 = *(v154 - 8);
  v18 = *(v157 + 64);
  __chkstk_darwin(v154);
  v181 = &v137 - v19;
  v180 = sub_2CFC(&qword_24C08, &qword_18F38);
  v183 = *(v180 - 1);
  v20 = v183[8];
  __chkstk_darwin(v180);
  v22 = &v137 - v21;
  v182 = sub_2CFC(&qword_24C10, &qword_18F40);
  v23 = *(v182 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v182);
  v26 = &v137 - v25;
  v188 = a2;
  sub_2CFC(&qword_24C18, &qword_18F48);
  sub_6388(&qword_24C20, &qword_24C18, &qword_18F48);
  sub_178AC();
  v28 = *a2;
  v27 = a2[1];
  sub_1732C();
  sub_ACA8(&qword_24C28, &type metadata accessor for GlobalSettingsDeepLinkState);
  v184 = v27;
  sub_175DC();
  swift_getKeyPath();
  sub_175EC();

  v187 = a2;
  v29 = sub_172DC();
  v30 = sub_6388(&qword_24C30, &qword_24C10, &qword_18F40);
  v179 = sub_ACA8(&qword_24C38, &type metadata accessor for AutoDownloadPickerView);
  v31 = v182;
  sub_179CC();

  (*(v23 + 8))(v26, v31);
  v197 = *(a2 + 1);
  v198 = *(a2 + 32);
  v196 = a2[5];
  v32 = swift_allocObject();
  v149 = a2;
  v33 = *(a2 + 1);
  v32[1] = *a2;
  v32[2] = v33;
  v32[3] = *(a2 + 2);

  sub_3518(&v197, &v190, &qword_24BC8, &qword_18EF0);
  sub_3518(&v196, &v190, &qword_24BD0, &qword_18EF8);
  v190 = v31;
  v191 = v29;
  v147 = v29;
  v192 = v30;
  v193 = v179;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v148 = sub_A0A8();
  v34 = v180;
  sub_179DC();

  (v183[1])(v22, v34);
  v139 = sub_1724C();
  v138 = *(v139 - 8);
  v35 = *(v138 + 64);
  __chkstk_darwin(v139);
  v165 = v36;
  v145 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_17C2C();
  v183 = v37;
  v38 = *(v37 - 8);
  v39 = v38[8];
  __chkstk_darwin(v37);
  v172 = &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17C1C();
  v40 = sub_172AC();
  v182 = v40;
  v41 = *(v40 - 8);
  v42 = v41[8];
  __chkstk_darwin(v40);
  v43 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1729C();
  v162 = objc_opt_self();
  v171 = [v162 podcastsFoundationBundle];
  v169 = v39;
  __chkstk_darwin(v171);
  v44 = v38[2];
  v161 = v38 + 2;
  v160 = v44;
  v45 = v44(&v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v168 = v42;
  __chkstk_darwin(v45);
  v46 = v41[2];
  v159 = v41 + 2;
  v158 = v46;
  v46(v43, v43, v40);
  v47 = sub_1723C();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v155 = v50;
  v51 = &v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v171;
  v53 = [v171 bundleURL];
  sub_1726C();

  v54 = *(v48 + 104);
  v153 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v164 = v47;
  v163 = v48 + 104;
  v152 = v54;
  v54(v51);
  sub_1725C();

  v55 = v41[1];
  v171 = v41 + 1;
  v151 = v55;
  v55(v43, v182);
  v56 = v38[1];
  v57 = v172;
  v172 = (v38 + 1);
  v150 = v56;
  v56(v57, v183);
  v58 = sub_178EC();
  v60 = v59;
  LOBYTE(v53) = v61;
  v190 = v180;
  v191 = &type metadata for GlobalSettingsDeepLinkState.Destination;
  v192 = v147;
  v193 = OpaqueTypeConformance2;
  v194 = v148;
  v195 = v179;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v156;
  v64 = v154;
  v65 = v181;
  sub_1799C();
  sub_A0FC(v58, v60, v53 & 1);

  (*(v157 + 8))(v65, v64);
  v190 = v64;
  v191 = v62;
  swift_getOpaqueTypeConformance2();
  v66 = v185;
  v67 = v166;
  sub_1790C();
  (*(v167 + 8))(v63, v67);
  v68 = swift_allocObject();
  v69 = v149;
  v70 = v149[1];
  *(v68 + 1) = *v149;
  *(v68 + 2) = v70;
  *(v68 + 3) = v69[2];
  v71 = (v66 + *(v170 + 44));
  *v71 = sub_A158;
  v71[1] = v68;
  sub_17D0C();
  v71[2] = 0;
  v71[3] = 0;

  sub_3518(&v197, &v190, &qword_24BC8, &qword_18EF0);
  sub_3518(&v196, &v190, &qword_24BD0, &qword_18EF8);
  v72 = sub_17CFC();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = &protocol witness table for MainActor;
  v74 = sub_17D2C();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  __chkstk_darwin(v74);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = &v137 - v77;
  sub_17D1C();
  if (sub_16D14(2, 26, 4, 0))
  {
    v180 = sub_1760C();
    v181 = &v137;
    v179 = *(v180 - 1);
    v79 = v179[8];
    __chkstk_darwin(v180);
    v81 = &v137 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
    v190 = 0;
    v191 = 0xE000000000000000;
    sub_17E9C(17);

    v190 = 0xD00000000000003CLL;
    v191 = 0x800000000001CC90;
    v189 = 69;
    v199._countAndFlagsBits = sub_17F4C();
    sub_17C8C(v199);

    __chkstk_darwin(v82);
    (*(v75 + 16))(&v137 - v77, v78, v74);
    sub_175FC();
    (*(v75 + 8))(v78, v74);
    v83 = v173;
    sub_A3A4(v185, v173, &qword_247F8, &qword_18F20);
    v84 = sub_2CFC(&qword_24800, &unk_18770);
    (v179[4])(v83 + *(v84 + 36), v81, v180);
  }

  else
  {
    v85 = sub_2CFC(&qword_24808, &qword_19010);
    v83 = v173;
    v86 = (v173 + *(v85 + 36));
    v87 = sub_1758C();
    (*(v75 + 32))(&v86[*(v87 + 20)], &v137 - v77, v74);
    *v86 = &unk_18F88;
    *(v86 + 1) = v73;
    sub_A3A4(v185, v83, &qword_247F8, &qword_18F20);
  }

  KeyPath = swift_getKeyPath();
  v89 = v177;
  v90 = &v177[*(v176 + 36)];
  v91 = v90 + *(sub_2CFC(&qword_24C48, &qword_18FC8) + 28);
  sub_1738C();
  *v90 = KeyPath;
  (*(v174 + 32))(v89, v83, v175);
  v92 = swift_getKeyPath();
  v93 = v178;
  sub_A3A4(v89, v178, &qword_24BE8, &qword_18F10);
  v177 = &v137;
  v94 = (v93 + *(v186 + 36));
  v95 = v184;
  *v94 = v92;
  v94[1] = v95;
  v96 = __chkstk_darwin(v95);
  v185 = &v137 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = &v137;
  v98 = v169;
  __chkstk_darwin(v96);
  v99 = &v137 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);

  v100 = sub_17C1C();
  v184 = &v137;
  v101 = v168;
  __chkstk_darwin(v100);
  v102 = &v137 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1729C();
  v103 = [v162 podcastsFoundationBundle];
  v180 = &v137;
  __chkstk_darwin(v103);
  v104 = v183;
  v105 = v160(v99, v99, v183);
  v179 = &v137;
  __chkstk_darwin(v105);
  v106 = v182;
  v107 = v158(v102, v102, v182);
  __chkstk_darwin(v107);
  v109 = &v137 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = [v103 bundleURL];
  sub_1726C();

  v152(v109, v153, v164);
  sub_1725C();

  v151(v102, v106);
  v150(v99, v104);
  v111 = sub_1728C();
  v184 = &v137;
  v112 = *(v111 - 8);
  v113 = *(v112 + 64);
  __chkstk_darwin(v111);
  v115 = &v137 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2CFC(&qword_24AC0, &qword_18C60);
  v183 = &v137;
  v117 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116 - 8);
  v119 = &v137 - v118;
  v120 = sub_1736C();
  v121 = *(v120 - 8);
  v122 = *(v121 + 64);
  __chkstk_darwin(v120);
  v124 = &v137 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v121 + 104))(v124, enum case for PodcastsSettingsDeepLinkURLs.rootURL(_:), v120);
  sub_1735C();
  (*(v121 + 8))(v124, v120);
  sub_1727C();

  result = (*(v112 + 48))(v119, 1, v111);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v112 + 32))(v115, v119, v111);
    v126 = sub_A40C();
    v127 = v141;
    v128 = v185;
    v129 = v178;
    sub_1791C();
    (*(v112 + 8))(v115, v111);
    (*(v138 + 8))(v128, v139);
    sub_A7DC(v129);
    if (qword_247D0 != -1)
    {
      swift_once();
    }

    v130 = sub_1754C();
    sub_A8A8(v130, qword_262F8);
    v131 = sub_1762C();
    v132 = *(v131 - 8);
    v133 = *(v132 + 64);
    __chkstk_darwin(v131);
    (*(v132 + 16))(&v137 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0), v140, v131);
    v134 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v135 = swift_allocObject();
    (*(v132 + 32))(v135 + v134, &v137 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0), v131);
    v190 = v186;
    v191 = v126;
    swift_getOpaqueTypeConformance2();
    v136 = v144;
    sub_179EC();

    return (*(v143 + 8))(v127, v136);
  }

  return result;
}

uint64_t sub_8B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for SkipButtonsPickersSection();
  v4 = *(v3 - 8);
  v67 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v75 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = (&v58 - v8);
  v9 = type metadata accessor for AutomaticDownloadsSettingsSection();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v74 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v58 - v14);
  v16 = type metadata accessor for DownloadsSettingsSection();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v73 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = (&v58 - v21);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v25 = *(a1 + 32);
  type metadata accessor for SpecifierState();
  sub_ACA8(&qword_24CA0, type metadata accessor for SpecifierState);
  sub_1757C();
  v26 = sub_175CC();
  v69 = v27;
  v70 = v26;
  sub_17C5C();
  v28 = objc_opt_self();
  v29 = [v28 _applePodcastsFoundationSharedUserDefaults];
  v68 = sub_1749C();
  sub_17C5C();
  v30 = [v28 _applePodcastsFoundationSharedUserDefaults];
  *v22 = sub_1749C();
  sub_17C5C();
  v31 = [v28 _applePodcastsFoundationSharedUserDefaults];
  v22[1] = sub_1749C();
  v32 = *(v17 + 32);
  *(v22 + v32) = swift_getKeyPath();
  sub_2CFC(&qword_248F0, &qword_19020);
  v64 = v22;
  swift_storeEnumTagMultiPayload();
  sub_17C5C();
  v33 = [v28 _applePodcastsFoundationSharedUserDefaults];
  *v15 = sub_1749C();
  v34 = *(v10 + 28);
  v35 = v15;
  *(v15 + v34) = swift_getKeyPath();
  v63 = v15;
  swift_storeEnumTagMultiPayload();
  sub_17C5C();
  v36 = [v28 _applePodcastsFoundationSharedUserDefaults];
  v66 = sub_1749C();
  sub_17C5C();
  v37 = [v28 _applePodcastsFoundationSharedUserDefaults];
  v65 = sub_1749C();
  KeyPath = swift_getKeyPath();
  v39 = v72;
  *v72 = KeyPath;
  sub_2CFC(&qword_249E8, &unk_18A60);
  v40 = v39;
  swift_storeEnumTagMultiPayload();
  v41 = v67;
  v42 = *(v67 + 28);
  sub_17DEC();
  sub_17C5C();
  v43 = [v28 _applePodcastsFoundationSharedUserDefaults];
  *(v40 + v42) = sub_174AC();
  v44 = *(v41 + 32);
  sub_17DEC();
  sub_17C5C();
  v45 = [v28 _applePodcastsFoundationSharedUserDefaults];
  *(v40 + v44) = sub_174AC();
  sub_17C5C();
  v46 = [v28 _applePodcastsFoundationSharedUserDefaults];
  v67 = sub_1749C();
  v76 = 0;
  sub_17A4C();
  v62 = v77;
  v61 = v78;
  v76 = 0;
  sub_17A4C();
  v60 = v77;
  v59 = v78;
  v47 = v73;
  sub_ADE4(v22, v73, type metadata accessor for DownloadsSettingsSection);
  v48 = v74;
  sub_ADE4(v35, v74, type metadata accessor for AutomaticDownloadsSettingsSection);
  v49 = v75;
  sub_ADE4(v40, v75, type metadata accessor for SkipButtonsPickersSection);
  v50 = v71;
  v51 = v68;
  v52 = v69;
  *v71 = v70;
  v50[1] = v52;
  v50[2] = v51;
  v53 = sub_2CFC(&qword_24CA8, &unk_19060);
  sub_ADE4(v47, v50 + v53[16], type metadata accessor for DownloadsSettingsSection);
  sub_ADE4(v48, v50 + v53[20], type metadata accessor for AutomaticDownloadsSettingsSection);
  v54 = v65;
  *(v50 + v53[24]) = v66;
  *(v50 + v53[28]) = v54;
  sub_ADE4(v49, v50 + v53[32], type metadata accessor for SkipButtonsPickersSection);
  *(v50 + v53[36]) = v67;
  v55 = v50 + v53[40];
  *v55 = v62;
  *(v55 + 1) = v61;
  v55[16] = v60;
  *(v55 + 3) = v59;

  v56 = v52;

  sub_AE4C(v72, type metadata accessor for SkipButtonsPickersSection);
  sub_AE4C(v63, type metadata accessor for AutomaticDownloadsSettingsSection);
  sub_AE4C(v64, type metadata accessor for DownloadsSettingsSection);

  sub_AE4C(v75, type metadata accessor for SkipButtonsPickersSection);

  sub_AE4C(v74, type metadata accessor for AutomaticDownloadsSettingsSection);
  sub_AE4C(v73, type metadata accessor for DownloadsSettingsSection);
}

uint64_t sub_9304(uint64_t a1)
{
  v2 = sub_172BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  sub_174DC();
  (*(v3 + 104))(v6, enum case for AutoDownloadPicker.PickerType.iOSGlobalSettings(_:), v2);
  return sub_172CC();
}

uint64_t sub_9418(uint64_t a1, uint64_t a2)
{
  v3 = sub_172BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 40);
  sub_174DC();
  (*(v4 + 104))(v7, enum case for AutoDownloadPicker.PickerType.iOSGlobalSettings(_:), v3);
  return sub_172CC();
}

void sub_952C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  type metadata accessor for SpecifierState();
  sub_ACA8(&qword_24CA0, type metadata accessor for SpecifierState);
  v4 = sub_1757C();
  [v4 reloadSpecifiers];
}

uint64_t sub_95DC()
{
  sub_17D0C();
  v0[2] = sub_17CFC();
  v2 = sub_17CEC();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_9670, v2, v1);
}

uint64_t sub_9670()
{
  sub_173EC();
  *(v0 + 40) = sub_173DC();
  v1 = *(&async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe() + 1);
  v4 = (&async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe() + async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe());
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_9728;

  return v4();
}

uint64_t sub_9728()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return _swift_task_switch(sub_986C, v5, v4);
}

uint64_t sub_986C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_98CC(uint64_t a1)
{
  v2 = sub_173AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1765C();
}

uint64_t sub_9994(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v39 = a1;
  v45 = sub_17B4C();
  v48 = *(v45 - 8);
  v2 = *(v48 + 64);
  __chkstk_darwin(v45);
  v44 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_17B6C();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1762C();
  v7 = *(v35 - 8);
  v36 = *(v7 + 64);
  __chkstk_darwin(v35);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1756C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_17B8C();
  v41 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v37 = &v34 - v19;
  sub_A9D8();
  v38 = sub_17D7C();
  sub_17B7C();
  sub_17B9C();
  v20 = v14 + 8;
  v21 = *(v14 + 8);
  v40 = v20;
  v21(v18, v13);
  (*(v10 + 16))(v12, v39, v9);
  v23 = v34;
  v22 = v35;
  (*(v7 + 16))(v34, v42, v35);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = (v11 + *(v7 + 80) + v24) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v24, v12, v9);
  (*(v7 + 32))(v26 + v25, v23, v22);
  aBlock[4] = sub_AB6C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9F04;
  aBlock[3] = &unk_21798;
  v27 = _Block_copy(aBlock);

  v28 = v43;
  sub_17B5C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_ACA8(&qword_24C88, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CFC(&qword_24C90, &qword_19018);
  sub_6388(&qword_24C98, &qword_24C90, &qword_19018);
  v30 = v44;
  v29 = v45;
  sub_17E3C();
  v32 = v37;
  v31 = v38;
  sub_17D6C();
  _Block_release(v27);

  (*(v48 + 8))(v30, v29);
  (*(v46 + 8))(v28, v47);
  return (v21)(v32, v41);
}

uint64_t sub_9F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_9F48@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 5);
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  v11 = *(v1 + 32);
  v12 = v3;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 4);
  *(v5 + 56) = v3;
  *a1 = sub_A030;
  a1[1] = v5;
  sub_3518(&v9, v8, &qword_24BC0, &qword_18EE8);
  sub_3518(&v10, v8, &qword_24BC8, &qword_18EF0);
  return sub_3518(&v12, v8, &qword_24BD0, &qword_18EF8);
}

void sub_A020(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_A040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_172EC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_A070(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_172FC();
}

unint64_t sub_A0A8()
{
  result = qword_24C40;
  if (!qword_24C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C40);
  }

  return result;
}

uint64_t sub_A0FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_A10C()
{
  v1 = *(v0 + 24);

  sub_A020(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_A160()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A198()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A230;

  return sub_95DC();
}

uint64_t sub_A230()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_A34C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1766C();
  *a1 = result;
  return result;
}

uint64_t sub_A378(uint64_t *a1)
{
  v1 = *a1;

  return sub_1767C();
}

uint64_t sub_A3A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_A40C()
{
  result = qword_24C50;
  if (!qword_24C50)
  {
    sub_30D4(&qword_24BE0, &qword_18F08);
    sub_A4C4();
    sub_6388(&qword_24C70, &qword_24C78, &qword_19008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C50);
  }

  return result;
}

unint64_t sub_A4C4()
{
  result = qword_24C58;
  if (!qword_24C58)
  {
    sub_30D4(&qword_24BE8, &qword_18F10);
    sub_30D4(&qword_247F8, &qword_18F20);
    sub_A5B8();
    swift_getOpaqueTypeConformance2();
    sub_6388(&qword_24C68, &qword_24C48, &qword_18FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C58);
  }

  return result;
}

unint64_t sub_A5B8()
{
  result = qword_24C60;
  if (!qword_24C60)
  {
    sub_30D4(&qword_247F8, &qword_18F20);
    sub_30D4(&qword_24BF8, &qword_18F28);
    sub_30D4(&qword_24C00, &qword_18F30);
    sub_30D4(&qword_24C08, &qword_18F38);
    sub_172DC();
    sub_30D4(&qword_24C10, &qword_18F40);
    sub_6388(&qword_24C30, &qword_24C10, &qword_18F40);
    sub_ACA8(&qword_24C38, &type metadata accessor for AutoDownloadPickerView);
    swift_getOpaqueTypeConformance2();
    sub_A0A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C60);
  }

  return result;
}

uint64_t sub_A7DC(uint64_t a1)
{
  v2 = sub_2CFC(&qword_24BE0, &qword_18F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A844()
{
  v0 = sub_1754C();
  sub_AC44(v0, qword_262F8);
  sub_A8A8(v0, qword_262F8);
  return sub_1755C();
}

uint64_t sub_A8A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_A8E0()
{
  v1 = sub_1762C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A968(uint64_t a1)
{
  v3 = *(sub_1762C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_9994(a1, v4);
}

unint64_t sub_A9D8()
{
  result = qword_24C80;
  if (!qword_24C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_24C80);
  }

  return result;
}

uint64_t sub_AA24()
{
  v1 = sub_1756C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1762C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_AB6C()
{
  v0 = *(sub_1756C() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(sub_1762C() - 8) + 80);
  return sub_1753C();
}

uint64_t sub_AC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_AC44(uint64_t a1, uint64_t *a2)
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

uint64_t sub_ACA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AD38(uint64_t a1)
{
  v2 = sub_2CFC(&qword_24A88, qword_19370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_3518(a1, &v6 - v4, &qword_24A88, qword_19370);
  return sub_1769C();
}

uint64_t sub_ADE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_AE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_AEF8()
{
  v1 = OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22PodcastsSettingsPlugin28GlobalSettingsViewController____lazy_storage___hostingController);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for GlobalSettingsHostingController());
    v6 = qword_24B68;
    v7 = sub_1732C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    *&v5[v6] = sub_1731C();

    sub_17DAC();
    sub_17DBC();
    sub_B520();
    sub_175CC();
    sub_17C5C();
    v10 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    sub_174AC();
    v11 = sub_1774C();
    v12 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_B110(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  sub_17E6C();
  if (!*(v3 + 16) || (v4 = sub_B5D0(v10), (v5 & 1) == 0))
  {
    result = sub_B614(v10);
    goto LABEL_9;
  }

  sub_B668(*(v3 + 56) + 32 * v4, v11);
  sub_B614(v10);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_1730C() == 1752457584 && v6 == 0xE400000000000000)
  {
  }

  else
  {
    v7 = sub_17F5C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v8 = sub_AEF8();
  v9 = *&v8[qword_24B68];

  sub_172FC();

LABEL_9:
  if (a2)
  {
    return a2(result);
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_B4B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlobalSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_B520()
{
  result = qword_24C28;
  if (!qword_24C28)
  {
    sub_1732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24C28);
  }

  return result;
}

uint64_t sub_B578(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_B588()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_B5D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_17E4C(*(v2 + 40));

  return sub_B6C4(a1, v4);
}

uint64_t sub_B668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_B6C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_B78C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_17E5C();
      sub_B614(v8);
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

__n128 sub_B7E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_B7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_B850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_B8D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v90 = sub_1736C();
  v89 = *(v90 - 8);
  v9 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CFC(&qword_24AC0, &qword_18C60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v87 = v70 - v13;
  v85 = sub_1728C();
  v86 = *(v85 - 8);
  v14 = *(v86 + 64);
  __chkstk_darwin(v85);
  v75 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1723C();
  v103 = *(v101 - 8);
  v16 = *(v103 + 64);
  __chkstk_darwin(v101);
  v97 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_172AC();
  v102 = *(v84 - 8);
  v18 = *(v102 + 64);
  v19 = __chkstk_darwin(v84);
  v100 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = v70 - v21;
  v99 = sub_17C2C();
  v104 = *(v99 - 8);
  v22 = v104[8];
  v23 = __chkstk_darwin(v99);
  v98 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v93 = v70 - v25;
  v74 = sub_1724C();
  v94 = *(v74 - 8);
  v92 = v94;
  v26 = *(v94 + 64);
  __chkstk_darwin(v74);
  v91 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SettingsPrivacyFooterView();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_2CFC(&qword_24CF0, &qword_19180);
  v72 = *(v73 - 8);
  v32 = *(v72 + 64);
  __chkstk_darwin(v73);
  v34 = v70 - v33;
  v117._countAndFlagsBits = 0x59434156495250;
  v117._object = 0xE700000000000000;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v113 = sub_1737C(v117, v118);
  v114 = v35;
  v115 = 0;
  v116 = &_swiftEmptyArrayStorage;
  *v31 = swift_getKeyPath();
  sub_2CFC(&qword_24CF8, &qword_191B8);
  swift_storeEnumTagMultiPayload();
  v105 = a1;
  v106 = a2;
  v107 = a3;
  v108 = a4;
  sub_2CFC(&qword_24D00, &qword_191C0);
  v36 = sub_30D4(&qword_24D08, &qword_191C8);
  v37 = sub_30D4(&qword_24D10, &qword_191D0);
  v38 = sub_D400();
  v39 = sub_6388(&qword_24D40, &qword_24D10, &qword_191D0);
  v109 = v36;
  v110 = v37;
  v111 = v38;
  v112 = v39;
  swift_getOpaqueTypeConformance2();
  sub_D4E4();
  v71 = v34;
  sub_17B3C();
  v40 = v93;
  sub_17C1C();
  v41 = v96;
  sub_1729C();
  v42 = *(v103 + 104);
  v103 += 104;
  v95 = v42;
  (v42)(v97, enum case for LocalizedStringResource.BundleDescription.main(_:), v101);
  sub_1725C();
  sub_2CFC(&qword_24AF8, &qword_18C88);
  v83 = *(v94 + 72);
  v43 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_18B30;
  v70[1] = v44;
  v94 = v44 + v43;
  sub_17C1C();
  sub_1729C();
  v82 = objc_opt_self();
  v45 = [v82 podcastsFoundationBundle];
  v81 = v104[2];
  v46 = v99;
  v81(v98, v40, v99);
  v47 = v102;
  v80 = *(v102 + 16);
  v48 = v84;
  v80(v100, v41, v84);
  v49 = [v45 bundleURL];
  v50 = v97;
  sub_1726C();

  v79 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v95(v50);
  sub_1725C();

  v51 = *(v47 + 8);
  v102 = v47 + 8;
  v78 = v51;
  v52 = v96;
  v51(v96, v48);
  v53 = v104[1];
  ++v104;
  v77 = v53;
  v54 = v93;
  v55 = v46;
  v53(v93, v46);
  sub_17C1C();
  sub_1729C();
  v56 = [v82 podcastsFoundationBundle];
  v81(v98, v54, v55);
  v80(v100, v52, v48);
  v57 = [v56 bundleURL];
  sub_1726C();

  (v95)(v50, v79, v101);
  sub_1725C();

  v58 = v85;
  v78(v52, v48);
  v77(v54, v99);
  v59 = v86;
  v60 = v89;
  v61 = v88;
  v62 = v90;
  (*(v89 + 104))(v88, enum case for PodcastsSettingsDeepLinkURLs.podcastsAndPrivacyURL(_:), v90);
  sub_1735C();
  (*(v60 + 8))(v61, v62);
  v63 = v87;
  sub_1727C();
  v64 = v63;

  result = (*(v59 + 48))(v63, 1, v58);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v66 = v75;
    (*(v59 + 32))(v75, v64, v58);
    sub_D53C();
    v67 = v91;
    v68 = v73;
    v69 = v71;
    sub_1791C();

    (*(v59 + 8))(v66, v58);
    (*(v92 + 8))(v67, v74);
    return (*(v72 + 8))(v69, v68);
  }

  return result;
}

uint64_t sub_C50C@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v9 = sub_2CFC(&qword_24D08, &qword_191C8);
  v22 = v9;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  sub_17A9C();
  LOBYTE(v28) = a3;
  v29 = a4;
  sub_2CFC(&qword_24D58, &qword_191F0);
  sub_17A5C();
  v14 = v30;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = &v12[*(v9 + 36)];
  *v17 = KeyPath;
  v17[1] = sub_D6E4;
  v17[2] = v16;
  v21 = sub_1772C();
  v20[1] = v18;
  v30 = a1;
  v31 = a2;
  sub_17A7C();
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  sub_2CFC(&qword_24D10, &qword_191D0);
  sub_D400();
  sub_6388(&qword_24D40, &qword_24D10, &qword_191D0);
  sub_179AC();

  return sub_D710(v12);
}

uint64_t sub_C7D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v39 = a4;
  v5 = a3;
  v37 = a3;
  v43 = a5;
  v44 = a2;
  v7 = sub_2CFC(&qword_24D60, &qword_19228);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36[-v9];
  v11 = sub_2CFC(&qword_24D28, &qword_191D8);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v42 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v41 = &v36[-v17];
  v18 = __chkstk_darwin(v16);
  v40 = &v36[-v19];
  __chkstk_darwin(v18);
  v38 = &v36[-v20];
  sub_174FC();
  v21 = sub_1751C();
  v22 = *(*(v21 - 8) + 56);
  v22(v10, 0, 1, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v44;
  *(v23 + 32) = v5;
  v24 = v39;
  *(v23 + 40) = v39;

  v25 = v38;
  sub_17A8C();
  sub_1750C();
  v22(v10, 0, 1, v21);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = v44;
  *(v26 + 32) = v37;
  *(v26 + 40) = v24;

  v27 = v40;
  sub_17A8C();
  v28 = v12[2];
  v29 = v41;
  v30 = v25;
  v28(v41, v25, v11);
  v31 = v42;
  v28(v42, v27, v11);
  v32 = v43;
  v28(v43, v29, v11);
  v33 = sub_2CFC(&qword_24D68, &qword_19230);
  v28(&v32[*(v33 + 48)], v31, v11);
  v34 = v12[1];
  v34(v27, v11);
  v34(v30, v11);
  v34(v31, v11);
  return (v34)(v29, v11);
}

uint64_t sub_CBE0()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_173CC();
  sub_173BC();
  v1 = sub_17C3C();

  [v0 setBool:1 forKey:v1];

  sub_2CFC(&qword_24D58, &qword_191F0);
  return sub_17A6C();
}

uint64_t sub_CCBC@<X0>(uint64_t a1@<X8>)
{
  v4._object = 0x800000000001CDA0;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  result = sub_1737C(v4, v5);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_CD14@<X0>(uint64_t a1@<X8>)
{
  v4._countAndFlagsBits = 0x415F4C45434E4143;
  v4._object = 0xED00004E4F495443;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  result = sub_1737C(v4, v5);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t type metadata accessor for SettingsPrivacyFooterView()
{
  result = qword_24DD0;
  if (!qword_24DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CDD4(uint64_t a1)
{
  v2 = sub_176EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CFC(&qword_24CF8, &qword_191B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = sub_1786C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DD0C(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_17D3C();
    v17 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_1785C();
  return (*(v12 + 8))(v15, v11);
}

void sub_D054(uint64_t a1)
{
  sub_17C5C();
  v2 = sub_17C3C();

  v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

  v4 = v3;
  [v4 setPresentingViewController:a1];
  [v4 present];
}

uint64_t sub_D11C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_DA90(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_DBF4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_DCB8();
  sub_1796C();
}

uint64_t sub_D230@<X0>(uint64_t a1@<X8>)
{
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x800000000001CDC0;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1737C(v15, v18);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  sub_17C8C(v16);

  v17._object = 0x800000000001CDE0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1737C(v17, v19);
  sub_179FC();
  v2 = sub_178BC();
  v4 = v3;
  v6 = v5;

  v7 = sub_178CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_A0FC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_D400()
{
  result = qword_24D18;
  if (!qword_24D18)
  {
    sub_30D4(&qword_24D08, &qword_191C8);
    sub_6388(&qword_24D20, &qword_24D28, &qword_191D8);
    sub_6388(&qword_24D30, &qword_24D38, &unk_191E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D18);
  }

  return result;
}

unint64_t sub_D4E4()
{
  result = qword_24D48;
  if (!qword_24D48)
  {
    type metadata accessor for SettingsPrivacyFooterView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D48);
  }

  return result;
}

unint64_t sub_D53C()
{
  result = qword_24D50;
  if (!qword_24D50)
  {
    sub_30D4(&qword_24CF0, &qword_19180);
    sub_30D4(&qword_24D08, &qword_191C8);
    sub_30D4(&qword_24D10, &qword_191D0);
    sub_D400();
    sub_6388(&qword_24D40, &qword_24D10, &qword_191D0);
    swift_getOpaqueTypeConformance2();
    sub_D4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D50);
  }

  return result;
}

uint64_t sub_D67C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_176BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_D710(uint64_t a1)
{
  v2 = sub_2CFC(&qword_24D08, &qword_191C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D778()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_CBE0();
}

uint64_t sub_D78C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_D7D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_2CFC(&qword_24D58, &qword_191F0);
  return sub_17A6C();
}

uint64_t sub_D844(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_D94C()
{
  sub_D9B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_D9B8()
{
  if (!qword_24DE0)
  {
    sub_1786C();
    v0 = sub_1752C();
    if (!v1)
    {
      atomic_store(v0, &qword_24DE0);
    }
  }
}

uint64_t sub_DA10()
{
  sub_30D4(&qword_24CF0, &qword_19180);
  sub_D53C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_DA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPrivacyFooterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DAF4()
{
  v1 = *(type metadata accessor for SettingsPrivacyFooterView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_2CFC(&qword_24CF8, &qword_191B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1786C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_DBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPrivacyFooterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_DC58()
{
  v1 = *(type metadata accessor for SettingsPrivacyFooterView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_CDD4(v2);
}

unint64_t sub_DCB8()
{
  result = qword_24E10;
  if (!qword_24E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24E10);
  }

  return result;
}

uint64_t sub_DD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24CF8, &qword_191B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CFC(&qword_24A10, qword_19320);
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

uint64_t sub_DF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2CFC(&qword_24A10, qword_19320);
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

uint64_t type metadata accessor for SkipButtonsPickersSection()
{
  result = qword_24E70;
  if (!qword_24E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E018()
{
  sub_616C();
  if (v0 <= 0x3F)
  {
    sub_61D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_E0B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_176EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CFC(&qword_249E8, &unk_18A60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_3518(v2, &v16 - v11, &qword_249E8, &unk_18A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_6318(v12, a1);
  }

  v14 = *v12;
  sub_17D3C();
  v15 = sub_1787C();
  sub_1740C();

  sub_176DC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_E288@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_1777C();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CFC(&qword_24AC8, &qword_18C68);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = sub_2CFC(&qword_24A88, qword_19370);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = sub_177AC();
  v46 = *(v19 - 8);
  v47 = v19;
  v20 = *(v46 + 64);
  __chkstk_darwin(v19);
  v45 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CFC(&qword_24EB0, &qword_193D0);
  v43 = *(v22 - 8);
  v44 = v22;
  v23 = *(v43 + 64);
  __chkstk_darwin(v22);
  v25 = &v39 - v24;
  v58._countAndFlagsBits = 0x5455425F50494B53;
  v58._object = 0xEC000000534E4F54;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v54 = sub_1737C(v58, v60);
  v55 = v26;
  v56 = 0;
  v57 = &_swiftEmptyArrayStorage;
  v59._object = 0x800000000001CE00;
  v59._countAndFlagsBits = 0xD000000000000010;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v50 = sub_1737C(v59, v61);
  v51 = v27;
  v52 = 0;
  v53 = &_swiftEmptyArrayStorage;
  v49 = v1;
  sub_2CFC(&qword_24EB8, &unk_193D8);
  sub_6388(&qword_24EC0, &qword_24EB8, &unk_193D8);
  v42 = v25;
  v28 = v40;
  sub_17B3C();
  sub_E0B8(v18);
  (*(v28 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v2);
  (*(v28 + 56))(v16, 0, 1, v2);
  v29 = *(v6 + 56);
  sub_3518(v18, v9, &qword_24A88, qword_19370);
  sub_3518(v16, &v9[v29], &qword_24A88, qword_19370);
  v30 = *(v28 + 48);
  if (v30(v9, 1, v2) != 1)
  {
    sub_3518(v9, v41, &qword_24A88, qword_19370);
    if (v30(&v9[v29], 1, v2) != 1)
    {
      v31 = v39;
      (*(v28 + 32))(v39, &v9[v29], v2);
      sub_FA90(&qword_24B00, &type metadata accessor for UserInterfaceSizeClass);
      v32 = v41;
      sub_17C0C();
      v33 = *(v28 + 8);
      v33(v31, v2);
      sub_62B8(v16, &qword_24A88, qword_19370);
      sub_62B8(v18, &qword_24A88, qword_19370);
      v33(v32, v2);
      sub_62B8(v9, &qword_24A88, qword_19370);
      goto LABEL_8;
    }

    sub_62B8(v16, &qword_24A88, qword_19370);
    sub_62B8(v18, &qword_24A88, qword_19370);
    (*(v28 + 8))(v41, v2);
    goto LABEL_6;
  }

  sub_62B8(v16, &qword_24A88, qword_19370);
  sub_62B8(v18, &qword_24A88, qword_19370);
  if (v30(&v9[v29], 1, v2) != 1)
  {
LABEL_6:
    sub_62B8(v9, &qword_24AC8, &qword_18C68);
    goto LABEL_8;
  }

  sub_62B8(v9, &qword_24A88, qword_19370);
LABEL_8:
  v34 = v45;
  sub_1779C();
  sub_F8C8();
  v35 = v47;
  v36 = v44;
  v37 = v42;
  sub_1794C();
  (*(v46 + 8))(v34, v35);
  return (*(v43 + 8))(v37, v36);
}

uint64_t sub_E930@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_2CFC(&qword_24ED0, &qword_193E8);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v30 = &v29 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v39._countAndFlagsBits = 0xD000000000000013;
  v39._object = 0x800000000001CE20;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v37 = sub_1737C(v39, v41);
  v38 = v15;
  v16 = type metadata accessor for SkipButtonsPickersSection();
  v17 = *(a1 + *(v16 + 20));
  sub_174DC();
  v34 = a1;
  sub_2CFC(&qword_24ED8, &qword_193F0);
  v18 = sub_30D4(&qword_24EE0, &qword_193F8);
  v19 = sub_F9D0();
  v35 = v18;
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  sub_34C4();
  sub_17ABC();
  v40._object = 0x800000000001CE40;
  v40._countAndFlagsBits = 0xD000000000000010;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v37 = sub_1737C(v40, v42);
  v38 = v20;
  v21 = *(a1 + *(v16 + 24));
  sub_174DC();
  v33 = a1;
  sub_17ABC();
  v22 = v4[2];
  v23 = v30;
  v22(v30, v14, v3);
  v24 = v31;
  v22(v31, v12, v3);
  v25 = v32;
  v22(v32, v23, v3);
  v26 = sub_2CFC(&qword_24EF0, &unk_19400);
  v22(&v25[*(v26 + 48)], v24, v3);
  v27 = v4[1];
  v27(v12, v3);
  v27(v14, v3);
  v27(v24, v3);
  return (v27)(v23, v3);
}

uint64_t sub_ECF4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int *a3@<X4>, uint64_t a4@<X8>)
{
  v86 = a3;
  v81 = a2;
  v80 = a1;
  v71 = a4;
  v4 = sub_1736C();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  __chkstk_darwin(v4);
  v83 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CFC(&qword_24AC0, &qword_18C60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v82 = v65 - v9;
  v78 = sub_1728C();
  v79 = *(v78 - 8);
  v10 = *(v79 + 64);
  __chkstk_darwin(v78);
  v70 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1723C();
  v102 = *(v99 - 8);
  v12 = *(v102 + 64);
  __chkstk_darwin(v99);
  v77 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_172AC();
  v101 = *(v74 - 8);
  v14 = *(v101 + 64);
  v15 = __chkstk_darwin(v74);
  v91 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v65 - v17;
  v98 = sub_17C2C();
  v100 = *(v98 - 8);
  v19 = v100;
  v20 = *(v100 + 64);
  v21 = __chkstk_darwin(v98);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v65 - v24;
  v69 = sub_1724C();
  v75 = *(v69 - 8);
  v76 = v69 - 8;
  v88 = v75;
  v26 = *(v75 + 64);
  __chkstk_darwin(v69 - 8);
  v87 = v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2CFC(&qword_24EE0, &qword_193F8);
  v67 = *(v68 - 8);
  v28 = *(v67 + 64);
  __chkstk_darwin(v68);
  v30 = v65 - v29;
  v103 = sub_17DDC();
  sub_2CFC(&qword_24EF8, &unk_19410);
  sub_6388(&qword_24F00, &qword_24EF8, &unk_19410);
  sub_FA90(&qword_24F08, type metadata accessor for MTPodcastSkipDuration);
  v66 = v30;
  sub_17B1C();
  sub_17C1C();
  v31 = v18;
  sub_1729C();
  v90 = objc_opt_self();
  v32 = [v90 podcastsFoundationBundle];
  v89 = *(v19 + 16);
  v73 = v19 + 16;
  v72 = v23;
  v33 = v98;
  v89(v23, v25, v98);
  v34 = v101;
  v35 = *(v101 + 16);
  v96 = v101 + 16;
  v97 = v35;
  v36 = v74;
  v35(v91, v31, v74);
  v37 = [v32 bundleURL];
  v38 = v77;
  sub_1726C();

  v94 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v39 = *(v102 + 104);
  v102 += 104;
  v95 = v39;
  v39(v38);
  v40 = v38;
  sub_1725C();

  v41 = *(v34 + 8);
  v101 = v34 + 8;
  v93 = v41;
  v42 = v36;
  v41(v31, v36);
  v43 = *(v100 + 8);
  v100 += 8;
  v92 = v43;
  v43(v25, v33);
  sub_2CFC(&qword_24AF8, &qword_18C88);
  v76 = *(v75 + 72);
  v44 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_18B30;
  v65[1] = v45;
  v75 = v45 + v44;
  sub_17C1C();
  sub_1729C();
  v46 = [v90 podcastsFoundationBundle];
  v47 = v72;
  v89(v72, v25, v33);
  v48 = v91;
  v97(v91, v31, v36);
  v49 = [v46 bundleURL];
  sub_1726C();

  v95(v40, v94, v99);
  sub_1725C();

  v93(v31, v42);
  v50 = v98;
  v92(v25, v98);
  sub_17C1C();
  sub_1729C();
  v51 = [v90 podcastsFoundationBundle];
  v89(v47, v25, v50);
  v97(v48, v31, v42);
  v52 = v79;
  v53 = [v51 bundleURL];
  sub_1726C();

  v95(v40, v94, v99);
  sub_1725C();

  v93(v31, v42);
  v92(v25, v98);
  v54 = v85;
  v55 = v84;
  v56 = v83;
  (*(v84 + 104))(v83, *v86, v85);
  sub_1735C();
  (*(v55 + 8))(v56, v54);
  v57 = v82;
  sub_1727C();
  v58 = v57;

  v59 = v78;
  result = (*(v52 + 48))(v57, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v61 = v70;
    (*(v52 + 32))(v70, v58, v59);
    sub_F9D0();
    v62 = v87;
    v63 = v68;
    v64 = v66;
    sub_1791C();

    (*(v52 + 8))(v61, v59);
    (*(v88 + 8))(v62, v69);
    return (*(v67 + 8))(v64, v63);
  }

  return result;
}

uint64_t sub_F884@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_17DCC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_F8C8()
{
  result = qword_24EC8;
  if (!qword_24EC8)
  {
    sub_30D4(&qword_24EB0, &qword_193D0);
    sub_6388(&qword_24EC0, &qword_24EB8, &unk_193D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24EC8);
  }

  return result;
}

unint64_t sub_F9D0()
{
  result = qword_24EE8;
  if (!qword_24EE8)
  {
    sub_30D4(&qword_24EE0, &qword_193F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24EE8);
  }

  return result;
}

uint64_t sub_FA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FAD8()
{
  sub_30D4(&qword_24EB0, &qword_193D0);
  sub_177AC();
  sub_F8C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_FBF4@<X0>(uint64_t a1@<X8>)
{
  v4._object = 0x800000000001CE60;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  result = sub_1737C(v4, v5);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_FC4C()
{
  v1 = type metadata accessor for SyncLibraryFooterView();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v11._countAndFlagsBits = 0x5952415242494CLL;
  v11._object = 0xE700000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v8[0] = sub_1737C(v11, v12);
  v8[1] = v6;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  *v4 = swift_getKeyPath();
  sub_2CFC(&qword_24CF8, &qword_191B8);
  swift_storeEnumTagMultiPayload();
  sub_2CFC(&qword_248D0, &qword_18860);
  sub_3870();
  sub_1030C();
  return sub_17B3C();
}

uint64_t type metadata accessor for SyncLibraryFooterView()
{
  result = qword_24F70;
  if (!qword_24F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FDF4(uint64_t a1)
{
  v2 = sub_176EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CFC(&qword_24CF8, &qword_191B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = sub_1786C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_DD0C(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_17D3C();
    v17 = sub_1787C();
    sub_1740C();

    sub_176DC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_1785C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10074(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10538(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1069C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_10760();
  sub_1796C();
}

uint64_t sub_10188@<X0>(uint64_t a1@<X8>)
{
  v15._countAndFlagsBits = 0x5F5952415242494CLL;
  v15._object = 0xEE005245544F4F46;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1737C(v15, v18);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  sub_17C8C(v16);

  v17._object = 0x800000000001CDE0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1737C(v17, v19);
  sub_179FC();
  v2 = sub_178BC();
  v4 = v3;
  v6 = v5;

  v7 = sub_178CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_A0FC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_1030C()
{
  result = qword_24F10;
  if (!qword_24F10)
  {
    type metadata accessor for SyncLibraryFooterView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24F10);
  }

  return result;
}

uint64_t sub_10378(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10404(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_24D70, &qword_19238);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_10484()
{
  result = qword_24FA8;
  if (!qword_24FA8)
  {
    sub_30D4(&qword_24FB0, "f");
    sub_3870();
    sub_1030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FA8);
  }

  return result;
}

uint64_t sub_10538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncLibraryFooterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1059C()
{
  v1 = *(type metadata accessor for SyncLibraryFooterView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_2CFC(&qword_24CF8, &qword_191B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1786C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1069C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncLibraryFooterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10700()
{
  v1 = *(type metadata accessor for SyncLibraryFooterView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_FDF4(v2);
}

unint64_t sub_10760()
{
  result = qword_24FB8;
  if (!qword_24FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FB8);
  }

  return result;
}

uint64_t sub_10838()
{
  v1 = v0;
  v17 = 0u;
  v18 = 0u;
  if ([v0 hasValidGetter])
  {
    if ([v0 performGetter])
    {
      sub_17E1C();
      swift_unknownObjectRelease();
      sub_62B8(&v17, &qword_25250, &qword_19E70);
    }

    else
    {
      sub_62B8(&v17, &qword_25250, &qword_19E70);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  sub_118E4(&v17, &v14);
  v2 = *(&v15 + 1);
  sub_62B8(&v14, &qword_25250, &qword_19E70);
  if (!v2 || [v1 cellType] == &dword_8 + 1)
  {
    goto LABEL_25;
  }

  if ([v1 cellType] != &dword_0 + 2 && objc_msgSend(v1, "cellType") != &dword_4)
  {
    v3 = [v1 titleDictionary];
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v3 = [v1 shortTitleDictionary];
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v4 = v3;
  v5 = sub_17BFC();

LABEL_14:
  sub_118E4(&v17, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        v14 = v11;
        v15 = v12;
        v16 = v13;
        if (v5)
        {
          if (*(v5 + 16) && (v6 = sub_B5D0(&v14), (v7 & 1) != 0))
          {
            sub_B668(*(v5 + 56) + 32 * v6, &v11);
            sub_B614(&v14);
            sub_62B8(&v17, &qword_25250, &qword_19E70);
          }

          else
          {

            sub_B614(&v14);
            sub_62B8(&v17, &qword_25250, &qword_19E70);
            v11 = 0u;
            v12 = 0u;
          }

          v17 = v11;
          v18 = v12;
        }

        else
        {
          sub_B614(&v14);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {

    sub_62B8(v10, &qword_25250, &qword_19E70);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_62B8(&v11, &qword_24FC8, &qword_196A0);
LABEL_25:
  sub_118E4(&v17, &v14);
  v8 = *(&v15 + 1);
  sub_62B8(&v14, &qword_25250, &qword_19E70);
  if (!v8)
  {
    if ([v1 propertyForKey:PSValueKey])
    {
      sub_17E1C();
      swift_unknownObjectRelease();
      sub_62B8(&v17, &qword_25250, &qword_19E70);
    }

    else
    {
      sub_62B8(&v17, &qword_25250, &qword_19E70);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  v14 = v17;
  v15 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
    sub_62B8(&v14, &qword_25250, &qword_19E70);
  }

  return 0;
}

uint64_t sub_10C20()
{
  if ([v0 cellType] == &dword_4 + 2 && objc_msgSend(v0, "hasValidGetter") && objc_msgSend(v0, "hasValidSetter"))
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v3;
    sub_17AEC();
  }

  else
  {
    sub_17AFC();
  }

  return v6;
}

void sub_10D74(unsigned __int8 *a1@<X8>)
{
  v2 = sub_1743C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v61 = 0u;
    v62 = 0u;
LABEL_13:
    sub_62B8(&v61, &qword_25250, &qword_19E70);
LABEL_14:
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = sub_17C3C();
      v33 = [v31 propertyForKey:v32];

      if (v33)
      {
        sub_17E1C();
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
      }

      v61 = v59;
      v62 = v60;
      if (*(&v60 + 1))
      {
        if (swift_dynamicCast())
        {
          v34 = v59;
          v35 = HIBYTE(*(&v59 + 1)) & 0xFLL;
          if ((*(&v59 + 1) & 0x2000000000000000) == 0)
          {
            v35 = v59 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {
            sub_1741C();

            v36 = sub_1742C();
            v37 = sub_17D4C();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              *&v61 = v39;
              *v38 = 136315138;
              v40 = sub_11954(v34, *(&v34 + 1), &v61);

              *(v38 + 4) = v40;
              _os_log_impl(&dword_0, v36, v37, "No value returned from some getter of specifier for bundleIdentifier '%s.", v38, 0xCu);
              sub_11F90(v39);
            }

            else
            {
            }

            (*(v3 + 8))(v10, v2);
            goto LABEL_30;
          }
        }

LABEL_27:
        sub_1741C();
        v41 = sub_1742C();
        v42 = sub_17D4C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_0, v41, v42, "No value returned from getter of specifier (no bundleIdentifier found).", v43, 2u);
        }

        (*(v3 + 8))(v7, v2);
        goto LABEL_30;
      }
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    sub_62B8(&v61, &qword_25250, &qword_19E70);
    goto LABEL_27;
  }

  v17 = Strong;
  v18 = [Strong performGetter];

  if (v18)
  {
    sub_17E1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61 = v59;
  v62 = v60;
  if (!*(&v60 + 1))
  {
    goto LABEL_13;
  }

  sub_11FDC(0, &qword_24FD0, NSObject_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = v59;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v61 = 0uLL, v20 = v19, sub_17C4C(), v20, (v21 = *(&v61 + 1)) == 0))
  {
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v29 = [v44 BOOLValue];

      goto LABEL_31;
    }

    sub_1741C();
    v45 = v19;
    v46 = sub_1742C();
    v47 = sub_17D4C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_0, v46, v47, "Could not resolve value of type '%{public}@' to a BOOLean.", v48, 0xCu);
      sub_62B8(v49, &qword_24FD8, &qword_196A8);
    }

    else
    {
      v50 = v46;
      v46 = v45;
    }

    (*(v3 + 8))(v13, v2);
    goto LABEL_30;
  }

  v22 = v61;
  v23 = sub_12024(&off_214B8);
  swift_arrayDestroy();
  v24 = sub_17C6C();
  v26 = sub_11518(v24, v25, v23);

  if ((v26 & 1) == 0)
  {
    v27 = sub_17C3C();
    v28 = [v27 integerValue];

    if (v28 < 1)
    {
      sub_1741C();

      v51 = sub_1742C();
      v52 = sub_17D4C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58 = v51;
        v55 = v54;
        *&v61 = v54;
        *v53 = 136446210;
        v56 = sub_11954(v22, v21, &v61);

        *(v53 + 4) = v56;
        v57 = v58;
        sub_11F90(v55);
      }

      else
      {
      }

      (*(v3 + 8))(v15, v2);
LABEL_30:
      v29 = 0;
      goto LABEL_31;
    }
  }

  v29 = 1;
LABEL_31:
  *a1 = v29;
}

uint64_t sub_11518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_17F7C();
  sub_17C7C();
  v7 = sub_17F8C();
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
    if (v12 || (sub_17F5C() & 1) != 0)
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

void sub_11610(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_allocWithZone(NSNumber) initWithBool:v1];
    [v3 performSetterWithValue:v4];
  }

  v5 = [objc_opt_self() defaultCenter];
  if (qword_247D8 != -1)
  {
    swift_once();
  }

  v6 = qword_26310;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  [v5 postNotificationName:v6 object:v7];
}

NSString sub_11740()
{
  result = sub_17C3C();
  qword_26310 = result;
  return result;
}

void PSSpecifier.objectWillChange.getter()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_247D8 != -1)
  {
    swift_once();
  }

  sub_17D9C();
}

unint64_t sub_1182C()
{
  result = qword_24FC0;
  if (!qword_24FC0)
  {
    sub_17D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FC0);
  }

  return result;
}

uint64_t sub_11890@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_11FDC(0, &qword_25270, PSSpecifier_ptr);
  result = sub_17EAC();
  *a1 = result;
  return result;
}

uint64_t sub_118E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CFC(&qword_25250, &qword_19E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11954(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_11A20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_B668(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_11F90(v11);
  return v7;
}

unint64_t sub_11A20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_11B2C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_17ECC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_11B2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_11B78(a1, a2);
  sub_11CA8(&off_21490);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_11B78(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_11D94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_17ECC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_17C9C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_11D94(v10, 0);
        result = sub_17E8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_11CA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_11E08(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_11D94(uint64_t a1, uint64_t a2)
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

  sub_2CFC(&qword_24FE8, &qword_196B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11E08(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CFC(&qword_24FE8, &qword_196B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_11EFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_11F38(unsigned __int8 *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_10D74(a1);
}

uint64_t sub_11F44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_11F84(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_11610(a1);
}

uint64_t sub_11F90(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_11FDC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int sub_12024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CFC(&qword_24FE0, &qword_196B0);
    v3 = sub_17E7C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_17F7C();

      sub_17C7C();
      result = sub_17F8C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_17F5C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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

unint64_t sub_121A8()
{
  result = qword_24FF0;
  if (!qword_24FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FF0);
  }

  return result;
}

id sub_121FC()
{
  v1 = *v0;
  if ([*v0 detailControllerClass] && (v2 = CreateDetailControllerInstanceWithClass()) != 0)
  {
    v3 = v2;
    [v2 setSpecifier:v1];
    return v3;
  }

  else
  {
    v5 = objc_allocWithZone(UIViewController);

    return [v5 init];
  }
}

uint64_t sub_122DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_123CC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_12340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_123CC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_123A4()
{
  sub_123CC();
  sub_1781C();
  __break(1u);
}

unint64_t sub_123CC()
{
  result = qword_24FF8;
  if (!qword_24FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24FF8);
  }

  return result;
}

id sub_1244C()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  [v0 setScale:v3];
  result = [v0 setDrawBorder:1];
  qword_26318 = v0;
  return result;
}

uint64_t sub_1250C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v64 = sub_2CFC(&qword_25000, &qword_19898);
  v3 = *(*(v64 - 1) + 64);
  __chkstk_darwin(v64);
  v62 = &v56 - v4;
  v70 = sub_2CFC(&qword_25008, &qword_198A0);
  v5 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v7 = &v56 - v6;
  v66 = sub_2CFC(&qword_25010, &qword_198A8);
  v63 = *(v66 - 8);
  v8 = *(v63 + 64);
  __chkstk_darwin(v66);
  v10 = &v56 - v9;
  v67 = sub_2CFC(&qword_25018, &qword_198B0);
  v11 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v13 = &v56 - v12;
  v65 = sub_2CFC(&qword_25020, &qword_198B8);
  v14 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v16 = &v56 - v15;
  v68 = sub_2CFC(&qword_25028, &qword_198C0);
  v17 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v19 = &v56 - v18;
  v20 = sub_2CFC(&qword_25030, &qword_198C8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v56 - v22;
  v24 = sub_2CFC(&qword_25038, &unk_198D0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v56 - v26;
  v28 = sub_12DF8(a1);
  if (v28)
  {
    v64 = v28;
    sub_17A1C();
    v29 = enum case for Image.TemplateRenderingMode.original(_:);
    v30 = sub_17A3C();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v23, v29, v30);
    (*(v31 + 56))(v23, 0, 1, v30);
    v32 = sub_17A2C();

    sub_62B8(v23, &qword_25030, &qword_198C8);
    v71 = v32;
    sub_1797C();

    sub_3518(v27, v16, &qword_25038, &unk_198D0);
    swift_storeEnumTagMultiPayload();
    sub_1309C();
    sub_12FAC();
    sub_1775C();
    sub_3518(v19, v13, &qword_25028, &qword_198C0);
    swift_storeEnumTagMultiPayload();
    sub_13010();
    sub_13180();
    sub_1775C();

    sub_62B8(v19, &qword_25028, &qword_198C0);
    v33 = v27;
    v34 = &qword_25038;
    v35 = &unk_198D0;
    return sub_62B8(v33, v34, v35);
  }

  v58 = v24;
  v59 = v19;
  v57 = v7;
  v37 = v63;
  v60 = v10;
  v61 = v13;
  v38 = v66;
  sub_12EDC(a1, &PSIconUTTypeIdentifierKey);
  if (v39)
  {
    v40 = objc_allocWithZone(ISIcon);
    v41 = sub_17C3C();

    [v40 initWithType:v41];

    if (qword_247E0 != -1)
    {
      swift_once();
    }

    v42 = qword_26318;
    v43 = v60;
    sub_173FC();
    v44 = v38;
    (*(v37 + 16))(v16, v43, v38);
    swift_storeEnumTagMultiPayload();
    sub_1309C();
    sub_12FAC();
    v45 = v59;
    sub_1775C();
    sub_3518(v45, v61, &qword_25028, &qword_198C0);
    swift_storeEnumTagMultiPayload();
    sub_13010();
    sub_13180();
    sub_1775C();
    sub_62B8(v45, &qword_25028, &qword_198C0);
    return (*(v37 + 8))(v43, v44);
  }

  else
  {
    sub_12EDC(a1, &PSLazyIconAppID);
    if (!v46)
    {
      swift_storeEnumTagMultiPayload();
      sub_12FAC();
      v55 = v57;
      sub_1775C();
      sub_3518(v55, v61, &qword_25008, &qword_198A0);
      swift_storeEnumTagMultiPayload();
      sub_13010();
      sub_13180();
      sub_1775C();
      v33 = v55;
      v34 = &qword_25008;
      v35 = &qword_198A0;
      return sub_62B8(v33, v34, v35);
    }

    v47 = v37;
    v48 = objc_allocWithZone(ISIcon);
    v49 = sub_17C3C();

    [v48 initWithBundleIdentifier:v49];

    v50 = v38;
    v51 = v61;
    v52 = v57;
    if (qword_247E0 != -1)
    {
      swift_once();
    }

    v53 = qword_26318;
    v54 = v60;
    sub_173FC();
    (*(v47 + 16))(v62, v54, v50);
    swift_storeEnumTagMultiPayload();
    sub_12FAC();
    sub_1775C();
    sub_3518(v52, v51, &qword_25008, &qword_198A0);
    swift_storeEnumTagMultiPayload();
    sub_13010();
    sub_13180();
    sub_1775C();
    sub_62B8(v52, &qword_25008, &qword_198A0);
    return (*(v47 + 8))(v54, v50);
  }
}

uint64_t sub_12DF8(void *a1)
{
  if ([a1 propertyForKey:PSIconImageKey])
  {
    sub_17E1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1320C();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_62B8(v5, &qword_25250, &qword_19E70);
    return 0;
  }
}

uint64_t sub_12EDC(void *a1, void *a2)
{
  if ([a1 propertyForKey:*a2])
  {
    sub_17E1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_62B8(v6, &qword_25250, &qword_19E70);
    return 0;
  }
}

unint64_t sub_12FAC()
{
  result = qword_25040;
  if (!qword_25040)
  {
    sub_30D4(&qword_25010, &qword_198A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25040);
  }

  return result;
}

unint64_t sub_13010()
{
  result = qword_25048;
  if (!qword_25048)
  {
    sub_30D4(&qword_25028, &qword_198C0);
    sub_1309C();
    sub_12FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25048);
  }

  return result;
}

unint64_t sub_1309C()
{
  result = qword_25050;
  if (!qword_25050)
  {
    sub_30D4(&qword_25038, &unk_198D0);
    sub_13128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25050);
  }

  return result;
}

unint64_t sub_13128()
{
  result = qword_25058;
  if (!qword_25058)
  {
    sub_1784C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25058);
  }

  return result;
}

unint64_t sub_13180()
{
  result = qword_25060;
  if (!qword_25060)
  {
    sub_30D4(&qword_25008, &qword_198A0);
    sub_12FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25060);
  }

  return result;
}

unint64_t sub_1320C()
{
  result = qword_25068;
  if (!qword_25068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25068);
  }

  return result;
}

unint64_t sub_1325C()
{
  result = qword_25070;
  if (!qword_25070)
  {
    sub_30D4(&qword_25078, &unk_198E0);
    sub_13010();
    sub_13180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25070);
  }

  return result;
}

__n128 sub_132E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_132F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1333C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

int *sub_133A4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2CFC(&qword_250D8, &qword_199D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v15[3] = a1;
  v9 = a1;
  result = [v9 name];
  if (result)
  {
    v11 = result;
    v12 = sub_17C5C();
    v14 = v13;

    v15[1] = v12;
    v15[2] = v14;
    sub_121A8();
    sub_34C4();
    sub_179BC();

    LOBYTE(v11) = sub_1788C();
    (*(v5 + 32))(a2, v8, v4);
    result = sub_2CFC(&qword_25080, &qword_199A0);
    *(a2 + result[9]) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_13528@<Q0>(id a1@<X1>, uint64_t a2@<X8>)
{
  v4 = [a1 cellType];
  if (v4 == &dword_0 + 2)
  {
    v8 = sub_1771C();
    LOBYTE(v12) = 1;
    sub_13C20(a1, v35);
    v20 = *&v35[32];
    v21 = *&v35[48];
    v18 = *v35;
    v19 = *&v35[16];
    v25 = *&v35[32];
    v26 = *&v35[48];
    v27 = *&v35[64];
    v24 = *&v35[16];
    v22 = *&v35[64];
    v23 = *v35;
    sub_3518(&v18, v33, &qword_250D0, &qword_199C8);
    sub_62B8(&v23, &qword_250D0, &qword_199C8);
    *&v35[7] = v18;
    *&v35[23] = v19;
    *&v35[71] = v22;
    *&v35[55] = v21;
    *&v35[39] = v20;
    v28 = v8;
    v29 = 0;
    v30[0] = 1;
    *&v30[17] = *&v35[16];
    *&v30[1] = *v35;
    *&v30[80] = *(&v22 + 1);
    *&v30[65] = *&v35[64];
    *&v30[49] = *&v35[48];
    *&v30[33] = *&v35[32];
    *&v35[64] = *&v30[48];
    *&v35[80] = *&v30[64];
    *&v35[96] = *&v30[80];
    *v35 = v8;
    *&v35[16] = *v30;
    *&v35[32] = *&v30[16];
    *&v35[48] = *&v30[32];
    v31 = 1;
    v35[104] = 1;
    v6 = &qword_250C0;
    v7 = &qword_199C0;
    sub_3518(&v28, v33, &qword_250C0, &qword_199C0);
    sub_2CFC(&qword_250B0, &qword_199B8);
    sub_2CFC(&qword_250C0, &qword_199C0);
    sub_6388(&qword_250A8, &qword_250B0, &qword_199B8);
    sub_6388(&qword_250B8, &qword_250C0, &qword_199C0);
    sub_1775C();
    *&v35[64] = v16;
    *&v35[80] = *v17;
    *&v35[89] = *&v17[9];
    *v35 = v12;
    *&v35[16] = v13;
    *&v35[32] = v14;
    *&v35[48] = v15;
    v32 = 0;
  }

  else
  {
    if (v4 != &dword_0 + 1)
    {
      v34[25] = 1;
      sub_2CFC(&qword_250A0, &qword_199B0);
      sub_14008();
      sub_1775C();
      goto LABEL_7;
    }

    v5 = sub_1773C();
    LOBYTE(v33[0]) = 1;
    sub_139D4(a1, &v23);
    *&v35[7] = v23;
    *&v35[23] = v24;
    *&v35[39] = v25;
    *&v35[55] = v26;
    v28 = v5;
    v29 = 0;
    v30[0] = v33[0];
    *&v30[1] = *v35;
    *&v30[17] = *&v35[16];
    *&v30[33] = *&v35[32];
    *&v30[49] = *&v35[48];
    *&v30[64] = *(&v26 + 1);
    *v35 = v5;
    *&v35[16] = *v30;
    *&v35[32] = *&v30[16];
    *&v35[48] = *&v30[32];
    *&v35[64] = *&v30[48];
    *&v35[80] = *(&v26 + 1);
    v32 = 0;
    v35[104] = 0;
    v6 = &qword_250B0;
    v7 = &qword_199B8;
    sub_3518(&v28, v33, &qword_250B0, &qword_199B8);
    sub_2CFC(&qword_250B0, &qword_199B8);
    sub_2CFC(&qword_250C0, &qword_199C0);
    sub_6388(&qword_250A8, &qword_250B0, &qword_199B8);
    sub_6388(&qword_250B8, &qword_250C0, &qword_199C0);
    sub_1775C();
    *&v35[64] = v16;
    *&v35[80] = *v17;
    *&v35[89] = *&v17[9];
    *v35 = v12;
    *&v35[16] = v13;
    *&v35[32] = v14;
    *&v35[48] = v15;
    LOBYTE(v18) = 0;
  }

  v35[105] = 0;
  sub_2CFC(&qword_250A0, &qword_199B0);
  sub_14008();
  sub_1775C();
  sub_62B8(&v28, v6, v7);
  *&v35[64] = v33[4];
  *&v35[80] = *v34;
  *&v35[90] = *&v34[10];
  *v35 = v33[0];
  *&v35[16] = v33[1];
  *&v35[32] = v33[2];
  *&v35[48] = v33[3];
LABEL_7:
  v9 = *&v35[80];
  *(a2 + 64) = *&v35[64];
  *(a2 + 80) = v9;
  *(a2 + 90) = *&v35[90];
  v10 = *&v35[16];
  *a2 = *v35;
  *(a2 + 16) = v10;
  result = *&v35[48];
  *(a2 + 32) = *&v35[32];
  *(a2 + 48) = result;
  return result;
}

id sub_139D4@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  result = [a1 name];
  if (result)
  {
    v4 = result;
    sub_17C5C();

    sub_34C4();
    v5 = sub_178FC();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_10838();
    if (v12)
    {
      v13 = sub_178FC();
      v15 = v14;
      v17 = v16;
      sub_17A0C();
      v36 = v7;
      v18 = sub_178BC();
      v35 = v9;
      v20 = v19;
      v37 = v11;
      v22 = v21;

      sub_A0FC(v13, v15, v17 & 1);

      sub_1789C();
      v23 = sub_178DC();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = v22 & 1;
      v11 = v37;
      v31 = v18;
      v7 = v36;
      v32 = v20;
      v9 = v35;
      sub_A0FC(v31, v32, v30);

      v33 = v27 & 1;
      sub_2AD4(v23, v25, v27 & 1);
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v33 = 0;
      v29 = 0;
    }

    v34 = v9 & 1;
    sub_2AD4(v5, v7, v34);

    sub_141B8(v23, v25, v33, v29);
    sub_141FC(v23, v25, v33, v29);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v34;
    *(a2 + 24) = v11;
    *(a2 + 32) = v23;
    *(a2 + 40) = v25;
    *(a2 + 48) = v33;
    *(a2 + 56) = v29;
    sub_141FC(v23, v25, v33, v29);
    sub_A0FC(v5, v7, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_13C20@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  result = [a1 name];
  if (result)
  {
    v4 = result;
    sub_17C5C();

    sub_34C4();
    v5 = sub_178FC();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_10838();
    if (v12)
    {
      v13 = sub_178FC();
      v15 = v14;
      v28 = v7;
      v17 = v16;
      sub_17A0C();
      v18 = sub_178BC();
      v20 = v19;
      v27 = v21;
      v23 = v22;

      v24 = v17 & 1;
      v7 = v28;
      sub_A0FC(v13, v15, v24);

      v25 = v27 & 1;
      sub_2AD4(v18, v20, v27 & 1);

      sub_A0FC(v18, v20, v27 & 1);

      sub_2AD4(v18, v20, v27 & 1);

      v26 = 1;
    }

    else
    {
      v26 = 0;
      v18 = 0;
      v20 = 0;
      v25 = 0;
      v23 = 0;
    }

    sub_2AD4(v5, v7, v9 & 1);

    sub_14240(0, v26, v18, v20, v25, v23);
    sub_1428C(0, v26, v18, v20, v25, v23);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v11;
    *(a2 + 32) = 0;
    *(a2 + 40) = v26;
    *(a2 + 48) = v18;
    *(a2 + 56) = v20;
    *(a2 + 64) = v25;
    *(a2 + 72) = v23;
    sub_1428C(0, v26, v18, v20, v25, v23);
    sub_A0FC(v5, v7, v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_13E80()
{
  v1 = sub_2CFC(&qword_25080, &qword_199A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  sub_133A4(v3, &v6[-v4]);
  sub_2CFC(&qword_25088, &qword_199A8);
  sub_13F7C();
  sub_140EC();
  return sub_1759C();
}

double sub_13F74@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_13528(*(v1 + 24), a1).n128_u64[0];
  return result;
}

unint64_t sub_13F7C()
{
  result = qword_25090;
  if (!qword_25090)
  {
    sub_30D4(&qword_25088, &qword_199A8);
    sub_14008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25090);
  }

  return result;
}

unint64_t sub_14008()
{
  result = qword_25098;
  if (!qword_25098)
  {
    sub_30D4(&qword_250A0, &qword_199B0);
    sub_6388(&qword_250A8, &qword_250B0, &qword_199B8);
    sub_6388(&qword_250B8, &qword_250C0, &qword_199C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25098);
  }

  return result;
}

unint64_t sub_140EC()
{
  result = qword_250C8;
  if (!qword_250C8)
  {
    sub_30D4(&qword_25080, &qword_199A0);
    sub_121A8();
    sub_34C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_250C8);
  }

  return result;
}

uint64_t sub_141B8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2AD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_141FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_A0FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_14240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2AD4(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_A0FC(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1431C(uint64_t *a1, int a2)
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

uint64_t sub_14364(uint64_t result, int a2, int a3)
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

uint64_t sub_143CC()
{

  sub_2CFC(&qword_25108, &qword_19AA8);
  sub_14684();
  sub_14630();
  sub_146E8();
  return sub_17B1C();
}

id sub_14478@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_14484()
{
  v3 = *v0;
  result = [*v0 name];
  if (result)
  {
    v2 = result;
    sub_17C5C();

    sub_34C4();
    v4 = sub_178FC();
    __chkstk_darwin(v4);
    sub_2CFC(&qword_250F0, &qword_19AA0);
    sub_145AC();
    return sub_17B2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_145A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_143CC();
}

unint64_t sub_145AC()
{
  result = qword_250F8;
  if (!qword_250F8)
  {
    sub_30D4(&qword_250F0, &qword_19AA0);
    sub_14630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_250F8);
  }

  return result;
}

unint64_t sub_14630()
{
  result = qword_25100;
  if (!qword_25100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25100);
  }

  return result;
}

unint64_t sub_14684()
{
  result = qword_25110;
  if (!qword_25110)
  {
    sub_30D4(&qword_25108, &qword_19AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25110);
  }

  return result;
}

unint64_t sub_146E8()
{
  result = qword_25118;
  if (!qword_25118)
  {
    sub_14740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25118);
  }

  return result;
}

unint64_t sub_14740()
{
  result = qword_25270;
  if (!qword_25270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25270);
  }

  return result;
}

unint64_t sub_14790()
{
  result = qword_25120;
  if (!qword_25120)
  {
    sub_30D4(&qword_25128, &unk_19AB0);
    sub_145AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25120);
  }

  return result;
}

uint64_t sub_14854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t sub_14890()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1746C();

  swift_getKeyPath();
  sub_2CFC(&qword_25130, &qword_19BD8);
  sub_14A94();
  sub_14AF8();
  sub_14B50();
  return sub_17B0C();
}

uint64_t sub_14994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1746C();

  *a2 = v5;
  return result;
}

uint64_t sub_14A18(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_1747C();
}

unint64_t sub_14A94()
{
  result = qword_25138;
  if (!qword_25138)
  {
    sub_30D4(&qword_25130, &qword_19BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25138);
  }

  return result;
}

unint64_t sub_14AF8()
{
  result = qword_25140;
  if (!qword_25140)
  {
    sub_14740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25140);
  }

  return result;
}

unint64_t sub_14B50()
{
  result = qword_25148;
  if (!qword_25148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25148);
  }

  return result;
}

unint64_t sub_14BA8()
{
  result = qword_25150;
  if (!qword_25150)
  {
    sub_30D4(&qword_25158, &unk_19BE0);
    sub_14B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25150);
  }

  return result;
}

id sub_14C58()
{
  result = [*(v0 + 8) name];
  if (result)
  {
    v2 = result;
    sub_17C5C();

    sub_10C20();
    sub_34C4();
    return sub_17ADC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_14D34(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 cellType];
  if ((v4 - 1) < 2 || v4 == &dword_4 + 2)
  {
    sub_14740();
    sub_15118();
    sub_175CC();
    v6 = v5;
    sub_15048();
    sub_1509C();
    v7 = v6;
    sub_1775C();
    sub_2CFC(&qword_25160, &qword_19D48);
    sub_14FBC();
    sub_1775C();
  }

  else
  {

    sub_2CFC(&qword_25160, &qword_19D48);
    sub_14FBC();
    sub_1775C();
  }

  *a2 = v3;
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  *(a2 + 25) = v11;
  v8 = v3;
  sub_150F0(v9, *(&v9 + 1), v10, v11);
  sub_15104(v9, *(&v9 + 1), v10, v11);
}

__n128 sub_14F40@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1771C();
  sub_14D34(v3, &v9);
  v5 = v9;
  v6 = v11;
  v7 = v12;
  result = v10;
  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v5;
  a1[2] = result;
  a1[3].n128_u8[0] = v6;
  a1[3].n128_u8[1] = v7;
  return result;
}

unint64_t sub_14FBC()
{
  result = qword_25168;
  if (!qword_25168)
  {
    sub_30D4(&qword_25160, &qword_19D48);
    sub_15048();
    sub_1509C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25168);
  }

  return result;
}

unint64_t sub_15048()
{
  result = qword_25170;
  if (!qword_25170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25170);
  }

  return result;
}

unint64_t sub_1509C()
{
  result = qword_25178;
  if (!qword_25178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25178);
  }

  return result;
}

id sub_150F0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a2;
  }

  return result;
}

void sub_15104(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

unint64_t sub_15118()
{
  result = qword_25180;
  if (!qword_25180)
  {
    sub_14740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25180);
  }

  return result;
}

unint64_t sub_15174()
{
  result = qword_25188;
  if (!qword_25188)
  {
    sub_30D4(&unk_25190, qword_19D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25188);
  }

  return result;
}

uint64_t sub_151D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1746C();

  return v1;
}

char *sub_1524C()
{
  v1 = sub_2CFC(&unk_25280, qword_19E88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState__specifierSections;
  v19 = &_swiftEmptyArrayStorage;
  sub_2CFC(&qword_25130, &qword_19BD8);
  sub_1745C();
  (*(v2 + 32))(&v0[v6], v5, v1);
  v7 = OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState_systemPolicy;
  sub_17C5C();
  v8 = objc_allocWithZone(PSSystemPolicyForApp);
  v9 = sub_17C3C();

  v10 = [v8 initWithBundleIdentifier:v9];

  *&v0[v7] = v10;
  v11 = type metadata accessor for SpecifierState();
  v18.receiver = v0;
  v18.super_class = v11;
  v12 = objc_msgSendSuper2(&v18, "init");
  v13 = sub_15468();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v13;
  v14 = v12;
  sub_1747C();
  v15 = *&v14[OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState_systemPolicy];
  if (v15)
  {
    [v15 setDelegate:v14];
  }

  return v14;
}

char *sub_15468()
{
  v1 = *&v0[OBJC_IVAR____TtC22PodcastsSettingsPlugin14SpecifierState_systemPolicy];
  if (!v1 || (v2 = [v1 specifiers]) == 0 || (v3 = v2, v0 = sub_17CBC(), v3, v4 = sub_15B54(v0), , !v4))
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v55 = &_swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    v5 = sub_17F3C();
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_64:

    return &_swiftEmptyArrayStorage;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_64;
  }

LABEL_7:
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_66;
  }

  v6 = 0;
  v51 = 0;
  v49 = PSCellClassKey;
  v48 = PSValueKey;
  v0 = &_swiftEmptyArrayStorage;
  v50 = &_swiftEmptyArrayStorage;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_17EBC();
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    [v8 loadValuesAndTitlesFromDataSource];
    v10 = [v9 identifier];
    if (!v10)
    {
      goto LABEL_69;
    }

    v11 = v10;
    v12 = sub_17C5C();
    v14 = v13;

    if (v12 == 0x4143494649544F4ELL && v14 == 0xED0000534E4F4954)
    {
      goto LABEL_28;
    }

    v16 = sub_17F5C();

    if ((v16 & 1) == 0)
    {
LABEL_69:
      if ([v9 propertyForKey:v49])
      {
        sub_17E1C();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v54[0] = v52;
      v54[1] = v53;
      if (!*(&v53 + 1))
      {
        sub_15F44(v54);
        goto LABEL_46;
      }

      sub_2CFC(&qword_25258, &qword_19E78);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_46;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = NSStringFromClass(ObjCClassFromMetadata);
      v19 = sub_17C5C();
      v21 = v20;

      if (v19 == 0xD00000000000002BLL && 0x800000000001CF20 == v21)
      {
LABEL_28:

        goto LABEL_29;
      }

      v30 = sub_17F5C();

      if ((v30 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

LABEL_29:
    if (![objc_opt_self() cellClassForSpecifier:v9])
    {
      goto LABEL_46;
    }

    swift_getObjCClassMetadata();
    sub_11FDC(0, &qword_25260, UITableViewCell_ptr);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_46;
    }

    v22 = swift_getObjCClassFromMetadata();
    sub_11FDC(0, &qword_25268, PSTableCell_ptr);
    if (![(objc_class *)v22 isSubclassOfClass:swift_getObjCClassFromMetadata()])
    {
      v29 = [objc_allocWithZone(v22) initWithStyle:1 reuseIdentifier:0];
LABEL_41:
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32 && (v33 = v32, [v32 refreshCellContentsWithSpecifier:v9], (v34 = objc_msgSend(v33, "detailTextLabel")) != 0) && (v35 = v34, v36 = objc_msgSend(v34, "text"), v35, v36))
      {
        sub_17C5C();

        v37 = sub_17C3C();

        [v9 setProperty:v37 forKey:v48];
      }

      else
      {
      }

      goto LABEL_46;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = swift_getObjCClassFromMetadata();
      v24 = [v23 cellStyle];
      v25 = [v23 reuseIdentifierForSpecifier:v9];
      if (v25)
      {
        v26 = v25;
        sub_17C5C();

        v27 = v9;
        v28 = sub_17C3C();
      }

      else
      {
        v31 = v9;
        v28 = 0;
      }

      v29 = [objc_allocWithZone(v23) initWithStyle:v24 reuseIdentifier:v28 specifier:v9];

      if (v29)
      {
        goto LABEL_41;
      }
    }

LABEL_46:
    if ([v9 cellType])
    {
      v38 = v9;
      sub_17CAC();
      if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v43 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
        sub_17CCC();
      }

      sub_17CDC();

      v0 = v55;
    }

    else
    {
      if (v51)
      {
        v39 = v51;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v50;
        }

        else
        {
          v40 = sub_15FAC(0, *(v50 + 2) + 1, 1, v50);
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        if (v42 >= v41 >> 1)
        {
          v40 = sub_15FAC((v41 > 1), v42 + 1, 1, v40);
        }

        *(v40 + 2) = v42 + 1;
        v50 = v40;
        v7 = &v40[16 * v42];
        *(v7 + 4) = v39;
        *(v7 + 5) = v0;

        v0 = &_swiftEmptyArrayStorage;
        v55 = &_swiftEmptyArrayStorage;
      }

      v51 = v9;
    }

    ++v6;
  }

  while (v5 != v6);

  if (v51)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v50;
      goto LABEL_59;
    }

LABEL_66:
    result = sub_15FAC(0, *(v50 + 2) + 1, 1, v50);
LABEL_59:
    v46 = *(result + 2);
    v45 = *(result + 3);
    if (v46 >= v45 >> 1)
    {
      result = sub_15FAC((v45 > 1), v46 + 1, 1, result);
    }

    *(result + 2) = v46 + 1;
    v47 = &result[16 * v46];
    *(v47 + 4) = v51;
    *(v47 + 5) = v0;
  }

  else
  {

    return v50;
  }

  return result;
}

void *sub_15B54(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_17EFC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_B668(i, v6);
    sub_11FDC(0, &qword_25270, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_17EDC();
    v4 = v7[2];
    sub_17F0C();
    sub_17F1C();
    sub_17EEC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id sub_15C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpecifierState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SpecifierState()
{
  result = qword_251D0;
  if (!qword_251D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_15D74()
{
  sub_15E0C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_15E0C()
{
  if (!qword_251E0)
  {
    sub_30D4(&qword_25130, &qword_19BD8);
    v0 = sub_1748C();
    if (!v1)
    {
      atomic_store(v0, &qword_251E0);
    }
  }
}

uint64_t sub_15E70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SpecifierState();
  result = sub_1744C();
  *a1 = result;
  return result;
}

uint64_t sub_15F44(uint64_t a1)
{
  v2 = sub_2CFC(&qword_25250, &qword_19E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_15FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CFC(&qword_25278, &qword_19E80);
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

unint64_t sub_160F0()
{
  result = qword_25388;
  if (!qword_25388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25388);
  }

  return result;
}

uint64_t sub_16160@<X0>(uint64_t a1@<X8>)
{

  sub_17DAC();
  sub_17DBC();
  sub_1732C();
  sub_B520();
  v2 = sub_175CC();
  v4 = v3;
  sub_17C5C();
  v5 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  result = sub_174AC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = sub_7148;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_16238(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_175BC();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_1728C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(sub_2CFC(&qword_253A8, &qword_19F50) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = sub_1722C();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  sub_17D0C();
  v2[19] = sub_17CFC();
  v14 = sub_17CEC();

  return _swift_task_switch(sub_16428, v14, v13);
}

uint64_t sub_16428()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[7];

  sub_17BCC();
  sub_1720C();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v14 = v0[10];
    v15 = v0[7];
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    sub_17BBC();
    v0[2] = sub_1721C();
    v0[3] = v16;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_34C4();
    v17 = sub_17E0C();

    v19 = 0;
    v20 = *(v17 + 16);
LABEL_4:
    v21 = (v17 + 40 + 16 * v19);
    while (v20 != v19)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v23 = *(v21 - 1);
      v22 = *v21;
      v21 += 2;
      ++v19;
      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_16AB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          result = sub_16AB4((v25 > 1), v26 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[2 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        goto LABEL_4;
      }
    }

    v28 = _swiftEmptyArrayStorage[2];
    if (!v28)
    {
LABEL_29:
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[16];
      v42 = v0[9];
      v41 = v0[10];
      v43 = v0[8];
      v44 = v0[6];

      sub_17BDC();
      (*(v42 + 8))(v41, v43);
      (*(v39 + 8))(v38, v40);
      goto LABEL_30;
    }

    v29 = &_swiftEmptyArrayStorage[5];
    while (1)
    {
      v32 = *(v29 - 1);
      v31 = *v29;
      if (v32 == 0xD000000000000012 && 0x800000000001CAA0 == v31)
      {
        goto LABEL_19;
      }

      v34 = *(v29 - 1);
      v35 = *v29;
      if (sub_17F5C())
      {
        goto LABEL_19;
      }

      if (sub_1730C() == v32 && v36 == v31)
      {
      }

      else
      {
        v37 = sub_17F5C();

        if ((v37 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v30 = v0[10];
      sub_A0A8();
      sub_175AC();
LABEL_19:
      v29 += 2;
      if (!--v28)
      {
        goto LABEL_29;
      }
    }
  }

  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  sub_16A4C(v0[15]);
  sub_17BBC();
  sub_17BDC();
  (*(v11 + 8))(v9, v10);
LABEL_30:
  v45 = v0[18];
  v46 = v0[14];
  v47 = v0[15];
  v49 = v0[10];
  v48 = v0[11];

  v50 = v0[1];

  return v50();
}

uint64_t sub_16810()
{
  v1 = sub_2CFC(&qword_25390, &qword_19F40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = *v0;
  sub_16994();

  sub_17BEC();
  sub_169E8();
  sub_17BAC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1694C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1732C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1731C();
  *a1 = result;
  return result;
}

unint64_t sub_16994()
{
  result = qword_25398;
  if (!qword_25398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25398);
  }

  return result;
}

unint64_t sub_169E8()
{
  result = qword_253A0;
  if (!qword_253A0)
  {
    sub_30D4(&qword_25390, &qword_19F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_253A0);
  }

  return result;
}

uint64_t sub_16A4C(uint64_t a1)
{
  v2 = sub_2CFC(&qword_253A8, &qword_19F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_16AB4(char *a1, int64_t a2, char a3)
{
  result = sub_16AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_16AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CFC(&qword_253B0, &qword_19F58);
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

uint64_t sub_16BF0()
{
  sub_30D4(&qword_25390, &qword_19F40);
  sub_169E8();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_16C54(int a1, int a2, int a3)
{
  if (qword_262D0 == -1)
  {
    v3 = dword_262C0 < a1;
    if (dword_262C0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_171DC();
    a2 = v6;
    a3 = v5;
    v3 = dword_262C0 < a1;
    if (dword_262C0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_262C4 > a2)
  {
    return 1;
  }

  if (dword_262C4 < a2)
  {
    return 0;
  }

  return dword_262C8 >= a3;
}

uint64_t sub_16D14(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_262D8 == -1)
  {
    if (qword_262E0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_171F4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_262E0)
    {
      return _availability_version_check();
    }
  }

  if (qword_262D0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_171DC();
    a3 = v10;
    a4 = v9;
    v8 = dword_262C0 < v11;
    if (dword_262C0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_262C4 > a3)
      {
        return 1;
      }

      if (dword_262C4 >= a3)
      {
        return dword_262C8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_262C0 < a2;
  if (dword_262C0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_16EA8(uint64_t result)
{
  v1 = qword_262E0;
  if (qword_262E0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_262E0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_262C0, &dword_262C4, &dword_262C8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}