uint64_t sub_19B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000;
  if (v4 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6E776F646572 && a2 == 0xEA00000000006461 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656761676E656572 && a2 == 0xEC000000746E656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_19C80(uint64_t *a1)
{
  v36 = sub_1F7C(&qword_34A18, &qword_26560);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v36);
  v40 = &v33 - v3;
  v4 = sub_1F7C(&qword_34A20, &qword_26568);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_1F7C(&qword_34A28, &qword_26570);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_1F7C(&qword_34A30, &qword_26578);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1BB08();
  v17 = v42;
  sub_249E8();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = sub_248E8();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_24868();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(sub_1F7C(&qword_349E8, &qword_26540) + 48);
    *v26 = &type metadata for ConfigurePostbacksState.ConversionType;
    sub_24898();
    sub_24858();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    sub_1B870(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_1BC04();
    v29 = v15;
    sub_24888();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_1BBB0();
    v29 = v15;
    sub_24888();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_1BB5C();
  sub_24888();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1B870(v42);
  return v43;
}

uint64_t sub_1A210(uint64_t *a1)
{
  v29 = sub_1F7C(&qword_349C8, &qword_26528);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_1F7C(&qword_349D0, &qword_26530);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_1F7C(&qword_349D8, &qword_26538);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1BA0C();
  v14 = v31;
  sub_249E8();
  if (v14)
  {
    return sub_1B870(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_248E8();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_24868();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_1F7C(&qword_349E8, &qword_26540) + 48);
    *v22 = &type metadata for ConfigurePostbacksState.ConversionWindows;
    sub_24898();
    sub_24858();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_1B870(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_1BA60();
    sub_24888();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_1BAB4();
    sub_24888();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_1B870(v31);
  return v32;
}

uint64_t sub_1A64C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7305076 && a2 == 0xE300000000000000;
  if (v3 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6565726874 && a2 == 0xE500000000000000 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1920298854 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A760(uint64_t *a1)
{
  v36 = sub_1F7C(&qword_34BD8, &qword_27260);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v36);
  v40 = &v33 - v3;
  v4 = sub_1F7C(&qword_34BE0, &qword_27268);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_1F7C(&qword_34BE8, &qword_27270);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_1F7C(&qword_34BF0, &qword_27278);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1CC18();
  v17 = v42;
  sub_249E8();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = sub_248E8();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_24868();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(sub_1F7C(&qword_349E8, &qword_26540) + 48);
    *v26 = &type metadata for ConfigurePostbacksState.PostbackConfigurationModel.SourceIDDigits;
    sub_24898();
    sub_24858();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    sub_1B870(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_1CD14();
    v29 = v15;
    sub_24888();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_1CCC0();
    v29 = v15;
    sub_24888();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_1CC6C();
  sub_24888();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1B870(v42);
  return v43;
}

uint64_t sub_1ACF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657372616F63 && a2 == 0xE600000000000000 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701734758 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AE08(uint64_t *a1)
{
  v36 = sub_1F7C(&qword_34C18, &qword_27280);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v36);
  v40 = &v33 - v3;
  v4 = sub_1F7C(&qword_34C20, &qword_27288);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_1F7C(&qword_34C28, &qword_27290);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_1F7C(&qword_34C30, &qword_27298);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1CD68();
  v17 = v42;
  sub_249E8();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = sub_248E8();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_24868();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(sub_1F7C(&qword_349E8, &qword_26540) + 48);
    *v26 = &type metadata for ConfigurePostbacksState.PostbackConfigurationModel.ConverisonValueTier;
    sub_24898();
    sub_24858();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    sub_1B870(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_1CE64();
    v29 = v15;
    sub_24888();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_1CE10();
    v29 = v15;
    sub_24888();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_1CDBC();
  sub_24888();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1B870(v42);
  return v43;
}

uint64_t sub_1B398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656372756F73 && a2 == 0xEE00737469676944;
  if (v4 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000000002C190 == a2 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000000002C1B0 == a2 || (sub_24958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000000002C1D0 == a2 || (sub_24958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000000002C1F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B554(uint64_t *a1)
{
  v3 = sub_1F7C(&qword_34990, &qword_26518);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1B81C();
  sub_249E8();
  if (v1)
  {
    return sub_1B870(a1);
  }

  v24 = 0;
  sub_1B8BC();
  sub_248D8();
  v9 = v25;
  v22 = 1;
  sub_1B910();
  sub_248D8();
  v10 = v23;
  v21 = 2;
  v11 = sub_248C8();
  v20 = 3;
  v18 = sub_248C8();
  v19 = 4;
  v13 = sub_248C8();
  (*(v4 + 8))(v7, v3);
  sub_1B870(a1);
  if (v13)
  {
    v14 = 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 0x10000;
  if ((v11 & 1) == 0)
  {
    v16 = 0;
  }

  return v9 | (v10 << 8) | v16 | v15 | v14;
}

void *sub_1B7D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B81C()
{
  result = qword_34998;
  if (!qword_34998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34998);
  }

  return result;
}

uint64_t sub_1B870(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1B8BC()
{
  result = qword_349A0;
  if (!qword_349A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349A0);
  }

  return result;
}

unint64_t sub_1B910()
{
  result = qword_349A8;
  if (!qword_349A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349A8);
  }

  return result;
}

unint64_t sub_1B964()
{
  result = qword_349B8;
  if (!qword_349B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349B8);
  }

  return result;
}

unint64_t sub_1B9B8()
{
  result = qword_349C0;
  if (!qword_349C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349C0);
  }

  return result;
}

unint64_t sub_1BA0C()
{
  result = qword_349E0;
  if (!qword_349E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349E0);
  }

  return result;
}

unint64_t sub_1BA60()
{
  result = qword_349F0;
  if (!qword_349F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349F0);
  }

  return result;
}

unint64_t sub_1BAB4()
{
  result = qword_349F8;
  if (!qword_349F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349F8);
  }

  return result;
}

unint64_t sub_1BB08()
{
  result = qword_34A38;
  if (!qword_34A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A38);
  }

  return result;
}

unint64_t sub_1BB5C()
{
  result = qword_34A40;
  if (!qword_34A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A40);
  }

  return result;
}

unint64_t sub_1BBB0()
{
  result = qword_34A48;
  if (!qword_34A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A48);
  }

  return result;
}

unint64_t sub_1BC04()
{
  result = qword_34A50;
  if (!qword_34A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A50);
  }

  return result;
}

unint64_t sub_1BC58()
{
  result = qword_34A90;
  if (!qword_34A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A90);
  }

  return result;
}

unint64_t sub_1BCAC()
{
  result = qword_34A98;
  if (!qword_34A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A98);
  }

  return result;
}

unint64_t sub_1BD00()
{
  result = qword_34AA0;
  if (!qword_34AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AA0);
  }

  return result;
}

uint64_t sub_1BDCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BE5C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurePostbacksState.CreatePostbackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurePostbacksState.CreatePostbackError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0C0()
{
  result = qword_34AC0;
  if (!qword_34AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AC0);
  }

  return result;
}

unint64_t sub_1C148()
{
  result = qword_34AD8;
  if (!qword_34AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AD8);
  }

  return result;
}

unint64_t sub_1C1A0()
{
  result = qword_34AE0;
  if (!qword_34AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AE0);
  }

  return result;
}

uint64_t sub_1C224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C27C()
{
  result = qword_34AF8;
  if (!qword_34AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AF8);
  }

  return result;
}

unint64_t sub_1C2D4()
{
  result = qword_34B00;
  if (!qword_34B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B00);
  }

  return result;
}

unint64_t sub_1C32C()
{
  result = qword_34B08;
  if (!qword_34B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B08);
  }

  return result;
}

unint64_t sub_1C384()
{
  result = qword_34B10;
  if (!qword_34B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B10);
  }

  return result;
}

unint64_t sub_1C3DC()
{
  result = qword_34B18;
  if (!qword_34B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B18);
  }

  return result;
}

unint64_t sub_1C434()
{
  result = qword_34B20;
  if (!qword_34B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B20);
  }

  return result;
}

unint64_t sub_1C48C()
{
  result = qword_34B28;
  if (!qword_34B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B28);
  }

  return result;
}

unint64_t sub_1C4E4()
{
  result = qword_34B30;
  if (!qword_34B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B30);
  }

  return result;
}

unint64_t sub_1C53C()
{
  result = qword_34B38;
  if (!qword_34B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B38);
  }

  return result;
}

unint64_t sub_1C594()
{
  result = qword_34B40;
  if (!qword_34B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B40);
  }

  return result;
}

unint64_t sub_1C5EC()
{
  result = qword_34B48;
  if (!qword_34B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B48);
  }

  return result;
}

unint64_t sub_1C644()
{
  result = qword_34B50;
  if (!qword_34B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B50);
  }

  return result;
}

unint64_t sub_1C69C()
{
  result = qword_34B58;
  if (!qword_34B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B58);
  }

  return result;
}

unint64_t sub_1C6F4()
{
  result = qword_34B60;
  if (!qword_34B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B60);
  }

  return result;
}

unint64_t sub_1C74C()
{
  result = qword_34B68;
  if (!qword_34B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B68);
  }

  return result;
}

unint64_t sub_1C7A4()
{
  result = qword_34B70;
  if (!qword_34B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B70);
  }

  return result;
}

unint64_t sub_1C7FC()
{
  result = qword_34B78;
  if (!qword_34B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B78);
  }

  return result;
}

unint64_t sub_1C854()
{
  result = qword_34B80;
  if (!qword_34B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B80);
  }

  return result;
}

unint64_t sub_1C8AC()
{
  result = qword_34B88;
  if (!qword_34B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B88);
  }

  return result;
}

unint64_t sub_1C904()
{
  result = qword_34B90;
  if (!qword_34B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B90);
  }

  return result;
}

unint64_t sub_1C95C()
{
  result = qword_34B98;
  if (!qword_34B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B98);
  }

  return result;
}

unint64_t sub_1C9B4()
{
  result = qword_34BA0;
  if (!qword_34BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BA0);
  }

  return result;
}

unint64_t sub_1CA0C()
{
  result = qword_34BA8;
  if (!qword_34BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BA8);
  }

  return result;
}

unint64_t sub_1CA64()
{
  result = qword_34BB0;
  if (!qword_34BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BB0);
  }

  return result;
}

unint64_t sub_1CABC()
{
  result = qword_34BB8;
  if (!qword_34BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BB8);
  }

  return result;
}

unint64_t sub_1CB14()
{
  result = qword_34BC0;
  if (!qword_34BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BC0);
  }

  return result;
}

unint64_t sub_1CB6C()
{
  result = qword_34BC8;
  if (!qword_34BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BC8);
  }

  return result;
}

unint64_t sub_1CBC4()
{
  result = qword_34BD0;
  if (!qword_34BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BD0);
  }

  return result;
}

unint64_t sub_1CC18()
{
  result = qword_34BF8;
  if (!qword_34BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BF8);
  }

  return result;
}

unint64_t sub_1CC6C()
{
  result = qword_34C00;
  if (!qword_34C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C00);
  }

  return result;
}

unint64_t sub_1CCC0()
{
  result = qword_34C08;
  if (!qword_34C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C08);
  }

  return result;
}

unint64_t sub_1CD14()
{
  result = qword_34C10;
  if (!qword_34C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C10);
  }

  return result;
}

unint64_t sub_1CD68()
{
  result = qword_34C38;
  if (!qword_34C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C38);
  }

  return result;
}

unint64_t sub_1CDBC()
{
  result = qword_34C40;
  if (!qword_34C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C40);
  }

  return result;
}

unint64_t sub_1CE10()
{
  result = qword_34C48;
  if (!qword_34C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C48);
  }

  return result;
}

unint64_t sub_1CE64()
{
  result = qword_34C50;
  if (!qword_34C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C50);
  }

  return result;
}

uint64_t sub_1CEF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CF88(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D07C()
{
  result = qword_34C98;
  if (!qword_34C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C98);
  }

  return result;
}

unint64_t sub_1D0D4()
{
  result = qword_34CA0;
  if (!qword_34CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CA0);
  }

  return result;
}

unint64_t sub_1D12C()
{
  result = qword_34CA8;
  if (!qword_34CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CA8);
  }

  return result;
}

unint64_t sub_1D184()
{
  result = qword_34CB0;
  if (!qword_34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CB0);
  }

  return result;
}

unint64_t sub_1D1DC()
{
  result = qword_34CB8;
  if (!qword_34CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CB8);
  }

  return result;
}

unint64_t sub_1D234()
{
  result = qword_34CC0;
  if (!qword_34CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC0);
  }

  return result;
}

unint64_t sub_1D28C()
{
  result = qword_34CC8;
  if (!qword_34CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC8);
  }

  return result;
}

unint64_t sub_1D2E4()
{
  result = qword_34CD0;
  if (!qword_34CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CD0);
  }

  return result;
}

unint64_t sub_1D33C()
{
  result = qword_34CD8;
  if (!qword_34CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CD8);
  }

  return result;
}

unint64_t sub_1D394()
{
  result = qword_34CE0;
  if (!qword_34CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CE0);
  }

  return result;
}

unint64_t sub_1D3EC()
{
  result = qword_34CE8;
  if (!qword_34CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CE8);
  }

  return result;
}

unint64_t sub_1D444()
{
  result = qword_34CF0;
  if (!qword_34CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CF0);
  }

  return result;
}

unint64_t sub_1D49C()
{
  result = qword_34CF8;
  if (!qword_34CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CF8);
  }

  return result;
}

unint64_t sub_1D4F4()
{
  result = qword_34D00;
  if (!qword_34D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D00);
  }

  return result;
}

unint64_t sub_1D54C()
{
  result = qword_34D08;
  if (!qword_34D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D08);
  }

  return result;
}

unint64_t sub_1D5A4()
{
  result = qword_34D10;
  if (!qword_34D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D10);
  }

  return result;
}

unint64_t sub_1D5FC()
{
  result = qword_34D18;
  if (!qword_34D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D18);
  }

  return result;
}

unint64_t sub_1D654()
{
  result = qword_34D20;
  if (!qword_34D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D20);
  }

  return result;
}

__n128 sub_1D77C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D7A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_1D7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D87C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x6B63616274736F70;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7463617265746E69;
    if (a1 != 5)
    {
      v7 = 0x69737265766E6F63;
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
    v1 = 0x4449656C646E7562;
    v2 = 0x6C7074656B72616DLL;
    v3 = 0x4449656372756F73;
    if (a1 != 3)
    {
      v3 = 0x437972746E756F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B63616274736F70;
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

uint64_t sub_1D9F4(void *a1)
{
  v3 = v1;
  v5 = sub_1F7C(&qword_34D60, &qword_27A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1E918();
  sub_249F8();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  sub_24908();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v24) = 1;
    sub_24908();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v24) = 2;
    sub_24908();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v24) = 3;
    sub_24908();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v24) = 4;
    sub_24908();
    LOBYTE(v24) = *(v3 + 80);
    v25 = 5;
    sub_1EAF4();
    sub_24918();
    LOBYTE(v24) = *(v3 + 81);
    v25 = 6;
    sub_1EB48();
    sub_24918();
    LOBYTE(v24) = *(v3 + 82);
    v25 = 7;
    sub_1EB9C();
    sub_24918();
    v21 = v3[11];
    v22 = v3[12];
    LOBYTE(v24) = 8;
    sub_24908();
    v24 = v3[13];
    v25 = 9;
    sub_1F7C(&qword_346F0, &qword_257F8);
    sub_1EBF0(&qword_34D80, sub_1EC68);
    sub_24918();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD94(uint64_t a1)
{
  v2 = sub_1E918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DDD0(uint64_t a1)
{
  v2 = sub_1E918();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1DE0C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1D0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1DE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEB000000004C5255 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361 || (sub_24958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xEC00000074786554 || (sub_24958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_24958() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_24958() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (sub_24958() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000002C210 == a2 || (sub_24958() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000002C230 == a2 || (sub_24958() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xE900000000000073)
  {

    return 9;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E1D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1F7C(&qword_34D28, &unk_279F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_1B7D8(a1, a1[3]);
  sub_1E918();
  sub_249E8();
  if (v2)
  {
    return sub_1B870(a1);
  }

  LOBYTE(v56[0]) = 0;
  v12 = sub_248A8();
  v48 = v13;
  LOBYTE(v56[0]) = 1;
  v14 = sub_248A8();
  v47 = v15;
  v16 = v14;
  LOBYTE(v56[0]) = 2;
  v43 = sub_248A8();
  v46 = v17;
  LOBYTE(v56[0]) = 3;
  v41 = sub_248A8();
  v42 = v16;
  v45 = v18;
  LOBYTE(v56[0]) = 4;
  v39 = sub_248A8();
  v44 = v19;
  LOBYTE(v49) = 5;
  sub_1E96C();
  sub_248B8();
  v20 = v56[0];
  LOBYTE(v49) = 6;
  sub_1E9C0();
  sub_248B8();
  v40 = 0;
  v21 = LOBYTE(v56[0]);
  LOBYTE(v49) = 7;
  sub_1EA14();
  v22 = v40;
  sub_248B8();
  if (v22)
  {
    v40 = v22;
    (*(v6 + 8))(v9, v5);
    sub_1B870(a1);
    v24 = 0;
  }

  else
  {
    v38 = v21;
    v37 = LOBYTE(v56[0]);
    LOBYTE(v56[0]) = 8;
    v36 = sub_248A8();
    v40 = 0;
    v25 = v23;
    sub_1F7C(&qword_346F0, &qword_257F8);
    v63 = 9;
    sub_1EBF0(&qword_34D50, sub_1EA68);
    v26 = v40;
    sub_248B8();
    v40 = v26;
    if (!v26)
    {
      (*(v6 + 8))(v9, v5);
      v35 = v64;
      *&v49 = v12;
      v27 = v48;
      *(&v49 + 1) = v48;
      *&v50 = v42;
      v28 = v47;
      *(&v50 + 1) = v47;
      *&v51 = v43;
      v29 = v46;
      *(&v51 + 1) = v46;
      *&v52 = v41;
      v30 = v45;
      *(&v52 + 1) = v45;
      *&v53 = v39;
      *(&v53 + 1) = v44;
      LOBYTE(v54) = v20;
      BYTE1(v54) = v38;
      BYTE2(v54) = v37;
      *(&v54 + 1) = v36;
      *&v55 = v25;
      *(&v55 + 1) = v64;
      sub_1EABC(&v49, v56);
      sub_1B870(a1);
      v56[0] = v12;
      v56[1] = v27;
      v56[2] = v42;
      v56[3] = v28;
      v56[4] = v43;
      v56[5] = v29;
      v56[6] = v41;
      v56[7] = v30;
      v56[8] = v39;
      v56[9] = v44;
      v57 = v20;
      v58 = v38;
      v59 = v37;
      v60 = v36;
      v61 = v25;
      v62 = v35;
      result = sub_18EEC(v56);
      v31 = v54;
      a2[4] = v53;
      a2[5] = v31;
      a2[6] = v55;
      v32 = v50;
      *a2 = v49;
      a2[1] = v32;
      v33 = v52;
      a2[2] = v51;
      a2[3] = v33;
      return result;
    }

    (*(v6 + 8))(v9, v5);
    sub_1B870(a1);
    v24 = 1;
  }

  if (v24)
  {
  }

  return result;
}

unint64_t sub_1E918()
{
  result = qword_34D30;
  if (!qword_34D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D30);
  }

  return result;
}

unint64_t sub_1E96C()
{
  result = qword_34D38;
  if (!qword_34D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D38);
  }

  return result;
}

unint64_t sub_1E9C0()
{
  result = qword_34D40;
  if (!qword_34D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D40);
  }

  return result;
}

unint64_t sub_1EA14()
{
  result = qword_34D48;
  if (!qword_34D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D48);
  }

  return result;
}

unint64_t sub_1EA68()
{
  result = qword_34D58;
  if (!qword_34D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D58);
  }

  return result;
}

unint64_t sub_1EAF4()
{
  result = qword_34D68;
  if (!qword_34D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D68);
  }

  return result;
}

unint64_t sub_1EB48()
{
  result = qword_34D70;
  if (!qword_34D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D70);
  }

  return result;
}

unint64_t sub_1EB9C()
{
  result = qword_34D78;
  if (!qword_34D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D78);
  }

  return result;
}

uint64_t sub_1EBF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_26B8(&qword_346F0, &qword_257F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1EC68()
{
  result = qword_34D88;
  if (!qword_34D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostbackConfigurationCache.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PostbackConfigurationCache.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1EE10()
{
  result = qword_34D90;
  if (!qword_34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D90);
  }

  return result;
}

unint64_t sub_1EE68()
{
  result = qword_34D98;
  if (!qword_34D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D98);
  }

  return result;
}

unint64_t sub_1EEC0()
{
  result = qword_34DA0[0];
  if (!qword_34DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_34DA0);
  }

  return result;
}

uint64_t sub_1EF14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1EF5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1EF70(uint64_t *a1, int a2)
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

uint64_t sub_1EFB8(uint64_t result, int a2, int a3)
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

uint64_t sub_1F09C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = sub_24538();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_26B8(&qword_34650, &qword_256C8);
  v9 = sub_24128();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v27 = &v26 - v14;
  v15 = *(v2 + 8);
  v16 = *(v2 + 24);
  v36 = *(v2 + 32);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v3;
  v18 = *(v2 + 16);
  *(v17 + 32) = *v2;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(v2 + 32);
  v30 = v4;
  v31 = v3;
  v32 = v2;

  sub_465C(&v36, &v35, &qword_34E28, &qword_27C00);
  sub_24528();
  v35 = v36;
  sub_1F7C(&qword_34E28, &qword_27C00);
  sub_244F8();
  WitnessTable = swift_getWitnessTable();
  v20 = v26;
  sub_244A8();
  (*(v28 + 8))(v8, v5);
  v21 = sub_1FD30();
  v33 = WitnessTable;
  v34 = v21;
  swift_getWitnessTable();
  v22 = v10[2];
  v23 = v27;
  v22(v27, v20, v9);
  v24 = v10[1];
  v24(v20, v9);
  v22(v29, v23, v9);
  return (v24)(v23, v9);
}

uint64_t sub_1F3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1F7C(&qword_34E30, &qword_27C08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17[-v8];
  v18 = *(a1 + 32);
  v19 = v18;
  v17[15] = 1;
  sub_1F7C(&qword_34E28, &qword_27C00);
  sub_24508();
  v10 = sub_247D8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  sub_247B8();

  sub_465C(&v19, &v18, &qword_34E28, &qword_27C00);
  v13 = sub_247A8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  v15 = *(a1 + 16);
  *(v14 + 48) = *a1;
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 32);
  sub_1F884(0, 0, v9, &unk_27C18, v14);
}

uint64_t sub_1F5A4(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v4[4] = a4;
  v4[5] = sub_247B8();
  v4[6] = sub_247A8();
  v6 = a4[1];
  v10 = (*a4 + **a4);
  v7 = (*a4)[1];
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_1F6B0;

  return v10();
}

uint64_t sub_1F6B0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_24798();

  return _swift_task_switch(sub_1F7EC, v5, v4);
}

uint64_t sub_1F7EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  *(v0 + 16) = *(v2 + 32);
  *(v0 + 64) = 0;
  sub_1F7C(&qword_34E28, &qword_27C00);
  sub_24508();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1F7C(&qword_34E30, &qword_27C08);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_465C(a3, v27 - v11, &qword_34E30, &qword_27C08);
  v13 = sub_247D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1FEA8(v12);
  }

  else
  {
    sub_247C8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24798();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_246C8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1FEA8(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1FEA8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1FB54@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12 = *(v9 + 24);
  (*(v9 + 16))();
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_1FC94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_1F09C(a1, a2);
}

uint64_t sub_1FCD0()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1FD24@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1FB54(v1[2], a1);
}

unint64_t sub_1FD30()
{
  result = qword_34648;
  if (!qword_34648)
  {
    sub_26B8(&qword_34650, &qword_256C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34648);
  }

  return result;
}

uint64_t sub_1FD94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1FDE4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_4440;

  return sub_1F5A4(a1, v6, v7, (v1 + 48));
}

uint64_t sub_1FEA8(uint64_t a1)
{
  v2 = sub_1F7C(&qword_34E30, &qword_27C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1FF10(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20008;

  return v7(a1);
}

uint64_t sub_20008()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20100(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4750;

  return sub_1FF10(a1, v5);
}

uint64_t sub_201B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_201F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4440;

  return sub_1FF10(a1, v5);
}

uint64_t sub_202D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24538();
  sub_26B8(&qword_34650, &qword_256C8);
  sub_24128();
  swift_getWitnessTable();
  sub_1FD30();
  return swift_getWitnessTable();
}

void sub_20384()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "viewDidLoad");
  sub_41DC();
  v2 = sub_24808();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v21._countAndFlagsBits = 0x800000000002C2E0;
  v23._object = 0x800000000002C2C0;
  v23._countAndFlagsBits = 0xD000000000000015;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v4.super.isa = v3;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_23EA8(v23, v24, v4, v25, v21);

  v5 = sub_246A8();

  [v1 setTitle:v5];

  v6 = type metadata accessor for ConfigurePostbacksState();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_12D98();
  sub_244E8();
  _s33AdAttributionKitDeveloperSettings26DevelopmentPostbacksDetailV18_isBundleIDFocused33_EF722FB03566D159747AA8BC9A477F967SwiftUI10FocusStateVySbGvpfi_0();
  v9 = objc_allocWithZone(sub_1F7C(qword_34E60, qword_27C98));
  v10 = sub_24248();
  v11 = [v10 view];
  if (!v11)
  {
    v12 = v10;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview:v12];

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      [v12 setFrame:{0.0, 0.0, v18, v20}];
      [v12 setAutoresizingMask:18];
      [v1 addChildViewController:v10];
      [v10 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20788()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_207EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_245E8();
  if (v2 <= 0x3F)
  {
    sub_20C80();
    if (v3 <= 0x3F)
    {
      sub_20CD0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2089C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((((((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-33 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 32) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    if ((*(a1 + 16) >> 1) > 0x80000000)
    {
      return -(*(a1 + 16) >> 1);
    }

    return 0;
  }

  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = *(a1 + v10);
  if (!v16)
  {
    goto LABEL_31;
  }

LABEL_27:
  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_20A34(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
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

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          result[2] = 0;
          result[3] = 0;
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          *result = 0;
          result[1] = 0;
          result[2] = 2 * -a2;
          result[3] = 0;
        }
      }

      else
      {
        v18 = *(v5 + 56);
        v19 = (v8 + ((((result + (v8 | 7) + 32) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v18(v19);
      }

      return result;
    }
  }

  if (((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_20C80()
{
  result = qword_34EE8;
  if (!qword_34EE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_34EE8);
  }

  return result;
}

void sub_20CD0()
{
  if (!qword_34EF0)
  {
    sub_26B8(&qword_34EF8, qword_27CD0);
    v0 = sub_24818();
    if (!v1)
    {
      atomic_store(v0, &qword_34EF0);
    }
  }
}

uint64_t sub_20D34(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = __chkstk_darwin(a1);
  v8(v7);
  return sub_24638();
}

uint64_t sub_20E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = __chkstk_darwin(a1);
  v7();
  return sub_24108();
}

uint64_t sub_20F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1 + 5;
  v39 = a1 + 7;
  v37 = a1[3];
  v36 = sub_240F8();
  v3 = a1[2];
  v51 = sub_24778();
  v52 = v3;
  v4 = v3;
  v53 = v37;
  WitnessTable = swift_getWitnessTable();
  v55 = a1[6];
  sub_24608();
  v35 = a1[8];
  v57 = v35;
  v56 = swift_getWitnessTable();
  v34 = v55;
  sub_24558();
  sub_24198();
  v5 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = v5;
  WitnessTable = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = swift_getOpaqueTypeMetadata2();
  v51 = OpaqueTypeMetadata2;
  v52 = OpaqueTypeConformance2;
  v9 = swift_getOpaqueTypeConformance2();
  v10 = *(v55 + 8);
  v51 = v8;
  v52 = v4;
  v32 = v4;
  v53 = v9;
  WitnessTable = v10;
  swift_getOpaqueTypeMetadata2();
  v33 = a1[4];
  sub_24648();
  v51 = v8;
  v52 = v4;
  v53 = v9;
  WitnessTable = v10;
  v11 = swift_getOpaqueTypeConformance2();
  v31 = a1[9];
  v48 = &protocol witness table for EmptyView;
  v49 = v11;
  v50 = v31;
  swift_getWitnessTable();
  sub_24328();
  swift_getWitnessTable();
  v12 = swift_getOpaqueTypeMetadata2();
  v14 = v35;
  v13 = v36;
  v46 = &protocol witness table for Text;
  v47 = v35;
  v51 = v36;
  v52 = v12;
  v53 = swift_getWitnessTable();
  WitnessTable = swift_getOpaqueTypeConformance2();
  v15 = sub_24118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v30 - v21;
  *&v24 = v32;
  *&v23 = v33;
  *(&v23 + 1) = *v38;
  *(&v24 + 1) = v37;
  *&v25 = v34;
  *(&v25 + 1) = *v39;
  v44[1] = v24;
  v44[2] = v23;
  *&v26 = v14;
  *(&v26 + 1) = v31;
  v44[3] = v25;
  v44[4] = v26;
  v45 = v40;
  v42[1] = v24;
  v42[2] = v23;
  v42[3] = v25;
  v42[4] = v26;
  v43 = v40;
  sub_20E50(sub_234EC, v44, sub_23504, v42, v13, v12);
  v27 = swift_getWitnessTable();
  sub_2037C(v20, v15, v27);
  v28 = *(v16 + 8);
  v28(v20, v15);
  sub_2037C(v22, v15, v27);
  return (v28)(v22, v15);
}

uint64_t sub_21424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a8;
  v61 = a7;
  v59 = a5;
  v58 = a3;
  v60 = a1;
  v62 = a9;
  sub_24778();
  swift_getWitnessTable();
  sub_24608();
  v83 = a8;
  v76 = a6;
  WitnessTable = swift_getWitnessTable();
  v56 = a6;
  sub_24558();
  sub_24198();
  v14 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = v14;
  v75 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = *(a6 + 8);
  swift_getOpaqueTypeMetadata2();
  v18 = sub_24648();
  v80 = &protocol witness table for EmptyView;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = a10;
  v51 = v18;
  v48 = swift_getWitnessTable();
  v72 = &type metadata for Never;
  v73 = v18;
  v74 = &protocol witness table for Never;
  v75 = v48;
  v19 = sub_24328();
  v49 = v19;
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  __chkstk_darwin(v19);
  v22 = &v45 - v21;
  v50 = swift_getWitnessTable();
  v72 = v19;
  v73 = v50;
  v52 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v53 = swift_getOpaqueTypeMetadata2();
  v54 = *(v53 - 8);
  v23 = *(v54 + 64);
  v24 = __chkstk_darwin(v53);
  v46 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v47 = &v45 - v26;
  v63 = a2;
  v27 = v58;
  v64 = v58;
  v28 = a4;
  v65 = a4;
  v29 = v59;
  v30 = v56;
  v66 = v59;
  v67 = v56;
  v31 = v61;
  v32 = v57;
  v68 = v61;
  v69 = v57;
  v70 = a10;
  v71 = v60;
  sub_24318();
  v72 = a2;
  v73 = v27;
  v74 = v28;
  v75 = v29;
  v76 = v30;
  WitnessTable = v31;
  v78 = v32;
  v79 = a10;
  type metadata accessor for PickerDetail();
  v33 = sub_22FE8();
  v35 = v34;
  LOBYTE(v32) = v36;
  v37 = v46;
  v38 = v49;
  v39 = v50;
  sub_243F8();
  sub_439C(v33, v35, v32 & 1);

  (*(v55 + 8))(v22, v38);
  v72 = v38;
  v73 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v47;
  v42 = v53;
  sub_2037C(v37, v53, v40);
  v43 = *(v54 + 8);
  v43(v37, v42);
  sub_2037C(v41, v42, v40);
  return (v43)(v41, v42);
}

uint64_t sub_21A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a8;
  v39 = a3;
  v42 = a1;
  v43 = a7;
  v41 = a5;
  v44 = a9;
  v40 = a10;
  sub_24778();
  swift_getWitnessTable();
  sub_24608();
  v53 = a8;
  v51 = a6;
  WitnessTable = swift_getWitnessTable();
  v14 = a6;
  sub_24558();
  sub_24198();
  v15 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = v15;
  v50 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = swift_getOpaqueTypeMetadata2();
  v47 = OpaqueTypeMetadata2;
  v48 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v14;
  v35 = *(v14 + 8);
  v47 = v36;
  v48 = a2;
  v49 = v18;
  v50 = v35;
  v37 = swift_getOpaqueTypeMetadata2();
  v20 = a4;
  v21 = sub_24648();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v35 - v27;
  v46[2] = a2;
  v46[3] = v39;
  v46[4] = v20;
  v46[5] = v41;
  v29 = v19;
  v46[6] = v19;
  v46[7] = v43;
  v30 = v40;
  v46[8] = v38;
  v46[9] = v40;
  v46[10] = v42;
  v45[2] = a2;
  v45[3] = v39;
  v45[4] = v20;
  v45[5] = v41;
  v45[6] = v29;
  v45[7] = v43;
  v45[8] = v38;
  v45[9] = v40;
  v45[10] = v42;
  v47 = v36;
  v48 = a2;
  v49 = v18;
  v50 = v35;
  v31 = swift_getOpaqueTypeConformance2();
  sub_20D80(sub_23608, v46, sub_23620, v45, v37, v20);
  v46[11] = &protocol witness table for EmptyView;
  v46[12] = v31;
  v46[13] = v30;
  v32 = swift_getWitnessTable();
  sub_2037C(v26, v21, v32);
  v33 = *(v22 + 8);
  v33(v26, v21);
  sub_2037C(v28, v21, v32);
  return (v33)(v28, v21);
}

uint64_t sub_21DFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v113 = a7;
  v112 = a5;
  v111 = a4;
  v101 = a1;
  v107 = a9;
  v110 = a10;
  v124 = a2;
  v125 = a3;
  v109 = a3;
  v126 = a4;
  v127 = a5;
  v128 = a6;
  v129 = a7;
  v130 = a8;
  v131 = a10;
  v108 = a8;
  v14 = type metadata accessor for PickerDetail();
  v75 = v14;
  v104 = *(v14 - 8);
  v105 = *(v104 + 64);
  v15 = __chkstk_darwin(v14);
  v103 = &v72 - v16;
  v106 = *(a2 - 1);
  v17 = *(v106 + 64);
  __chkstk_darwin(v15);
  v102 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24198();
  v100 = *(v19 - 8);
  v20 = *(v100 + 64);
  __chkstk_darwin(v19);
  v99 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_245E8();
  v97 = *(v98 - 8);
  v22 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v72 - v23;
  v24 = sub_24778();
  WitnessTable = swift_getWitnessTable();
  v124 = v24;
  v125 = a2;
  v126 = a3;
  v127 = WitnessTable;
  v128 = a6;
  v26 = sub_24608();
  v90 = v26;
  v123 = a8;
  v88 = swift_getWitnessTable();
  v124 = &type metadata for Text;
  v125 = a2;
  v126 = v26;
  v127 = &protocol witness table for Text;
  v128 = a6;
  v129 = v88;
  v27 = sub_24558();
  v95 = *(v27 - 8);
  v28 = *(v95 + 64);
  __chkstk_darwin(v27);
  v87 = &v72 - v29;
  v30 = swift_getWitnessTable();
  v124 = v27;
  v125 = v19;
  v81 = v19;
  v126 = v30;
  v127 = &protocol witness table for InlinePickerStyle;
  v31 = v30;
  v82 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  v33 = *(v89 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v80 = &v72 - v34;
  v124 = v27;
  v125 = v19;
  v126 = v31;
  v127 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  v76 = OpaqueTypeMetadata2;
  v124 = OpaqueTypeMetadata2;
  v125 = OpaqueTypeConformance2;
  v37 = OpaqueTypeConformance2;
  v77 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeMetadata2();
  v86 = v38;
  v94 = *(v38 - 8);
  v39 = *(v94 + 64);
  __chkstk_darwin(v38);
  v78 = &v72 - v40;
  v124 = v36;
  v125 = v37;
  v85 = swift_getOpaqueTypeConformance2();
  v84 = *(a6 + 8);
  v124 = v38;
  v125 = a2;
  v126 = v85;
  v127 = v84;
  v91 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v92 = swift_getOpaqueTypeMetadata2();
  v93 = *(v92 - 8);
  v41 = *(v93 + 64);
  v42 = __chkstk_darwin(v92);
  v79 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v83 = &v72 - v44;
  sub_24208();
  v73 = *(v14 + 84);
  v45 = v101;
  (*(v97 + 16))(v96, v101 + v73, v98);
  v114 = a2;
  v115 = v109;
  v116 = v111;
  v117 = v112;
  v74 = a6;
  v118 = a6;
  v119 = v113;
  v120 = v108;
  v121 = v110;
  v122 = v45;
  v46 = v87;
  sub_24548();
  v47 = v99;
  sub_24188();
  v48 = v80;
  v49 = v81;
  sub_243A8();
  (*(v100 + 8))(v47, v49);
  (*(v95 + 8))(v46, v27);
  v50 = v78;
  v51 = v76;
  sub_243D8();
  (*(v89 + 8))(v48, v51);
  v52 = v102;
  sub_24578();
  v53 = v104;
  v54 = v103;
  v55 = v75;
  (*(v104 + 16))(v103, v45, v75);
  v56 = v53;
  v57 = (*(v53 + 80) + 80) & ~*(v53 + 80);
  v58 = swift_allocObject();
  v59 = v109;
  *(v58 + 2) = a2;
  *(v58 + 3) = v59;
  v60 = v112;
  *(v58 + 4) = v111;
  *(v58 + 5) = v60;
  v61 = v113;
  *(v58 + 6) = v74;
  *(v58 + 7) = v61;
  v62 = v110;
  *(v58 + 8) = v108;
  *(v58 + 9) = v62;
  (*(v56 + 32))(&v58[v57], v54, v55);
  v63 = v79;
  v64 = v86;
  v65 = v85;
  v66 = v84;
  sub_244B8();

  (*(v106 + 8))(v52, a2);
  (*(v94 + 8))(v50, v64);
  v124 = v64;
  v125 = a2;
  v126 = v65;
  v127 = v66;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v83;
  v69 = v92;
  sub_2037C(v63, v92, v67);
  v70 = *(v93 + 8);
  v70(v63, v69);
  sub_2037C(v68, v69, v67);
  return (v70)(v68, v69);
}

uint64_t sub_2289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a7;
  v55 = a4;
  v60 = a1;
  v61 = a9;
  v54 = a10;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v75 = a6;
  v76 = a7;
  v77 = a8;
  v78 = a10;
  v46 = a8;
  v59 = type metadata accessor for PickerDetail();
  v15 = *(v59 - 8);
  v57 = *(v15 + 64);
  __chkstk_darwin(v59);
  v17 = &v44 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v20 = sub_24778();
  v53 = v20;
  WitnessTable = swift_getWitnessTable();
  v71 = v20;
  v72 = a2;
  v73 = a3;
  v74 = WitnessTable;
  v75 = a6;
  v45 = a6;
  v49 = sub_24608();
  v58 = *(v49 - 8);
  v21 = *(v58 + 64);
  v22 = __chkstk_darwin(v49);
  v50 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v51 = &v44 - v24;
  sub_24848();
  v47 = a5;
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = sub_24788();
  v62 = a2;
  v63 = a3;
  v26 = v55;
  v64 = v55;
  v65 = a5;
  v66 = a6;
  v27 = v56;
  v67 = v56;
  v68 = a8;
  v28 = v54;
  v69 = v54;
  KeyPath = swift_getKeyPath();
  v29 = v15;
  v30 = *(v15 + 16);
  v31 = v17;
  v32 = v59;
  v30(v17, v60, v59);
  v33 = (*(v29 + 80) + 80) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = a2;
  *(v34 + 3) = a3;
  v35 = v47;
  *(v34 + 4) = v26;
  *(v34 + 5) = v35;
  *(v34 + 6) = v45;
  *(v34 + 7) = v27;
  v36 = v46;
  *(v34 + 8) = v46;
  *(v34 + 9) = v28;
  (*(v29 + 32))(&v34[v33], v31, v32);
  v37 = v50;
  sub_245F8();
  v70 = v36;
  v38 = v49;
  v39 = swift_getWitnessTable();
  v40 = v51;
  v41 = v37;
  sub_2037C(v37, v38, v39);
  v42 = *(v58 + 8);
  v42(v41, v38);
  sub_2037C(v40, v38, v39);
  return (v42)(v40, v38);
}

uint64_t sub_22D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v30 - v17;
  v30[0] = v19;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  v30[5] = v24;
  v30[6] = a9;
  v30[7] = v25;
  v26 = a2 + *(type metadata accessor for PickerDetail() + 88);
  v27 = *(v26 + 8);
  (*v26)(a1);
  sub_2037C(v16, a4, a9);
  v28 = *(v12 + 8);
  v28(v16, a4);
  sub_2037C(v18, a4, a9);
  return (v28)(v18, a4);
}

uint64_t sub_22E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v29 - v16;
  v29[0] = v18;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v29[7] = a9;
  v25 = a1 + *(type metadata accessor for PickerDetail() + 92);
  v26 = *(v25 + 8);
  (*v25)();
  sub_2037C(v15, a4, a9);
  v27 = *(v11 + 8);
  v27(v15, a4);
  sub_2037C(v17, a4, a9);
  return (v27)(v17, a4);
}

uint64_t sub_22FE8()
{
  v1 = *v0;
  if (v0[2] < 0)
  {
    v4 = *v0;
    v5 = v0[1];
    sub_2359C();

    return sub_24358();
  }

  else
  {
    v2 = v0[3];

    return sub_24348();
  }
}

uint64_t sub_23094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a7;
  v27 = a6;
  v26 = a1;
  v29 = a9;
  v15 = sub_240F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v26 - v21;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = v27;
  v44 = v28;
  v45 = a8;
  v46 = a10;
  v47 = v26;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v27;
  v35 = v28;
  v36 = a8;
  v37 = a10;
  v38 = v26;
  sub_240E8();
  v48 = &protocol witness table for Text;
  v49 = a8;
  WitnessTable = swift_getWitnessTable();
  sub_2037C(v20, v15, WitnessTable);
  v24 = *(v16 + 8);
  v24(v20, v15);
  sub_2037C(v22, v15, WitnessTable);
  return (v24)(v22, v15);
}

uint64_t sub_232D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v40 = a5;
  v8 = *(a2 - 8);
  v38 = a4;
  v39 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v10);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  v46 = v26;
  v47 = v27;
  v48 = v28;
  v29 = type metadata accessor for PickerDetail();
  v30 = *(v29 + 84);
  v31 = a1 + *(v29 + 88);
  v32 = *v31;
  v33 = *(v31 + 8);
  sub_245E8();
  sub_24578();
  v32(v12);
  (*(v39 + 8))(v12, a2);
  v34 = v38;
  sub_2037C(v18, a3, v38);
  v35 = *(v14 + 8);
  v35(v18, a3);
  sub_2037C(v20, a3, v34);
  return (v35)(v20, a3);
}

uint64_t sub_23534@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 64);
  type metadata accessor for PickerDetail();
  result = sub_22FE8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_2359C()
{
  result = qword_34F00;
  if (!qword_34F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F00);
  }

  return result;
}

uint64_t sub_23694(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if ((a3 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_236E4(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[7];
  v8 = v2[8];
  v7 = v2[9];
  v9 = *(type metadata accessor for PickerDetail() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  result = type metadata accessor for PickerDetail();
  v12 = v2 + *(result + 96) + v10;
  if (*v12)
  {
    v13 = *(v12 + 1);
    return (*v12)(a1, a2);
  }

  return result;
}

uint64_t sub_237D0()
{
  v14 = v0[1];
  v15 = v0[2];
  v16 = v0[3];
  v17 = v0[4];
  v1 = (type metadata accessor for PickerDetail() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 80) & ~*(*v1 + 80)));
  v4 = v3[3];
  sub_23694(*v3, v3[1], v3[2]);
  v5 = v3 + v1[23];
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = sub_245E8();
  (*(*(v14 - 8) + 8))(&v5[*(v8 + 32)], v14);
  v9 = *(v3 + v1[24] + 8);

  v10 = *(v3 + v1[25] + 8);

  v11 = (v3 + v1[26]);
  if (*v11)
  {
    v12 = v11[1];
  }

  return swift_deallocObject();
}

uint64_t sub_23934(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = *(type metadata accessor for PickerDetail() - 8);
  return sub_22D20(a1, v1 + ((*(v10 + 80) + 80) & ~*(v10 + 80)), v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_23A08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[4];
  v4 = a1[6];
  v7 = a1[2];
  v8 = a1[7];
  sub_240F8();
  sub_24778();
  swift_getWitnessTable();
  sub_24608();
  swift_getWitnessTable();
  sub_24558();
  sub_24198();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v5 = *(v3 + 8);
  swift_getOpaqueTypeMetadata2();
  sub_24648();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24328();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_24118();
  return swift_getWitnessTable();
}

uint64_t sub_23D64()
{
  v0 = sub_24048();
  sub_23DE4(v0, qword_38D60);
  sub_17824(v0, qword_38D60);
  return sub_24038();
}

uint64_t *sub_23DE4(uint64_t a1, uint64_t *a2)
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