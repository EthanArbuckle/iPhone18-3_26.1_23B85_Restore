double sub_1C1C7199C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1C9AAD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1C9A7B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIBatteryGlyphView.BatteryFillShape(0);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D0], v6);
  sub_1C1C9A7A8();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E697F468], v2);
  sub_1C1C9AD18();
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_1C1C71C14(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1C71C98()
{
  result = qword_1EBF17E20;
  if (!qword_1EBF17E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17E20);
  }

  return result;
}

uint64_t sub_1C1C71D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BCUIBatteryGlyphView.BatteryFillShape(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1C71D80()
{
  result = qword_1EBF17E38;
  if (!qword_1EBF17E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17DE8);
    sub_1C1C71758(qword_1EBF18BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17E38);
  }

  return result;
}

unint64_t sub_1C1C71E28()
{
  result = qword_1EBF17E48;
  if (!qword_1EBF17E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17E40);
    sub_1C1C71C14(&qword_1EBF17E18, &qword_1EBF17E10, &unk_1C1C9D468, sub_1C1C71C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17E48);
  }

  return result;
}

uint64_t sub_1C1C71F14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1C71F60(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t (*sub_1C1C71FB4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1C1C9A548();
  return sub_1C1C57358;
}

uint64_t sub_1C1C72080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E68);
  sub_1C1C9A538();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1C1C721B8(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__devices;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E68);
  sub_1C1C9A528();
  swift_endAccess();
  return sub_1C1C750FC;
}

uint64_t sub_1C1C7233C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_1C1C723AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E80);
  sub_1C1C9A538();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1C1C724E4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E88);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRingsData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E80);
  sub_1C1C9A528();
  swift_endAccess();
  return sub_1C1C750FC;
}

uint64_t sub_1C1C726C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1C72718(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t sub_1C1C72790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E98);
  sub_1C1C9A538();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1C1C728C8(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRowsData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E98);
  sub_1C1C9A528();
  swift_endAccess();
  return sub_1C1C72A38;
}

uint64_t sub_1C1C72A94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C1C9A558();

  return v1;
}

uint64_t sub_1C1C72B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1C72BC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C1C9A568();
}

uint64_t (*sub_1C1C72C48(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1C1C9A548();
  return sub_1C1C57358;
}

uint64_t sub_1C1C72D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB0);
  sub_1C1C9A538();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1C1C72E4C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__systemMediumWidth;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB0);
  sub_1C1C9A528();
  swift_endAccess();
  return sub_1C1C750FC;
}

uint64_t sub_1C1C72FBC(char *a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_1C1C9A518();
  v10 = *(v3 + 8);
  v10(a1, v2);
  return v10(v8, v2);
}

uint64_t sub_1C1C73108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1C9A798();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 368))(v6);
}

uint64_t sub_1C1C73208(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  sub_1C1C9A568();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1C1C73330(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1C1C9A548();
  return sub_1C1C57358;
}

uint64_t sub_1C1C733F0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1C1C9A528();
  return swift_endAccess();
}

uint64_t sub_1C1C73468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EC0);
  sub_1C1C9A538();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1C1C735A0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EC8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__dynamicTypeSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EC0);
  sub_1C1C9A528();
  swift_endAccess();
  return sub_1C1C750FC;
}

void sub_1C1C73710(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1C1C9A538();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1C1C9A538();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_1C1C73878@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__colorScheme;
  swift_beginAccess();
  v4 = sub_1C1C9A5F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1C73900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__colorScheme;
  swift_beginAccess();
  v4 = sub_1C1C9A5F8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void (*sub_1C1C73990(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1C1C9A5F8();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__colorScheme;
  v5[13] = v10;
  v5[14] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[15] = v13;
  v5[16] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1C1C73AE8;
}

void sub_1C1C73AE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v6 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v8 = *(*a1 + 72);
  v7 = *(*a1 + 80);
  if (a2)
  {
    (*(v2 + 120))(*(v2 + 96), *(v2 + 104), *(v2 + 80));
    swift_beginAccess();
    (*(v6 + 40))(v8 + v4, v5, v7);
    swift_endAccess();
    (*(v6 + 8))(v3, v7);
  }

  else
  {
    swift_beginAccess();
    (*(v6 + 40))(v8 + v4, v3, v7);
    swift_endAccess();
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1C1C73C04()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 360))(v3);
  v6 = sub_1C1C98F8C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1C1C73D10()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 360))(v3);
  v6 = sub_1C1C98F8C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    return 3;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1C1C73E20(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = sub_1C1C51410(a1, a2, a3);

  return v3;
}

double sub_1C1C73E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a10;
  *(&v15 + 1) = a3;
  LOBYTE(v16) = a4;
  BYTE1(v16) = a5;
  BYTE2(v16) = a6;
  *(&v16 + 1) = a7;
  v17 = a8;
  v18[0] = a1;
  v18[1] = a2;
  *&v18[2] = a10;
  v18[3] = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  sub_1C1C57248(&v14, v13);
  sub_1C1C57280(v18);
  v11 = v15;
  *a9 = v14;
  *(a9 + 16) = v11;
  result = *&v16;
  *(a9 + 32) = v16;
  *(a9 + 48) = v17;
  return result;
}

double sub_1C1C73EE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a10;
  *(&v15 + 1) = a3;
  *v16 = a4;
  *&v16[8] = a5;
  v16[16] = a6;
  v16[17] = a7;
  v16[18] = a8;
  v17[0] = a1;
  v17[1] = a2;
  *&v17[2] = a10;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  sub_1C1C58680(&v14, v13);
  sub_1C1C59188(v17);
  v11 = v15;
  *a9 = v14;
  *(a9 + 16) = v11;
  result = *v16;
  *(a9 + 32) = *v16;
  *(a9 + 47) = *&v16[15];
  return result;
}

__int128 *sub_1C1C73F6C()
{
  if (qword_1ED7C5AE0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED7C62C0;
}

__int128 *sub_1C1C73FBC()
{
  if (qword_1ED7C5AE8 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED7C62F8;
}

uint64_t sub_1C1C7400C()
{
  v1 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__colorScheme;
  v2 = sub_1C1C9A5F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__devices;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRingsData;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E80);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRowsData;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E98);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__systemMediumWidth;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__dynamicTypeSize;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EC0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t sub_1C1C741E8()
{
  v1 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__colorScheme;
  v2 = sub_1C1C9A5F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__devices;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRingsData;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E80);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRowsData;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E98);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__systemMediumWidth;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__dynamicTypeSize;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EC0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v13, v14);
}

uint64_t sub_1C1C74408()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C1C74438(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C1C744D0(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1C1C745AC()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C1C745DC(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1C1C74634@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED7C5AE0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1C1C57248(&xmmword_1ED7C62C0, v2);
}

uint64_t sub_1C1C746B4()
{
  sub_1C1C9B4E8();
  MEMORY[0x1C690A040](0x4E6563697665643CLL, 0xED0000203A656D61);
  MEMORY[0x1C690A040](*v0, *(v0 + 8));
  MEMORY[0x1C690A040](0x656772616863202CLL, 0xEF203A6F69746152);
  v1 = sub_1C1C9B3A8();
  MEMORY[0x1C690A040](v1);

  MEMORY[0x1C690A040](0x656369766564202CLL, 0xEF203A6870796C47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17ED0);
  v2 = sub_1C1C9B498();
  MEMORY[0x1C690A040](v2);

  MEMORY[0x1C690A040](0x43776F4C7369202CLL, 0xEF203A6567726168);
  if (*(v0 + 32))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v3, v4);

  MEMORY[0x1C690A040](0xD000000000000019, 0x80000001C1CA06A0);
  if (*(v0 + 33))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v5, v6);

  MEMORY[0x1C690A040](0x726168437369202CLL, 0xEE00203A676E6967);
  if (*(v0 + 34))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 34))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v7, v8);

  MEMORY[0x1C690A040](0xD000000000000014, 0x80000001C1CA06C0);
  MEMORY[0x1C690A040](*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C690A040](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C1C74924()
{
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  return sub_1C1C9B5E8();
}

uint64_t sub_1C1C74968()
{
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  return sub_1C1C9B5E8();
}

uint64_t sub_1C1C749B4()
{

  sub_1C1C9B288();
}

uint64_t sub_1C1C74A0C()
{
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  return sub_1C1C9B5E8();
}

uint64_t sub_1C1C74A54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_1C1C9B5A8();
  }
}

uint64_t sub_1C1C74A8C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1C1C74B54@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED7C5AE8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1C1C58680(&xmmword_1ED7C62F8, v2);
}

uint64_t sub_1C1C74BC4()
{
  v1 = v0;
  sub_1C1C9B4E8();
  MEMORY[0x1C690A040](0x203A656D616E3CLL, 0xE700000000000000);
  MEMORY[0x1C690A040](*v1, v1[1]);
  MEMORY[0x1C690A040](0x656772616863202CLL, 0xEF203A6F69746152);
  v2 = sub_1C1C9B3A8();
  MEMORY[0x1C690A040](v2);

  MEMORY[0x1C690A040](0x656369766564202CLL, 0xEF203A6870796C47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17ED0);
  v3 = sub_1C1C9B498();
  MEMORY[0x1C690A040](v3);

  MEMORY[0x1C690A040](0xD000000000000014, 0x80000001C1CA06C0);
  MEMORY[0x1C690A040](v1[4], v1[5]);
  MEMORY[0x1C690A040](0x726168437369202CLL, 0xEE00203A676E6967);
  if (v0[48])
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v0[48])
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v4, v5);

  MEMORY[0x1C690A040](0x43776F4C7369202CLL, 0xEF203A6567726168);
  if (v0[49])
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v0[49])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v6, v7);

  MEMORY[0x1C690A040](0xD000000000000019, 0x80000001C1CA06A0);
  if (v0[50])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v0[50])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v8, v9);

  MEMORY[0x1C690A040](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C1C74E28()
{
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  return sub_1C1C9B5E8();
}

uint64_t sub_1C1C74E6C()
{
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  return sub_1C1C9B5E8();
}

uint64_t sub_1C1C74EB8()
{
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  return sub_1C1C9B5E8();
}

unint64_t sub_1C1C74F04()
{
  result = qword_1EBF17ED8;
  if (!qword_1EBF17ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17ED8);
  }

  return result;
}

unint64_t sub_1C1C74F5C()
{
  result = qword_1EBF17EE0;
  if (!qword_1EBF17EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17EE0);
  }

  return result;
}

uint64_t sub_1C1C74FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C1C75000(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C1C7504C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_1C1C75094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1C75100()
{
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D894(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return sub_1C1C9A748();
}

uint64_t sub_1C1C75184(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1C1C751D0()
{
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D894(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return sub_1C1C9A758();
}

double sub_1C1C752A0()
{
  type metadata accessor for BCUI2x4AvocadoView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

uint64_t sub_1C1C75310@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BCUI2x4AvocadoView();
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v51 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F08);
  MEMORY[0x1EEE9AC00](v61);
  v65 = v51 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F10);
  MEMORY[0x1EEE9AC00](v62);
  v66 = v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F18);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v51 - v14;
  v16 = *(v1 + 8);
  v17 = (*(*v16 + 432))(v13);
  v18 = (*v16 + 216);
  v64 = *v18;
  v63 = v18;
  v19 = *(v64() + 16);

  result = sub_1C1C9AA58();
  *v9 = result;
  *(v9 + 1) = 0;
  v9[16] = 0;
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v19 < v17)
    {
      v17 = v19;
    }

    v59 = v17;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F20) + 44);
    *&v69 = 0;
    *(&v69 + 1) = v17;
    swift_getKeyPath();
    v57 = type metadata accessor for BCUI2x4AvocadoView;
    sub_1C1C77C00(v2, v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BCUI2x4AvocadoView);
    v60 = a1;
    v21 = *(v67 + 80);
    v58 = v15;
    v54 = ((v21 + 16) & ~v21) + v5;
    v22 = (v21 + 16) & ~v21;
    v56 = v22;
    v51[1] = v21;
    v23 = swift_allocObject();
    v52 = v2;
    v55 = type metadata accessor for BCUI2x4AvocadoView;
    sub_1C1C77ADC(v6, v23 + v22, type metadata accessor for BCUI2x4AvocadoView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F30);
    sub_1C1C75F54();
    v67 = v12;
    sub_1C1C76034();
    sub_1C1C9B078();
    sub_1C1C9B0E8();
    sub_1C1C9A848();
    v24 = v65;
    sub_1C1C519C4(v9, v65, &qword_1EBF17F00);
    v25 = (v24 + *(v61 + 36));
    v26 = v74;
    v25[4] = v73;
    v25[5] = v26;
    v25[6] = v75;
    v27 = v70;
    *v25 = v69;
    v25[1] = v27;
    v28 = v72;
    v25[2] = v71;
    v25[3] = v28;
    LOBYTE(v22) = sub_1C1C9AC08();
    sub_1C1C9A5D8();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = v24;
    v38 = v66;
    sub_1C1C519C4(v37, v66, &qword_1EBF17F08);
    v39 = v38 + *(v62 + 36);
    *v39 = v22;
    *(v39 + 8) = v30;
    *(v39 + 16) = v32;
    *(v39 + 24) = v34;
    *(v39 + 32) = v36;
    *(v39 + 40) = 0;
    v40 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v57;
    sub_1C1C77C00(v2, v6, v57);
    v42 = (v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = v56;
    v45 = v55;
    sub_1C1C77ADC(v6, v43 + v56, v55);
    v46 = v59;
    *(v43 + v42) = v59;
    v47 = v58;
    v48 = sub_1C1C519C4(v38, v58, &qword_1EBF17F10);
    v49 = (v47 + *(v67 + 36));
    *v49 = sub_1C1C76D50;
    v49[1] = v43;
    v49[2] = 0;
    v49[3] = 0;
    v68 = (v64)(v48);
    sub_1C1C77C00(v52, v40, v41);
    v50 = swift_allocObject();
    sub_1C1C77ADC(v40, v50 + v44, v45);
    *(v50 + v42) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E78);
    sub_1C1C77780();
    sub_1C1C77950();
    sub_1C1C9AE58();

    return sub_1C1C4E77C(v47, &qword_1EBF17F18);
  }

  return result;
}

uint64_t sub_1C1C75A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_1C1C9A798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v40 - v10);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F58);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v40 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F48);
  v13 = MEMORY[0x1EEE9AC00](v45);
  v43 = &v40 - v14;
  v40 = *a1;
  v15 = *(**(a2 + 8) + 360);
  v15(v13);
  LOBYTE(a1) = sub_1C1C98F68();
  v16 = *(v6 + 8);
  v44 = v5;
  v16(v8, v5);
  v17 = 18.0;
  if (a1)
  {
    type metadata accessor for BCUI2x4AvocadoView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    sub_1C1C9A678();
    if (18.0 - *&v50 > 8.0)
    {
      v17 = 18.0 - *&v50;
    }

    else
    {
      v17 = 8.0;
    }
  }

  *v11 = sub_1C1C9AB08();
  v11[1] = v17;
  *(v11 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F98);
  v19 = sub_1C1C76204(v40, v11 + *(v18 + 44));
  v15(v19);
  sub_1C1C98F8C();
  v16(v8, v44);
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v20 = v41;
  sub_1C1C519C4(v11, v41, &qword_1EBF17F68);
  v21 = (v20 + *(v42 + 36));
  v22 = v48;
  *v21 = v47;
  v21[1] = v22;
  v21[2] = v49;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v23 = v43;
  sub_1C1C519C4(v20, v43, &qword_1EBF17F58);
  v24 = (v23 + *(v45 + 36));
  v25 = v55;
  v24[4] = v54;
  v24[5] = v25;
  v24[6] = v56;
  v26 = v51;
  *v24 = v50;
  v24[1] = v26;
  v27 = v53;
  v24[2] = v52;
  v24[3] = v27;
  LOBYTE(v20) = sub_1C1C9AC08();
  sub_1C1C9A5D8();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v23;
  v37 = v46;
  sub_1C1C519C4(v36, v46, &qword_1EBF17F48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17F30);
  v39 = v37 + *(result + 36);
  *v39 = v20;
  *(v39 + 8) = v29;
  *(v39 + 16) = v31;
  *(v39 + 24) = v33;
  *(v39 + 32) = v35;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1C1C75ED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BCUI2x4AvocadoView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C1C75A10(a1, v6, a2);
}

unint64_t sub_1C1C75F54()
{
  result = qword_1EBF17A50;
  if (!qword_1EBF17A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F28);
    sub_1C1C75FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17A50);
  }

  return result;
}

unint64_t sub_1C1C75FE0()
{
  result = qword_1EBF17A58;
  if (!qword_1EBF17A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17A58);
  }

  return result;
}

unint64_t sub_1C1C76034()
{
  result = qword_1EBF17F38;
  if (!qword_1EBF17F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F30);
    sub_1C1C760C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F38);
  }

  return result;
}

unint64_t sub_1C1C760C0()
{
  result = qword_1EBF17F40;
  if (!qword_1EBF17F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F48);
    sub_1C1C7614C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F40);
  }

  return result;
}

unint64_t sub_1C1C7614C()
{
  result = qword_1EBF17F50;
  if (!qword_1EBF17F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F58);
    sub_1C1C4CEAC(&qword_1EBF17F60, &qword_1EBF17F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F50);
  }

  return result;
}

uint64_t sub_1C1C76204@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v45 - v4;
  v5 = type metadata accessor for BCUIChargeRingLabelView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v45 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FC0);
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v46 = &v45 - v22;
  *v14 = sub_1C1C9B0E8();
  v14[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FC8);
  sub_1C1C768C4(a1, v14 + *(v25 + 44));
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  sub_1C1C519C4(v14, v21, &qword_1EBF17FB8);
  v26 = &v21[*(v16 + 44)];
  v27 = v66;
  *(v26 + 4) = v65;
  *(v26 + 5) = v27;
  *(v26 + 6) = v67;
  v28 = v62;
  *v26 = v61;
  *(v26 + 1) = v28;
  v29 = v64;
  *(v26 + 2) = v63;
  *(v26 + 3) = v29;
  sub_1C1C519C4(v21, v23, &qword_1EBF17FC0);
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D894(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v55 = v58;
  v56 = v59;
  v57 = v60;
  *&v75[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FD0);
  sub_1C1C4CEAC(&qword_1ED7C4AC8, &qword_1EBF17E78);
  sub_1C1C9B058();
  v75[2] = v70;
  v75[3] = v71;
  v76 = v72;
  v75[0] = v68;
  v75[1] = v69;

  sub_1C1C9A758();
  swift_getKeyPath();
  v30 = v48;
  sub_1C1C9A768();

  *&v31 = sub_1C1C814A0();
  v32 = v49;
  sub_1C1C814BC(v75, v30, v49, v31);
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v33 = v50;
  sub_1C1C77ADC(v32, v50, type metadata accessor for BCUIChargeRingLabelView);
  v34 = (v33 + *(v52 + 36));
  v35 = v73;
  v34[4] = v72;
  v34[5] = v35;
  v34[6] = v74;
  v36 = v69;
  *v34 = v68;
  v34[1] = v36;
  v37 = v71;
  v34[2] = v70;
  v34[3] = v37;
  sub_1C1C77B44();
  v38 = v51;
  sub_1C1C9ADD8();
  sub_1C1C4E77C(v33, &qword_1EBF17FA8);
  v40 = v46;
  v39 = v47;
  sub_1C1C4E714(v46, v47, &qword_1EBF17FC0);
  v41 = v53;
  sub_1C1C4E714(v38, v53, &qword_1EBF17FB0);
  v42 = v54;
  sub_1C1C4E714(v39, v54, &qword_1EBF17FC0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FD8);
  sub_1C1C4E714(v41, v42 + *(v43 + 48), &qword_1EBF17FB0);
  sub_1C1C4E77C(v38, &qword_1EBF17FB0);
  sub_1C1C4E77C(v40, &qword_1EBF17FC0);
  sub_1C1C4E77C(v41, &qword_1EBF17FB0);
  return sub_1C1C4E77C(v39, &qword_1EBF17FC0);
}

uint64_t sub_1C1C768C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for BCUIChargeRingView(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = (&v22 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v22 = &v22 - v13;
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D894(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  sub_1C1C5978C(v9, v14);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v32 = v35;
  v33 = v36;
  v34 = v37;
  *&v38[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FD0);
  sub_1C1C4CEAC(&qword_1ED7C4AC8, &qword_1EBF17E78);
  sub_1C1C9B058();
  v38[1] = v28;
  v38[2] = v29;
  v38[3] = v30;
  v39 = v31;
  v38[0] = v27;

  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v15 = v24;
  sub_1C1C58360(v38, v9, v24);
  v16 = v22;
  v17 = v23;
  sub_1C1C77C00(v22, v23, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  v18 = v25;
  sub_1C1C77C00(v15, v25, type metadata accessor for BCUIChargeRingView);
  v19 = v26;
  sub_1C1C77C00(v17, v26, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE0);
  sub_1C1C77C00(v18, v19 + *(v20 + 48), type metadata accessor for BCUIChargeRingView);
  sub_1C1C77C68(v15, type metadata accessor for BCUIChargeRingView);
  sub_1C1C77C68(v16, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  sub_1C1C77C68(v18, type metadata accessor for BCUIChargeRingView);
  return sub_1C1C77C68(v17, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
}

uint64_t sub_1C1C76D64(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v3 = sub_1C1C9A798();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BCUI2x4AvocadoView();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v69 - v10;
  v12 = sub_1C1C9A4C8();
  v13 = MEMORY[0x1EEE9AC00](v12);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = v69 - v17;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v69[1] = v6;
    v70 = v11;
    v71 = v9;
    v69[2] = v5;
    v69[3] = v3;
    v72 = v16;
    v73 = v15;
    if (a2)
    {
      v19 = *(v74 + 8);
      v20 = *(*v19 + 216);
      v21 = v20(result);
      if (*(v21 + 16))
      {
        v23 = 0;
        v83 = (v73 + 16);
        v82 = (v73 + 8);
        v77 = &unk_1C1C9D920;
        v24 = a2 - 1;
        v25 = 32;
        *&v22 = 136446978;
        v76 = v22;
        v79 = v12;
        v78 = v19;
        v75 = v18;
        while (1)
        {
          v26 = *(v21 + v25);
          v27 = *(v21 + v25 + 16);
          v28 = *(v21 + v25 + 32);
          v91 = *(v21 + v25 + 48);
          v89 = v27;
          v90 = v28;
          v88 = v26;
          sub_1C1C57248(&v88, v86);

          v29 = sub_1C1C4D054();
          (*v83)(v18, v29, v12);
          sub_1C1C57248(&v88, v86);

          v30 = sub_1C1C9A4A8();
          v31 = sub_1C1C9B418();

          sub_1C1C57280(&v88);
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v85 = v81;
            *v32 = v76;
            *(v32 + 4) = sub_1C1C4DDB8(0xD000000000000012, v77 | 0x8000000000000000, &v85);
            *(v32 + 12) = 2080;
            *(v32 + 14) = sub_1C1C4DDB8(v80, 0xE800000000000000, &v85);
            *(v32 + 22) = 2048;
            *(v32 + 24) = v23;
            *(v32 + 32) = 2080;
            v86[0] = v88;
            v86[1] = v89;
            v86[2] = v90;
            v87 = v91;
            sub_1C1C57248(&v88, v84);
            v33 = sub_1C1C9B268();
            v35 = v25;
            v36 = v30;
            v37 = v31;
            v38 = v24;
            v39 = sub_1C1C4DDB8(v33, v34, &v85);
            v18 = v75;

            *(v32 + 34) = v39;
            v24 = v38;
            v40 = v36;
            v25 = v35;
            _os_log_impl(&dword_1C1C4A000, v40, v37, "(%{public}s) %s - Ring %ld: %s", v32, 0x2Au);
            v41 = v81;
            swift_arrayDestroy();
            MEMORY[0x1C690AD10](v41, -1, -1);
            v42 = v32;
            v12 = v79;
            MEMORY[0x1C690AD10](v42, -1, -1);

            sub_1C1C57280(&v88);
          }

          else
          {
            sub_1C1C57280(&v88);
          }

          v43 = (*v82)(v18, v12);
          if (v24 == v23)
          {
            break;
          }

          v21 = v20(v43);
          ++v23;
          v25 += 56;
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        __break(1u);
      }
    }

    v44 = sub_1C1C4D054();
    v45 = v73;
    v46 = v72;
    (*(v73 + 16))(v72, v44, v12);
    v47 = v74;
    v48 = v70;
    sub_1C1C77C00(v74, v70, type metadata accessor for BCUI2x4AvocadoView);
    v49 = v71;
    sub_1C1C77C00(v47, v71, type metadata accessor for BCUI2x4AvocadoView);

    v50 = sub_1C1C9A4A8();
    v51 = sub_1C1C9B418();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v88 = v83;
      *v52 = 136447490;
      *(v52 + 4) = sub_1C1C4DDB8(0xD000000000000012, 0x80000001C1C9D920, &v88);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_1C1C4DDB8(v80, 0xE800000000000000, &v88);
      *(v52 + 22) = 2080;
      v53 = sub_1C1C9B3A8();
      LODWORD(v82) = v51;
      v55 = sub_1C1C4DDB8(v53, v54, &v88);

      *(v52 + 24) = v55;
      *(v52 + 32) = 2080;
      v56 = sub_1C1C9B3A8();
      v58 = sub_1C1C4DDB8(v56, v57, &v88);

      *(v52 + 34) = v58;
      *(v52 + 42) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
      sub_1C1C9A678();
      v59 = sub_1C1C9B3A8();
      v61 = v60;
      sub_1C1C77C68(v48, type metadata accessor for BCUI2x4AvocadoView);
      v62 = sub_1C1C4DDB8(v59, v61, &v88);

      *(v52 + 44) = v62;
      *(v52 + 52) = 2080;
      (*(**(v49 + 8) + 360))(v63);
      v64 = sub_1C1C9B268();
      v66 = v65;
      sub_1C1C77C68(v49, type metadata accessor for BCUI2x4AvocadoView);
      v67 = sub_1C1C4DDB8(v64, v66, &v88);

      *(v52 + 54) = v67;
      _os_log_impl(&dword_1C1C4A000, v50, v82, "(%{public}s) %s - Margin: %s, Padding: %s, labelTopPaddingScaledMetric: %s, dynamicTypeSize: %s", v52, 0x3Eu);
      v68 = v83;
      swift_arrayDestroy();
      MEMORY[0x1C690AD10](v68, -1, -1);
      MEMORY[0x1C690AD10](v52, -1, -1);

      return (*(v45 + 8))(v72, v12);
    }

    else
    {

      sub_1C1C77C68(v49, type metadata accessor for BCUI2x4AvocadoView);
      sub_1C1C77C68(v48, type metadata accessor for BCUI2x4AvocadoView);
      return (*(v45 + 8))(v46, v12);
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for BCUI2x4AvocadoView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

unint64_t sub_1C1C77780()
{
  result = qword_1EBF17F70;
  if (!qword_1EBF17F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F18);
    sub_1C1C7780C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F70);
  }

  return result;
}

unint64_t sub_1C1C7780C()
{
  result = qword_1EBF17F78;
  if (!qword_1EBF17F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F10);
    sub_1C1C77898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F78);
  }

  return result;
}

unint64_t sub_1C1C77898()
{
  result = qword_1EBF17F80;
  if (!qword_1EBF17F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F08);
    sub_1C1C4CEAC(&qword_1EBF17F88, &qword_1EBF17F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F80);
  }

  return result;
}

unint64_t sub_1C1C77950()
{
  result = qword_1EBF17F90;
  if (!qword_1EBF17F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17E78);
    sub_1C1C74F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17F90);
  }

  return result;
}

uint64_t sub_1C1C779D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D894(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  *a1 = sub_1C1C9A748();
  a1[1] = v2;
  type metadata accessor for BCUI2x4AvocadoView();
  sub_1C1C4DD2C();
  return sub_1C1C9A668();
}

uint64_t sub_1C1C77ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C1C77B44()
{
  result = qword_1EBF17B88;
  if (!qword_1EBF17B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17FA8);
    sub_1C1C4D894(&qword_1EBF17BE0, type metadata accessor for BCUIChargeRingLabelView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B88);
  }

  return result;
}

uint64_t sub_1C1C77C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C77C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1C77D60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1C9A9C8();
  *a1 = result;
  return result;
}

double sub_1C1C77DBC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C1C9AFC8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double sub_1C1C77E20@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFD8();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C1C77E94()
{
  v1 = v0[2];
  v10[0] = v0[1];
  v10[1] = v1;
  v2 = v0[4];
  v4 = v0[1];
  v3 = v0[2];
  v10[2] = v0[3];
  v10[3] = v2;
  v6 = v4;
  v7 = v3;
  v8 = v0[3];
  v9 = v0[4];
  sub_1C1C4E714(v10, v11, &qword_1EBF17FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFE8();
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  return sub_1C1C4E77C(v11, &qword_1EBF17FE8);
}

void (*sub_1C1C77F58(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x220uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  *v3 = v5;
  v3[1] = v6;
  v7 = v1[3];
  v8 = v1[4];
  v3[2] = v7;
  v3[3] = v8;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  v3[7] = v8;
  sub_1C1C4E714(v3, (v3 + 8), &qword_1EBF17FE8);
  *(v4 + 67) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFD8();
  return sub_1C1C78018;
}

void sub_1C1C78018(void **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  if (a2)
  {
    v4 = v2[16];
    v5 = v2[17];
    v2[23] = v4;
    v2[24] = v5;
    v6 = v2[18];
    v2[25] = v6;
    v7 = *(v2 + 38);
    *(v2 + 52) = v7;
    v8 = v2[1];
    v2[12] = *v2;
    v2[13] = v8;
    v9 = v2[3];
    v2[14] = v2[2];
    v2[15] = v9;
    *(v2 + 59) = v7;
    *(v2 + 440) = v5;
    *(v2 + 456) = v6;
    *(v2 + 424) = v4;
    sub_1C1C78168((v2 + 23), (v2 + 30));
    sub_1C1C9AFE8();
    v10 = v2[13];
    v2[8] = v2[12];
    v2[9] = v10;
    v11 = v2[15];
    v2[10] = v2[14];
    v2[11] = v11;
    sub_1C1C4E77C((v2 + 8), &qword_1EBF17FE8);
    v12 = v2[17];
    *v3 = v2[16];
    *(v3 + 16) = v12;
    *(v3 + 32) = v2[18];
    *(v3 + 48) = *(v2 + 38);
    sub_1C1C781C4(v3);
  }

  else
  {
    v13 = v2[17];
    *v3 = v2[16];
    *(v3 + 16) = v13;
    *(v3 + 32) = v2[18];
    *(v3 + 48) = *(v2 + 38);
    v14 = v2[1];
    v2[12] = *v2;
    v2[13] = v14;
    v15 = v2[3];
    v2[14] = v2[2];
    v2[15] = v15;
    sub_1C1C9AFE8();
    v16 = v2[13];
    v2[8] = v2[12];
    v2[9] = v16;
    v17 = v2[15];
    v2[10] = v2[14];
    v2[11] = v17;
    sub_1C1C4E77C((v2 + 8), &qword_1EBF17FE8);
  }

  free(v2);
}

__n128 sub_1C1C78218@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFF8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

id sub_1C1C78290()
{
  v0 = *sub_1C1C4CEF4();

  return v0;
}

double BatteryArchivableView.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = sub_1C1C4CEF4();
  v3 = *v2;
  *(a1 + 80) = *v2;
  v4 = v3;
  sub_1C1C6C7E8(0, 2, v8);
  sub_1C1C9AFC8();
  v5 = v10;
  *(a1 + 16) = v9;
  *(a1 + 32) = v5;
  result = *&v11;
  v7 = v12;
  *(a1 + 48) = v11;
  *(a1 + 64) = v7;
  return result;
}

double BatteryArchivableView.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = *sub_1C1C4CEF4();
  sub_1C1C6C7E8(0, 2, &v12);
  sub_1C1C9AFC8();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v11[7] = v7;
  *&v11[23] = v8;
  *&v11[39] = v9;
  *&v11[55] = v10;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 25) = *&v11[16];
  result = *&v11[32];
  *(a2 + 41) = *&v11[32];
  *(a2 + 57) = *&v11[48];
  *(a2 + 9) = *v11;
  *(a2 + 72) = *(&v10 + 1);
  *(a2 + 80) = v5;
  return result;
}

uint64_t BatteryArchivableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v26 = &v26 - v4;
  v6 = *(v1 + 48);
  v36 = *(v1 + 32);
  v37 = v6;
  v38 = *(v1 + 64);
  v39 = *(v1 + 80);
  v7 = *(v1 + 16);
  v34 = *v1;
  v35 = v7;
  v8 = sub_1C1C9B0E8();
  v28 = v9;
  v29 = v8;
  sub_1C1C78798(v1, &v30);
  v40 = v30;
  v41 = v31;
  v42[0] = v32[0];
  *(v42 + 10) = *(v32 + 10);
  v43[0] = v30;
  v43[1] = v31;
  v44[0] = v32[0];
  *(v44 + 10) = *(v32 + 10);
  sub_1C1C4E714(&v40, &v45, &qword_1EBF17FF8);
  sub_1C1C4E77C(v43, &qword_1EBF17FF8);
  v45 = v40;
  v46 = v41;
  v47[0] = v42[0];
  *(v47 + 10) = *(v42 + 10);
  v10 = swift_allocObject();
  v11 = v37;
  *(v10 + 48) = v36;
  *(v10 + 64) = v11;
  *(v10 + 80) = v38;
  v12 = v39;
  *(v10 + 96) = v39;
  v13 = v35;
  *(v10 + 16) = v34;
  *(v10 + 32) = v13;
  v33 = *(v12 + OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_subject);
  sub_1C1C4D00C(0, &qword_1ED7C5380);
  sub_1C1C78F70(&v34, &v30);

  v14 = sub_1C1C9B458();
  *&v30 = v14;
  v15 = sub_1C1C9B438();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF185A0);
  sub_1C1C4CEAC(&qword_1ED7C4BE8, &qword_1EBF185A0);
  sub_1C1C78FA8();
  v16 = v26;
  sub_1C1C9A588();
  sub_1C1C4E77C(v16, &qword_1EBF17FF0);

  v17 = swift_allocObject();
  v18 = v37;
  *(v17 + 48) = v36;
  *(v17 + 64) = v18;
  *(v17 + 80) = v38;
  *(v17 + 96) = v39;
  v19 = v35;
  *(v17 + 16) = v34;
  *(v17 + 32) = v19;
  v20 = v28;
  *a1 = v29;
  *(a1 + 8) = v20;
  v21 = v45;
  v22 = v46;
  v23 = v47[0];
  *(a1 + 58) = *(v47 + 10);
  *(a1 + 32) = v22;
  *(a1 + 48) = v23;
  *(a1 + 16) = v21;
  *(a1 + 78) = WORD2(v33);
  *(a1 + 74) = v33;
  *(a1 + 80) = sub_1C1C78F68;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v24 = (a1 + *(v27 + 56));
  *v24 = sub_1C1C7A1CC;
  v24[1] = v17;
  return sub_1C1C78F70(&v34, &v30);
}

double sub_1C1C78798@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1C1C9AA38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 8);
  v8 = *a1;
  v40 = *a1;
  v9 = v41;
  if (v41 == 1)
  {
    v39 = v8;
    v10 = v8;
    v11 = v8;
    v12 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C4E77C(&v40, &qword_1EBF18178);
    (*(v5 + 8))(v7, v4);
    v11 = v39;
    v12 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
    if (!v39)
    {
      goto LABEL_8;
    }
  }

  v14 = [v11 family];

  v15 = v14 == 10;
  v12 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
  if (!v15)
  {
LABEL_8:
    if (v9)
    {
      v18 = v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {

      sub_1C1C9B408();
      v19 = v12;
      v20 = sub_1C1C9ABF8();
      sub_1C1C9A498();

      v12 = v19;
      sub_1C1C9AA28();
      swift_getAtKeyPath();
      sub_1C1C4E77C(&v40, &qword_1EBF18178);
      (*(v5 + 8))(v7, v4);
      v8 = v28;
      if (!v28)
      {
        goto LABEL_15;
      }
    }

    v21 = [v8 v12[70]];

    if (v21 == 11)
    {
      v22 = *(a1 + 32);
      v28 = *(a1 + 16);
      v29 = v22;
      v23 = *(a1 + 64);
      v30[0] = *(a1 + 48);
      v30[1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
      sub_1C1C9AFD8();
      v28 = v31;
      v29 = v32;
      v30[0] = v33;
      *&v30[1] = v34;
      v35 = 1;
      BYTE8(v30[1]) = 1;
      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v26[0]) = 1;
    v38[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18180);
    sub_1C1C80060();
    sub_1C1C9AB38();
    goto LABEL_16;
  }

  v16 = *(a1 + 32);
  v28 = *(a1 + 16);
  v29 = v16;
  v17 = *(a1 + 64);
  v30[0] = *(a1 + 48);
  v30[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFD8();
  v28 = v31;
  v29 = v32;
  v30[0] = v33;
  *&v30[1] = v34;
  v35 = 0;
  BYTE8(v30[1]) = 0;
LABEL_14:
  sub_1C1C78168(&v31, v37);
  sub_1C1C800EC();
  sub_1C1C80140();
  sub_1C1C9AB38();
  v28 = v26[0];
  v29 = v26[1];
  v30[0] = v27[0];
  *(v30 + 9) = *(v27 + 9);
  v36 = 0;
  BYTE9(v30[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18180);
  sub_1C1C80060();
  sub_1C1C9AB38();
  sub_1C1C781C4(&v31);
  v28 = v37[0];
  v29 = v37[1];
  v30[0] = *v38;
  *(v30 + 10) = *&v38[10];
LABEL_16:
  v24 = v29;
  *a2 = v28;
  a2[1] = v24;
  a2[2] = v30[0];
  result = *(v30 + 10);
  *(a2 + 42) = *(v30 + 10);
  return result;
}

__n128 sub_1C1C78BF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1C1C78C10(uint64_t a1)
{
  v2 = sub_1C1C9A4C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v6;
  v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  v7 = *(a1 + 16);
  v26 = *a1;
  v27 = v7;
  sub_1C1C9A4F8();
  sub_1C1C79010(*&v40[0], v32);

  v8 = *(a1 + 32);
  v34 = *(a1 + 16);
  v35 = v8;
  v9 = *(a1 + 64);
  v11 = *(a1 + 16);
  v10 = *(a1 + 32);
  v36 = *(a1 + 48);
  v37 = v9;
  v26 = v11;
  v27 = v10;
  v12 = *(a1 + 64);
  v28 = *(a1 + 48);
  v29 = v12;
  v38[0] = v32[0];
  v38[1] = v32[1];
  v38[2] = v32[2];
  v39 = v33;
  sub_1C1C4E714(&v34, v40, &qword_1EBF17FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFE8();
  v40[0] = v26;
  v40[1] = v27;
  v40[2] = v28;
  v40[3] = v29;
  sub_1C1C4E77C(v40, &qword_1EBF17FE8);
  v13 = sub_1C1C98A98();
  (*(v3 + 16))(v5, v13, v2);
  sub_1C1C78F70(a1, &v26);
  v14 = sub_1C1C9A4A8();
  v15 = sub_1C1C9B418();
  sub_1C1C80030(a1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v2;
    v25 = v17;
    v18 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v25);
    *(v16 + 12) = 2080;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v29 = v37;
    sub_1C1C9AFD8();
    v19 = sub_1C1C6D268();
    v21 = v20;
    sub_1C1C781C4(v38);
    v22 = sub_1C1C4DDB8(v19, v21, &v25);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1C1C4A000, v14, v15, "(%s) Intent to be displayed on appear: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v18, -1, -1);
    MEMORY[0x1C690AD10](v16, -1, -1);

    return (*(v3 + 8))(v5, v24);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1C1C78FA8()
{
  result = qword_1ED7C4AC0;
  if (!qword_1ED7C4AC0)
  {
    sub_1C1C4D00C(255, &qword_1ED7C5380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4AC0);
  }

  return result;
}

__n128 sub_1C1C79010@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v4 = sub_1C1C9A4C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v122 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v125 = &v111 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v127 = &v111 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v123 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v111 - v14;
  v16 = sub_1C1C9AA38();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  LODWORD(v18) = *(v2 + 8);
  v21 = *(v2 + 41);
  v132 = *(v2 + 25);
  v133 = v21;
  *v134 = *(v2 + 57);
  *&v134[15] = *(v2 + 72);
  v131 = *(v2 + 9);
  v124 = v18;
  if (v18)
  {
    v22 = v20;
    v23 = v20;
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_1C1C9B408();
    v24 = v5;
    v25 = v4;
    v26 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    v4 = v25;
    v5 = v24;
    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5D6B4(v20, 0);
    (*(v17 + 8))(v19, v16);
    v23 = v128;
    if (!v128)
    {
LABEL_15:
      sub_1C1C6C7E8(0, 2, &v128);
      goto LABEL_16;
    }
  }

  v27 = [v23 intent];

  if (!v27)
  {
    goto LABEL_15;
  }

  v28 = INTypedIntentWithIntent();
  if (!v28)
  {
    v29 = v27;
LABEL_14:

    goto LABEL_15;
  }

  v29 = v28;
  objc_opt_self();
  v121 = swift_dynamicCastObjCClass();
  if (!v121)
  {

    goto LABEL_14;
  }

  v30 = sub_1C1C98A98();
  v32 = v5 + 16;
  v31 = *(v5 + 2);
  v119 = v30;
  v120 = v31;
  (v31)(v15);
  v33 = v27;
  v34 = v29;
  v35 = sub_1C1C9A4A8();
  v36 = sub_1C1C9B418();
  v117 = v34;

  LODWORD(v118) = v36;
  v37 = os_log_type_enabled(v35, v36);
  v38 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
  v116 = v33;
  if (v37)
  {
    v113 = v35;
    v114 = v5 + 16;
    v115 = v4;
    v39 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v128 = v112;
    *v39 = 136446722;
    *(v39 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v128);
    *(v39 + 12) = 2082;
    v40 = [v33 _dictionaryRepresentation];
    sub_1C1C9B1E8();

    v41 = sub_1C1C9B1F8();
    v43 = v42;

    v44 = sub_1C1C4DDB8(v41, v43, &v128);

    *(v39 + 14) = v44;
    *(v39 + 22) = 2114;
    v45 = v121;
    v46 = [v121 automatic];
    if (!v46)
    {
      sub_1C1C4D00C(0, &qword_1EBF17BE8);
      v46 = sub_1C1C9B488();
      v45 = v121;
    }

    *(v39 + 24) = v46;
    v47 = v111;
    *v111 = v46;
    v48 = v113;
    _os_log_impl(&dword_1C1C4A000, v113, v118, "(%{public}s) _findMatchingBatteryDevice| intent:  %{public}s, isAutomatic: %{public}@", v39, 0x20u);
    sub_1C1C4E77C(v47, &qword_1EBF17D00);
    MEMORY[0x1C690AD10](v47, -1, -1);
    v49 = v112;
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v49, -1, -1);
    MEMORY[0x1C690AD10](v39, -1, -1);

    v4 = v115;
    v118 = *(v5 + 1);
    v118(v15, v115);
    v32 = v114;
    v38 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
  }

  else
  {

    v118 = *(v5 + 1);
    v118(v15, v4);
    v45 = v121;
  }

  v55 = [v45 v38[67]];
  v56 = v127;
  if (!v55)
  {
    goto LABEL_24;
  }

  v57 = v55;
  if (![v55 BOOLValue])
  {

LABEL_24:
    v72 = [v45 device];
    if (v72)
    {
      v73 = v72;
      v120(v56, v119, v4);
      v74 = v116;
      v75 = sub_1C1C9A4A8();
      v76 = sub_1C1C9B418();

      LODWORD(v121) = v76;
      v122 = v75;
      v77 = os_log_type_enabled(v75, v76);
      v123 = v74;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v128 = v116;
        *v78 = 136446466;
        *(v78 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v128);
        *(v78 + 12) = 2082;
        v79 = [v74 _dictionaryRepresentation];
        v115 = v4;
        v80 = v79;
        sub_1C1C9B1E8();
        v114 = v32;

        v81 = sub_1C1C9B1F8();
        v83 = v82;

        v84 = sub_1C1C4DDB8(v81, v83, &v128);
        v4 = v115;

        *(v78 + 14) = v84;
        v85 = v118;
        v86 = v122;
        _os_log_impl(&dword_1C1C4A000, v122, v121, "(%{public}s) _findMatchingBatteryDevice| intent:  %{public}s", v78, 0x16u);
        v87 = v116;
        swift_arrayDestroy();
        MEMORY[0x1C690AD10](v87, -1, -1);
        MEMORY[0x1C690AD10](v78, -1, -1);

        v85(v127, v4);
      }

      else
      {

        v118(v56, v4);
      }

      v95 = v125;
      v120(v125, v119, v4);
      v96 = v73;
      v97 = v73;
      v98 = sub_1C1C9A4A8();
      v99 = sub_1C1C9B418();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v127 = v5;
        v103 = v102;
        v128 = v102;
        *v100 = 136446466;
        *(v100 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v128);
        *(v100 + 12) = 2114;
        *(v100 + 14) = v97;
        *v101 = v96;
        v104 = v97;
        _os_log_impl(&dword_1C1C4A000, v98, v99, "(%{public}s) _findMatchingBatteryDevice| usersDevice: %{public}@", v100, 0x16u);
        sub_1C1C4E77C(v101, &qword_1EBF17D00);
        MEMORY[0x1C690AD10](v101, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x1C690AD10](v103, -1, -1);
        MEMORY[0x1C690AD10](v100, -1, -1);

        v105 = v125;
      }

      else
      {

        v105 = v95;
      }

      v118(v105, v4);
      v106 = v117;
      v107 = v123;
      v128 = v20;
      v129[0] = v124;
      *&v129[17] = v132;
      *&v129[33] = v133;
      *v130 = *v134;
      *&v130[15] = *&v134[15];
      *&v129[1] = v131;
      v108 = sub_1C1C7A508(v97, v126);
      sub_1C1C6C7E8(v108, v109, &v128);
    }

    else
    {
      v88 = v122;
      v120(v122, v119, v4);
      v89 = sub_1C1C9A4A8();
      v90 = sub_1C1C9B3E8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = v88;
        v93 = swift_slowAlloc();
        v128 = v93;
        *v91 = 136315138;
        *(v91 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v128);
        _os_log_impl(&dword_1C1C4A000, v89, v90, "(%s) _findMatchingBatteryDevice| error", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x1C690AD10](v93, -1, -1);
        MEMORY[0x1C690AD10](v91, -1, -1);

        v94 = v92;
      }

      else
      {

        v94 = v88;
      }

      v118(v94, v4);
      sub_1C1C6C7E8(0, 2, &v128);
    }

    goto LABEL_16;
  }

  v58 = sub_1C1C7A1D4();
  if (v58)
  {
    v59 = v58;
    v60 = v123;
    v120(v123, v119, v4);
    v61 = v59;
    v62 = sub_1C1C9A4A8();
    v63 = v4;
    v64 = sub_1C1C9B418();

    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v115 = v63;
      v67 = v66;
      v68 = swift_slowAlloc();
      v128 = v68;
      *v65 = 136446466;
      *(v65 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v128);
      *(v65 + 12) = 2114;
      *(v65 + 14) = v61;
      *v67 = v59;
      v69 = v61;
      _os_log_impl(&dword_1C1C4A000, v62, v64, "(%{public}s) _findMatchingBatteryDevice| smartChoice: %{public}@", v65, 0x16u);
      sub_1C1C4E77C(v67, &qword_1EBF17D00);
      MEMORY[0x1C690AD10](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1C690AD10](v68, -1, -1);
      MEMORY[0x1C690AD10](v65, -1, -1);

      v70 = v123;
      v71 = v115;
    }

    else
    {

      v70 = v60;
      v71 = v63;
    }

    v118(v70, v71);
    v58 = v59;
    v110 = 0;
  }

  else
  {
    v110 = 2;
  }

  sub_1C1C6C7E8(v58, v110, &v128);

LABEL_16:
  v50 = *&v129[40];
  v52 = *&v129[8];
  result = *&v129[24];
  v53 = *v129;
  v54 = BYTE1(v128);
  *a2 = v128;
  *(a2 + 1) = v54;
  *(a2 + 8) = v53;
  *(a2 + 16) = v52;
  *(a2 + 32) = result;
  *(a2 + 48) = v50;
  return result;
}

uint64_t sub_1C1C79EB0(unint64_t *a1, uint64_t a2)
{
  v4 = sub_1C1C9A4C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v9;
  v33 = *(a2 + 64);
  v34 = *(a2 + 80);
  v10 = *(a2 + 16);
  v29 = *a2;
  v30 = v10;
  sub_1C1C79010(v8, v39);
  v11 = *(a2 + 32);
  v35 = *(a2 + 16);
  v36 = v11;
  v12 = *(a2 + 64);
  v14 = *(a2 + 16);
  v13 = *(a2 + 32);
  v37 = *(a2 + 48);
  v38 = v12;
  v29 = v14;
  v30 = v13;
  v15 = *(a2 + 64);
  v31 = *(a2 + 48);
  v32 = v15;
  sub_1C1C4E714(&v35, v40, &qword_1EBF17FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FE8);
  sub_1C1C9AFE8();
  v40[0] = v29;
  v40[1] = v30;
  v40[2] = v31;
  v40[3] = v32;
  sub_1C1C4E77C(v40, &qword_1EBF17FE8);
  v16 = sub_1C1C98A98();
  (*(v5 + 16))(v7, v16, v4);
  sub_1C1C78F70(a2, &v29);
  v17 = sub_1C1C9A4A8();
  v18 = sub_1C1C9B3E8();
  sub_1C1C80030(a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v4;
    v28 = v20;
    v21 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v28);
    *(v19 + 12) = 2080;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    sub_1C1C9AFD8();
    v22 = sub_1C1C6D268();
    v24 = v23;
    sub_1C1C781C4(v39);
    v25 = sub_1C1C4DDB8(v22, v24, &v28);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_1C1C4A000, v17, v18, "(%s) Intent to be displayed on receive: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v21, -1, -1);
    MEMORY[0x1C690AD10](v19, -1, -1);

    return (*(v5 + 8))(v7, v27);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C1C7A1D4()
{
  v0 = sub_1C1C9A4C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v20[0] = sub_1C1C7F38C(v4);
  sub_1C1C7AFB4(v20);
  v21 = v20[0];
  sub_1C1C7AF3C(&v21);
  v5 = sub_1C1C98A98();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_1C1C9A4A8();
  v7 = sub_1C1C9B3E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, v20);
    *(v8 + 12) = 2080;
    swift_beginAccess();
    v10 = sub_1C1C4D00C(0, &qword_1ED7C5390);

    v12 = MEMORY[0x1C690A0F0](v11, v10);
    v14 = v13;

    v15 = sub_1C1C4DDB8(v12, v14, v20);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C1C4A000, v6, v7, "(%s) smartChoice| sortedDevices: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v9, -1, -1);
    MEMORY[0x1C690AD10](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  v16 = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  if (!sub_1C1C9B538())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x1C690A2A0](0, v16);

    goto LABEL_8;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_8:

    return v17;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_1C1C7A508(void *a1, unint64_t a2)
{
  v4 = [a1 isInternal];
  if (v4 && (v5 = v4, v6 = [v4 BOOLValue], v5, v6))
  {
    if (a2 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1C9B538())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C690A2A0](j, a2);
        }

        else
        {
          if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v9 = *(a2 + 8 * j + 32);
        }

        v10 = v9;
        v11 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if ([v9 isInternal])
        {
          return v10;
        }

        if (v11 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    return 0;
  }

  else
  {
    v12 = sub_1C1C7A654(a1, a2);
    if (v12)
    {
      return v12;
    }

    else
    {
      v13 = a1;
      return a1;
    }
  }
}

void *sub_1C1C7A654(void *a1, unint64_t a2)
{
  v4 = sub_1C1C9A4C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v87 - v9;
  v92 = a1;
  v11 = [a1 isSynthesized];
  if (!v11 || (v12 = v11, v13 = [v11 BOOLValue], v12, !v13))
  {
    v36 = [v92 parts];
    if (!v36)
    {
LABEL_32:
      v38 = sub_1C1C98A98();
      (*(v5 + 16))(v8, v38, v4);
      v39 = sub_1C1C9A4A8();
      v40 = sub_1C1C9B3E8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v93 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v93);
        _os_log_impl(&dword_1C1C4A000, v39, v40, "(%s) findDeviceIfConnected| Not Headphone Case", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x1C690AD10](v42, -1, -1);
        MEMORY[0x1C690AD10](v41, -1, -1);
      }

      (*(v5 + 8))(v8, v4);

      v93 = sub_1C1C7F38C(v43);
      sub_1C1C7AFB4(&v93);
      v15 = v93;
      if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
      {
        goto LABEL_99;
      }

      for (i = *(v93 + 16); i; i = sub_1C1C9B538())
      {
        v45 = 0;
        v46 = v15 & 0xC000000000000001;
        v47 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
        while (1)
        {
          if (v46)
          {
            v48 = MEMORY[0x1C690A2A0](v45, v15);
          }

          else
          {
            if (v45 >= *(v15 + 16))
            {
              goto LABEL_94;
            }

            v48 = *(v15 + 8 * v45 + 32);
          }

          v20 = v48;
          v49 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          v50 = [v48 v47[65]];
          if (v50)
          {

            v51 = [v20 v47[65]];
            if (v51)
            {
              v52 = v51;
              v53 = sub_1C1C9B258();
              v55 = v54;
            }

            else
            {
              v53 = 0;
              v55 = 0;
            }

            v56 = [v92 v47[65]];
            if (v56)
            {
              v91 = v53;
              v57 = v15;
              v58 = v46;
              v59 = i;
              v60 = v56;
              v61 = sub_1C1C9B258();
              v63 = v62;

              i = v59;
              v46 = v58;
              v15 = v57;
              if (v55)
              {
                if (v63)
                {
                  if (v91 == v61 && v55 == v63)
                  {

LABEL_59:
                    if ((BCBatteryDevice.isHeadPhoneCase.getter() & 1) == 0)
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v64 = sub_1C1C9B5A8();

                    if (v64)
                    {
                      goto LABEL_59;
                    }
                  }

                  v47 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
                  goto LABEL_39;
                }
              }

              else if (!v63)
              {
                goto LABEL_59;
              }
            }

            else if (!v55)
            {
              goto LABEL_59;
            }

            v47 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
          }

          else
          {
          }

LABEL_39:
          ++v45;
          if (v49 == i)
          {
            goto LABEL_102;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        ;
      }

LABEL_102:

      return 0;
    }

    v37 = v36;
    if ((sub_1C1C9B3C8() & 4) == 0)
    {

      goto LABEL_32;
    }

    v65 = sub_1C1C98A98();
    (*(v5 + 16))(v10, v65, v4);
    v66 = sub_1C1C9A4A8();
    v67 = sub_1C1C9B3E8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v93 = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_1C1C4DDB8(0xD000000000000015, 0x80000001C1C9DAA0, &v93);
      _os_log_impl(&dword_1C1C4A000, v66, v67, "(%s) findDeviceIfConnected| Headphone Case", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x1C690AD10](v69, -1, -1);
      MEMORY[0x1C690AD10](v68, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v88 = v37;
    if (a2 >> 62)
    {
      v70 = sub_1C1C9B538();
      if (v70)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v70 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
LABEL_66:
        v71 = 0;
        v90 = a2 & 0xFFFFFFFFFFFFFF8;
        v91 = a2 & 0xC000000000000001;
        v15 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
        v89 = a2;
        do
        {
          if (v91)
          {
            v72 = MEMORY[0x1C690A2A0](v71, a2);
          }

          else
          {
            if (v71 >= *(v90 + 16))
            {
              goto LABEL_98;
            }

            v72 = *(a2 + 8 * v71 + 32);
          }

          v20 = v72;
          v73 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_97;
          }

          v74 = [v72 accessoryIdentifier];
          if (v74)
          {

            v75 = [v20 accessoryIdentifier];
            if (v75)
            {
              v76 = v75;
              v77 = sub_1C1C9B258();
              v79 = v78;
            }

            else
            {
              v77 = 0;
              v79 = 0;
            }

            v80 = [v92 accessoryIdentifier];
            if (v80)
            {
              v81 = v80;
              v82 = sub_1C1C9B258();
              v84 = v83;

              if (v79)
              {
                if (v84)
                {
                  if (v77 == v82 && v79 == v84)
                  {

LABEL_88:
                    if (BCBatteryDevice.isHeadPhoneCase.getter())
                    {

                      return v20;
                    }
                  }

                  else
                  {
                    v85 = sub_1C1C9B5A8();

                    if (v85)
                    {
                      goto LABEL_88;
                    }
                  }

                  a2 = v89;
                  goto LABEL_68;
                }
              }

              else if (!v84)
              {
                goto LABEL_88;
              }
            }

            else if (!v79)
            {
              goto LABEL_88;
            }

            a2 = v89;
          }

          else
          {
          }

LABEL_68:
          ++v71;
        }

        while (v73 != v70);
      }
    }

    return 0;
  }

  v93 = sub_1C1C7F38C(v14);
  sub_1C1C7AFB4(&v93);
  v15 = v93;
  if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
  {
    v16 = sub_1C1C9B538();
    if (!v16)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v16 = *(v93 + 16);
    if (!v16)
    {
      goto LABEL_102;
    }
  }

  v17 = 0;
  v91 = v15 & 0xC000000000000001;
  v18 = &_swift_FORCE_LOAD___swiftSpatial___BatteryCenterUI;
  while (1)
  {
    if (v91)
    {
      v19 = MEMORY[0x1C690A2A0](v17, v15);
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_96;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_95;
    }

    v22 = [v19 v18[65]];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1C1C9B258();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = [v92 v18[65]];
    if (!v27)
    {
      if (!v26)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    v90 = v24;
    v28 = v15;
    v29 = v16;
    v30 = v18;
    v31 = v27;
    v32 = sub_1C1C9B258();
    v34 = v33;

    v18 = v30;
    v16 = v29;
    v15 = v28;
    if (!v26)
    {
      if (!v34)
      {
        goto LABEL_26;
      }

LABEL_27:

      goto LABEL_9;
    }

    if (v34)
    {
      break;
    }

LABEL_8:

LABEL_9:
    ++v17;
    if (v21 == v16)
    {
      goto LABEL_102;
    }
  }

  if (v90 == v32 && v26 == v34)
  {

    goto LABEL_26;
  }

  v35 = sub_1C1C9B5A8();

  if ((v35 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  if (BCBatteryDevice.isHeadPhoneCase.getter())
  {
    goto LABEL_27;
  }

LABEL_91:

  return v20;
}

void sub_1C1C7AF3C(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1C1C7F328(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1C1C7D9BC(v4);
  *a1 = v2;
}

uint64_t sub_1C1C7AFB4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C1C8001C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C1C7DAD0(v6);
  return sub_1C1C9B528();
}

uint64_t sub_1C1C7B030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1C4C228();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1C1C7B094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1C4C228();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

__n128 sub_1C1C7B15C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  sub_1C1C7F420(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1C1C7B1BC()
{
  v1 = sub_1C1C9AB98();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18008);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *v7 = sub_1C1C9AB18();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18010);
  sub_1C1C7B378(v0, &v7[*(v8 + 44)]);
  sub_1C1C9AB88();
  sub_1C1C4CEAC(&qword_1EBF18018, &qword_1EBF18008);
  sub_1C1C9ADF8();
  (*(v2 + 8))(v4, v1);
  return sub_1C1C4E77C(v7, &qword_1EBF18008);
}

uint64_t sub_1C1C7B378@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180C8);
  MEMORY[0x1EEE9AC00](v46);
  v4 = (&v40 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v40 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180D8);
  v49 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - v12;
  v53 = a1;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17ED0);
  sub_1C1C7FC08();
  sub_1C1C7FA2C();
  sub_1C1C9AF58();
  v13 = *(a1 + 40);
  v54 = *(a1 + 32);
  v55 = v13;
  sub_1C1C584B4();

  v14 = sub_1C1C9AD48();
  v16 = v15;
  v18 = v17;
  sub_1C1C9AC98();
  v42 = sub_1C1C9AD28();
  v41 = v19;
  v43 = v20;
  v48 = v21;

  sub_1C1C58E34(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  *v4 = sub_1C1C9B0E8();
  v4[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18118);
  sub_1C1C7BC48(a1, (v4 + *(v24 + 44)));
  sub_1C1C4CEAC(&qword_1EBF18120, &qword_1EBF180C8);
  v25 = v50;
  sub_1C1C9ADD8();
  sub_1C1C4E77C(v4, &qword_1EBF180C8);
  v26 = *(v49 + 16);
  v40 = v11;
  v27 = v44;
  v28 = v51;
  v26(v11, v44, v51);
  v29 = v45;
  sub_1C1C5E340(v25, v45);
  v30 = v47;
  v26(v47, v11, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18128);
  v32 = &v30[*(v31 + 48)];
  v33 = v42;
  v34 = v41;
  *v32 = v42;
  *(v32 + 1) = v34;
  v35 = v43 & 1;
  v32[16] = v43 & 1;
  *(v32 + 3) = v48;
  *(v32 + 4) = KeyPath;
  *(v32 + 5) = 1;
  v32[48] = 0;
  sub_1C1C5E340(v29, &v30[*(v31 + 64)]);
  sub_1C1C7FE04(v33, v34, v35);

  sub_1C1C4E77C(v50, &qword_1EBF180D0);
  v36 = *(v49 + 8);
  v37 = v27;
  v38 = v51;
  v36(v37, v51);
  sub_1C1C4E77C(v29, &qword_1EBF180D0);
  sub_1C1C58E34(v33, v34, v35);

  return (v36)(v40, v38);
}

uint64_t sub_1C1C7B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18158);
  MEMORY[0x1EEE9AC00](v40);
  v5 = v38 - v4;
  v6 = sub_1C1C9AAA8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180F8);
  MEMORY[0x1EEE9AC00](v39);
  v8 = v38 - v7;
  LOBYTE(v7) = *a1;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v7)
  {
    sub_1C1C9AA98();
    sub_1C1C9AA88();
    sub_1C1C9AEF8();
    sub_1C1C9AA68();

    sub_1C1C9AA88();
    sub_1C1C9AA78();
    sub_1C1C9AA88();
    sub_1C1C9AAC8();
    v11 = sub_1C1C9AD38();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18108) + 36)];
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18090) + 28);
    v20 = *MEMORY[0x1E69816C8];
    v21 = sub_1C1C9AF28();
    (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
    *v18 = swift_getKeyPath();
    *v8 = v11;
    *(v8 + 1) = v13;
    v8[16] = v15 & 1;
    *(v8 + 3) = v17;
    v22 = sub_1C1C9ACF8();
    KeyPath = swift_getKeyPath();
    v24 = &v8[*(v39 + 36)];
    *v24 = KeyPath;
    v24[1] = v22;
    sub_1C1C4E714(v8, v5, &qword_1EBF180F8);
    swift_storeEnumTagMultiPayload();
    sub_1C1C7FC94();
    sub_1C1C9AB38();
    return sub_1C1C4E77C(v8, &qword_1EBF180F8);
  }

  else
  {
    v41 = v10;
    v42 = v9;
    sub_1C1C584B4();

    v26 = sub_1C1C9AD48();
    v28 = v27;
    v30 = v29;
    sub_1C1C9ACF8();
    v31 = sub_1C1C9AD28();
    v33 = v32;
    v35 = v34;
    v38[1] = a2;
    v37 = v36;

    sub_1C1C58E34(v26, v28, v30 & 1);

    *v5 = v31;
    *(v5 + 1) = v33;
    v5[16] = v35 & 1;
    *(v5 + 3) = v37;
    swift_storeEnumTagMultiPayload();
    sub_1C1C7FC94();
    return sub_1C1C9AB38();
  }
}

uint64_t sub_1C1C7BC48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18130);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18138);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v32 - v10;
  sub_1C1C9AAB8();
  v11 = sub_1C1C9AD38();
  v13 = v12;
  v15 = v14;
  sub_1C1C9AC98();
  v16 = sub_1C1C9AD28();
  v33 = v17;
  v34 = v18;
  v35 = v19;

  sub_1C1C58E34(v11, v13, v15 & 1);

  v20 = *(v36 + 8) / 100.0;
  if (v20 > 1.0)
  {
    v20 = 1.0;
  }

  if (v20 < 0.0)
  {
    v20 = 0.0;
  }

  v43 = v20;
  v44 = 0;
  v42 = 0x3FF0000000000000;
  sub_1C1C4DD2C();
  sub_1C1C9A648();
  sub_1C1C4CEAC(&qword_1EBF18140, &qword_1EBF18130);
  sub_1C1C7FE14();
  v21 = v41;
  v22 = v38;
  sub_1C1C9AD88();
  (*(v39 + 8))(v5, v22);
  v23 = v7;
  v24 = *(v7 + 16);
  v25 = v37;
  v24(v37, v21, v6);
  v26 = v40;
  v27 = v33;
  *v40 = v16;
  v26[1] = v27;
  v28 = v34 & 1;
  *(v26 + 16) = v34 & 1;
  v26[3] = v35;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18150);
  v24(v26 + *(v29 + 48), v25, v6);
  sub_1C1C7FE04(v16, v27, v28);
  v30 = *(v23 + 8);

  v30(v41, v6);
  v30(v25, v6);
  sub_1C1C58E34(v16, v27, v28);
}

uint64_t sub_1C1C7BFF8()
{
  v1 = sub_1C1C9AB98();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18008);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  v8 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v8;
  v11[2] = *(v0 + 32);
  v12 = *(v0 + 48);
  *v7 = sub_1C1C9AB18();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18010);
  sub_1C1C7B378(v11, &v7[*(v9 + 44)]);
  sub_1C1C9AB88();
  sub_1C1C4CEAC(&qword_1EBF18018, &qword_1EBF18008);
  sub_1C1C9ADF8();
  (*(v2 + 8))(v4, v1);
  return sub_1C1C4E77C(v7, &qword_1EBF18008);
}

__n128 sub_1C1C7C1D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  sub_1C1C7F450(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1C1C7C238@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = *(v1 + 48);
  *(v3 + 72) = xmmword_1C1C9DA30;
  *a1 = sub_1C1C7F480;
  a1[1] = v3;
  return sub_1C1C7F48C(v1, v6);
}

uint64_t sub_1C1C7C2B8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18050);
  v101 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v83 = sub_1C1C9AF08();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18058);
  v11 = MEMORY[0x1EEE9AC00](v80);
  v85 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = (&v80 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18060);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v80 - v17;
  *&v95 = COERCE_DOUBLE(sub_1C1C9ABE8());
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18068);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v80 - v19;
  *&v21 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18070));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18078);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v25 = &v80 - v24;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18080);
  v97 = *(v98 - 8);
  v26 = MEMORY[0x1EEE9AC00](v98);
  v96 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  sub_1C1C9A718();
  v31 = v30;
  sub_1C1C9A718();
  v33 = v32;
  result = sub_1C1C9B0E8();
  *a2 = result;
  a2[1] = v35;
  v36 = *a1;
  *&v105 = a1[1];
  if (a3 > a4)
  {
    __break(1u);
  }

  else
  {
    v87 = v8;
    v88 = a2;
    v110 = a3;
    v111 = a4;
    MEMORY[0x1EEE9AC00](result);
    *(&v80 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18088);
    sub_1C1C7F974();
    sub_1C1C4DD2C();
    sub_1C1C9AEE8();
    if ((v36 & 0x100) != 0)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.5;
    }

    (*(v90 + 32))(v23, v20, v91);
    *&v23[*(v21 + 36)] = v37;
    v38 = v89;
    sub_1C1C9ABD8();
    v39 = sub_1C1C7FAA8();
    v40 = sub_1C1C7FB60();
    v41 = *&v95;
    sub_1C1C9AD98();
    (*(v94 + 8))(v38, COERCE_DOUBLE(*&v41));
    sub_1C1C4E77C(v23, &qword_1EBF18070);
    v110 = *&v21;
    v111 = v41;
    v112 = v39;
    v113 = v40;
    swift_getOpaqueTypeConformance2();
    v42 = v93;
    sub_1C1C9ADE8();
    (*(v92 + 8))(v25, v42);
    v102 = v29;
    if (v36)
    {
      v43 = sub_1C1C6C32C();
      v44 = *v43;
      sub_1C1C9AF48();
      LODWORD(v95) = *MEMORY[0x1E6981630];
      v45 = v82;
      v94 = *(v82 + 104);
      v46 = v81;
      v47 = v83;
      (v94)(v81);
      v48 = sub_1C1C9AF38();

      v49 = *(v45 + 8);
      v49(v46, v47);
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180A8) + 36);
      v51 = *MEMORY[0x1E6981DC0];
      v52 = sub_1C1C9B138();
      v53 = v84;
      (*(*(v52 - 8) + 104))(v84 + v50, v51, v52);
      *v53 = v48;
      sub_1C1C9B0E8();
      sub_1C1C9A6C8();
      v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180B0) + 36));
      v55 = v121;
      *v54 = v120;
      v54[1] = v55;
      v54[2] = v122;
      v56 = (v53 + *(v80 + 36));
      *v56 = v31 * 0.4925;
      v56[1] = v33 * 0.1;
      v57 = *v43;
      sub_1C1C9AF48();
      (v94)(v46, v95, v47);
      *&v95 = COERCE_DOUBLE(sub_1C1C9AF38());

      v49(v46, v47);
      sub_1C1C9B0E8();
      sub_1C1C9A6C8();
      v58 = v123;
      LOBYTE(v46) = v124;
      v59 = v125;
      LOBYTE(v47) = v126;
      v60 = v127;
      v94 = v128;
      LOBYTE(v110) = v124;
      LOBYTE(v105) = v126;
      v61 = v85;
      sub_1C1C4E714(v53, v85, &qword_1EBF18058);
      v62 = v86;
      sub_1C1C4E714(v61, v86, &qword_1EBF18058);
      v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180B8) + 48);
      v64 = *&v95;
      *&v105 = v95;
      *(&v105 + 1) = v58;
      LOBYTE(v106) = v46;
      *(&v106 + 1) = *v104;
      DWORD1(v106) = *&v104[3];
      *(&v106 + 1) = v59;
      LOBYTE(v107) = v47;
      *(&v107 + 1) = *v103;
      DWORD1(v107) = *&v103[3];
      *(&v107 + 1) = v60;
      v65 = v94;
      *&v108 = v94;
      *(&v108 + 1) = v31 * 0.4925;
      v109 = v33 * 0.1;
      v66 = v105;
      v67 = v106;
      v68 = v107;
      v69 = v108;
      *(v63 + 64) = v33 * 0.1;
      *(v63 + 32) = v68;
      *(v63 + 48) = v69;
      *v63 = v66;
      *(v63 + 16) = v67;
      sub_1C1C4E714(&v105, &v110, &qword_1EBF180C0);
      sub_1C1C4E77C(v53, &qword_1EBF18058);
      v110 = v64;
      v111 = v58;
      LOBYTE(v112) = v46;
      *(&v112 + 1) = *v104;
      HIDWORD(v112) = *&v104[3];
      v113 = v59;
      v114 = v47;
      *v115 = *v103;
      *&v115[3] = *&v103[3];
      v116 = v60;
      v117 = v65;
      v118 = v31 * 0.4925;
      v119 = v33 * 0.1;
      sub_1C1C4E77C(&v110, &qword_1EBF180C0);
      sub_1C1C4E77C(v61, &qword_1EBF18058);
      v29 = v102;
      v70 = v99;
      sub_1C1C519C4(v62, v99, &qword_1EBF18050);
      (*(v101 + 56))(v70, 0, 1, v87);
    }

    else
    {
      v70 = v99;
      (*(v101 + 56))(v99, 1, 1, v87);
    }

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18098);
    v72 = v88 + *(v71 + 44);
    v73 = v97;
    v74 = *(v97 + 16);
    v75 = v96;
    v76 = v98;
    v74(v96, v29, v98);
    v77 = v100;
    sub_1C1C4E714(v70, v100, &qword_1EBF18060);
    v74(v72, v75, v76);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180A0);
    sub_1C1C4E714(v77, &v72[*(v78 + 48)], &qword_1EBF18060);
    sub_1C1C4E77C(v70, &qword_1EBF18060);
    v79 = *(v73 + 8);
    v79(v102, v76);
    sub_1C1C4E77C(v77, &qword_1EBF18060);
    return (v79)(v75, v76);
  }

  return result;
}

uint64_t sub_1C1C7D05C@<X0>(uint64_t (**a1)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = *(v1 + 32);
  v9 = *(v1 + 48);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = *(v1 + 48);
  *(v4 + 72) = xmmword_1C1C9DA30;
  *a1 = sub_1C1C80194;
  a1[1] = v4;
  return sub_1C1C7F48C(v8, v7);
}

double sub_1C1C7D0F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1C9ABC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1C1C9B0E8();
  v9 = v8;
  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_1C1C7F4C4;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  result = *&v21;
  *(a2 + 64) = v21;
  return result;
}

uint64_t sub_1C1C7D290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v51 = a1;
  v53 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18038);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18040);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v47 = &v46 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v48 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v19 = sub_1C1C9A838();
  v20 = *(v19 + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1C1C9AAD8();
  v23 = *(*(v22 - 8) + 104);
  v23(&v18[v20], v21, v22);
  __asm { FMOV            V0.2D, #5.0 }

  v46 = _Q0;
  *v18 = _Q0;
  v29 = sub_1C1C9AE88();
  KeyPath = swift_getKeyPath();
  v31 = &v18[*(v4 + 44)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v32 = &v18[*(v8 + 44)];
  v33 = v55;
  *v32 = v54;
  *(v32 + 1) = v33;
  *(v32 + 2) = v56;
  v23(&v6[*(v19 + 20)], v21, v22);
  *v6 = v46;
  v34 = sub_1C1C9AEB8();
  v35 = swift_getKeyPath();
  v36 = &v6[*(v4 + 44)];
  *v36 = v35;
  v36[1] = v34;
  sub_1C1C9ABB8();
  sub_1C1C9A718();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v37 = v47;
  sub_1C1C519C4(v6, v47, &qword_1EBF18038);
  v38 = (v37 + *(v8 + 44));
  v39 = v58;
  *v38 = v57;
  v38[1] = v39;
  v38[2] = v59;
  v40 = v48;
  sub_1C1C519C4(v37, v48, &qword_1EBF18040);
  v41 = v50;
  sub_1C1C4E714(v18, v50, &qword_1EBF18040);
  v42 = v52;
  sub_1C1C4E714(v40, v52, &qword_1EBF18040);
  v43 = v53;
  sub_1C1C4E714(v41, v53, &qword_1EBF18040);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18048);
  sub_1C1C4E714(v42, v43 + *(v44 + 48), &qword_1EBF18040);
  sub_1C1C4E77C(v40, &qword_1EBF18040);
  sub_1C1C4E77C(v18, &qword_1EBF18040);
  sub_1C1C4E77C(v42, &qword_1EBF18040);
  return sub_1C1C4E77C(v41, &qword_1EBF18040);
}

double sub_1C1C7D694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1C9ABC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1C1C9B0E8();
  v9 = v8;
  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_1C1C801AC;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  result = *&v21;
  *(a2 + 64) = v21;
  return result;
}

char *sub_1C1C7D830(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C1C7D934(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1C1C7D9BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C1C9B598();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C1C4D00C(0, &qword_1ED7C5390);
        v6 = sub_1C1C9B358();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C1C7DDCC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C1C7DBE4(0, v2, 1, a1);
  }
}

void sub_1C1C7DAD0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C1C9B598();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C1C4D00C(0, &qword_1ED7C5390);
        v6 = sub_1C1C9B358();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1C1C7E40C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C1C7DCD4(0, v2, 1, a1);
  }
}

void sub_1C1C7DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      BCBatteryDevice.priority.getter();
      v15 = v14;
      BCBatteryDevice.priority.getter();
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C1C7DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 percentCharge];
      v13 = [v11 percentCharge];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C1C7DDCC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v8 = sub_1C1C7F08C(v8);
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = *&v8[16 * v98];
        v100 = *&v8[16 * v98 + 24];
        sub_1C1C7EA74((*a3 + 8 * v99), (*a3 + 8 * *&v8[16 * v98 + 16]), (*a3 + 8 * v100), v6);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v100 < v99)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C1C7F08C(v8);
        }

        if (v98 - 2 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v101 = &v8[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_1C1C7F000(v98 - 1);
        v98 = *(v8 + 2);
        if (v98 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v106 = v7;
    if (v7 + 1 < v6)
    {
      v103 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      BCBatteryDevice.priority.getter();
      v18 = v17;
      BCBatteryDevice.priority.getter();
      v20 = v19;

      v21 = v7 + 2;
      while (v6 != v21)
      {
        v22 = *(v13 - 1);
        v23 = *v13;
        v24 = v22;
        BCBatteryDevice.priority.getter();
        v26 = v25;
        BCBatteryDevice.priority.getter();
        v28 = v27;

        ++v21;
        ++v13;
        if (v18 < v20 == v26 >= v28)
        {
          v6 = v21 - 1;
          break;
        }
      }

      v9 = v7;
      if (v18 < v20)
      {
        if (v6 < v7)
        {
          goto LABEL_116;
        }

        if (v7 < v6)
        {
          v29 = 8 * v6 - 8;
          v30 = v6;
          v31 = v7;
          do
          {
            if (v31 != --v30)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v32 = *(v33 + v5);
              *(v33 + v5) = *(v33 + v29);
              *(v33 + v29) = v32;
            }

            ++v31;
            v29 -= 8;
            v5 += 8;
          }

          while (v31 < v30);
        }
      }

      v10 = v6;
      v5 = v103;
    }

    v6 = a3;
    v34 = a3[1];
    if (v10 < v34)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_115;
      }

      if (v10 - v9 < a4)
      {
        v35 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_117;
        }

        if (v35 >= v34)
        {
          v35 = a3[1];
        }

        if (v35 < v9)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v10 != v35)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C1C7D830(0, *(v8 + 2) + 1, 1, v8);
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v8 = sub_1C1C7D830((v51 > 1), v52 + 1, 1, v8);
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v106;
    *(v54 + 5) = v10;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    v7 = v10;
    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_56:
          if (v60)
          {
            goto LABEL_103;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_106;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_110;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_70:
        if (v78)
        {
          goto LABEL_105;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_108;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_77:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_118;
        }

        if (!*v6)
        {
          goto LABEL_121;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        sub_1C1C7EA74((*v6 + 8 * v95), (*v6 + 8 * *&v8[16 * v56 + 32]), (*v6 + 8 * v96), v55);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v96 < v95)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C1C7F08C(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_100;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        sub_1C1C7F000(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_101;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_102;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_104;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_107;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_111;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (v7 >= v6)
    {
      goto LABEL_87;
    }
  }

  v104 = v5;
  v36 = *a3;
  v37 = *a3 + 8 * v10 - 8;
  v38 = v9 - v10;
  v107 = v35;
LABEL_29:
  v109 = v10;
  v39 = *(v36 + 8 * v10);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    BCBatteryDevice.priority.getter();
    v46 = v45;
    BCBatteryDevice.priority.getter();
    v48 = v47;

    if (v46 >= v48)
    {
LABEL_28:
      v10 = v109 + 1;
      v37 += 8;
      --v38;
      if (v109 + 1 != v107)
      {
        goto LABEL_29;
      }

      v10 = v107;
      v5 = v104;
      v6 = a3;
      v9 = v106;
      goto LABEL_36;
    }

    if (!v36)
    {
      break;
    }

    v49 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v49;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

void sub_1C1C7E40C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1C1C7F08C(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1C1C7ED1C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1C1C7F08C(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1C1C7F000(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 percentCharge];
      v104 = [v14 percentCharge];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 percentCharge];
        v7 = [v18 percentCharge];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C1C7D830(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1C1C7D830((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1C1C7ED1C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C1C7F08C(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1C1C7F000(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 percentCharge];
    v41 = [v39 percentCharge];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1C1C7EA74(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v4;
      v19 = *v13;
      v20 = v18;
      BCBatteryDevice.priority.getter();
      v22 = v21;
      BCBatteryDevice.priority.getter();
      v24 = v23;

      if (v22 < v24)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v25 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v25;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v41 = v4;
LABEL_25:
    v40 = v15;
    v26 = v15 - 1;
    --v5;
    v27 = v14;
    do
    {
      v28 = v5 + 1;
      v29 = *--v27;
      v30 = v26;
      v31 = *v26;
      v32 = v29;
      v33 = v31;
      BCBatteryDevice.priority.getter();
      v35 = v34;
      BCBatteryDevice.priority.getter();
      v37 = v36;

      if (v35 < v37)
      {
        v38 = v30;
        if (v28 != v40)
        {
          *v5 = *v30;
        }

        v4 = v41;
        if (v14 <= v41 || (v15 = v38, v38 <= v6))
        {
          v15 = v38;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v28 != v14)
      {
        *v5 = *v27;
      }

      --v5;
      v14 = v27;
      v26 = v30;
    }

    while (v27 > v41);
    v14 = v27;
    v15 = v40;
    v4 = v41;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1C1C7ED1C(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 percentCharge];
          v35 = [v33 percentCharge];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 percentCharge];
          v20 = [v18 percentCharge];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1C1C7F000(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1C7F08C(v3);
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

uint64_t sub_1C1C7F0A0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1C9AA08();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1C7F128(uint64_t a1)
{
  v2 = sub_1C1C9AF28();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C1C9A8A8();
}

uint64_t sub_1C1C7F1F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1C9A978();
  *a1 = result;
  return result;
}

uint64_t sub_1C1C7F248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1C9A928();
  *a1 = result;
  return result;
}

void (*sub_1C1C7F2A0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C690A2A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C1C7F320;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1C7F328(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C1C9B538();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x1EEE6A410](0, v2, 0, a1);
}

uint64_t sub_1C1C7F38C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1C1C9B538();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1C1C7D934(v3, 0);
  sub_1C1C7FE68((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15BatteryCenterUI0A11DisplayModeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C1C7F568(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1C7F5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1C7F5F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C1C7F650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C1C7F698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_1C1C9ABC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1C7F7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1C1C9ABC8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C1C7D290(a1, v6, a2);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1C7F884@<X0>(void *a1@<X8>)
{
  v10 = *(*(v1 + 16) + 48);
  v3 = v10;
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18088) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18090) + 28);
  v6 = *MEMORY[0x1E69816C8];
  v7 = sub_1C1C9AF28();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  *a1 = v3;
  return sub_1C1C4E714(&v10, &v9, &qword_1EBF17ED0);
}

unint64_t sub_1C1C7F974()
{
  result = qword_1EBF17B70;
  if (!qword_1EBF17B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18088);
    sub_1C1C7FA2C();
    sub_1C1C4CEAC(&qword_1EBF17AF8, &qword_1EBF18090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B70);
  }

  return result;
}

unint64_t sub_1C1C7FA2C()
{
  result = qword_1EBF17AD8;
  if (!qword_1EBF17AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17AD8);
  }

  return result;
}

unint64_t sub_1C1C7FAA8()
{
  result = qword_1EBF17B78;
  if (!qword_1EBF17B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18070);
    sub_1C1C4CEAC(&qword_1EBF17AE0, &qword_1EBF18068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B78);
  }

  return result;
}

unint64_t sub_1C1C7FB60()
{
  result = qword_1EBF17AE8;
  if (!qword_1EBF17AE8)
  {
    sub_1C1C9ABE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17AE8);
  }

  return result;
}

uint64_t sub_1C1C7FBC0@<X0>(void *a1@<X8>)
{
  v4 = *(*(v1 + 16) + 48);
  *a1 = v4;
  return sub_1C1C4E714(&v4, &v3, &qword_1EBF17ED0);
}

unint64_t sub_1C1C7FC08()
{
  result = qword_1EBF180E8;
  if (!qword_1EBF180E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF180E0);
    sub_1C1C7FC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF180E8);
  }

  return result;
}

unint64_t sub_1C1C7FC94()
{
  result = qword_1EBF180F0;
  if (!qword_1EBF180F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF180F8);
    sub_1C1C7FD4C();
    sub_1C1C4CEAC(&qword_1ED7C4B28, &qword_1EBF18110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF180F0);
  }

  return result;
}

unint64_t sub_1C1C7FD4C()
{
  result = qword_1EBF18100;
  if (!qword_1EBF18100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18108);
    sub_1C1C4CEAC(&qword_1EBF17AF8, &qword_1EBF18090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18100);
  }

  return result;
}

uint64_t sub_1C1C7FE04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C1C7FE14()
{
  result = qword_1EBF18148;
  if (!qword_1EBF18148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF18148);
  }

  return result;
}

uint64_t sub_1C1C7FE68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1C9B538();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1C9B538();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1C4CEAC(&qword_1EBF18168, &qword_1EBF17E60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E60);
            v9 = sub_1C1C7F2A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C1C4D00C(0, &qword_1ED7C5390);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1C80060()
{
  result = qword_1EBF17B18;
  if (!qword_1EBF17B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18180);
    sub_1C1C800EC();
    sub_1C1C80140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B18);
  }

  return result;
}

unint64_t sub_1C1C800EC()
{
  result = qword_1EBF17BD8;
  if (!qword_1EBF17BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17BD8);
  }

  return result;
}

unint64_t sub_1C1C80140()
{
  result = qword_1EBF17BD0;
  if (!qword_1EBF17BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17BD0);
  }

  return result;
}

uint64_t sub_1C1C801B0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C1C80210()
{
  sub_1C1C55C1C();

  v0 = *sub_1C1C59138();

  return sub_1C1C9A5B8();
}

double sub_1C1C80294@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for BCUIChargeRingLabelView();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v5, v2);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t type metadata accessor for BCUIChargeRingLabelView()
{
  result = qword_1ED7C5D20;
  if (!qword_1ED7C5D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1C8036C()
{
  v1 = v0 + *(type metadata accessor for BCUIChargeRingLabelView() + 24);
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v12 = *(v1 + 32);
  v13 = v3;
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  v8 = v12;
  v9 = *(v1 + 48);
  v14 = *(v1 + 64);
  v10 = *(v1 + 64);
  v6 = v11[0];
  v7 = v2;
  sub_1C1C4E714(v11, v15, &qword_1EBF18188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B028();
  v15[2] = v8;
  v15[3] = v9;
  v16 = v10;
  v15[0] = v6;
  v15[1] = v7;
  return sub_1C1C4E77C(v15, &qword_1EBF18188);
}

void (*sub_1C1C80460(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x240uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIChargeRingLabelView() + 24));
  v6 = v5[2];
  v7 = v5[3];
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v8 = *(v5 + 8);
  *(v4 + 64) = v8;
  v10 = *v5;
  v9 = v5[1];
  *v4 = *v5;
  *(v4 + 16) = v9;
  *(v4 + 88) = v9;
  *(v4 + 104) = v6;
  *(v4 + 120) = v7;
  *(v4 + 136) = v8;
  *(v4 + 72) = v10;
  sub_1C1C4E714(v4, v4 + 144, &qword_1EBF18188);
  *(v4 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C80548;
}

void sub_1C1C80548(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 216;
  v4 = *a1 + 344;
  v5 = *(*a1 + 304);
  if (a2)
  {
    v2[25] = v2[18];
    v2[26] = v5;
    v7 = v2[18];
    v6 = v2[19];
    v2[27] = v2[20];
    v8 = v2[3];
    *(v3 + 32) = v2[2];
    *(v3 + 48) = v8;
    v9 = v2[1];
    *v3 = *v2;
    *(v3 + 16) = v9;
    v10 = v2[20];
    *(v2 + 472) = v6;
    *(v2 + 488) = v10;
    *(v2 + 56) = *(v2 + 42);
    *(v3 + 64) = *(v2 + 8);
    *(v2 + 63) = *(v2 + 42);
    *(v2 + 456) = v7;
    sub_1C1C57248((v2 + 25), (v2 + 32));
    sub_1C1C9B028();
    v11 = *(v3 + 48);
    v2[11] = *(v3 + 32);
    v2[12] = v11;
    *(v2 + 26) = *(v3 + 64);
    v12 = *(v3 + 16);
    v2[9] = *v3;
    v2[10] = v12;
    sub_1C1C4E77C((v2 + 9), &qword_1EBF18188);
    v13 = v2[19];
    *v4 = v2[18];
    *(v4 + 16) = v13;
    *(v4 + 32) = v2[20];
    *(v4 + 48) = *(v2 + 42);
    sub_1C1C57280(v4);
  }

  else
  {
    *v4 = v2[18];
    *(v4 + 16) = v5;
    *(v4 + 32) = v2[20];
    *(v4 + 48) = *(v2 + 42);
    v14 = v2[3];
    *(v3 + 32) = v2[2];
    *(v3 + 48) = v14;
    *(v3 + 64) = *(v2 + 8);
    v15 = v2[1];
    *v3 = *v2;
    *(v3 + 16) = v15;
    sub_1C1C9B028();
    v16 = *(v3 + 48);
    v2[11] = *(v3 + 32);
    v2[12] = v16;
    *(v2 + 26) = *(v3 + 64);
    v17 = *(v3 + 16);
    v2[9] = *v3;
    v2[10] = v17;
    sub_1C1C4E77C((v2 + 9), &qword_1EBF18188);
  }

  free(v2);
}

__n128 sub_1C1C806C0@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for BCUIChargeRingLabelView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B048();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C1C80768(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIChargeRingLabelView();
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  sub_1C1C9B028();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C1C8087C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1C1C9A798();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for BCUIChargeRingLabelView();
  sub_1C1C4E714(v1 + *(v13 + 28), v12, &qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v10);
  return sub_1C1C80A00;
}

void sub_1C1C80A00(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = *v2;
    v7 = v2[1];
    (*(v7 + 16))(*(*a1 + 16), v5, *v2);
    sub_1C1C9B028();
    sub_1C1C4E77C(v3, &qword_1EBF17FA0);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C1C9B028();
    sub_1C1C4E77C(v3, &qword_1EBF17FA0);
  }

  free(v3);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1C1C80B10(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for BCUIChargeRingLabelView();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  return a1(v2);
}

uint64_t sub_1C1C80B6C(double a1)
{
  v2 = sub_1C1C9AD08();
  MEMORY[0x1EEE9AC00](v2);
  *&v6[1] = a1;
  (*(v4 + 104))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6980EF8]);
  sub_1C1C4DD2C();
  return sub_1C1C9A658();
}

double sub_1C1C80C5C()
{
  type metadata accessor for BCUIChargeRingLabelView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

uint64_t sub_1C1C80CB0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v64 = sub_1C1C9B1A8();
  v62 = *(v64 - 8);
  v2 = MEMORY[0x1EEE9AC00](v64);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v55 - v4;
  v5 = sub_1C1C9A798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18190) - 8;
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v55 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18198);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v55 - v10;
  v11 = type metadata accessor for BCUIChargeRingLabelView();
  v58 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v57 = v1;
  MEMORY[0x1C6909DC0](v12);
  v13 = sub_1C1C52B9C();
  (*(v6 + 8))(v8, v5);
  v14 = (v1 + *(v11 + 24));
  v15 = v14[3];
  v70 = v14[2];
  v71 = v15;
  v72 = *(v14 + 8);
  v16 = *v14;
  v69 = v14[1];
  v68 = v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v73);
  v75 = v73[0];
  v76 = v73[1];
  v77 = v73[2];
  v78 = v74;
  sub_1C1C57280(&v75);
  v17 = sub_1C1C54F08(*&v76);
  *&v68 = sub_1C1C51A8C(v13, v17);
  *(&v68 + 1) = v18;
  sub_1C1C584B4();
  v19 = sub_1C1C9AD48();
  v21 = v20;
  v23 = v22;
  sub_1C1C9ACD8();
  v24 = sub_1C1C9AD28();
  v26 = v25;
  LOBYTE(v6) = v27;
  v29 = v28;
  v55 = v28;

  sub_1C1C58E34(v19, v21, v23 & 1);

  *&v68 = v24;
  *(&v68 + 1) = v26;
  LOBYTE(v21) = v6 & 1;
  LOBYTE(v69) = v6 & 1;
  *(&v69 + 1) = v29;
  v30 = v56;
  sub_1C1C55068(v56);
  v31 = v60;
  sub_1C1C9B198();
  LOBYTE(v19) = sub_1C1C9B188();
  v32 = *(v62 + 8);
  v33 = v31;
  v34 = v64;
  v32(v33, v64);
  v32(v30, v34);
  v35 = *sub_1C1C55268();

  v36 = v59;
  sub_1C1C552B8(v19 & 1, v35, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v59);

  sub_1C1C58E34(v24, v26, v21);

  v37 = v36 + *(v61 + 44);
  sub_1C1C9A868();
  v38 = *sub_1C1C58508();
  v39 = sub_1C1C9ABA8();
  *(v37 + *(v39 + 20)) = v38;
  *(v37 + *(v39 + 24)) = 0;

  LOBYTE(v37) = sub_1C1C9AC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  sub_1C1C9A5D8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v65;
  sub_1C1C5E3BC(v36, v65);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181A0) + 36);
  *v49 = v37;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  sub_1C1C4E77C(v36, &qword_1EBF18190);
  v50 = v66;
  *(v48 + *(v66 + 36)) = 257;
  v51 = v14[3];
  v70 = v14[2];
  v71 = v51;
  v72 = *(v14 + 8);
  v52 = *v14;
  v69 = v14[1];
  v68 = v52;
  MEMORY[0x1C6909DC0](v73, v63);
  LOBYTE(v37) = sub_1C1C746A4();
  sub_1C1C57280(v73);
  v53 = sub_1C1C817E8();
  sub_1C1C5A7B4(v37 & 1, v50, v53, v67);
  return sub_1C1C4E77C(v48, &qword_1EBF18198);
}

uint64_t sub_1C1C8130C()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BCUIChargeRingLabelView();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v6);
  v7 = sub_1C1C52B9C();
  (*(v2 + 8))(v4, v1);
  v8 = (v0 + *(v5 + 24));
  v9 = v8[3];
  v19 = v8[2];
  v20 = v9;
  v21 = *(v8 + 8);
  v10 = v8[1];
  v17 = *v8;
  v18 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v15, v11);
  v22 = v15[0];
  v23 = v15[1];
  v24 = v15[2];
  v25 = v16;
  sub_1C1C57280(&v22);
  v12 = sub_1C1C54F08(*&v23);
  return sub_1C1C51A8C(v7, v12);
}

uint64_t sub_1C1C814BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<D0>)
{
  v18[0] = a2;
  v7 = sub_1C1C9AD08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for BCUIChargeRingLabelView();
  v12 = v11[5];
  sub_1C1C55C1C();

  v13 = *sub_1C1C59138();
  *(a3 + v12) = sub_1C1C9A5B8();
  v14 = a3 + v11[6];
  v15 = *(a1 + 48);
  *(v14 + 2) = *(a1 + 32);
  *(v14 + 3) = v15;
  *(v14 + 8) = *(a1 + 64);
  v16 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v16;
  sub_1C1C58444(v18[0], a3 + v11[7]);
  v18[1] = a4;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EF8], v7);
  sub_1C1C4DD2C();
  return sub_1C1C9A658();
}

uint64_t sub_1C1C81698()
{
  v0 = sub_1C1C9A798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIChargeRingLabelView();
  sub_1C1C9A5C8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v4);
  v5 = sub_1C1C52B9C();
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    v6 = 37;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1C690A040](v6, v7);

  return v9;
}

unint64_t sub_1C1C817E8()
{
  result = qword_1EBF17B38;
  if (!qword_1EBF17B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18198);
    sub_1C1C81874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B38);
  }

  return result;
}

unint64_t sub_1C1C81874()
{
  result = qword_1ED7C4B78;
  if (!qword_1ED7C4B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF181A0);
    sub_1C1C81900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B78);
  }

  return result;
}

unint64_t sub_1C1C81900()
{
  result = qword_1ED7C4BA8;
  if (!qword_1ED7C4BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18190);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4BA8);
  }

  return result;
}

void sub_1C1C81A00()
{
  sub_1C1C53E14(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C81B74(319, &qword_1EBF17BC8, MEMORY[0x1E69E6158], MEMORY[0x1E697BD78]);
    if (v1 <= 0x3F)
    {
      sub_1C1C81B74(319, &qword_1EBF17A80, &type metadata for ChargeRingData, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1C53E14(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1C1C51154();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C1C81B74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C1C81BC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1C9AA38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C1C4E714(v2, &v14 - v9, &qword_1EBF17D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9B1A8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C1C81DC8()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BCUI2x2AvocadoView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1C9B408();
    v7 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5B774(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1C1C81F20()
{
  sub_1C1C9A9A8();
  sub_1C1C4D8DC(&qword_1EBF17B20, MEMORY[0x1E6985530]);
  sub_1C1C9AA48();
  return v1;
}

uint64_t sub_1C1C81F9C()
{
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return sub_1C1C9A748();
}

uint64_t sub_1C1C82018()
{
  type metadata accessor for BCUI2x2AvocadoView(0);
}

uint64_t sub_1C1C82050(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BCUI2x2AvocadoView(0) + 24);

  *(v3 + 8) = a1;
  return result;
}

uint64_t sub_1C1C820D8()
{
  type metadata accessor for BCUI2x2AvocadoView(0);
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);

  return sub_1C1C9A758();
}

double sub_1C1C82174()
{
  type metadata accessor for BCUI2x2AvocadoView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

double sub_1C1C821C8()
{
  type metadata accessor for BCUI2x2AvocadoView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  return v1;
}

double sub_1C1C82228()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for BCUI2x2AvocadoView(0);
  v6 = v0 + *(v5 + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = 0.0;
    if ((v7 & 1) == 0)
    {
      return v8 + *(v0 + *(v5 + 36)) * -0.22826087;
    }

    goto LABEL_5;
  }

  sub_1C1C9B408();
  v9 = sub_1C1C9ABF8();
  sub_1C1C9A498();

  sub_1C1C9AA28();
  swift_getAtKeyPath();
  sub_1C1C5B774(v7, 0);
  (*(v2 + 8))(v4, v1);
  v8 = 0.0;
  if (v12[15] == 1)
  {
LABEL_5:
    sub_1C1C58E44();
    v8 = 16.0 - v10;
  }

  return v8 + *(v0 + *(v5 + 36)) * -0.22826087;
}

double sub_1C1C823C4()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BCUI2x2AvocadoView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1C9B408();
    v7 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5B774(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 8.0;
  if (v6)
  {
    return 5.5;
  }

  return result;
}

double sub_1C1C82528()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BCUI2x2AvocadoView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1C9B408();
    v8 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5B774(v6, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.0;
    if (v10[15] != 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0.0;
  if (v6)
  {
LABEL_5:
    sub_1C1C58E44();
    return 12.0 - v9;
  }

  return result;
}

uint64_t sub_1C1C826F8()
{
  type metadata accessor for BCUI2x2AvocadoView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  sub_1C1C9AFE8();
  sub_1C1C9AFE8();
  sub_1C1C9AFE8();
  return sub_1C1C9AFE8();
}

uint64_t sub_1C1C82820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for BCUI2x2AvocadoView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v64[1] = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18248);
  MEMORY[0x1EEE9AC00](v75);
  v9 = v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18250);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v74 = v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18258);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v70 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = v64 - v15;
  v16 = type metadata accessor for BCUI2x2PlaceholderMask(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v66 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v64 - v19;
  v21 = *(a1 + *(v4 + 32) + 8);
  KeyPath = swift_getKeyPath();

  v23 = *sub_1C1C54EEC();
  v24 = *sub_1C1C54F74();
  *v20 = KeyPath;
  v20[8] = 0;
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  *(v20 + 2) = sub_1C1C9A748();
  *(v20 + 3) = v25;
  v76 = v23;
  sub_1C1C4DD2C();
  sub_1C1C9A668();
  v76 = v24;
  sub_1C1C9A668();
  *v9 = sub_1C1C9AB18();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18260);
  sub_1C1C82F98(a1, &v9[*(v26 + 44)]);
  sub_1C1C58E44();
  LOBYTE(KeyPath) = sub_1C1C9AC18();
  sub_1C1C9A5D8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18268) + 36)];
  *v35 = KeyPath;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v65 = a1;
  sub_1C1C59380(a1, v7, type metadata accessor for BCUI2x2AvocadoView);
  v36 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v37 = swift_allocObject();
  v38 = sub_1C1C58848(v7, v37 + v36, type metadata accessor for BCUI2x2AvocadoView);
  v39 = &v9[*(v75 + 36)];
  *v39 = sub_1C1C87978;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  v40 = *(*v21 + 168);
  v41 = v40(v38);
  if (v41 >> 62)
  {
    v64[0] = v41;
    v42 = sub_1C1C9B538();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LOBYTE(v76) = v42 == 1;
  sub_1C1C59380(v65, v7, type metadata accessor for BCUI2x2AvocadoView);
  v43 = swift_allocObject();
  sub_1C1C58848(v7, v43 + v36, type metadata accessor for BCUI2x2AvocadoView);
  v44 = sub_1C1C87A94();
  v45 = MEMORY[0x1E69E6370];
  v46 = MEMORY[0x1E69E6388];
  sub_1C1C9AE48();

  v47 = sub_1C1C4E77C(v9, &qword_1EBF18248);
  v48 = v40(v47);
  if (v48 >> 62)
  {
    v49 = sub_1C1C9B538();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v75;
  v77 = v45;
  v78 = v44;
  v79 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v67;
  v52 = v49 == 1;
  v53 = v69;
  v54 = v74;
  sub_1C1C5261C(v52, v69, OpaqueTypeConformance2, v67);
  (*(v68 + 8))(v54, v53);
  v55 = v66;
  sub_1C1C59380(v20, v66, type metadata accessor for BCUI2x2PlaceholderMask);
  v57 = v70;
  v56 = v71;
  v58 = *(v71 + 16);
  v59 = v72;
  v58(v70, v51, v72);
  v60 = v73;
  sub_1C1C59380(v55, v73, type metadata accessor for BCUI2x2PlaceholderMask);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18278);
  v58((v60 + *(v61 + 48)), v57, v59);
  v62 = *(v56 + 8);
  v62(v51, v59);
  sub_1C1C59580(v20);
  v62(v57, v59);
  return sub_1C1C59580(v55);
}

uint64_t sub_1C1C82F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18288);
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18290);
  MEMORY[0x1EEE9AC00](v57);
  v8 = (&v50 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18298);
  v58 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182A0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182A8);
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v50 - v19;
  v20 = *(a1 + *(type metadata accessor for BCUI2x2AvocadoView(0) + 24) + 8);
  v21 = *((*(*v20 + 216))() + 16);

  if (v21 == *(v20 + OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel_maxChargeRings))
  {
    v51 = v9;
    v52 = v6;
    v54 = a2;
    *v15 = sub_1C1C9AA58();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182B0) + 44)];
    v50 = a1;
    v23 = sub_1C1C8360C(a1, v22);
    v24 = *(*v20 + 168);
    v25 = v24(v23);
    v53 = v4;
    if (v25 >> 62)
    {
      v26 = sub_1C1C9B538();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = sub_1C1C4CEAC(&qword_1EBF17AB0, &qword_1EBF182A0);
    sub_1C1C588C4(v26, v13, v27, v63);
    sub_1C1C4E77C(v15, &qword_1EBF182A0);
    *v8 = sub_1C1C9B0E8();
    v8[1] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182B8);
    v30 = sub_1C1C841B0(v50, v8 + *(v29 + 44));
    v31 = v24(v30);
    if (v31 >> 62)
    {
      v32 = sub_1C1C9B538();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v51;

    v34 = sub_1C1C4CEAC(&qword_1EBF17A88, &qword_1EBF18290);
    v35 = v60;
    sub_1C1C588C4(v32, v57, v34, v60);
    sub_1C1C4E77C(v8, &qword_1EBF18290);
    v36 = v55;
    v37 = v56;
    v38 = *(v55 + 16);
    v39 = v59;
    v38(v59, v63, v56);
    v40 = v58;
    v41 = *(v58 + 16);
    v41(v61, v35, v33);
    v42 = v52;
    v38(v52, v39, v37);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182C0);
    v44 = v61;
    v41((v42 + *(v43 + 48)), v61, v33);
    v45 = *(v40 + 8);
    v45(v60, v33);
    v46 = *(v36 + 8);
    v46(v63, v37);
    v45(v44, v33);
    v46(v59, v37);
    v47 = v54;
    sub_1C1C5EBB0(v42, v54);
    return (*(v62 + 56))(v47, 0, 1, v53);
  }

  else
  {
    v49 = *(v62 + 56);

    return v49(a2, 1, 1, v4);
  }
}

uint64_t sub_1C1C8360C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18300);
  v3 = MEMORY[0x1EEE9AC00](v112);
  v115 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v111 = &v95 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v95 - v9;
  v10 = type metadata accessor for BCUIChargeRingView(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v96 = (&v95 - v13);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182F0);
  v14 = MEMORY[0x1EEE9AC00](v117);
  v108 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v95 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182F8);
  v17 = MEMORY[0x1EEE9AC00](v118);
  v109 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v95 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18350);
  v20 = MEMORY[0x1EEE9AC00](v101);
  v110 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v103 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v95 - v24;
  v106 = type metadata accessor for BCUI2x2AvocadoView(0);
  v25 = *(v106 + 24);
  v120 = a1;
  v26 = *(a1 + v25);
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v141 = v127;
  *&v142 = v128;
  *&v146[0] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FD0);
  v99 = sub_1C1C4CEAC(&qword_1ED7C4AC8, &qword_1EBF17E78);
  v100 = v27;
  sub_1C1C9B058();
  v146[2] = v136;
  v146[3] = v137;
  v147 = v138;
  v146[0] = v134;
  v146[1] = v135;

  v105 = v26;
  v28 = v96;
  sub_1C1C9A758();
  swift_getKeyPath();
  v29 = v116;
  sub_1C1C9A768();

  sub_1C1C58840();
  sub_1C1C58360(v146, v29, v28);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18228);
  inited = swift_initStackObject();
  v97 = xmmword_1C1C9E190;
  *(inited + 16) = xmmword_1C1C9E190;
  v31 = sub_1C1C9AC68();
  *(inited + 32) = v31;
  v32 = sub_1C1C9AC38();
  *(inited + 33) = v32;
  v33 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v31)
  {
    v33 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v32)
  {
    v33 = sub_1C1C9AC58();
  }

  sub_1C1C823C4();
  sub_1C1C9A5D8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v102;
  sub_1C1C58848(v28, v102, type metadata accessor for BCUIChargeRingView);
  v43 = v42 + *(v117 + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v44 = v104;
  sub_1C1C519C4(v42, v104, &qword_1EBF182F0);
  v45 = (v44 + *(v118 + 36));
  v46 = v132;
  v45[4] = v131;
  v45[5] = v46;
  v45[6] = v133;
  v47 = v128;
  *v45 = v127;
  v45[1] = v47;
  v48 = v130;
  v45[2] = v129;
  v45[3] = v48;
  v49 = v103;
  v50 = &v103[*(v101 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18358);
  sub_1C1C9A858();
  *v50 = swift_getKeyPath();
  sub_1C1C519C4(v44, v49, &qword_1EBF182F8);
  sub_1C1C519C4(v49, v119, &qword_1EBF18350);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v121 = v124;
  v122 = v125;
  v123 = v126;
  *&v141 = 1;
  sub_1C1C9B058();
  v143 = v136;
  v144 = v137;
  v145 = v138;
  v141 = v134;
  v142 = v135;

  sub_1C1C9A758();
  swift_getKeyPath();
  v51 = v116;
  sub_1C1C9A768();

  sub_1C1C58840();
  v52 = v107;
  sub_1C1C58360(&v141, v51, v107);
  v53 = swift_initStackObject();
  *(v53 + 16) = v97;
  v54 = sub_1C1C9AC48();
  *(v53 + 32) = v54;
  v55 = sub_1C1C9AC38();
  *(v53 + 33) = v55;
  v56 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v54)
  {
    v56 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v55)
  {
    v56 = sub_1C1C9AC58();
  }

  v57 = v120;
  sub_1C1C823C4();
  sub_1C1C9A5D8();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v108;
  sub_1C1C58848(v52, v108, type metadata accessor for BCUIChargeRingView);
  v67 = v66 + *(v117 + 36);
  *v67 = v56;
  *(v67 + 8) = v59;
  *(v67 + 16) = v61;
  *(v67 + 24) = v63;
  *(v67 + 32) = v65;
  *(v67 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v68 = v109;
  sub_1C1C519C4(v66, v109, &qword_1EBF182F0);
  v69 = (v68 + *(v118 + 36));
  v70 = v139;
  v69[4] = v138;
  v69[5] = v70;
  v69[6] = v140;
  v71 = v135;
  *v69 = v134;
  v69[1] = v71;
  v72 = v137;
  v69[2] = v136;
  v69[3] = v72;
  v73 = v106;
  v74 = (v57 + *(v106 + 40));
  *&v72 = *v74;
  v75 = v74[1];
  v124 = v72;
  v125 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  sub_1C1C9AFD8();
  v76 = v121;
  v77 = (v57 + *(v73 + 44));
  v78 = *v77;
  v79 = v77[1];
  v124 = v78;
  v125 = v79;
  sub_1C1C9AFD8();
  v80 = v121;
  sub_1C1C9B158();
  v82 = v81;
  v84 = v83;
  v85 = v111;
  sub_1C1C519C4(v68, v111, &qword_1EBF182F8);
  v86 = (v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18308) + 36));
  *v86 = v76;
  v86[1] = v76;
  v86[2] = v82;
  v86[3] = v84;
  v87 = v113;
  v88 = v85 + *(v112 + 36);
  *v88 = v80;
  *(v88 + 8) = 0;
  sub_1C1C519C4(v85, v87, &qword_1EBF18300);
  v89 = v119;
  v90 = v110;
  sub_1C1C4E714(v119, v110, &qword_1EBF18350);
  v91 = v115;
  sub_1C1C4E714(v87, v115, &qword_1EBF18300);
  v92 = v114;
  sub_1C1C4E714(v90, v114, &qword_1EBF18350);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18360);
  sub_1C1C4E714(v91, v92 + *(v93 + 48), &qword_1EBF18300);
  sub_1C1C4E77C(v87, &qword_1EBF18300);
  sub_1C1C4E77C(v89, &qword_1EBF18350);
  sub_1C1C4E77C(v91, &qword_1EBF18300);
  return sub_1C1C4E77C(v90, &qword_1EBF18350);
}

uint64_t sub_1C1C841B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182C8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v21 - v14);
  *v15 = sub_1C1C9B0C8();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182D8);
  sub_1C1C843EC(a1, v15 + *(v17 + 44));
  *v9 = sub_1C1C9AA58();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182E0);
  sub_1C1C8521C(a1, &v9[*(v18 + 44)]);
  sub_1C1C4E714(v15, v13, &qword_1EBF182D0);
  sub_1C1C4E714(v9, v7, &qword_1EBF182C8);
  sub_1C1C4E714(v13, a2, &qword_1EBF182D0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182E8);
  sub_1C1C4E714(v7, a2 + *(v19 + 48), &qword_1EBF182C8);
  sub_1C1C4E77C(v9, &qword_1EBF182C8);
  sub_1C1C4E77C(v15, &qword_1EBF182D0);
  sub_1C1C4E77C(v7, &qword_1EBF182C8);
  return sub_1C1C4E77C(v13, &qword_1EBF182D0);
}

uint64_t sub_1C1C843EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v141 = v128 - v4;
  v5 = type metadata accessor for BCUIChargeRingView(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v143 = (v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182F0);
  MEMORY[0x1EEE9AC00](v144);
  v147 = v128 - v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182F8);
  MEMORY[0x1EEE9AC00](v146);
  v9 = v128 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18318);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v145 = v128 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v148 = v128 - v16;
  v17 = sub_1C1C9B1A8();
  v134 = *(v17 - 8);
  v135 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v133 = v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v132 = v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18320);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v128 - v22;
  v24 = sub_1C1C9A458();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181B0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v128 - v27;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18190);
  MEMORY[0x1EEE9AC00](v131);
  v136 = v128 - v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18328);
  MEMORY[0x1EEE9AC00](v139);
  v138 = v128 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18330);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v142 = v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v152 = v128 - v34;
  v151 = type metadata accessor for BCUI2x2AvocadoView(0);
  v137 = a1 + *(v151 + 24);
  v35 = *(**(v137 + 8) + 216);
  v140 = *(v137 + 8);
  result = v35();
  if (*(result + 16))
  {
    v129 = v9;
    v130 = v13;
    v37 = *(result + 48);

    *&v166[0] = sub_1C1C54F08(v37);
    sub_1C1C9A448();
    sub_1C1C4DD2C();
    sub_1C1C9A438();
    sub_1C1C4CEAC(&qword_1ED7C5340, &qword_1EBF181B0);
    sub_1C1C9B1C8();
    (*(v26 + 8))(v28, v25);
    v166[0] = v159;
    sub_1C1C584B4();
    v38 = sub_1C1C9AD48();
    v40 = v39;
    v42 = v41;
    v150 = a1;
    v43 = sub_1C1C9ACA8();
    (*(*(v43 - 8) + 56))(v23, 1, 1, v43);
    sub_1C1C9ACC8();
    sub_1C1C4E77C(v23, &qword_1EBF18320);
    v44 = sub_1C1C9AD28();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v128[1] = v49;

    sub_1C1C58E34(v38, v40, v42 & 1);

    *&v159 = v44;
    *(&v159 + 1) = v46;
    LOBYTE(v40) = v48 & 1;
    LOBYTE(v160) = v48 & 1;
    *(&v160 + 1) = v50;
    v51 = v132;
    v52 = v150;
    sub_1C1C81BC8(v132);
    v53 = v133;
    sub_1C1C9B198();
    v54 = sub_1C1C9B188();
    v55 = *(v134 + 8);
    v56 = v53;
    v57 = v135;
    v55(v56, v135);
    v55(v51, v57);
    v58 = *sub_1C1C55268();

    v59 = v136;
    sub_1C1C552B8(v54 & 1, v58, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v136);

    sub_1C1C58E34(v44, v46, v40);

    v60 = v59 + *(v131 + 36);
    sub_1C1C9A868();
    v61 = *sub_1C1C58508();
    v62 = sub_1C1C9ABA8();
    *(v60 + *(v62 + 20)) = v61;
    *(v60 + *(v62 + 24)) = 0;

    LOBYTE(v61) = sub_1C1C9AC48();
    v63 = v52;
    sub_1C1C82528();
    sub_1C1C9A5D8();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = v138;
    sub_1C1C4E714(v59, v138, &qword_1EBF18190);
    v73 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181A0) + 36);
    *v73 = v61;
    *(v73 + 8) = v65;
    *(v73 + 16) = v67;
    *(v73 + 24) = v69;
    *(v73 + 32) = v71;
    *(v73 + 40) = 0;
    sub_1C1C4E77C(v59, &qword_1EBF18190);
    LOBYTE(v61) = sub_1C1C9AC38();
    v74 = v63;
    sub_1C1C82228();
    sub_1C1C9A5D8();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18338) + 36);
    *v83 = v61;
    *(v83 + 8) = v76;
    *(v83 + 16) = v78;
    *(v83 + 24) = v80;
    *(v83 + 32) = v82;
    *(v83 + 40) = 0;
    v84 = v151;
    v85 = (v74 + *(v151 + 48));
    v86 = *v85;
    v87 = v85[1];
    *&v159 = v86;
    *(&v159 + 1) = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
    sub_1C1C9AFD8();
    v88 = *&v166[0];
    v89 = (v74 + *(v84 + 52));
    v90 = *v89;
    v91 = v89[1];
    *&v159 = v90;
    *(&v159 + 1) = v91;
    sub_1C1C9AFD8();
    v92 = *&v166[0];
    sub_1C1C9B158();
    v94 = v93;
    v96 = v95;
    v97 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18340) + 36));
    *v97 = v88;
    v97[1] = v88;
    v97[2] = v94;
    v97[3] = v96;
    v98 = v72 + *(v139 + 36);
    *v98 = v92;
    *(v98 + 8) = 0;
    sub_1C1C87C08();
    sub_1C1C9ADD8();
    sub_1C1C4E77C(v72, &qword_1EBF18328);
    type metadata accessor for AvocadoViewModel();
    sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
    sub_1C1C9A758();
    swift_getKeyPath();
    sub_1C1C9A768();

    v153 = v156;
    v154 = v157;
    v155 = v158;
    *&v166[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FD0);
    sub_1C1C4CEAC(&qword_1ED7C4AC8, &qword_1EBF17E78);
    sub_1C1C9B058();
    v166[2] = v161;
    v166[3] = v162;
    v167 = v163;
    v166[0] = v159;
    v166[1] = v160;

    sub_1C1C9A758();
    swift_getKeyPath();
    v99 = v141;
    sub_1C1C9A768();

    sub_1C1C58840();
    v100 = v143;
    sub_1C1C58360(v166, v99, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18228);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1C9E190;
    LOBYTE(v99) = sub_1C1C9AC68();
    *(inited + 32) = v99;
    v102 = sub_1C1C9AC28();
    *(inited + 33) = v102;
    v103 = sub_1C1C9AC58();
    sub_1C1C9AC58();
    v104 = sub_1C1C9AC58();
    v105 = v152;
    if (v104 != v99)
    {
      v103 = sub_1C1C9AC58();
    }

    sub_1C1C9AC58();
    if (sub_1C1C9AC58() != v102)
    {
      v103 = sub_1C1C9AC58();
    }

    v106 = v129;
    sub_1C1C823C4();
    sub_1C1C9A5D8();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v115 = v147;
    sub_1C1C58848(v100, v147, type metadata accessor for BCUIChargeRingView);
    v116 = v115 + *(v144 + 36);
    *v116 = v103;
    *(v116 + 8) = v108;
    *(v116 + 16) = v110;
    *(v116 + 24) = v112;
    *(v116 + 32) = v114;
    *(v116 + 40) = 0;
    sub_1C1C9B0E8();
    sub_1C1C9A848();
    sub_1C1C519C4(v115, v106, &qword_1EBF182F0);
    v117 = (v106 + *(v146 + 36));
    v118 = v164;
    v117[4] = v163;
    v117[5] = v118;
    v117[6] = v165;
    v119 = v160;
    *v117 = v159;
    v117[1] = v119;
    v120 = v162;
    v117[2] = v161;
    v117[3] = v120;
    v121 = v106;
    v122 = v145;
    sub_1C1C519C4(v121, v145, &qword_1EBF182F8);
    v123 = v148;
    sub_1C1C519C4(v122, v148, &qword_1EBF18318);
    v124 = v142;
    sub_1C1C4E714(v105, v142, &qword_1EBF18330);
    v125 = v130;
    sub_1C1C4E714(v123, v130, &qword_1EBF18318);
    v126 = v149;
    sub_1C1C4E714(v124, v149, &qword_1EBF18330);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18348);
    sub_1C1C4E714(v125, v126 + *(v127 + 48), &qword_1EBF18318);
    sub_1C1C4E77C(v123, &qword_1EBF18318);
    sub_1C1C4E77C(v105, &qword_1EBF18330);
    sub_1C1C4E77C(v125, &qword_1EBF18318);
    return sub_1C1C4E77C(v124, &qword_1EBF18330);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1C8521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v127 = &v108 - v4;
  v5 = type metadata accessor for BCUIChargeRingView(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v119 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v108 = (&v108 - v8);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182F0);
  v9 = MEMORY[0x1EEE9AC00](v128);
  v120 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v108 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF182F8);
  v12 = MEMORY[0x1EEE9AC00](v129);
  v122 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v108 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18300);
  v15 = MEMORY[0x1EEE9AC00](v131);
  v125 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v124 = &v108 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v121 = &v108 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v123 = &v108 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v108 - v25;
  v109 = type metadata accessor for BCUI2x2AvocadoView(0);
  v26 = *(v109 + 24);
  v130 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v153 = v139;
  *&v154 = v140;
  *&v158[0] = 2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FD0);
  v112 = sub_1C1C4CEAC(&qword_1ED7C4AC8, &qword_1EBF17E78);
  v113 = v30;
  sub_1C1C9B058();
  v158[2] = v148;
  v158[3] = v149;
  v159 = v150;
  v158[0] = v146;
  v158[1] = v147;

  v117 = v28;
  v118 = v29;
  v31 = v108;
  sub_1C1C9A758();
  swift_getKeyPath();
  v32 = v127;
  sub_1C1C9A768();

  sub_1C1C58840();
  sub_1C1C58360(v158, v32, v31);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18228);
  inited = swift_initStackObject();
  v110 = xmmword_1C1C9E190;
  *(inited + 16) = xmmword_1C1C9E190;
  v34 = sub_1C1C9AC68();
  *(inited + 32) = v34;
  v35 = sub_1C1C9AC28();
  *(inited + 33) = v35;
  v36 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v34)
  {
    v36 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v35)
  {
    v36 = sub_1C1C9AC58();
  }

  v37 = v130;
  sub_1C1C823C4();
  sub_1C1C9A5D8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v114;
  sub_1C1C58848(v31, v114, type metadata accessor for BCUIChargeRingView);
  v47 = v46 + *(v128 + 36);
  *v47 = v36;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v48 = v116;
  sub_1C1C519C4(v46, v116, &qword_1EBF182F0);
  v49 = (v48 + *(v129 + 36));
  v50 = v144;
  v49[4] = v143;
  v49[5] = v50;
  v49[6] = v145;
  v51 = v140;
  *v49 = v139;
  v49[1] = v51;
  v52 = v142;
  v49[2] = v141;
  v49[3] = v52;
  v53 = v109;
  v54 = (v37 + *(v109 + 40));
  v55 = *v54;
  v56 = v54[1];
  *&v146 = v55;
  v114 = v56;
  *(&v146 + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  sub_1C1C9AFD8();
  v57 = v153;
  v58 = (v37 + *(v53 + 44));
  v59 = *v58;
  v60 = v58[1];
  *&v146 = v59;
  v109 = v60;
  *(&v146 + 1) = v60;
  sub_1C1C9AFD8();
  v61 = v153;
  sub_1C1C9B158();
  v63 = v62;
  v65 = v64;
  v66 = v115;
  sub_1C1C519C4(v48, v115, &qword_1EBF182F8);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18308);
  v67 = (v66 + *(v116 + 36));
  *v67 = v57;
  v67[1] = v57;
  v67[2] = v63;
  v67[3] = v65;
  v68 = v132;
  v69 = v66 + *(v131 + 36);
  *v69 = v61;
  *(v69 + 8) = 0;
  sub_1C1C519C4(v66, v68, &qword_1EBF18300);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v133 = v136;
  v134 = v137;
  v135 = v138;
  *&v153 = 3;
  sub_1C1C9B058();
  v155 = v148;
  v156 = v149;
  v157 = v150;
  v153 = v146;
  v154 = v147;

  sub_1C1C9A758();
  swift_getKeyPath();
  v70 = v127;
  sub_1C1C9A768();

  sub_1C1C58840();
  v71 = v119;
  sub_1C1C58360(&v153, v70, v119);
  v72 = swift_initStackObject();
  *(v72 + 16) = v110;
  v73 = sub_1C1C9AC48();
  *(v72 + 32) = v73;
  v74 = sub_1C1C9AC28();
  *(v72 + 33) = v74;
  v75 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v73)
  {
    v75 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v74)
  {
    v75 = sub_1C1C9AC58();
  }

  sub_1C1C823C4();
  sub_1C1C9A5D8();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v120;
  sub_1C1C58848(v71, v120, type metadata accessor for BCUIChargeRingView);
  v85 = v84 + *(v128 + 36);
  *v85 = v75;
  *(v85 + 8) = v77;
  *(v85 + 16) = v79;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v86 = v122;
  sub_1C1C519C4(v84, v122, &qword_1EBF182F0);
  v87 = (v86 + *(v129 + 36));
  v88 = v151;
  v87[4] = v150;
  v87[5] = v88;
  v87[6] = v152;
  v89 = v147;
  *v87 = v146;
  v87[1] = v89;
  v90 = v149;
  v87[2] = v148;
  v87[3] = v90;
  v136 = v55;
  v137 = v114;
  sub_1C1C9AFD8();
  v91 = v133;
  v136 = v59;
  v137 = v109;
  sub_1C1C9AFD8();
  v92 = v133;
  sub_1C1C9B158();
  v94 = v93;
  v96 = v95;
  v97 = v86;
  v98 = v121;
  sub_1C1C519C4(v97, v121, &qword_1EBF182F8);
  v99 = (v98 + *(v116 + 36));
  *v99 = v91;
  v99[1] = v91;
  v99[2] = v94;
  v99[3] = v96;
  v100 = v98 + *(v131 + 36);
  *v100 = v92;
  *(v100 + 8) = 0;
  v101 = v123;
  sub_1C1C519C4(v98, v123, &qword_1EBF18300);
  v102 = v132;
  v103 = v124;
  sub_1C1C4E714(v132, v124, &qword_1EBF18300);
  v104 = v125;
  sub_1C1C4E714(v101, v125, &qword_1EBF18300);
  v105 = v126;
  sub_1C1C4E714(v103, v126, &qword_1EBF18300);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18310);
  sub_1C1C4E714(v104, v105 + *(v106 + 48), &qword_1EBF18300);
  sub_1C1C4E77C(v101, &qword_1EBF18300);
  sub_1C1C4E77C(v102, &qword_1EBF18300);
  sub_1C1C4E77C(v104, &qword_1EBF18300);
  return sub_1C1C4E77C(v103, &qword_1EBF18300);
}

uint64_t sub_1C1C85DC4(uint64_t a1)
{
  v2 = type metadata accessor for BCUI2x2AvocadoView(0);
  if ((*(**(a1 + *(v2 + 24) + 8) + 168))() >> 62)
  {
    sub_1C1C9B538();
  }

  MEMORY[0x1EEE9AC00](v3);
  return sub_1C1C9A738();
}

uint64_t sub_1C1C85F10()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1C1C9B408();
    v6 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5B774(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double sub_1C1C86058()
{
  v1 = sub_1C1C9AA38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1C1C9B408();
    v6 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5B774(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  result = 8.0;
  if (v5)
  {
    return 5.5;
  }

  return result;
}

uint64_t sub_1C1C861AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181D8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181E0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = (&v53 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181E8);
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181F0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181F8);
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v53 - v18;
  *v14 = sub_1C1C9AA58();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18200);
  v20 = sub_1C1C867F4(a1, &v14[*(v19 + 44)]);
  v21 = a1;
  v22 = *(**(a1 + 24) + 168);
  v23 = v22(v20);
  v57 = v3;
  if (v23 >> 62)
  {
    v24 = sub_1C1C9B538();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = sub_1C1C4CEAC(&qword_1EBF17AB8, &qword_1EBF181F0);
  sub_1C1C588C4(v24, v12, v25, v66);
  sub_1C1C4E77C(v14, &qword_1EBF181F0);
  *v5 = sub_1C1C9AA58();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18208);
  v27 = sub_1C1C870EC(v21, &v5[*(v26 + 44)]);
  v28 = v22(v27);
  if (v28 >> 62)
  {
    v29 = sub_1C1C9B538();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v57;

  v31 = sub_1C1C4CEAC(&qword_1ED7C4B18, &qword_1EBF181D8);
  sub_1C1C588C4(v29, v30, v31, v64);
  v32 = sub_1C1C4E77C(v5, &qword_1EBF181D8);
  v33 = v22(v32);
  if (v33 >> 62)
  {
    v34 = sub_1C1C9B538();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v30;
  v68 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v65;
  v37 = v34 == 1;
  v38 = v59;
  v39 = v64;
  sub_1C1C5A7B4(v37, v59, OpaqueTypeConformance2, v65);
  (*(v58 + 8))(v39, v38);
  v40 = v54;
  v41 = v55;
  v42 = *(v55 + 16);
  v43 = v56;
  v42(v54, v66, v56);
  v45 = v60;
  v44 = v61;
  v64 = *(v61 + 16);
  v46 = v36;
  v47 = v62;
  (v64)(v60, v46, v62);
  v48 = v63;
  v42(v63, v40, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18210);
  (v64)(&v48[*(v49 + 48)], v45, v47);
  v50 = *(v44 + 8);
  v50(v65, v47);
  v51 = *(v41 + 8);
  v51(v66, v43);
  v50(v45, v47);
  return (v51)(v40, v43);
}

uint64_t sub_1C1C867F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18238);
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v84 - v8;
  v10 = type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v90 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18218);
  v15 = MEMORY[0x1EEE9AC00](v100);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18220);
  v19 = MEMORY[0x1EEE9AC00](v93);
  v94 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v92 = &v84 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v84 - v26;
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  v29 = type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v86 = v29;
  v87 = v28;
  v89 = v27;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v88 = v9;
  sub_1C1C5978C(v9, v14);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18228);
  inited = swift_initStackObject();
  v84 = xmmword_1C1C9E190;
  *(inited + 16) = xmmword_1C1C9E190;
  LOBYTE(v28) = sub_1C1C9AC68();
  *(inited + 32) = v28;
  v31 = sub_1C1C9AC38();
  *(inited + 33) = v31;
  v32 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v28)
  {
    v32 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v31)
  {
    v32 = sub_1C1C9AC58();
  }

  sub_1C1C86058();
  sub_1C1C9A5D8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1C1C58848(v14, v18, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  v41 = &v18[*(v100 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  sub_1C1C519C4(v18, v25, &qword_1EBF18218);
  v42 = v93;
  v43 = &v25[*(v93 + 36)];
  v44 = v107;
  *(v43 + 4) = v106;
  *(v43 + 5) = v44;
  *(v43 + 6) = v108;
  v45 = v103;
  *v43 = v102;
  *(v43 + 1) = v45;
  v46 = v105;
  *(v43 + 2) = v104;
  *(v43 + 3) = v46;
  sub_1C1C519C4(v25, v101, &qword_1EBF18220);
  v47 = v89;
  sub_1C1C9A758();
  swift_getKeyPath();
  v48 = v88;
  sub_1C1C9A768();

  v49 = v90;
  sub_1C1C5978C(v48, v90);
  v50 = swift_initStackObject();
  *(v50 + 16) = v84;
  v51 = sub_1C1C9AC48();
  *(v50 + 32) = v51;
  v52 = sub_1C1C9AC38();
  *(v50 + 33) = v52;
  v53 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v51)
  {
    v53 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v52)
  {
    v53 = sub_1C1C9AC58();
  }

  sub_1C1C86058();
  sub_1C1C9A5D8();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v91;
  sub_1C1C58848(v49, v91, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  v63 = v62 + *(v100 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v64 = v92;
  v65 = sub_1C1C519C4(v62, v92, &qword_1EBF18218);
  v66 = (v64 + *(v42 + 36));
  v67 = v114;
  v66[4] = v113;
  v66[5] = v67;
  v66[6] = v115;
  v68 = v110;
  *v66 = v109;
  v66[1] = v68;
  v69 = v112;
  v66[2] = v111;
  v66[3] = v69;
  v70 = (*(*v47 + 168))(v65);
  if (v70 >> 62)
  {
    v71 = sub_1C1C9B538();
  }

  else
  {
    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = sub_1C1C5A6C4();
  v73 = v95;
  sub_1C1C5A7B4(v71 == 1, v42, v72, v95);
  sub_1C1C4E77C(v64, &qword_1EBF18220);
  v74 = v101;
  v75 = v94;
  sub_1C1C4E714(v101, v94, &qword_1EBF18220);
  v77 = v98;
  v76 = v99;
  v78 = *(v98 + 16);
  v79 = v96;
  v78(v96, v73, v99);
  v80 = v97;
  sub_1C1C4E714(v75, v97, &qword_1EBF18220);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18240);
  v78((v80 + *(v81 + 48)), v79, v76);
  v82 = *(v77 + 8);
  v82(v73, v76);
  sub_1C1C4E77C(v74, &qword_1EBF18220);
  v82(v79, v76);
  return sub_1C1C4E77C(v75, &qword_1EBF18220);
}

uint64_t sub_1C1C870EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v75 - v4;
  v6 = type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v75 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18218);
  v11 = MEMORY[0x1EEE9AC00](v81);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v75 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18220);
  v15 = MEMORY[0x1EEE9AC00](v84);
  v89 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = &v75 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v75 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v87 = &v75 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v75 - v26;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v78 = v28;
  v79 = v27;
  v77 = v29;
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v80 = v10;
  sub_1C1C5978C(v5, v10);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18228);
  inited = swift_initStackObject();
  v75 = xmmword_1C1C9E190;
  *(inited + 16) = xmmword_1C1C9E190;
  LOBYTE(v27) = sub_1C1C9AC68();
  *(inited + 32) = v27;
  v31 = sub_1C1C9AC28();
  *(inited + 33) = v31;
  v32 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v27)
  {
    v32 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v31)
  {
    v32 = sub_1C1C9AC58();
  }

  sub_1C1C86058();
  sub_1C1C9A5D8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1C1C58848(v80, v14, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  v41 = v81;
  v42 = &v14[*(v81 + 36)];
  *v42 = v32;
  *(v42 + 1) = v34;
  *(v42 + 2) = v36;
  *(v42 + 3) = v38;
  *(v42 + 4) = v40;
  v42[40] = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  sub_1C1C519C4(v14, v25, &qword_1EBF18218);
  v43 = v84;
  v44 = &v25[*(v84 + 36)];
  v45 = v96;
  *(v44 + 4) = v95;
  *(v44 + 5) = v45;
  *(v44 + 6) = v97;
  v46 = v92;
  *v44 = v91;
  *(v44 + 1) = v46;
  v47 = v94;
  *(v44 + 2) = v93;
  *(v44 + 3) = v47;
  v48 = v86;
  sub_1C1C519C4(v25, v86, &qword_1EBF18220);
  sub_1C1C9A758();
  swift_getKeyPath();
  sub_1C1C9A768();

  v49 = v82;
  sub_1C1C5978C(v5, v82);
  v50 = swift_initStackObject();
  *(v50 + 16) = v75;
  v51 = sub_1C1C9AC48();
  *(v50 + 32) = v51;
  v52 = sub_1C1C9AC28();
  *(v50 + 33) = v52;
  v53 = sub_1C1C9AC58();
  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v51)
  {
    v53 = sub_1C1C9AC58();
  }

  sub_1C1C9AC58();
  if (sub_1C1C9AC58() != v52)
  {
    v53 = sub_1C1C9AC58();
  }

  sub_1C1C86058();
  sub_1C1C9A5D8();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v85;
  sub_1C1C58848(v49, v85, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
  v63 = v62 + *(v41 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v64 = v83;
  sub_1C1C519C4(v62, v83, &qword_1EBF18218);
  v65 = (v64 + *(v43 + 36));
  v66 = v103;
  v65[4] = v102;
  v65[5] = v66;
  v65[6] = v104;
  v67 = v99;
  *v65 = v98;
  v65[1] = v67;
  v68 = v101;
  v65[2] = v100;
  v65[3] = v68;
  v69 = v87;
  sub_1C1C519C4(v64, v87, &qword_1EBF18220);
  v70 = v88;
  sub_1C1C4E714(v48, v88, &qword_1EBF18220);
  v71 = v89;
  sub_1C1C4E714(v69, v89, &qword_1EBF18220);
  v72 = v90;
  sub_1C1C4E714(v70, v90, &qword_1EBF18220);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18230);
  sub_1C1C4E714(v71, v72 + *(v73 + 48), &qword_1EBF18220);
  sub_1C1C4E77C(v69, &qword_1EBF18220);
  sub_1C1C4E77C(v48, &qword_1EBF18220);
  sub_1C1C4E77C(v71, &qword_1EBF18220);
  return sub_1C1C4E77C(v70, &qword_1EBF18220);
}

unint64_t sub_1C1C878BC()
{
  result = qword_1ED7C4BC0;
  if (!qword_1ED7C4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18218);
    sub_1C1C4D8DC(&qword_1ED7C4ED8, type metadata accessor for BCUIChargeRingView.maskChargeRingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4BC0);
  }

  return result;
}

uint64_t sub_1C1C87978()
{
  v1 = *(type metadata accessor for BCUI2x2AvocadoView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C1C85DC4(v2);
}

uint64_t sub_1C1C879D8()
{
  type metadata accessor for BCUI2x2AvocadoView(0);
  sub_1C1C54F80();

  sub_1C1C9A738();
}

unint64_t sub_1C1C87A94()
{
  result = qword_1EBF17B48;
  if (!qword_1EBF17B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18248);
    sub_1C1C87B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B48);
  }

  return result;
}

unint64_t sub_1C1C87B20()
{
  result = qword_1EBF17B68;
  if (!qword_1EBF17B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18268);
    sub_1C1C4CEAC(&qword_1EBF17AA0, &qword_1EBF18270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B68);
  }

  return result;
}

unint64_t sub_1C1C87C08()
{
  result = qword_1ED7C4B60;
  if (!qword_1ED7C4B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18328);
    sub_1C1C87C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B60);
  }

  return result;
}

unint64_t sub_1C1C87C94()
{
  result = qword_1ED7C4B68;
  if (!qword_1ED7C4B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18340);
    sub_1C1C87D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B68);
  }

  return result;
}

unint64_t sub_1C1C87D20()
{
  result = qword_1ED7C4B70;
  if (!qword_1ED7C4B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18338);
    sub_1C1C81874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B70);
  }

  return result;
}

uint64_t sub_1C1C87DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_1C1C87ECC()
{
  result = qword_1EBF17B60;
  if (!qword_1EBF17B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF181D0);
    sub_1C1C4CEAC(&qword_1EBF17AA8, &qword_1EBF18368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B60);
  }

  return result;
}

uint64_t sub_1C1C87FD8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C1C9AA38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1C1C4E714(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1C1C9B408();
    v17 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1C1C881F4()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 24));
  v2 = *v1;
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  MEMORY[0x1C6909DC0](&v7, v5);
  return v7;
}

uint64_t sub_1C1C8825C()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  return sub_1C1C9B028();
}

uint64_t (*sub_1C1C882D8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v9 = v5[3];
  v4[14] = v8;
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C8BA1C;
}

uint64_t sub_1C1C883A4()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  sub_1C1C9B048();
  return v1;
}

double sub_1C1C88410()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 28));
  v2 = v1[1];
  v3 = v1[2];
  v6[1] = *v1;
  v6[2] = v2;
  v6[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](v6, v4);
  return *v6;
}

uint64_t sub_1C1C88478()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  return sub_1C1C9B028();
}

void (*sub_1C1C884F0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 28));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C6DD54;
}

double sub_1C1C885B4()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C88620()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 32));
  v2 = *v1;
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  MEMORY[0x1C6909DC0](&v7, v5);
  return v7;
}

uint64_t sub_1C1C88688()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  return sub_1C1C9B028();
}

uint64_t (*sub_1C1C88704(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v8 = v5[2];
  v9 = v5[3];
  v4[14] = v8;
  v4[15] = v9;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C887D0;
}

void sub_1C1C887D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_1C1C9B028();
  }

  else
  {
    sub_1C1C9B028();
  }

  free(v2);
}

uint64_t sub_1C1C888AC()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C88918()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 36));
  v2 = *v1;
  v3 = *(v1 + 2);
  v7 = v2;
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  MEMORY[0x1C6909DC0](&v6, v4);
  return v6;
}

uint64_t sub_1C1C88980()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  return sub_1C1C9B028();
}

void (*sub_1C1C889F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C88ABC;
}

void sub_1C1C88ABC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_1C1C9B028();
  }

  else
  {
    sub_1C1C9B028();
  }

  free(v2);
}

uint64_t sub_1C1C88B84()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C88BF0()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v6, v4);
  return v6;
}

uint64_t sub_1C1C88C58()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  return sub_1C1C9B028();
}

uint64_t (*sub_1C1C88CC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 40));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C71EE8;
}

uint64_t sub_1C1C88D8C()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C88DF8()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 44));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v6, v4);
  return v6;
}

uint64_t sub_1C1C88E60()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  return sub_1C1C9B028();
}

uint64_t (*sub_1C1C88ED0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C71EE8;
}

uint64_t sub_1C1C88F94()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C89000()
{
  v1 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v6, v4);
  return v6;
}

uint64_t sub_1C1C89068()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  return sub_1C1C9B028();
}

uint64_t (*sub_1C1C890D8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 48));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C6E154;
}

uint64_t sub_1C1C8919C()
{
  type metadata accessor for BCUIRingAndGlyphView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C89220(uint64_t a1)
{
  v2 = sub_1C1C9A798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BCUIRingAndGlyphView(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  sub_1C1C9B028();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C1C89334(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1C1C9A798();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for BCUIRingAndGlyphView(0);
  sub_1C1C4E714(v1 + *(v13 + 52), v12, &qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v10);
  return sub_1C1C8BA20;
}