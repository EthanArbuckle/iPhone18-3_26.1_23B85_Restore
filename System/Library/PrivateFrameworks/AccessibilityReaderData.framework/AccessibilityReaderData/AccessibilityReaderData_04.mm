uint64_t sub_23D7ECE7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23D7ECEFC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7ECFA8(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7ED04C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7ED1EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7ED324(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontVariantName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7ED494()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v5 == 0x6D6574737953 && v6 == 0xE600000000000000)
  {
  }

  else
  {
    v1 = sub_23D80E4DC();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v3 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v3 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (v5 == 0xD000000000000012 && 0x800000023D815B10 == v6)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_23D80E4DC();
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_23D7ED660()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

double sub_23D7ED6D8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23D7ED758(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

double sub_23D7ED7D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7ED848()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7ED8C0(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7ED964(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EDB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EDC3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__defaultFontPointSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EDDAC@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v5 = v6;
  if (v7)
  {
    v5 = 12.0;
  }

  *a2 = v5;
  return result;
}

double sub_23D7EDE3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = v1;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_23D7EDEC0(double a1)
{
  if (a1 > 288.0)
  {
    a1 = 288.0;
  }

  v1 = fmax(a1, 9.0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if ((v4 & 1) != 0 || v3 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_23D80DA1C();
  }

  return result;
}

uint64_t (*sub_23D7EDFA8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v3 = *a1;
  if (*(a1 + 8))
  {
    v3 = 12.0;
  }

  *(a1 + 16) = v3;
  return sub_23D7EE04C;
}

uint64_t sub_23D7EE074()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EE110(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EE1B4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EE354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EE48C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highLegibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7EE624(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EE6C8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EE868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EE9A0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EEB24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  return v1;
}

uint64_t sub_23D7EEBA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EEC1C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EECC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EEE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EEF98(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__modelName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7EF130(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EF1D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EF374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EF4AC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__showLinks;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EF61C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7EF694(uint64_t a1)
{
  v2 = sub_23D80DAAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, a1, v2);

  sub_23D80DA1C();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_23D7EF7BC(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EF860(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7EFA00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EFB38(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__dynamicTypeSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EFD20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = v11;
  if (!v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (v10 > 5u)
    {

LABEL_7:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      result = a3(v9);
      if (!result)
      {
        return a4();
      }

      return result;
    }

    v7 = sub_23D80E4DC();

    if (v7)
    {
      goto LABEL_7;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    result = a3(v8);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_23D7EFF80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  result = v1;
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    return AXRFormatterTheme.linkColor.getter();
  }

  return result;
}

uint64_t sub_23D7F004C()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D7F0090(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXRTextFormatterModel.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  v137 = *(v2 - 8);
  v138 = v2;
  v3 = *(v137 + 64);
  MEMORY[0x28223BE20](v2);
  v136 = &v106 - v4;
  v5 = sub_23D80DAAC();
  v6 = *(v5 - 8);
  v133 = v5;
  v134 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v118 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v135 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  v131 = *(v11 - 8);
  v132 = v11;
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v11);
  v130 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5048, &qword_23D813F20);
  v128 = *(v14 - 8);
  v129 = v14;
  v15 = *(v128 + 64);
  MEMORY[0x28223BE20](v14);
  v127 = &v106 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  v139 = *(v126 - 8);
  v17 = *(v139 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  v123 = *(v19 - 8);
  v124 = v19;
  v20 = *(v123 + 64);
  MEMORY[0x28223BE20](v19);
  v122 = &v106 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  v120 = *(v22 - 8);
  v121 = v22;
  v23 = *(v120 + 64);
  MEMORY[0x28223BE20](v22);
  v119 = &v106 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  v116 = *(v117 - 8);
  v25 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v106 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  v113 = *(v114 - 8);
  v27 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v112 = &v106 - v28;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v110 = *(v111 - 8);
  v29 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v31 = &v106 - v30;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v140 = *(v109 - 8);
  v32 = *(v140 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v106 - v33;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  v34 = *(v107 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v107);
  v37 = &v106 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v106 - v41;
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customReaderBackgroundColor;
  sub_23D7E1424(0, 0xD000000000000018, 0x800000023D816810, 0, 0, &v106 - v41);
  v44 = *(v39 + 32);
  v44(v1 + v43, v42, v38);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customSelectedTextColor;
  sub_23D7E1424(0, 0xD000000000000012, 0x800000023D816830, 0, 0, v42);
  v44(v1 + v45, v42, v38);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeReaderBackgroundColor;
  sub_23D7E1424(0, 0xD000000000000017, 0x800000023D816850, 0, 0, v42);
  v44(v1 + v46, v42, v38);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeSelectedTextColor;
  sub_23D7E1424(0, 0xD000000000000011, 0x800000023D816870, 0, 0, v42);
  v44(v1 + v47, v42, v38);
  v48 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customLinkColor;
  sub_23D7E1424(0, 0xD000000000000012, 0x800000023D816890, 0, 0, v42);
  v44(v1 + v48, v42, v38);
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__theme;
  sub_23D7E1A08(3, 0x656D656854727861, 0xE800000000000000, 0, 0, v37);
  v50 = *(v34 + 32);
  v51 = v107;
  v50(v1 + v49, v37, v107);
  v52 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lastNonCustomTheme;
  sub_23D7E1A08(3, 0xD000000000000015, 0x800000023D8168B0, 0, 0, v37);
  v50(v1 + v52, v37, v51);
  v53 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__textBold;
  v54 = v108;
  sub_23D7E1F6C(0, 0x4274786554727861, 0xEB00000000646C6FLL, 0, 0, v108);
  v55 = *(v140 + 32);
  v140 += 32;
  v56 = v109;
  v55(v1 + v53, v54, v109);
  v57 = v55;
  v58 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacing;
  sub_23D7E24D0(0x53656E694C727861, 0xEE00676E69636170, 0, 0, v31, 0.0);
  v59 = *(v110 + 32);
  v60 = v111;
  v59(v1 + v58, v31, v111);
  v61 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacing;
  sub_23D7E24D0(0x5372616843727861, 0xEE00676E69636170, 0, 0, v31, 0.0);
  v59(v1 + v61, v31, v60);
  v62 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacing;
  sub_23D7E24D0(0x5364726F57727861, 0xEE00676E69636170, 0, 0, v31, 0.0);
  v59(v1 + v62, v31, v60);
  v63 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__contentWidthRegular;
  sub_23D7E24D0(0xD000000000000016, 0x800000023D8168D0, 0, 0, v31, 800.0);
  v59(v1 + v63, v31, v60);
  v64 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacingOption;
  v65 = v112;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D8168F0, 0, 0, v112);
  v66 = *(v113 + 32);
  v67 = v114;
  v66(v1 + v64, v65, v114);
  v68 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D816910, 0, 0, v65);
  v66(v1 + v68, v65, v67);
  v69 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D816930, 0, 0, v65);
  v66(v1 + v69, v65, v67);
  v70 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__marginSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000016, 0x800000023D816950, 0, 0, v65);
  v66(v1 + v70, v65, v67);
  v71 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightStyle;
  v72 = v115;
  sub_23D7E2FA0(0, 0xD000000000000011, 0x800000023D816970, 0, 0, v115);
  (*(v116 + 32))(v1 + v71, v72, v117);
  v73 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightColor;
  v74 = sub_23D80DC1C();
  v75 = v119;
  sub_23D7E3504(v74, 0xD000000000000011, 0x800000023D816990, 0, 0, v119);
  (*(v120 + 32))(v1 + v73, v75, v121);
  v76 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightFollowsTextColor;
  sub_23D7E1F6C(1, 0xD00000000000001CLL, 0x800000023D8169B0, 0, 0, v54);
  v77 = v56;
  v57(v1 + v76, v54, v56);
  v78 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontName;
  v79 = v122;
  sub_23D7E3AA4(0x6D6574737953, 0xE600000000000000, 0x4674786554727861, 0xEF656D614E746E6FLL, 0, 0, v122);
  (*(v123 + 32))(v1 + v78, v79, v124);
  v80 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontVariantName;
  v81 = v125;
  sub_23D7E4024(0, 0xE000000000000000, 0xD000000000000016, 0x800000023D8169D0, 0, 0, v125);
  v82 = *(v139 + 32);
  v139 += 32;
  v83 = v126;
  v82(v1 + v80, v81, v126);
  v84 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel___userPrefFontPointSize;
  v85 = v127;
  sub_23D7E45C8(0, 1, 0xD000000000000010, 0x800000023D8169F0, 0, 0, v127);
  (*(v128 + 32))(v1 + v84, v85, v129);
  v86 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__defaultFontPointSize;
  v87 = v130;
  sub_23D7E4BB0(0xD000000000000017, 0x800000023D816A10, 0, 0, v130, 12.0);
  (*(v131 + 32))(v1 + v86, v87, v132);
  v88 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highLegibility;
  sub_23D7E1F6C(0, 0xD000000000000011, 0x800000023D816A30, 0, 0, v54);
  v57(v1 + v88, v54, v77);
  v89 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightEnabled;
  sub_23D7E1F6C(1, 0xD000000000000013, 0x800000023D816A50, 0, 0, v54);
  v57(v1 + v89, v54, v77);
  v90 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__modelName;
  sub_23D7E4024(0, 0xE000000000000000, 0x6C65646F4D727861, 0xEC000000656D614ELL, 0, 0, v81);
  v82(v1 + v90, v81, v83);
  v91 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__showLinks;
  sub_23D7E1F6C(1, 0x4C776F6853727861, 0xEC000000736B6E69, 0, 0, v54);
  v57(v1 + v91, v54, v77);
  v92 = v133;
  v93 = objc_opt_self();
  v94 = [v93 sharedApplication];
  v95 = [v94 preferredContentSizeCategory];

  v96 = v118;
  UIContentSizeCategory.dynamicTypeSize.getter(v118);

  v97 = v96;
  LOBYTE(v96) = sub_23D80DA8C();
  v98 = v134;
  v99 = *(v134 + 8);
  v99(v97, v92);
  if (v96)
  {
    v100 = [v93 sharedApplication];
    v101 = [v100 preferredContentSizeCategory];

    v102 = v135;
    UIContentSizeCategory.dynamicTypeSize.getter(v135);
  }

  else
  {
    v102 = v135;
    (*(v98 + 104))(v135, *MEMORY[0x277CDF9D8], v92);
  }

  v103 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__dynamicTypeSize;
  (*(v98 + 16))(v97, v102, v92);
  v104 = v136;
  sub_23D7E511C(v97, 0xD000000000000012, 0x800000023D816A70, 0, 0, v136);
  v99(v102, v92);
  (*(v137 + 32))(v1 + v103, v104, v138);
  *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing) = 0;
  return v1;
}

uint64_t sub_23D7F12F4(char a1)
{
  result = 0x694C6D6F74737563;
  switch(a1)
  {
    case 1:
      return 0xD000000000000017;
    case 2:
      return 0xD00000000000001ALL;
    case 3:
      return 0xD000000000000016;
    case 4:
      return result;
    case 5:
      return 0x656D656874;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0x646C6F4274786574;
    case 8:
      v3 = 1701734764;
      goto LABEL_24;
    case 9:
      v3 = 1918986339;
      goto LABEL_24;
    case 10:
      v3 = 1685221239;
LABEL_24:
      result = v3 | 0x6361705300000000;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
    case 16:
      result = 0x6867696C68676968;
      break;
    case 17:
      result = 0x656D614E746E6F66;
      break;
    case 18:
      result = 0x69726156746E6F66;
      break;
    case 19:
      result = 0x5463696D616E7964;
      break;
    case 20:
      result = 0x6E696F50746E6F66;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x6967654C68676968;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 26:
      result = 0x6B6E694C776F6873;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_23D7F168C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23D7F12F4(*a1);
  v5 = v4;
  if (v3 == sub_23D7F12F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23D80E4DC();
  }

  return v8 & 1;
}

uint64_t sub_23D7F1714()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D7F12F4(v1);
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7F1778()
{
  sub_23D7F12F4(*v0);
  sub_23D80DDAC();
}

uint64_t sub_23D7F17CC()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D7F12F4(v1);
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7F182C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23D7FFF30();
  *a2 = result;
  return result;
}

uint64_t sub_23D7F185C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D7F12F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23D7F1890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D7FFF30();
  *a1 = result;
  return result;
}

uint64_t sub_23D7F18C4(uint64_t a1)
{
  v2 = sub_23D7FCA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7F1900(uint64_t a1)
{
  v2 = sub_23D7FCA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7F193C(void *a1)
{
  v2 = v1;
  v4 = sub_23D80DAAC();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5050, &unk_23D813F28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7FCA70();
  sub_23D80E5EC();
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v2;
  sub_23D80DA0C();

  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4750, "@~");
  sub_23D800378(&qword_27E2E5060, sub_23D7FCAC4);
  v23 = v8;
  v14 = v22;
  sub_23D80E49C();
  if (v14)
  {

    return (*(v9 + 8))(v12, v23);
  }

  else
  {
    v18 = v7;
    v19 = v4;
    v22 = v9;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = 1;
    sub_23D80E49C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = 2;
    sub_23D80E49C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = 3;
    sub_23D80E49C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = 4;
    sub_23D80E49C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 5;
    sub_23D7AE8D0();
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 6;
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 7;
    sub_23D80E45C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 8;
    sub_23D80E46C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 9;
    sub_23D80E46C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 10;
    sub_23D80E46C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 11;
    sub_23D7FCB18();
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 12;
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 13;
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 14;
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = LOBYTE(v26);
    v28 = 15;
    sub_23D7FCB6C();
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = 16;
    sub_23D7FCAC4();
    sub_23D80E49C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v24 = v26;
    v25 = v27;
    v28 = 17;
    sub_23D7FCBC0();
    sub_23D80E49C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 18;
    sub_23D80E44C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 19;
    sub_23D800130(&qword_27E2E5088, MEMORY[0x277CDFA28]);
    sub_23D80E49C();
    (*(v20 + 8))(v18, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v16 = v26;
    if (v27)
    {
      v16 = 12.0;
    }

    v26 = v16;
    LOBYTE(v24) = 20;
    sub_23D792E14();
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v24) = 21;
    sub_23D80E49C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 22;
    sub_23D80E45C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 23;
    sub_23D80E45C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 24;
    sub_23D80E45C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 25;
    sub_23D80E44C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    LOBYTE(v26) = 26;
    v17 = v23;
    sub_23D80E45C();
    return (*(v22 + 8))(v12, v17);
  }
}

uint64_t AXRTextFormatterModel.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AXRTextFormatterModel.init(from:)(a1);
  return v5;
}

uint64_t AXRTextFormatterModel.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v173 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5090, &qword_23D813F38);
  v136 = *(v137 - 8);
  v3 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v169 = &v134 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  v164 = *(v5 - 8);
  v165 = v5;
  v6 = *(v164 + 64);
  MEMORY[0x28223BE20](v5);
  v163 = &v134 - v7;
  v168 = sub_23D80DAAC();
  v172 = *(v168 - 8);
  v8 = *(v172 + 64);
  v9 = MEMORY[0x28223BE20](v168);
  v135 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v167 = &v134 - v12;
  MEMORY[0x28223BE20](v11);
  v162 = &v134 - v13;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  v160 = *(v161 - 8);
  v14 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v159 = &v134 - v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5048, &qword_23D813F20);
  v157 = *(v158 - 8);
  v16 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v156 = &v134 - v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  v175 = *(v171 - 1);
  v18 = *(v175 + 64);
  MEMORY[0x28223BE20](v171);
  v155 = &v134 - v19;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  v153 = *(v154 - 1);
  v20 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v134 - v21;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  v150 = *(v151 - 8);
  v22 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v134 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  v147 = *(v148 - 8);
  v24 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v134 - v25;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  v144 = *(v145 - 8);
  v26 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v134 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v141 = *(v142 - 8);
  v28 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v30 = &v134 - v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v174 = *(v139 - 8);
  v31 = *(v174 + 64);
  MEMORY[0x28223BE20](v139);
  v170 = &v134 - v32;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  v138 = *(v140 - 1);
  v33 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v35 = &v134 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v134 - v39;
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customReaderBackgroundColor;
  sub_23D7E1424(0, 0xD000000000000018, 0x800000023D816810, 0, 0, &v134 - v39);
  v42 = *(v37 + 32);
  v42(v2 + v41, v40, v36);
  v43 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customSelectedTextColor;
  sub_23D7E1424(0, 0xD000000000000012, 0x800000023D816830, 0, 0, v40);
  v42(v2 + v43, v40, v36);
  v44 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeReaderBackgroundColor;
  sub_23D7E1424(0, 0xD000000000000017, 0x800000023D816850, 0, 0, v40);
  v42(v2 + v44, v40, v36);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeSelectedTextColor;
  sub_23D7E1424(0, 0xD000000000000011, 0x800000023D816870, 0, 0, v40);
  v42(v2 + v45, v40, v36);
  v46 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customLinkColor;
  sub_23D7E1424(0, 0xD000000000000012, 0x800000023D816890, 0, 0, v40);
  v42(v2 + v46, v40, v36);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__theme;
  sub_23D7E1A08(3, 0x656D656854727861, 0xE800000000000000, 0, 0, v35);
  v48 = *(v138 + 32);
  v49 = v140;
  v48(v2 + v47, v35, v140);
  v50 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lastNonCustomTheme;
  sub_23D7E1A08(3, 0xD000000000000015, 0x800000023D8168B0, 0, 0, v35);
  v48(v2 + v50, v35, v49);
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__textBold;
  v52 = v170;
  sub_23D7E1F6C(0, 0x4274786554727861, 0xEB00000000646C6FLL, 0, 0, v170);
  v53 = v174 + 32;
  v140 = *(v174 + 32);
  v54 = v139;
  (v140)(v2 + v51, v52, v139);
  v174 = v53;
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacing;
  sub_23D7E24D0(0x53656E694C727861, 0xEE00676E69636170, 0, 0, v30, 0.0);
  v56 = *(v141 + 32);
  v57 = v142;
  v56(v2 + v55, v30, v142);
  v58 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacing;
  sub_23D7E24D0(0x5372616843727861, 0xEE00676E69636170, 0, 0, v30, 0.0);
  v56(v2 + v58, v30, v57);
  v59 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacing;
  sub_23D7E24D0(0x5364726F57727861, 0xEE00676E69636170, 0, 0, v30, 0.0);
  v56(v2 + v59, v30, v57);
  v60 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__contentWidthRegular;
  sub_23D7E24D0(0xD000000000000016, 0x800000023D8168D0, 0, 0, v30, 800.0);
  v56(v2 + v60, v30, v57);
  v61 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacingOption;
  v62 = v143;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D8168F0, 0, 0, v143);
  v63 = *(v144 + 32);
  v64 = v145;
  v63(v2 + v61, v62, v145);
  v65 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D816910, 0, 0, v62);
  v63(v2 + v65, v62, v64);
  v66 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D816930, 0, 0, v62);
  v63(v2 + v66, v62, v64);
  v67 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__marginSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000016, 0x800000023D816950, 0, 0, v62);
  v63(v2 + v67, v62, v64);
  v68 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightStyle;
  v69 = v146;
  sub_23D7E2FA0(0, 0xD000000000000011, 0x800000023D816970, 0, 0, v146);
  (*(v147 + 32))(v2 + v68, v69, v148);
  v70 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightColor;
  v71 = sub_23D80DC1C();
  v72 = v149;
  sub_23D7E3504(v71, 0xD000000000000011, 0x800000023D816990, 0, 0, v149);
  (*(v150 + 32))(v2 + v70, v72, v151);
  v73 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightFollowsTextColor;
  v74 = v170;
  sub_23D7E1F6C(1, 0xD00000000000001CLL, 0x800000023D8169B0, 0, 0, v170);
  v75 = v54;
  v76 = v140;
  (v140)(v2 + v73, v74, v54);
  v77 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontName;
  v78 = v152;
  sub_23D7E3AA4(0x6D6574737953, 0xE600000000000000, 0x4674786554727861, 0xEF656D614E746E6FLL, 0, 0, v152);
  (*(v153 + 32))(v2 + v77, v78, v154);
  v79 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontVariantName;
  v80 = v155;
  sub_23D7E4024(0, 0xE000000000000000, 0xD000000000000016, 0x800000023D8169D0, 0, 0, v155);
  v81 = *(v175 + 32);
  v175 += 32;
  v154 = v81;
  v81(v2 + v79, v80, v171);
  v82 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel___userPrefFontPointSize;
  v83 = v156;
  sub_23D7E45C8(0, 1, 0xD000000000000010, 0x800000023D8169F0, 0, 0, v156);
  (*(v157 + 32))(v2 + v82, v83, v158);
  v84 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__defaultFontPointSize;
  v85 = v159;
  sub_23D7E4BB0(0xD000000000000017, 0x800000023D816A10, 0, 0, v159, 12.0);
  v86 = v167;
  (*(v160 + 32))(v2 + v84, v85, v161);
  v87 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highLegibility;
  sub_23D7E1F6C(0, 0xD000000000000011, 0x800000023D816A30, 0, 0, v74);
  v76(v2 + v87, v74, v75);
  v88 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightEnabled;
  sub_23D7E1F6C(1, 0xD000000000000013, 0x800000023D816A50, 0, 0, v74);
  v76(v2 + v88, v74, v75);
  v89 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__modelName;
  sub_23D7E4024(0, 0xE000000000000000, 0x6C65646F4D727861, 0xEC000000656D614ELL, 0, 0, v80);
  v90 = v80;
  v91 = v172;
  v154(v2 + v89, v90, v171);
  v92 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__showLinks;
  sub_23D7E1F6C(1, 0x4C776F6853727861, 0xEC000000736B6E69, 0, 0, v74);
  v175 = v2;
  v76(v2 + v92, v74, v75);
  v93 = objc_opt_self();
  v94 = [v93 sharedApplication];
  v95 = [v94 preferredContentSizeCategory];

  UIContentSizeCategory.dynamicTypeSize.getter(v86);
  v96 = v168;
  LOBYTE(v94) = sub_23D80DA8C();
  v97 = *(v91 + 8);
  v98 = v86;
  v97(v86, v96);
  if (v94)
  {
    v99 = [v93 sharedApplication];
    v100 = [v99 preferredContentSizeCategory];

    v101 = v162;
    UIContentSizeCategory.dynamicTypeSize.getter(v162);
  }

  else
  {
    v101 = v162;
    (*(v91 + 104))(v162, *MEMORY[0x277CDF9D8], v96);
  }

  v102 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__dynamicTypeSize;
  v103 = *(v91 + 16);
  v172 = v91 + 16;
  v103(v98, v101, v96);
  v104 = v163;
  sub_23D7E511C(v98, 0xD000000000000012, 0x800000023D816A70, 0, 0, v163);
  v97(v101, v96);
  v105 = v175;
  (*(v164 + 32))(v175 + v102, v104, v165);
  v106 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  *(v105 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing) = 0;
  swift_beginAccess();
  v174 = v106;
  *(v105 + v106) = 1;
  v107 = v173[4];
  __swift_project_boxed_opaque_existential_1(v173, v173[3]);
  sub_23D7FCA70();
  v108 = v166;
  sub_23D80E5DC();
  if (v108)
  {
    *(v105 + v174) = 0;
  }

  else
  {
    v166 = v103;
    v170 = v91 + 8;
    v171 = v97;
    LOBYTE(v176) = 0;
    sub_23D7FCC14();
    sub_23D80E3AC();
    v109 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v109;

    sub_23D80DA1C();
    LOBYTE(v176) = 1;
    sub_23D80E3AC();
    v110 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v110;

    sub_23D80DA1C();
    LOBYTE(v176) = 2;
    sub_23D80E3AC();
    v111 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v111;

    sub_23D80DA1C();
    LOBYTE(v176) = 3;
    sub_23D80E3AC();
    v113 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v113;

    sub_23D80DA1C();
    LOBYTE(v176) = 4;
    sub_23D80E3AC();
    v114 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v114;

    sub_23D80DA1C();
    LOBYTE(v176) = 5;
    sub_23D7AE034();
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    LOBYTE(v176) = 6;
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    LOBYTE(v178) = 7;
    v115 = sub_23D80E3CC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v178) = v115 & 1;

    sub_23D80DA1C();
    LOBYTE(v178) = 8;
    sub_23D80E3DC();
    v117 = v116;
    swift_getKeyPath();
    swift_getKeyPath();
    v178 = v117;

    sub_23D80DA1C();
    LOBYTE(v178) = 9;
    sub_23D80E3DC();
    v119 = v118;
    swift_getKeyPath();
    swift_getKeyPath();
    v178 = v119;

    sub_23D80DA1C();
    LOBYTE(v178) = 10;
    sub_23D80E3DC();
    v121 = v120;
    swift_getKeyPath();
    swift_getKeyPath();
    v178 = v121;

    sub_23D80DA1C();
    LOBYTE(v176) = 11;
    sub_23D7FCC68();
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    sub_23D7E9DC8();
    LOBYTE(v176) = 12;
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    sub_23D7EA3E0();
    LOBYTE(v176) = 13;
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    sub_23D7EAA94();
    LOBYTE(v176) = 14;
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    sub_23D7EB0AC();
    LOBYTE(v176) = 15;
    sub_23D7FCCBC();
    sub_23D80E40C();
    LOBYTE(v114) = LOBYTE(v178);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v176) = LOBYTE(v114);

    sub_23D80DA1C();
    LOBYTE(v176) = 16;
    sub_23D80E40C();
    v122 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v122;

    sub_23D80DA1C();
    LOBYTE(v176) = 17;
    sub_23D7FCD10();
    sub_23D80E40C();
    v123 = v178;
    v124 = v179;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v123;
    v177 = v124;

    sub_23D80DA1C();
    LOBYTE(v178) = 18;
    *&v125 = COERCE_DOUBLE(sub_23D80E3BC());
    v127 = v126;
    swift_getKeyPath();
    swift_getKeyPath();
    v178 = *&v125;
    v179 = v127;

    sub_23D80DA1C();
    LOBYTE(v178) = 19;
    sub_23D800130(&qword_27E2E50B8, MEMORY[0x277CDFA28]);
    sub_23D80E40C();
    swift_getKeyPath();
    swift_getKeyPath();
    v128 = v168;
    v129 = v135;
    v166(v167, v135, v168);

    sub_23D80DA1C();
    v171(v129, v128);
    LOBYTE(v176) = 20;
    sub_23D7FCD64();
    sub_23D80E40C();
    sub_23D7EDEC0(v178);
    LOBYTE(v178) = 22;
    LOBYTE(v125) = sub_23D80E3CC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v178) = v125 & 1;

    sub_23D80DA1C();
    LOBYTE(v178) = 23;
    LOBYTE(v125) = sub_23D80E3CC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v178) = v125 & 1;

    sub_23D80DA1C();
    LOBYTE(v178) = 24;
    LOBYTE(v125) = sub_23D80E3CC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v178) = v125 & 1;

    sub_23D80DA1C();
    LOBYTE(v178) = 25;
    *&v130 = COERCE_DOUBLE(sub_23D80E3BC());
    v132 = v131;
    swift_getKeyPath();
    swift_getKeyPath();
    v178 = *&v130;
    v179 = v132;

    sub_23D80DA1C();
    LOBYTE(v178) = 26;
    LOBYTE(v130) = sub_23D80E3CC();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v178) = v130 & 1;

    sub_23D80DA1C();
    LOBYTE(v176) = 21;
    sub_23D80E40C();
    v133 = v178;
    swift_getKeyPath();
    swift_getKeyPath();
    v176 = v133;

    sub_23D80DA1C();
    (*(v136 + 8))(v169, v137);
    v105 = v175;
    *(v175 + v174) = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v173);
  return v105;
}

uint64_t sub_23D7F4C40()
{
  v22 = sub_23D80DAAC();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v7 = LOBYTE(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v25) = v7;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v8 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v8;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v9 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v9;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v9) = LOBYTE(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = LOBYTE(v9);

  sub_23D80DA1C();
  sub_23D7E9DC8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v9) = LOBYTE(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = LOBYTE(v9);

  sub_23D80DA1C();
  sub_23D7EA3E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v9) = LOBYTE(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = LOBYTE(v9);

  sub_23D80DA1C();
  sub_23D7EAA94();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v9) = LOBYTE(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = LOBYTE(v9);

  sub_23D80DA1C();
  sub_23D7EB0AC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v11 = v25;
  v10 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v11;
  v24 = v10;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v12 = v25;
  v13 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v12;
  v26 = v13;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v22;
  (*(v0 + 16))(v4, v6, v22);

  sub_23D80DA1C();
  (*(v0 + 8))(v6, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v15 = v25;
  if (v26)
  {
    v15 = 12.0;
  }

  sub_23D7EDEC0(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v16 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v16;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v17 = LOBYTE(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v25) = v17;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v18 = v25;
  v19 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v18;
  v26 = v19;

  return sub_23D80DA1C();
}

uint64_t AXRTextFormatterModel.deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customReaderBackgroundColor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customSelectedTextColor, v2);
  v3(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeReaderBackgroundColor, v2);
  v3(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeSelectedTextColor, v2);
  v3(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customLinkColor, v2);
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__theme;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lastNonCustomTheme, v5);
  v7 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__textBold;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacing;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacing, v11);
  v12(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacing, v11);
  v12(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__contentWidthRegular, v11);
  v13 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacingOption;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v15(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacingOption, v14);
  v15(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacingOption, v14);
  v15(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__marginSpacingOption, v14);
  v16 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightStyle;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightColor;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v9(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightFollowsTextColor, v8);
  v20 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontName;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontVariantName;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  v24 = *(*(v23 - 8) + 8);
  v24(v0 + v22, v23);
  v25 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel___userPrefFontPointSize;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5048, &qword_23D813F20);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v27 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__defaultFontPointSize;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v9(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highLegibility, v8);
  v9(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightEnabled, v8);
  v24(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__modelName, v23);
  v9(v0 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__showLinks, v8);
  v29 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__dynamicTypeSize;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  return v0;
}

uint64_t AXRTextFormatterModel.__deallocating_deinit()
{
  AXRTextFormatterModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23D7F5AAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXRTextFormatterModel(0);
  result = sub_23D80D9AC();
  *a1 = result;
  return result;
}

uint64_t sub_23D7F5AEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AXRTextFormatterModel(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = AXRTextFormatterModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_23D7F5B6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return _s23AccessibilityReaderData21AXRTextFormatterModelC2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_23D7F5B78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_23D7F5C00(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7F5C84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();
}

uint64_t sub_23D7F5CFC(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7F5D7C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7F5E20(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D8, &qword_23D813F90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7F5FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D8, &qword_23D813F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7F60F8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D8, &qword_23D813F90);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__playbackSpeed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7F6268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23D7F62E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7F6384()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7F63F0(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7F6494(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23D7F6634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7F676C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
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

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__showPlayer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7F68F4(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  a1();
  return v5;
}

uint64_t IRSpeechFormatterModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__playbackSpeed;
  v14[12] = 1;
  sub_23D7E57E8(0x100000004, 0xD000000000000010, 0x800000023D816A90, 0, 0, &v14[-v9]);
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__showPlayer;
  sub_23D7E1F6C(1, 0xD00000000000001DLL, 0x800000023D816AB0, 0, 0, v5);
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t IRSpeechFormatterModel.deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__playbackSpeed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__showPlayer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t IRSpeechFormatterModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__playbackSpeed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData22IRSpeechFormatterModel__showPlayer;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23D7F6CE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IRSpeechFormatterModel(0);
  result = sub_23D80D9AC();
  *a1 = result;
  return result;
}

unint64_t sub_23D7F6D20()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_23D80E31C())
    {
      result = sub_23D7FBA94(MEMORY[0x277D84F90]);
    }

    else
    {
      result = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    result = MEMORY[0x277D84FA0];
  }

  qword_27E2E4EE0 = result;
  return result;
}

uint64_t sub_23D7F6D84()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4750, "@~");
  sub_23D800378(&qword_27E2E5060, sub_23D7FCAC4);
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F7098()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F7368()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F7640(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = sub_23D80D97C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23D80D49C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_23D80D48C();
  a4();
  v10 = sub_23D80D47C();
  v12 = v11;
  v13 = v10;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_27E2E4618;
  v15 = v13;
  v16 = sub_23D80D61C();
  v17 = sub_23D80DD4C();
  [v14 setObject:v16 forKey:v17];

  return sub_23D7AE088(v15, v12);
}

uint64_t sub_23D7F7918()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  sub_23D7FCAC4();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F7BE8()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  sub_23D7FCBC0();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F7EBC()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F8190()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5178, &qword_23D814578);
  sub_23D8001F8(&qword_27E2E5230, sub_23D792E14);
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F84B0()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  sub_23D792E14();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F8788()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  sub_23D80DAAC();
  sub_23D800130(&qword_27E2E5088, MEMORY[0x277CDFA28]);
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t sub_23D7F8A8C()
{
  v0 = sub_23D80D97C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_23D80D49C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23D80D48C();
  sub_23D800178();
  v5 = sub_23D80D47C();
  v7 = v6;
  v8 = v5;

  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27E2E4618;
  v10 = v8;
  v11 = sub_23D80D61C();
  v12 = sub_23D80DD4C();
  [v9 setObject:v11 forKey:v12];

  return sub_23D7AE088(v10, v7);
}

uint64_t AXRTextSpacingOption.id.getter()
{
  *v0;
  *v0;
  sub_23D7904FC();
  v1 = sub_23D80E18C();

  return v1;
}

uint64_t AXRTextSpacingOption.rawValue.getter()
{
  v1 = 1852141679;
  if (*v0 != 1)
  {
    v1 = 0x65736F6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t AXRTextSpacingOption.title.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v1 = qword_27E2E4610;
      v2 = 0xD000000000000010;
      if (qword_27E2E4610)
      {
LABEL_6:
        v3 = v1;
        v4 = sub_23D80DD4C();
        v5 = sub_23D80DD4C();
        v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

        v2 = sub_23D80DD7C();
      }
    }

    else
    {
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v1 = qword_27E2E4610;
      v2 = 0xD000000000000011;
      if (qword_27E2E4610)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    if (qword_27E2E4228 != -1)
    {
      swift_once();
    }

    v1 = qword_27E2E4610;
    v2 = 0xD000000000000013;
    if (qword_27E2E4610)
    {
      goto LABEL_6;
    }
  }

  return v2;
}

unint64_t AXRTextSpacingOption.lineIcon.getter()
{
  v1 = 0xD000000000000026;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t AXRTextSpacingOption.wordIcon.getter()
{
  v1 = 0xD00000000000002BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t AXRTextSpacingOption.charIcon.getter()
{
  v1 = 0xD00000000000002FLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

unint64_t AXRTextSpacingOption.marginIcon.getter()
{
  v1 = 0xD00000000000004FLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000004ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000035;
  }

  *v0;
  return result;
}

AccessibilityReaderData::AXRTextSpacingOption_optional __swiftcall AXRTextSpacingOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D7F934C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  if (v2 != 1)
  {
    v4 = 0x65736F6F6CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1852141679;
  if (*a2 != 1)
  {
    v8 = 0x65736F6F6CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D80E4DC();
  }

  return v11 & 1;
}

uint64_t sub_23D7F9438()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7F94D0()
{
  *v0;
  *v0;
  sub_23D80DDAC();
}

uint64_t sub_23D7F9554()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

void sub_23D7F95F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x65736F6F6CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23D7F9658@<X0>(uint64_t *a1@<X8>)
{
  *v1;
  *v1;
  sub_23D7904FC();
  v3 = sub_23D80E18C();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t AXRTypeSpacingOption.id.getter()
{
  *v0;
  *v0;
  *v0;
  sub_23D7904FC();
  v1 = sub_23D80E18C();

  return v1;
}

uint64_t AXRTypeSpacingOption.rawValue.getter()
{
  v1 = 1701734764;
  v2 = 0x6574636172616863;
  if (*v0 != 2)
  {
    v2 = 0x6E696772616DLL;
  }

  if (*v0)
  {
    v1 = 1685221239;
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

AccessibilityReaderData::AXRTypeSpacingOption_optional __swiftcall AXRTypeSpacingOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D7F995C()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7F9A10()
{
  *v0;
  *v0;
  *v0;
  sub_23D80DDAC();
}

uint64_t sub_23D7F9AB0()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

void sub_23D7F9B6C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701734764;
  v4 = 0xE900000000000072;
  v5 = 0x6574636172616863;
  if (*v1 != 2)
  {
    v5 = 0x6E696772616DLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1685221239;
    v2 = 0xE400000000000000;
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

uint64_t sub_23D7F9BEC@<X0>(uint64_t *a1@<X8>)
{
  *v1;
  *v1;
  sub_23D7904FC();
  v3 = sub_23D80E18C();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

unint64_t AXRHighlightStyle.id.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t AXRHighlightStyle.description.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  if (qword_27E2E4610)
  {
    v3 = qword_27E2E4610;
    v4 = sub_23D80DD4C();

    v5 = sub_23D80DD4C();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v2 = sub_23D80DD7C();
  }

  return v2;
}

AccessibilityReaderData::AXRHighlightStyle_optional __swiftcall AXRHighlightStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D7F9F60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "axr.highlight.gradient";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "axr.highlight.gradient";
  }

  else
  {
    v6 = "axr.highlight.background";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "word";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "axr.highlight.background";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000016;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "word";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D80E4DC();
  }

  return v11 & 1;
}

uint64_t sub_23D7FA034()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7FA0CC()
{
  *v0;
  *v0;
  sub_23D80DDAC();
}

uint64_t sub_23D7FA150()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

void sub_23D7FA1F0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = "axr.highlight.gradient";
  v4 = 0xD000000000000018;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "axr.highlight.background";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "word";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t _s23AccessibilityReaderData21AXRTextFormatterModelC2eeoiySbAC_ACtFZ_0()
{
  v0 = sub_23D80DAAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v74 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v8 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v8 == 0.0)
  {
    if (v78 != 0.0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v78 == 0.0)
    {
      goto LABEL_27;
    }

    v9 = sub_23D80DBCC();

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v10 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v10 == 0.0)
  {
    if (v78 != 0.0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v78 == 0.0)
    {
      goto LABEL_27;
    }

    v11 = sub_23D80DBCC();

    if ((v11 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v12 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v12 == 0.0)
  {
    if (v78 != 0.0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v78 == 0.0)
    {
      goto LABEL_27;
    }

    v13 = sub_23D80DBCC();

    if ((v13 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v14 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v14 == 0.0)
  {
    if (v78 != 0.0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v78 == 0.0)
    {
      goto LABEL_27;
    }

    v15 = sub_23D80DBCC();

    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v16 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v16 != 0.0)
  {
    if (v78 != 0.0)
    {
      v17 = sub_23D80DBCC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v78 != 0.0)
  {
    goto LABEL_27;
  }

LABEL_30:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v20 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if ((sub_23D7A1E2C(v20, v76) & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v21 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if ((sub_23D7A1E2C(v21, v76) & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v22 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v22 != LOBYTE(v78))
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v23 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v23 != v78)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v24 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v24 != v78)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v25 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v25 != v78)
  {
    goto LABEL_28;
  }

  v75 = 0x746C7561666564;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v26 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v26)
  {
    if (v26 == 1)
    {
      v27 = 0xE400000000000000;
      v28 = 1852141679;
    }

    else
    {
      v27 = 0xE500000000000000;
      v28 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v27 = 0xE700000000000000;
    v28 = 0x746C7561666564;
  }

  if (v76)
  {
    if (v76 == 1)
    {
      v29 = 0xE400000000000000;
      v30 = 1852141679;
    }

    else
    {
      v29 = 0xE500000000000000;
      v30 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v29 = 0xE700000000000000;
    v30 = 0x746C7561666564;
  }

  if (v28 == v30 && v27 == v29)
  {
  }

  else
  {
    v31 = sub_23D80E4DC();

    if ((v31 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v32 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v32)
  {
    if (v32 == 1)
    {
      v33 = 0xE400000000000000;
      v34 = 1852141679;
    }

    else
    {
      v33 = 0xE500000000000000;
      v34 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v33 = 0xE700000000000000;
    v34 = 0x746C7561666564;
  }

  if (v76)
  {
    if (v76 == 1)
    {
      v35 = 0xE400000000000000;
      v36 = 1852141679;
    }

    else
    {
      v35 = 0xE500000000000000;
      v36 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x746C7561666564;
  }

  if (v34 == v36 && v33 == v35)
  {
  }

  else
  {
    v37 = sub_23D80E4DC();

    if ((v37 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v38 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v38)
  {
    if (v38 == 1)
    {
      v39 = 0xE400000000000000;
      v40 = 1852141679;
    }

    else
    {
      v39 = 0xE500000000000000;
      v40 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v39 = 0xE700000000000000;
    v40 = 0x746C7561666564;
  }

  if (v76)
  {
    if (v76 == 1)
    {
      v41 = 0xE400000000000000;
      v42 = 1852141679;
    }

    else
    {
      v41 = 0xE500000000000000;
      v42 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v41 = 0xE700000000000000;
    v42 = 0x746C7561666564;
  }

  if (v40 == v42 && v39 == v41)
  {
  }

  else
  {
    v43 = sub_23D80E4DC();

    if ((v43 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v44 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v44)
  {
    if (v44 == 1)
    {
      v45 = 0xE400000000000000;
      v46 = 1852141679;
    }

    else
    {
      v45 = 0xE500000000000000;
      v46 = 0x65736F6F6CLL;
    }
  }

  else
  {
    v45 = 0xE700000000000000;
    v46 = 0x746C7561666564;
  }

  if (v76)
  {
    if (v76 == 1)
    {
      v47 = 0xE400000000000000;
      v48 = 1852141679;
    }

    else
    {
      v47 = 0xE500000000000000;
      v48 = 0x65736F6F6CLL;
    }

    v75 = v48;
  }

  else
  {
    v47 = 0xE700000000000000;
  }

  if (v46 == v75 && v45 == v47)
  {
  }

  else
  {
    v49 = sub_23D80E4DC();

    if ((v49 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v75 = 0xD000000000000016;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v50 = LOBYTE(v78);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v51 = "word";
  if (v50)
  {
    if (v50 == 1)
    {
      v52 = "axr.highlight.gradient";
      v53 = 0xD000000000000018;
    }

    else
    {
      v52 = "axr.highlight.background";
      v53 = 0xD000000000000017;
    }
  }

  else
  {
    v53 = 0xD000000000000016;
    v52 = "word";
  }

  if (v76)
  {
    if (v76 == 1)
    {
      v51 = "axr.highlight.gradient";
      v54 = 0xD000000000000018;
    }

    else
    {
      v51 = "axr.highlight.background";
      v54 = 0xD000000000000017;
    }

    v75 = v54;
  }

  if (v53 == v75 && (v52 | 0x8000000000000000) == (v51 | 0x8000000000000000))
  {
  }

  else
  {
    v55 = sub_23D80E4DC();

    if ((v55 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v56 = sub_23D80DBCC();

  if (v56)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v58 = v78;
    v57 = v79;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (*&v58 == v76 && v57 == v77)
    {
    }

    else
    {
      v59 = sub_23D80E4DC();

      if ((v59 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v61 = v78;
    v60 = v79;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (*&v61 == *&v78 && v60 == v79)
    {
    }

    else
    {
      v62 = sub_23D80E4DC();

      if ((v62 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v63 = sub_23D80DA9C();
    v64 = *(v1 + 8);
    v64(v5, v0);
    v64(v7, v0);
    if (v63)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (v79)
      {
        v65 = 12.0;
      }

      else
      {
        v65 = v78;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (v79)
      {
        if (v65 != 12.0)
        {
          goto LABEL_28;
        }
      }

      else if (v65 != v78)
      {
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v66 = v78;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (v66 != v78)
      {
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v67 = LOBYTE(v78);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (v67 != LOBYTE(v78))
      {
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v68 = LOBYTE(v78);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (v68 != LOBYTE(v78))
      {
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v69 = LOBYTE(v78);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (v69 != LOBYTE(v78))
      {
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v71 = v78;
      v70 = v79;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (*&v71 == *&v78 && v70 == v79)
      {

LABEL_132:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v73 = LOBYTE(v78);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C();

        v18 = v73 ^ LOBYTE(v78) ^ 1;
        return v18 & 1;
      }

      v72 = sub_23D80E4DC();

      if (v72)
      {
        goto LABEL_132;
      }
    }
  }

LABEL_28:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_23D7FBA94(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23D80E31C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E51E8, &qword_23D8147A0);
      result = sub_23D80E22C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23D80E31C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x23EEECB80](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_23D80D99C();
    sub_23D800130(&qword_27E2E51F0, MEMORY[0x277CBCDA8]);
    result = sub_23D80DCFC();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_23D800130(&qword_27E2E51F8, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_23D80DD3C();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s23AccessibilityReaderData21AXRTextFormatterModelC5modelA2C_tcfC_0()
{
  v28 = sub_23D80DAAC();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = type metadata accessor for AXRTextFormatterModel(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  AXRTextFormatterModel.init()();
  v11 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  v29 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  swift_beginAccess();
  *(v10 + v11) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D80DA0C();

  v12 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v12;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v13 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v13;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v14 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v14;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v15 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v15;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32) = LOBYTE(v14);

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  sub_23D7E9DC8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  sub_23D7EA3E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  sub_23D7EAA94();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  sub_23D7EB0AC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v14) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = LOBYTE(v14);

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v16 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v16;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v16) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32) = LOBYTE(v16);

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v18 = v32;
  v17 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v18;
  v31 = v17;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v19 = v32;
  v20 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v19;
  v33 = v20;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v28;
  (*(v0 + 16))(v4, v6, v28);

  sub_23D80DA1C();
  (*(v0 + 8))(v6, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v22 = v32;
  if (v33)
  {
    v22 = 12.0;
  }

  sub_23D7EDEC0(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v23 = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32) = v23;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v24 = v32;
  v25 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v24;
  v33 = v25;

  sub_23D80DA1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  LOBYTE(v24) = LOBYTE(v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32) = LOBYTE(v24);

  sub_23D80DA1C();

  *(v10 + v29) = 0;

  return v10;
}

unint64_t sub_23D7FCA70()
{
  result = qword_27E2E5058;
  if (!qword_27E2E5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5058);
  }

  return result;
}

unint64_t sub_23D7FCAC4()
{
  result = qword_27E2E5068;
  if (!qword_27E2E5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5068);
  }

  return result;
}

unint64_t sub_23D7FCB18()
{
  result = qword_27E2E5070;
  if (!qword_27E2E5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5070);
  }

  return result;
}

unint64_t sub_23D7FCB6C()
{
  result = qword_27E2E5078;
  if (!qword_27E2E5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5078);
  }

  return result;
}

unint64_t sub_23D7FCBC0()
{
  result = qword_27E2E5080;
  if (!qword_27E2E5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5080);
  }

  return result;
}

unint64_t sub_23D7FCC14()
{
  result = qword_27E2E5098;
  if (!qword_27E2E5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5098);
  }

  return result;
}

unint64_t sub_23D7FCC68()
{
  result = qword_27E2E50A0;
  if (!qword_27E2E50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E50A0);
  }

  return result;
}

unint64_t sub_23D7FCCBC()
{
  result = qword_27E2E50A8;
  if (!qword_27E2E50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E50A8);
  }

  return result;
}

unint64_t sub_23D7FCD10()
{
  result = qword_27E2E50B0;
  if (!qword_27E2E50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E50B0);
  }

  return result;
}

unint64_t sub_23D7FCD64()
{
  result = qword_27E2E50C0;
  if (!qword_27E2E50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E50C0);
  }

  return result;
}

unint64_t sub_23D7FCDCC()
{
  result = qword_27E2E50E8;
  if (!qword_27E2E50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E50E8);
  }

  return result;
}

unint64_t sub_23D7FCE68()
{
  result = qword_27E2E5100;
  if (!qword_27E2E5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5100);
  }

  return result;
}

unint64_t sub_23D7FCF04()
{
  result = qword_27E2E5118;
  if (!qword_27E2E5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5118);
  }

  return result;
}

uint64_t sub_23D7FD56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23D7FD5C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_23D7FD6A8()
{
  sub_23D7CE76C(319, &qword_27E2E5140, &qword_27E2E4750, "@~");
  if (v1 <= 0x3F)
  {
    v26 = *(v0 - 8) + 64;
    sub_23D7CE818(319, &qword_27E2E4710);
    if (v3 <= 0x3F)
    {
      v27 = *(v2 - 8) + 64;
      sub_23D7CE818(319, &qword_27E2E4A28);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_23D7CE818(319, &qword_27E2E4A30);
        if (v8 <= 0x3F)
        {
          v28 = *(v7 - 8) + 64;
          sub_23D7CE818(319, &qword_27E2E5148);
          if (v10 <= 0x3F)
          {
            v29 = *(v9 - 8) + 64;
            sub_23D7CE818(319, &qword_27E2E5150);
            if (v12 <= 0x3F)
            {
              v30 = *(v11 - 8) + 64;
              sub_23D7CE818(319, &qword_27E2E5158);
              if (v14 <= 0x3F)
              {
                v31 = *(v13 - 8) + 64;
                sub_23D7CE818(319, &qword_27E2E5160);
                if (v16 <= 0x3F)
                {
                  v32 = *(v15 - 8) + 64;
                  sub_23D7CE818(319, &qword_27E2E5168);
                  if (v18 <= 0x3F)
                  {
                    v19 = *(v17 - 8) + 64;
                    sub_23D7CE76C(319, &qword_27E2E5170, &qword_27E2E5178, &qword_23D814578);
                    if (v21 <= 0x3F)
                    {
                      v33 = *(v20 - 8) + 64;
                      sub_23D7CE818(319, &qword_27E2E5180);
                      if (v23 <= 0x3F)
                      {
                        v34 = *(v22 - 8) + 64;
                        sub_23D7FF958();
                        if (v25 <= 0x3F)
                        {
                          v35 = *(v24 - 8) + 64;
                          swift_updateClassMetadata2();
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
}

void sub_23D7FF958()
{
  if (!qword_27E2E5188)
  {
    sub_23D80DAAC();
    v0 = sub_23D80DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E5188);
    }
  }
}

void sub_23D7FF9D8()
{
  sub_23D7CE818(319, &qword_27E2E51A0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23D7CE818(319, &qword_27E2E4A28);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for AXRTextFormatterModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRTextFormatterModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7FFE2C()
{
  result = qword_27E2E51A8;
  if (!qword_27E2E51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51A8);
  }

  return result;
}

unint64_t sub_23D7FFE84()
{
  result = qword_27E2E51B0;
  if (!qword_27E2E51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51B0);
  }

  return result;
}

unint64_t sub_23D7FFEDC()
{
  result = qword_27E2E51B8;
  if (!qword_27E2E51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51B8);
  }

  return result;
}

uint64_t sub_23D7FFF30()
{
  v0 = sub_23D80E4EC();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23D7FFF84()
{
  result = qword_27E2E51C0;
  if (!qword_27E2E51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51C0);
  }

  return result;
}

unint64_t sub_23D7FFFD8()
{
  result = qword_27E2E51C8;
  if (!qword_27E2E51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51C8);
  }

  return result;
}

unint64_t sub_23D80002C()
{
  result = qword_27E2E51D0;
  if (!qword_27E2E51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51D0);
  }

  return result;
}

uint64_t sub_23D800080()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D8000B8(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v6 = *(a1 + 4);
  return sub_23D7F8A8C();
}

unint64_t sub_23D8000DC()
{
  result = qword_27E2E51E0;
  if (!qword_27E2E51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E51E0);
  }

  return result;
}

uint64_t sub_23D800130(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D800178()
{
  result = qword_27E2E5200;
  if (!qword_27E2E5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5200);
  }

  return result;
}

uint64_t sub_23D8001CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23D7F8788();
}

uint64_t sub_23D8001D4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_23D7F84B0();
}

uint64_t sub_23D8001E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  return sub_23D7F8190();
}

uint64_t sub_23D8001F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E5178, &qword_23D814578);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D800270(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v4 = a1[1];
  return sub_23D7F7EBC();
}

uint64_t sub_23D800280(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v4 = a1[1];
  return sub_23D7F7BE8();
}

uint64_t sub_23D800290(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_23D7F7918();
}

uint64_t sub_23D800314(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_23D7F7368();
}

uint64_t sub_23D800324(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_23D7F7098();
}

uint64_t sub_23D80036C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_23D7F6D84();
}

uint64_t sub_23D800378(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4750, "@~");
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D8004B8()
{
  sub_23D80DDAC();
}

uint64_t sub_23D800648()
{
  sub_23D80DDAC();
}

Swift::String __swiftcall AXRTextContent.description()()
{
  sub_23D80E24C();
  MEMORY[0x23EEEC700](0x4374786554525841, 0xEF28746E65746E6FLL);
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E5288, MEMORY[0x277CC95F0]);
  v1 = sub_23D80E4BC();
  MEMORY[0x23EEEC700](v1);

  MEMORY[0x23EEEC700](8236, 0xE200000000000000);
  v2 = type metadata accessor for AXRTextContent();
  MEMORY[0x23EEEC700](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x23EEEC700](0x726564616548202CLL, 0xEB00000000203A20);
  if (*(v0 + v2[6]))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x23EEEC700](v3, v4);

  MEMORY[0x23EEEC700](0xD000000000000012, 0x800000023D8170D0);
  v5 = (v0 + v2[7]);
  if (!*(v5 + 8))
  {
    v6 = *v5;
  }

  v7 = sub_23D80E4BC();
  MEMORY[0x23EEEC700](v7);

  MEMORY[0x23EEEC700](0x3A206B6E694C202CLL, 0xE900000000000020);
  if (*(v0 + v2[9]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + v2[9]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x23EEEC700](v8, v9);

  MEMORY[0x23EEEC700](0xD000000000000011, 0x800000023D8170F0);
  if (*(v0 + v2[8]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v2[8]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x23EEEC700](v10, v11);

  MEMORY[0x23EEEC700](0x3A7473726946202CLL, 0xE900000000000020);
  if (*(v0 + v2[11]))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + v2[11]))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x23EEEC700](v12, v13);

  MEMORY[0x23EEEC700](0x203A7473614C202CLL, 0xE800000000000000);
  if (*(v0 + v2[12]))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + v2[12]))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x23EEEC700](v14, v15);

  MEMORY[0x23EEEC700](41, 0xE100000000000000);
  v16 = 0;
  v17 = 0xE000000000000000;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t type metadata accessor for AXRTextContent()
{
  result = qword_27E2E52E0;
  if (!qword_27E2E52E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AXRTextContent.init(axElement:isFirstElement:isLastElement:)(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = [a1 hasAnyTraits_];
  v9 = [v6 hasAnyTraits_];
  sub_23D80D66C();
  v10 = [v6 speakThisString];
  if (v10)
  {

    v11 = [v6 speakThisString];
    if (!v11)
    {
      goto LABEL_37;
    }

    v12 = v11;
    v13 = sub_23D80DD7C();
    v15 = v14;

    v51 = v13;
    v52[0] = v15;
    v50[0] = 10;
    v50[1] = 0xE100000000000000;
    v49 = 32;
    v43 = sub_23D7904FC();
    v44 = v43;
    v41 = MEMORY[0x277D837D0];
    v42 = v43;
    v16 = sub_23D80E1BC();
    v18 = v17;

    v19 = type metadata accessor for AXRTextContent();
  }

  else
  {
    v19 = type metadata accessor for AXRTextContent();
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v20 = (a4 + v19[5]);
  *v20 = v16;
  v20[1] = v18;
  v21 = [v6 uiElement];
  type metadata accessor for AXRTextContent();
  *(a4 + v19[6]) = v8;
  if (!v21)
  {
    v25 = a4 + v19[7];
    *v25 = 0;
    *(v25 + 8) = 1;
LABEL_25:
    *(a4 + v19[8]) = 0;
LABEL_32:
    v38 = v19[13];
    *(a4 + v19[9]) = v9;
    v39 = v19[10];
    v40 = sub_23D80D5BC();
    (*(*(v40 - 8) + 56))(a4 + v39, 1, 1, v40);
    *(a4 + v19[11]) = a2 & 1;
    *(a4 + v19[12]) = a3 & 1;
    if ((a2 & 1) == 0 && (a3 & 1) == 0)
    {

      v6 = 0;
    }

    *(a4 + v38) = v6;
    return;
  }

  v22 = [v21 numberWithAXAttribute_];
  if (v22)
  {
    v51 = 0;
    LOBYTE(v52[0]) = 1;
    v23 = v22;
    sub_23D80DFFC();
  }

  v24 = a4 + v19[7];
  *v24 = 0;
  *(v24 + 8) = 1;
  v26 = [v21 arrayWithAXAttribute_];
  if (!v26)
  {

    goto LABEL_25;
  }

  v47 = v21;
  v48 = v9;
  v27 = v26;
  v28 = sub_23D80DEEC();

  v29 = *(v28 + 16);
  if (!v29)
  {
    v37 = 0;
LABEL_31:

    *(a4 + v19[8]) = v37;
    v9 = v48;
    goto LABEL_32;
  }

  v45 = a2;
  v46 = a4;
  v30 = 0;
  v31 = v28 + 32;
  while (v30 < *(v28 + 16))
  {
    v51 = v30;
    sub_23D793694(v31, v52);
    sub_23D793694(v52, v50);
    sub_23D7936F0(0, &qword_27E2E45F0, 0x277CCABB0);
    v32 = swift_dynamicCast();
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v34 = v33;
    if (v32)
    {
      v35 = v49 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      if (!v33)
      {
        sub_23D790730(&v51, &qword_27E2E5290, &unk_23D8147D0);
LABEL_29:
        v37 = 1;
LABEL_30:
        a4 = v46;
        a2 = v45;
        goto LABEL_31;
      }
    }

    else
    {
      if (v33)
      {
        v36 = sub_23D80E13C();

        sub_23D790730(&v51, &qword_27E2E5290, &unk_23D8147D0);
        if (v36)
        {
          goto LABEL_29;
        }

        goto LABEL_14;
      }

      v34 = v49;
    }

    sub_23D790730(&v51, &qword_27E2E5290, &unk_23D8147D0);
LABEL_14:
    ++v30;
    v31 += 32;
    if (v29 == v30)
    {
      v37 = 0;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t AXRTextContent.init(text:isHeader:headingLevel:isListElement:isLink:attributedText:isFirstElement:isLastElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v17 = type metadata accessor for AXRTextContent();
  v18 = v17[13];
  sub_23D80D66C();
  v19 = (a9 + v17[5]);
  *v19 = a1;
  v19[1] = a2;
  *(a9 + v17[6]) = a3;
  *(a9 + v17[9]) = a6;
  result = sub_23D7D0FB0(a7, a9 + v17[10]);
  v21 = a9 + v17[7];
  *v21 = a4;
  *(v21 + 8) = 0;
  *(a9 + v17[8]) = a5;
  *(a9 + v17[11]) = a8;
  *(a9 + v17[12]) = a10;
  *(a9 + v18) = 0;
  return result;
}

uint64_t sub_23D801090(int *a1, uint64_t a2)
{
  v73 = 0;
  v71 = sub_23D80D67C();
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v71);
  v94 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v86 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v75 = *a1;
  v74 = *(a1 + 4);
  v22 = type metadata accessor for AXRTextContent();
  v23 = v22[6];
  v24 = (v2 + v22[5]);
  v25 = v24[1];
  v91 = *v24;
  v77 = *(v2 + v23);
  v26 = v22[8];
  v27 = v2 + v22[7];
  v79 = *v27;
  v78 = *(v27 + 8);
  v83 = *(v2 + v22[9]);
  v81 = *(v2 + v26);
  v92 = v21;
  sub_23D790648(a2, v21, &qword_27E2E43F8, &qword_23D811650);
  v28 = v2 + v22[10];
  v89 = v15;
  sub_23D790648(v28, v15, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D80D66C();
  v29 = type metadata accessor for AXRTextBlock();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = v94;
  sub_23D80D66C();
  v34 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v85 = *(v5 + 32);
  v35 = v71;
  v85(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v33, v71);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v37 = v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v38 = v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v38 = 4;
  *(v38 + 4) = 1;
  v72 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v39 = v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v39 = 0;
  *(v39 + 8) = 1;
  v76 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v80 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  v41 = sub_23D80D6CC();
  (*(*(v41 - 8) + 56))(v32 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  v43 = sub_23D80D5BC();
  v44 = v32 + v42;
  v45 = v35;
  (*(*(v43 - 8) + 56))(v44, 1, 1, v43);
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v82 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v46 = (v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v46 = 0;
  v46[1] = 0;
  v84 = v46;
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  sub_23D80D72C();
  (*(v5 + 16))(v33, v93, v45);
  v48 = *(v5 + 8);
  v90 = v5 + 8;
  v87 = v48;
  v48((v32 + v34), v45);
  v85(v32 + v34, v33, v45);
  v49 = (v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  *v49 = v91;
  v49[1] = v25;

  v85 = v25;
  *(v32 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  v50 = *(v32 + v36);
  v94 = v47;
  if (v50)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v71 - 2) = v32;
    *(&v71 - 8) = 0;
    v100[3] = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    *(v32 + v36) = 0;
  }

  swift_beginAccess();
  v52 = v89;
  if (*(v37 + 16) == 1)
  {
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
  }

  else
  {
    v53 = swift_getKeyPath();
    MEMORY[0x28223BE20](v53);
    *(&v71 - 3) = 0;
    *(&v71 - 2) = 0;
    *(&v71 - 4) = v32;
    *(&v71 - 8) = 1;
    v100[0] = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D339C(MEMORY[0x277D84F90]);
  LODWORD(v100[0]) = v75;
  BYTE4(v100[0]) = v74;
  sub_23D7D37C0(v100);
  v54 = v72;
  swift_beginAccess();
  v55 = v77;
  if (v77 == *(v32 + v54))
  {
    *(v32 + v54) = v77;
  }

  else
  {
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    *(&v71 - 2) = v32;
    *(&v71 - 8) = v55;
    v99 = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v57 = v76;
  sub_23D7D42EC(v79, v78);
  swift_beginAccess();
  v58 = v81;
  if (v81 == *(v32 + v57))
  {
    *(v32 + v57) = v81;
  }

  else
  {
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    *(&v71 - 2) = v32;
    *(&v71 - 8) = v58;
    v98 = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v60 = v83;
  v61 = v80;
  swift_beginAccess();
  if (v60 == *(v32 + v61))
  {
    *(v32 + v61) = v60;
  }

  else
  {
    v62 = swift_getKeyPath();
    MEMORY[0x28223BE20](v62);
    *(&v71 - 2) = v32;
    *(&v71 - 8) = v60;
    v97 = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v63 = v86;
  sub_23D790648(v92, v86, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v63);
  v64 = v88;
  sub_23D790648(v52, v88, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v64);
  v65 = sub_23D7A1CF4(v91, v85);
  v66 = v82;
  swift_beginAccess();
  if (v65 == *(v32 + v66))
  {
    *(v32 + v66) = v65;
  }

  else
  {
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67);
    *(&v71 - 2) = v32;
    *(&v71 - 8) = v65;
    v96 = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v68 = v84;
  swift_beginAccess();
  if (v68[1])
  {
    v69 = swift_getKeyPath();
    MEMORY[0x28223BE20](v69);
    *(&v71 - 3) = 0;
    *(&v71 - 2) = 0;
    *(&v71 - 4) = v32;
    v95 = v32;
    sub_23D803DA4(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    *v68 = 0;
    v68[1] = 0;
  }

  v87(v93, v45);
  sub_23D790730(v52, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v92, &qword_27E2E43F8, &qword_23D811650);
  return v32;
}

uint64_t AXRTextContent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D80D67C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AXRTextContent.text.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextContent() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AXRTextContent.headingLevel.getter()
{
  v1 = (v0 + *(type metadata accessor for AXRTextContent() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AXRTextContent.isFirstElement.setter(char a1)
{
  result = type metadata accessor for AXRTextContent();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AXRTextContent.isLastElement.setter(char a1)
{
  result = type metadata accessor for AXRTextContent();
  *(v1 + *(result + 48)) = a1;
  return result;
}

void *AXRTextContent.axElement.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXRTextContent() + 52));
  v2 = v1;
  return v1;
}

void AXRTextContent.axElement.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXRTextContent() + 52);

  *(v1 + v3) = a1;
}

uint64_t sub_23D802114(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x7265646165487369;
    if (a1 != 2)
    {
      v6 = 0x4C676E6964616568;
    }

    if (a1)
    {
      v5 = 1954047348;
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
    v1 = 0x7475626972747461;
    v2 = 0x4574737269467369;
    if (a1 != 7)
    {
      v2 = 0x6C457473614C7369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C457473694C7369;
    if (a1 != 4)
    {
      v3 = 0x6B6E694C7369;
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

uint64_t sub_23D80225C()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D800648();
  return sub_23D80E5CC();
}

uint64_t sub_23D8022AC()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D800648();
  return sub_23D80E5CC();
}

uint64_t sub_23D8022F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23D803D50();
  *a2 = result;
  return result;
}

uint64_t sub_23D802320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D802114(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23D802368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D803D50();
  *a1 = result;
  return result;
}

uint64_t sub_23D80239C(uint64_t a1)
{
  v2 = sub_23D803468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D8023D8(uint64_t a1)
{
  v2 = sub_23D803468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AXRTextContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5298, &qword_23D8147E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D803468();
  sub_23D80E5EC();
  LOBYTE(v25) = 0;
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E4838, MEMORY[0x277CC95F0]);
  sub_23D80E49C();
  if (!v2)
  {
    v11 = type metadata accessor for AXRTextContent();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v25) = 1;
    sub_23D80E44C();
    v15 = *(v3 + v11[6]);
    LOBYTE(v25) = 2;
    sub_23D80E45C();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v25 = v17;
    v26 = v16;
    v24[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E52A8, &qword_23D8147E8);
    sub_23D8034BC();
    sub_23D80E49C();
    v18 = *(v3 + v11[8]);
    LOBYTE(v25) = 4;
    sub_23D80E45C();
    v19 = *(v3 + v11[9]);
    LOBYTE(v25) = 5;
    sub_23D80E45C();
    v20 = v11[10];
    LOBYTE(v25) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
    sub_23D803538();
    sub_23D80E49C();
    v21 = *(v3 + v11[11]);
    LOBYTE(v25) = 7;
    sub_23D80E45C();
    v22 = *(v3 + v11[12]);
    LOBYTE(v25) = 8;
    sub_23D80E45C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AXRTextContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_23D80D67C();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E52C8, &qword_23D8147F0);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AXRTextContent();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D803468();
  v38 = v13;
  v19 = v39;
  sub_23D80E5DC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v6;
  v20 = v34;
  v48 = 0;
  sub_23D803DA4(&qword_27E2E4860, MEMORY[0x277CC95F0]);
  v21 = v35;
  sub_23D80E40C();
  (*(v20 + 32))(v17, v21, v7);
  v47 = 1;
  v22 = sub_23D80E3BC();
  v23 = v14;
  v24 = &v17[*(v14 + 20)];
  *v24 = v22;
  v24[1] = v25;
  v46 = 2;
  v17[*(v14 + 24)] = sub_23D80E3CC() & 1;
  v45 = 3;
  v26 = sub_23D80E39C();
  v27 = v36;
  v28 = &v17[v23[7]];
  *v28 = v26;
  v28[8] = v29 & 1;
  v44 = 4;
  v17[v23[8]] = sub_23D80E3CC() & 1;
  v43 = 5;
  v17[v23[9]] = sub_23D80E3CC() & 1;
  sub_23D80D5BC();
  v42 = 6;
  sub_23D803DA4(&qword_27E2E52D0, MEMORY[0x277CC8C40]);
  sub_23D80E3AC();
  sub_23D7D0FB0(v39, &v17[v23[10]]);
  v41 = 7;
  v17[v23[11]] = sub_23D80E3CC() & 1;
  v40 = 8;
  v30 = sub_23D80E3CC();
  v31 = v23[13];
  (*(v27 + 8))(v38, v37);
  v17[v23[12]] = v30 & 1;
  *&v17[v31] = 0;
  sub_23D7A1264(v17, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23D7A12C8(v17);
}

uint64_t AXRTextContent.hash(into:)()
{
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E4820, MEMORY[0x277CC95F0]);

  return sub_23D80DD0C();
}

Swift::Void __swiftcall AXRTextContent.clearAXElement()()
{
  v1 = *(type metadata accessor for AXRTextContent() + 52);

  *(v0 + v1) = 0;
}

void *AXRTextContent.getAXElementForPagination()()
{
  v1 = type metadata accessor for AXRTextContent();
  if ((*(v0 + v1[11]) & 1) == 0 && *(v0 + v1[12]) != 1)
  {
    return 0;
  }

  v2 = *(v0 + v1[13]);
  if (v2)
  {
    v3 = v2;
  }

  return v2;
}

uint64_t AXRTextContent.hashValue.getter()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D802F84()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D80300C()
{
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E4820, MEMORY[0x277CC95F0]);

  return sub_23D80DD0C();
}

uint64_t sub_23D803090()
{
  sub_23D80E58C();
  sub_23D80D67C();
  sub_23D803DA4(&qword_27E2E4820, MEMORY[0x277CC95F0]);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

void _s23AccessibilityReaderData14AXRTextContentV25clearIntermediateElements2inySayACGz_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v4 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_12:
      v1 = sub_23D7CD054(v1);
    }

    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v6 = type metadata accessor for AXRTextContent();
      v7 = v1 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80)) + *(*(v6 - 1) + 72) * i;
      if ((*(v7 + v6[11]) & 1) == 0 && *(v7 + v6[12]) != 1)
      {
        v8 = v6[13];
        v9 = *(v7 + v8);
        *(v7 + v8) = 0;
      }
    }

    *a1 = v1;
  }
}

void *_s23AccessibilityReaderData14AXRTextContentV34getElementForPaginationInDirection_4fromSo9AXElementCSgSo11AXDirectionV_SayACGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextContent();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  v18 = *(a2 + 16);
  if (a1 != 2)
  {
    if (v18)
    {
      v21 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v22 = *(v15 + 72);
      while (1)
      {
        sub_23D7A1264(v21, v8);
        if (v8[v4[12]])
        {
          break;
        }

        sub_23D7A12C8(v8);
        v21 += v22;
        if (!--v18)
        {
          return 0;
        }
      }

      sub_23D7A1200(v8, v11);
      if ((v11[v4[11]] & 1) == 0 && v11[v4[12]] != 1 || (v24 = *&v11[v4[13]]) == 0)
      {
        v25 = 0;
        v17 = v11;
        goto LABEL_22;
      }

      v17 = v11;
      goto LABEL_20;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v20 = *(v15 + 72);
  while (1)
  {
    sub_23D7A1264(v19, v14);
    if (v14[v4[11]])
    {
      break;
    }

    sub_23D7A12C8(v14);
    v19 += v20;
    if (!--v18)
    {
      return 0;
    }
  }

  sub_23D7A1200(v14, v17);
  if ((v17[v4[11]] & 1) != 0 || v17[v4[12]] == 1)
  {
    v24 = *&v17[v4[13]];
    if (v24)
    {
LABEL_20:
      v25 = v24;
      v26 = v24;
      goto LABEL_22;
    }
  }

  v25 = 0;
LABEL_22:
  sub_23D7A12C8(v17);
  return v25;
}

unint64_t sub_23D803468()
{
  result = qword_27E2E52A0;
  if (!qword_27E2E52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E52A0);
  }

  return result;
}

unint64_t sub_23D8034BC()
{
  result = qword_27E2E52B0;
  if (!qword_27E2E52B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E52A8, &qword_23D8147E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E52B0);
  }

  return result;
}

unint64_t sub_23D803538()
{
  result = qword_27E2E52B8;
  if (!qword_27E2E52B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E43F0, &unk_23D811FD0);
    sub_23D803DA4(&qword_27E2E52C0, MEMORY[0x277CC8C40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E52B8);
  }

  return result;
}

uint64_t sub_23D803690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D80D67C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D8037D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D80D67C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23D80390C()
{
  sub_23D80D67C();
  if (v0 <= 0x3F)
  {
    sub_23D8039E8();
    if (v1 <= 0x3F)
    {
      sub_23D803A38();
      if (v2 <= 0x3F)
      {
        sub_23D803A90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D8039E8()
{
  if (!qword_27E2E52F0)
  {
    v0 = sub_23D80E15C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E52F0);
    }
  }
}

void sub_23D803A38()
{
  if (!qword_27E2E4B78)
  {
    sub_23D80D5BC();
    v0 = sub_23D80E15C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E4B78);
    }
  }
}

void sub_23D803A90()
{
  if (!qword_27E2E52F8)
  {
    sub_23D7936F0(255, &qword_27E2E4458, 0x277CE6BA0);
    v0 = sub_23D80E15C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E52F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AXRTextContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRTextContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D803C4C()
{
  result = qword_27E2E5300;
  if (!qword_27E2E5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5300);
  }

  return result;
}

unint64_t sub_23D803CA4()
{
  result = qword_27E2E5308;
  if (!qword_27E2E5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5308);
  }

  return result;
}

unint64_t sub_23D803CFC()
{
  result = qword_27E2E5310;
  if (!qword_27E2E5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E5310);
  }

  return result;
}

uint64_t sub_23D803D50()
{
  v0 = sub_23D80E36C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23D803DA4(unint64_t *a1, void (*a2)(uint64_t))
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

void static AXElement.currentApp.getter()
{
  v0 = [objc_opt_self() systemWideElement];
  if (!v0)
  {
    sub_23D7A0A78();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    return;
  }

  v1 = v0;
  v2 = [v0 systemApplication];
  if (!v2)
  {
    sub_23D7A0A78();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    return;
  }

  v3 = v2;
  v4 = [v2 currentApplications];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_23D80DEEC();

  v7 = sub_23D793588(v6);

  if (!v7)
  {
    goto LABEL_15;
  }

  if (v7 >> 62)
  {
    if (sub_23D80E31C())
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

LABEL_15:
    sub_23D7A0A78();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();

    return;
  }

LABEL_7:
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEECB80](0, v7);
    goto LABEL_10;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_10:

    return;
  }

  __break(1u);
}

void sub_23D803FF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_23D80404C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_23D804090(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_23D804128()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  type metadata accessor for AXRBlockManager();
  sub_23D8093D8(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
  v3 = v2;
  v4 = sub_23D80DA7C();

  return v4;
}

void *AXRTextStylingFormatter.__allocating_init(presetsManager:blockManager:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_beginAccess();
  type metadata accessor for AXRTextFormatterPresetsManager(0);
  sub_23D8093D8(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager);

  v3[2] = sub_23D80DA6C();
  v3[3] = v4;
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for AXRBlockManager();
  sub_23D8093D8(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
  v5 = a2;
  v3[4] = sub_23D80DA6C();
  v3[5] = v6;
  swift_endAccess();

  return v3;
}

void *AXRTextStylingFormatter.init(presetsManager:blockManager:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  type metadata accessor for AXRTextFormatterPresetsManager(0);
  sub_23D8093D8(&qword_27E2E46B8, type metadata accessor for AXRTextFormatterPresetsManager);

  v2[2] = sub_23D80DA6C();
  v2[3] = v4;
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for AXRBlockManager();
  sub_23D8093D8(&qword_27E2E49E0, type metadata accessor for AXRBlockManager);
  v5 = a2;
  v2[4] = sub_23D80DA6C();
  v2[5] = v6;
  swift_endAccess();

  return v2;
}

id sub_23D804464(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23D80DAAC();
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  *&v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v91 - v8;
  v10 = *MEMORY[0x277D76918];
  swift_beginAccess();
  v11 = *(v1 + 24);
  v12 = v10;

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v13 = *MEMORY[0x277D74418];
  v14 = *MEMORY[0x277D743F8];
  if (v104)
  {
    v15 = *MEMORY[0x277D743F8];
  }

  else
  {
    v15 = *MEMORY[0x277D74418];
  }

  v16 = *(v2 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v104)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v2 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v9;
  sub_23D80DA0C();

  swift_getKeyPath();
  v104 = a1;
  sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v19 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  swift_beginAccess();
  if (*(a1 + v19) == 1)
  {
    swift_getKeyPath();
    v99 = a1;
    sub_23D80D6FC();

    v20 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
    swift_beginAccess();
    v21 = MEMORY[0x277D76988];
    if ((*(v20 + 8) & 1) == 0)
    {
      if (*v20 == 2)
      {
        v21 = MEMORY[0x277D76A20];
      }

      if (*v20 == 1)
      {
        v21 = MEMORY[0x277D769A8];
      }
    }

    v22 = *v21;

    v23 = *(v2 + 24);

    sub_23D7A3CF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v24 = *MEMORY[0x277D743E8];
    if (v102)
    {
      v15 = *MEMORY[0x277D743E8];
    }

    else
    {
      v15 = v14;
    }

    v17 = 2;
    v25 = v22;
  }

  else
  {
    v25 = v12;
  }

  v26 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v27 = v26;
  if (v17)
  {
    v28 = [v26 fontDescriptorWithSymbolicTraits_];
    if (v28)
    {
      v29 = v28;

      v27 = v29;
    }
  }

  v30 = DynamicTypeSize.numerator(forTextStyle:)(v25);
  v31 = [objc_allocWithZone(MEMORY[0x277D74300]) init];
  v32 = *(v2 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v102 == 0x6D6574737953 && v103 == 0xE600000000000000)
  {

LABEL_25:
    v34 = *(v2 + 24);

    sub_23D7A3CF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    if (v102 == 1)
    {
      v35 = *(v2 + 24);

      sub_23D7A3CF0();

      swift_getKeyPath();
      swift_getKeyPath();
      v36 = v95;
      sub_23D80DA0C();

      v37 = sub_23D797A8C(v25, v15);

      v38 = v97;
      v39 = *(v96 + 8);
      v39(v36, v97);
      v39(v98, v38);
      return v37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4500, &qword_23D8100A0);
    inited = swift_initStackObject();
    v95 = xmmword_23D80FB00;
    *(inited + 16) = xmmword_23D80FB00;
    v42 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5330, &qword_23D815100);
    v43 = swift_initStackObject();
    v44 = MEMORY[0x277D74430];
    *(v43 + 16) = v95;
    v45 = v31;
    v46 = *v44;
    *(v43 + 32) = *v44;
    *(v43 + 40) = v15;
    v47 = v42;
    v48 = v46;
    v49 = sub_23D794040(v43);
    swift_setDeallocating();
    sub_23D790730(v43 + 32, &qword_27E2E5338, &qword_23D815108);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5340, &unk_23D815110);
    *(inited + 40) = v49;
    sub_23D793CE8(inited);
    swift_setDeallocating();
    sub_23D790730(inited + 32, &qword_27E2E4498, &qword_23D80FEE0);
    type metadata accessor for AttributeName(0);
    sub_23D8093D8(&qword_27E2E4370, type metadata accessor for AttributeName);
    v50 = sub_23D80DCEC();

    v51 = [v27 fontDescriptorByAddingAttributes_];

    v52 = [objc_opt_self() fontWithDescriptor:v51 size:v30];
    goto LABEL_29;
  }

  v33 = sub_23D80E4DC();

  if (v33)
  {
    goto LABEL_25;
  }

  v53 = *(v2 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  if (v102 == 0x6B726F592077654ELL && v103 == 0xE800000000000000)
  {
  }

  else
  {
    v54 = sub_23D80E4DC();

    if ((v54 & 1) == 0)
    {
      v68 = *(v2 + 24);

      sub_23D7A3CF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v100 = v102;
      v101 = v103;
      AXRFont.label.getter();

      v69 = sub_23D80DD4C();

      v70 = objc_opt_self();
      v71 = [v70 fontWithName:v69 size:v30];

      if (!v71)
      {
        (*(v96 + 8))(v98, v97);

        return v31;
      }

      *&v94 = v70;
      *&v95 = v31;
      v72 = [v71 fontDescriptor];
      v73 = v72;
      if (!v17 || (v74 = [v72 fontDescriptorWithSymbolicTraits_]) == 0)
      {
        v74 = v73;
      }

      v92 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4500, &qword_23D8100A0);
      v75 = swift_initStackObject();
      v93 = v73;
      v76 = v75;
      v91 = xmmword_23D80FB00;
      *(v75 + 16) = xmmword_23D80FB00;
      v77 = *MEMORY[0x277D74380];
      *(v75 + 32) = *MEMORY[0x277D74380];
      v78 = v75 + 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5330, &qword_23D815100);
      v79 = swift_initStackObject();
      v80 = MEMORY[0x277D74430];
      *(v79 + 16) = v91;
      v81 = *v80;
      *(v79 + 32) = *v80;
      *(v79 + 40) = v15;
      v82 = v77;
      v83 = v81;
      v84 = sub_23D794040(v79);
      swift_setDeallocating();
      sub_23D790730(v79 + 32, &qword_27E2E5338, &qword_23D815108);
      *(v76 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5340, &unk_23D815110);
      *(v76 + 40) = v84;
      sub_23D793CE8(v76);
      swift_setDeallocating();
      sub_23D790730(v78, &qword_27E2E4498, &qword_23D80FEE0);
      type metadata accessor for AttributeName(0);
      sub_23D8093D8(&qword_27E2E4370, type metadata accessor for AttributeName);
      v85 = sub_23D80DCEC();

      v86 = v92;
      v87 = [v92 fontDescriptorByAddingAttributes_];

      v88 = [v94 fontWithDescriptor:v87 size:v30];
      v89 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
      v90 = [v89 scaledFontForFont_];

      (*(v96 + 8))(v98, v97);
      return v90;
    }
  }

  v55 = [v27 fontDescriptorWithDesign_];
  if (!v55)
  {
    v52 = [objc_opt_self() fontWithDescriptor:v27 size:v30];

LABEL_29:
    (*(v96 + 8))(v98, v97);
    return v52;
  }

  v56 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4500, &qword_23D8100A0);
  v57 = swift_initStackObject();
  v94 = xmmword_23D80FB00;
  *(v57 + 16) = xmmword_23D80FB00;
  *&v95 = v31;
  v58 = *MEMORY[0x277D74380];
  *(v57 + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5330, &qword_23D815100);
  v59 = swift_initStackObject();
  v60 = MEMORY[0x277D74430];
  *(v59 + 16) = v94;
  v61 = *v60;
  *(v59 + 32) = *v60;
  *(v59 + 40) = v15;
  v62 = v58;
  v63 = v61;
  v64 = sub_23D794040(v59);
  swift_setDeallocating();
  sub_23D790730(v59 + 32, &qword_27E2E5338, &qword_23D815108);
  *(v57 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5340, &unk_23D815110);
  *(v57 + 40) = v64;
  sub_23D793CE8(v57);
  swift_setDeallocating();
  sub_23D790730(v57 + 32, &qword_27E2E4498, &qword_23D80FEE0);
  type metadata accessor for AttributeName(0);
  sub_23D8093D8(&qword_27E2E4370, type metadata accessor for AttributeName);
  v65 = sub_23D80DCEC();

  v66 = [v56 fontDescriptorByAddingAttributes_];

  v67 = [objc_opt_self() fontWithDescriptor:v66 size:v30];
  (*(v96 + 8))(v98, v97);
  return v67;
}

id sub_23D8053B4(uint64_t a1, void *a2)
{
  v3 = v2;
  v74 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v72 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v70 - v9;
  v79 = sub_23D80D6CC();
  v76 = *(v79 - 8);
  v10 = *(v76 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v70 - v13;
  v77 = sub_23D80DAAC();
  v14 = *(v77 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v77);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v80 = v18;
  swift_getKeyPath();
  v85 = a1;
  v78 = sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v19 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  swift_beginAccess();
  [v18 setBaseWritingDirection_];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  [v21 lineHeight];
  v23 = v22;

  v24 = [v20 preferredFontForTextStyle_];
  [v24 lineHeight];
  v26 = v25;

  swift_beginAccess();
  v27 = *(v3 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v28 = *(v3 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v29 = DynamicTypeSize.scaledSpacing(_:)(v84);
  (*(v14 + 8))(v17, v77);
  v77 = v3;
  v30 = *(v3 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  [v80 setLineHeightMultiple_];
  v31 = v23 + v29;
  swift_getKeyPath();
  v84 = *&a1;
  sub_23D80D6FC();
  v32 = v75;
  v33 = v76;

  v34 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D808ED4(a1 + v34, v32);
  v35 = *(v33 + 48);
  if (v35(v32, 1, v79) == 1)
  {
    sub_23D790730(v32, &qword_27E2E43F8, &qword_23D811650);
  }

  else
  {
    v36 = *(v33 + 32);
    v70 = v35;
    v37 = v73;
    v38 = v34;
    v39 = v79;
    v36(v73, v32, v79);
    v40 = sub_23D80D6DC();
    v41 = sub_23D80D6DC();
    v42 = v37;
    v35 = v70;
    v43 = v39;
    v34 = v38;
    (*(v33 + 8))(v42, v43);
    if (!(v40 | v41))
    {
      [v80 setParagraphSpacingBefore_];
    }
  }

  swift_getKeyPath();
  v83 = a1;
  sub_23D80D6FC();

  v44 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  swift_beginAccess();
  if (*(a1 + v44) != 1)
  {
    swift_getKeyPath();
    v82 = a1;
    sub_23D80D6FC();

    v55 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
    swift_beginAccess();
    if (*(a1 + v55) != 1)
    {
LABEL_25:
      [v80 setParagraphSpacing_];
      return v80;
    }

    [v80 setLineHeightMultiple_];
    v56 = sub_23D806BD4(a1);
    v60 = (v57 & 1) == 0 && (v58 = v56, swift_getKeyPath(), v81 = a1, sub_23D80D6FC(), , v59 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel, swift_beginAccess(), (*(v59 + 8) & 1) == 0) && v58 == *v59;
    swift_getKeyPath();
    v81 = a1;
    sub_23D80D6FC();

    v61 = v72;
    sub_23D808ED4(a1 + v34, v72);
    if (v35(v61, 1, v79) == 1)
    {
      sub_23D790730(v61, &qword_27E2E43F8, &qword_23D811650);
    }

    else
    {
      v62 = v76;
      v63 = v71;
      v64 = v79;
      (*(v76 + 32))(v71, v61, v79);
      v65 = sub_23D80D6DC();
      v66 = sub_23D80D6DC();
      (*(v62 + 8))(v63, v64);
      if (!(v65 | v66))
      {
LABEL_23:
        if (sub_23D806508(a1))
        {
          v31 = 0.0;
        }

        goto LABEL_25;
      }
    }

    v67 = 0.0;
    if (!v60)
    {
      swift_getKeyPath();
      v81 = a1;
      sub_23D80D6FC();

      v68 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
      swift_beginAccess();
      if ((*(v68 + 8) & 1) != 0 || *v68 != 1)
      {
        v67 = v31 + v31;
      }

      else
      {
        v67 = v26 + v29 + v26 + v29;
      }
    }

    [v80 setParagraphSpacingBefore_];
    goto LABEL_23;
  }

  v45 = sub_23D80DD4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5318, &qword_23D814C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D80FB00;
  v47 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_23D7936F0(0, &qword_27E2E5320, 0x277D74300);
  v48 = v74;
  *(inited + 40) = v74;
  v49 = v47;
  v50 = v48;
  sub_23D794130(inited);
  swift_setDeallocating();
  sub_23D790730(inited + 32, &qword_27E2E4488, &qword_23D814C70);
  type metadata accessor for Key(0);
  sub_23D8093D8(&qword_27E2E42A0, type metadata accessor for Key);
  v51 = sub_23D80DCEC();

  [v45 sizeWithAttributes_];
  v53 = v52;

  v54 = v80;
  [v80 setFirstLineHeadIndent_];
  [v54 setHeadIndent_];
  if ((sub_23D805EE8(a1) & 1) != 0 && (sub_23D806508(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  return v80;
}

uint64_t sub_23D805EE8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_23D80D6CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v38 = a1;
  sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v13 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D808ED4(a1 + v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_23D790730(v7, &qword_27E2E43F8, &qword_23D811650);
LABEL_24:
    v23 = 0;
    return v23 & 1;
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = sub_23D80D6DC();
  v15 = sub_23D80D6DC();
  swift_beginAccess();
  v16 = *(v2 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_23D80DA0C();

  v18 = *(v37 + 16);

  if (v14 >= v18)
  {
    goto LABEL_11;
  }

  v19 = *(v2 + 40);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v21 = v19;
  sub_23D80DA0C();

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v14 >= *(v37 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  KeyPath = *(v37 + 8 * v14 + 32);

  if (KeyPath >> 62)
  {
LABEL_28:
    v22 = sub_23D80E31C();
    goto LABEL_8;
  }

  v22 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (__OFSUB__(v22, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 == v22 - 1)
  {
    (*(v9 + 8))(v12, v8);
    v23 = 1;
    return v23 & 1;
  }

LABEL_11:
  v24 = *(v2 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v24;
  sub_23D80DA0C();

  v26 = *(v37 + 16);

  if (v14 >= v26)
  {
    goto LABEL_23;
  }

  v27 = *(v2 + 40);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v28 = v27;
  sub_23D80DA0C();

  if (v14 >= *(v37 + 16))
  {
    goto LABEL_30;
  }

  KeyPath = *(v37 + 8 * v14 + 32);

  if (!(KeyPath >> 62))
  {
    v29 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_31:
  v29 = sub_23D80E31C();
LABEL_15:

  if (__OFSUB__(v29, 1))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v15 >= v29 - 1)
  {
LABEL_23:
    (*(v9 + 8))(v12, v8);
    goto LABEL_24;
  }

  v30 = *(v2 + 40);
  v2 = swift_getKeyPath();
  swift_getKeyPath();
  v31 = v30;
  sub_23D80DA0C();

  KeyPath = v37;
  if (v14 >= *(v37 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v2 = v15 + 1;
  v14 = *(v37 + 8 * v14 + 32);

  KeyPath = 0x27E2E4000uLL;
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v33 = MEMORY[0x23EEECB80](v2, v14);
    goto LABEL_22;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v2 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v14 + 8 * v2 + 32);

LABEL_22:

    swift_getKeyPath();
    v34 = *(KeyPath + 2864);
    v37 = v33;
    sub_23D80D6FC();

    (*(v9 + 8))(v12, v8);
    v35 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
    swift_beginAccess();
    LOBYTE(v35) = *(v33 + v35);

    v23 = v35 ^ 1;
    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D806508(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_23D80D6CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v44 = a1;
  sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v13 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D808ED4(a1 + v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = sub_23D80D6DC();
    v15 = sub_23D80D6DC();
    swift_beginAccess();
    v16 = *(v2 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_23D80DA0C();

    v18 = *(v43 + 16);

    if (v14 >= v18)
    {
      goto LABEL_16;
    }

    v19 = *(v2 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
    sub_23D80DA0C();

    if (v14 < 0)
    {
      __break(1u);
    }

    else if (v14 < *(v43 + 16))
    {
      v21 = *(v43 + 8 * v14 + 32);

      if (!(v21 >> 62))
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

        if (__OFSUB__(v22, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        if (v15 < (v22 - 1))
        {
          v23 = *(v2 + 40);
          KeyPath = swift_getKeyPath();
          swift_getKeyPath();
          v25 = v23;
          sub_23D80DA0C();

          v26 = v43;
          if (v14 >= *(v43 + 16))
          {
            __break(1u);
          }

          else
          {
            KeyPath = v15 + 1;
            v14 = *(v43 + 8 * v14 + 32);

            v26 = 0x27E2E4000uLL;
            if ((v14 & 0xC000000000000001) == 0)
            {
              if (v15 < -1)
              {
                __break(1u);
              }

              else if (KeyPath < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v27 = *(v14 + 8 * KeyPath + 32);

LABEL_15:

                swift_getKeyPath();
                v28 = *(v26 + 2864);
LABEL_26:
                v43 = v27;
                sub_23D80D6FC();

                (*(v9 + 8))(v12, v8);
                v40 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
                swift_beginAccess();
                v41 = *(v27 + v40);

                return v41;
              }

              __break(1u);
              goto LABEL_40;
            }
          }

          v27 = MEMORY[0x23EEECB80](KeyPath, v14);
          goto LABEL_15;
        }

LABEL_16:
        v29 = *(v2 + 40);
        swift_getKeyPath();
        swift_getKeyPath();
        v30 = v29;
        sub_23D80DA0C();

        v31 = *(v43 + 16);

        v20 = 0x27E2E4000;
        if (v14 >= v31 - 1)
        {
          goto LABEL_27;
        }

        v32 = *(v2 + 40);
        v22 = v14 + 1;
        swift_getKeyPath();
        swift_getKeyPath();
        v33 = v32;
        sub_23D80DA0C();

        if ((v14 + 1) < *(v43 + 16))
        {
          v34 = *(v43 + 8 * v22 + 32);

          if (!(v34 >> 62))
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_20;
          }

LABEL_35:
          v35 = sub_23D80E31C();
LABEL_20:

          if (v35)
          {
            v36 = *(v2 + 40);
            v15 = swift_getKeyPath();
            swift_getKeyPath();
            v37 = v36;
            sub_23D80DA0C();

            if (v22 < *(v43 + 16))
            {
              v15 = *(v43 + 8 * v22 + 32);

              if ((v15 & 0xC000000000000001) == 0)
              {
                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v27 = *(v15 + 32);

                goto LABEL_25;
              }

LABEL_41:
              v27 = MEMORY[0x23EEECB80](0, v15);
LABEL_25:

              swift_getKeyPath();
              v39 = v20[358];
              goto LABEL_26;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_27:
          (*(v9 + 8))(v12, v8);
          return 0;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_32:
      v22 = sub_23D80E31C();
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_32;
  }

  sub_23D790730(v7, &qword_27E2E43F8, &qword_23D811650);
  return 0;
}

unint64_t sub_23D806BD4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_23D80D6CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = 0x27E2E4000;
  v47 = a1;
  v14 = sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v15 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D808ED4(a1 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_23D790730(v7, &qword_27E2E43F8, &qword_23D811650);
    return 0;
  }

  (*(v9 + 32))(v12, v7, v8);
  v16 = sub_23D80D6DC();
  v17 = sub_23D80D6DC();
  if (v17)
  {
    KeyPath = v17;
    swift_beginAccess();
    v19 = *(v2 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
    sub_23D80DA0C();

    v21 = *(v46 + 16);

    v44 = KeyPath - 1;
    if (KeyPath < 1 || v16 >= v21)
    {
      goto LABEL_29;
    }

    v22 = v14;
    v23 = *(v2 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v23;
    sub_23D80DA0C();

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v46 + 16))
    {
      v25 = *(v46 + 8 * v16 + 32);

      if (!(v25 >> 62))
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_10;
      }

LABEL_34:
      v26 = sub_23D80E31C();
LABEL_10:

      if (v26 >= KeyPath)
      {
        v27 = *(v2 + 40);
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = v27;
        sub_23D80DA0C();

        if (v16 >= *(v46 + 16))
        {
          __break(1u);
        }

        else
        {
          v16 = *(v46 + 8 * v16 + 32);

          v22 = 0x27E2E4000uLL;
          if ((v16 & 0xC000000000000001) == 0)
          {
            if (KeyPath <= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v28 = *(v16 + 8 * v44 + 32);

LABEL_15:

              swift_getKeyPath();
              v29 = *(v22 + 2864);
LABEL_27:
              v46 = v28;
              sub_23D80D6FC();

              v39 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
              swift_beginAccess();
              if (*(v28 + v39) == 1)
              {
                swift_getKeyPath();
                v45 = v28;
                sub_23D80D6FC();

                (*(v9 + 8))(v12, v8);
                v40 = v28 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
                swift_beginAccess();
                v41 = *v40;
                v42 = *(v40 + 8);

                return v41;
              }

              (*(v9 + 8))(v12, v8);

              return 0;
            }

            __break(1u);
            goto LABEL_38;
          }
        }

        v28 = MEMORY[0x23EEECB80](v44, v16);
        goto LABEL_15;
      }

LABEL_29:
      (*(v9 + 8))(v12, v8);
      return 0;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v16 <= 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v30 = *(v2 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v30;
  sub_23D80DA0C();

  v32 = *(v46 + 16);

  if (v16 >= v32)
  {
    goto LABEL_29;
  }

  v33 = *(v2 + 40);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v34 = v33;
  sub_23D80DA0C();

  if (v16 > *(v46 + 16))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    v35 = sub_23D80E31C();
    if (!v35)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  KeyPath = *(v46 + 8 * v16 + 24);

  if (KeyPath >> 62)
  {
    goto LABEL_39;
  }

  v35 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
LABEL_40:
    (*(v9 + 8))(v12, v8);

    return 0;
  }

LABEL_21:
  v36 = __OFSUB__(v35, 1);
  result = v35 - 1;
  if (v36)
  {
    __break(1u);
    goto LABEL_42;
  }

  if ((KeyPath & 0xC000000000000001) != 0)
  {
LABEL_42:
    v28 = MEMORY[0x23EEECB80](result, KeyPath);
    goto LABEL_26;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(KeyPath + 8 * result + 32);

LABEL_26:

    swift_getKeyPath();
    v38 = v13[358];
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

id sub_23D8072F4()
{
  v132 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v106 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v105 = &v92 - v5;
  v109 = sub_23D80D6CC();
  v6 = *(v109 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v109);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_23D80DD4C();
  v13 = [v11 initWithString_];

  v107 = v10;
  [v10 appendAttributedString_];
  swift_beginAccess();
  v14 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  v108 = v9;
  sub_23D80DA0C();

  v128 = v0;
  v16 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_23D80DA0C();

  width = v131.width;
  v19 = *(*&v131.width + 16);
  v93 = v6;
  v95 = v19;
  if (v19)
  {
    v20 = 0;
    v96 = *&v131.width + 32;
    v101 = (v6 + 16);
    v104 = *MEMORY[0x277D740A8];
    v103 = *MEMORY[0x277D74118];
    v127 = *MEMORY[0x277D740D0];
    v99 = *MEMORY[0x277D740C0];
    v100 = (v6 + 56);
    v98 = *MEMORY[0x277D74200];
    v126 = xmmword_23D80FB00;
    v102 = v13;
    v94 = v131.width;
    while (1)
    {
      if (v20 >= *(*&width + 16))
      {
        goto LABEL_58;
      }

      v97 = v20;
      v23 = *(v96 + 8 * v20);
      if (v23 >> 62)
      {
        if (v23 < 0)
        {
          v89 = *(v96 + 8 * v20);
        }

        v24 = sub_23D80E31C();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_beginAccess();
      if (v24)
      {
        break;
      }

LABEL_3:
      v21 = v97 + 1;

      v20 = v21;
      v22 = v21 == v95;
      width = v94;
      if (v22)
      {
        goto LABEL_54;
      }
    }

    v25 = 0;
    v113 = v23 & 0xFFFFFFFFFFFFFF8;
    v114 = v23 & 0xC000000000000001;
    v111 = v23;
    v112 = v23 + 32;
    v110 = v24;
    while (1)
    {
      if (v114)
      {
        v26 = COERCE_DOUBLE(MEMORY[0x23EEECB80](v25, v23));
        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v25 >= *(v113 + 16))
        {
          goto LABEL_57;
        }

        v26 = *(v112 + 8 * v25);

        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          goto LABEL_56;
        }
      }

      v117 = v28;
      v29 = sub_23D808C1C(*&v26);
      v30 = [v29 length];
      v31 = sub_23D804464(*&v26);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5318, &qword_23D814C68);
      inited = swift_initStackObject();
      *(inited + 16) = v126;
      v33 = v104;
      *(inited + 32) = v104;
      *(inited + 64) = sub_23D7936F0(0, &qword_27E2E5320, 0x277D74300);
      *(inited + 40) = v31;
      v34 = v33;
      v35 = v31;
      v125 = v35;
      sub_23D794130(inited);
      swift_setDeallocating();
      sub_23D790730(inited + 32, &qword_27E2E4488, &qword_23D814C70);
      type metadata accessor for Key(0);
      v37 = v36;
      v118 = sub_23D8093D8(&qword_27E2E42A0, type metadata accessor for Key);
      v121 = v37;
      v38 = sub_23D80DCEC();

      v39 = v30;
      v120 = v30;
      [v29 addAttributes:v38 range:{0, v30}];

      v40 = sub_23D8053B4(*&v26, v35);
      v41 = swift_initStackObject();
      *(v41 + 16) = v126;
      v42 = v103;
      *(v41 + 32) = v103;
      v43 = sub_23D7936F0(0, &qword_27E2E5328, 0x277D74240);
      *(v41 + 64) = v43;
      *(v41 + 40) = v40;
      v119 = v42;
      v44 = v40;
      sub_23D794130(v41);
      swift_setDeallocating();
      sub_23D790730(v41 + 32, &qword_27E2E4488, &qword_23D814C70);
      v45 = sub_23D80DCEC();

      [v29 addAttributes:v45 range:{0, v39}];

      swift_getKeyPath();
      v46 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
      v131.width = v26;
      v123 = sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
      v124 = v46;
      sub_23D80D6FC();

      v47 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
      swift_beginAccess();
      v115 = v47;
      v116 = v44;
      if (*(*&v26 + v47))
      {
        v48 = 2;
      }

      else
      {
        v48 = 0;
      }

      [v44 mutableCopy];
      sub_23D80E1CC();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v49 = v130[0];
      [v130[0] setAlignment_];
      v50 = swift_initStackObject();
      *(v50 + 16) = v126;
      *(v50 + 32) = v119;
      *(v50 + 64) = v43;
      *(v50 + 40) = v49;
      v122 = v49;
      sub_23D794130(v50);
      swift_setDeallocating();
      sub_23D790730(v50 + 32, &qword_27E2E4488, &qword_23D814C70);
      v51 = v128;
      v52 = sub_23D80DCEC();

      v53 = v120;
      [v29 addAttributes:v52 range:{0, v120}];

      [v125 pointSize];
      v54 = *(v51 + 24);

      sub_23D7A3CF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v55 = sub_23D80D74C();
      v56 = v29;
      v57 = v53;
      [v29 addAttribute:v127 value:v55 range:{0, v53}];

      v58 = sub_23D804464(*&v26);
      LOWORD(v130[0]) = 0;
      v129 = 32;
      if (CTFontGetGlyphsForCharacters(v58, &v129, v130, 1))
      {
        v131.width = 0.0;
        v131.height = 0.0;
        CTFontGetAdvancesForGlyphs(v58, kCTFontOrientationDefault, v130, &v131, 1);
      }

      v59 = v128;
      v60 = *(v128 + 24);

      sub_23D7A3CF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v61 = *(v59 + 24);

      sub_23D7A3CF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (LOBYTE(v131.width))
      {
        v62 = sub_23D80E4DC();

        if (v62)
        {
        }

        else
        {
          v63 = [v29 string];

          if (!v63)
          {
            sub_23D80DD7C();
            v63 = sub_23D80DD4C();
          }

          if (v57 >= 1)
          {
            v64 = v57;
            v65 = 0;
            while (1)
            {
              v66 = sub_23D80DD4C();
              v67 = [v63 rangeOfString:v66 options:0 range:{v65, v64}];
              v69 = v68;

              if (v67 == sub_23D80D43C())
              {
                goto LABEL_30;
              }

              v70 = sub_23D80D74C();
              [v29 addAttribute:v127 value:v70 range:{v67, v69}];

              v65 = &v67[v69];
              v64 = v57 - v65;
              if (__OFSUB__(v57, v65))
              {
                break;
              }

              if (v64 <= 0)
              {
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
          }

LABEL_30:
        }
      }

      else
      {
      }

      v71 = [objc_opt_self() labelColor];
      v72 = *(v128 + 24);

      sub_23D7A3CF0();

      sub_23D7EFCE4();

      v73 = sub_23D80DB9C();

      if (v73)
      {
        v74 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

        v71 = v74;
      }

      swift_getKeyPath();
      v131.width = v26;
      sub_23D80D6FC();

      v75 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
      swift_beginAccess();
      v76 = v105;
      sub_23D808ED4(*&v26 + v75, v105);
      v77 = v106;
      v78 = v109;
      (*v101)(v106, v108, v109);
      (*v100)(v77, 0, 1, v78);
      v79 = sub_23D808F44(v76, v77);
      sub_23D790730(v77, &qword_27E2E43F8, &qword_23D811650);
      sub_23D790730(v76, &qword_27E2E43F8, &qword_23D811650);
      v80 = *(v128 + 40);
      LOBYTE(v77) = AXRBlockManager.isSpeaking()();

      if ((v77 & 1) == 0)
      {
        v81 = *(v128 + 40);
        swift_getKeyPath();
        swift_getKeyPath();
        v82 = v81;
        sub_23D80DA0C();

        if (LOBYTE(v131.width) > 1u || LOBYTE(v131.width))
        {
          v83 = sub_23D80E4DC();

          if ((v83 & 1) == 0)
          {
            [v56 addAttribute:v99 value:v71 range:{0, v57}];
            v84 = v110;
            v23 = v111;
            goto LABEL_45;
          }
        }

        else
        {
        }
      }

      v84 = v110;
      if (!v79)
      {
        goto LABEL_42;
      }

      if (v79 != 1)
      {
        v86 = [v71 colorWithAlphaComponent_];
        [v56 addAttribute:v99 value:v86 range:{0, v57}];

        goto LABEL_44;
      }

      v85 = *(v128 + 24);

      sub_23D7A3CF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      if (LOBYTE(v131.width) == 1)
      {
        sub_23D808354(v56, v71, 0, v57, *&v26, 1);
      }

      else
      {
LABEL_42:
        [v56 addAttribute:v99 value:v71 range:{0, v57}];
      }

LABEL_44:
      v23 = v111;
LABEL_45:
      swift_getKeyPath();
      v131.width = v26;
      sub_23D80D6FC();

      if (*(*&v26 + v115) == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
        v87 = swift_allocObject();
        *(v87 + 16) = v126;
        *(v87 + 32) = 3;
        v88 = sub_23D80DECC();

        [v56 addAttribute:v98 value:v88 range:{0, v57}];
      }

      [v107 appendAttributedString_];

      v25 = v117;
      v13 = v102;
      if (v117 == v84)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_54:

  (*(v93 + 8))(v108, v109);
  v90 = *MEMORY[0x277D85DE8];
  return v107;
}

void sub_23D808354(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  v10 = *(v6 + 24);

  sub_23D7A3CF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C();

  v11 = sub_23D80DB9C();

  if (v11)
  {
    v51 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  }

  else
  {
    v51 = 0;
  }

  swift_getKeyPath();
  sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v12 = (a5 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange);
  swift_beginAccess();
  v13 = 0;
  v14 = 0;
  v15 = *(v12 + 16);
  if ((v15 & 1) == 0)
  {
    v17 = *v12;
    v16 = v12[1];
    swift_getKeyPath();
    sub_23D80D6FC();

    v18 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
    swift_beginAccess();
    if (*(a5 + v18) == 1)
    {
      v46 = a4;
      v47 = sub_23D80DDBC();
      swift_getKeyPath();
      sub_23D80D6FC();

      v19 = (a5 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
      swift_beginAccess();
      v20 = *v19;
      v21 = v19[1];
      swift_getKeyPath();

      sub_23D80D6FC();

      v22 = sub_23D80DE1C();

      swift_getKeyPath();
      sub_23D80D6FC();

      v23 = *v19;
      v24 = v19[1];

      v14 = sub_23D80DE1C();

      v13 = v22 + v47;
      if (__OFADD__(v22, v47))
      {
        goto LABEL_33;
      }

      a4 = v46;
    }

    else
    {
      swift_getKeyPath();
      sub_23D80D6FC();

      v25 = (a5 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
      swift_beginAccess();
      v53 = *v25;
      v54 = v25[1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4390, &qword_23D811B50);
      sub_23D790598();
      sub_23D7904FC();
      v13 = sub_23D80E14C();
      v14 = v26;
    }
  }

  swift_beginAccess();
  v27 = *(v7 + 40);
  v28 = AXRBlockManager.isSpeaking()();

  if (!v28)
  {
    v29 = *(v7 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v29;
    sub_23D80DA0C();

    if (v53 > 2u)
    {
    }

    else
    {
      v31 = sub_23D80E4DC();

      if ((v31 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    [a1 addAttribute:*MEMORY[0x277D740C0] value:a2 range:{a3, a4, v46}];
    goto LABEL_31;
  }

LABEL_12:
  if (v15)
  {
    v32 = *MEMORY[0x277D740C0];
    v33 = [a2 colorWithAlphaComponent_];
    [a1 addAttribute:v32 value:v33 range:{a3, a4}];

LABEL_31:
    return;
  }

  if ((a6 & 1) == 0)
  {
    v34 = *MEMORY[0x277D740C0];
    v35 = [a2 colorWithAlphaComponent_];
    [a1 addAttribute:v34 value:v35 range:{a3, a4}];
  }

  if (v13 >= 1)
  {
    [a1 addAttribute:*MEMORY[0x277D740C0] value:a2 range:{0, v13}];
  }

  if (v51)
  {
    v36 = *(v7 + 24);

    v37 = v51;
    sub_23D7A3CF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C();

    v38 = *MEMORY[0x277D740C0];
    v39 = a1;
    v40 = *MEMORY[0x277D740C0];
    if (v53)
    {
      if (v53 == 1)
      {
        [a1 addAttribute:v40 value:a2 range:{v13, v14}];
        v41 = *MEMORY[0x277D74068];
        v42 = [v37 colorWithAlphaComponent_];
        [a1 addAttribute:v41 value:v42 range:{v13, v14}];

LABEL_27:
        goto LABEL_28;
      }

      [a1 addAttribute:v40 value:a2 range:{v13, v14}];
      v43 = *MEMORY[0x277D741F0];
      v44 = sub_23D80DFEC();
      [a1 addAttribute:v43 value:v44 range:{v13, v14}];

      v40 = *MEMORY[0x277D741E8];
      v39 = a1;
    }

    [v39 addAttribute:v40 value:v37 range:{v13, v14, v46}];
    goto LABEL_27;
  }

  v38 = *MEMORY[0x277D740C0];
  [a1 addAttribute:*MEMORY[0x277D740C0] value:a2 range:{v13, v14}];
LABEL_28:
  if (!__OFSUB__(a4, v14 + v13))
  {
    if (a4 - (v14 + v13) >= 1)
    {
      v45 = [a2 colorWithAlphaComponent_];
      [a1 addAttribute:v38 value:v45 range:{v14 + v13, a4 - (v14 + v13)}];
    }

    goto LABEL_31;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t AXRTextStylingFormatter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AXRTextStylingFormatter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_23D808C1C(uint64_t a1)
{
  swift_getKeyPath();
  sub_23D8093D8(&qword_27E2E4400, type metadata accessor for AXRTextBlock);
  sub_23D80D6FC();

  v2 = (a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  swift_getKeyPath();

  sub_23D80D6FC();

  v5 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  swift_beginAccess();
  if (*(a1 + v5) == 1)
  {

    swift_getKeyPath();
    sub_23D80D6FC();

    v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
    swift_beginAccess();
    LODWORD(v6) = *(a1 + v6);
    swift_getKeyPath();
    sub_23D80D6FC();

    MEMORY[0x23EEEC700](*v2, v2[1]);
  }

  MEMORY[0x23EEEC700](10, 0xE100000000000000);

  v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v8 = sub_23D80DD4C();

  v9 = [v7 initWithString_];

  return v9;
}

uint64_t sub_23D808ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D808F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_23D80D6CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  sub_23D808ED4(a1, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v20 = v10;
LABEL_5:
    sub_23D790730(v20, &qword_27E2E43F8, &qword_23D811650);
    return 2;
  }

  v21 = v10;
  v22 = *(v12 + 32);
  v22(v18, v21, v11);
  sub_23D808ED4(a2, v8);
  if (v19(v8, 1, v11) == 1)
  {
    (*(v12 + 8))(v18, v11);
    v20 = v8;
    goto LABEL_5;
  }

  v22(v16, v8, v11);
  v24 = sub_23D80D6DC();
  v25 = sub_23D80D6DC();
  v26 = sub_23D80D6DC();
  v27 = sub_23D80D6DC();
  v28 = *(v12 + 8);
  v28(v16, v11);
  v28(v18, v11);
  if (v24 < v26)
  {
    return 0;
  }

  if (v26 < v24)
  {
    return 2;
  }

  if (v25 < v27)
  {
    return 0;
  }

  if (v27 >= v25)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_23D809220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_23D8093D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D809428()
{
  v0 = sub_23D80D97C();
  __swift_allocate_value_buffer(v0, qword_27E2E5348);
  __swift_project_value_buffer(v0, qword_27E2E5348);
  return sub_23D80D96C();
}

uint64_t AXRDataLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v2 = sub_23D80D97C();
  v3 = __swift_project_value_buffer(v2, qword_27E2E5348);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t AXRDataLog.setter(uint64_t a1)
{
  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v2 = sub_23D80D97C();
  v3 = __swift_project_value_buffer(v2, qword_27E2E5348);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*AXRDataLog.modify())()
{
  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v0 = sub_23D80D97C();
  __swift_project_value_buffer(v0, qword_27E2E5348);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D80974C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23D794258(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_23D7AD6C8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_23D790730(a1, &qword_27E2E45A0, &qword_23D810320);
    sub_23D80C37C(a2, a3, v10);

    return sub_23D790730(v10, &qword_27E2E45A0, &qword_23D810320);
  }

  return result;
}

id sub_23D80981C()
{
  result = [objc_allocWithZone(type metadata accessor for AXRNowPlayingManager()) init];
  qword_27E2E5360 = result;
  return result;
}

id AXRNowPlayingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXRNowPlayingManager.shared.getter()
{
  if (qword_27E2E4250 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2E5360;

  return v1;
}

id AXRNowPlayingManager.init()()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_nowPlayingInfo;
  *&v0[v1] = sub_23D793ACC(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_commandCenter;
  *&v0[v2] = [objc_opt_self() sharedCommandCenter];
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
  v4 = type metadata accessor for AXRArticle();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = &v0[OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName];
  v6 = type metadata accessor for AXRNowPlayingManager();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v0;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_23D809A0C();

  return v7;
}

void sub_23D809A0C()
{
  v0 = [objc_opt_self() sharedCommandCenter];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = [v0 playCommand];
  v39 = sub_23D80CCC4;
  v40 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23D80A1D4;
  v38 = &block_descriptor_45;
  v3 = _Block_copy(&aBlock);

  v4 = [v2 addTargetWithHandler_];
  _Block_release(v3);

  sub_23D80E1CC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v5 = [v0 pauseCommand];
  v39 = sub_23D80CD00;
  v40 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23D80A1D4;
  v38 = &block_descriptor_48;
  v6 = _Block_copy(&aBlock);

  v7 = [v5 0x278BEB8F7];
  _Block_release(v6);

  sub_23D80E1CC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v8 = [v0 togglePlayPauseCommand];
  v39 = sub_23D80CD3C;
  v40 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23D80A1D4;
  v38 = &block_descriptor_51;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 0x278BEB8F7];
  _Block_release(v9);

  sub_23D80E1CC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v11 = [v0 changePlaybackPositionCommand];
  v39 = sub_23D80CD6C;
  v40 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23D80A1D4;
  v38 = &block_descriptor_54;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 0x278BEB8F7];
  _Block_release(v12);

  sub_23D80E1CC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_23D7936F0(0, &qword_27E2E45F0, 0x277CCABB0);
  v14 = sub_23D80E12C();
  v15 = [v0 skipForwardCommand];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45E0, &unk_23D810340);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23D810130;
  *(v16 + 32) = v14;
  v17 = v14;
  v18 = sub_23D80DECC();

  [v15 setPreferredIntervals_];

  v19 = [v0 skipBackwardCommand];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23D810130;
  *(v20 + 32) = v17;
  v21 = v17;
  v22 = sub_23D80DECC();

  [v19 setPreferredIntervals_];

  v23 = [v0 skipForwardCommand];
  v39 = sub_23D80CD74;
  v40 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23D80A1D4;
  v38 = &block_descriptor_57;
  v24 = _Block_copy(&aBlock);

  v25 = [v23 addTargetWithHandler_];
  _Block_release(v24);

  sub_23D80E1CC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v26 = [v0 skipBackwardCommand];
  v39 = sub_23D80CD7C;
  v40 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23D80A1D4;
  v38 = &block_descriptor_60;
  v27 = _Block_copy(&aBlock);

  v28 = [v26 addTargetWithHandler_];
  _Block_release(v27);

  sub_23D80E1CC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v29 = [v0 playCommand];
  [v29 setEnabled_];

  v30 = [v0 pauseCommand];
  [v30 setEnabled_];

  v31 = [v0 togglePlayPauseCommand];
  [v31 setEnabled_];

  v32 = [v0 changePlaybackPositionCommand];
  [v32 setEnabled_];

  v33 = [v0 skipForwardCommand];
  [v33 setEnabled_];

  v34 = [v0 skipBackwardCommand];
  [v34 setEnabled_];
}

uint64_t sub_23D80A1D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_23D80A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = sub_23D80DF8C();
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
      sub_23D80DF6C();
      v16 = v14;
      v17 = sub_23D80DF5C();
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v16;
      sub_23D7C2104(0, 0, v10, a4, v18);
    }

    v20 = [objc_opt_self() defaultCenter];
    [v20 setPlaybackState_];
  }

  return 0;
}

uint64_t sub_23D80A3E0(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 200;
  }

  v3 = v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = a1;
    [v3 positionTime];
    sub_23D80BE3C(v7);

    return 0;
  }

  return result;
}

uint64_t sub_23D80A488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = AXRBlockManager.currentSpeechTime.getter();
      AXRBlockManager.seek(to:)(v11 + 10.0);
      swift_getKeyPath();
      swift_getKeyPath();
      v15[32] = 1;
      v12 = v10;
      sub_23D80DA1C();
      v13 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
      swift_beginAccess();
      sub_23D80C864(v8 + v13, v6);
      swift_unknownObjectWeakAssign();
      sub_23D80C864(v6, v4);
      swift_beginAccess();
      sub_23D7CEC14(v4, v8 + v13);
      swift_endAccess();
      sub_23D80A798();

      sub_23D790730(v6, &qword_27E2E4A90, &unk_23D815170);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_23D80A664(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }

  return 0;
}

uint64_t sub_23D80A6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  swift_unknownObjectWeakAssign();
  sub_23D80C864(a2, v7);
  v8 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
  swift_beginAccess();
  sub_23D7CEC14(v7, v2 + v8);
  swift_endAccess();
  return sub_23D80A798();
}

uint64_t sub_23D80A798()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25[-v3];
  v5 = type metadata accessor for AXRArticle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
  swift_beginAccess();
  sub_23D80C864(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23D790730(v4, &qword_27E2E4A90, &unk_23D815170);
    return sub_23D80B03C();
  }

  else
  {
    sub_23D7CD4AC(v4, v9);
    v12 = sub_23D80AA1C();
    v13 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_nowPlayingInfo;
    swift_beginAccess();
    v14 = *(v0 + v13);
    *(v0 + v13) = v12;

    v15 = objc_opt_self();
    v16 = [v15 defaultCenter];
    v17 = *(v0 + v13);

    v18 = sub_23D80DCEC();

    [v16 setNowPlayingInfo_];

    v19 = [v15 defaultCenter];
    [v19 setPlaybackState_];

    v20 = &v9[*(v5 + 20)];
    v22 = *v20;
    v21 = v20[1];

    sub_23D7B4844(v9);
    v23 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName);
    v24 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName + 8);
    *v23 = v22;
    v23[1] = v21;
  }
}

unint64_t sub_23D80AA1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v71 - v3;
  v5 = type metadata accessor for AXRArticle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D793ACC(MEMORY[0x277D84F90]);
  v76 = v10;
  v11 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
  swift_beginAccess();
  sub_23D80C864(v0 + v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23D790730(v4, &qword_27E2E4A90, &unk_23D815170);
  }

  else
  {
    sub_23D7CD4AC(v4, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *MEMORY[0x277CD58B8];
      v15 = sub_23D80DD7C();
      v17 = v16;
      v18 = 0x800000023D815CB0;
      if (qword_27E2E4228 != -1)
      {
        swift_once();
      }

      v19 = 0xD00000000000001FLL;
      if (qword_27E2E4610)
      {
        v20 = qword_27E2E4610;
        v21 = sub_23D80DD4C();
        v22 = sub_23D80DD4C();
        v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

        v19 = sub_23D80DD7C();
        v18 = v24;
      }

      v25 = MEMORY[0x277D837D0];
      v75 = MEMORY[0x277D837D0];
      *&v74 = v19;
      *(&v74 + 1) = v18;
      sub_23D794258(&v74, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v10;
      sub_23D7AD6C8(v73, v15, v17, isUniquelyReferenced_nonNull_native);

      v27 = v72;
      v76 = v72;
      v28 = *MEMORY[0x277CD56E8];
      v29 = sub_23D80DD7C();
      v31 = v30;
      v32 = &v9[*(v5 + 24)];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = sub_23D80DD4C();
      v36 = AXAppNameForBundleId();

      if (v36)
      {
        v37 = sub_23D80DD7C();
        v39 = v38;

        v75 = v25;
        *&v74 = v37;
        *(&v74 + 1) = v39;
        sub_23D794258(&v74, v73);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v27;
        sub_23D7AD6C8(v73, v29, v31, v40);

        v76 = v72;
      }

      else
      {
        sub_23D80C37C(v29, v31, &v74);

        sub_23D790730(&v74, &qword_27E2E45A0, &qword_23D810320);
      }

      v41 = *MEMORY[0x277CD5CE0];
      v42 = sub_23D80DD7C();
      v44 = v43;
      v45 = &v13[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
      swift_beginAccess();
      v46 = *v45;
      if (v45[4])
      {
        LODWORD(v46) = dword_23D8152CC[v46];
      }

      v75 = MEMORY[0x277D83A90];
      LODWORD(v74) = v46;
      sub_23D794258(&v74, v73);
      v47 = v76;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v47;
      sub_23D7AD6C8(v73, v42, v44, v48);

      v49 = v71;
      v76 = v71;
      v50 = *MEMORY[0x277CD5CC8];
      v51 = sub_23D80DD7C();
      v53 = v52;
      v54 = AXRBlockManager.currentSpeechTime.getter();
      v55 = MEMORY[0x277D839F8];
      v75 = MEMORY[0x277D839F8];
      *&v74 = v54;
      sub_23D794258(&v74, v73);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v49;
      sub_23D7AD6C8(v73, v51, v53, v56);

      v57 = v71;
      v76 = v71;
      v58 = *MEMORY[0x277CD57E8];
      v59 = sub_23D80DD7C();
      v61 = v60;
      v62 = AXRBlockManager.totalCharacterCount.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C();

      v75 = v55;
      *&v74 = v62 / (*&v74 * 5.0 / 60.0);
      sub_23D794258(&v74, v73);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v57;
      sub_23D7AD6C8(v73, v59, v61, v63);

      v64 = v71;
      v76 = v71;
      v65 = *MEMORY[0x277CD5CD8];
      v66 = sub_23D80DD7C();
      v68 = v67;
      v75 = MEMORY[0x277D83E88];
      *&v74 = 1;
      sub_23D794258(&v74, v73);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v64;
      sub_23D7AD6C8(v73, v66, v68, v69);

      v10 = v71;
    }

    sub_23D7B4844(v9);
  }

  return v10;
}

uint64_t sub_23D80B03C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 setNowPlayingInfo_];

  v7 = [v5 defaultCenter];
  [v7 setPlaybackState_];

  swift_unknownObjectWeakAssign();
  v8 = type metadata accessor for AXRArticle();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
  swift_beginAccess();
  sub_23D7CEC14(v4, v0 + v9);
  swift_endAccess();
  v10 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName);
  v11 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName + 8);
  *v10 = 0;
  v10[1] = 0;
}

void sub_23D80B1C0(double a1)
{
  v2 = v1;
  v4 = *MEMORY[0x277CD5CE0];
  v5 = sub_23D80DD7C();
  v7 = v6;
  v12[3] = MEMORY[0x277D839F8];
  *v12 = a1;
  v8 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_nowPlayingInfo;
  swift_beginAccess();
  sub_23D80974C(v12, v5, v7);
  swift_endAccess();
  v9 = [objc_opt_self() defaultCenter];
  v10 = *(v2 + v8);

  v11 = sub_23D80DCEC();

  [v9 setNowPlayingInfo_];
}

void sub_23D80B2DC()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 setPlaybackState_];
}

uint64_t sub_23D80B340()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 setPlaybackState_];

  return sub_23D80B03C();
}

uint64_t sub_23D80B3A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v53 = &v40 - v2;
  v55 = sub_23D80DC7C();
  v57 = *(v55 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23D80DCAC();
  v56 = *(v52 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v52);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D80DCCC();
  v54 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  [v17 setPlaybackState_];

  v18 = [v16 defaultCenter];
  [v18 setNowPlayingInfo_];

  sub_23D80BAEC(0);
  v48 = sub_23D7936F0(0, &qword_27E2E45B8, 0x277D85C78);
  v19 = sub_23D80E0BC();
  sub_23D80DCBC();
  sub_23D80DCDC();
  v20 = *(v9 + 8);
  v42 = v9 + 8;
  v20(v13, v8);
  v63 = sub_23D80BA48;
  v64 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v49 = &v61;
  v61 = sub_23D79FA1C;
  v62 = &block_descriptor_2;
  v21 = _Block_copy(&aBlock);
  sub_23D80DC9C();
  v58 = MEMORY[0x277D84F90];
  v46 = sub_23D7A1144();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45C8, &qword_23D811F70);
  v47 = sub_23D7A119C();
  v22 = v51;
  v23 = v55;
  sub_23D80E1DC();
  MEMORY[0x23EEEC9C0](v15, v7, v22, v21);
  _Block_release(v21);

  v24 = *(v57 + 8);
  v57 += 8;
  v44 = v24;
  v24(v22, v23);
  v25 = *(v56 + 8);
  v56 += 8;
  v43 = v25;
  v26 = v52;
  v25(v7, v52);
  v27 = v54;
  v41 = v20;
  v20(v15, v54);
  v28 = sub_23D80E0BC();
  sub_23D80DCBC();
  sub_23D80DCDC();
  v20(v13, v27);
  v29 = swift_allocObject();
  v30 = v50;
  *(v29 + 16) = v50;
  v63 = sub_23D80C924;
  v64 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_23D79FA1C;
  v62 = &block_descriptor_3;
  v31 = _Block_copy(&aBlock);
  v32 = v30;
  sub_23D80DC9C();
  v58 = MEMORY[0x277D84F90];
  v33 = v55;
  sub_23D80E1DC();
  MEMORY[0x23EEEC9C0](v15, v7, v22, v31);
  _Block_release(v31);

  v44(v22, v33);
  v43(v7, v26);
  v41(v15, v54);

  swift_unknownObjectWeakAssign();
  v34 = type metadata accessor for AXRArticle();
  v35 = v53;
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
  swift_beginAccess();
  sub_23D7CEC14(v35, &v32[v36]);
  swift_endAccess();
  v37 = &v32[OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName];
  v38 = *&v32[OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_previousAppName + 8];
  *v37 = 0;
  *(v37 + 1) = 0;
}

void sub_23D80BA48()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultCenter];
  [v1 setNowPlayingInfo_];

  v2 = [v0 defaultCenter];
  [v2 setPlaybackState_];
}

void sub_23D80BAEC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_commandCenter);
  v4 = [v3 playCommand];
  [v4 setEnabled_];

  v5 = [v3 pauseCommand];
  [v5 setEnabled_];

  v6 = [v3 togglePlayPauseCommand];
  [v6 setEnabled_];

  v7 = [v3 changePlaybackPositionCommand];
  [v7 setEnabled_];

  v8 = [v3 skipForwardCommand];
  [v8 setEnabled_];

  v9 = [v3 skipBackwardCommand];
  [v9 setEnabled_];
}

void sub_23D80BC44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = [v5 playbackState];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (v6 == 1)
    {
      v9 = &unk_23D811AD0;
    }

    else
    {
      v9 = &unk_23D811AC0;
    }

    v10 = sub_23D80DF8C();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_23D80DF6C();
    v11 = v8;
    v12 = sub_23D80DF5C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_23D7C2104(0, 0, v3, v9, v13);
  }

  if (v6 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = [v4 defaultCenter];
  [v16 setPlaybackState_];
}

uint64_t sub_23D80BE3C(Swift::Double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    AXRBlockManager.seek(to:)(a1);
    swift_getKeyPath();
    swift_getKeyPath();
    v15[24] = 1;
    v13 = v12;
    sub_23D80DA1C();
    v14 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
    swift_beginAccess();
    sub_23D80C864(v2 + v14, v10);
    swift_unknownObjectWeakAssign();
    sub_23D80C864(v10, v8);
    swift_beginAccess();
    sub_23D7CEC14(v8, v2 + v14);
    swift_endAccess();
    sub_23D80A798();

    return sub_23D790730(v10, &qword_27E2E4A90, &unk_23D815170);
  }

  return result;
}

uint64_t sub_23D80BFE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-v11];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = AXRBlockManager.currentSpeechTime.getter();
    v16 = v15 + -10.0;
    if (v15 + -10.0 < 0.0)
    {
      v16 = 0.0;
    }

    if (v15 >= 10.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = sub_23D80DF8C();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    sub_23D80DF6C();
    v19 = v14;
    v20 = sub_23D80DF5C();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    *(v21 + 32) = v19;
    *(v21 + 40) = v17;
    sub_23D7C2104(0, 0, v12, &unk_23D815210, v21);

    swift_getKeyPath();
    swift_getKeyPath();
    v25[24] = 1;
    v23 = v19;
    sub_23D80DA1C();
    v24 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
    swift_beginAccess();
    sub_23D80C864(v1 + v24, v8);
    swift_unknownObjectWeakAssign();
    sub_23D80C864(v8, v6);
    swift_beginAccess();
    sub_23D7CEC14(v6, v1 + v24);
    swift_endAccess();
    sub_23D80A798();

    return sub_23D790730(v8, &qword_27E2E4A90, &unk_23D815170);
  }

  return result;
}

id AXRNowPlayingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXRNowPlayingManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_23D80C37C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23D7AC5A4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D7ADBA8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23D794258((*(v12 + 56) + 32 * v9), a3);
    sub_23D80C4C4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_23D80C420@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23D7AC760(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D7ADD4C();
      v11 = v13;
    }

    sub_23D7AF764(*(v11 + 48) + 40 * v8);
    sub_23D794258((*(v11 + 56) + 32 * v8), a2);
    sub_23D80C674(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23D80C4C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D80E1EC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_23D80E58C();

      sub_23D80DDAC();
      v14 = sub_23D80E5CC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23D80C674(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D80E1EC() + 1) & ~v5;
    do
    {
      sub_23D7AF708(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_23D80E1FC();
      result = sub_23D7AF764(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t type metadata accessor for AXRNowPlayingManager()
{
  result = qword_27E2E5390;
  if (!qword_27E2E5390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D80C864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D80C8EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23D80C954()
{
  sub_23D80CB50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23D80CB50()
{
  if (!qword_27E2E53A0)
  {
    type metadata accessor for AXRArticle();
    v0 = sub_23D80E15C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E53A0);
    }
  }
}

uint64_t sub_23D80CBB0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D7CECB0;

  return sub_23D7CB218(v7, a1, v4, v5, v6);
}

uint64_t sub_23D80CC8C()
{
  MEMORY[0x23EEED840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D80CDAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7A0C28;

  return sub_23D7C53E4(a1, v4, v5, v6);
}

unint64_t AXRAutomationNotification.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000026;
  }

  else
  {
    result = 0xD00000000000002BLL;
  }

  *v0;
  return result;
}

AccessibilityReaderData::AXRAutomationNotification_optional __swiftcall AXRAutomationNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D80E36C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D80CF44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000026;
  }

  else
  {
    v4 = 0xD00000000000002BLL;
  }

  if (v3)
  {
    v5 = "tElement";
  }

  else
  {
    v5 = "erModeNextReaderBlockSpoken";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000026;
  }

  else
  {
    v7 = 0xD00000000000002BLL;
  }

  if (*a2)
  {
    v8 = "erModeNextReaderBlockSpoken";
  }

  else
  {
    v8 = "tElement";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23D80E4DC();
  }

  return v10 & 1;
}

unint64_t sub_23D80CFF4()
{
  result = qword_27E2E53A8;
  if (!qword_27E2E53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E53A8);
  }

  return result;
}

uint64_t sub_23D80D048()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D80D0C8()
{
  *v0;
  sub_23D80DDAC();
}

uint64_t sub_23D80D134()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D80D1B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23D80E36C();

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

void sub_23D80D210(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v1)
  {
    v3 = "erModeNextReaderBlockSpoken";
  }

  else
  {
    v3 = "tElement";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for AXRAutomationNotification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AXRAutomationNotification(uint64_t result, unsigned int a2, unsigned int a3)
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

void _axEventHandler_cold_1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_23D78A000, a2, OS_LOG_TYPE_ERROR, "info unexpectedly nil inside AXObserver callback! AXNotification: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}