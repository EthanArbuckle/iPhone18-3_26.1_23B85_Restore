uint64_t sub_23BF6BFE4()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF6C068()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BF6C0D8()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF6C158@<X0>(char *a1@<X8>)
{
  v2 = sub_23BFFAB70();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23BF6C1B8(uint64_t *a1@<X8>)
{
  v2 = 0x6E656D6E67696C61;
  if (*v1)
  {
    v2 = 0x656C616373;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23BF6C1F8()
{
  if (*v0)
  {
    return 0x656C616373;
  }

  else
  {
    return 0x6E656D6E67696C61;
  }
}

uint64_t sub_23BF6C234@<X0>(char *a1@<X8>)
{
  v2 = sub_23BFFAB70();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_23BF6C2B0(uint64_t a1)
{
  v2 = sub_23BF6D04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF6C2EC(uint64_t a1)
{
  v2 = sub_23BF6D04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BF6C3F4()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  sub_23BF4A264(&unk_27E1E1BD0);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (!v1)
  {
    return 2;
  }

  if (v1 == 3)
  {
    v2 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
    if (!v2)
    {
      return v2;
    }

    if (v2 == 1)
    {
      return 2;
    }
  }

  result = sub_23BFFACB0();
  __break(1u);
  return result;
}

uint64_t sub_23BF6C494()
{
  sub_23BF6D720();
  v0 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v0);

  MEMORY[0x23EEC3090](8236, 0xE200000000000000);
  sub_23BF6D774();
  v1 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v1);

  MEMORY[0x23EEC3090](41, 0xE100000000000000);
  return 40;
}

id sub_23BF6C584(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_23BFFA2C0();

  return v5;
}

uint64_t sub_23BF6C5F4()
{
  sub_23BF6D720();
  v2 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  sub_23BF6D774();
  v0 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v0);

  return v2;
}

id sub_23BF6C6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanTimeLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF6C720(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E0E38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF6D04C();
  sub_23BFFAE40();
  v11 = *(v3 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  HIBYTE(v10) = 0;
  sub_23BF6D678();
  sub_23BFFAC50();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
    HIBYTE(v10) = 1;
    sub_23BF6D6CC();
    sub_23BFFAC50();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_23BF6C8C4(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E0E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = sub_23BF4C484(a1, a1[3]);
  sub_23BF6D04C();
  sub_23BFFAE20();
  if (v2)
  {
    sub_23BF4A9A4(a1);
    type metadata accessor for ParmesanTimeLayout();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_23BF6D0A0();
    sub_23BFFABE0();
    *&v3[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = v15;
    v14 = 1;
    sub_23BF6D0F4();
    sub_23BFFABE0();
    *&v3[OBJC_IVAR___NTKParmesanTimeLayout_scale] = v15;
    v11 = type metadata accessor for ParmesanTimeLayout();
    v13.receiver = v3;
    v13.super_class = v11;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_23BF4A9A4(a1);
  }

  return v9;
}

void *sub_23BF6CAEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanTimeLayout());
  result = sub_23BF6C8C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_23BF6CB64(uint64_t a1)
{
  sub_23BF6D608(a1, v6);
  if (v7)
  {
    type metadata accessor for ParmesanTimeLayout();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) == *&v5[OBJC_IVAR___NTKParmesanTimeLayout_alignment])
      {
        v2 = *(v1 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
        v3 = *&v5[OBJC_IVAR___NTKParmesanTimeLayout_scale];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_23BF6D5A0(v6);
  }

  return 0;
}

uint64_t sub_23BF6CD74()
{
  if (!*v0)
  {
    return 0x676E696461656CLL;
  }

  if (*v0 == 1)
  {
    return 0x676E696C69617274;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

uint64_t sub_23BF6CDF8()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6C6C616D7378;
    }

    if (v1 == 1)
    {
      return 0x6C6C616D73;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x6D756964656DLL;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_23BFFACF0();
    __break(1u);
    return result;
  }

  return 0x656772616CLL;
}

unint64_t sub_23BF6CEEC()
{
  result = qword_27E1E0DD8;
  if (!qword_27E1E0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0DD8);
  }

  return result;
}

unint64_t sub_23BF6CF44()
{
  result = qword_27E1E0DE0;
  if (!qword_27E1E0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0DE0);
  }

  return result;
}

uint64_t sub_23BF6CFF8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BF4A2D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BF6D04C()
{
  result = qword_27E1E0E10;
  if (!qword_27E1E0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E10);
  }

  return result;
}

unint64_t sub_23BF6D0A0()
{
  result = qword_27E1E0E18;
  if (!qword_27E1E0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E18);
  }

  return result;
}

unint64_t sub_23BF6D0F4()
{
  result = qword_27E1E0E20;
  if (!qword_27E1E0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E20);
  }

  return result;
}

uint64_t sub_23BF6D148()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  if (v1 == 1)
  {
    if (v2 <= 3)
    {
      return qword_23C003268[v2];
    }
  }

  else if (!v1 && v2 < 4)
  {
    return qword_23C003248[v2];
  }

  return 0;
}

uint64_t sub_23BF6D1A4(uint64_t a1, unint64_t a2)
{
  if (a1 == 1)
  {
    if (a2 <= 3)
    {
      return qword_23C003268[a2];
    }
  }

  else if (!a1 && a2 < 4)
  {
    return qword_23C003248[a2];
  }

  return 0;
}

uint64_t sub_23BF6D1E8()
{
  v1 = MEMORY[0x277D84F90];
  sub_23BFFAA60();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_23BFFAA40();
  sub_23BFFAA70();
  sub_23BFFAA80();
  sub_23BFFAA50();
  return v1;
}

uint64_t sub_23BF6D370()
{
  v8 = MEMORY[0x277D84F90];
  v0 = type metadata accessor for ParmesanTimeLayout();
  for (i = 0; i != 32; i += 8)
  {
    v2 = *(&unk_284EBDB10 + i + 32);
    v3 = objc_allocWithZone(v0);
    *&v3[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
    *&v3[OBJC_IVAR___NTKParmesanTimeLayout_scale] = v2;
    v7.receiver = v3;
    v7.super_class = v0;
    objc_msgSendSuper2(&v7, sel_init);
    MEMORY[0x23EEC3100]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
    v4 = objc_allocWithZone(v0);
    *&v4[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
    *&v4[OBJC_IVAR___NTKParmesanTimeLayout_scale] = v2;
    v6.receiver = v4;
    v6.super_class = v0;
    objc_msgSendSuper2(&v6, sel_init);
    MEMORY[0x23EEC3100]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

  return v8;
}

unint64_t sub_23BF6D4F8()
{
  result = qword_27E1E0E28;
  if (!qword_27E1E0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E28);
  }

  return result;
}

unint64_t sub_23BF6D54C()
{
  result = qword_27E1E0E30;
  if (!qword_27E1E0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E30);
  }

  return result;
}

uint64_t sub_23BF6D5A0(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E0530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BF6D608(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BF6D678()
{
  result = qword_27E1E0E40;
  if (!qword_27E1E0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E40);
  }

  return result;
}

unint64_t sub_23BF6D6CC()
{
  result = qword_27E1E0E48;
  if (!qword_27E1E0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E48);
  }

  return result;
}

unint64_t sub_23BF6D720()
{
  result = qword_27E1E0E50;
  if (!qword_27E1E0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E50);
  }

  return result;
}

unint64_t sub_23BF6D774()
{
  result = qword_27E1E0E58;
  if (!qword_27E1E0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E58);
  }

  return result;
}

unint64_t sub_23BF6D7DC()
{
  result = qword_27E1E0E60;
  if (!qword_27E1E0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E60);
  }

  return result;
}

unint64_t sub_23BF6D834()
{
  result = qword_27E1E0E68;
  if (!qword_27E1E0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E68);
  }

  return result;
}

unint64_t sub_23BF6D88C()
{
  result = qword_27E1E0E70;
  if (!qword_27E1E0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0E70);
  }

  return result;
}

id sub_23BF6D970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeFontTypographicBounds();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BF6D9DC(uint64_t a1, uint64_t a2, void *a3)
{
  ascent[15] = *MEMORY[0x277D85DE8];
  v5 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  sub_23BF4A264(&qword_27E1E0EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C002D30;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_23BF6DCA0();
  *(inited + 40) = a3;
  v9 = *MEMORY[0x277D741E0];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 0;

  v10 = v7;
  v11 = a3;
  v12 = v9;
  sub_23BFE4148(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E0EC0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_23BFFA2C0();

  type metadata accessor for Key(0);
  sub_23BF6DCEC();
  v15 = sub_23BFFA260();

  v16 = [v13 initWithString:v14 attributes:v15];

  v17 = CTLineCreateWithAttributedString(v16);
  descent = 0.0;
  ascent[0] = 0.0;
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(v17, ascent, &descent, &leading);
  ImageBounds = CTLineGetImageBounds(v17, 0);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v17, 8uLL);
  v22 = BoundsWithOptions.origin.x;
  v23 = BoundsWithOptions.origin.y;
  v24 = BoundsWithOptions.size.width;
  v25 = BoundsWithOptions.size.height;

  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_width] = TypographicBounds;
  v26 = descent;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_ascent] = ascent[0];
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_descent] = v26;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_leading] = leading;
  v27 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_imageBounds];
  *v27 = x;
  v27[1] = y;
  v27[2] = width;
  v27[3] = height;
  v28 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds];
  *v28 = v22;
  v28[1] = v23;
  v28[2] = v24;
  v28[3] = v25;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for TimeFontTypographicBounds();
  return objc_msgSendSuper2(&v31, sel_init);
}

unint64_t sub_23BF6DCA0()
{
  result = qword_27E1E0EB8;
  if (!qword_27E1E0EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0EB8);
  }

  return result;
}

unint64_t sub_23BF6DCEC()
{
  result = qword_27E1E0108;
  if (!qword_27E1E0108)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0108);
  }

  return result;
}

uint64_t sub_23BF6DD44()
{
  if (*v0)
  {
    return 6710863;
  }

  else
  {
    return 7229216;
  }
}

uint64_t sub_23BF6DDD0()
{
  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_screenState))
  {
    v1 = 6710863;
  }

  else
  {
    v1 = 7229216;
  }

  MEMORY[0x23EEC3090](v1, 0xE300000000000000);

  MEMORY[0x23EEC3090](8236, 0xE200000000000000);
  result = NTKFaceDataModeDescription();
  if (result)
  {
    v3 = result;
    sub_23BFFA300();

    sub_23BF66440();
    v4 = sub_23BFFA940();
    v6 = v5;

    MEMORY[0x23EEC3090](v4, v6);

    MEMORY[0x23EEC3090](41, 0xE100000000000000);
    return 40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_23BF6DEE0(uint64_t a1)
{
  sub_23BF6D608(a1, v5);
  if (v6)
  {
    type metadata accessor for NTKFaceState();
    if (swift_dynamicCast())
    {
      if (*&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_dataMode] == *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_dataMode))
      {
        v2 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_screenState];

        return v2 == *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_screenState);
      }
    }
  }

  else
  {
    sub_23BF6D5A0(v5);
  }

  return 0;
}

id sub_23BF6E040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKFaceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BF6E098(void *a1)
{
  v1 = a1;
  v2 = [v1 dataMode];
  v3 = NTKIsScreenOn() ^ 1;
  v4 = type metadata accessor for NTKFaceState();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_dataMode] = v2;
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKFaceState_screenState] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

unint64_t sub_23BF6E14C()
{
  result = qword_27E1E0ED8;
  if (!qword_27E1E0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0ED8);
  }

  return result;
}

uint64_t sub_23BF6E1A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23BF6E238(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BFF9AE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23BF4A264(&qword_27E1E0EF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  sub_23BFF9770();
  v15 = a2;
  v16 = v11;
  v17 = v12;
  sub_23BFF9B90();
  sub_23BF4A264(&qword_27E1E0EF8);
  sub_23BF6FF50();
  sub_23BFF96C0();
  sub_23BFF9AD0();
  LOBYTE(a2) = sub_23BFF9B90();
  sub_23BFF9B80();
  sub_23BFF9B80();
  if (sub_23BFF9B80() != a2)
  {
    sub_23BFF9B80();
  }

  sub_23BF4BE40(&qword_27E1E0F28, &qword_27E1E0EF0);
  sub_23BFF9DA0();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

__n128 sub_23BF6E49C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BF4A264(&qword_27E1E0F10);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  *v7 = sub_23BFF99F0();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_23BF4A264(&qword_27E1E0F30);
  sub_23BF6E684(a1, &v7[*(v8 + 44)], 15.0);
  LOBYTE(a1) = sub_23BFF9BA0();
  sub_23BFF96B0();
  v9 = &v7[*(v5 + 44)];
  *v9 = a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  sub_23BFFA030();
  sub_23BFF9810();
  sub_23BF0F4A8(v7, a2);
  v14 = a2 + *(sub_23BF4A264(&qword_27E1E0EF8) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_23BF6E684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_23BF4A264(&qword_27E1E0F38);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v10;
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = sub_23BF4A264(&qword_27E1E0F40);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v57 - v18);
  *v19 = sub_23BFF99F0();
  v19[1] = a3;
  *(v19 + 16) = 0;
  v20 = sub_23BF4A264(&qword_27E1E0F48);
  sub_23BF6EB6C(v19 + *(v20 + 44));
  v21 = sub_23BFF9BA0();
  sub_23BFF96B0();
  v22 = v19 + *(v14 + 44);
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = sub_23BFF99F0();
  LOBYTE(v68[0]) = 0;
  sub_23BF6F1D4(a1, v62);
  *(v61 + 7) = v62[0];
  *(&v61[1] + 7) = v62[1];
  *(&v61[2] + 7) = v62[2];
  *(&v61[3] + 7) = v62[3];
  v59 = LOBYTE(v68[0]);
  v60 = sub_23BFF9BC0();
  sub_23BFF96B0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_23BFF9F00();
  v36 = sub_23BFF9DE0();
  KeyPath = swift_getKeyPath();
  v38 = &v12[*(sub_23BF4A264(&qword_27E1E0F50) + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  LOBYTE(KeyPath) = sub_23BFF9BC0();
  sub_23BFF96B0();
  v39 = &v12[*(v7 + 44)];
  *v39 = KeyPath;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v58 = v17;
  sub_23BF4B33C(v19, v17, &qword_27E1E0F40);
  sub_23BF4B33C(v12, v10, &qword_27E1E0F38);
  *a2 = 0;
  *(a2 + 8) = 1;
  v44 = sub_23BF4A264(&qword_27E1E0F58);
  sub_23BF4B33C(v17, a2 + v44[12], &qword_27E1E0F40);
  v45 = v44[16];
  v46 = v61[3];
  *(&v64[2] + 1) = v61[2];
  v47 = v61[1];
  *(v64 + 1) = v61[0];
  v48 = a2 + v45;
  *v48 = a3;
  *(v48 + 8) = 0;
  v49 = a2 + v44[20];
  *&v63 = v27;
  *(&v63 + 1) = a3;
  LOBYTE(v17) = v59;
  LOBYTE(v10) = v60;
  LOBYTE(v64[0]) = v59;
  *(&v64[1] + 1) = v47;
  *&v64[4] = *(&v61[3] + 15);
  *(&v64[3] + 1) = v46;
  BYTE8(v64[4]) = v60;
  *&v65 = v29;
  *(&v65 + 1) = v31;
  *&v66 = v33;
  *(&v66 + 1) = v35;
  v67 = 0;
  *(v49 + 128) = 0;
  v50 = v64[0];
  *v49 = v63;
  *(v49 + 16) = v50;
  v51 = v66;
  *(v49 + 96) = v65;
  *(v49 + 112) = v51;
  v52 = v64[2];
  *(v49 + 32) = v64[1];
  *(v49 + 48) = v52;
  v53 = v64[4];
  *(v49 + 64) = v64[3];
  *(v49 + 80) = v53;
  v54 = a2 + v44[24];
  v55 = v57;
  sub_23BF4B33C(v57, v54, &qword_27E1E0F38);
  sub_23BF4B33C(&v63, v68, &qword_27E1E0F60);
  sub_23BF4B2D4(v12, &qword_27E1E0F38);
  sub_23BF4B2D4(v19, &qword_27E1E0F40);
  sub_23BF4B2D4(v55, &qword_27E1E0F38);
  *&v68[1] = a3;
  v71 = v61[1];
  v72 = v61[2];
  *v73 = v61[3];
  v68[0] = v27;
  v69 = v17;
  *&v73[15] = *(&v61[3] + 15);
  v70 = v61[0];
  v74 = v10;
  v75 = v29;
  v76 = v31;
  v77 = v33;
  v78 = v35;
  v79 = 0;
  sub_23BF4B2D4(v68, &qword_27E1E0F60);
  return sub_23BF4B2D4(v58, &qword_27E1E0F40);
}

uint64_t sub_23BF6EB6C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_23BF4A264(&qword_27E1E0F68);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - v5;
  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_23BFFA2C0();
  v9 = sub_23BFFA2C0();
  v10 = [ObjCClassFromMetadata localizedStringForKey:v8 comment:v9];

  v11 = sub_23BFFA300();
  v13 = v12;

  v14 = sub_23BFFA2C0();
  v15 = sub_23BFFA2C0();
  v16 = [ObjCClassFromMetadata localizedStringForKey:v14 comment:v15];

  v69 = sub_23BFFA300();
  v68 = v17;

  *v6 = sub_23BFF9980();
  *(v6 + 1) = 0x402E000000000000;
  v6[16] = 0;
  sub_23BF4A264(&qword_27E1E0F70);
  v77 = &unk_284EBDC10;
  swift_getKeyPath();
  sub_23BF4A264(&unk_27E1E0BF0);
  sub_23BF4A264(&qword_27E1E0F78);
  sub_23BF4BE40(&qword_27E1E0F80, &unk_27E1E0BF0);
  sub_23BF701BC();
  v67 = v6;
  sub_23BFF9F80();
  LOBYTE(v16) = sub_23BFF9BC0();
  sub_23BFF96B0();
  v18 = &v6[*(v2 + 44)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v77 = v11;
  v78 = v13;
  sub_23BF66440();
  v23 = sub_23BFF9CB0();
  v25 = v24;
  LOBYTE(v2) = v26;
  sub_23BFF9BF0();
  v27 = sub_23BFF9CA0();
  v29 = v28;
  LOBYTE(v14) = v30;

  sub_23BF70124(v23, v25, v2 & 1);

  sub_23BFF9C00();
  v71 = sub_23BFF9C70();
  v65 = v31;
  v66 = v32;
  v72 = v33;
  sub_23BF70124(v27, v29, v14 & 1);

  KeyPath = swift_getKeyPath();
  v77 = v69;
  v78 = v68;
  v34 = sub_23BFF9CB0();
  v36 = v35;
  LOBYTE(v15) = v37;
  sub_23BFF9BE0();
  v38 = sub_23BFF9CA0();
  v40 = v39;
  LOBYTE(v13) = v41;

  sub_23BF70124(v34, v36, v15 & 1);

  sub_23BFF9E90();
  v42 = sub_23BFF9C80();
  v69 = v42;
  v44 = v43;
  v68 = v43;
  LOBYTE(v36) = v45;
  v47 = v46;

  sub_23BF70124(v38, v40, v13 & 1);

  v63 = swift_getKeyPath();
  LOBYTE(v13) = v36 & 1;
  LOBYTE(v77) = v36 & 1;
  v48 = v67;
  v49 = v73;
  sub_23BF4B33C(v67, v73, &qword_27E1E0F68);
  v50 = v70;
  sub_23BF4B33C(v49, v70, &qword_27E1E0F68);
  v51 = sub_23BF4A264(&qword_27E1E1008);
  v52 = v50 + *(v51 + 48);
  v53 = v71;
  v54 = v72;
  v55 = v65;
  *v52 = v71;
  *(v52 + 8) = v55;
  LOBYTE(v38) = v66 & 1;
  *(v52 + 16) = v66 & 1;
  v56 = KeyPath;
  *(v52 + 24) = v54;
  *(v52 + 32) = v56;
  *(v52 + 40) = 1;
  v57 = (v50 + *(v51 + 64));
  *&v75 = v42;
  *(&v75 + 1) = v44;
  v76[0] = v13;
  *&v76[1] = v74[0];
  *&v76[4] = *(v74 + 3);
  *&v76[8] = v47;
  v58 = v47;
  v59 = v63;
  *&v76[16] = v63;
  *&v76[24] = 1;
  v76[26] = 1;
  v60 = *v76;
  *v57 = v75;
  v57[1] = v60;
  *(v57 + 27) = *&v76[11];
  v61 = v55;
  sub_23BF7053C(v53, v55, v38);

  sub_23BF4B33C(&v75, &v77, &qword_27E1E1010);
  sub_23BF4B2D4(v48, &qword_27E1E0F68);
  v77 = v69;
  v78 = v68;
  v79 = v13;
  *v80 = v74[0];
  *&v80[3] = *(v74 + 3);
  v81 = v58;
  v82 = v59;
  v83 = 1;
  v84 = 1;
  sub_23BF4B2D4(&v77, &qword_27E1E1010);
  sub_23BF70124(v71, v61, v38);

  return sub_23BF4B2D4(v73, &qword_27E1E0F68);
}

uint64_t sub_23BF6F1D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_23BFFA2C0();
  v6 = sub_23BFFA2C0();
  v7 = [ObjCClassFromMetadata localizedStringForKey:v5 comment:v6];

  v8 = sub_23BFFA300();
  v10 = v9;

  v11 = sub_23BFFA2C0();
  v12 = sub_23BFFA2C0();
  v13 = [ObjCClassFromMetadata localizedStringForKey:v11 comment:v12];

  v14 = sub_23BFFA300();
  v16 = v15;

  *a2 = v8;
  a2[1] = v10;
  a2[2] = sub_23BF70134;
  a2[3] = a1;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = sub_23BF70178;
  a2[7] = a1;
}

uint64_t sub_23BF6F358@<X0>(uint64_t a1@<X8>)
{
  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_23BFFA300();
  sub_23BF66440();
  v6 = sub_23BFF9CB0();
  v8 = v7;
  LOBYTE(v4) = v9;
  sub_23BFF9C10();
  v10 = sub_23BFF9CA0();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_23BF70124(v6, v8, v4 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_23BF6F4A8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = sub_23BF4A264(&qword_27E1E1018);
  v1 = MEMORY[0x28223BE20](v42);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - v4;
  v6 = sub_23BFF97C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_23BF4A264(&qword_27E1E0FB8);
  MEMORY[0x28223BE20](v13);
  v41 = &v36 - v14;
  v43 = sub_23BF4A264(&qword_27E1E0F98);
  MEMORY[0x28223BE20](v43);
  v16 = &v36 - v15;

  v17 = sub_23BFF9EB0();
  v18 = sub_23BFF9BD0();
  KeyPath = swift_getKeyPath();
  v39 = v18;
  v40 = v17;
  v45 = v17;
  v46 = KeyPath;
  v38 = KeyPath;
  v47 = v18;
  v20 = v7[13];
  v20(v12, *MEMORY[0x277CDF9E8], v6);
  v20(v10, *MEMORY[0x277CDF9D8], v6);
  sub_23BF7089C(&qword_27E1E1020, MEMORY[0x277CDFA28]);
  result = sub_23BFFA2A0();
  if (result)
  {
    v22 = v7[4];
    v22(v5, v12, v6);
    v36 = v13;
    v37 = v16;
    v23 = v42;
    v22(&v5[*(v42 + 48)], v10, v6);
    sub_23BF4B33C(v5, v3, &qword_27E1E1018);
    v24 = *(v23 + 48);
    v25 = v41;
    v22(v41, v3, v6);
    v26 = v7[1];
    v26(&v3[v24], v6);
    sub_23BF7054C(v5, v3);
    v22((v25 + *(v36 + 36)), &v3[*(v23 + 48)], v6);
    v26(v3, v6);
    sub_23BF4A264(&qword_27E1E0FB0);
    sub_23BF70484();
    sub_23BF4BE40(&qword_27E1E0FD8, &qword_27E1E0FB8);
    v27 = v37;
    sub_23BFF9D60();
    sub_23BF4B2D4(v25, &qword_27E1E0FB8);

    v28 = (v27 + *(sub_23BF4A264(&qword_27E1E0FA8) + 36));
    v29 = *(sub_23BF4A264(&qword_27E1E0FE8) + 28);
    v30 = *MEMORY[0x277CE1048];
    v31 = sub_23BFF9EC0();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = swift_getKeyPath();
    v32 = [objc_opt_self() systemGray2Color];
    v33 = sub_23BFF9DD0();
    v34 = swift_getKeyPath();
    v35 = (v27 + *(v43 + 36));
    *v35 = v34;
    v35[1] = v33;
    sub_23BF70278();
    sub_23BFF9D80();
    return sub_23BF4B2D4(v27, &qword_27E1E0F98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BF6FA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_23BFF9B60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_23BF4A264(&qword_27E1E1028);
  MEMORY[0x28223BE20](v14);
  v16 = &v29[-v15];
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;

  sub_23BF4A264(&qword_27E1E1030);
  sub_23BF7067C();
  sub_23BFF9F00();
  v17 = &v16[*(v14 + 36)];
  sub_23BF4A264(&qword_27E1E1050);
  sub_23BFF9820();
  *v17 = swift_getKeyPath();
  sub_23BFF9B50();
  sub_23BF707B8();
  sub_23BF7089C(&qword_27E1E1078, MEMORY[0x277CDE400]);
  sub_23BFF9D20();
  (*(v11 + 8))(v13, v10);
  sub_23BF4B2D4(v16, &qword_27E1E1028);
  v18 = (a5 + *(sub_23BF4A264(&qword_27E1E1080) + 36));
  v19 = *(sub_23BF4A264(&qword_27E1E1088) + 28);
  v20 = *MEMORY[0x277CDF420];
  v21 = sub_23BFF96F0();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = sub_23BFF9E70();
  KeyPath = swift_getKeyPath();
  v24 = (a5 + *(sub_23BF4A264(&qword_27E1E1090) + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_23BFF9DE0();
  v26 = swift_getKeyPath();
  result = sub_23BF4A264(&qword_27E1E1098);
  v28 = (a5 + *(result + 36));
  *v28 = v26;
  v28[1] = v25;
  return result;
}

__n128 sub_23BF6FD58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  sub_23BF66440();

  v4 = sub_23BFF9CB0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_23BFFA030();
  sub_23BFF9810();
  v11 = v8 & 1;
  v12 = sub_23BFF9C10();
  KeyPath = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 96) = v19;
  *(a3 + 112) = v20;
  *(a3 + 128) = v21;
  *(a3 + 32) = v15;
  *(a3 + 48) = v16;
  result = v18;
  *(a3 + 64) = v17;
  *(a3 + 80) = v18;
  *(a3 + 144) = KeyPath;
  *(a3 + 152) = v12;
  return result;
}

uint64_t sub_23BF6FE74()
{

  sub_23BFF9BB0();
  sub_23BF4A264(&qword_27E1E0EE0);
  sub_23BF4BE40(&qword_27E1E0EE8, &qword_27E1E0EE0);
  sub_23BFF9D40();
}

unint64_t sub_23BF6FF50()
{
  result = qword_27E1E0F00;
  if (!qword_27E1E0F00)
  {
    sub_23BF4A2D0(&qword_27E1E0EF8);
    sub_23BF6FFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0F00);
  }

  return result;
}

unint64_t sub_23BF6FFDC()
{
  result = qword_27E1E0F08;
  if (!qword_27E1E0F08)
  {
    sub_23BF4A2D0(&qword_27E1E0F10);
    sub_23BF4BE40(&qword_27E1E0F18, &qword_27E1E0F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0F08);
  }

  return result;
}

uint64_t sub_23BF70094()
{
  v1 = *(v0 + 48);

  v1(v2);
}

unint64_t sub_23BF700D8()
{
  result = qword_27E1E0930;
  if (!qword_27E1E0930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0930);
  }

  return result;
}

uint64_t sub_23BF70124(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23BF70134()
{
  v1 = *(v0 + 16);

  v1(v2);
}

uint64_t sub_23BF70178()
{
  v1 = *(v0 + 32);

  v1(v2);
}

unint64_t sub_23BF701BC()
{
  result = qword_27E1E0F88;
  if (!qword_27E1E0F88)
  {
    sub_23BF4A2D0(&qword_27E1E0F78);
    sub_23BF70278();
    sub_23BF7089C(&qword_27E1E1000, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0F88);
  }

  return result;
}

unint64_t sub_23BF70278()
{
  result = qword_27E1E0F90;
  if (!qword_27E1E0F90)
  {
    sub_23BF4A2D0(&qword_27E1E0F98);
    sub_23BF70330();
    sub_23BF4BE40(&qword_27E1E0FF0, &qword_27E1E0FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0F90);
  }

  return result;
}

unint64_t sub_23BF70330()
{
  result = qword_27E1E0FA0;
  if (!qword_27E1E0FA0)
  {
    sub_23BF4A2D0(&qword_27E1E0FA8);
    sub_23BF4A2D0(&qword_27E1E0FB0);
    sub_23BF4A2D0(&qword_27E1E0FB8);
    sub_23BF70484();
    sub_23BF4BE40(&qword_27E1E0FD8, &qword_27E1E0FB8);
    swift_getOpaqueTypeConformance2();
    sub_23BF4BE40(&qword_27E1E0FE0, &qword_27E1E0FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0FA0);
  }

  return result;
}

unint64_t sub_23BF70484()
{
  result = qword_27E1E0FC0;
  if (!qword_27E1E0FC0)
  {
    sub_23BF4A2D0(&qword_27E1E0FB0);
    sub_23BF4BE40(&qword_27E1E0FC8, &qword_27E1E0FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0FC0);
  }

  return result;
}

uint64_t sub_23BF7053C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23BF7054C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E1018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BF705BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23BF70604(uint64_t result, int a2, int a3)
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

unint64_t sub_23BF7067C()
{
  result = qword_27E1E1038;
  if (!qword_27E1E1038)
  {
    sub_23BF4A2D0(&qword_27E1E1030);
    sub_23BF70734();
    sub_23BF4BE40(&qword_27E1E0FC8, &qword_27E1E0FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1038);
  }

  return result;
}

unint64_t sub_23BF70734()
{
  result = qword_27E1E1040;
  if (!qword_27E1E1040)
  {
    sub_23BF4A2D0(&qword_27E1E1048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1040);
  }

  return result;
}

unint64_t sub_23BF707B8()
{
  result = qword_27E1E1058;
  if (!qword_27E1E1058)
  {
    sub_23BF4A2D0(&qword_27E1E1028);
    sub_23BF4BE40(&qword_27E1E1060, &qword_27E1E1068);
    sub_23BF4BE40(&qword_27E1E1070, &qword_27E1E1050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1058);
  }

  return result;
}

uint64_t sub_23BF7089C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BF708E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_23BF709B4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_23BF4A2D0(a2);
    a4();
    sub_23BF4BE40(&qword_27E1E0FF0, &qword_27E1E0FF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BF70A94()
{
  result = qword_27E1E10B0;
  if (!qword_27E1E10B0)
  {
    sub_23BF4A2D0(&qword_27E1E1080);
    sub_23BF4A2D0(&qword_27E1E1028);
    sub_23BFF9B60();
    sub_23BF707B8();
    sub_23BF7089C(&qword_27E1E1078, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_23BF4BE40(&qword_27E1E10B8, &qword_27E1E1088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E10B0);
  }

  return result;
}

uint64_t sub_23BF70C20(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame_];
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *a1) + 0xC8))();
  if (!v9)
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v22 = sub_23BFF92B0();
    sub_23BF4A22C(v22, qword_27E1EB4B0);
    v10 = a1;
    v12 = sub_23BFF9290();
    v23 = sub_23BFFA650();

    if (os_log_type_enabled(v12, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v10;
      *v25 = a1;
      v26 = v10;
      _os_log_impl(&dword_23BF0C000, v12, v23, "Found nil layoutMask when setting up foreground view for composition: %@", v24, 0xCu);
      sub_23BF713D8(v25);
      MEMORY[0x23EEC4DF0](v25, -1, -1);
      MEMORY[0x23EEC4DF0](v24, -1, -1);

      goto LABEL_19;
    }

LABEL_18:

    goto LABEL_19;
  }

  v10 = v9;
  v11 = sub_23BF852AC();
  if (!v11)
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v27 = sub_23BFF92B0();
    sub_23BF4A22C(v27, qword_27E1EB4B0);
    v28 = a1;
    v12 = sub_23BFF9290();
    v29 = sub_23BFFA650();

    if (!os_log_type_enabled(v12, v29))
    {

      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v28;
    *v31 = a1;
    a1 = v28;
    _os_log_impl(&dword_23BF0C000, v12, v29, "found nil layoutCompositeImage when setting up foreground view for composition: %@", v30, 0xCu);
    sub_23BF713D8(v31);
    MEMORY[0x23EEC4DF0](v31, -1, -1);
    MEMORY[0x23EEC4DF0](v30, -1, -1);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *(v10 + OBJC_IVAR___NTKParmesanAssetMask_style);
  if (!v13)
  {
    v14 = (*((*v8 & *a1) + 0x160))();
    v15 = *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_monochromeColorMatrix];
    *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_monochromeColorMatrix] = v14;

    v16 = [v7 layer];
    v17 = [v12 CGImage];
    [v16 setContents_];

    [v7 setContentMode_];
    v18 = sub_23BF854F4();
    if (v18)
    {
      v19 = v18;
      v20 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
      [v7 bounds];
      [v20 setFrame_];
      v21 = [(CGImage *)v19 CGImage];
      [v20 setContents_];

      v12 = *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_maskingLayer];
      *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_maskingLayer] = v20;
LABEL_19:

      return v7;
    }

LABEL_14:

    goto LABEL_18;
  }

  if (v13 == 1)
  {
    v32 = (*((*v8 & *a1) + 0x160))();
    v33 = *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_monochromeColorMatrix];
    *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_monochromeColorMatrix] = v32;

    v34 = [v7 layer];
    v35 = [v12 CGImage];
    [v34 setContents_];

    goto LABEL_18;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

id sub_23BF71274(void *a1)
{
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_monochromeColorMatrix;
  *&v1[v3] = NTKDefaultMonochromeColorMatrix();
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_maskingLayer] = 0;
  v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_useMaskingLayer] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ParmesanGalleryMaskableContentView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_23BF71334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryMaskableContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF713D8(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E0B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_23BF71440(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_composition] = 0;
  *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView] = 0;
  *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_device] = a2;
  v22.receiver = v6;
  v22.super_class = type metadata accessor for ParmesanGalleryLivePhotoContentView();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a3, a4, a5, a6);
  [v14 setClipsToBounds_];
  [v14 bounds];
  v19 = [objc_allocWithZone(MEMORY[0x277CBBB50]) initWithFrame:*&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_device] forDevice:{v15, v16, v17, v18}];
  [v19 setDelegate_];
  [v14 addSubview_];
  v20 = *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView];
  *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView] = v19;

  sub_23BF7169C(a1);
  return v14;
}

void sub_23BF7169C(void *a1)
{
  v3 = sub_23BFF8D10();
  v148 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v142 = &v136[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v143 = &v136[-v7];
  MEMORY[0x28223BE20](v6);
  v9 = &v136[-v8];
  v145 = sub_23BF4A264(&qword_27E1E1160);
  MEMORY[0x28223BE20](v145);
  v11 = &v136[-v10];
  v12 = sub_23BF4A264(&qword_27E1E0B78);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v144 = &v136[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v136[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v136[-v18];
  v20 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_composition;
  v147 = v1;
  v21 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_composition];
  if (v21)
  {
    type metadata accessor for ParmesanAssetComposition();
    v22 = a1;
    v23 = v21;
    v24 = v22;
    v25 = sub_23BFFA880();

    a1 = v22;
    if (v25)
    {
      if (qword_27E1DFDA0 != -1)
      {
        swift_once();
      }

      v26 = sub_23BFF92B0();
      sub_23BF4A22C(v26, qword_27E1EB4B0);
      v27 = v24;
      v148 = sub_23BFF9290();
      v28 = sub_23BFFA670();

      if (!os_log_type_enabled(v148, v28))
      {
        goto LABEL_22;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v27;
      v31 = v27;
      v32 = "Requested to load same asset composition; skipping (%@";
LABEL_21:
      _os_log_impl(&dword_23BF0C000, v148, v28, v32, v29, 0xCu);
      sub_23BF4B2D4(v30, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v30, -1, -1);
      MEMORY[0x23EEC4DF0](v29, -1, -1);
LABEL_22:
      v59 = v148;

      return;
    }
  }

  v146 = sub_23BF8B938();
  if (!v146)
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v56 = sub_23BFF92B0();
    sub_23BF4A22C(v56, qword_27E1EB4B0);
    v57 = a1;
    v148 = sub_23BFF9290();
    v28 = sub_23BFFA670();

    if (!os_log_type_enabled(v148, v28))
    {
      goto LABEL_22;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v57;
    *v30 = v57;
    v58 = v57;
    v32 = "No image found on composition (%@";
    goto LABEL_21;
  }

  v33 = v147;
  v34 = *&v147[v20];
  *&v147[v20] = a1;
  v35 = a1;

  v141 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView;
  v36 = *&v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView];
  v37 = v148;
  if (!v36)
  {
    goto LABEL_14;
  }

  v38 = [v36 mediaAsset];
  v39 = [v38 image];

  if (v39)
  {
    sub_23BF727A8();
    v40 = v146;
    v139 = v19;
    v41 = v37;
    v42 = v9;
    v43 = v3;
    v44 = v35;
    v45 = a1;
    v46 = v40;
    v47 = sub_23BFFA880();

    a1 = v45;
    v35 = v44;
    v3 = v43;
    v9 = v42;
    v37 = v41;
    v19 = v139;
    if (v47)
    {
      goto LABEL_38;
    }
  }

  v48 = *&v147[v141];
  if (v48 && (v49 = [v48 mediaAsset], v50 = objc_msgSend(v49, sel_video), v49, v50))
  {
    v51 = [v50 url];

    sub_23BFF8CA0();
    isa = v37[7].isa;
    isa(v19, 0, 1, v3);
  }

  else
  {
LABEL_14:
    isa = v37[7].isa;
    isa(v19, 1, 1, v3);
  }

  v53 = *&v35[OBJC_IVAR___NTKParmesanAssetComposition_asset];
  v138 = OBJC_IVAR___NTKParmesanAsset_videoInfo;
  v139 = v53;
  v54 = *&v53[OBJC_IVAR___NTKParmesanAsset_videoInfo];
  v140 = a1;
  if (v54)
  {
    (v37[2].isa)(v17, v54 + OBJC_IVAR___NTKParmesanAssetVideoInfo_videoURL, v3);
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  isa(v17, v55, 1, v3);
  v60 = *(v145 + 48);
  sub_23BF726CC(v19, v11);
  sub_23BF726CC(v17, &v11[v60]);
  v61 = v37[6].isa;
  if (v61(v11, 1, v3) == 1)
  {
    sub_23BF4B2D4(v17, &qword_27E1E0B78);
    sub_23BF4B2D4(v19, &qword_27E1E0B78);
    v62 = v61(&v11[v60], 1, v3);
    v63 = v148;
    if (v62 == 1)
    {
      sub_23BF4B2D4(v11, &qword_27E1E0B78);
      a1 = v140;
LABEL_38:
      if (qword_27E1DFDA0 != -1)
      {
        swift_once();
      }

      v87 = sub_23BFF92B0();
      sub_23BF4A22C(v87, qword_27E1EB4B0);
      v88 = v35;
      v89 = sub_23BFF9290();
      v90 = sub_23BFFA670();

      if (!os_log_type_enabled(v89, v90))
      {
        goto LABEL_47;
      }

      v91 = a1;
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      *(v92 + 4) = v88;
      *v93 = v91;
      v94 = v88;
      v95 = "currently displayed image and videoURL are the same as new composition (%@";
LABEL_46:
      _os_log_impl(&dword_23BF0C000, v89, v90, v95, v92, 0xCu);
      sub_23BF4B2D4(v93, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v93, -1, -1);
      MEMORY[0x23EEC4DF0](v92, -1, -1);
LABEL_47:

      return;
    }

    goto LABEL_31;
  }

  v64 = v144;
  sub_23BF726CC(v11, v144);
  if (v61(&v11[v60], 1, v3) == 1)
  {
    sub_23BF4B2D4(v17, &qword_27E1E0B78);
    sub_23BF4B2D4(v19, &qword_27E1E0B78);
    v63 = v148;
    (v148[1].isa)(v64, v3);
LABEL_31:
    sub_23BF4B2D4(v11, &qword_27E1E1160);
    a1 = v140;
    goto LABEL_32;
  }

  v145 = v35;
  v85 = v148;
  (v148[4].isa)(v9, &v11[v60], v3);
  sub_23BF72750();
  v137 = sub_23BFFA2B0();
  v86 = v85[1].isa;
  v86(v9, v3);
  sub_23BF4B2D4(v17, &qword_27E1E0B78);
  sub_23BF4B2D4(v19, &qword_27E1E0B78);
  v86(v144, v3);
  v63 = v85;
  v35 = v145;
  sub_23BF4B2D4(v11, &qword_27E1E0B78);
  a1 = v140;
  if (v137)
  {
    goto LABEL_38;
  }

LABEL_32:
  v65 = *&v35[OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout];
  v66 = v35;
  v67 = OBJC_IVAR___NTKParmesanAsset_layouts;
  v68 = v139;
  swift_beginAccess();
  v69 = *&v68[v67];
  v70 = v65;

  v71 = sub_23BFDD8E4(v70, v69);

  if (!v71)
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v96 = sub_23BFF92B0();
    sub_23BF4A22C(v96, qword_27E1EB4B0);
    v97 = v66;
    v89 = sub_23BFF9290();
    v90 = sub_23BFFA670();

    if (!os_log_type_enabled(v89, v90))
    {
      goto LABEL_47;
    }

    v98 = a1;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138412290;
    *(v92 + 4) = v97;
    *v93 = v98;
    v99 = v97;
    v95 = "Composition's layout is nil; composition: (%@";
    goto LABEL_46;
  }

  v72 = *&v68[v138];
  if (!v72)
  {
    v80 = 0;
    v75 = v147;
    v81 = *&v147[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_device];
LABEL_50:
    v100 = objc_allocWithZone(MEMORY[0x277CBBB48]);
    v84 = [v100 initWithImage:v146 forDevice:v81];
    goto LABEL_51;
  }

  v148 = v71;
  v73 = v142;
  (v63[2].isa)(v142, v72 + OBJC_IVAR___NTKParmesanAssetVideoInfo_videoURL, v3);
  v74 = v143;
  (v63[4].isa)(v143, v73, v3);
  v75 = v147;
  v76 = *&v147[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_device];
  v77 = objc_allocWithZone(MEMORY[0x277CBBBC0]);

  v78 = sub_23BFFA2C0();

  v79 = sub_23BFF8C40();
  v80 = [v77 initWithName:v78 forDevice:v76 url:v79];

  (v63[1].isa)(v74, v3);
  v81 = *&v75[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_device];
  if (!v80 || (v82 = *&v68[v138]) == 0)
  {
    v71 = v148;
    goto LABEL_50;
  }

  v83 = objc_allocWithZone(MEMORY[0x277CBBB48]);
  v84 = [v83 initWithVideo:v80 image:v146 videoDuration:v81 stillDisplayTime:*(v82 + OBJC_IVAR___NTKParmesanAssetVideoInfo_duration) forDevice:*(v82 + OBJC_IVAR___NTKParmesanAssetVideoInfo_stillDisplayTime)];
  v71 = v148;
LABEL_51:
  v101 = *&v75[v141];
  if (v101)
  {
    v102 = v101;
    [v102 changeMediaAsset_];
    [v81 screenScale];
    v104 = v103;
    [v75 bounds];
    v106 = v105;
    v108 = v107;
    v109 = [v102 mediaAsset];
    v110 = [v109 image];

    [v110 scale];
    v112 = v111;

    if (v104 >= 1.0)
    {
      v113 = v104;
    }

    else
    {
      v113 = 1.0;
    }

    v114 = [v102 mediaAsset];
    v115 = [v114 image];

    [v115 size];
    v117 = v116;

    v118 = nullsub_2(v112 * v117 / v113);
    v119 = *(&v71->isa + OBJC_IVAR___NTKParmesanAssetLayout_originalCrop);
    v120 = v106 / nullsub_2(*(*&v119[OBJC_IVAR___NTKParmesanCrop_size] + OBJC_IVAR___NTKParmesanSize_width) / v113);
    v122 = v108 / v121;
    if (v120 > v122)
    {
      v122 = v120;
    }

    nullsub_2(v118 * v122);
    v123 = sub_23BF7273C();
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v130 = v119;
    v131 = v102;
    [v131 setBounds_];
    [v131 setCenter_];

    [v75 setNeedsLayout];
  }

  else
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v132 = sub_23BFF92B0();
    sub_23BF4A22C(v132, qword_27E1EB4B0);
    v133 = sub_23BFF9290();
    v134 = sub_23BFFA670();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_23BF0C000, v133, v134, "mediaAssetView nil; expecting non-nil mediaAssetView", v135, 2u);
      MEMORY[0x23EEC4DF0](v135, -1, -1);
    }
  }
}

id sub_23BF72610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryLivePhotoContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF726CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BF72750()
{
  result = qword_27E1E1168;
  if (!qword_27E1E1168)
  {
    sub_23BFF8D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1168);
  }

  return result;
}

unint64_t sub_23BF727A8()
{
  result = qword_27E1E1170;
  if (!qword_27E1E1170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E1170);
  }

  return result;
}

uint64_t sub_23BF727F4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = *(v5 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  if (v6 < 3)
  {
    v7 = v6 != 0;
    v8 = 2;
LABEL_3:
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    *(a1 + 32) = v8;
    *(a1 + 33) = v7;
    *(a1 + 40) = xmmword_23C0038F0;
    *(a1 + 56) = 2;
    return result;
  }

  if (v6 == 3)
  {
    v9 = *(v5 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
    if (!v9)
    {
      v7 = 2;
      v8 = 3;
      goto LABEL_3;
    }

    if (v9 == 1)
    {
      v7 = 0;
      v8 = 3;
      goto LABEL_3;
    }
  }

  else
  {
    sub_23BFFACF0();
    __break(1u);
  }

  sub_23BF4A264(&unk_27E1E1BD0);
  result = sub_23BFFACB0();
  __break(1u);
  return result;
}

uint64_t sub_23BF728D4(uint64_t a1)
{
  sub_23BFFA9F0();

  if (!a1 || a1 == 2 || a1 == 1)
  {
    v2 = sub_23BFFA370();
    v4 = v3;

    MEMORY[0x23EEC3090](v2, v4);

    return 0xD00000000000001DLL;
  }

  else
  {
    result = sub_23BFFACF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BF729F0()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x63696D616E7964;
  }

  if (v1 == 2)
  {
    return 0x6C6F686563616C70;
  }

  if (v1 == 1)
  {
    return 0x6C61756E616DLL;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

id sub_23BF72A98(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() _optionWithValue_forDevice_];

  return v2;
}

uint64_t sub_23BF72BA4()
{
  v1 = [v0 _value];
  if (v1 != 2)
  {
    v1 = v1 == 1;
  }

  sub_23BF728D4(v1);
  v2 = sub_23BFFA2C0();

  sub_23BFFA9F0();

  v3 = [v0 _value];
  v4 = 0xE700000000000000;
  v5 = 0x63696D616E7964;
  if (v3 == 1)
  {
    v5 = 0x6C61756E616DLL;
    v4 = 0xE600000000000000;
  }

  if (v3 == 2)
  {
    v6 = 0x6C6F686563616C70;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 2)
  {
    v7 = 0xEB00000000726564;
  }

  else
  {
    v7 = v4;
  }

  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x23EEC3090](v6, v7);

  v9 = sub_23BFFA2C0();

  v10 = [ObjCClassFromMetadata localizedStringForKey:v2 comment:v9];

  v11 = sub_23BFFA300();
  return v11;
}

id sub_23BF72D50(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_23BFFA2C0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_23BF72DD0()
{
  v1 = [v0 _value];
  if (v1 != 2)
  {
    v1 = v1 == 1;
  }

  sub_23BF728D4(v1);
  MEMORY[0x23EEC3090](0x4E4F495443415FLL, 0xE700000000000000);
  v2 = sub_23BFFA2C0();

  sub_23BFFA9F0();
  MEMORY[0x23EEC3090](0xD00000000000003BLL, 0x800000023C00E1F0);
  v3 = [v0 _value];
  v4 = 0x63696D616E7964;
  v5 = 0xE600000000000000;
  if (v3 == 1)
  {
    v4 = 0x6C61756E616DLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == 2)
  {
    v6 = 0x6C6F686563616C70;
  }

  else
  {
    v6 = v4;
  }

  if (v3 == 2)
  {
    v7 = 0xEB00000000726564;
  }

  else
  {
    v7 = v5;
  }

  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x23EEC3090](v6, v7);

  v9 = sub_23BFFA2C0();

  v10 = [ObjCClassFromMetadata localizedStringForKey:v2 comment:v9];

  v11 = sub_23BFFA300();
  return v11;
}

uint64_t sub_23BF73028()
{
  v32 = MEMORY[0x277D84F90];
  sub_23BFCE2A0(0, 3, 0);
  v0 = v32;
  if (qword_284EBDCC8)
  {
    if (qword_284EBDCC8 == 2)
    {
      v1 = 0x6C6F686563616C70;
      v2 = 0xEB00000000726564;
    }

    else
    {
      if (qword_284EBDCC8 != 1)
      {
        goto LABEL_26;
      }

      v2 = 0xE600000000000000;
      v1 = 0x6C61756E616DLL;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x63696D616E7964;
  }

  sub_23BFFA9B0();
  v3 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *(&v29 + 1) = v1;
  *&v30 = v2;
  v5 = *(v32 + 16);
  v4 = *(v32 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_23BFCE2A0((v4 > 1), v5 + 1, 1);
    v0 = v32;
  }

  *(v0 + 16) = v5 + 1;
  v6 = v0 + 72 * v5;
  *(v6 + 96) = v31;
  v7 = v30;
  *(v6 + 64) = v29;
  *(v6 + 80) = v7;
  v8 = v28;
  *(v6 + 32) = v27;
  *(v6 + 48) = v8;
  if (qword_284EBDCD0)
  {
    if (qword_284EBDCD0 == 1)
    {
      v9 = 0xE600000000000000;
      v10 = 0x6C61756E616DLL;
    }

    else
    {
      if (qword_284EBDCD0 != 2)
      {
        goto LABEL_26;
      }

      v10 = 0x6C6F686563616C70;
      v9 = 0xEB00000000726564;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x63696D616E7964;
  }

  sub_23BFFA9B0();
  v31 = v3;
  *(&v29 + 1) = v10;
  *&v30 = v9;
  v32 = v0;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_23BFCE2A0((v11 > 1), v12 + 1, 1);
    v0 = v32;
  }

  *(v0 + 16) = v12 + 1;
  v13 = v0 + 72 * v12;
  *(v13 + 32) = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  *(v13 + 96) = v31;
  *(v13 + 64) = v15;
  *(v13 + 80) = v16;
  *(v13 + 48) = v14;
  if (!qword_284EBDCD8)
  {
    v17 = 0xE700000000000000;
    v18 = 0x63696D616E7964;
    goto LABEL_23;
  }

  if (qword_284EBDCD8 != 1)
  {
    if (qword_284EBDCD8 == 2)
    {
      v18 = 0x6C6F686563616C70;
      v17 = 0xEB00000000726564;
      goto LABEL_23;
    }

LABEL_26:
    sub_23BFFACF0();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v17 = 0xE600000000000000;
  v18 = 0x6C61756E616DLL;
LABEL_23:
  sub_23BFFA9B0();
  v31 = v3;
  *(&v29 + 1) = v18;
  *&v30 = v17;
  v32 = v0;
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_23BFCE2A0((v19 > 1), v20 + 1, 1);
    v0 = v32;
  }

  *(v0 + 16) = v20 + 1;
  v21 = v0 + 72 * v20;
  *(v21 + 32) = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  *(v21 + 96) = v31;
  *(v21 + 64) = v23;
  *(v21 + 80) = v24;
  *(v21 + 48) = v22;
  sub_23BF4A264(&qword_27E1E0BE0);
  *&v27 = sub_23BFFAB50();

  sub_23BFC4E58(v25, 1, &v27);

  return v27;
}

id sub_23BF73518(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR___NTKParmesanContentEditOption_positionsToFaceBundleStrings;
  *&v2[v5] = sub_23BF73028();
  sub_23BF6D608(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_23BF4C484(v17, v18);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_23BFFACA0();
    (*(v8 + 8))(v10, v6);
    sub_23BF4A9A4(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ParmesanContentEditOption();
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithJSONObjectRepresentation_forDevice_, v11, a2);

  swift_unknownObjectRelease();
  v14 = v13;
  sub_23BF6D5A0(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_23BF73774(char *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = OBJC_IVAR___NTKParmesanContentEditOption_positionsToFaceBundleStrings;
  v7 = a3;
  *&a1[v6] = sub_23BF73028();
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ParmesanContentEditOption();
  v8 = objc_msgSendSuper2(&v10, *a4, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_23BF737F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanContentEditOption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BF73870()
{
  result = qword_27E1E1188;
  if (!qword_27E1E1188)
  {
    sub_23BF4A2D0(&qword_27E1E1190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1188);
  }

  return result;
}

unint64_t sub_23BF738D4(uint64_t a1)
{
  *(a1 + 8) = sub_23BF73904();
  result = sub_23BF73958();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23BF73904()
{
  result = qword_27E1E1198;
  if (!qword_27E1E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1198);
  }

  return result;
}

unint64_t sub_23BF73958()
{
  result = qword_27E1E11A0;
  if (!qword_27E1E11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E11A0);
  }

  return result;
}

unint64_t sub_23BF739B0()
{
  result = qword_27E1E11A8;
  if (!qword_27E1E11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E11A8);
  }

  return result;
}

void sub_23BF73A04(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [a1 timeTextForNumberSystem_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_23BFFA300();
    v9 = v8;
    v10 = [a1 separatorNSRangeInTimeText_];
    v12 = v11;

    if (v10 == sub_23BFF8AF0())
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
LABEL_6:
      *a3 = v7;
      a3[1] = v9;
      a3[2] = v15;
      a3[3] = v16;
      a3[4] = v13;
      a3[5] = v14;
      return;
    }

    v17 = sub_23BFFA2C0();
    v18 = [v17 substringToIndex_];

    v15 = sub_23BFFA300();
    v16 = v19;

    v20 = sub_23BFFA2C0();
    if (!__OFADD__(v10, v12))
    {
      v21 = v20;
      v22 = [v20 substringFromIndex_];

      v13 = sub_23BFFA300();
      v14 = v23;

      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for ParmesanGalleryPlaceholderStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParmesanGalleryPlaceholderStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23BF73CA8()
{
  result = qword_27E1E11B8;
  if (!qword_27E1E11B8)
  {
    sub_23BF4A2D0(&qword_27E1E11C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E11B8);
  }

  return result;
}

uint64_t sub_23BF73D0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23BF746F4(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23BF73D94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23BF7471C(v3);
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
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unsigned __int8 *sub_23BF73F1C()
{
  result = sub_23BF73F3C();
  off_27E1E11B0 = result;
  return result;
}

unsigned __int8 *sub_23BF73F3C()
{
  v0 = 0;
  while (1)
  {
    v1 = byte_284EBDD38[v0 + 32];
    if (v1 > 5)
    {
      break;
    }

    if (byte_284EBDD38[v0 + 32] > 2u)
    {
      if (v1 == 3)
      {
        if (0x800000023C00B860 == 0x800000023C00B8C0)
        {
          goto LABEL_38;
        }
      }

      else if (v1 == 4)
      {
        if (0x800000023C00B860 == 0x800000023C00B8E0)
        {
          goto LABEL_38;
        }
      }

      else if (0x800000023C00B860 == 0x800000023C00B900)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!byte_284EBDD38[v0 + 32])
      {
        goto LABEL_38;
      }

      if (v1 == 1)
      {
        if (0x800000023C00B860 == 0x800000023C00B880)
        {
          goto LABEL_38;
        }
      }

      else if (0x800000023C00B860 == 0x800000023C00B8A0)
      {
        goto LABEL_38;
      }
    }

LABEL_35:
    v2 = sub_23BFFACC0();

    if (v2)
    {
      goto LABEL_39;
    }

    if (++v0 == 6)
    {
      return byte_284EBDD38;
    }
  }

  if (byte_284EBDD38[v0 + 32] <= 8u)
  {
    if (v1 == 6)
    {
      if (0x800000023C00B860 == 0x800000023C00B920)
      {
        goto LABEL_38;
      }
    }

    else if (v1 == 7)
    {
      if (0x800000023C00B860 == 0x800000023C00B940)
      {
        goto LABEL_38;
      }
    }

    else if (0x800000023C00B860 == 0x800000023C00B960)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v1 == 9)
  {
    if (0x800000023C00B860 == 0x800000023C00B980)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v1 == 10)
  {
    if (0x800000023C00B860 == 0x800000023C00B9A0)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (0x800000023C00B860 != 0x800000023C00B9C0)
  {
    goto LABEL_35;
  }

LABEL_38:

LABEL_39:
  sub_23BF73D94(v0);
  return byte_284EBDD38;
}

id sub_23BF741D0(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    goto LABEL_7;
  }

  if (((1 << a1) & 0x1A1) == 0)
  {
    if (a1 == 10)
    {
      v1 = type metadata accessor for ParmesanTimeLayout();
      v5 = objc_allocWithZone(v1);
      *&v5[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
      *&v5[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
      v8 = v5;
      v3 = &v8;
      goto LABEL_4;
    }

LABEL_7:
    v1 = type metadata accessor for ParmesanTimeLayout();
    v6 = objc_allocWithZone(v1);
    *&v6[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
    *&v6[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 2;
    v9 = v6;
    v3 = &v9;
    goto LABEL_4;
  }

  v1 = type metadata accessor for ParmesanTimeLayout();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
  *&v2[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 3;
  v7 = v2;
  v3 = &v7;
LABEL_4:
  v3->super_class = v1;
  return [(objc_super *)v3 init];
}

uint64_t sub_23BF742EC(unsigned __int8 a1)
{
  result = 0x6269762E656D6974;
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      if (a1 != 3 && a1 != 5)
      {
        return result;
      }
    }

    else if (a1 != 1 && a1 != 2)
    {
      return result;
    }

    return sub_23BFFA300();
  }

  if (a1 <= 8u)
  {
    if (a1 - 6 >= 2)
    {
      if (a1 != 8)
      {
        return result;
      }

      return sub_23BFFA300();
    }

    goto LABEL_15;
  }

  if (a1 == 9)
  {
    return sub_23BFFA300();
  }

  if (a1 != 10)
  {
    return result;
  }

LABEL_15:
  if (qword_27E1DFE18 != -1)
  {
    swift_once();
    result = 0x6269762E656D6974;
  }

  if (byte_27E1E1D60)
  {
    return 0x616C672E656D6974;
  }

  return result;
}

uint64_t sub_23BF74488()
{
  sub_23BF73E1C();
  v1 = v0;
  sub_23BF73E1C();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_23BFFACC0();
  }

  return v3 & 1;
}

uint64_t sub_23BF74510()
{
  sub_23BFFAD90();
  sub_23BF73E1C();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF74574()
{
  sub_23BF73E1C();
  sub_23BFFA3A0();
}

uint64_t sub_23BF745C8()
{
  sub_23BFFAD90();
  sub_23BF73E1C();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF74628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BF74730();
  *a1 = result;
  return result;
}

unint64_t sub_23BF74658@<X0>(void *a1@<X8>)
{
  result = sub_23BF73E1C();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

unint64_t sub_23BF746A0()
{
  result = qword_27E1E11C8;
  if (!qword_27E1E11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E11C8);
  }

  return result;
}

uint64_t sub_23BF74730()
{
  v0 = sub_23BFFAB70();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

void sub_23BF74780()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ParmesanNoShufflesViewController();
  objc_msgSendSuper2(&v13, sel_loadView);
  type metadata accessor for ParmesanNoShufflesViewModel();
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[2] = sub_23BF74DE8;
  v1[3] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[4] = sub_23BF74E18;
  v1[5] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[6] = sub_23BF74E48;
  v1[7] = v4;
  sub_23BF74E50();

  sub_23BFF9F70();
  v5 = sub_23BFF9B10();

  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  [v0 addChildViewController_];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v8 addSubview_];

  v11 = [v6 view];
  if (v11)
  {
    v12 = v11;
    [v11 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

    [v6 didMoveToParentViewController_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_23BF749D0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_23BF74A2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong parentViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_23BF74AF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ParmesanShuffleSelection();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
  v7 = &v6[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  *v7 = a1;
  v7[1] = a2;
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
  v6[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
  v13.receiver = v6;
  v13.super_class = v5;

  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor);
  v10 = sub_23BFFA2C0();
  v11 = [v9 titleForCollectionWithIdentifier_];

  [v9 setShuffleSelection:v8 withKeyAssetIdentifier:0 albumName:v11];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong shuffleSelectionViewController:v2 didFinishWithSelection:v8];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_23BF74D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanNoShufflesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BF74E50()
{
  result = qword_27E1E11D0;
  if (!qword_27E1E11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E11D0);
  }

  return result;
}

id sub_23BF74FCC()
{
  v1 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
  *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition] = 0;

  v2 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views];
  *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ParmesanGalleryItem();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23BF75134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  if (v43)
  {
    v5 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    if (v5)
    {
      v7 = *((*MEMORY[0x277D85000] & *v43) + 0xC0);
      v46 = v5;
      v42 = v43;
      v8 = v7();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 isBright];

        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }

      v39 = v11;
      v12 = (*((*MEMORY[0x277D85000] & *v42) + 0xC8))();
      if (v12)
      {

        v13 = &unk_284EBDA38;
      }

      else
      {
        v13 = &unk_284EBDA60;
      }

      v14 = *(v13 + 2);
      if (v14)
      {
        v45 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView;
        v15 = (v13 + 32);
        v44 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView;
        v38 = a4;
        do
        {
          v17 = *v15++;
          v16 = v17;
          v18 = v45;
          if (v17 < 2)
          {
            v18 = v44;
          }

          v19 = *&v46[v18];
          if (!v19)
          {
            goto LABEL_15;
          }

          v20 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_contentView;
          v21 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_contentView];
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = v19;
          }

          else
          {
            if (v16 > 1)
            {
              v28 = v19;
              v29 = v21;

              v29[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_useMaskingLayer] = 1;
LABEL_29:
              v30 = *&v21[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_maskingLayer];
              if (v30)
              {
                v31 = v30;
                v32 = [v21 layer];
                [v32 setMask_];

                v33 = [v21 layer];
                [v33 setInvertsMask_];
              }

              goto LABEL_32;
            }

            v24 = sub_23BFFACC0();
            v25 = v19;
            v26 = v21;

            v26[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanGalleryMaskableContentView_useMaskingLayer] = v24 & 1;
            a4 = v38;
            if (v24)
            {
              goto LABEL_29;
            }

            v27 = [v26 layer];
            [v27 setMask_];
          }

LABEL_32:
          v34 = (*((*MEMORY[0x277D85000] & *v42) + 0x158))();
          if (a2)
          {
            v35 = sub_23BFC6818(v16, v39, v34, a3, a4);
            v36 = [*&v19[v20] layer];
            sub_23BFEADF4(v35);

            v37 = sub_23BFFA450();

            [v36 setFilters_];

            v19 = v36;
            v34 = v37;
          }

LABEL_15:
          --v14;
        }

        while (v14);
      }
    }
  }
}

void sub_23BF755A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  if (!v4)
  {
    return;
  }

  v5 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  if (!v5)
  {
    return;
  }

  v8 = *((*MEMORY[0x277D85000] & *v4) + 0xC8);
  v9 = v4;
  v10 = v5;
  v11 = v8();
  if (v11)
  {

    v12 = &unk_284EBDA88;
  }

  else
  {
    v12 = &unk_284EBDAB0;
  }

  v13 = v12[2];
  if (!v13)
  {

    return;
  }

  v14 = 0;
  v15 = (v12 + 4);
  v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView;
  v17 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView;
  v75 = *MEMORY[0x277CDA640];
  v76 = OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout;
  v74 = *MEMORY[0x277CDA440];
  v85 = v9;
  v73 = a3;
  v72 = a1;
  v82 = v12[2];
  v83 = v10;
  v80 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView;
  v81 = (v12 + 4);
  v79 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView;
  while (1)
  {
    v18 = v15[v14];
    if (v18 >= 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    v20 = *&v10[v19];
    if (v20)
    {
      v21 = v18 == 2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_10;
    }

    v87 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_legibilityCurtainView;
    v22 = *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_legibilityCurtainView];
    v86 = v20;
    v23 = [v22 layer];
    v24 = [v23 sublayers];

    if (v24)
    {
      break;
    }

LABEL_29:
    v30 = (*((*MEMORY[0x277D85000] & *v9) + 0xC0))();
    if (v30)
    {
      v31 = v30;
      v32 = *(v9 + v76);
      if (a3)
      {
        v33 = qword_27E1DFE28;
        v34 = v32;
        if (v33 != -1)
        {
          swift_once();
        }

        v101 = xmmword_27E1E2928;
        v102 = unk_27E1E2938;
        v103 = xmmword_27E1E2948;
        v104 = unk_27E1E2958;
        v97 = xmmword_27E1E28E8;
        v98 = unk_27E1E28F8;
        v99 = xmmword_27E1E2908;
        v100 = unk_27E1E2918;
        v95 = xmmword_27E1E28C8;
        v96 = unk_27E1E28D8;
        *&v94[32] = unk_27E1E2989;
        *&v94[48] = unk_27E1E2999;
        *&v94[64] = unk_27E1E29A9;
        *&v94[79] = dword_27E1E29B8;
        *v94 = unk_27E1E2969;
        *&v94[16] = unk_27E1E2979;
        v35 = byte_27E1E2968;
        if ([v31 isBrightForVibrant])
        {
          goto LABEL_34;
        }

LABEL_39:
        if ([v31 isComplexBackground])
        {
          v40 = 80;
          if (v35)
          {
            v40 = 0;
          }

          v41 = (&v95 + v40);
          v43 = v41[3];
          v42 = v41[4];
          v44 = v41[1];
          v45 = *v41;
          v91 = v41[2];
          v92 = v43;
          v93 = v42;
          v89 = v45;
          v90 = v44;
LABEL_45:
          v46 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
          v47 = objc_opt_self();
          v88[2] = v91;
          v88[3] = v92;
          v88[4] = v93;
          v88[0] = v89;
          v88[1] = v90;
          v48 = [v47 valueWithCAColorMatrix_];
          [v46 setValue:v48 forKey:v74];

          v84 = v32;
          if (a3)
          {
            v49 = sub_23BFB3278(v32, a1);
            if (!(v49 >> 62))
            {
LABEL_47:
              v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v50)
              {
                goto LABEL_62;
              }

LABEL_48:
              if (v50 < 1)
              {
                goto LABEL_69;
              }

              v77 = v31;
              v78 = v14;
              v51 = 0;
              v52 = v49 & 0xC000000000000001;
              v53 = v20;
              do
              {
                if (v52)
                {
                  v54 = MEMORY[0x23EEC36D0](v51, v49);
                }

                else
                {
                  v54 = *(v49 + 8 * v51 + 32);
                }

                v55 = v54;
                ++v51;
                sub_23BF4A264(&qword_27E1E11E8);
                v56 = swift_allocObject();
                *(v56 + 16) = xmmword_23C001BB0;
                *(v56 + 56) = sub_23BF4BDF0(0, &qword_27E1E11F0);
                *(v56 + 32) = v46;
                v57 = v46;
                v58 = sub_23BFFA450();

                [v55 setFilters_];
              }

              while (v50 != v51);
              v59 = v53;

              v60 = 0;
              a3 = v73;
              a1 = v72;
              v14 = v78;
              do
              {
                if (v52)
                {
                  v61 = MEMORY[0x23EEC36D0](v60, v49);
                }

                else
                {
                  v61 = *(v49 + 8 * v60 + 32);
                }

                v62 = v61;
                ++v60;
                v63 = [*&v59[v87] layer];
                [v63 addSublayer_];
              }

              while (v50 != v60);

              v9 = v85;
              goto LABEL_9;
            }
          }

          else
          {
            v64 = a3;
            v65 = a1;
            v66 = v31;
            v67 = [objc_opt_self() currentDevice];
            if (!v67)
            {
              goto LABEL_70;
            }

            v68 = v67;
            [v67 screenBounds];

            v69 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
            [v69 setFrame_];
            v70 = [objc_opt_self() blackColor];
            v71 = [v70 CGColor];

            [v69 setBackgroundColor_];
            sub_23BF4A264(&qword_27E1E05E0);
            v49 = swift_allocObject();
            *(v49 + 16) = xmmword_23C001BA0;
            *(v49 + 32) = v69;
            v31 = v66;
            a1 = v65;
            a3 = v64;
            if (!(v49 >> 62))
            {
              goto LABEL_47;
            }
          }

          v50 = sub_23BFFAAB0();
          if (!v50)
          {
LABEL_62:

            v13 = v82;
            v10 = v83;
            v16 = v80;
            v15 = v81;
            v17 = v79;
            v9 = v85;
            goto LABEL_10;
          }

          goto LABEL_48;
        }

        v91 = v97;
        v92 = v98;
        v93 = v99;
        v37 = v95;
        v36 = v96;
      }

      else
      {
        v38 = qword_27E1DFE30;
        v39 = v32;
        if (v38 != -1)
        {
          swift_once();
        }

        v101 = xmmword_27E1E2A1C;
        v102 = unk_27E1E2A2C;
        v103 = xmmword_27E1E2A3C;
        v104 = unk_27E1E2A4C;
        v97 = xmmword_27E1E29DC;
        v98 = *&dword_27E1E29EC;
        v99 = xmmword_27E1E29FC;
        v100 = unk_27E1E2A0C;
        v95 = xmmword_27E1E29BC;
        v96 = *algn_27E1E29CC;
        *&v94[32] = unk_27E1E2A7D;
        *&v94[48] = unk_27E1E2A8D;
        *&v94[64] = unk_27E1E2A9D;
        *&v94[79] = dword_27E1E2AAC;
        *v94 = unk_27E1E2A5D;
        *&v94[16] = unk_27E1E2A6D;
        v35 = byte_27E1E2A5C;
        if (![v31 isBrightForGlass])
        {
          goto LABEL_39;
        }

LABEL_34:
        v91 = *&v94[35];
        v92 = *&v94[51];
        v93 = *&v94[67];
        v37 = *&v94[3];
        v36 = *&v94[19];
      }

      v89 = v37;
      v90 = v36;
      goto LABEL_45;
    }

LABEL_9:
    v13 = v82;
    v10 = v83;
    v16 = v80;
    v15 = v81;
    v17 = v79;
LABEL_10:
    if (++v14 == v13)
    {

      return;
    }
  }

  sub_23BF4BDF0(0, qword_27E1E11F8);
  v25 = sub_23BFFA460();

  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_21;
    }

LABEL_28:

    v9 = v85;
    goto LABEL_29;
  }

  v26 = sub_23BFFAAB0();
  if (!v26)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v26 >= 1)
  {
    for (i = 0; i != v26; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x23EEC36D0](i, v25);
      }

      else
      {
        v28 = *(v25 + 8 * i + 32);
      }

      v29 = v28;
      [v28 removeFromSuperlayer];
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t ParmesanTransitioningContextFromOptional.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BFFA920();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ParmesanTransitioningContextFromOptional.init(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23BFFA920();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ParmesanTransitioningContextFromOptional();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t ParmesanTransitioningContextNeitherOptional.init(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for ParmesanTransitioningContextNeitherOptional() + 28);

  return v9(v7, a2, a3);
}

uint64_t sub_23BF760EC()
{
  result = sub_23BFFA920();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BF7617C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 1;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = *(v5 + 80);
  v10 = v7 + v9;
  if (v6)
  {
    v11 = v7 + v9;
  }

  else
  {
    v11 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + v7;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v6)
      {
LABEL_28:
        if (v8 == v6)
        {
          v18 = (*(v5 + 48))(a1, v6);
          if (v18 >= 2)
          {
            return v18 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v20 = *(v5 + 48);
          v21 = (a1 + v10) & ~v9;

          return v20(v21);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_16:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v6 + (v13 | v17) + 1;
}

char *sub_23BF76330(char *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = *(v6 + 80);
  v11 = v8 + v10;
  if (v7)
  {
    v12 = v8 + v10;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = (v12 & ~v10) + v8;
  v14 = a3 >= v7;
  v15 = a3 - v7;
  if (v15 == 0 || !v14)
  {
LABEL_18:
    if (v7 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v13 > 3)
  {
    v5 = 1;
    if (v7 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_18;
  }

  v5 = 4;
  if (v7 < a2)
  {
LABEL_19:
    v18 = ~v7 + a2;
    if (v13 < 4)
    {
      v20 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v21 = v18 & ~(-1 << (8 * v13));
        v22 = result;
        bzero(result, v13);
        result = v22;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v22 = v21;
            if (v5 > 1)
            {
LABEL_48:
              if (v5 == 2)
              {
                *&result[v13] = v20;
              }

              else
              {
                *&result[v13] = v20;
              }

              return result;
            }
          }

          else
          {
            *v22 = v18;
            if (v5 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *v22 = v21;
        v22[2] = BYTE2(v21);
      }

      if (v5 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v13);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v5 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v5)
    {
      result[v13] = v20;
    }

    return result;
  }

LABEL_28:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *&result[v13] = 0;
  }

  else if (v5)
  {
    result[v13] = 0;
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
  v23 = *(v6 + 56);
  if (v9 == v7)
  {
    a2 = (a2 + 1);
  }

  else
  {
    result = (&result[v11] & ~v10);
  }

  return v23(result, a2);
}

uint64_t sub_23BF76580()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BF765F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_23BF76740(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_23BF76958(double a1, double a2)
{
  v4 = v2[1];
  if (*v2)
  {
    v5 = *(*v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    if (v5)
    {
      v7 = *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
      v8 = v5;
      if (v7)
      {
        v9 = v7;
        sub_23BFDD640();
        [v9 setAlpha_];
      }

      v10 = *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
      if (v10)
      {
        v11 = v10;
        sub_23BFDD640();
        [v11 setAlpha_];
      }
    }
  }

  v12 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
    v19 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    v14 = v12;
    if (v13)
    {
      v15 = v13;
      sub_23BFDD640();
      [v15 setAlpha_];
    }

    v16 = v19;
    v17 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
    if (v17)
    {
      v18 = v17;
      sub_23BFDD640();
      [v18 setAlpha_];

      v16 = v19;
    }
  }
}

void sub_23BF76AF0()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = *(*v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    if (v2)
    {
      v3 = v2;
      sub_23BFF9200();
      CGAffineTransformMakeScale(&v26, v4, v4);
      a = v26.a;
      b = v26.b;
      c = v26.c;
      d = v26.d;
      tx = v26.tx;
      ty = v26.ty;
      v11 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
      if (v11)
      {
        [v11 setTransform_];
      }

      v12 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
      if (v12)
      {
        v13 = v12;
        v26.a = a;
        v26.b = b;
        v26.c = c;
        v26.d = d;
        v26.tx = tx;
        v26.ty = ty;
        [v13 setTransform_];
      }
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  if (v14)
  {
    v15 = v14;
    sub_23BFF9200();
    CGAffineTransformMakeScale(&v26, v16, v16);
    v17 = v26.a;
    v18 = v26.b;
    v19 = v26.c;
    v20 = v26.d;
    v21 = v26.tx;
    v22 = v26.ty;
    v23 = *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
    if (v23)
    {
      [v23 setTransform_];
    }

    v24 = *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
    if (v24)
    {
      v25 = v24;
      v26.a = v17;
      v26.b = v18;
      v26.c = v19;
      v26.d = v20;
      v26.tx = v21;
      v26.ty = v22;
      [v25 setTransform_];
    }
  }
}

void sub_23BF76CC8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_config;
  v7 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_config];
  if (!*(v7 + 24))
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v27 = sub_23BFF92B0();
    sub_23BF4A22C(v27, qword_27E1EB4B0);
    v28 = v4;
    v29 = sub_23BFF9290();
    v30 = sub_23BFFA640();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = *(*&v5[v6] + 16);
      *(v31 + 4) = v33;
      *v32 = v33;
      v34 = v33;
      _os_log_impl(&dword_23BF0C000, v29, v30, "Background style is none, skipping view setup for composition: %@", v31, 0xCu);
      sub_23BF713D8(v32);
      MEMORY[0x23EEC4DF0](v32, -1, -1);
      MEMORY[0x23EEC4DF0](v31, -1, -1);
    }

LABEL_14:
    type metadata accessor for ParmesanAssetComposition();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      goto LABEL_37;
    }

    v47 = (*(v46 + OBJC_IVAR___NTKParmesanAssetComposition_asset) + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription);
    v48 = v47[1];
    if (!v48)
    {
      goto LABEL_37;
    }

    v49 = *v47;
    v50 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v50 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v50)
    {
      goto LABEL_37;
    }

    v51 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView;
    v52 = *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
    if (v52)
    {

      [v52 setIsAccessibilityElement_];
      v53 = *&v5[v51];
      if (v53)
      {
        [v53 setAccessibilityTraits_];
        v54 = *&v5[v51];
        if (v54)
        {
          v55 = v54;
          v56 = sub_23BFFA2C0();

          [v55 setAccessibilityLabel_];

          goto LABEL_37;
        }
      }
    }

    else
    {
    }

LABEL_37:
    v72 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView;
    v73 = *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
    if (v73)
    {
      v74 = [v73 layer];
      if (qword_27E1DFD88 != -1)
      {
        swift_once();
      }

      sub_23BF4A264(&qword_27E1E1320);
      v75 = sub_23BFFA260();
      [v74 setActions_];

      v76 = *&v5[v72];
      if (v76)
      {
        [v76 setOpaque_];
      }
    }

    return;
  }

  if (*(v7 + 24) == 1)
  {
    v12 = *(v7 + 16);
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v12) + 0xB8);
    v77 = v12;
    v15 = v14();
    if (v15)
    {
      v16 = v15;
      v17 = (*((*v13 & v77->isa) + 0x158))();
      v18 = (*((*v13 & v77->isa) + 0x168))();
      v19 = type metadata accessor for ParmesanGalleryImageContentView();
      v20 = objc_allocWithZone(v19);
      v21 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryImageContentView_dimming;
      *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryImageContentView_dimming] = 0x3FF0000000000000;
      *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryImageContentView_monochromeColorMatrix] = v17;
      *&v20[v21] = v18;
      v78.receiver = v20;
      v78.super_class = v19;
      v22 = v17;
      v23 = objc_msgSendSuper2(&v78, sel_initWithFrame_, 0.0, 0.0, a3, a4);
      [v23 setImage_];

      v24 = v23;
      [v24 setContentMode_];
      v25 = objc_allocWithZone(type metadata accessor for ParmesanGalleryContentContainerView());
      v26 = sub_23BFDD498(v24, 0, a1, a2, a3, a4);

LABEL_13:
      v45 = *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
      *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView] = v26;

      goto LABEL_14;
    }

    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v57 = sub_23BFF92B0();
    sub_23BF4A22C(v57, qword_27E1EB4B0);
    v58 = v4;
    v59 = sub_23BFF9290();
    v60 = sub_23BFFA650();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = *(*&v5[v6] + 16);
      *(v61 + 4) = v63;
      *v62 = v63;
      v64 = v63;
      _os_log_impl(&dword_23BF0C000, v59, v60, "Found nil layout image when setting up background view for composition: %@", v61, 0xCu);
      sub_23BF713D8(v62);
      MEMORY[0x23EEC4DF0](v62, -1, -1);
      MEMORY[0x23EEC4DF0](v61, -1, -1);
    }
  }

  else
  {
    v35 = *(v7 + 16);
    type metadata accessor for ParmesanAssetComposition();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      v38 = objc_opt_self();
      v39 = v35;
      v40 = [v38 currentDevice];
      if (!v40)
      {
        __break(1u);
        return;
      }

      v41 = v40;
      objc_allocWithZone(type metadata accessor for ParmesanGalleryLivePhotoContentView());
      v42 = v39;
      v43 = sub_23BF71440(v37, v41, 0.0, 0.0, a3, a4);
      v44 = objc_allocWithZone(type metadata accessor for ParmesanGalleryContentContainerView());
      v26 = sub_23BFDD498(v43, 0, a1, a2, a3, a4);

      goto LABEL_13;
    }

    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v65 = sub_23BFF92B0();
    sub_23BF4A22C(v65, qword_27E1EB4B0);
    v66 = v4;
    v77 = sub_23BFF9290();
    v67 = sub_23BFFA650();

    if (os_log_type_enabled(v77, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      v70 = *(*&v5[v6] + 16);
      *(v68 + 4) = v70;
      *v69 = v70;
      v71 = v70;
      sub_23BF713D8(v69);
      MEMORY[0x23EEC4DF0](v69, -1, -1);
      MEMORY[0x23EEC4DF0](v68, -1, -1);
    }
  }
}

void sub_23BF774FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_config;
  v7 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_config];
  if (!*(v7 + 25))
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v16 = sub_23BFF92B0();
    sub_23BF4A22C(v16, qword_27E1EB4B0);
    v17 = v4;
    oslog = sub_23BFF9290();
    v10 = sub_23BFFA640();

    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v18 = *(*&v5[v6] + 16);
    *(v11 + 4) = v18;
    *v12 = v18;
    v19 = v18;
    goto LABEL_11;
  }

  if (*(v7 + 25) == 2)
  {
    if (qword_27E1DFDA0 != -1)
    {
      swift_once();
    }

    v8 = sub_23BFF92B0();
    sub_23BF4A22C(v8, qword_27E1EB4B0);
    v9 = v4;
    oslog = sub_23BFF9290();
    v10 = sub_23BFFA650();

    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *(*&v5[v6] + 16);
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
LABEL_11:
    _os_log_impl(&dword_23BF0C000, oslog, v10, v15, v11, 0xCu);
    sub_23BF713D8(v12);
    MEMORY[0x23EEC4DF0](v12, -1, -1);
    MEMORY[0x23EEC4DF0](v11, -1, -1);
LABEL_12:
    v20 = oslog;
    goto LABEL_16;
  }

  type metadata accessor for ParmesanGalleryMaskableContentView();
  v25 = sub_23BF70C20(*(v7 + 16), 0.0, 0.0, a3, a4);
  v26 = objc_allocWithZone(type metadata accessor for ParmesanGalleryContentContainerView());
  v27 = v25;
  v28 = sub_23BFDD498(v27, 1, a1, a2, a3, a4);
  v29 = [v28 layer];
  if (qword_27E1DFD88 != -1)
  {
    swift_once();
  }

  sub_23BF4A264(&qword_27E1E1320);
  v30 = sub_23BFFA260();
  [v29 setActions_];

  [v28 setOpaque_];
  v20 = *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView] = v28;
LABEL_16:
}

id sub_23BF778B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryContentViews();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF7796C()
{
  sub_23BF4A264(&qword_27E1E1328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C003D00;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 56) = 0x73746E65746E6F63;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x800000023C00E4E0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 104) = 0x656D617266;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 128) = 0x7974696361706FLL;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 152) = 0x6E6F697469736F70;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 176) = 0x726F66736E617274;
  *(inited + 184) = 0xE90000000000006DLL;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v1 = sub_23BFE4194(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E1330);
  result = swift_arrayDestroy();
  qword_27E1E1300 = v1;
  return result;
}

uint64_t sub_23BF77B58()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF77C2C()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BF77CEC()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF77DBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BF78B94();
  *a1 = result;
  return result;
}

void sub_23BF77DEC(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4C52556F65646976;
  v4 = 0x800000023C00B9F0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x6570416E61656C63;
    v4 = 0xED00006572757472;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461727564;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_23BF77E7C()
{
  v1 = 0x4C52556F65646976;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6570416E61656C63;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23BF77F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BF78B94();
  *a1 = result;
  return result;
}

uint64_t sub_23BF77F3C(uint64_t a1)
{
  v2 = sub_23BF78938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF77F78(uint64_t a1)
{
  v2 = sub_23BF78938();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23BF77FE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanAssetVideoInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanAssetVideoInfo()
{
  result = qword_27E1E1338;
  if (!qword_27E1E1338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BF780DC()
{
  result = sub_23BFF8D10();
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

uint64_t sub_23BF78184(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF78938();
  sub_23BFFAE40();
  LOBYTE(v11[0]) = 0;
  sub_23BFF8D10();
  sub_23BF78A34(&qword_27E1E1370, MEMORY[0x277CC9260]);
  sub_23BFFAC50();
  if (!v2)
  {
    *&v11[0] = *(v3 + OBJC_IVAR___NTKParmesanAssetVideoInfo_duration);
    v12 = 1;
    sub_23BF789E0();
    sub_23BFFAC50();
    *&v11[0] = *(v3 + OBJC_IVAR___NTKParmesanAssetVideoInfo_stillDisplayTime);
    v12 = 2;
    sub_23BFFAC50();
    v9 = *(v3 + OBJC_IVAR___NTKParmesanAssetVideoInfo_cleanAperture + 16);
    v11[0] = *(v3 + OBJC_IVAR___NTKParmesanAssetVideoInfo_cleanAperture);
    v11[1] = v9;
    v12 = 3;
    type metadata accessor for CGRect(0);
    sub_23BF78A34(&qword_27E1E1380, type metadata accessor for CGRect);
    sub_23BFFAC50();
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_23BF78424(void *a1)
{
  v3 = sub_23BFF8D10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23BF4A264(&qword_27E1E1348);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - v8;
  v10 = a1[3];
  v20 = a1;
  sub_23BF4C484(a1, v10);
  sub_23BF78938();
  sub_23BFFAE20();
  if (v1)
  {
    sub_23BF4A9A4(v20);
    v17 = v21;
    type metadata accessor for ParmesanAssetVideoInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_23BF78A34(&qword_27E1E06A0, MEMORY[0x277CC9260]);
    sub_23BFFABE0();
    v12 = *(v4 + 32);
    v13 = v21;
    v12(&v21[OBJC_IVAR___NTKParmesanAssetVideoInfo_videoURL], v6, v3);
    v25 = 1;
    sub_23BF7898C();
    sub_23BFFABE0();
    *&v13[OBJC_IVAR___NTKParmesanAssetVideoInfo_duration] = v23;
    v25 = 2;
    sub_23BFFABE0();
    *&v13[OBJC_IVAR___NTKParmesanAssetVideoInfo_stillDisplayTime] = v23;
    type metadata accessor for CGRect(0);
    v25 = 3;
    sub_23BF78A34(&qword_27E1E1360, type metadata accessor for CGRect);
    sub_23BFFABE0();
    v14 = &v13[OBJC_IVAR___NTKParmesanAssetVideoInfo_cleanAperture];
    v15 = v24;
    *v14 = v23;
    *(v14 + 1) = v15;
    v16 = type metadata accessor for ParmesanAssetVideoInfo();
    v22.receiver = v13;
    v22.super_class = v16;
    v17 = objc_msgSendSuper2(&v22, sel_init);
    (*(v7 + 8))(v9, v19);
    sub_23BF4A9A4(v20);
  }

  return v17;
}

uint64_t sub_23BF7886C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ParmesanAssetVideoInfo();
  result = sub_23BFFAA00();
  *a1 = result;
  return result;
}

id sub_23BF788B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanAssetVideoInfo());
  result = sub_23BF78424(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BF78938()
{
  result = qword_27E1E1350;
  if (!qword_27E1E1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1350);
  }

  return result;
}

unint64_t sub_23BF7898C()
{
  result = qword_27E1E1358;
  if (!qword_27E1E1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1358);
  }

  return result;
}

unint64_t sub_23BF789E0()
{
  result = qword_27E1E1378;
  if (!qword_27E1E1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1378);
  }

  return result;
}

uint64_t sub_23BF78A34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BF78A90()
{
  result = qword_27E1E1388;
  if (!qword_27E1E1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1388);
  }

  return result;
}

unint64_t sub_23BF78AE8()
{
  result = qword_27E1E1390;
  if (!qword_27E1E1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1390);
  }

  return result;
}

unint64_t sub_23BF78B40()
{
  result = qword_27E1E1398;
  if (!qword_27E1E1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1398);
  }

  return result;
}

uint64_t sub_23BF78B94()
{
  v0 = sub_23BFFAB70();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BF78BE0(uint64_t a1, int a2)
{
  LODWORD(v45) = a2;
  v47 = sub_23BFF9130();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23BFF9100();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BFF91A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_23BFF8DE0();
  v11 = *(v50 - 8);
  v12 = MEMORY[0x28223BE20](v50);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v44 = a1;
  v20 = *(a1 + 16);
  if (v45)
  {
    v21 = MEMORY[0x277D84F90];
    if (v45 == 1)
    {
      if (v20)
      {
        v51 = MEMORY[0x277D84F90];
        sub_23BFCE1FC(0, v20, 0);
        v21 = v51;
        v22 = *(v48 + 16);
        v48 += 16;
        v49 = v22;
        v23 = v44 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
        v47 = *(v48 + 56);
        v24 = (v48 - 8);
        v45 = v11 + 32;
        do
        {
          v25 = v46;
          (v49)(v6, v23, v46);
          sub_23BFF90D0();
          (*v24)(v6, v25);
          v51 = v21;
          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_23BFCE1FC(v26 > 1, v27 + 1, 1);
            v21 = v51;
          }

          *(v21 + 16) = v27 + 1;
          (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, v17, v50);
          v23 += v47;
          --v20;
        }

        while (v20);
      }
    }

    else if (v20)
    {
      v51 = MEMORY[0x277D84F90];
      sub_23BFCE1FC(0, v20, 0);
      v21 = v51;
      v48 = *(v49 + 2);
      v49 += 16;
      v37 = v44 + ((v49[64] + 32) & ~v49[64]);
      v38 = *(v49 + 7);
      v39 = (v49 - 8);
      v45 = v11 + 32;
      v46 = v38;
      do
      {
        v40 = v47;
        (v48)(v4, v37, v47);
        sub_23BFF9110();
        (*v39)(v4, v40);
        v51 = v21;
        v42 = *(v21 + 16);
        v41 = *(v21 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_23BFCE1FC(v41 > 1, v42 + 1, 1);
          v21 = v51;
        }

        *(v21 + 16) = v42 + 1;
        (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v42, v14, v50);
        v37 += v46;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v48 = v7;
    v49 = v10;
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v51 = MEMORY[0x277D84F90];
      sub_23BFCE1FC(0, v20, 0);
      v21 = v51;
      v28 = v8 + 16;
      v29 = *(v8 + 16);
      v30 = v44 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v46 = *(v8 + 72);
      v47 = v29;
      v31 = (v8 + 8);
      v45 = v11 + 32;
      v32 = v49;
      do
      {
        v33 = v48;
        v34 = v28;
        (v47)(v32, v30, v48);
        sub_23BFF9140();
        v32 = v49;
        (*v31)(v49, v33);
        v51 = v21;
        v36 = *(v21 + 16);
        v35 = *(v21 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_23BFCE1FC(v35 > 1, v36 + 1, 1);
          v32 = v49;
          v21 = v51;
        }

        *(v21 + 16) = v36 + 1;
        (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v36, v19, v50);
        v30 += v46;
        --v20;
        v28 = v34;
      }

      while (v20);
    }
  }

  return v21;
}

void sub_23BF7922C(void *a1)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for ParmesanDebugFaceListViewController();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_loadView);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v7 = sub_23BFFA2C0();

    [v4 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF7934C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ParmesanDebugFaceListViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  v3 = sub_23BFFA2C0();

  [v1 setTitle_];
}

void sub_23BF79460(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_23BF7934C(a3);
}

uint64_t sub_23BF794B4()
{
  sub_23BFF8DE0();
  sub_23BF7ABF4();
  sub_23BFF9500();
  sub_23BF4A264(&qword_27E1E13E0);
  sub_23BFF94E0();
  v1 = *(v0 + qword_27E1E13A0 + 8);

  sub_23BF78BE0(v2, v1);

  sub_23BFF94A0();
}

id sub_23BF79594(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v38 = a1;
  v3 = sub_23BF4A264(&qword_27E1E13C0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v29 - v4;
  v34 = sub_23BFF9130();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BF4A264(&qword_27E1E13C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_23BFF9100();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BF4A264(&qword_27E1E13D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_23BFF91A0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  v37 = &v29;
  v19 = *(v2 + qword_27E1E13A0);
  v20 = *(v2 + qword_27E1E13A0 + 8);
  v39 = v38;

  if (!v20)
  {
    sub_23BF79B0C(sub_23BF7ABC0, v19, MEMORY[0x277D3B390], v14);

    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v14, v15);
      v27 = sub_23BF7A3D4(v18);
      (*(v16 + 8))(v18, v15);
      return v27;
    }

    v22 = &qword_27E1E13D0;
LABEL_9:
    v23 = v14;
    goto LABEL_10;
  }

  if (v20 != 1)
  {
    v14 = v33;
    sub_23BF79B0C(sub_23BF7AB58, v19, MEMORY[0x277D3B380], v33);

    v24 = v32;
    v25 = v34;
    if ((*(v32 + 48))(v14, 1, v34) != 1)
    {
      v28 = v30;
      (*(v24 + 32))(v30, v14, v25);
      v27 = sub_23BF7A700(v28);
      (*(v24 + 8))(v28, v25);
      return v27;
    }

    v22 = &qword_27E1E13C0;
    goto LABEL_9;
  }

  sub_23BF79B0C(sub_23BF7AB8C, v19, MEMORY[0x277D3B370], v8);

  v21 = v31;
  if ((*(v31 + 48))(v8, 1, v9) == 1)
  {
    v22 = &qword_27E1E13C8;
    v23 = v8;
LABEL_10:
    sub_23BF4B2D4(v23, v22);
    return 0;
  }

  (*(v21 + 32))(v11, v8, v9);
  v27 = sub_23BF79DDC();
  (*(v21 + 8))(v11, v9);
  return v27;
}

uint64_t sub_23BF79B0C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_23BF79CE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_23BFF8DE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v6);
  LOBYTE(a3) = sub_23BFF8DC0();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

id sub_23BF79DDC()
{
  v1 = sub_23BF4A264(&unk_27E1E0590);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v36 - v2;
  v3 = sub_23BFF9340();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BFF92E0();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BFF9490();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 view];
  if (result)
  {
    v11 = result;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v15 = sub_23BFFA2C0();

    v16 = sub_23BFF8DF0();
    v17 = [v12 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v16];

    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();

    sub_23BFF93A0();
    v19 = objc_opt_self();
    sub_23BF4A264(&unk_27E1E0990);
    v20 = swift_allocObject();
    v38 = xmmword_23C001BB0;
    *(v20 + 16) = xmmword_23C001BB0;
    *(v20 + 32) = sub_23BFF90F0();
    *(v20 + 40) = v21;
    v22 = sub_23BFFA450();

    v23 = [v19 fetchAssetCollectionsWithLocalIdentifiers:v22 options:0];

    v24 = [v23 firstObject];
    v39 = v24;
    if (!v24 || (v25 = v24, sub_23BFFA620(), v27 = v26, v25, !v27))
    {
    }

    sub_23BFF9450();
    sub_23BFF90F0();
    sub_23BFF93B0();
    v48[3] = v7;
    v48[4] = MEMORY[0x277D74C30];
    v28 = sub_23BF4AD24(v48);
    v37 = v9;
    v29 = v40;
    (*(v40 + 16))(v28, v9, v7);
    v36 = v17;
    v30 = v18;
    MEMORY[0x23EEC3420](v48);
    sub_23BF4A264(&qword_27E1E05A0);
    sub_23BFF9350();
    *(swift_allocObject() + 16) = v38;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x277D74A98], v43);
    v34 = sub_23BFF92F0();
    (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
    v35 = v44;
    sub_23BFF9330();
    sub_23BFF9320();
    (*(v46 + 8))(v35, v47);
    (*(v32 + 8))(v31, v33);
    sub_23BFFA7B0();

    (*(v29 + 8))(v37, v7);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BF7A3D4(uint64_t a1)
{
  v22 = a1;
  v2 = sub_23BFF8DE0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BFF9490();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v10 = result;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v14 = sub_23BFFA2C0();

    v15 = sub_23BFF8DF0();
    v16 = [v11 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v15];

    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();

    sub_23BFF93A0();
    v18 = sub_23BF7ADF0();
    v19 = [v18 shuffleName];

    sub_23BFFA300();
    sub_23BFF9450();
    sub_23BFF9140();
    sub_23BFF8DB0();
    (*(v23 + 8))(v4, v24);
    sub_23BFF93B0();
    v25[3] = v5;
    v25[4] = MEMORY[0x277D74C30];
    v20 = sub_23BF4AD24(v25);
    (*(v6 + 16))(v20, v8, v5);
    v21 = v16;
    MEMORY[0x23EEC3420](v25);

    (*(v6 + 8))(v8, v5);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BF7A700(uint64_t a1)
{
  v20 = a1;
  v21 = sub_23BFF8DE0();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23BFF9490();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v9 = result;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v13 = sub_23BFFA2C0();

    v14 = sub_23BFF8DF0();
    v15 = [v10 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v14];

    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();

    sub_23BFF93A0();
    sub_23BFF9450();
    sub_23BFF9110();
    sub_23BFF8DB0();
    (*(v2 + 8))(v4, v21);
    sub_23BFF93B0();
    v17 = v22;
    v23[3] = v22;
    v23[4] = MEMORY[0x277D74C30];
    v18 = sub_23BF4AD24(v23);
    (*(v5 + 16))(v18, v7, v17);
    v19 = v15;
    MEMORY[0x23EEC3420](v23);

    (*(v5 + 8))(v7, v17);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BF7AA4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanDebugFaceListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanDebugFaceListViewController()
{
  result = qword_27E1E13B0;
  if (!qword_27E1E13B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23BF7ABF4()
{
  result = qword_27E1E13D8;
  if (!qword_27E1E13D8)
  {
    sub_23BFF8DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E13D8);
  }

  return result;
}

unint64_t sub_23BF7AC4C()
{
  result = qword_27E1E05B0;
  if (!qword_27E1E05B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E05B0);
  }

  return result;
}

void *sub_23BF7AC98(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_23BF7ADF0()
{
  v0 = *(sub_23BFF9180() + 16);

  if (v0)
  {
    v1 = sub_23BF6163C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_23BF6163C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 1;
    if ((sub_23BFF9160() & 1) == 0)
    {
LABEL_5:
      if ((sub_23BFF9170() & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
    if ((sub_23BFF9160() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
  }

  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v5 >= v4 >> 1)
  {
    v1 = sub_23BF6163C((v4 > 1), v5 + 1, 1, v1);
  }

  *(v1 + 2) = v5 + 1;
  *&v1[8 * v5 + 32] = 2;
  if ((sub_23BFF9170() & 1) == 0)
  {
LABEL_6:
    if ((sub_23BFF9190() & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
  }

  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_23BF6163C((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  *&v1[8 * v7 + 32] = 3;
  if (sub_23BFF9190())
  {
LABEL_19:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_23BF6163C((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    *&v1[8 * v9 + 32] = 4;
  }

LABEL_24:
  v10 = sub_23BFF9180();
  v11 = v10;
  v12 = *(v10 + 16);
  if (!v12)
  {
LABEL_27:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v13 = sub_23BF62104(*(v10 + 16), 0);
  v14 = sub_23BF7AC98(&v20, v13 + 4, v12, v11);
  sub_23BF669D8();
  if (v14 != v12)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v15 = type metadata accessor for ParmesanShuffleSelection();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = v1;
  *&v16[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = v13;
  v17 = &v16[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  *v17 = 0;
  v17[1] = 0;
  *&v16[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
  v16[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
  v19.receiver = v16;
  v19.super_class = v15;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_23BF7B1F8()
{
  v1 = [v0 _value];
  if (v1 != 2)
  {
    v1 = v1 == 1;
  }

  sub_23BF66EA0(v1);
  v2 = sub_23BFFA2C0();

  sub_23BFFA9F0();

  v3 = [v0 _value];
  v4 = 0xE700000000000000;
  v5 = 0x6465646E756F72;
  if (v3 != 2)
  {
    v5 = 0x6E7265646F6DLL;
    v4 = 0xE600000000000000;
  }

  if (v3 == 1)
  {
    v6 = 0x63697373616C63;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 1)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = v4;
  }

  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x23EEC3090](v6, v7);

  v9 = sub_23BFFA2C0();

  v10 = [ObjCClassFromMetadata localizedStringForKey:v2 comment:v9];

  v11 = sub_23BFFA300();
  return v11;
}

uint64_t sub_23BF7B418()
{
  v32 = MEMORY[0x277D84F90];
  sub_23BFCE2A0(0, 3, 0);
  v0 = v32;
  if (qword_284EBE060 == 2)
  {
    v1 = 0xE700000000000000;
    v2 = 0x6465646E756F72;
  }

  else if (qword_284EBE060 == 1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x63697373616C63;
  }

  else
  {
    if (qword_284EBE060)
    {
      goto LABEL_26;
    }

    v1 = 0xE600000000000000;
    v2 = 0x6E7265646F6DLL;
  }

  sub_23BFFA9B0();
  v3 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *(&v29 + 1) = v2;
  *&v30 = v1;
  v5 = *(v32 + 16);
  v4 = *(v32 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_23BFCE2A0((v4 > 1), v5 + 1, 1);
    v0 = v32;
  }

  *(v0 + 16) = v5 + 1;
  v6 = v0 + 72 * v5;
  *(v6 + 96) = v31;
  v7 = v30;
  *(v6 + 64) = v29;
  *(v6 + 80) = v7;
  v8 = v28;
  *(v6 + 32) = v27;
  *(v6 + 48) = v8;
  if (qword_284EBE068)
  {
    if (qword_284EBE068 == 1)
    {
      v9 = 0xE700000000000000;
      v10 = 0x63697373616C63;
    }

    else
    {
      if (qword_284EBE068 != 2)
      {
        goto LABEL_26;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6465646E756F72;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v10 = 0x6E7265646F6DLL;
  }

  sub_23BFFA9B0();
  v31 = v3;
  *(&v29 + 1) = v10;
  *&v30 = v9;
  v32 = v0;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_23BFCE2A0((v11 > 1), v12 + 1, 1);
    v0 = v32;
  }

  *(v0 + 16) = v12 + 1;
  v13 = v0 + 72 * v12;
  *(v13 + 32) = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  *(v13 + 96) = v31;
  *(v13 + 64) = v15;
  *(v13 + 80) = v16;
  *(v13 + 48) = v14;
  if (!qword_284EBE070)
  {
    v17 = 0xE600000000000000;
    v18 = 0x6E7265646F6DLL;
    goto LABEL_23;
  }

  if (qword_284EBE070 != 1)
  {
    if (qword_284EBE070 == 2)
    {
      v17 = 0xE700000000000000;
      v18 = 0x6465646E756F72;
      goto LABEL_23;
    }

LABEL_26:
    sub_23BFFACF0();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v17 = 0xE700000000000000;
  v18 = 0x63697373616C63;
LABEL_23:
  sub_23BFFA9B0();
  v31 = v3;
  *(&v29 + 1) = v18;
  *&v30 = v17;
  v32 = v0;
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_23BFCE2A0((v19 > 1), v20 + 1, 1);
    v0 = v32;
  }

  *(v0 + 16) = v20 + 1;
  v21 = v0 + 72 * v20;
  *(v21 + 32) = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  *(v21 + 96) = v31;
  *(v21 + 64) = v23;
  *(v21 + 80) = v24;
  *(v21 + 48) = v22;
  sub_23BF4A264(&qword_27E1E0BE0);
  *&v27 = sub_23BFFAB50();

  sub_23BFC4E58(v25, 1, &v27);

  return v27;
}

id sub_23BF7B96C(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR___NTKParmesanTypefaceEditOption_positionsToFaceBundleStrings;
  *&v2[v5] = sub_23BF7B418();
  sub_23BF6D608(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_23BF4C484(v17, v18);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_23BFFACA0();
    (*(v8 + 8))(v10, v6);
    sub_23BF4A9A4(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ParmesanTypefaceEditOption();
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithJSONObjectRepresentation_forDevice_, v11, a2);

  swift_unknownObjectRelease();
  v14 = v13;
  sub_23BF6D5A0(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_23BF7BBC8(char *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = OBJC_IVAR___NTKParmesanTypefaceEditOption_positionsToFaceBundleStrings;
  v7 = a3;
  *&a1[v6] = sub_23BF7B418();
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ParmesanTypefaceEditOption();
  v8 = objc_msgSendSuper2(&v10, *a4, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_23BF7BC48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanTypefaceEditOption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BF7BD1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NTKParmesanTimeView_appearance;
  v5 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_appearance);
  type metadata accessor for ParmesanTimeAppearance();
  v6 = v5;
  v7 = sub_23BFFA880();

  if ((v7 & 1) == 0 || *(v2 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel))
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    v9 = a1;

    sub_23BF7D190();

    sub_23BF7C4C8();
  }
}

char *sub_23BF7BE14(void *a1, double a2, double a3, double a4, double a5)
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v11 = result;
    v12 = qword_27E1DFD70;
    v13 = a1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = qword_27E1EB448;
    v15 = byte_27E1EB450;
    v16 = type metadata accessor for ParmesanTimeAppearance();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v11;
    *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v13;
    *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = 0;
    *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = 0;
    v18 = &v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    *v18 = v14;
    v18[8] = v15;
    sub_23BF674B4(v14, v15);
    v22.receiver = v17;
    v22.super_class = v16;
    v19 = objc_msgSendSuper2(&v22, sel_init);
    v20 = objc_allocWithZone(type metadata accessor for ParmesanTimeView());
    v21 = sub_23BF7C024(v19, a2, a3, a4, a5);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_23BF7C024(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR___NTKParmesanTimeView_complicationVisibility] = 0;
  *&v5[OBJC_IVAR___NTKParmesanTimeView_tritiumProgress] = 0;
  v11 = OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v12 = &v5[OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel];
  *v13 = 0;
  v13[1] = 0;
  *&v5[OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance] = 0;
  v5[OBJC_IVAR___NTKParmesanTimeView_isFrozen] = 0;
  *&v5[OBJC_IVAR___NTKParmesanTimeView_appearance] = a1;
  v14 = objc_allocWithZone(MEMORY[0x277CBBBA8]);
  v15 = a1;
  v16 = [v14 init];
  v17 = OBJC_IVAR___NTKParmesanTimeView_timeFormatter;
  *&v5[OBJC_IVAR___NTKParmesanTimeView_timeFormatter] = v16;
  [v16 setShowSeconds_];
  [*&v5[v17] setIncludeSeparatorInTimeSubstringFromSeparatorText_];
  v22.receiver = v5;
  v22.super_class = type metadata accessor for ParmesanTimeView();
  v18 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a2, a3, a4, a5);
  v19 = *&v18[OBJC_IVAR___NTKParmesanTimeView_timeFormatter];
  v20 = v18;
  [v19 addObserver_];
  sub_23BF7C4C8();
  [v20 addSubview_];

  return v20;
}

void sub_23BF7C200()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ParmesanTimeView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer];
  [v0 bounds];
  [v1 setFrame_];

  v2 = *&v0[OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  v4 = *&v0[OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame_];
  }
}

void sub_23BF7C32C(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a1)
  {
    v10 = *(v5 + OBJC_IVAR___NTKParmesanTimeView_appearance);
    v11 = *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = a1;
    v13 = v10;
    v14 = a1;

    if (a3)
    {
LABEL_8:
      v15 = 1;
      if (a5)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_7:
    *(*(v5 + OBJC_IVAR___NTKParmesanTimeView_appearance) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface) = a2;
    goto LABEL_8;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = a5 ^ 1;
  if ((a5 & 1) == 0)
  {
LABEL_9:
    *(*(v5 + OBJC_IVAR___NTKParmesanTimeView_appearance) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals) = a4;
  }

LABEL_10:
  if (v15)
  {
    sub_23BF7D190();

    sub_23BF7C4C8();
  }
}

void sub_23BF7C4C8()
{
  v1 = v0 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *v1;
    *v1 = 0;
    *(v1 + 8) = 0;
  }

  v4 = *(v0 + OBJC_IVAR___NTKParmesanTimeView_appearance);
  v5 = sub_23BF7C590(v4);
  v7 = v6;

  v8 = *v1;
  *v1 = v5;
  *(v1 + 8) = v7;
  v9 = v5;

  [*(v0 + OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer) addSubview_];
}

uint64_t sub_23BF7C590(char *a1)
{
  v2 = v1;
  v4 = *(*&a1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  v50 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout;
  if (v4 >= 3)
  {
    if (v4 != 3)
    {
      goto LABEL_8;
    }

    [v1 bounds];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v13 = type metadata accessor for ParmesanStackedTimeLabel();
    v14 = &off_284EC27E8;
  }

  else
  {
    [v1 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = type metadata accessor for ParmesanSingleTimeLabel();
    v14 = &off_284EC2828;
  }

  v19 = [objc_allocWithZone(v13) initWithFrame_];
  v20 = objc_opt_self();
  v21 = v19;
  [v20 setDisableActions_];
  swift_getObjectType();
  v22 = *&v2[OBJC_IVAR___NTKParmesanTimeView_complicationVisibility];
  v23 = v14[4];
  v24 = v21;
  v49 = a1;
  v25 = a1;
  v23(v25, v22);

  v26 = v24;
  v27 = v25;
  sub_23BF7D658(v27, v51);
  v52 = v51[0];
  v53 = v51[1];
  v54 = v51[2];
  [v26 setTransform_];

  v28 = CLKLocaleNumberSystemFromNumeralOption();
  v29 = *&v2[OBJC_IVAR___NTKParmesanTimeView_timeFormatter];
  sub_23BF73A04(v29, v28, &v52);

  (v14[5])();
  v57 = v52;
  sub_23BF4B280(&v57);
  v56 = v53;
  sub_23BF4B2D4(&v56, &qword_27E1E05D0);
  v55 = v54;
  sub_23BF4B2D4(&v55, &qword_27E1E05D0);

  v30 = *&v49[v50];
  v31 = *&v30[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
  v32 = *&v30[OBJC_IVAR___NTKParmesanTimeLayout_scale];
  v33 = v30;
  sub_23BFE5910(v31, v32);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [objc_opt_self() currentDevice];
  if (v42)
  {
    v43 = v42;
    [v42 screenBounds];
    v45 = v44;
    v47 = v46;

    (v14[2])(v35 / v45, v37 / v47, v39 / v45, v41 / v47);
    [v20 setDisableActions_];
    return v26;
  }

  __break(1u);
LABEL_8:
  *&v52 = v4;
  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

void sub_23BF7C958(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
  if (v4)
  {
    v7 = *(v3 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel + 8);
    v8 = objc_opt_self();
    v9 = v4;
    v40 = v8;
    [v8 setDisableActions_];
    v44 = v9;
    v45 = v7;
    v39 = v9;
    sub_23BF4A264(&qword_27E1E1508);
    sub_23BF4A264(&qword_27E1E1510);
    if (swift_dynamicCast())
    {
      sub_23BF7D948(v42, v46);
      v10 = v47;
      v11 = v48;
      sub_23BF4C484(v46, v47);
      v12 = *(v3 + OBJC_IVAR___NTKParmesanTimeView_tritiumProgress);
      v13 = *(v11 + 8);
      v14 = *(v3 + OBJC_IVAR___NTKParmesanTimeView_appearance);
      v13(a1, a2, v14, v10, v11, a3, v12);

      sub_23BF4A9A4(v46);
    }

    else
    {
      v43 = 0;
      memset(v42, 0, sizeof(v42));
      sub_23BF4B2D4(v42, &qword_27E1E1518);
    }

    v15 = OBJC_IVAR___NTKParmesanTimeView_appearance;
    v16 = *(*(v3 + OBJC_IVAR___NTKParmesanTimeView_appearance) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
    v17 = *&v16[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
    v18 = *&v16[OBJC_IVAR___NTKParmesanTimeLayout_scale];
    v19 = v16;
    sub_23BFE5910(v17, v18);
    v20 = objc_opt_self();
    v21 = [v20 currentDevice];
    if (v21)
    {
      v22 = v21;
      v38 = a3;
      [v21 screenBounds];

      v23 = *(*(v3 + v15) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
      v24 = *&v23[OBJC_IVAR___NTKParmesanTimeLayout_alignment];
      v25 = *&v23[OBJC_IVAR___NTKParmesanTimeLayout_scale];
      v26 = v23;
      sub_23BFE5910(v24, v25);
      v27 = [v20 currentDevice];
      if (v27)
      {
        v28 = v27;
        [v27 screenBounds];

        CLKInterpolateBetweenRects();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        ObjectType = swift_getObjectType();
        (*(v7 + 16))(ObjectType, v30, v32, v34, v36);
        [v40 setDisableActions_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_23BF7CCE8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_23BF7D190();
  type metadata accessor for ParmesanTimeAppearance();
  v5 = v3;
  v6 = v4;
  v7 = sub_23BFFA880();

  v8 = *(v2 + OBJC_IVAR___NTKParmesanTimeView_appearance);
  if (v7)
  {
    *(v2 + OBJC_IVAR___NTKParmesanTimeView_appearance) = v6;
    v9 = v6;

    sub_23BF7C4C8();
  }

  else
  {
    *(v2 + OBJC_IVAR___NTKParmesanTimeView_appearance) = v5;
    v10 = v5;

    sub_23BF7C4C8();

    sub_23BF7D018(v6);
  }
}

void sub_23BF7CDBC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  type metadata accessor for ParmesanTimeAppearance();
  v9 = v7;
  v10 = v8;
  LOBYTE(v8) = sub_23BFFA880();

  v11 = OBJC_IVAR___NTKParmesanTimeView_appearance;
  v12 = *(v3 + OBJC_IVAR___NTKParmesanTimeView_appearance);
  if (v8)
  {
    *(v3 + OBJC_IVAR___NTKParmesanTimeView_appearance) = v10;
    v13 = v10;

    sub_23BF7C4C8();
  }

  else
  {
    v14 = v9;
    v15 = v12;
    v16 = sub_23BFFA880();

    if ((v16 & 1) == 0)
    {
      v17 = *(v4 + v11);
      *(v4 + v11) = v14;
      v18 = v14;

      sub_23BF7C4C8();
    }

    sub_23BF7D018(v10);
    v19 = *(v4 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
    if (v19)
    {
      [v19 setAlpha_];
    }

    v20 = *(v4 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
    if (v20)
    {

      [v20 setAlpha_];
    }
  }
}

void sub_23BF7CF34(char *a1)
{
  sub_23BF7D018(a1);
  v3 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_appearance);
  *(v1 + OBJC_IVAR___NTKParmesanTimeView_appearance) = a1;
  v4 = a1;

  v5 = OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel;
  v6 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *(v1 + v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel;
  v9 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
  *(v1 + v5) = v9;
  v10 = v9;
  v11 = v9;

  if (v10)
  {
    [v11 setAlpha_];
  }

  v12 = *v8;
  *v8 = 0;
  *(v8 + 8) = 0;

  v13 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance);
  *(v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance) = 0;
}

void sub_23BF7D018(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance;
  v5 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance);
  if (!v5 || (type metadata accessor for ParmesanTimeAppearance(), v6 = v5, v7 = a1, v8 = sub_23BFFA880(), v6, v7, (v8 & 1) == 0) || *(v2 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel))
  {
    sub_23BF7D190();
    v9 = sub_23BF7C590(a1);
    v11 = v10;
    [v9 setAlpha_];
    v12 = OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer;
    [*(v2 + OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer) addSubview_];
    v13 = (v2 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
    v14 = *(v2 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
    *v13 = v9;
    v13[1] = v11;
    v21 = v9;

    v15 = *(v2 + v4);
    *(v2 + v4) = a1;
    v16 = a1;

    v17 = *(v2 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
    if (v17)
    {
      v18 = *(v2 + v12);
      v19 = v17;
      v20 = v18;
      [v20 bringSubviewToFront_];
    }
  }
}

void sub_23BF7D190()
{
  v1 = v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v1 = 0;
  *(v1 + 8) = 0;

  v4 = *(v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance);
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance) = 0;
}

void sub_23BF7D448()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel;
  v3 = *(v0 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = v3;
    v7 = CLKLocaleNumberSystemFromNumeralOption();
    v8 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_timeFormatter);
    sub_23BF73A04(v8, v7, v15);

    (*(v4 + 40))(v15, ObjectType, v4);
    v22 = v15[0];
    sub_23BF4B280(&v22);
    v21 = v15[1];
    sub_23BF4B2D4(&v21, &qword_27E1E05D0);
    v20 = v15[2];
    sub_23BF4B2D4(&v20, &qword_27E1E05D0);
  }

  v9 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel + 8);
    v11 = swift_getObjectType();
    v12 = v9;
    v13 = CLKLocaleNumberSystemFromNumeralOption();
    v14 = *(v1 + OBJC_IVAR___NTKParmesanTimeView_timeFormatter);
    sub_23BF73A04(v14, v13, v16);

    (*(v10 + 40))(v16, v11, v10);
    v19 = v16[0];
    sub_23BF4B280(&v19);
    v18 = v16[1];
    sub_23BF4B2D4(&v18, &qword_27E1E05D0);
    v17 = v16[2];
    sub_23BF4B2D4(&v17, &qword_27E1E05D0);
  }
}

uint64_t sub_23BF7D658@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23BFF9200();
  v6 = v5;
  v7 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  if (*(v7 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) > 1uLL)
  {
    t1.a = *(v7 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  }

  else
  {
    v8 = *(v7 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
    if ((*&v8 - 1) < 2 || *&v8 == 3 || v8 == 0.0)
    {
      sub_23BFFA820();
      v10 = v9;
      v12 = v11;
      v13 = OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer;
      [*(v2 + OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer) bounds];
      v14 = v10 * ((1.0 - v6) * CGRectGetWidth(v26));
      [*(v2 + v13) bounds];
      Height = CGRectGetHeight(v27);
      CGAffineTransformMakeTranslation(&t1, v14, v12 * ((1.0 - v6) * Height));
      tx = t1.tx;
      ty = t1.ty;
      v21 = *&t1.c;
      v22 = *&t1.a;
      CGAffineTransformMakeScale(&t1, v6, v6);
      *&t2.a = v22;
      *&t2.c = v21;
      t2.tx = tx;
      t2.ty = ty;
      result = CGAffineTransformConcat(&v23, &t1, &t2);
      v19 = *&v23.c;
      v20 = *&v23.tx;
      *a2 = *&v23.a;
      a2[1] = v19;
      a2[2] = v20;
      return result;
    }

    t1.a = v8;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

id sub_23BF7D81C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanTimeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF7D948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23BF7D960(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23BF7D9D0()
{
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_complicationVisibility) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_tritiumProgress) = 0;
  v1 = OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = (v0 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_isFrozen) = 0;
  sub_23BFFAB00();
  __break(1u);
}

void sub_23BF7DAA4()
{
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_complicationVisibility) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_tritiumProgress) = 0;
  v1 = OBJC_IVAR___NTKParmesanTimeView_timeLabelContainer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = (v0 + OBJC_IVAR___NTKParmesanTimeView_currentTimeLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeLabel);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_transitioningTimeAppearance) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanTimeView_isFrozen) = 0;
  sub_23BFFAB00();
  __break(1u);
}

uint64_t sub_23BF7DB88()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB480);
  sub_23BF4A22C(v0, qword_27E1EB480);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DC08()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB498);
  sub_23BF4A22C(v0, qword_27E1EB498);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DC88()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB4B0);
  sub_23BF4A22C(v0, qword_27E1EB4B0);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DD20()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB4E0);
  sub_23BF4A22C(v0, qword_27E1EB4E0);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DDBC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23BFF92B0();
  sub_23BF7DFC0(v3, a2);
  sub_23BF4A22C(v3, a2);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DE3C()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB510);
  sub_23BF4A22C(v0, qword_27E1EB510);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DEBC()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB528);
  sub_23BF4A22C(v0, qword_27E1EB528);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7DF40()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB540);
  sub_23BF4A22C(v0, qword_27E1EB540);
  return sub_23BFF92A0();
}

uint64_t *sub_23BF7DFC0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23BF7E024()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB558);
  sub_23BF4A22C(v0, qword_27E1EB558);
  return sub_23BFF92A0();
}

uint64_t sub_23BF7E0A8()
{
  v0 = sub_23BFF92B0();
  sub_23BF7DFC0(v0, qword_27E1EB570);
  sub_23BF4A22C(v0, qword_27E1EB570);
  return sub_23BFF92A0();
}

id sub_23BF7E128(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image] = 0;
  v9 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_title];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView] = 0;
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v12 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButtonViewConstraints];
  v13 = type metadata accessor for ParmesanListCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setUserInteractionEnabled_];
  return v14;
}

id sub_23BF7E23C(void *a1)
{
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image] = 0;
  v3 = &v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_title];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView] = 0;
  v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v6 = &v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButtonViewConstraints];
  v7 = type metadata accessor for ParmesanListCell();
  *v6 = 0;
  *(v6 + 1) = 0;
  v12.receiver = v1;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    [v10 setUserInteractionEnabled_];
  }

  return v9;
}

id sub_23BF7E348()
{
  v1 = v0;
  v2 = sub_23BFF9490();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView;
  v4 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView);
  }

  else
  {
    sub_23BF4BDF0(0, &qword_27E1E1550);
    sub_23BFF93A0();
    v6 = sub_23BFFA700();
    v7 = *(v0 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_23BF7E420()
{
  if (!*&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButtonViewConstraints])
  {
    v39 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButtonViewConstraints];
    v1 = [v0 contentView];
    v2 = sub_23BF7E348();
    [v1 addSubview_];

    v3 = [v0 &selRef_localizedTitle];
    v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton;
    [v3 addSubview_];

    v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView;
    [*&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell____lazy_storage___listContentView] setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1144750080;
    [*&v0[v5] setContentCompressionResistancePriority:0 forAxis:v6];
    [*&v0[v4] setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v7) = 1132068864;
    [*&v0[v4] setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = [*&v0[v4] leadingAnchor];
    v9 = [*&v0[v5] trailingAnchor];
    v38 = [v8 constraintGreaterThanOrEqualToAnchor_];

    v10 = [*&v0[v4] trailingAnchor];
    v11 = [v0 &selRef_localizedTitle];
    v12 = [v11 layoutMarginsGuide];

    v13 = [v12 trailingAnchor];
    v14 = [v10 constraintEqualToAnchor_];

    v37 = objc_opt_self();
    sub_23BF4A264(&qword_27E1E05E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23C0041D0;
    v16 = [*&v0[v5] topAnchor];
    v17 = [v0 &selRef_localizedTitle];
    v18 = [v17 topAnchor];

    v19 = [v16 constraintEqualToAnchor_];
    *(v15 + 32) = v19;
    v20 = [*&v0[v5] bottomAnchor];
    v21 = [v0 &selRef_localizedTitle];
    v22 = [v21 bottomAnchor];

    v23 = [v20 constraintEqualToAnchor_];
    *(v15 + 40) = v23;
    v24 = [*&v0[v5] leadingAnchor];
    v25 = [v0 &selRef_localizedTitle];
    v26 = [v25 leadingAnchor];

    v27 = [v24 constraintEqualToAnchor_];
    *(v15 + 48) = v27;
    v28 = [*&v0[v4] centerYAnchor];
    v29 = [v0 &selRef_localizedTitle];
    v30 = [v29 centerYAnchor];

    v31 = [v28 constraintEqualToAnchor_];
    *(v15 + 56) = v31;
    *(v15 + 64) = v38;
    *(v15 + 72) = v14;
    sub_23BF4BDF0(0, &qword_27E1E0610);
    v32 = v38;
    v33 = v14;
    v34 = sub_23BFFA450();

    [v37 activateConstraints_];

    v35 = *v39;
    v36 = *(v39 + 1);
    *v39 = v32;
    *(v39 + 1) = v33;

    sub_23BF10498(v35, v36);
  }
}

uint64_t sub_23BF7E900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BFF93D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BFF9490();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36[-1] - v13;
  sub_23BF7E420();
  sub_23BFF93A0();
  v15 = sub_23BFF9390();
  v37 = v15;
  v38 = MEMORY[0x277D74BA8];
  v16 = sub_23BF4AD24(v36);
  (*(*(v15 - 8) + 16))(v16, a1, v15);
  sub_23BFF9470();
  v35 = *(v9 + 8);
  v35(v12, v8);
  sub_23BF4A9A4(v36);
  sub_23BFF93E0();
  v17 = sub_23BFF93C0();
  (*(v5 + 8))(v7, v4);
  v18 = [objc_opt_self() configurationWithFont:v17 scale:3];

  v19 = sub_23BFF9420();
  sub_23BFF93F0();
  v19(v36, 0);
  v20 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image);
  sub_23BFF9460();

  sub_23BFF9450();
  sub_23BFF9440();
  v21 = sub_23BF7E348();
  v37 = v8;
  v38 = MEMORY[0x277D74C30];
  v22 = sub_23BF4AD24(v36);
  (*(v9 + 16))(v22, v14, v8);
  sub_23BFFA6F0();

  v23 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton;
  v24 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton);
  if (*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album + 8))
  {
    v25 = v24;

    v26 = sub_23BFFA2C0();
  }

  else
  {
    v27 = v24;
    v26 = 0;
  }

  [v24 setTitle:v26 forState:0];

  v28 = *(v2 + v23);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 systemOrangeColor];
  [v30 setTitleColor:v31 forState:0];

  v32 = [*(v2 + v23) titleLabel];
  if (v32)
  {
    v33 = v32;
    [v32 setLineBreakMode_];
  }

  return (v35)(v14, v8);
}

id sub_23BF7EE14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF7EF94()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_23BF7EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_23BFFACC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BFFACC0();

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

uint64_t sub_23BF7F09C(uint64_t a1)
{
  v2 = sub_23BF7F564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF7F0D8(uint64_t a1)
{
  v2 = sub_23BF7F564();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23BF7F114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanSize();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF7F16C(void *a1)
{
  v3 = sub_23BF4A264(&qword_27E1E1578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_23BF4C484(a1, a1[3]);
  sub_23BF7F564();
  sub_23BFFAE40();
  v8[15] = 0;
  sub_23BFFAC30();
  if (!v1)
  {
    v8[14] = 1;
    sub_23BFFAC30();
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_23BF7F2FC(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF7F564();
  sub_23BFFAE20();
  if (v2)
  {
    sub_23BF4A9A4(a1);
    type metadata accessor for ParmesanSize();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_23BFFABC0();
    *&v1[OBJC_IVAR___NTKParmesanSize_width] = v9;
    v14 = 1;
    sub_23BFFABC0();
    *&v1[OBJC_IVAR___NTKParmesanSize_height] = v11;
    v12 = type metadata accessor for ParmesanSize();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_23BF4A9A4(a1);
  }

  return v3;
}

id sub_23BF7F4EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanSize());
  result = sub_23BF7F2FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BF7F564()
{
  result = qword_27E1E1570;
  if (!qword_27E1E1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1570);
  }

  return result;
}

unint64_t sub_23BF7F5CC()
{
  result = qword_27E1E1580;
  if (!qword_27E1E1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1580);
  }

  return result;
}

unint64_t sub_23BF7F624()
{
  result = qword_27E1E1588;
  if (!qword_27E1E1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1588);
  }

  return result;
}

unint64_t sub_23BF7F67C()
{
  result = qword_27E1E1590;
  if (!qword_27E1E1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1590);
  }

  return result;
}

unint64_t sub_23BF7F70C(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v3;
    v6 = sub_23BFE4180(a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE8218(9, isUniquelyReferenced_nonNull_native, a3);
    *(v7 + v4) = v6;
  }

  return v6;
}

id sub_23BF7F7AC(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_icon;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_label;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView____lazy_storage___fontSizeOverrides] = 0;
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView____lazy_storage___placeholderImageSizeOverrides] = 0;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for ParmesanGalleryNoPhotosView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  sub_23BF7F8E4(a1);

  return v13;
}

void sub_23BF7F8E4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_icon;
  [v1 addSubview_];
  v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_label;
  [v2 addSubview_];
  v6 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:a1 identitySizeClass:2];
  sub_23BF7F6D0();
  v48 = v6;
  sub_23BFFA680();
  v8 = v7;

  sub_23BF7F6EC();
  sub_23BFFA680();
  v10 = v9;

  v11 = v10 * 0.5;
  v12 = *&v1[v5];
  v13 = objc_opt_self();
  v14 = *MEMORY[0x277D74418];
  v15 = v12;
  v16 = [v13 systemFontOfSize:v8 * 0.5 weight:v14];
  [v15 setFont_];

  v17 = *&v2[v5];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 systemGrayColor];
  [v19 setTextColor_];

  [*&v2[v5] setNumberOfLines_];
  v21 = *&v2[v4];
  v22 = sub_23BFFA2C0();
  v23 = NTKImageNamed();

  [v21 setImage_];
  [*&v2[v4] setContentMode_];
  v24 = [*&v2[v4] layer];
  [v24 setCornerRadius_];

  v25 = [*&v2[v4] layer];
  [v25 setMasksToBounds_];

  v26 = *&v2[v4];
  v27 = objc_opt_self();
  v28 = v2;
  v49 = [v27 constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v28 attribute:4 multiplier:0.47 constant:0.0];
  v29 = *&v2[v5];
  v30 = [v27 constraintWithItem:v29 attribute:12 relatedBy:0 toItem:v28 attribute:4 multiplier:0.59 constant:v11];

  [*&v2[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v2[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_23BF4A264(&qword_27E1E05E0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23C0043E0;
  v32 = [*&v2[v4] widthAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v31 + 32) = v33;
  v34 = [*&v2[v4] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v31 + 40) = v35;
  v36 = [*&v2[v4] centerXAnchor];
  v37 = [v28 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v31 + 48) = v38;
  *(v31 + 56) = v49;
  *(v31 + 64) = v30;
  v39 = *&v2[v5];
  v47 = v49;
  v40 = v30;
  v41 = [v39 centerXAnchor];
  v42 = [v28 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v31 + 72) = v43;
  v44 = [*&v2[v5] widthAnchor];
  v45 = [v28 widthAnchor];
  v46 = [v44 constraintLessThanOrEqualToAnchor_];

  *(v31 + 80) = v46;
  sub_23BF7FF9C();
  v50 = sub_23BFFA450();

  [v27 activateConstraints_];
}

id sub_23BF7FED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryNoPhotosView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BF7FF9C()
{
  result = qword_27E1E0610;
  if (!qword_27E1E0610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0610);
  }

  return result;
}

void sub_23BF7FFE8()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_icon;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_label;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView____lazy_storage___fontSizeOverrides) = 0;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView____lazy_storage___placeholderImageSizeOverrides) = 0;
  sub_23BFFAB00();
  __break(1u);
}

double sub_23BF800FC@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_23C004430;
  a1[1] = xmmword_23C004430;
  result = 1.0;
  a1[2] = xmmword_23C004440;
  return result;
}

void sub_23BF80118()
{
  CLKCompressFraction();
  v1 = 1.0 - v0;
  CLKCompressFraction();
  sub_23BF76958(v1, v2);
  sub_23BF76AF0();
}

uint64_t sub_23BF801B8()
{
  swift_getKeyPath();
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  return *(v0 + 56);
}

uint64_t sub_23BF80258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_23BF80328(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
    sub_23BFF91B0();
  }

  return result;
}

uint64_t sub_23BF80440()
{
  swift_getKeyPath();
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();
}

uint64_t sub_23BF804E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  *a2 = *(v3 + 64);
}

uint64_t sub_23BF805BC(uint64_t a1)
{

  v4 = sub_23BFD9360(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
    sub_23BFF91B0();
  }
}

uint64_t sub_23BF80710()
{

  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanStackViewModel___observationRegistrar;
  v2 = sub_23BFF91E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ParmesanStackViewModel()
{
  result = qword_27E1E15C0;
  if (!qword_27E1E15C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BF80808()
{
  result = sub_23BFF91E0();
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

char *sub_23BF808CC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  __src[2] = *(v0 + 72);
  __src[3] = v2;
  __src[4] = *(v0 + 104);
  __src[0] = *(v0 + 40);
  __src[1] = v1;
  v3 = [objc_allocWithZone(type metadata accessor for ParmesanPreviewContentView()) initWithFrame_];
  v4 = &v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration];
  v15[0] = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration];
  v5 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration + 64];
  v7 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration + 16];
  v6 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration + 32];
  v15[3] = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration + 48];
  v15[4] = v5;
  v15[1] = v7;
  v15[2] = v6;
  memmove(&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration], __src, 0x50uLL);
  sub_23BF4A518(__src, v13);
  sub_23BF4A518(__src, v13);
  sub_23BF4B2D4(v15, &qword_27E1E0980);
  v13[0] = *v4;
  v8 = *(v4 + 4);
  v10 = *(v4 + 1);
  v9 = *(v4 + 2);
  v13[3] = *(v4 + 3);
  v13[4] = v8;
  v13[1] = v10;
  v13[2] = v9;
  sub_23BF5499C(v13, &v12);
  sub_23BF6A6B0(v13);
  sub_23BF4B2D4(v13, &qword_27E1E0980);
  sub_23BF4A574(__src);
  return v3;
}

uint64_t sub_23BF80A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BF82D50();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23BF80ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BF82D50();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23BF80B20()
{
  sub_23BF82D50();
  sub_23BFF9A90();
  __break(1u);
}

uint64_t sub_23BF80B48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_23BF4A264(&qword_27E1E15D0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v4;
  v5 = sub_23BF4A264(&qword_27E1E15D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v39 = sub_23BF4A264(&qword_27E1E15E0);
  MEMORY[0x28223BE20](v39);
  v9 = (&v34 - v8);
  v10 = *(v1 + 24);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanStackViewModel___observationRegistrar;
  *&v42[0] = v10;
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  v12 = *(v10 + 64);

  *v9 = sub_23BFFA030();
  v9[1] = v13;
  v14 = sub_23BF4A264(&qword_27E1E15E8);
  sub_23BF810B4(v1, v12, v9 + *(v14 + 44));

  sub_23BFFA030();
  v15 = 1;
  sub_23BFF9740();
  v16 = (v9 + *(sub_23BF4A264(&qword_27E1E15F0) + 36));
  v17 = v45;
  *v16 = v44;
  v16[1] = v17;
  v16[2] = v46;
  v36 = sub_23BFFA030();
  v19 = v18;
  swift_getKeyPath();
  v41 = v11;
  *&v42[0] = v10;
  sub_23BFF91C0();
  v21 = v37;
  v20 = v38;

  if (*(v10 + 56) == 1)
  {
    v22 = v35;
    sub_23BFF9720();
    (*(v21 + 32))(v7, v22, v20);
    v15 = 0;
  }

  (*(v21 + 56))(v7, v15, 1, v20);
  v23 = v9 + *(v39 + 36);
  sub_23BF82A20(v7, v23, &qword_27E1E15D8);
  v24 = (v23 + *(sub_23BF4A264(&qword_27E1E15F8) + 36));
  *v24 = v36;
  v24[1] = v19;
  swift_getKeyPath();
  *&v42[0] = v10;
  sub_23BFF91C0();

  v43 = *(v10 + 64);
  v25 = swift_allocObject();
  v26 = *(v2 + 16);
  *(v25 + 16) = *v2;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(v2 + 32);
  *(v25 + 64) = *(v2 + 48);

  sub_23BF81D18(v2, v42);
  sub_23BF4A264(&qword_27E1E1600);
  sub_23BF81D50();
  sub_23BF81EC0();
  v27 = v40;
  sub_23BFF9DB0();

  sub_23BF4B2D4(v9, &qword_27E1E15E0);
  v28 = sub_23BFFA060();
  v42[0] = *(v2 + 8);
  sub_23BF4A264(&qword_27E1E1640);
  sub_23BFF9EE0();
  LOBYTE(v23) = v43;
  v29 = v27 + *(sub_23BF4A264(&qword_27E1E1648) + 36);
  *v29 = v28;
  *(v29 + 8) = v23;
  v30 = sub_23BFFA060();
  swift_getKeyPath();
  *&v42[0] = v10;
  sub_23BFF91C0();

  v31 = *(v10 + 64);
  v32 = (v27 + *(sub_23BF4A264(&qword_27E1E1650) + 36));
  *v32 = v30;
  v32[1] = v31;
}

uint64_t sub_23BF810B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_23BFF9970();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BF4A264(&qword_27E1E1658);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v25 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &KeyPath - v12;
  v14 = *(*(a1 + 24) + 16);
  v15 = *(a2 + 16);
  v27[7] = sub_23BF81FFC(a2, 0, v15);
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v15 >> 1;
  v17 = *(a1 + 16);
  *(v16 + 24) = *a1;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a1 + 32);
  *(v16 + 72) = *(a1 + 48);
  *(v16 + 80) = v14;
  *(v16 + 88) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_23BF82410;
  *(v18 + 24) = v16;
  sub_23BF81D18(a1, v27);
  sub_23BF4A264(&qword_27E1E1660);
  sub_23BF4A264(&qword_27E1E1668);
  sub_23BF4BE40(&qword_27E1E1670, &qword_27E1E1660);
  sub_23BF82474();
  v19 = v24;
  sub_23BFF9F80();
  sub_23BFF9960();
  sub_23BFFA060();
  v20 = sub_23BF829D8(&qword_27E1E1738, MEMORY[0x277CE0068]);
  sub_23BFF96D0();

  (*(v26 + 8))(v7, v5);
  (*(v9 + 16))(v25, v13, v8);
  v27[0] = v5;
  v27[1] = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_23BFF9760();
  (*(v9 + 8))(v13, v8);
  result = sub_23BF4A264(&qword_27E1E1740);
  *(v19 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_23BF814AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v77 = a5;
  v84 = a6;
  v12 = *(a1 + 3);
  v99 = *(a1 + 2);
  v100 = v12;
  v101 = *(a1 + 4);
  v13 = *(a1 + 1);
  v97 = *a1;
  v98 = v13;
  v14 = sub_23BF4A264(&qword_27E1E16A8);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - v15;
  v17 = sub_23BF4A264(&qword_27E1E1698);
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  v20 = sub_23BF4A264(&qword_27E1E1688);
  result = MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  v25 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v25 < 0)
  {
    _VF = __OFSUB__(0, v25);
    v25 = a3 - a2;
    if (_VF)
    {
      goto LABEL_27;
    }
  }

  v83 = v14;
  v27 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    goto LABEL_21;
  }

  v28 = 1.0;
  v29 = 0.0;
  if (v22 == a3)
  {
    goto LABEL_10;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v30 = a4[4];
  if (v27 >= *(v30 + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = a4[5];
  if (v27 >= *(v31 + 16))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v28 = *(v30 + 8 * v27 + 32);
  v29 = *(v31 + 8 * v27 + 32) * a7;
LABEL_10:
  v78 = a1;
  v79 = v24;
  v80 = result;
  v81 = v17;
  v82 = v19;
  v32 = a4;
  v33 = a4[3];
  v34 = v22;
  swift_getKeyPath();
  *&v92 = v33;
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  if (v34 != a3)
  {
    v36 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      if (v34 < a3)
      {
        v29 = -v29;
      }

      _VF = __OFSUB__(v77, v36);
      v35 = v77 - v36;
      if (!_VF)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v35 = 9;
LABEL_16:
  v77 = v35;
  v37 = *(v33 + 48);
  v94 = v99;
  v95 = v100;
  v96 = v101;
  v92 = v97;
  v93 = v98;
  v38 = *(v33 + 32);
  v75 = *(v33 + 16);
  v76 = v38;
  sub_23BFFA030();
  sub_23BFF9740();
  v39 = v78;
  sub_23BF4A518(v78, v86);
  sub_23BFF9E50();
  v40 = sub_23BFF9E80();

  v41 = sub_23BFF9BB0();
  v42 = &v16[*(sub_23BF4A264(&qword_27E1E16B8) + 36)];
  v43 = *(sub_23BFF9800() + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_23BFF99B0();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #16.0 }

  *v42 = _Q0;
  *&v42[*(sub_23BF4A264(&qword_27E1E1710) + 36)] = 256;
  v50 = v76;
  *v16 = v75;
  *(v16 + 1) = v50;
  *(v16 + 4) = v37;
  v51 = v94;
  *(v16 + 56) = v93;
  *(v16 + 72) = v51;
  v52 = v96;
  *(v16 + 88) = v95;
  *(v16 + 104) = v52;
  v53 = v91;
  *(v16 + 40) = v92;
  v54 = v90;
  *(v16 + 120) = v89;
  *(v16 + 136) = v54;
  *(v16 + 152) = v53;
  *(v16 + 84) = 257;
  *(v16 + 170) = v87;
  *(v16 + 87) = v88;
  *(v16 + 22) = v40;
  v16[184] = v41;
  v56 = *v39;
  v55 = v39[1];

  v57 = sub_23BFFA090();
  v58 = sub_23BFF9B20();
  sub_23BFFA0A0();
  v59 = &v16[*(v83 + 36)];
  *v59 = v56;
  *(v59 + 1) = v55;
  *(v59 + 2) = v57;
  *(v59 + 6) = v58;
  *(v59 + 4) = v60;
  *(v59 + 5) = v61;
  v59[48] = 1;
  v86[0] = *(v32 + 1);
  sub_23BF4A264(&qword_27E1E1640);
  sub_23BFF9EE0();
  if (v85)
  {
    v62 = v29;
  }

  else
  {
    v62 = 0.0;
  }

  v63 = v82;
  sub_23BF82A20(v16, v82, &qword_27E1E16A8);
  v64 = v63 + *(v81 + 36);
  *v64 = v62;
  *(v64 + 8) = 0;
  sub_23BFFA0A0();
  v66 = v65;
  v68 = v67;
  v69 = v63;
  v70 = v79;
  sub_23BF82A20(v69, v79, &qword_27E1E1698);
  v71 = (v70 + *(v80 + 36));
  *v71 = v28;
  v71[1] = v28;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  v72 = v77;
  v73 = v70;
  v74 = v84;
  sub_23BF82A20(v73, v84, &qword_27E1E1688);
  result = sub_23BF4A264(&qword_27E1E1668);
  *(v74 + *(result + 36)) = v72;
  return result;
}

uint64_t sub_23BF81A60(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_getKeyPath();
  sub_23BF829D8(&qword_27E1E0540, type metadata accessor for ParmesanStackViewModel);
  sub_23BFF91C0();

  if (*(*(v1 + 64) + 16))
  {
    sub_23BF4A264(&qword_27E1E1640);
    result = sub_23BFF9EE0();
    if ((v3 & 1) == 0)
    {
      MEMORY[0x28223BE20](result);
      sub_23BFFA070();
      sub_23BFF97A0();
    }
  }

  return result;
}

uint64_t sub_23BF81BE8()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

__n128 sub_23BF81C34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23BF81C50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23BF81C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23BF81D50()
{
  result = qword_27E1E1608;
  if (!qword_27E1E1608)
  {
    sub_23BF4A2D0(&qword_27E1E15E0);
    sub_23BF81E08();
    sub_23BF4BE40(&qword_27E1E1628, &qword_27E1E15F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1608);
  }

  return result;
}

unint64_t sub_23BF81E08()
{
  result = qword_27E1E1610;
  if (!qword_27E1E1610)
  {
    sub_23BF4A2D0(&qword_27E1E15F0);
    sub_23BF4BE40(&qword_27E1E1618, &qword_27E1E1620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1610);
  }

  return result;
}

unint64_t sub_23BF81EC0()
{
  result = qword_27E1E1630;
  if (!qword_27E1E1630)
  {
    sub_23BF4A2D0(&qword_27E1E1600);
    sub_23BF81F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1630);
  }

  return result;
}

unint64_t sub_23BF81F44()
{
  result = qword_27E1E1638;
  if (!qword_27E1E1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1638);
  }

  return result;
}

__int128 *sub_23BF81FFC(__int128 *result, uint64_t a2, uint64_t a3)
{
  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = *(result + 2);
  if (v5 >= v9)
  {
    v10 = *(result + 2);
  }

  else
  {
    v10 = a3 - a2;
  }

  if (v10)
  {
    if (v10 <= 0)
    {
      v11 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_23BF4A264(&qword_27E1E1748);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v11[2] = v10;
      v11[3] = 2 * ((v12 - 32) / 88);
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11[3];

  if (v5 < 0)
  {
    goto LABEL_65;
  }

  v15 = v13 >> 1;
  v38 = v6;
  v42 = v7;
  v43 = v9;
  if (v10)
  {
    if (v6 < v7)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v39 = v8;
    if (v9)
    {
      v4 = 0;
      v16 = v8 + 2;
      v15 -= v10;
      v3 = v11 + 15;
      v17 = v7 - v6;
      while (1)
      {
        v18 = v16[3];
        v47 = v16[2];
        v48 = v18;
        v49 = v16[4];
        v19 = v16[1];
        __src = *v16;
        v46 = v19;
        if (!(v17 + v4))
        {
          break;
        }

        memmove(v3 - 11, v16, 0x50uLL);
        *(v3 - 1) = v7 + v4;
        result = &__src;
        v14 = v44;
        if (v10 - 1 == v4)
        {
          goto LABEL_20;
        }

        result = sub_23BF4A518(&__src, v44);
        v16 += 5;
        ++v4;
        v3 += 11;
        v7 = v42;
        if (v43 == v4)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_23BF4A518(result, v14);
    v7 = v42;
    v9 = v43;
    v41 = v42 + v4 + 1;
    v8 = v39;
    if (v43 > v5)
    {
LABEL_23:
      v20 = v41;
      if (v41 <= v6)
      {
        v21 = v6;
      }

      else
      {
        v21 = v41;
      }

      v40 = v21;
      v22 = &v8[5 * v10 + 2];
      while (v10 < v9)
      {
        v26 = v22[3];
        v47 = v22[2];
        v48 = v26;
        v49 = v22[4];
        v27 = v22[1];
        __src = *v22;
        v46 = v27;
        v28 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_58;
        }

        if (v6 == v20)
        {
          goto LABEL_51;
        }

        if (v6 < v7)
        {
          goto LABEL_59;
        }

        if (v41 < v7)
        {
          goto LABEL_60;
        }

        if (v40 == v20)
        {
          goto LABEL_61;
        }

        if (v15)
        {
          result = sub_23BF4A518(&__src, v44);
          v23 = v11;
          v24 = __OFSUB__(v15--, 1);
          if (v24)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v29 = v11[3];
          if (((v29 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_63;
          }

          v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
          if (v30 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v30;
          }

          sub_23BF4A264(&qword_27E1E1748);
          v23 = swift_allocObject();
          v32 = (j__malloc_size(v23) - 32) / 88;
          v23[2] = v31;
          v23[3] = 2 * v32;
          v33 = v11[3] >> 1;
          v3 = &v23[11 * v33 + 4];
          v34 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v33;
          if (v11[2])
          {
            if (v23 >= v11 && v23 + 4 < &v11[11 * v33 + 4] && v23 == v11)
            {
              sub_23BF4A518(&__src, v44);
            }

            else
            {
              sub_23BF4A518(&__src, v44);
              memmove(v23 + 4, v11 + 4, 88 * v33);
            }

            v11[2] = 0;
          }

          else
          {
            sub_23BF4A518(&__src, v44);
          }

          v6 = v38;
          v7 = v42;
          v24 = __OFSUB__(v34, 1);
          v15 = v34 - 1;
          if (v24)
          {
            goto LABEL_62;
          }
        }

        result = memmove(v3, &__src, 0x50uLL);
        v3[10] = v20;
        v3 += 11;
        ++v10;
        v22 += 5;
        ++v20;
        v11 = v23;
        v25 = v28 == v43;
        v9 = v43;
        if (v25)
        {
          goto LABEL_52;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  else
  {
    v3 = v11 + 4;
    v41 = v7;
    if (v9 > v5)
    {
      goto LABEL_23;
    }
  }

LABEL_51:
  v23 = v11;
LABEL_52:
  v35 = v23[3];
  if (v35 < 2)
  {
    return v23;
  }

  v36 = v35 >> 1;
  v24 = __OFSUB__(v36, v15);
  v37 = v36 - v15;
  if (!v24)
  {
    v23[2] = v37;
    return v23;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_23BF82424(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6, *(a1 + 80));
}

unint64_t sub_23BF82474()
{
  result = qword_27E1E1678;
  if (!qword_27E1E1678)
  {
    sub_23BF4A2D0(&qword_27E1E1668);
    sub_23BF8252C();
    sub_23BF4BE40(&qword_27E1E1728, &qword_27E1E1730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1678);
  }

  return result;
}

unint64_t sub_23BF8252C()
{
  result = qword_27E1E1680;
  if (!qword_27E1E1680)
  {
    sub_23BF4A2D0(&qword_27E1E1688);
    sub_23BF825B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1680);
  }

  return result;
}

unint64_t sub_23BF825B8()
{
  result = qword_27E1E1690;
  if (!qword_27E1E1690)
  {
    sub_23BF4A2D0(&qword_27E1E1698);
    sub_23BF82644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1690);
  }

  return result;
}

unint64_t sub_23BF82644()
{
  result = qword_27E1E16A0;
  if (!qword_27E1E16A0)
  {
    sub_23BF4A2D0(&qword_27E1E16A8);
    sub_23BF826FC();
    sub_23BF4BE40(&qword_27E1E1718, &qword_27E1E1720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E16A0);
  }

  return result;
}

unint64_t sub_23BF826FC()
{
  result = qword_27E1E16B0;
  if (!qword_27E1E16B0)
  {
    sub_23BF4A2D0(&qword_27E1E16B8);
    sub_23BF827B4();
    sub_23BF4BE40(&qword_27E1E1708, &qword_27E1E1710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E16B0);
  }

  return result;
}

unint64_t sub_23BF827B4()
{
  result = qword_27E1E16C0;
  if (!qword_27E1E16C0)
  {
    sub_23BF4A2D0(&qword_27E1E16C8);
    sub_23BF8286C();
    sub_23BF4BE40(&qword_27E1E16F8, &qword_27E1E1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E16C0);
  }

  return result;
}

unint64_t sub_23BF8286C()
{
  result = qword_27E1E16D0;
  if (!qword_27E1E16D0)
  {
    sub_23BF4A2D0(&qword_27E1E16D8);
    sub_23BF828F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E16D0);
  }

  return result;
}

unint64_t sub_23BF828F8()
{
  result = qword_27E1E16E0;
  if (!qword_27E1E16E0)
  {
    sub_23BF4A2D0(&qword_27E1E16E8);
    sub_23BF82984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E16E0);
  }

  return result;
}

unint64_t sub_23BF82984()
{
  result = qword_27E1E16F0;
  if (!qword_27E1E16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E16F0);
  }

  return result;
}

uint64_t sub_23BF829D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BF82A20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_23BF4A264(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_23BF82A88(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23BF82AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BF82AFC(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23BF82B68()
{
  result = qword_27E1E1750;
  if (!qword_27E1E1750)
  {
    sub_23BF4A2D0(&qword_27E1E1650);
    sub_23BF82C20();
    sub_23BF4BE40(&qword_27E1E1770, &qword_27E1E1778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1750);
  }

  return result;
}

unint64_t sub_23BF82C20()
{
  result = qword_27E1E1758;
  if (!qword_27E1E1758)
  {
    sub_23BF4A2D0(&qword_27E1E1648);
    sub_23BF4A2D0(&qword_27E1E15E0);
    sub_23BF4A2D0(&qword_27E1E1600);
    sub_23BF81D50();
    sub_23BF81EC0();
    swift_getOpaqueTypeConformance2();
    sub_23BF4BE40(&qword_27E1E1760, &qword_27E1E1768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1758);
  }

  return result;
}

unint64_t sub_23BF82D50()
{
  result = qword_27E1E1780;
  if (!qword_27E1E1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1780);
  }

  return result;
}

uint64_t sub_23BF82DA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 7955819;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000019;
    }

    if (a1)
    {
      v5 = 0x676E696D6D6964;
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
    v1 = 0xD000000000000020;
    v2 = 0xD00000000000001ELL;
    if (a1 != 7)
    {
      v2 = 7697004;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 == 4)
    {
      v3 = 0xD000000000000021;
    }

    else
    {
      v3 = 0xD000000000000016;
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

uint64_t sub_23BF82EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BF839F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BF82EF4(uint64_t a1)
{
  v2 = sub_23BF8399C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF82F30(uint64_t a1)
{
  v2 = sub_23BF8399C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23BF82F6C(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  *(v3 + 48) = 0;
  v9 = a1[3];
  v30 = a1;
  sub_23BF4C484(a1, v9);
  sub_23BF8399C();
  sub_23BFFAE20();
  if (v2)
  {

    type metadata accessor for ParmesanAssetCompositionDerived();
    swift_deallocPartialClassInstance();
LABEL_4:
    sub_23BF4A9A4(v30);
    return v3;
  }

  v10 = v6;
  LOBYTE(v27[0]) = 0;
  *(v3 + 16) = sub_23BFFABA0();
  *(v3 + 24) = v11;
  LOBYTE(v27[0]) = 1;
  sub_23BFFABC0();
  *(v3 + 32) = v12;
  sub_23BF4A264(&qword_27E1E1798);
  v28 = 2;
  sub_23BF83D74(&qword_27E1E17A0);
  sub_23BFFABE0();
  sub_23BFD9CCC(v29, v27);

  v14 = objc_opt_self();
  v24 = v27[2];
  v25 = v27[3];
  v26 = v27[4];
  v22 = v27[0];
  v23 = v27[1];
  result = [v14 valueWithCAColorMatrix_];
  if (result)
  {
    *(v3 + 40) = result;
    sub_23BF4A264(&qword_27E1E17A8);
    LOBYTE(v22) = 3;
    sub_23BF83CCC();
    sub_23BFFABE0();
    if (v21)
    {
      sub_23BFD9CCC(v21, &v22);

      v20[2] = v24;
      v20[3] = v25;
      v20[4] = v26;
      v20[0] = v22;
      v20[1] = v23;
      v15 = [v14 valueWithCAColorMatrix_];
      v16 = *(v3 + 48);
      *(v3 + 48) = v15;
    }

    else
    {
      v16 = *(v3 + 48);
      *(v3 + 48) = 0;
    }

    v17 = [objc_allocWithZone(NTKParmesanImageAnalysis) init];
    LOBYTE(v22) = 4;
    [v17 setComplexBackground_];
    LOBYTE(v22) = 5;
    [v17 setBright_];
    LOBYTE(v22) = 6;
    [v17 setBrightForVibrant_];
    LOBYTE(v22) = 7;
    [v17 setBrightForGlass_];
    *(v3 + 56) = v17;
    LOBYTE(v22) = 8;
    v18 = v17;
    v19 = sub_23BFFABD0();
    (*(v10 + 8))(v8, v5);

    *(v3 + 64) = v19;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF834E4(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E17B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF8399C();
  sub_23BFFAE40();
  LOBYTE(v15) = 0;

  sub_23BFFAC10();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    LOBYTE(v15) = 1;
    sub_23BFFAC30();
    v17 = 8;
    sub_23BFFAC40();
    [*(v3 + 40) CAColorMatrixValue];
    sub_23BFD997C();
    v15 = v10;
    v16 = 2;
    sub_23BF4A264(&qword_27E1E1798);
    sub_23BF83D74(&qword_27E1E17C0);
    sub_23BFFAC50();

    v11 = *(v3 + 48);
    if (v11)
    {
      [v11 CAColorMatrixValue];
      sub_23BFD997C();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;
    v16 = 3;
    sub_23BF4A264(&qword_27E1E17A8);
    sub_23BF83DE0();
    sub_23BFFAC50();

    [*(v3 + 56) isComplexBackground];
    LOBYTE(v15) = 4;
    sub_23BFFAC20();
    [*(v3 + 56) isBright];
    LOBYTE(v15) = 5;
    sub_23BFFAC20();
    [*(v3 + 56) isBrightForVibrant];
    LOBYTE(v15) = 6;
    sub_23BFFAC20();
    [*(v3 + 56) isBrightForGlass];
    LOBYTE(v15) = 7;
    sub_23BFFAC20();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_23BF838AC()
{

  return swift_deallocClassInstance();
}

id sub_23BF83920@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ParmesanAssetCompositionDerived();
  v5 = swift_allocObject();
  result = sub_23BF82F6C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_23BF8399C()
{
  result = qword_27E1E1790;
  if (!qword_27E1E1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1790);
  }

  return result;
}