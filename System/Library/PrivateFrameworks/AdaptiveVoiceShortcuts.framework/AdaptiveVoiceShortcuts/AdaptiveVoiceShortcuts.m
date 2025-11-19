uint64_t sub_23E7F1280(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23E82E2AC();
  }

  else
  {
    sub_23E82E22C();
  }

  return sub_23E82E2BC();
}

uint64_t sub_23E7F12E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23E82E2AC();
    sub_23E82E2BC();
    sub_23E7F51D8();
  }

  else
  {
    sub_23E82E22C();
    sub_23E82E2BC();
    sub_23E7F5598(&qword_27E35A1E8, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_23E7F13DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A240, &qword_23E82FFE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F144C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F14D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7F1590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E7F164C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A390, &qword_23E830190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F16BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A390, &qword_23E830190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7F173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7F17F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E7F19A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F19D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E7F1A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7F1ADC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E7F1B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A488, &qword_23E830338);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A480, &qword_23E830330);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A478, &qword_23E830328);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A470, &qword_23E830320);
  sub_23E7F5640(&qword_27E35A4A0, &qword_27E35A470, &qword_23E830320);
  swift_getOpaqueTypeConformance2();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23E7F1D40()
{
  v1 = (type metadata accessor for SiriRequestView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 80);

  v11 = v0 + v3 + v1[10];
  v12 = sub_23E82DF7C();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7F1E74()
{
  v1 = (type metadata accessor for SiriRequestView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 80);

  v12 = v0 + v3 + v1[10];
  v13 = sub_23E82DF7C();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7F20A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23E7F2168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E82DDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23E7F22C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7F2400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23E7F2468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB30, &unk_23E830D90);
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

uint64_t sub_23E7F2534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB30, &unk_23E830D90);
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

uint64_t sub_23E7F2600()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2640()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F26AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABA8, &qword_23E830EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7F2714()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F274C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABC0, &unk_23E830EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F27BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ABA8, &qword_23E830EC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
  sub_23E7F5640(&qword_27E35ABB8, &qword_27E35ABA8, &qword_23E830EC8);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23E7F28B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F28E8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7F2940()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2990()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23E7F2AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E82DDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23E7F2BB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F2BEC()
{
  MEMORY[0x23EF158F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F2C24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23E7F2C78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7F2CB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2CE8()
{
  v1 = sub_23E82E05C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E7F2DAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F2DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82DDDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23E7F2F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E82DDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23E7F3074()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7F30B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E82E36C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F3108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E38C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F3134(uint64_t *a1)
{
  v1 = *a1;

  return sub_23E82E39C();
}

uint64_t sub_23E7F31AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E32C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F31D8(uint64_t *a1)
{
  v1 = *a1;

  return sub_23E82E33C();
}

uint64_t sub_23E7F3284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA8, &qword_23E831EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23E7F3700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id convertToShortLPCMBufFromFloatLPCMBuf(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = v2 >> 2;
  v10 = 1191181824;
  __C = 1.0;
  __B = -1.0;
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v2 & 0xFFFFFFFFFFFFFFFCLL];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v3];
  v6 = [v1 bytes];

  vDSP_vclip(v6, 1, &__B, &__C, [v4 bytes], 1, v3);
  MEMORY[0x23EF15A10]([v4 bytes], 1, &v10, objc_msgSend(v4, "bytes"), 1, v3);
  vDSP_vfix16([v4 bytes], 1, objc_msgSend(v5, "bytes"), 1, v3);

  return v5;
}

void AXPIBridgePerformWarm()
{
  v0 = [getAXPISystemActionHelperClass() sharedInstance];
  [v0 warm];
}

id getAXPISystemActionHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXPISystemActionHelperClass_softClass;
  v7 = getAXPISystemActionHelperClass_softClass;
  if (!getAXPISystemActionHelperClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXPISystemActionHelperClass_block_invoke;
    v3[3] = &unk_278C5C1C0;
    v3[4] = &v4;
    __getAXPISystemActionHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E7F3CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXPIBridgePerformActionForSystemAction(void *a1)
{
  v1 = a1;
  v2 = [getAXPISystemActionHelperClass() sharedInstance];
  [v2 performActionForSystemAction:v1];
}

Class __getAXPISystemActionHelperClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityPhysicalInteractionLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C5C1E0;
    v7 = 0;
    AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXPISystemActionHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXPISystemActionHelperClass_block_invoke_cold_1();
  }

  getAXPISystemActionHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityPhysicalInteractionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E7F4238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v47 = a3;
  v4 = sub_23E82DF7C();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v14 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v15 = qword_27E35D0B8;
    v16 = qword_27E35D0B8;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v15 = 0;
  }

  v17 = v15;
  v18 = sub_23E82DCDC();
  v40 = v19;
  v41 = v18;

  sub_23E81E284(0xD000000000000016);
  if (!v14)
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v39 = sub_23E82DCDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A218, &qword_23E831780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23E82FEF0;
  v43 = a2;
  v21 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v22 = type metadata accessor for AdaptiveVoiceShortcut();
  v23 = (v21 + *(v22 + 20));
  v24 = *v23;
  v25 = v23[1];
  v26 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v27 = sub_23E7F5328();
  *(v20 + 64) = v27;
  if (v25)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v25)
  {
    v29 = v25;
  }

  *(v20 + 32) = v28;
  *(v20 + 40) = v29;
  sub_23E7F537C(v21 + *(v22 + 28), v13);
  v30 = type metadata accessor for AvailableShortcutAction();
  if ((*(*(v30 - 8) + 48))(v13, 1, v30) == 1)
  {

    sub_23E7F55E0(v13, &qword_27E35A210, &unk_23E82FFD0);
    v31 = (v20 + 72);
    *(v20 + 96) = v26;
    *(v20 + 104) = v27;
LABEL_17:
    *v31 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_18;
  }

  v32 = &v13[*(v30 + 20)];
  v33 = *v32;
  v34 = *(v32 + 1);

  sub_23E7F543C(v13);
  v31 = (v20 + 72);
  *(v20 + 96) = v26;
  *(v20 + 104) = v27;
  if (!v34)
  {
    goto LABEL_17;
  }

  *v31 = v33;
LABEL_18:
  *(v20 + 80) = v34;
  sub_23E82EA7C();

  v39 = &v38;
  MEMORY[0x28223BE20](v35);
  v48 = MEMORY[0x277D84F90];
  sub_23E7F5598(&qword_27E35A228, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0);
  v36 = v44;
  sub_23E82ECAC();
  sub_23E82E8EC();
  (*(v45 + 8))(v36, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A240, &qword_23E82FFE8);
  sub_23E7F5640(&qword_27E35A248, &qword_27E35A240, &qword_23E82FFE8);
  return sub_23E82DF5C();
}

uint64_t sub_23E7F4890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A240, &qword_23E82FFE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  *v10 = sub_23E82E48C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A250, &qword_23E82FFF0);
  sub_23E7F49B0(a1, a2, &v10[*(v11 + 44)]);
  sub_23E7F13DC(v10, a3);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_23E7F49B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a1;
  v55 = a2;
  v64 = a3;
  v4 = sub_23E82DFBC();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A258, &qword_23E82FFF8);
  v8 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A260, &unk_23E830000);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v59 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v52 - v15;
  v16 = sub_23E82DFAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A270, &qword_23E830010);
  v66 = *(v56 - 8);
  v26 = v66[8];
  v27 = MEMORY[0x28223BE20](v56);
  v65 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v52 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  v32 = v55;
  *(v31 + 24) = v55;

  sub_23E82E8BC();
  sub_23E82E15C();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  sub_23E7F5598(&qword_27E35A280, MEMORY[0x277CE76F0]);
  v53 = v30;
  sub_23E82E6EC();
  (*(v17 + 8))(v20, v16);
  (*(v22 + 8))(v25, v21);
  v33 = swift_allocObject();
  *(v33 + 16) = v54;
  *(v33 + 24) = v32;

  sub_23E82E8BC();
  v34 = sub_23E82E5EC();
  v35 = v58;
  v36 = &v10[*(v57 + 36)];
  *v36 = v34;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  sub_23E82E16C();
  sub_23E7F54E0();
  sub_23E7F5598(&qword_27E35A290, MEMORY[0x277CE7708]);
  v37 = v67;
  v38 = v62;
  sub_23E82E6EC();
  (*(v63 + 8))(v35, v38);
  sub_23E7F55E0(v10, &qword_27E35A258, &qword_23E82FFF8);
  v39 = v65;
  v40 = v66[2];
  v41 = v30;
  v42 = v56;
  v40(v65, v41, v56);
  v44 = v59;
  v43 = v60;
  v45 = *(v60 + 16);
  v46 = v61;
  v45(v59, v37, v61);
  v47 = v64;
  v40(v64, v39, v42);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A298, &qword_23E830018);
  v45(&v47[*(v48 + 48)], v44, v46);
  v49 = *(v43 + 8);
  v49(v67, v46);
  v50 = v66[1];
  v50(v53, v42);
  v49(v44, v46);
  return (v50)(v65, v42);
}

uint64_t sub_23E7F50C4@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_23E7F51D8()
{
  result = qword_27E35A1E0;
  if (!qword_27E35A1E0)
  {
    sub_23E82E2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A1E0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23E7F5278(uint64_t a1, int a2)
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

uint64_t sub_23E7F52C0(uint64_t result, int a2, int a3)
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

unint64_t sub_23E7F5328()
{
  result = qword_27E35A220;
  if (!qword_27E35A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A220);
  }

  return result;
}

uint64_t sub_23E7F537C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23E7F543C(uint64_t a1)
{
  v2 = type metadata accessor for AvailableShortcutAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E7F54E0()
{
  result = qword_27E35A288;
  if (!qword_27E35A288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A258, &qword_23E82FFF8);
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A288);
  }

  return result;
}

uint64_t sub_23E7F5598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E7F55E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E7F5640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E7F5688()
{
  v27 = sub_23E82DC9C();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v27);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() shortcutsNamesDictionary];
  v6 = sub_23E82EA3C();

  v7 = *(v6 + 16);
  if (!v7)
  {

    v8 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (v11)
    {
LABEL_4:
      v26 = v0;
      v28 = MEMORY[0x277D84F90];
      sub_23E800930(0, v11, 0);
      v12 = v28;
      v13 = (v1 + 8);
      v25[1] = v8;
      v14 = v8 + 5;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v29[0] = sub_23E82EA9C();
        v29[1] = v17;

        sub_23E82DC8C();
        sub_23E7F84B0();
        v18 = sub_23E82EC6C();
        v20 = v19;

        (*v13)(v4, v27);

        v28 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_23E800930((v21 > 1), v22 + 1, 1);
          v12 = v28;
        }

        *(v12 + 16) = v22 + 1;
        v23 = v12 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v14 += 2;
        --v11;
      }

      while (v11);

      v0 = v26;
      goto LABEL_11;
    }

LABEL_10:

    v12 = MEMORY[0x277D84F90];
LABEL_11:
    v24 = *(v0 + 16);
    *(v0 + 16) = v12;
  }

  v8 = sub_23E7F86E0(*(v6 + 16), 0);
  v9 = sub_23E7F89B4(v29, v8 + 4, v7, v6);
  result = sub_23E7F8B64();
  if (v9 == v7)
  {
    v11 = v8[2];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E7F5914()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for AVSCommandNameView()
{
  result = qword_27E35A2B8;
  if (!qword_27E35A2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E7F59E4()
{
  sub_23E7F5AE8();
  if (v0 <= 0x3F)
  {
    sub_23E7F5B78();
    if (v1 <= 0x3F)
    {
      sub_23E7F5C68(319, &qword_27E35A2E8);
      if (v2 <= 0x3F)
      {
        sub_23E7F5C10();
        if (v3 <= 0x3F)
        {
          sub_23E7F5C68(319, &qword_27E35A2F8);
          if (v4 <= 0x3F)
          {
            sub_23E7F5CB4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23E7F5AE8()
{
  if (!qword_27E35A2C8)
  {
    type metadata accessor for AVSCommandNameViewModel();
    sub_23E7F8B70(&qword_27E35A2D0, v0, type metadata accessor for AVSCommandNameViewModel);
    v1 = sub_23E82E1AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35A2C8);
    }
  }
}

void sub_23E7F5B78()
{
  if (!qword_27E35A2D8)
  {
    type metadata accessor for AVSCoordinatorObject(255);
    sub_23E7F8B70(&qword_27E35A2E0, 255, type metadata accessor for AVSCoordinatorObject);
    v0 = sub_23E82E26C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35A2D8);
    }
  }
}

void sub_23E7F5C10()
{
  if (!qword_27E35A2F0)
  {
    v0 = sub_23E82E14C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35A2F0);
    }
  }
}

void sub_23E7F5C68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23E82E8AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23E7F5CB4()
{
  if (!qword_27E35A300)
  {
    sub_23E82DF7C();
    v0 = sub_23E82E8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35A300);
    }
  }
}

uint64_t sub_23E7F5D18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AVSCommandNameViewModel();
  result = sub_23E82E07C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F5D70()
{
  type metadata accessor for AVSCommandNameViewModel();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_23E7F5688();
  return v0;
}

uint64_t sub_23E7F5DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v3 = qword_27E35D0B8;
    v4 = qword_27E35D0B8;
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v3 = 0;
  }

  v5 = v3;
  sub_23E82DCDC();

  if (!v2)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  sub_23E82DCDC();

  v6 = *(type metadata accessor for AVSCommandNameView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
  v7 = sub_23E82E89C();
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A328, &qword_23E830138);
  sub_23E7F83F8();
  return sub_23E82DF5C();
}

uint64_t sub_23E7F6090(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandNameView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E7F82F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E7F835C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_23E82E8BC();
}

uint64_t sub_23E7F61BC(uint64_t a1)
{
  v1 = *(a1 + 32) + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(v4);
}

uint64_t sub_23E7F622C@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23E7F6340(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  return sub_23E82E11C();
}

double sub_23E7F63A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_23E82E48C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A348, &qword_23E830148);
  sub_23E7F643C(a1 + *(v2 + 44));
  v3 = sub_23E82E61C();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A328, &qword_23E830138) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_23E7F643C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v135 = a1;
  v131 = sub_23E82E28C();
  v126 = *(v131 - 8);
  v3 = *(v126 + 64);
  MEMORY[0x28223BE20](v131);
  v113 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AVSCommandNameView();
  v115 = *(v5 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v137 = v7;
  v112 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_23E82E1DC();
  v109 = *(v110 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v103 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A350, &qword_23E830150);
  v108 = *(v107 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  v12 = &v99 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A358, &qword_23E830158);
  v114 = *(v111 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v111);
  v15 = &v99 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A360, &qword_23E830160);
  v116 = *(v128 - 8);
  v16 = *(v116 + 64);
  MEMORY[0x28223BE20](v128);
  v136 = &v99 - v17;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A368, &qword_23E830168);
  v132 = *(v133 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v124 = &v99 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A370, &qword_23E830170);
  v122 = *(v125 - 8);
  v20 = *(v122 + 64);
  MEMORY[0x28223BE20](v125);
  v119 = &v99 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A378, &qword_23E830178);
  v22 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v130 = &v99 - v23;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A380, &qword_23E830180);
  v24 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v129 = &v99 - v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A388, &qword_23E830188);
  v26 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v123 = &v99 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A390, &qword_23E830190);
  v28 = *(*(v121 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v121);
  v134 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v118 = &v99 - v32;
  MEMORY[0x28223BE20](v31);
  v138 = &v99 - v33;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v34 = qword_27E35D0B8;
  v100 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v35 = qword_27E35D0B8;
  }

  else
  {
    v34 = [objc_opt_self() mainBundle];
    v35 = 0;
  }

  v99 = v35;
  v36 = sub_23E82DCDC();
  v38 = v37;

  v106 = v2[5];
  v105 = v2[6];
  v104 = v2[7];
  *&v139 = v106;
  *(&v139 + 1) = v105;
  *&v140 = v104;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E89C();
  v101 = v2;
  *&v146 = v36;
  *(&v146 + 1) = v38;
  sub_23E7F84B0();
  sub_23E82E96C();
  v39 = v103;
  sub_23E82E1CC();
  v40 = sub_23E7F5640(&qword_27E35A3A8, &qword_27E35A350, &qword_23E830150);
  v41 = v15;
  v42 = v107;
  sub_23E82E6FC();
  (*(v109 + 8))(v39, v110);
  (*(v108 + 8))(v12, v42);
  v43 = v2;
  v44 = v112;
  sub_23E7F82F0(v43, v112);
  v45 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v46 = swift_allocObject();
  sub_23E7F835C(v44, v46 + v45);
  v47 = v113;
  sub_23E82E27C();
  *&v146 = v42;
  *(&v146 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v111;
  sub_23E82E7DC();

  (*(v126 + 8))(v47, v131);
  (*(v114 + 8))(v41, v49);
  *&v146 = v106;
  *(&v146 + 1) = v105;
  v147 = v104;
  sub_23E82E87C();
  v146 = v139;
  v50 = v101;
  sub_23E7F82F0(v101, v44);
  v51 = swift_allocObject();
  sub_23E7F835C(v44, v51 + v45);
  *&v139 = v49;
  *(&v139 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x277D837F8];
  v54 = v124;
  v55 = v128;
  v56 = MEMORY[0x277D837D0];
  v57 = v136;
  sub_23E82E7CC();

  (*(v116 + 8))(v57, v55);
  v58 = *(v50 + 72);
  v59 = *(v50 + 80);
  LOBYTE(v146) = *(v50 + 64);
  *(&v146 + 1) = v58;
  LOBYTE(v147) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  sub_23E82E12C();
  *&v146 = v55;
  *(&v146 + 1) = v56;
  v147 = v52;
  v148 = v53;
  swift_getOpaqueTypeConformance2();
  v60 = v119;
  v61 = v133;
  sub_23E82E79C();

  (*(v132 + 8))(v54, v61);
  LOBYTE(v40) = sub_23E82E5CC();
  v62 = v130;
  (*(v122 + 32))(v130, v60, v125);
  v63 = &v62[*(v117 + 36)];
  *v63 = v40;
  *(v63 + 8) = 0u;
  *(v63 + 24) = 0u;
  v63[40] = 1;
  v64 = objc_opt_self();
  v65 = [v64 tertiarySystemFillColor];
  v66 = sub_23E82E7EC();
  LOBYTE(v61) = sub_23E82E5CC();
  v67 = v62;
  v68 = v129;
  sub_23E7F8764(v67, v129, &qword_27E35A378, &qword_23E830178);
  v69 = v68 + *(v127 + 36);
  *v69 = v66;
  *(v69 + 8) = v61;
  v70 = v123;
  v71 = &v123[*(v120 + 36)];
  sub_23E82DFCC();
  sub_23E7F8764(v68, v70, &qword_27E35A380, &qword_23E830180);
  KeyPath = swift_getKeyPath();
  v73 = v70;
  v74 = v118;
  sub_23E7F8764(v73, v118, &qword_27E35A388, &qword_23E830188);
  v75 = v74 + *(v121 + 36);
  *v75 = KeyPath;
  *(v75 + 8) = 1;
  sub_23E7F8764(v74, v138, &qword_27E35A390, &qword_23E830190);
  v76 = *(v50 + 96);
  LOBYTE(v146) = *(v50 + 88);
  *(&v146 + 1) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E87C();
  v137 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  if (v139 == 1)
  {
    sub_23E82E43C();
    if (!v100)
    {
      v85 = [objc_opt_self() mainBundle];
    }

    v86 = v99;
    v137 = sub_23E82E68C();
    v77 = v87;
    v78 = v88;
    LOBYTE(v146) = v89 & 1;
    v90 = [v64 secondaryLabelColor];
    v80 = sub_23E82E7EC();
    v84 = v146;
    v82 = sub_23E82E66C();
    v81 = swift_getKeyPath();
    v83 = swift_getKeyPath();
    v79 = sub_23E7F78C0;
  }

  v91 = v134;
  sub_23E7F164C(v138, v134);
  v92 = v135;
  sub_23E7F164C(v91, v135);
  v93 = v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B8, &qword_23E8301D8) + 48);
  v94 = v137;
  *&v139 = v137;
  *(&v139 + 1) = v77;
  *&v140 = v84;
  *(&v140 + 1) = v78;
  v141 = v79;
  v142 = 0uLL;
  *&v143 = v80;
  *(&v143 + 1) = v81;
  *&v144 = v82;
  *(&v144 + 1) = v83;
  v145 = 0;
  *(v93 + 96) = 0;
  v95 = v140;
  *v93 = v139;
  *(v93 + 16) = v95;
  v96 = v142;
  *(v93 + 32) = v141;
  *(v93 + 48) = v96;
  v97 = v144;
  *(v93 + 64) = v143;
  *(v93 + 80) = v97;
  sub_23E7F87CC(&v139, &v146);
  sub_23E7F16BC(v138);
  *&v146 = v94;
  *(&v146 + 1) = v77;
  v147 = v84;
  v148 = v78;
  v149 = v79;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = v80;
  v154 = v81;
  v155 = v82;
  v156 = v83;
  v157 = 0;
  sub_23E7F883C(&v146);
  return sub_23E7F16BC(v91);
}

uint64_t sub_23E7F747C(uint64_t a1)
{
  v2 = sub_23E82DC9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 96);
  LOBYTE(v25) = *(a1 + 88);
  v26 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  result = sub_23E82E87C();
  if ((v23 & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v25 = v9;
    v26 = v10;
    v27 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
    sub_23E82E87C();
    v13 = v23;
    v12 = v24;

    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = *(a1 + 32);
      v25 = v9;
      v26 = v10;
      v27 = v11;
      sub_23E82E87C();
      v25 = v23;
      v26 = v24;
      sub_23E82DC8C();
      sub_23E7F84B0();
      v16 = sub_23E82EC6C();
      v18 = v17;
      (*(v3 + 8))(v6, v2);

      v19 = v15 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
      swift_beginAccess();
      v20 = (v19 + *(type metadata accessor for AdaptiveVoiceShortcut() + 20));
      v21 = v20[1];
      *v20 = v16;
      v20[1] = v18;

      return sub_23E810118();
    }
  }

  return result;
}

uint64_t sub_23E7F7678(uint64_t *a1)
{
  v2 = sub_23E82DC9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[7];
  v22 = *(a1 + 5);
  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();
  v22 = v21;
  sub_23E82DC8C();
  sub_23E7F84B0();
  sub_23E82EC6C();
  (*(v3 + 8))(v6, v2);

  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  type metadata accessor for AVSCommandNameViewModel();
  sub_23E7F8B70(&qword_27E35A2D0, v11, type metadata accessor for AVSCommandNameViewModel);
  v12 = *(sub_23E82E18C() + 16);

  v13 = sub_23E82EA9C();
  v15 = v14;

  *&v22 = v13;
  *(&v22 + 1) = v15;
  v20 = &v22;
  v16 = sub_23E7F8908(sub_23E7F8B0C, v19, v12);

  v17 = a1[12];
  LOBYTE(v22) = *(a1 + 88);
  *(&v22 + 1) = v17;
  LOBYTE(v21) = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  return sub_23E82E88C();
}

uint64_t sub_23E7F78C0()
{
  v0 = sub_23E82E9BC();
  v20 = *(v0 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E82E9EC();
  v18 = *(v4 - 8);
  v19 = v4;
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E82EA0C();
  v16 = *(v8 - 8);
  v17 = v8;
  v9 = *(v16 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E7F88A4();
  v12 = sub_23E82EC0C();
  sub_23E82E9FC();
  aBlock[4] = sub_23E7F7C0C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);
  sub_23E82E9DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E7F8B70(&qword_27E35A3D0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E7F5640(&qword_27E35A3E0, &qword_27E35A3D8, &qword_23E830410);
  sub_23E82ECAC();
  MEMORY[0x23EF14C90](v11, v7, v3, v13);
  _Block_release(v13);

  (*(v20 + 8))(v3, v0);
  (*(v18 + 8))(v7, v19);
  return (*(v16 + 8))(v11, v17);
}

void sub_23E7F7C0C()
{
  v0 = *MEMORY[0x277D76438];
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v2 = qword_27E35D0B8;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  v3 = v1;
  sub_23E82DCDC();

  argument = sub_23E82EA5C();

  UIAccessibilityPostNotification(v0, argument);
}

uint64_t sub_23E7F7D48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_23E82DF7C();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  *a3 = sub_23E7F5D70;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  type metadata accessor for AVSCoordinatorObject(0);
  sub_23E7F8B70(&qword_27E35A2E0, 255, type metadata accessor for AVSCoordinatorObject);
  *(a3 + 24) = sub_23E82E24C();
  *(a3 + 32) = v14;
  v25 = a1;
  v26 = a2;
  sub_23E82E86C();
  v15 = v28;
  *(a3 + 40) = v27;
  *(a3 + 56) = v15;
  *(a3 + 64) = sub_23E82E13C() & 1;
  *(a3 + 72) = v16;
  *(a3 + 80) = v17 & 1;
  LOBYTE(v25) = 0;
  sub_23E82E86C();
  v18 = *(&v27 + 1);
  *(a3 + 88) = v27;
  *(a3 + 96) = v18;
  v19 = *(type metadata accessor for AVSCommandNameView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3F0, &unk_23E830520);
  v20 = *(v7 + 72);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23E830030;
  sub_23E82DF6C();
  *&v27 = v22;
  sub_23E7F8B70(&qword_27E35A228, 255, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0);
  sub_23E82ECAC();
  (*(v8 + 16))(v24, v13, v6);
  sub_23E82E86C();
  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_23E7F8068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = *(a1 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A308, &unk_23E830110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_23E7F5DB4();
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  sub_23E7F5640(&qword_27E35A310, &qword_27E35A308, &unk_23E830110);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  v9 = v14;
  sub_23E82E7BC();
  (*(v5 + 8))(v8, v4);
  sub_23E7F82F0(v2, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = swift_allocObject();
  sub_23E7F835C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A318, &qword_23E830120);
  v13 = (v9 + *(result + 36));
  *v13 = sub_23E7F83C0;
  v13[1] = v11;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_23E7F82F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVSCommandNameView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F835C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVSCommandNameView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7F83F8()
{
  result = qword_27E35A330;
  if (!qword_27E35A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A328, &qword_23E830138);
    sub_23E7F5640(&qword_27E35A338, &qword_27E35A340, &qword_23E830140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A330);
  }

  return result;
}

unint64_t sub_23E7F84B0()
{
  result = qword_27E35A3A0;
  if (!qword_27E35A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A3A0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AVSCommandNameView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  sub_23E7F8354();
  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  v12 = *(v0 + v3 + 96);

  v13 = v0 + v3 + v1[11];
  v14 = sub_23E82DF7C();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7F866C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AVSCommandNameView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void *sub_23E7F86E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3E8, &qword_23E830220);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_23E7F8764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E7F87CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3C0, &qword_23E8301E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7F883C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3C0, &qword_23E8301E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E7F88A4()
{
  result = qword_27E35A3C8;
  if (!qword_27E35A3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35A3C8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E7F8908(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_23E7F89B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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

uint64_t sub_23E7F8B0C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23E82EF0C() & 1;
  }
}

uint64_t sub_23E7F8B70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_23E7F8BB8()
{
  result = qword_27E35A3F8;
  if (!qword_27E35A3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A318, &qword_23E830120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A308, &unk_23E830110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
    sub_23E7F5640(&qword_27E35A310, &qword_27E35A308, &unk_23E830110);
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A3F8);
  }

  return result;
}

uint64_t sub_23E7F8D54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  return v1;
}

uint64_t sub_23E7F8DC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A608, &qword_23E830548);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__siriShortcuts;
  v8 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  sub_23E82E08C();
  v9 = *(v3 + 32);
  v9(v1 + v7, v6, v2);
  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__axShortcuts;
  aBlock[0] = v8;
  sub_23E82E08C();
  v9(v1 + v10, v6, v2);
  v11 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__systemShortcuts;
  aBlock[0] = v8;
  sub_23E82E08C();
  v9(v1 + v11, v6, v2);
  v12 = [objc_opt_self() standardClient];
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23E8011D0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E7F9A50;
  aBlock[3] = &block_descriptor_85;
  v14 = _Block_copy(aBlock);

  [v12 getVoiceShortcutsWithCompletion_];
  _Block_release(v14);

  if (qword_27E35A1D0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E35D0C0;
  v16 = *(qword_27E35D0C0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  v17 = sub_23E82E0BC();
  sub_23E7F9924(v16);
  v17(aBlock, 0);

  v18 = *(v15 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v19 = sub_23E82E0BC();
  sub_23E7F9924(v18);
  v19(aBlock, 0);

  return v1;
}

size_t sub_23E7F9140(unint64_t a1, void *a2, uint64_t a3)
{
  v62 = a3;
  v69 = a1;
  v4 = sub_23E82E00C();
  v68 = *(v4 - 8);
  v5 = *(v68 + 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E82DDDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AvailableShortcutAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v19 = *(*(v18 - 8) + 64);
  result = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v61 - v21;
  if (a2)
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_27E35A958);
    swift_beginAccess();
    v24 = v68;
    (*(v68 + 2))(v7, v23, v4);
    v25 = a2;
    v26 = sub_23E82DFEC();
    v27 = sub_23E82EBCC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v70 = a2;
      v71 = v29;
      *v28 = 136315138;
      v30 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A620, &qword_23E830560);
      v31 = sub_23E82EA8C();
      v33 = sub_23E8257E0(v31, v32, &v71);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_23E7EF000, v26, v27, "Error retrieving known shortcuts names: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23EF15860](v29, -1, -1);
      MEMORY[0x23EF15860](v28, -1, -1);
    }

    return v24[1](v7, v4);
  }

  else
  {
    v34 = v62;
    v66 = v14;
    v67 = v13;
    v68 = v12;
    if (v69)
    {
      v65 = v8;
      if (v69 >> 62)
      {
        v35 = sub_23E82ECDC();
      }

      else
      {
        v35 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = MEMORY[0x277D84F90];
      if (v35)
      {
        v61 = v22;
        v72 = MEMORY[0x277D84F90];
        result = sub_23E800950(0, v35 & ~(v35 >> 63), 0);
        if (v35 < 0)
        {
          __break(1u);
          return result;
        }

        v37 = 0;
        v36 = v72;
        v38 = v69;
        v63 = v69 & 0xC000000000000001;
        v64 = v35;
        v39 = (v9 + 40);
        do
        {
          if (v63)
          {
            v40 = MEMORY[0x23EF14DD0](v37);
          }

          else
          {
            v40 = *(v38 + 8 * v37 + 32);
          }

          v41 = v40;
          v42 = [v40 shortcutName];
          v43 = sub_23E82EA6C();
          v45 = v44;

          v46 = [v41 identifier];
          v47 = sub_23E82EA6C();
          v49 = v48;

          v50 = v68;
          sub_23E82DDCC();
          sub_23E82DDCC();

          (*v39)(v17, v50, v65);
          v51 = v67;
          v52 = &v17[*(v67 + 20)];
          *v52 = v43;
          v52[1] = v45;
          v53 = &v17[*(v51 + 24)];
          *v53 = v47;
          *(v53 + 1) = v49;
          v53[16] = 0;
          v72 = v36;
          v55 = *(v36 + 16);
          v54 = *(v36 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_23E800950(v54 > 1, v55 + 1, 1);
            v36 = v72;
          }

          ++v37;
          *(v36 + 16) = v55 + 1;
          sub_23E8000FC(v17, v36 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v55, type metadata accessor for AvailableShortcutAction);
          v38 = v69;
        }

        while (v64 != v37);
        v22 = v61;
        v56 = v62;
      }

      else
      {
        v56 = v34;
      }

      v57 = sub_23E82EB9C();
      (*(*(v57 - 8) + 56))(v22, 1, 1, v57);
      sub_23E82EB6C();

      v58 = sub_23E82EB5C();
      v59 = swift_allocObject();
      v60 = MEMORY[0x277D85700];
      v59[2] = v58;
      v59[3] = v60;
      v59[4] = v56;
      v59[5] = v36;
      sub_23E80C4C4(0, 0, v22, &unk_23E830558, v59);
    }
  }

  return result;
}

uint64_t sub_23E7F9760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[9] = a1;
  sub_23E82EB6C();
  v5[12] = sub_23E82EB5C();
  v7 = sub_23E82EB4C();

  return MEMORY[0x2822009F8](sub_23E7F97FC, v7, v6);
}

uint64_t sub_23E7F97FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 88);
    swift_getKeyPath();
    swift_getKeyPath();

    v5 = sub_23E82E0BC();
    sub_23E7F9924(v4);
    v5(v0 + 16, 0);
  }

  **(v0 + 72) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23E7F9924(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_23E803160(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AvailableShortcutAction();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23E7F9A50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_23E8011D8(0, &qword_27E35A610, 0x277D79D90);
    v4 = sub_23E82EB0C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_23E7F9AF4()
{
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__siriShortcuts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A608, &qword_23E830548);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__axShortcuts, v2);
  v3(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts33AVSCommandShortcutActionViewModel__systemShortcuts, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void sub_23E7F9C10()
{
  sub_23E7F9F34(319, &qword_27E35A428, &qword_27E35A430, &qword_23E830258, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23E7F9D18()
{
  sub_23E7F5B78();
  if (v0 <= 0x3F)
  {
    sub_23E7F9E58();
    if (v1 <= 0x3F)
    {
      sub_23E8014A0(319, &qword_27E35A2E8, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_23E7F9F34(319, &qword_27E35A460, &qword_27E35A468, &qword_23E830290, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_23E8014A0(319, &qword_27E35A2F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23E7F9E58()
{
  if (!qword_27E35A450)
  {
    type metadata accessor for AVSCommandShortcutActionViewModel(255);
    sub_23E7F9EEC(&qword_27E35A458, type metadata accessor for AVSCommandShortcutActionViewModel);
    v0 = sub_23E82E1AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35A450);
    }
  }
}

uint64_t sub_23E7F9EEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23E7F9F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23E7F9F98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AVSCommandShortcutActionViewModel(0);
  result = sub_23E82E07C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7F9FF4()
{
  v0 = type metadata accessor for AVSCommandShortcutActionViewModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23E7F8DC0();
  return v3;
}

uint64_t sub_23E7FA030@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v63 = sub_23E82E3DC();
  v61 = *(v63 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23E82E4CC();
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23E82E4DC();
  v52 = *(v54 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A470, &qword_23E830320);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A478, &qword_23E830328);
  v53 = *(v48 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v48);
  v16 = &v46 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A480, &qword_23E830330);
  v55 = *(v57 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A488, &qword_23E830338);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  MEMORY[0x28223BE20](v20);
  v56 = &v46 - v22;
  v65 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A490, &unk_23E830340);
  sub_23E7F5640(&qword_27E35A498, &qword_27E35A490, &unk_23E830340);
  sub_23E82E67C();
  v47 = v1;
  v23 = *(v1 + 56);
  v70 = *(v1 + 40);
  v71 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E89C();
  sub_23E82E4BC();
  sub_23E82E4AC();
  (*(v49 + 8))(v6, v51);
  v45 = sub_23E7F5640(&qword_27E35A4A0, &qword_27E35A470, &qword_23E830320);
  sub_23E82E6DC();
  v24 = v48;

  (*(v52 + 8))(v9, v54);
  (*(v50 + 8))(v13, v10);
  v64 = v47;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v66 = v10;
  v67 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  v54 = v19;
  sub_23E82E7BC();
  (*(v53 + 8))(v16, v24);
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v28 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v29 = [objc_opt_self() mainBundle];
  }

  v30 = v28;
  v31 = sub_23E82E68C();
  v33 = v32;
  v35 = v34;
  v66 = v24;
  v67 = v25;
  v68 = OpaqueTypeConformance2;
  v69 = v27;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v56;
  v38 = v57;
  v39 = v54;
  sub_23E82E71C();
  sub_23E7FFB78(v31, v33, v35 & 1);

  (*(v55 + 8))(v39, v38);
  v41 = v60;
  v40 = v61;
  v42 = v63;
  (*(v61 + 104))(v60, *MEMORY[0x277CDDDC0], v63);
  v66 = v38;
  v67 = v36;
  swift_getOpaqueTypeConformance2();
  v43 = v59;
  sub_23E82E76C();
  (*(v40 + 8))(v41, v42);
  return (*(v58 + 8))(v37, v43);
}

uint64_t sub_23E7FA8D4@<X0>(char *a1@<X8>)
{
  v79 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4A8, &qword_23E830358);
  v83 = *(v1 - 8);
  v2 = *(v83 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v73 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v72 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4B0, &qword_23E830360);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v72 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v82 = &v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v72 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4B8, &qword_23E830368);
  v75 = *(v22 - 8);
  v76 = v22;
  v23 = *(v75 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v74 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v84 = &v72 - v26;
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v27 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v28 = [objc_opt_self() mainBundle];
  }

  v80 = v27;
  v87 = sub_23E82E68C();
  v88 = v29;
  v89 = v30 & 1;
  v90 = v31;
  MEMORY[0x28223BE20](v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4C0, &qword_23E830370);
  sub_23E7FFBBC();
  sub_23E82E90C();
  v32 = *(sub_23E7FBBF8(&unk_23E8304B0, &unk_23E8304D8, sub_23E800C94) + 16);

  if (v32)
  {
    sub_23E82E43C();
    if (!v27)
    {
      v33 = [objc_opt_self() mainBundle];
    }

    v34 = v80;
    v87 = sub_23E82E68C();
    v88 = v35;
    v89 = v36 & 1;
    v90 = v37;
    MEMORY[0x28223BE20](v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFD4C();
    sub_23E82E90C();
    v38 = v83;
    v39 = v85;
    (*(v83 + 32))(v85, v8, v1);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v85;
    v38 = v83;
  }

  v41 = *(v38 + 56);
  v42 = 1;
  v41(v39, v40, 1, v1);
  v43 = *(sub_23E7FBBF8(&unk_23E830468, &unk_23E830490, sub_23E801C04) + 16);

  if (v43)
  {
    sub_23E82E43C();
    if (!v27)
    {
      v44 = [objc_opt_self() mainBundle];
    }

    v45 = v80;
    v87 = sub_23E82E68C();
    v88 = v46;
    v89 = v47 & 1;
    v90 = v48;
    MEMORY[0x28223BE20](v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFD4C();
    v49 = v72;
    sub_23E82E90C();
    v50 = v86;
    (*(v83 + 32))(v86, v49, v1);
    v42 = 0;
  }

  else
  {
    v50 = v86;
  }

  v51 = 1;
  v41(v50, v42, 1, v1);
  v52 = *(sub_23E7FBBF8(&unk_23E830418, &unk_23E830440, sub_23E801C04) + 16);

  if (v52)
  {
    sub_23E82E43C();
    if (!v27)
    {
      v53 = [objc_opt_self() mainBundle];
    }

    v54 = v80;
    v87 = sub_23E82E68C();
    v88 = v55;
    v89 = v56 & 1;
    v90 = v57;
    MEMORY[0x28223BE20](v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFD4C();
    v58 = v73;
    sub_23E82E90C();
    v59 = v81;
    (*(v83 + 32))(v81, v58, v1);
    v51 = 0;
  }

  else
  {
    v59 = v81;
  }

  v41(v59, v51, 1, v1);
  v60 = v74;
  v61 = v75;
  v62 = *(v75 + 16);
  v63 = v76;
  v62(v74, v84, v76);
  v64 = v59;
  sub_23E8001E0(v85, v82, &qword_27E35A4B0, &qword_23E830360);
  v65 = v77;
  sub_23E8001E0(v86, v77, &qword_27E35A4B0, &qword_23E830360);
  v66 = v78;
  sub_23E8001E0(v64, v78, &qword_27E35A4B0, &qword_23E830360);
  v67 = v79;
  v62(v79, v60, v63);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A500, &qword_23E830390);
  v69 = v82;
  sub_23E8001E0(v82, &v67[v68[12]], &qword_27E35A4B0, &qword_23E830360);
  sub_23E8001E0(v65, &v67[v68[16]], &qword_27E35A4B0, &qword_23E830360);
  sub_23E8001E0(v66, &v67[v68[20]], &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v81, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v86, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v85, &qword_27E35A4B0, &qword_23E830360);
  v70 = *(v61 + 8);
  v70(v84, v63);
  sub_23E7F55E0(v66, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v65, &qword_27E35A4B0, &qword_23E830360);
  sub_23E7F55E0(v69, &qword_27E35A4B0, &qword_23E830360);
  return (v70)(v60, v63);
}

uint64_t sub_23E7FB3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v31 = a2;
  v3 = type metadata accessor for AVSCommandShortcutActionView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = v7;
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4D0, &qword_23E830378);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v28 = &v25 - v12;
  sub_23E80007C(a1, v8, type metadata accessor for AVSCommandShortcutActionView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_23E8000FC(v8, v14 + v13, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5A0, &unk_23E8304F8);
  sub_23E7F5640(&qword_27E35A5A8, &qword_27E35A5A0, &unk_23E8304F8);
  sub_23E82E8BC();
  v15 = v26;
  v16 = v26 + *(v4 + 40);
  v17 = *v16;
  v18 = *(v16 + 8);
  v32 = v17;
  v33 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E89C();
  sub_23E80007C(v15, v8, type metadata accessor for AVSCommandShortcutActionView);
  v19 = swift_allocObject();
  sub_23E8000FC(v8, v19 + v13, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4D8, &qword_23E830380);
  sub_23E7F5640(&qword_27E35A4E0, &qword_27E35A4D0, &qword_23E830378);
  sub_23E7F5640(&qword_27E35A4E8, &qword_27E35A4D8, &qword_23E830380);
  v20 = v31;
  v22 = v28;
  v21 = v29;
  sub_23E82E78C();

  (*(v30 + 8))(v22, v21);
  v23 = sub_23E82E84C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A4C0, &qword_23E830370);
  *(v20 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_23E7FB7A0(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23E7FBBF8(&unk_23E8304B0, &unk_23E8304D8, sub_23E800C94);
  swift_getKeyPath();
  sub_23E80007C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  sub_23E7F5640(&qword_27E35A538, &qword_27E35A430, &qword_23E830258);
  sub_23E7F9EEC(&qword_27E35A540, MEMORY[0x277CC95F0]);
  sub_23E7FFDD0();
  return sub_23E82E8FC();
}

uint64_t sub_23E7FB9CC(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23E7FBBF8(&unk_23E830468, &unk_23E830490, sub_23E801C04);
  swift_getKeyPath();
  sub_23E80007C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  sub_23E7F5640(&qword_27E35A538, &qword_27E35A430, &qword_23E830258);
  sub_23E7F9EEC(&qword_27E35A540, MEMORY[0x277CC95F0]);
  sub_23E7FFDD0();
  return sub_23E82E8FC();
}

uint64_t sub_23E7FBBF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v5 = v3;
  v6 = *(v3 + 56);
  v16 = *(v3 + 40);
  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();

  if ((v15 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v7 = v14[5] & 0xFFFFFFFFFFFFLL;
  }

  v8 = *(v3 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  type metadata accessor for AVSCommandShortcutActionViewModel(0);
  sub_23E7F9EEC(&qword_27E35A458, type metadata accessor for AVSCommandShortcutActionViewModel);
  sub_23E82E18C();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v7)
  {
    sub_23E82E0CC();

    MEMORY[0x28223BE20](v11);
    v14[2] = v5;
    return sub_23E7FE0FC(a3, v14, v12);
  }

  else
  {
    sub_23E82E0CC();

    return v16;
  }
}

uint64_t sub_23E7FBDA4(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23E7FBBF8(&unk_23E830418, &unk_23E830440, sub_23E801C04);
  swift_getKeyPath();
  sub_23E80007C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A430, &qword_23E830258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  sub_23E7F5640(&qword_27E35A538, &qword_27E35A430, &qword_23E830258);
  sub_23E7F9EEC(&qword_27E35A540, MEMORY[0x277CC95F0]);
  sub_23E7FFDD0();
  return sub_23E82E8FC();
}

uint64_t sub_23E7FBFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v21 = a3;
  v22 = a6;
  v8 = type metadata accessor for AvailableShortcutAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = type metadata accessor for AVSCommandShortcutActionView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E80007C(a2, v14, type metadata accessor for AVSCommandShortcutActionView);
  sub_23E80007C(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailableShortcutAction);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_23E8000FC(v14, v17 + v15, type metadata accessor for AVSCommandShortcutActionView);
  sub_23E8000FC(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AvailableShortcutAction);
  v25 = a1;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A548, &qword_23E8303D0);
  sub_23E7F5640(&qword_27E35A550, &qword_27E35A548, &qword_23E8303D0);
  v18 = v22;
  sub_23E82E8BC();
  v19 = sub_23E82E84C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A520, &qword_23E8303A0);
  *(v18 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_23E7FC230(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E80007C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSCommandShortcutActionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23E8000FC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AVSCommandShortcutActionView);
  return sub_23E82E8BC();
}

uint64_t sub_23E7FC378(uint64_t a1)
{
  v1 = *(a1 + 8) + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(v4);
}

uint64_t sub_23E7FC3E8(uint64_t a1)
{
  v52 = sub_23E82E9BC();
  v55 = *(v52 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E82E9EC();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AVSCommandShortcutActionView(0);
  v8 = v7 - 8;
  v49 = *(v7 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23E82EA0C();
  v57 = *(v47 - 8);
  v10 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = sub_23E82DDDC();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v25, a1, v26);
  (*(v27 + 56))(v25, 0, 1, v26);
  v28 = *(v8 + 36);
  sub_23E800170(v25, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
  v29 = v46;
  sub_23E82E88C();
  sub_23E7F55E0(v25, &qword_27E35A468, &qword_23E830290);
  v30 = *(v29 + 8);
  sub_23E80007C(a1, v18, type metadata accessor for AvailableShortcutAction);
  v31 = type metadata accessor for AvailableShortcutAction();
  (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
  v32 = v30 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v33 = type metadata accessor for AdaptiveVoiceShortcut();
  sub_23E800310(v18, v32 + *(v33 + 28));
  swift_endAccess();
  sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
  v34 = sub_23E82EC0C();
  sub_23E82E9FC();
  sub_23E82EA1C();
  v35 = *(v57 + 8);
  v57 += 8;
  v36 = v47;
  v35(v13, v47);
  v37 = v48;
  sub_23E80007C(v29, v48, type metadata accessor for AVSCommandShortcutActionView);
  v38 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v39 = swift_allocObject();
  sub_23E8000FC(v37, v39 + v38, type metadata accessor for AVSCommandShortcutActionView);
  aBlock[4] = sub_23E800380;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor_0;
  v40 = _Block_copy(aBlock);

  v41 = v50;
  sub_23E82E9DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E7F9EEC(&qword_27E35A3D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E7F5640(&qword_27E35A3E0, &qword_27E35A3D8, &qword_23E830410);
  v43 = v51;
  v42 = v52;
  sub_23E82ECAC();
  v44 = v56;
  MEMORY[0x23EF14C90](v56, v41, v43, v40);
  _Block_release(v40);

  (*(v55 + 8))(v43, v42);
  (*(v53 + 8))(v41, v54);
  return (v35)(v44, v36);
}

uint64_t sub_23E7FCAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23E82E3EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A558, &qword_23E8303D8);
  return sub_23E7FCB2C(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23E7FCB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v70 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A560, &unk_23E8303E0);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v57 - v6;
  v7 = sub_23E82DDDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A568, &unk_23E830B30);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A570, &qword_23E8303F0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v67 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v66 = &v57 - v29;
  v30 = (a1 + *(type metadata accessor for AvailableShortcutAction() + 20));
  v31 = v30[1];
  v71 = *v30;
  v72 = v31;
  sub_23E7F84B0();

  v32 = sub_23E82E69C();
  v63 = v33;
  v64 = v32;
  v62 = v34;
  v65 = v35;
  v36 = *(type metadata accessor for AVSCommandShortcutActionView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
  sub_23E82E87C();
  (*(v8 + 16))(v22, a1, v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v37 = *(v12 + 56);
  sub_23E800170(v24, v15);
  sub_23E800170(v22, &v15[v37]);
  v38 = *(v8 + 48);
  if (v38(v15, 1, v7) == 1)
  {
    sub_23E7F55E0(v22, &qword_27E35A468, &qword_23E830290);
    sub_23E7F55E0(v24, &qword_27E35A468, &qword_23E830290);
    if (v38(&v15[v37], 1, v7) == 1)
    {
      sub_23E7F55E0(v15, &qword_27E35A468, &qword_23E830290);
LABEL_9:
      v47 = sub_23E82E85C();
      v48 = sub_23E82E7FC();
      v71 = v47;
      v72 = v48;
      sub_23E82E64C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A580, &unk_23E830400);
      sub_23E800258();
      v49 = v59;
      sub_23E82E6CC();

      v41 = v68;
      v40 = v69;
      v42 = v66;
      (*(v68 + 32))(v66, v49, v69);
      v39 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_23E800170(v15, v61);
  if (v38(&v15[v37], 1, v7) == 1)
  {
    sub_23E7F55E0(v22, &qword_27E35A468, &qword_23E830290);
    sub_23E7F55E0(v24, &qword_27E35A468, &qword_23E830290);
    (*(v8 + 8))(v61, v7);
LABEL_6:
    sub_23E7F55E0(v15, &qword_27E35A568, &unk_23E830B30);
    goto LABEL_7;
  }

  v43 = v58;
  (*(v8 + 32))(v58, &v15[v37], v7);
  sub_23E7F9EEC(&qword_27E35A590, MEMORY[0x277CC95F0]);
  v44 = v61;
  v45 = sub_23E82EA4C();
  v46 = *(v8 + 8);
  v46(v43, v7);
  sub_23E7F55E0(v22, &qword_27E35A468, &qword_23E830290);
  sub_23E7F55E0(v24, &qword_27E35A468, &qword_23E830290);
  v46(v44, v7);
  sub_23E7F55E0(v15, &qword_27E35A468, &qword_23E830290);
  if (v45)
  {
    goto LABEL_9;
  }

LABEL_7:
  v39 = 1;
  v41 = v68;
  v40 = v69;
  v42 = v66;
LABEL_10:
  (*(v41 + 56))(v42, v39, 1, v40);
  v50 = v67;
  sub_23E8001E0(v42, v67, &qword_27E35A570, &qword_23E8303F0);
  v51 = v70;
  v53 = v63;
  v52 = v64;
  *v70 = v64;
  v51[1] = v53;
  v54 = v62 & 1;
  *(v51 + 16) = v62 & 1;
  v51[3] = v65;
  v51[4] = 0;
  *(v51 + 40) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A578, &qword_23E8303F8);
  sub_23E8001E0(v50, v51 + *(v55 + 64), &qword_27E35A570, &qword_23E8303F0);
  sub_23E800248(v52, v53, v54);

  sub_23E7F55E0(v42, &qword_27E35A570, &qword_23E8303F0);
  sub_23E7F55E0(v50, &qword_27E35A570, &qword_23E8303F0);
  sub_23E7FFB78(v52, v53, v54);
}

uint64_t sub_23E7FD258(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AVSCommandShortcutActionView(0) + 32));
  v2 = *v1;
  v3 = *(v1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E87C();
  sub_23E82E88C();
}

__n128 sub_23E7FD304@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_23E82E3EC();
  sub_23E7FD374(&v8);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  result = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_23E7FD374@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  v5 = sub_23E82E68C();
  v7 = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  v9 = v8 & 1;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_23E800248(v5, v6, v8 & 1);

  sub_23E7FFB78(v5, v7, v9);
}

uint64_t sub_23E7FD4D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5B0, &qword_23E830508);
  type metadata accessor for SiriRequestView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5B8, &qword_23E830510);
  sub_23E7F9EEC(&qword_27E35A5C0, type metadata accessor for SiriRequestView);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5C8, &qword_23E830518);
  sub_23E7F5640(&qword_27E35A5D0, &qword_27E35A5C8, &qword_23E830518);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23E82E2DC();
}

uint64_t sub_23E7FD64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_23E82DF7C();
  v38 = *(v3 - 8);
  v39 = v38;
  v4 = *(v38 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v35 - v7;
  v8 = type metadata accessor for AVSCommandShortcutActionView(0);
  v9 = v8 - 8;
  v35 = *(v8 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SiriRequestView(0);
  v12 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v9 + 40);
  v37 = a1;
  v16 = (a1 + v15);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v46) = v17;
  v47 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E89C();
  v19 = v44;
  v20 = v45;
  sub_23E80007C(a1, v11, type metadata accessor for AVSCommandShortcutActionView);
  v21 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v22 = swift_allocObject();
  sub_23E8000FC(v11, v22 + v21, type metadata accessor for AVSCommandShortcutActionView);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_23E82E86C();
  v23 = v45;
  *v14 = v44;
  *(v14 + 2) = v23;
  v14[24] = sub_23E82E13C() & 1;
  *(v14 + 4) = v24;
  v14[40] = v25 & 1;
  *(v14 + 3) = v19;
  v14[64] = v20;
  *(v14 + 9) = sub_23E800DB0;
  *(v14 + 10) = v22;
  v26 = *(v36 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3F0, &unk_23E830520);
  v27 = v39;
  v28 = *(v38 + 72);
  v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23E830030;
  sub_23E82DF6C();
  *&v44 = v30;
  sub_23E7F9EEC(&qword_27E35A228, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0);
  v31 = v40;
  sub_23E82ECAC();
  (*(v27 + 16))(v41, v31, v3);
  sub_23E82E86C();
  (*(v27 + 8))(v31, v3);
  v43 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5B8, &qword_23E830510);
  sub_23E7F9EEC(&qword_27E35A5C0, type metadata accessor for SiriRequestView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5C8, &qword_23E830518);
  v33 = sub_23E7F5640(&qword_27E35A5D0, &qword_27E35A5C8, &qword_23E830518);
  *&v44 = v32;
  *(&v44 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  sub_23E82E7AC();
  return sub_23E800E1C(v14, type metadata accessor for SiriRequestView);
}

uint64_t sub_23E7FDB64(uint64_t a1)
{
  v2 = sub_23E82E4FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5C8, &qword_23E830518);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_23E82E4EC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5D8, &qword_23E830530);
  sub_23E800E84();
  sub_23E82E1EC();
  v9 = sub_23E7F5640(&qword_27E35A5D0, &qword_27E35A5C8, &qword_23E830518);
  MEMORY[0x23EF145A0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23E7FDD1C(uint64_t a1)
{
  v2 = type metadata accessor for AVSCommandShortcutActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A5F0, &qword_23E830538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_23E80007C(a1, &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AVSCommandShortcutActionView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_23E8000FC(&v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for AVSCommandShortcutActionView);
  sub_23E82E8BC();
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v12 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = v12;
  v15 = sub_23E82E68C();
  v17 = v16;
  v19 = v18;
  sub_23E7F5640(&qword_27E35A5E8, &qword_27E35A5F0, &qword_23E830538);
  sub_23E82E72C();
  sub_23E7FFB78(v15, v17, v19 & 1);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23E7FE054(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AVSCommandShortcutActionView(0) + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  return sub_23E82E88C();
}

uint64_t sub_23E7FE0C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E85C();
  *a1 = result;
  return result;
}

uint64_t sub_23E7FE0FC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AvailableShortcutAction();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_23E80007C(a3 + v16 + v17 * v14, v13, type metadata accessor for AvailableShortcutAction);
      v18 = a1(v13);
      if (v3)
      {
        sub_23E800E1C(v13, type metadata accessor for AvailableShortcutAction);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_23E8000FC(v13, v25, type metadata accessor for AvailableShortcutAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23E800950(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23E800950(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_23E8000FC(v25, v15 + v16 + v21 * v17, type metadata accessor for AvailableShortcutAction);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_23E800E1C(v13, type metadata accessor for AvailableShortcutAction);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_23E7FE388(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for AvailableShortcutAction() + 20));
  v7 = *v3;
  v8 = v3[1];
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();
  sub_23E7F84B0();
  LOBYTE(a2) = sub_23E82EC8C();

  return a2 & 1;
}

uint64_t sub_23E7FE458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *(a1 + 8);
  sub_23E810118();
  v10 = sub_23E82DDDC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  LODWORD(v9) = *(type metadata accessor for AVSCommandShortcutActionView(0) + 28);
  sub_23E800170(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260);
  sub_23E82E88C();
  return sub_23E7F55E0(v8, &qword_27E35A468, &qword_23E830290);
}

uint64_t sub_23E7FE5AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v3 = qword_27E35D0B8;
    v4 = qword_27E35D0B8;
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v3 = 0;
  }

  v5 = v3;
  sub_23E82DCDC();

  if (!v2)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  sub_23E82DCDC();

  v6 = *(type metadata accessor for SiriRequestView(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A2B0, &qword_23E830068);
  v7 = sub_23E82E89C();
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A658, &qword_23E8305E8);
  sub_23E801580();
  return sub_23E82DF5C();
}

double sub_23E7FE894@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A670, &qword_23E8305F0);
  v3 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v98 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A680, &qword_23E8305F8);
  v5 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v98 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A690, &qword_23E830600);
  v7 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v115 = &v98 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6A0, &qword_23E830608);
  v9 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v113 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6E0, &unk_23E830640);
  v110 = *(v11 - 8);
  v111 = v11;
  v12 = *(v110 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v98 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A1F0, &qword_23E830610);
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v17 = &v98 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6A8, &qword_23E830618);
  v105 = *(v106 - 1);
  v18 = v105[8];
  MEMORY[0x28223BE20](v106);
  v104 = &v98 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6B0, &unk_23E830620);
  v102 = *(v103 - 8);
  v20 = *(v102 + 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v98 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A350, &qword_23E830150);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v98 - v25;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v121 = v17;
  v27 = qword_27E35D0B8;
  v109 = v14;
  if (qword_27E35D0B8)
  {
    v28 = qword_27E35D0B8;
  }

  else
  {
    v28 = [objc_opt_self() mainBundle];
    v27 = 0;
  }

  v29 = v27;
  v30 = sub_23E82DCDC();
  v32 = v31;

  v33 = *(v2 + 16);
  v125 = *v2;
  v126 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E89C();
  v122 = v30;
  v123 = v32;
  sub_23E7F84B0();
  sub_23E82E96C();
  v34 = v2;
  v35 = *(v2 + 24);
  v36 = *(v2 + 32);
  v37 = *(v2 + 40);
  v100 = v2;
  LOBYTE(v122) = v35;
  v123 = v36;
  LOBYTE(v124) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  sub_23E82E12C();
  v38 = sub_23E7F5640(&qword_27E35A3A8, &qword_27E35A350, &qword_23E830150);
  v39 = v101;
  sub_23E82E79C();

  (*(v23 + 8))(v26, v22);
  v40 = sub_23E82E1DC();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82E1CC();
  v122 = v22;
  v123 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v104;
  v46 = v103;
  sub_23E82E6FC();
  (*(v41 + 8))(v44, v40);
  (*(v102 + 1))(v39, v46);
  v47 = type metadata accessor for SiriRequestView(0);
  v102 = &v98;
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v101 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = (&v98 - v101);
  sub_23E80007C(v34, &v98 - v101, type metadata accessor for SiriRequestView);
  v51 = *(v48 + 80);
  v52 = swift_allocObject();
  sub_23E8000FC(v50, v52 + ((v51 + 16) & ~v51), type metadata accessor for SiriRequestView);
  v53 = sub_23E82E28C();
  v98 = &v98;
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v98 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82E27C();
  v122 = v46;
  v123 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v58 = v106;
  sub_23E82E7DC();

  (*(v54 + 8))(v57, v53);
  v59 = (v105[1])(v45, v58);
  MEMORY[0x28223BE20](v59);
  v60 = (&v98 - v101);
  sub_23E80007C(v100, &v98 - v101, type metadata accessor for SiriRequestView);
  sub_23E82EB6C();
  v61 = sub_23E82EB5C();
  v62 = swift_allocObject();
  v63 = MEMORY[0x277D85700];
  *(v62 + 16) = v61;
  *(v62 + 24) = v63;
  sub_23E8000FC(v60, v62 + ((v51 + 32) & ~v51), type metadata accessor for SiriRequestView);
  v64 = sub_23E82EB9C();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = &v98 - v67;
  sub_23E82EB7C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v104 = sub_23E82E2AC();
    v105 = &v98;
    v103 = *(v104 - 1);
    v69 = *(v103 + 64);
    MEMORY[0x28223BE20](v104);
    v102 = &v98 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    v122 = 0;
    v123 = 0xE000000000000000;
    sub_23E82ED2C();

    v122 = 0xD000000000000046;
    v123 = 0x800000023E832670;
    *&v125 = 296;
    v71 = sub_23E82EEFC();
    MEMORY[0x23EF14B60](v71);

    v106 = &v98;
    MEMORY[0x28223BE20](v72);
    (*(v65 + 16))(&v98 - v67, &v98 - v67, v64);
    v73 = v102;
    sub_23E82E29C();
    (*(v65 + 8))(v68, v64);
    v74 = v109;
    (*(v107 + 32))(v109, v121, v108);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A1F8, "tB");
    (*(v103 + 32))(&v74[*(v75 + 36)], v73, v104);
  }

  else
  {
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A200, &qword_23E82FF18);
    v74 = v109;
    v77 = &v109[*(v76 + 36)];
    v78 = sub_23E82E22C();
    (*(v65 + 32))(&v77[*(v78 + 20)], &v98 - v67, v64);
    *v77 = &unk_23E830658;
    *(v77 + 1) = v62;
    (*(v107 + 32))(v74, v121, v108);
  }

  v79 = sub_23E82E5CC();
  v80 = v113;
  (*(v110 + 32))(v113, v74, v111);
  v81 = &v80[*(v112 + 36)];
  *v81 = v79;
  *(v81 + 8) = 0u;
  *(v81 + 24) = 0u;
  v81[40] = 1;
  v82 = [objc_opt_self() tertiarySystemFillColor];
  v83 = sub_23E82E7EC();
  v84 = sub_23E82E5CC();
  v85 = v80;
  v86 = v115;
  sub_23E7F8764(v85, v115, &qword_27E35A6A0, &qword_23E830608);
  v87 = v86 + *(v114 + 36);
  *v87 = v83;
  *(v87 + 8) = v84;
  v88 = v117;
  v89 = &v117[*(v116 + 36)];
  sub_23E82DFCC();
  sub_23E7F8764(v86, v88, &qword_27E35A690, &qword_23E830600);
  KeyPath = swift_getKeyPath();
  v91 = v88;
  v92 = v118;
  sub_23E7F8764(v91, v118, &qword_27E35A680, &qword_23E8305F8);
  v93 = v92 + *(v119 + 36);
  *v93 = KeyPath;
  *(v93 + 8) = 1;
  LOBYTE(KeyPath) = sub_23E82E61C();
  v94 = v92;
  v95 = v120;
  sub_23E7F8764(v94, v120, &qword_27E35A670, &qword_23E8305F0);
  v96 = v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A658, &qword_23E8305E8) + 36);
  *v96 = KeyPath;
  result = 0.0;
  *(v96 + 8) = 0u;
  *(v96 + 24) = 0u;
  *(v96 + 40) = 1;
  return result;
}

uint64_t sub_23E7FF7BC(uint64_t *a1)
{
  v2 = sub_23E82DDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AvailableShortcutAction();
  v6 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v33 = *a1;
  v34 = v10;
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A398, &qword_23E830198);
  sub_23E82E87C();
  v13 = v31;
  v12 = v32;

  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = a1[7];
    v17 = *(a1 + 64);
    v33 = a1[6];
    v34 = v16;
    LOBYTE(v35) = v17;
    LOBYTE(v31) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A6E8, &qword_23E8306A0);
    sub_23E82E8DC();
    v33 = v9;
    v34 = v10;
    v35 = v11;
    sub_23E82E87C();
    v27 = v32;
    v28 = v31;
    v26 = v2;
    v33 = v9;
    v34 = v10;
    v35 = v11;
    sub_23E82E87C();
    v18 = v31;
    v19 = v32;
    v20 = v29;
    sub_23E82DDCC();
    sub_23E82DDCC();
    (*(v3 + 40))(v8, v20, v26);
    v21 = v30;
    v22 = &v8[*(v30 + 20)];
    v23 = v27;
    *v22 = v28;
    *(v22 + 1) = v23;
    v24 = &v8[*(v21 + 24)];
    *v24 = v18;
    *(v24 + 1) = v19;
    v24[16] = 2;
    v25 = a1[10];
    (a1[9])(v8);
    v33 = v9;
    v34 = v10;
    v35 = v11;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_23E82E88C();
    return sub_23E800E1C(v8, type metadata accessor for AvailableShortcutAction);
  }

  return result;
}

uint64_t sub_23E7FFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_23E82EB6C();
  *(v3 + 48) = sub_23E82EB5C();
  v5 = sub_23E82EB4C();

  return MEMORY[0x2822009F8](sub_23E7FFACC, v5, v4);
}

uint64_t sub_23E7FFACC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v0 + 16) = *(v2 + 24);
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A320, &qword_23E830128);
  sub_23E82E11C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23E7FFB78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23E7FFBBC()
{
  result = qword_27E35A4C8;
  if (!qword_27E35A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A4C0, &qword_23E830370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A4D0, &qword_23E830378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A4D8, &qword_23E830380);
    sub_23E7F5640(&qword_27E35A4E0, &qword_27E35A4D0, &qword_23E830378);
    sub_23E7F5640(&qword_27E35A4E8, &qword_27E35A4D8, &qword_23E830380);
    swift_getOpaqueTypeConformance2();
    sub_23E7F5640(&qword_27E35A4F0, &qword_27E35A4F8, &qword_23E830388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A4C8);
  }

  return result;
}

unint64_t sub_23E7FFD4C()
{
  result = qword_27E35A510;
  if (!qword_27E35A510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A508, &qword_23E830398);
    sub_23E7FFDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A510);
  }

  return result;
}

unint64_t sub_23E7FFDD0()
{
  result = qword_27E35A518;
  if (!qword_27E35A518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A520, &qword_23E8303A0);
    sub_23E7F5640(&qword_27E35A528, &qword_27E35A530, &qword_23E8303A8);
    sub_23E7F5640(&qword_27E35A4F0, &qword_27E35A4F8, &qword_23E830388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A518);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AVSCommandShortcutActionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);
  v7 = *(v0 + v3 + 24);
  v8 = *(v0 + v3 + 32);
  sub_23E7F8354();
  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 56);

  v11 = v0 + v3 + *(v1 + 28);
  v12 = sub_23E82DDDC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260) + 28));

  v15 = *(v0 + v3 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E80007C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8000E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_23E8000FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E800170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8001E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E800248(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23E800258()
{
  result = qword_27E35A588;
  if (!qword_27E35A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A580, &unk_23E830400);
    sub_23E7F5640(&qword_27E35A4F0, &qword_27E35A4F8, &qword_23E830388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A588);
  }

  return result;
}

uint64_t sub_23E800310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8003AC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for AVSCommandShortcutActionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AvailableShortcutAction();
  v5 = *(*(v4 - 8) + 80);
  v22 = *(*(v4 - 8) + 64);
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);
  v8 = *(v0 + v3 + 24);
  v9 = *(v0 + v3 + 32);
  sub_23E7F8354();
  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 56);

  v12 = v0 + v3 + *(v1 + 28);
  v13 = sub_23E82DDDC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = v2 | v5;
  v16 = (v3 + v21 + v5) & ~v5;
  v17 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A438, &unk_23E830260) + 28));

  v18 = *(v0 + v3 + *(v1 + 32) + 8);

  (*(v14 + 8))(v0 + v16, v13);
  v19 = *(v0 + v16 + *(v4 + 20) + 8);

  sub_23E8000E4(*(v0 + v16 + *(v4 + 24)), *(v0 + v16 + *(v4 + 24) + 8), *(v0 + v16 + *(v4 + 24) + 16));

  return MEMORY[0x2821FE8E8](v0, v16 + v22, v15 | 7);
}

uint64_t sub_23E800748()
{
  v1 = *(type metadata accessor for AVSCommandShortcutActionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AvailableShortcutAction() - 8);
  return sub_23E7FC3E8(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_23E80083C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  *a2 = v5;
  return result;
}

uint64_t sub_23E8008B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

char *sub_23E800930(char *a1, int64_t a2, char a3)
{
  result = sub_23E8009B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23E800950(size_t a1, int64_t a2, char a3)
{
  result = sub_23E800ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E800970(void *a1, int64_t a2, char a3)
{
  result = sub_23E800F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E800990(char *a1, int64_t a2, char a3)
{
  result = sub_23E8010CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E8009B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3E8, &qword_23E830220);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_23E800ABC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A598, &qword_23E830460);
  v10 = *(type metadata accessor for AvailableShortcutAction() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AvailableShortcutAction() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23E800CE0()
{
  v0 = *(*(type metadata accessor for AVSCommandShortcutActionView(0) - 8) + 80);

  return sub_23E7FD4D8();
}

uint64_t sub_23E800D78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E800DB0(uint64_t a1)
{
  v3 = *(type metadata accessor for AVSCommandShortcutActionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23E7FC3E8(a1);
}

uint64_t sub_23E800E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E800E84()
{
  result = qword_27E35A5E0;
  if (!qword_27E35A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A5D8, &qword_23E830530);
    sub_23E7F5640(&qword_27E35A5E8, &qword_27E35A5F0, &qword_23E830538);
    sub_23E7F9EEC(&qword_27E35A5F8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A5E0);
  }

  return result;
}

void *sub_23E800F98(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A628, &qword_23E830568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A630, &unk_23E830570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E8010CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A600, &qword_23E830540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23E8011D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E801220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E801C00;

  return sub_23E7F9760(a1, v4, v5, v7, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_23E80138C()
{
  sub_23E8014A0(319, &qword_27E35A2E8, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_23E7F5C10();
    if (v1 <= 0x3F)
    {
      sub_23E8014A0(319, &qword_27E35A648, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_23E8014F0();
        if (v3 <= 0x3F)
        {
          sub_23E7F5CB4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23E8014A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23E8014F0()
{
  result = qword_27E35A650;
  if (!qword_27E35A650)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E35A650);
  }

  return result;
}

unint64_t sub_23E801580()
{
  result = qword_27E35A660;
  if (!qword_27E35A660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A658, &qword_23E8305E8);
    sub_23E80160C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A660);
  }

  return result;
}

unint64_t sub_23E80160C()
{
  result = qword_27E35A668;
  if (!qword_27E35A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A670, &qword_23E8305F0);
    sub_23E8016C4();
    sub_23E7F5640(&qword_27E35A6D0, &qword_27E35A6D8, &qword_23E831B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A668);
  }

  return result;
}

unint64_t sub_23E8016C4()
{
  result = qword_27E35A678;
  if (!qword_27E35A678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A680, &qword_23E8305F8);
    sub_23E801780();
    sub_23E7F9EEC(&qword_27E35A6C8, MEMORY[0x277CE7718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A678);
  }

  return result;
}

unint64_t sub_23E801780()
{
  result = qword_27E35A688;
  if (!qword_27E35A688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A690, &qword_23E830600);
    sub_23E801838();
    sub_23E7F5640(&qword_27E35A6B8, &qword_27E35A6C0, &unk_23E830630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A688);
  }

  return result;
}

unint64_t sub_23E801838()
{
  result = qword_27E35A698;
  if (!qword_27E35A698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A6A0, &qword_23E830608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A1F0, &qword_23E830610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A6A8, &qword_23E830618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A6B0, &unk_23E830620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A350, &qword_23E830150);
    sub_23E7F5640(&qword_27E35A3A8, &qword_27E35A350, &qword_23E830150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A698);
  }

  return result;
}

uint64_t sub_23E801A24()
{
  v2 = *(type metadata accessor for SiriRequestView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E801B00;

  return sub_23E7FFA34(v4, v5, v0 + v3);
}

uint64_t sub_23E801B00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_23E801C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_23E82EA5C();

  return v6;
}

uint64_t sub_23E801D20(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_23E801D80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23E82EA6C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_23E801DF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

void sub_23E801E54(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_23E82EA6C();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_23E801F10()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23E82EA5C();
  v2 = [v0 initWithSuiteName_];

  qword_2810C2530 = v2;
}

void sub_23E801F80()
{
  v0 = AXCPSharedResourcesDirectory();
  if (v0)
  {
    v1 = v0;
    v2 = sub_23E82EA6C();
    v4 = v3;

    qword_27E35A700 = v2;
    *algn_27E35A708 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E801FDC()
{
  sub_23E82ED2C();
  if (qword_27E35A1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35A700;
  v0 = *algn_27E35A708;

  result = MEMORY[0x23EF14B60](0xD000000000000024, 0x800000023E8327F0);
  qword_27E35A710 = v1;
  *algn_27E35A718 = v0;
  return result;
}

uint64_t sub_23E8020A0()
{
  sub_23E82ED2C();
  if (qword_27E35A1A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35A700;
  v0 = *algn_27E35A708;

  result = MEMORY[0x23EF14B60](0xD000000000000025, 0x800000023E8327C0);
  qword_27E35A720 = v1;
  *algn_27E35A728 = v0;
  return result;
}

uint64_t AVSStore.save(avsShortcut:)(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveVoiceShortcut();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E803FC0();
  sub_23E80A318(a1, v6, type metadata accessor for AdaptiveVoiceShortcut);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_23E8031D8(0, v7[2] + 1, 1, v7, &qword_27E35A810, &qword_23E8308A0, type metadata accessor for AdaptiveVoiceShortcut);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_23E8031D8(v8 > 1, v9 + 1, 1, v7, &qword_27E35A810, &qword_23E8308A0, type metadata accessor for AdaptiveVoiceShortcut);
  }

  v7[2] = v9 + 1;
  sub_23E8057CC(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9);
  sub_23E805830(v7);
}

uint64_t AVSStore.retrieveShortcut(withIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = a1;
  v18 = type metadata accessor for AdaptiveVoiceShortcut();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23E803FC0();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      sub_23E80A318(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v5, type metadata accessor for AdaptiveVoiceShortcut);
      v25 = sub_23E82DDBC();
      v26 = v10;
      v23 = 45;
      v24 = 0xE100000000000000;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_23E7F84B0();
      sub_23E82EC7C();

      sub_23E82EA9C();

      v11 = sub_23E82EA5C();

      v12 = sub_23E82EA5C();
      v13 = [v11 isEqual_];

      if (v13)
      {

        v16 = v19;
        sub_23E8057CC(v5, v19);
        v15 = v16;
        v14 = 0;
        return (*(v2 + 56))(v15, v14, 1, v18);
      }

      ++v9;
      result = sub_23E80AB24(v5, type metadata accessor for AdaptiveVoiceShortcut);
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v14 = 1;
    v15 = v19;
    return (*(v2 + 56))(v15, v14, 1, v18);
  }

  return result;
}

AVSStore __swiftcall AVSStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_23E802764()
{
  v1 = *v0;
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](v1);
  return sub_23E82EF4C();
}

uint64_t sub_23E8027AC()
{
  v1 = *v0;
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](v1);
  return sub_23E82EF4C();
}

uint64_t sub_23E8027F0()
{
  v1 = 25705;
  v2 = 0x7479426F69647561;
  if (*v0 != 2)
  {
    v2 = 0x65726F6373;
  }

  if (*v0)
  {
    v1 = 0x64726F7779656BLL;
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

uint64_t sub_23E802860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E80A7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E8028A0(uint64_t a1)
{
  v2 = sub_23E80A20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E8028DC(uint64_t a1)
{
  v2 = sub_23E80A20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AVSDebugEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A748, &qword_23E8306D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E80A20C();
  sub_23E82EF6C();
  v20 = 0;
  sub_23E82DDDC();
  sub_23E80AADC(&qword_27E35A758, MEMORY[0x277CC95F0]);
  sub_23E82EEDC();
  if (!v2)
  {
    v11 = type metadata accessor for AVSDebugEvent();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v19 = 1;
    sub_23E82EEBC();
    v18 = *(v3 + v11[6]);
    v17[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A760, &qword_23E8306D8);
    sub_23E80A2AC(&qword_27E35A768);
    sub_23E82EEAC();
    v15 = *(v3 + v11[7]);
    v17[14] = 3;
    sub_23E82EECC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AVSDebugEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_23E82DDDC();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A770, &qword_23E8306E0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v25 - v10;
  v28 = type metadata accessor for AVSDebugEvent();
  v12 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82DDCC();
  v16 = a1[3];
  v15 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23E80A20C();
  sub_23E82EF5C();
  if (v2)
  {
    v17 = v31;
    __swift_destroy_boxed_opaque_existential_0(v30);
    (*(v17 + 8))(v14, v4);
  }

  else
  {
    v26 = v8;
    v36 = 0;
    sub_23E80AADC(&qword_27E35A778, MEMORY[0x277CC95F0]);
    sub_23E82EE6C();
    (*(v31 + 40))(v14, v7, v4);
    v35 = 1;
    v18 = sub_23E82EE4C();
    v19 = v28;
    v20 = &v14[*(v28 + 20)];
    *v20 = v18;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A760, &qword_23E8306D8);
    v33 = 2;
    sub_23E80A2AC(&qword_27E35A780);
    sub_23E82EE3C();
    *&v14[*(v19 + 24)] = v34;
    v32 = 3;
    sub_23E82EE5C();
    v24 = v23;
    (*(v26 + 8))(v11, v29);
    *&v14[*(v19 + 28)] = v24;
    sub_23E80A318(v14, v27, type metadata accessor for AVSDebugEvent);
    __swift_destroy_boxed_opaque_existential_0(v30);
    return sub_23E80AB24(v14, type metadata accessor for AVSDebugEvent);
  }
}

char *sub_23E80306C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7D0, &unk_23E830880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_23E8031D8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_23E8033B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7C0, &unk_23E830868);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23E8034B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A840, &unk_23E8308C0);
  v40 = a2;
  result = sub_23E82EDEC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_23E82EF2C();
      sub_23E82EABC();
      result = sub_23E82EF4C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23E803778(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E82ECCC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23E82EF2C();

      sub_23E82EABC();
      v13 = sub_23E82EF4C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_23E803928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A840, &unk_23E8308C0);
  v2 = *v0;
  v3 = sub_23E82EDDC();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_23E803AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A830, &unk_23E8308B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v48 - v7;
  v8 = sub_23E82DEEC();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0;
  v12 = 0;
  v49 = *(v13 + 80);
  v14 = MEMORY[0x277D84F90];
  v54 = (v49 + 32) & ~v49;
  v59 = MEMORY[0x277D84F90] + v54;
  v15 = (v13 + 56);
  v50 = v13 + 48;
  v51 = v13 + 16;
  v52 = v13;
  v57 = (v13 + 32);
LABEL_4:
  v18 = *(a1 + 16);
  if (v12 != v18)
  {
    if (v12 < v18)
    {
      while (1)
      {
        v19 = *(a1 + 32 + 8 * v12);

        if (v19)
        {
          break;
        }

LABEL_9:
        ++v12;
        v20 = *(a1 + 16);
        if (v12 == v20)
        {
          goto LABEL_36;
        }

        if (v12 >= v20)
        {
          goto LABEL_42;
        }
      }

      v16 = *(v19 + 16);
      if (!v16)
      {
        (*v15)(v6, 1, 1, v8);
        result = sub_23E7F55E0(v6, &qword_27E35A830, &unk_23E8308B0);
        goto LABEL_9;
      }

      v17 = 0;
      ++v12;
      while (1)
      {
        if (v17 >= v16)
        {
          goto LABEL_43;
        }

        v21 = v14;
        v22 = v52;
        v23 = *(v52 + 72);
        v61 = v17;
        v56 = v23;
        (*(v52 + 16))(v6, v19 + v54 + v23 * v17, v8);
        (*(v22 + 56))(v6, 0, 1, v8);
        v24 = v55;
        sub_23E80AA6C(v6, v55);
        if ((*(v22 + 48))(v24, 1, v8) == 1)
        {
          v14 = v21;
          goto LABEL_37;
        }

        v53 = *v57;
        result = v53(v58, v24, v8);
        v25 = v21;
        v26 = v60;
        if (!v60)
        {
          break;
        }

LABEL_34:
        v42 = __OFSUB__(v26, 1);
        v43 = v26 - 1;
        if (v42)
        {
          goto LABEL_44;
        }

        v60 = v43;
        ++v61;
        v44 = v59;
        result = v53(v59, v58, v8);
        v59 = v44 + v56;
        v14 = v25;
        v16 = *(v19 + 16);
        v17 = v61;
        if (v61 == v16)
        {
          (*v15)(v6, 1, 1, v8);
          result = sub_23E7F55E0(v6, &qword_27E35A830, &unk_23E8308B0);
          goto LABEL_4;
        }
      }

      v27 = *(v21 + 3);
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7C8, &qword_23E830878);
      v30 = v54;
      v60 = v29;
      v25 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v25);
      v31 = v56;
      if (!v56)
      {
        goto LABEL_47;
      }

      v32 = result - v30;
      if (result - v30 == 0x8000000000000000 && v56 == -1)
      {
        goto LABEL_48;
      }

      v34 = v30;
      v35 = v32 / v56;
      *(v25 + 2) = v60;
      *(v25 + 3) = 2 * (v32 / v31);
      v36 = &v25[v30];
      v37 = v21;
      v38 = *(v21 + 2);
      v39 = *(v21 + 3) >> 1;
      v40 = v39 * v31;
      if (!v38)
      {
LABEL_33:
        v59 = &v36[v40];
        v41 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v26 = v41;
        goto LABEL_34;
      }

      if (v25 < v37 || v36 >= &v37[v34 + v40])
      {
        v59 = v35;
        v60 = v36;
        v48 = v40;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v25 == v37)
        {
LABEL_32:
          *(v37 + 2) = 0;
          goto LABEL_33;
        }

        v59 = v35;
        v60 = v36;
        v48 = v40;
        swift_arrayInitWithTakeBackToFront();
      }

      v40 = v48;
      v35 = v59;
      v36 = v60;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v24 = v55;
  (*v15)(v55, 1, 1, v8);
LABEL_37:

  result = sub_23E7F55E0(v24, &qword_27E35A830, &unk_23E8308B0);
  v45 = *(v14 + 3);
  if (v45 < 2)
  {
    return v14;
  }

  v46 = v45 >> 1;
  v42 = __OFSUB__(v46, v60);
  v47 = v46 - v60;
  if (!v42)
  {
    *(v14 + 2) = v47;
    return v14;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_23E803FC0()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  if (qword_2810C23E0 != -1)
  {
    swift_once();
  }

  if (qword_2810C2530)
  {
    v6 = qword_2810C2530;
    v7 = sub_23E82EA5C();
    v8 = [v6 objectForKey_];

    if (v8)
    {
      sub_23E82EC9C();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v19[2];
        v14 = v19[3];
        v15 = sub_23E82DC4C();
        v16 = *(v15 + 48);
        v17 = *(v15 + 52);
        swift_allocObject();
        sub_23E82DC3C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7F8, &qword_23E830898);
        sub_23E80A9D0(&qword_27E35A820, &qword_27E35A828);
        sub_23E82DC2C();

        sub_23E80A918(v13, v14);

        return *&v22[0];
      }
    }

    else
    {

      sub_23E7F55E0(v22, &qword_27E35A818, &qword_23E8308A8);
    }
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v0, qword_27E35A958);
    swift_beginAccess();
    (*(v1 + 16))(v5, v9, v0);
    v10 = sub_23E82DFEC();
    v11 = sub_23E82EBCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23E7EF000, v10, v11, "Failed to retrieve shortcuts. Unable to find user defaults for AVS", v12, 2u);
      MEMORY[0x23EF15860](v12, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE24shortcutsNamesDictionarySDyS2SGvgZ_0()
{
  v0 = type metadata accessor for AdaptiveVoiceShortcut();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E80B274(MEMORY[0x277D84F90]);
  v6 = sub_23E803FC0();
  v7 = v6;
  v44 = *(v6 + 16);
  if (!v44)
  {
LABEL_22:

    return v5;
  }

  v8 = 0;
  v43 = &v4[*(v0 + 20)];
  v9 = *(v1 + 80);
  v41 = v6;
  v42 = v6 + ((v9 + 32) & ~v9);
  v40 = v4;
  while (v8 < *(v7 + 16))
  {
    sub_23E80A318(v42 + *(v1 + 72) * v8, v4, type metadata accessor for AdaptiveVoiceShortcut);
    v13 = sub_23E82DDBC();
    v15 = v14;
    v16 = *v43;
    v17 = *(v43 + 1);

    sub_23E80AB24(v4, type metadata accessor for AdaptiveVoiceShortcut);
    if (!v17)
    {
      v28 = sub_23E81DE40(v13, v15);
      v30 = v29;

      if (v30)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v5;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23E803928();
          v5 = v45;
        }

        v32 = *(v5[6] + 16 * v28 + 8);

        v33 = *(v5[7] + 16 * v28 + 8);

        sub_23E803778(v28, v5);
      }

      goto LABEL_5;
    }

    v18 = v1;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v5;
    v20 = sub_23E81DE40(v13, v15);
    v22 = v5[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_24;
    }

    v26 = v21;
    if (v5[3] < v25)
    {
      sub_23E8034B8(v25, v19);
      v20 = sub_23E81DE40(v13, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_3;
    }

    if (v19)
    {
      goto LABEL_17;
    }

    v38 = v20;
    sub_23E803928();
    v20 = v38;
    if ((v26 & 1) == 0)
    {
LABEL_18:
      v5 = v45;
      v45[(v20 >> 6) + 8] |= 1 << v20;
      v34 = (v5[6] + 16 * v20);
      *v34 = v13;
      v34[1] = v15;
      v35 = (v5[7] + 16 * v20);
      *v35 = v16;
      v35[1] = v17;
      v36 = v5[2];
      v24 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v24)
      {
        goto LABEL_25;
      }

      v5[2] = v37;
      goto LABEL_4;
    }

LABEL_3:
    v10 = v20;

    v5 = v45;
    v11 = (v45[7] + 16 * v10);
    v12 = v11[1];
    *v11 = v16;
    v11[1] = v17;

LABEL_4:
    v1 = v18;
    v4 = v40;
    v7 = v41;
LABEL_5:
    if (v44 == ++v8)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_23E82EF1C();
  __break(1u);
  return result;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE9shortcutsSaySo0bC17ShortcutObjcClassCGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for AdaptiveVoiceShortcut();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  v9 = sub_23E803FC0();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v5 + 80);
    v30 = v9;
    v12 = v9 + ((v11 + 32) & ~v11);
    v13 = *(v5 + 72);
    do
    {
      sub_23E80A318(v12, v8, type metadata accessor for AdaptiveVoiceShortcut);
      v14 = objc_allocWithZone(AdaptiveVoiceShortcutObjcClass);
      v15 = [v14 init];
      v16 = &v8[*(v4 + 20)];
      if (*(v16 + 1))
      {
        v17 = *v16;
        v18 = *(v16 + 1);
      }

      v19 = sub_23E82EA5C();

      [v15 setName_];

      sub_23E82DDBC();
      v20 = sub_23E82EA5C();

      [v15 setIdentifier_];

      sub_23E7F537C(&v8[*(v4 + 28)], v3);
      v21 = type metadata accessor for AvailableShortcutAction();
      if ((*(*(v21 - 8) + 48))(v3, 1, v21) == 1)
      {
        sub_23E7F55E0(v3, &qword_27E35A210, &unk_23E82FFD0);
      }

      else
      {
        v22 = &v3[*(v21 + 20)];
        v24 = *v22;
        v23 = *(v22 + 1);

        sub_23E80AB24(v3, type metadata accessor for AvailableShortcutAction);
      }

      v25 = sub_23E82EA5C();

      [v15 setAssociatedShortcutName_];

      v26 = v15;
      MEMORY[0x23EF14B80]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23E82EB1C();
      }

      sub_23E82EB3C();

      sub_23E80AB24(v8, type metadata accessor for AdaptiveVoiceShortcut);
      v12 += v13;
      --v10;
    }

    while (v10);
    v28 = v31;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v28;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE29shortcutsFormattedIdentifiersSaySSGvgZ_0()
{
  v0 = type metadata accessor for AdaptiveVoiceShortcut();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E803FC0();
  v6 = *(v5 + 16);
  if (v6)
  {
    v26 = MEMORY[0x277D84F90];
    sub_23E800930(0, v6, 0);
    v7 = v26;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v18[1] = v5;
    v19 = v9;
    do
    {
      sub_23E80A318(v8, v4, type metadata accessor for AdaptiveVoiceShortcut);
      v24 = sub_23E82DDBC();
      v25 = v10;
      v22 = 45;
      v23 = 0xE100000000000000;
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_23E7F84B0();
      sub_23E82EC7C();

      v11 = sub_23E82EA9C();
      v13 = v12;

      sub_23E80AB24(v4, type metadata accessor for AdaptiveVoiceShortcut);
      v26 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23E800930((v14 > 1), v15 + 1, 1);
        v7 = v26;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += v19;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

void *sub_23E804DEC(uint64_t a1, unsigned __int8 *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = sub_23E82E00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E82DEEC();
  v60 = *(v8 - 8);
  v9 = *(v60 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = v49 - v12;
  v59 = sub_23E82DD3C();
  v13 = *(v59 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v59);
  v58 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultManager];
  v17 = sub_23E82DC4C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v62 = sub_23E82DC3C();
  if (qword_27E35A1A8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v65 = qword_27E35A710;
    v66 = *algn_27E35A718;

    MEMORY[0x23EF14B60](a1, a2);
    v20 = v66;
    v57 = v65;
    v21 = sub_23E82EA5C();
    v65 = 0;
    v22 = [v16 contentsOfDirectoryAtPath:v21 error:&v65];

    a2 = v65;
    v51 = v16;
    if (!v22)
    {
      v33 = v65;

      v34 = sub_23E82DCEC();

      swift_willThrow();
      v35 = v34;
      v13 = MEMORY[0x277D84F90];
      v36 = v50;
      if (qword_27E35A1C0 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v4, qword_27E35A958);
      swift_beginAccess();
      (*(v5 + 16))(v36, v37, v4);
      v38 = v35;
      v39 = sub_23E82DFEC();
      v40 = sub_23E82EBCC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = v5;
        v43 = swift_slowAlloc();
        *v41 = 138412290;
        v44 = v35;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_23E7EF000, v39, v40, "Failed to read directory: %@", v41, 0xCu);
        sub_23E7F55E0(v43, &unk_27E35A870, &qword_23E8308E0);
        v46 = v43;
        v5 = v42;
        MEMORY[0x23EF15860](v46, -1, -1);
        MEMORY[0x23EF15860](v41, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v36, v4);
      goto LABEL_21;
    }

    v61 = v20;
    v23 = sub_23E82EB0C();
    v24 = a2;

    v55 = *(v23 + 16);
    if (!v55)
    {
      break;
    }

    v49[1] = v5;
    v49[2] = v4;
    v4 = 0;
    a1 = 0;
    v56 = (v13 + 1);
    v53 = v60 + 8;
    v54 = (v60 + 16);
    v52 = v60 + 32;
    v5 = v23 + 40;
    v13 = MEMORY[0x277D84F90];
    while (v4 < *(v23 + 16))
    {
      v26 = *(v5 - 8);
      v25 = *v5;
      v65 = v57;
      v66 = v61;

      MEMORY[0x23EF14B60](47, 0xE100000000000000);
      MEMORY[0x23EF14B60](v26, v25);

      v27 = v58;
      sub_23E82DD0C();

      v28 = sub_23E82DD4C();
      v30 = v29;
      (*v56)(v27, v59);
      sub_23E80AADC(&qword_27E35A838, MEMORY[0x277D797D8]);
      v31 = v64;
      sub_23E82DC2C();
      (*v54)(v63, v31, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_23E8031D8(0, v13[2] + 1, 1, v13, &qword_27E35A7C8, &qword_23E830878, MEMORY[0x277D797D8]);
      }

      v16 = v13[2];
      v32 = v13[3];
      if (v16 >= v32 >> 1)
      {
        v13 = sub_23E8031D8(v32 > 1, v16 + 1, 1, v13, &qword_27E35A7C8, &qword_23E830878, MEMORY[0x277D797D8]);
      }

      ++v4;
      sub_23E80A918(v28, v30);
      a2 = v60;
      (*(v60 + 1))(v64, v8);
      v13[2] = v16 + 1;
      (*(a2 + 4))(v13 + ((a2[80] + 32) & ~a2[80]) + *(a2 + 9) * v16, v63, v8);
      v5 += 16;
      if (v55 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_14:

LABEL_21:
  v47 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE28retriveDataForAllEnrollmentsSay0C7Actions018VASingleEnrollmentF0VGvgZ_0()
{
  v0 = type metadata accessor for AdaptiveVoiceShortcut();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E803FC0();
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23E800970(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      sub_23E80A318(v8, v4, type metadata accessor for AdaptiveVoiceShortcut);
      v10 = sub_23E82DDBC();
      v12 = sub_23E804DEC(v10, v11);

      sub_23E80AB24(v4, type metadata accessor for AdaptiveVoiceShortcut);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23E800970((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      *(v7 + 8 * v14 + 32) = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v15 = sub_23E803AA0(v7);

  return v15;
}

uint64_t sub_23E8057CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveVoiceShortcut();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E805830(uint64_t a1)
{
  v2 = sub_23E82E00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_23E82DC7C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_23E82DC6C();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7F8, &qword_23E830898);
  sub_23E80A9D0(&qword_27E35A800, &qword_27E35A808);
  v11 = sub_23E82DC5C();
  if (qword_2810C23E0 != -1)
  {
    v23 = v11;
    v24 = v12;
    swift_once();
    v11 = v23;
    v12 = v24;
  }

  v13 = v11;
  v14 = v12;
  if (qword_2810C2530)
  {
    v15 = qword_2810C2530;
    v16 = sub_23E82DD5C();
    v17 = sub_23E82EA5C();
    [v15 setObject:v16 forKey:v17];

    sub_23E80A918(v13, v14);
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    (*(v3 + 16))(v7, v19, v2);
    v20 = sub_23E82DFEC();
    v21 = sub_23E82EBCC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23E7EF000, v20, v21, "Failed to save shortcuts. Unable to find user defaults for AVS", v22, 2u);
      MEMORY[0x23EF15860](v22, -1, -1);
    }

    sub_23E80A918(v13, v14);

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE09deleteAllD0yyF_0()
{
  v60[3] = *MEMORY[0x277D85DE8];
  v56 = sub_23E82E00C();
  v58 = *(v56 - 8);
  v0 = *(v58 + 64);
  v1 = MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v54 = &v53 - v4;
  MEMORY[0x28223BE20](v3);
  v57 = &v53 - v5;
  v6 = sub_23E82DCFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_23E82DD3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() defaultManager];
  if (qword_27E35A1A8 != -1)
  {
    swift_once();
  }

  v21 = qword_27E35A710;
  v22 = *algn_27E35A718;
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v6);

  v53 = v21;
  sub_23E82DD2C();
  v23 = sub_23E82DD1C();
  (*(v16 + 8))(v19, v15);
  v60[0] = 0;
  v24 = [v20 removeItemAtURL:v23 error:v60];

  if (v24)
  {
    v25 = v60[0];
    v26 = v57;
    v27 = v58;
    v28 = v56;
  }

  else
  {
    v29 = v60[0];
    v30 = sub_23E82DCEC();

    swift_willThrow();
    v27 = v58;
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v28 = v56;
    v31 = __swift_project_value_buffer(v56, qword_27E35A958);
    swift_beginAccess();
    v32 = v55;
    (*(v27 + 16))(v55, v31, v28);
    v33 = v30;
    v34 = sub_23E82DFEC();
    v35 = sub_23E82EBCC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v59 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_23E8257E0(v53, v22, &v59);
      *(v36 + 12) = 2112;
      v39 = v30;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_23E7EF000, v34, v35, "Failed to delete all shortcuts. Unable to delete commands directory: %s error: %@", v36, 0x16u);
      sub_23E7F55E0(v37, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x23EF15860](v38, -1, -1);
      MEMORY[0x23EF15860](v36, -1, -1);

      (*(v27 + 8))(v55, v28);
    }

    else
    {

      (*(v27 + 8))(v32, v28);
    }

    v26 = v57;
  }

  if (qword_2810C23E0 != -1)
  {
    swift_once();
  }

  if (qword_2810C2530)
  {
    v41 = qword_2810C2530;
    v42 = sub_23E82EA5C();
    [v41 removeObjectForKey:v42];

    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v28, qword_27E35A958);
    swift_beginAccess();
    (*(v27 + 16))(v26, v43, v28);
    v44 = sub_23E82DFEC();
    v45 = sub_23E82EBEC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_23E7EF000, v44, v45, "Deleted all AVS shortcuts", v46, 2u);
      MEMORY[0x23EF15860](v46, -1, -1);
    }

    v47 = v20;
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v28, qword_27E35A958);
    swift_beginAccess();
    v26 = v54;
    (*(v27 + 16))(v54, v48, v28);
    v47 = sub_23E82DFEC();
    v49 = sub_23E82EBCC();
    if (os_log_type_enabled(v47, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_23E7EF000, v47, v49, "Failed to delete all shortcuts. Unable to find user defaults for AVS", v50, 2u);
      MEMORY[0x23EF15860](v50, -1, -1);
    }

    v41 = v20;
  }

  result = (*(v27 + 8))(v26, v28);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E806500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(type metadata accessor for AdaptiveVoiceShortcut() - 8);
  v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  while (1)
  {
    sub_23E82DDBC();
    v7 = sub_23E82EA5C();

    v8 = sub_23E82EA5C();
    v9 = [v7 isEqual_];

    if (v9)
    {
      break;
    }

    ++v3;
    v5 += v6;
    if (v1 == v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_23E806634(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AdaptiveVoiceShortcut();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v38 - v16;
  v18 = *a1;
  result = sub_23E806500(*a1);
  if (!v3)
  {
    v44 = v17;
    v40 = v15;
    v38[1] = 0;
    if (v20)
    {
      return v18[2];
    }

    v41 = v12;
    v39 = a1;
    v43 = a2;
    v46 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v23 = v18 + 2;
      v22 = v18[2];
      v24 = v44;
      if (v21 == v22)
      {
        return v46;
      }

      v42 = v8;
      while (v21 < v22)
      {
        v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v47 = v18;
        v45 = v25;
        v26 = v18 + v25;
        v27 = *(v8 + 72);
        v28 = v27 * v21;
        sub_23E80A318(&v26[v27 * v21], v24, type metadata accessor for AdaptiveVoiceShortcut);
        sub_23E82DDBC();
        v29 = sub_23E82EA5C();

        v30 = a3;
        v31 = sub_23E82EA5C();
        v32 = [v29 isEqual_];

        v24 = v44;
        result = sub_23E80AB24(v44, type metadata accessor for AdaptiveVoiceShortcut);
        if (v32)
        {
          a3 = v30;
          v8 = v42;
          v18 = v47;
        }

        else
        {
          v33 = v46;
          if (v21 == v46)
          {
            a3 = v30;
            v18 = v47;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v34 = *v23;
            if (v46 >= *v23)
            {
              goto LABEL_25;
            }

            a3 = v30;
            v35 = v27 * v46;
            v36 = v40;
            result = sub_23E80A318(&v26[v27 * v46], v40, type metadata accessor for AdaptiveVoiceShortcut);
            if (v21 >= v34)
            {
              goto LABEL_26;
            }

            sub_23E80A318(&v26[v28], v41, type metadata accessor for AdaptiveVoiceShortcut);
            v18 = v47;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_23E8182B8(v18);
            }

            v37 = v18 + v45;
            result = sub_23E80A96C(v41, v18 + v45 + v35);
            if (v21 >= v18[2])
            {
              goto LABEL_27;
            }

            result = sub_23E80A96C(v36, &v37[v28]);
            *v39 = v18;
            v33 = v46;
          }

          v46 = v33 + 1;
          v8 = v42;
        }

        ++v21;
        v23 = v18 + 2;
        v22 = v18[2];
        if (v21 == v22)
        {
          return v46;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE14deleteShortcut14withIdentifierySS_tF_0(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = sub_23E82E00C();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23E82DCFC();
  v7 = *(v52 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - v13;
  v15 = sub_23E82DD3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_23E803FC0();

  v53 = a1;
  v20 = sub_23E806634(&v55, a1, a2);
  v54 = a2;

  v21 = v55;
  v22 = v55[2];
  if (v20 > v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v20 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (__OFADD__(v22, v20 - v22))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v20 > v21[3] >> 1)
  {
    if (v22 <= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v21 = sub_23E8031D8(isUniquelyReferenced_nonNull_native, v24, 1, v21, &qword_27E35A810, &qword_23E8308A0, type metadata accessor for AdaptiveVoiceShortcut);
    v55 = v21;
  }

  sub_23E8182E0(v20, v22, 0);
  v20 = [objc_opt_self() defaultManager];
  if (qword_27E35A1A8 != -1)
  {
    goto LABEL_23;
  }

LABEL_11:
  v57 = qword_27E35A710;
  v58 = *algn_27E35A718;

  MEMORY[0x23EF14B60](v53, v54);
  v25 = v57;
  v26 = v58;
  (*(v16 + 56))(v14, 1, 1, v15);
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v52);

  v52 = v25;
  sub_23E82DD2C();
  v27 = sub_23E82DD1C();
  (*(v16 + 8))(v19, v15);
  v57 = 0;
  LODWORD(v25) = [v20 removeItemAtURL:v27 error:&v57];

  if (v25)
  {
    v28 = v57;
  }

  else
  {
    v48 = v20;
    v29 = v57;
    v30 = sub_23E82DCEC();

    swift_willThrow();
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v31 = v51;
    v32 = __swift_project_value_buffer(v51, qword_27E35A958);
    swift_beginAccess();
    v34 = v49;
    v33 = v50;
    (*(v50 + 16))(v49, v32, v31);
    v35 = v54;

    v36 = v30;
    v37 = sub_23E82DFEC();
    v38 = sub_23E82EBCC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v39 = 136315650;
      *(v39 + 4) = sub_23E8257E0(v53, v35, &v56);
      *(v39 + 12) = 2080;
      v42 = v34;
      v43 = sub_23E8257E0(v52, v26, &v56);

      *(v39 + 14) = v43;
      *(v39 + 22) = 2112;
      v44 = v30;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v45;
      *v40 = v45;
      _os_log_impl(&dword_23E7EF000, v37, v38, "Failed to delete shortcut with identifier: %s. Unable to delete commands directory: %s error: %@", v39, 0x20u);
      sub_23E7F55E0(v40, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23EF15860](v41, -1, -1);
      MEMORY[0x23EF15860](v39, -1, -1);

      (*(v50 + 8))(v42, v51);
    }

    else
    {

      (*(v33 + 8))(v34, v31);
    }

    v20 = v48;
  }

  sub_23E805830(v21);

  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void *_sSo8AVSStoreC22AdaptiveVoiceShortcutsE33saveShortcutEnrollmentDataToFiles10shortcutId_SSSgSS_Say0C7Actions08VASinglegH0VGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v75 = sub_23E82E00C();
  v6 = *(v75 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v75);
  v72 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - v10;
  v69 = sub_23E82DDDC();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_23E82DEEC();
  v14 = *(v74 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v74);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = objc_opt_self();
  v71 = [v57 defaultManager];
  if (qword_27E35A1A8 != -1)
  {
    swift_once();
  }

  v78 = qword_27E35A710;
  v79 = *algn_27E35A718;

  MEMORY[0x23EF14B60](a1, a2);
  v19 = v78;
  v20 = *(a3 + 16);
  if (v20)
  {
    v70 = v79;
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v65 = v22;
    v23 = a3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v64 = (v11 + 8);
    v63 = *(v21 + 56);
    v61 = (v6 + 16);
    v60 = (v6 + 8);
    v67 = v21;
    v62 = (v21 - 8);
    *&v18 = 138412290;
    v58 = v18;
    v66 = v78;
    v22(v17, v23, v74);
    while (1)
    {
      v77[0] = v19;
      v77[1] = v70;

      MEMORY[0x23EF14B60](47, 0xE100000000000000);
      v24 = v68;
      sub_23E82DECC();
      sub_23E80AADC(&qword_27E35A7E8, MEMORY[0x277CC95F0]);
      v25 = v69;
      v26 = sub_23E82EEFC();
      MEMORY[0x23EF14B60](v26);

      (*v64)(v24, v25);
      MEMORY[0x23EF14B60](0x6E6F736A2ELL, 0xE500000000000000);
      v73 = v77[0];
      v76 = 1;
      v27 = sub_23E82EA5C();
      v28 = v71;
      LOBYTE(v25) = [v71 fileExistsAtPath:v27 isDirectory:&v76];

      if ((v25 & 1) == 0)
      {
        v29 = sub_23E82EA5C();
        v77[0] = 0;
        v30 = [v28 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:v77];

        if (v30)
        {
          v31 = v77[0];
        }

        else
        {
          v32 = v77[0];
          v33 = sub_23E82DCEC();

          swift_willThrow();
          if (qword_27E35A1C0 != -1)
          {
            swift_once();
          }

          v34 = v75;
          v35 = __swift_project_value_buffer(v75, qword_27E35A958);
          swift_beginAccess();
          (*v61)(v59, v35, v34);
          v36 = v33;
          v37 = sub_23E82DFEC();
          v38 = sub_23E82EBCC();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            *v39 = v58;
            v41 = v33;
            v42 = _swift_stdlib_bridgeErrorToNSError();
            *(v39 + 4) = v42;
            *v40 = v42;
            _os_log_impl(&dword_23E7EF000, v37, v38, "Failed to create directory for shortcut: %@", v39, 0xCu);
            sub_23E7F55E0(v40, &unk_27E35A870, &qword_23E8308E0);
            MEMORY[0x23EF15860](v40, -1, -1);
            MEMORY[0x23EF15860](v39, -1, -1);
          }

          else
          {
          }

          (*v60)(v59, v75);
        }
      }

      v43 = sub_23E82DC7C();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_23E82DC6C();
      sub_23E80AADC(&qword_27E35A7F0, MEMORY[0x277D797D8]);
      v46 = sub_23E82DC5C();
      v48 = v47;
      v49 = [v57 defaultManager];
      v50 = sub_23E82EA5C();

      v51 = sub_23E82DD5C();
      [v49 createFileAtPath:v50 contents:v51 attributes:0];
      v52 = v46;
      v53 = v74;
      sub_23E80A918(v52, v48);

      v19 = v66;
      (*v62)(v17, v53);
      v23 += v63;
      if (!--v20)
      {
        break;
      }

      v65(v17, v23, v53);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_23E80799C(char *a1, char *a2, char *a3, char *a4, void *a5)
{
  v72 = a5;
  v71 = sub_23E82DDAC();
  v9 = *(*(v71 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v71);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v65 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v68 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v17;
  v20 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v20 = a2 - a1;
  }

  v21 = v20 >> 4;
  v22 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v22 = a3 - a2;
  }

  v23 = v22 >> 4;
  if (v21 >= v22 >> 4)
  {
    if (a4 != a2 || &a2[16 * v23] <= a4)
    {
      v44 = v18;
      memmove(a4, a2, 16 * v23);
      v18 = v44;
    }

    v75 = &a4[16 * v23];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v67 = v14;
      v68 = (v18 + 8);
      v70 = a1;
      v73 = a4;
LABEL_28:
      v74 = a2;
      v66 = a2 - 16;
      a3 -= 16;
      v45 = v75;
      v46 = &off_278C5C000;
      while (1)
      {
        v47 = *(v45 - 2);
        v48 = *(v45 - 1);
        v45 -= 16;
        v50 = *(v74 - 2);
        v49 = *(v74 - 1);

        v51 = sub_23E82EA5C();
        v52 = v72;
        v53 = [v72 *(v46 + 170)];

        if (!v53)
        {
          goto LABEL_47;
        }

        v54 = v46;
        v55 = v67;
        sub_23E82DD8C();

        v56 = sub_23E82EA5C();
        v57 = [v52 v54 + 2009];

        if (!v57)
        {
          goto LABEL_48;
        }

        v58 = v69;
        sub_23E82DD8C();

        v59 = sub_23E82DD7C();
        v60 = *v68;
        v61 = v58;
        v62 = v71;
        (*v68)(v61, v71);
        v60(v55, v62);

        a4 = v73;
        v63 = a3 + 16;
        if (v59)
        {
          v64 = v66;
          if (v63 != v74)
          {
            *a3 = *v66;
          }

          if (v75 <= a4 || (a2 = v64, v64 <= v70))
          {
            a2 = v64;
            break;
          }

          goto LABEL_28;
        }

        v46 = &off_278C5C000;
        if (v63 != v75)
        {
          *a3 = *v45;
        }

        a3 -= 16;
        v75 = v45;
        if (v45 <= a4)
        {
          v75 = v45;
          a2 = v74;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= &a4[(v75 - a4 + (v75 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(a2, a4, 16 * ((v75 - a4) / 16));
    }

    return;
  }

  if (a4 != a1 || &a1[16 * v21] <= a4)
  {
    v24 = &v65 - v17;
    v25 = v18;
    memmove(a4, a1, 16 * v21);
    v18 = v25;
    v19 = v24;
  }

  v75 = &a4[16 * v21];
  if (a2 - a1 < 16 || a2 >= a3)
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v69 = v19;
  v66 = a3;
  v67 = (v18 + 8);
  while (1)
  {
    v70 = a1;
    v73 = a4;
    v74 = a2;
    v26 = *a2;
    v27 = *(a2 + 1);
    v28 = *a4;
    v29 = *(a4 + 1);

    v30 = sub_23E82EA5C();
    v31 = v72;
    v32 = [v72 dateFromString_];

    if (!v32)
    {
      break;
    }

    v33 = v69;
    sub_23E82DD8C();

    v34 = sub_23E82EA5C();
    v35 = [v31 &selRef_int16ChannelData + 1];

    if (!v35)
    {
      goto LABEL_46;
    }

    v36 = v68;
    sub_23E82DD8C();

    v37 = sub_23E82DD7C();
    v38 = *v67;
    v39 = v36;
    v40 = v71;
    (*v67)(v39, v71);
    v38(v33, v40);

    if (v37)
    {
      a4 = v73;
      v41 = v74;
      v42 = v74;
      a2 = v74 + 16;
    }

    else
    {
      v41 = v73;
      a2 = v74;
      v42 = v73;
      a4 = v73 + 16;
    }

    v43 = v70;
    if (v70 != v41)
    {
      *v70 = *v42;
    }

    a1 = v43 + 16;
    if (a4 >= v75 || a2 >= v66)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_23E807F18(char **a1, char *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_23E82684C(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 16 * *v10);
      v23 = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_23E80799C(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_23E8080B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v157 = a4;
  v158 = a1;
  v171 = sub_23E82DDAC();
  v7 = *(*(v171 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v171);
  v168 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v162 = &v152 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v152 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v152 - v16;
  MEMORY[0x28223BE20](v15);
  v175 = MEMORY[0x277D84F90];
  v164 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v152 = &v152 - v18;
    v167 = v19;
    v170 = (v17 + 8);
    v21 = a5;
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v156 = a5;
    v172 = v21;
    while (1)
    {
      if (v22 + 1 >= v20)
      {
        v41 = v22 + 1;
        v57 = v157;
      }

      else
      {
        v166 = v20;
        v155 = v23;
        v24 = *v164;
        v25 = (*v164 + 16 * (v22 + 1));
        v26 = *v25;
        v27 = v25[1];
        v28 = *v164 + 16 * v22;
        a5 = *v28;
        v29 = *(v28 + 8);

        v169 = v29;

        v30 = sub_23E82EA5C();
        v31 = v172;
        v32 = [v172 dateFromString_];

        if (!v32)
        {
          goto LABEL_130;
        }

        v33 = v152;
        sub_23E82DD8C();

        v34 = sub_23E82EA5C();
        v35 = [v31 dateFromString_];

        if (!v35)
        {
          goto LABEL_131;
        }

        v36 = v153;
        sub_23E82DD8C();

        LODWORD(v174) = sub_23E82DD7C();
        a5 = v170;
        v37 = v171;
        v38 = *v170;
        (*v170)(v36, v171);
        v173 = v38;
        (v38)(v33, v37);

        v39 = v22 + 2;
        v154 = v22;
        v169 = 16 * v22;
        v40 = (v24 + 16 * v22 + 40);
        while (1)
        {
          v41 = v166;
          if (v166 == v39)
          {
            break;
          }

          v42 = *(v40 - 1);
          v43 = *v40;
          v44 = *(v40 - 3);
          v45 = *(v40 - 2);

          a5 = sub_23E82EA5C();
          v46 = v172;
          v47 = [v172 dateFromString_];

          if (!v47)
          {
            goto LABEL_126;
          }

          a5 = v163;
          sub_23E82DD8C();

          v49 = sub_23E82EA5C();
          v50 = [v46 dateFromString_];

          if (!v50)
          {
            goto LABEL_125;
          }

          v51 = v162;
          sub_23E82DD8C();

          v52 = sub_23E82DD7C();
          v53 = v51;
          v54 = v171;
          v55 = a5;
          a5 = v170;
          v56 = v173;
          (v173)(v53, v171);
          (v56)(v55, v54);

          ++v39;
          v40 += 2;
          if ((v174 ^ v52))
          {
            v41 = v39 - 1;
            break;
          }
        }

        v57 = v157;
        v22 = v154;
        v23 = v155;
        v58 = v169;
        if (v174)
        {
          if (v41 < v154)
          {
            goto LABEL_119;
          }

          if (v154 < v41)
          {
            v59 = 0;
            v60 = 16 * v41;
            v61 = v154;
            do
            {
              if (v61 != v41 + v59 - 1)
              {
                v62 = *v164;
                if (!*v164)
                {
                  goto LABEL_128;
                }

                v63 = (v62 + v58);
                v64 = v62 + v60;
                v65 = *v63;
                v66 = v63[1];
                *v63 = *(v64 - 16);
                *(v64 - 16) = v65;
                *(v64 - 8) = v66;
              }

              ++v61;
              --v59;
              v60 -= 16;
              v58 += 16;
            }

            while (v61 < v41 + v59);
          }
        }
      }

      v67 = v164[1];
      if (v41 < v67)
      {
        if (__OFSUB__(v41, v22))
        {
          goto LABEL_118;
        }

        if (v41 - v22 < v57)
        {
          if (__OFADD__(v22, v57))
          {
            goto LABEL_120;
          }

          if (v22 + v57 < v67)
          {
            v67 = v22 + v57;
          }

          if (v67 < v22)
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v148 = v172;

            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            v149 = v48;

            __break(1u);
LABEL_128:
            v150 = v172;

            __break(1u);
LABEL_129:
            v151 = v48;

            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (v41 != v67)
          {
            v159 = v67;
            v154 = v22;
            v155 = v23;
            v169 = *v164;
            v68 = (v169 + 16 * v41);
            v69 = (v22 - v41);
            v70 = &off_278C5C000;
            do
            {
              v166 = v41;
              v71 = (v169 + 16 * v41);
              v72 = *v71;
              a5 = v71[1];
              v160 = v69;
              v161 = v68;
              v73 = v69;
              do
              {
                v74 = *(v68 - 2);
                v75 = *(v68 - 1);

                v174 = a5;
                v76 = sub_23E82EA5C();
                v77 = v172;
                a5 = v70;
                v78 = [v172 *(v70 + 170)];

                if (!v78)
                {
                  goto LABEL_122;
                }

                v173 = v73;
                v79 = v167;
                sub_23E82DD8C();

                v80 = sub_23E82EA5C();
                v81 = [v77 a5 + 2009];

                if (!v81)
                {
                  goto LABEL_123;
                }

                v82 = v168;
                sub_23E82DD8C();

                v83 = sub_23E82DD7C();
                v84 = *v170;
                v85 = v82;
                v86 = v171;
                (*v170)(v85, v171);
                (v84)(v79, v86);

                v70 = &off_278C5C000;
                if ((v83 & 1) == 0)
                {
                  break;
                }

                v87 = v173;
                if (!v169)
                {
                  goto LABEL_124;
                }

                v88 = *v68;
                a5 = v68[1];
                *v68 = *(v68 - 1);
                *(v68 - 1) = a5;
                *(v68 - 2) = v88;
                v68 -= 2;
                v89 = __CFADD__(v87, 1);
                v73 = v87 + 1;
              }

              while (!v89);
              v41 = v166 + 1;
              v68 = v161 + 2;
              v69 = v160 - 1;
            }

            while (v166 + 1 != v159);
            v22 = v154;
            v23 = v155;
            v41 = v159;
          }
        }
      }

      if (v41 < v22)
      {
        goto LABEL_117;
      }

      v159 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_23E8033B4(0, *(v23 + 2) + 1, 1, v23);
      }

      v91 = *(v23 + 2);
      v90 = *(v23 + 3);
      v92 = v91 + 1;
      v48 = v172;
      if (v91 >= v90 >> 1)
      {
        v23 = sub_23E8033B4((v90 > 1), v91 + 1, 1, v23);
        v48 = v172;
      }

      *(v23 + 2) = v92;
      v93 = v23 + 32;
      v94 = &v23[16 * v91 + 32];
      v95 = v159;
      *v94 = v22;
      *(v94 + 1) = v95;
      v173 = *v158;
      if (!v173)
      {
        goto LABEL_129;
      }

      if (v91)
      {
        v169 = (v23 + 32);
        while (1)
        {
          v96 = v92 - 1;
          if (v92 >= 4)
          {
            break;
          }

          if (v92 == 3)
          {
            v97 = *(v23 + 4);
            v98 = *(v23 + 5);
            v107 = __OFSUB__(v98, v97);
            v99 = v98 - v97;
            v100 = v107;
LABEL_62:
            if (v100)
            {
              goto LABEL_107;
            }

            v113 = &v23[16 * v92];
            v115 = *v113;
            v114 = *(v113 + 1);
            v116 = __OFSUB__(v114, v115);
            v117 = v114 - v115;
            v118 = v116;
            if (v116)
            {
              goto LABEL_109;
            }

            v119 = &v93[16 * v96];
            v121 = *v119;
            v120 = *(v119 + 1);
            v107 = __OFSUB__(v120, v121);
            v122 = v120 - v121;
            if (v107)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v117, v122))
            {
              goto LABEL_114;
            }

            if (v117 + v122 >= v99)
            {
              if (v99 < v122)
              {
                v96 = v92 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v92 < 2)
          {
            goto LABEL_115;
          }

          v123 = &v23[16 * v92];
          v125 = *v123;
          v124 = *(v123 + 1);
          v107 = __OFSUB__(v124, v125);
          v117 = v124 - v125;
          v118 = v107;
LABEL_77:
          if (v118)
          {
            goto LABEL_111;
          }

          v126 = &v93[16 * v96];
          v128 = *v126;
          v127 = *(v126 + 1);
          v107 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v107)
          {
            goto LABEL_113;
          }

          if (v129 < v117)
          {
            goto LABEL_3;
          }

LABEL_84:
          if (v96 - 1 >= v92)
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

          v134 = *v164;
          if (!*v164)
          {
            goto LABEL_127;
          }

          v135 = &v93[16 * v96 - 16];
          v136 = *v135;
          a5 = v96;
          v137 = &v93[16 * v96];
          v138 = *(v137 + 1);
          v139 = (v134 + 16 * *v135);
          v140 = (v134 + 16 * *v137);
          v174 = (v134 + 16 * v138);
          v141 = v48;
          v142 = v165;
          sub_23E80799C(v139, v140, v174, v173, v141);
          v165 = v142;
          if (v142)
          {

            v175 = v23;
            a5 = v156;
            goto LABEL_97;
          }

          if (v138 < v136)
          {
            goto LABEL_102;
          }

          v143 = *(v23 + 2);
          if (a5 > v143)
          {
            goto LABEL_103;
          }

          *v135 = v136;
          *(v135 + 1) = v138;
          if (a5 >= v143)
          {
            goto LABEL_104;
          }

          v92 = v143 - 1;
          memmove(v137, v137 + 16, 16 * (v143 - 1 - a5));
          *(v23 + 2) = v143 - 1;
          v48 = v172;
          v93 = v169;
          if (v143 <= 2)
          {
            goto LABEL_3;
          }
        }

        v101 = &v93[16 * v92];
        v102 = *(v101 - 8);
        v103 = *(v101 - 7);
        v107 = __OFSUB__(v103, v102);
        v104 = v103 - v102;
        if (v107)
        {
          goto LABEL_105;
        }

        v106 = *(v101 - 6);
        v105 = *(v101 - 5);
        v107 = __OFSUB__(v105, v106);
        v99 = v105 - v106;
        v100 = v107;
        if (v107)
        {
          goto LABEL_106;
        }

        v108 = &v23[16 * v92];
        v110 = *v108;
        v109 = *(v108 + 1);
        v107 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v107)
        {
          goto LABEL_108;
        }

        v107 = __OFADD__(v99, v111);
        v112 = v99 + v111;
        if (v107)
        {
          goto LABEL_110;
        }

        if (v112 >= v104)
        {
          v130 = &v93[16 * v96];
          v132 = *v130;
          v131 = *(v130 + 1);
          v107 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v107)
          {
            goto LABEL_116;
          }

          if (v99 < v133)
          {
            v96 = v92 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_3:
      v20 = v164[1];
      v22 = v159;
      a5 = v156;
      if (v159 >= v20)
      {
        v175 = v23;
        goto LABEL_94;
      }
    }
  }

  v144 = a5;
LABEL_94:
  v145 = *v158;
  if (*v158)
  {
    v146 = a5;
    v147 = v165;
    sub_23E807F18(&v175, v145, v164, v146);
    v165 = v147;
    if (v147)
    {

LABEL_97:
    }

    else
    {
    }
  }

  else
  {
LABEL_132:

    __break(1u);
  }
}

void sub_23E808B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v48 = a5;
  v46 = sub_23E82DDAC();
  v9 = *(*(v46 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v39 - v13;
  v40 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v44 = (v12 + 8);
    v49 = v14;
    v15 = (v14 + 16 * a3);
    v16 = a1 - a3;
    v17 = &off_278C5C000;
LABEL_5:
    v42 = v15;
    v43 = a3;
    v18 = (v49 + 16 * a3);
    v19 = *v18;
    v20 = v18[1];
    v41 = v16;
    v21 = v16;
    while (1)
    {
      v22 = *(v15 - 2);
      v23 = *(v15 - 1);

      v52 = v23;

      v24 = sub_23E82EA5C();
      v25 = v48;
      v26 = [v48 *(v17 + 170)];

      if (!v26)
      {
        break;
      }

      v50 = v20;
      v51 = v21;
      v27 = v17;
      v28 = v47;
      sub_23E82DD8C();

      v29 = sub_23E82EA5C();
      v30 = [v25 v27 + 2009];

      if (!v30)
      {
        goto LABEL_14;
      }

      v31 = v45;
      sub_23E82DD8C();

      v32 = sub_23E82DD7C();
      v33 = *v44;
      v34 = v31;
      v35 = v46;
      (*v44)(v34, v46);
      v33(v28, v35);

      v17 = v27;
      v36 = v51;
      if (v32)
      {
        if (!v49)
        {
          goto LABEL_15;
        }

        v37 = *v15;
        v20 = v15[1];
        *v15 = *(v15 - 1);
        *(v15 - 1) = v20;
        *(v15 - 2) = v37;
        v15 -= 2;
        v38 = __CFADD__(v36, 1);
        v21 = v36 + 1;
        if (!v38)
        {
          continue;
        }
      }

      a3 = v43 + 1;
      v15 = v42 + 2;
      v16 = v41 - 1;
      if (v43 + 1 == v40)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_23E808DC8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_23E82EEEC();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_23E82EB2C();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_23E8080B8(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_23E808B18(0, v3, 1, a1, v4);
  }
}

void sub_23E808EF8(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23E826860(v3);
  }

  v5 = *(v3 + 2);
  v7[0] = (v3 + 32);
  v7[1] = v5;
  v6 = v4;
  sub_23E808DC8(v7, v6);

  *a1 = v3;
}

void sub_23E808F90(void *a1)
{
  v88 = a1;
  v95 = *MEMORY[0x277D85DE8];
  v1 = sub_23E82E00C();
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v75 - v6;
  v8 = sub_23E82DCFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v75 - v15;
  v86 = sub_23E82DD3C();
  v84 = *(v86 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultManager];
  if (qword_27E35A1B0 != -1)
  {
    swift_once();
  }

  v19 = qword_27E35A720;
  v20 = *algn_27E35A728;

  v87 = v19;
  v21 = sub_23E82EA5C();
  v93 = 0;
  v22 = [v18 contentsOfDirectoryAtPath:v21 error:&v93];

  v23 = v93;
  if (v22)
  {
    v82 = v20;
    v24 = sub_23E82EB0C();
    v25 = v23;

    v26 = *(v24 + 16);
    if (v26 < 0x1F5)
    {

      goto LABEL_28;
    }

    v78 = v12;
    v79 = v9;
    v80 = v8;
    v75 = v5;
    v81 = v18;
    v76 = v1;
    v92 = MEMORY[0x277D84F90];
    sub_23E800930(0, v26, 0);
    v27 = v92;
    sub_23E7F84B0();
    v77 = v24;
    v28 = (v24 + 40);
    do
    {
      v29 = *v28;
      v93 = *(v28 - 1);
      v94 = v29;
      v90 = 46;
      v91 = 0xE100000000000000;

      v30 = sub_23E82EC5C();
      if (v30[2])
      {
        v31 = v30[4];
        v32 = v30[5];
      }

      else
      {
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      v92 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_23E800930((v33 > 1), v34 + 1, 1);
        v27 = v92;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v28 += 2;
      --v26;
    }

    while (v26);
    v93 = v27;
    v47 = v88;

    sub_23E808EF8(&v93, v47);

    v48 = v82;

    v49 = v93;
    v93 = v87;
    v94 = v48;
    v50 = v89;
    v51 = v80;
    v52 = v81;
    v54 = v78;
    v53 = v79;
    if (*(v49 + 2))
    {
      v55 = *(v49 + 4);
      v56 = *(v49 + 5);

      MEMORY[0x23EF14B60](v55, v56);

      MEMORY[0x23EF14B60](0x6E6F736A2ELL, 0xE500000000000000);
      v57 = v84;
      v58 = v86;
      (*(v84 + 56))(v85, 1, 1, v86);
      (*(v53 + 104))(v54, *MEMORY[0x277CC91D8], v51);
      v59 = v83;
      sub_23E82DD2C();
      v60 = sub_23E82DD1C();
      (*(v57 + 8))(v59, v58);
      v93 = 0;
      v61 = [v52 removeItemAtURL:v60 error:&v93];

      if (v61)
      {
        v62 = v93;

        goto LABEL_28;
      }

      v63 = v93;
      v28 = sub_23E82DCEC();

      swift_willThrow();
      if (qword_27E35A1C0 == -1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_24:
    v64 = v76;
    v65 = __swift_project_value_buffer(v76, qword_27E35A958);
    swift_beginAccess();
    v66 = v75;
    (*(v50 + 16))(v75, v65, v64);
    v67 = v28;
    v68 = sub_23E82DFEC();
    v69 = sub_23E82EBCC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      v72 = v28;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v73;
      *v71 = v73;
      _os_log_impl(&dword_23E7EF000, v68, v69, "Failed to delete old file error: %@", v70, 0xCu);
      sub_23E7F55E0(v71, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v71, -1, -1);
      MEMORY[0x23EF15860](v70, -1, -1);
    }

    else
    {
    }

    (*(v50 + 8))(v66, v64);
    goto LABEL_28;
  }

  v36 = v93;

  v37 = sub_23E82DCEC();

  swift_willThrow();
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v1, qword_27E35A958);
  swift_beginAccess();
  v39 = v89;
  (*(v89 + 16))(v7, v38, v1);
  v40 = v37;
  v41 = sub_23E82DFEC();
  v42 = sub_23E82EBCC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    v45 = v37;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v46;
    *v44 = v46;
    _os_log_impl(&dword_23E7EF000, v41, v42, "Failed to read directory: %@", v43, 0xCu);
    sub_23E7F55E0(v44, &unk_27E35A870, &qword_23E8308E0);
    MEMORY[0x23EF15860](v44, -1, -1);
    MEMORY[0x23EF15860](v43, -1, -1);
  }

  else
  {
  }

  (*(v39 + 8))(v7, v1);
LABEL_28:
  v74 = *MEMORY[0x277D85DE8];
}

uint64_t _sSo8AVSStoreC22AdaptiveVoiceShortcutsE22storeEventForDebugging5eventyAC08AVSDebugF0V_tF_0(uint64_t a1)
{
  v71 = a1;
  v79 = *MEMORY[0x277D85DE8];
  v1 = sub_23E82E00C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = &v64 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v10 = sub_23E82DDAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = objc_opt_self();
  v74 = [v65 defaultManager];
  if (qword_27E35A1B0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E35A720;
  v16 = *algn_27E35A728;
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v18 = sub_23E82EA5C();
  [v17 setDateFormat_];

  v77 = v15;
  v78 = v16;

  sub_23E82DD9C();
  v19 = sub_23E82DD6C();
  (*(v11 + 8))(v14, v10);
  v72 = v17;
  v20 = [v17 stringFromDate_];

  v21 = sub_23E82EA6C();
  v23 = v22;

  MEMORY[0x23EF14B60](v21, v23);

  MEMORY[0x23EF14B60](0x6E6F736A2ELL, 0xE500000000000000);
  v24 = v78;
  v69 = v77;
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v1, qword_27E35A958);
  swift_beginAccess();
  v67 = v2[2];
  v68 = v25;
  v67(v9, v25, v1);

  v26 = sub_23E82DFEC();
  v27 = sub_23E82EBEC();

  v28 = os_log_type_enabled(v26, v27);
  v70 = v24;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v64 = v2;
    v30 = v1;
    v31 = v29;
    v32 = swift_slowAlloc();
    v76 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_23E8257E0(v69, v24, &v76);
    _os_log_impl(&dword_23E7EF000, v26, v27, "Will attempt to store event for debugging file: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23EF15860](v32, -1, -1);
    v33 = v31;
    v1 = v30;
    v2 = v64;
    MEMORY[0x23EF15860](v33, -1, -1);
  }

  v34 = v2[1];
  v34(v9, v1);
  v35 = v74;
  v75 = 1;
  v36 = sub_23E82EA5C();
  v37 = [v35 fileExistsAtPath:v36 isDirectory:&v75];

  if ((v37 & 1) == 0)
  {
    v38 = sub_23E82EA5C();
    v76 = 0;
    v39 = [v35 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:0 error:&v76];

    if (v39)
    {
      v40 = v76;
    }

    else
    {
      v41 = v76;
      v42 = sub_23E82DCEC();

      swift_willThrow();
      v67(v66, v68, v1);
      v43 = v42;
      v44 = sub_23E82DFEC();
      v45 = sub_23E82EBCC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v1;
        v48 = swift_slowAlloc();
        *v46 = 138412290;
        v49 = v42;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_23E7EF000, v44, v45, "Failed to create directory for debugging events: %@", v46, 0xCu);
        sub_23E7F55E0(v48, &unk_27E35A870, &qword_23E8308E0);
        v51 = v48;
        v1 = v47;
        v35 = v74;
        MEMORY[0x23EF15860](v51, -1, -1);
        MEMORY[0x23EF15860](v46, -1, -1);
      }

      else
      {
      }

      v34(v66, v1);
    }
  }

  v52 = sub_23E82DC7C();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  sub_23E82DC6C();
  type metadata accessor for AVSDebugEvent();
  sub_23E80AADC(&qword_27E35A7D8, type metadata accessor for AVSDebugEvent);
  v55 = sub_23E82DC5C();
  v57 = v56;
  v58 = [v65 defaultManager];
  v59 = sub_23E82EA5C();

  v60 = sub_23E82DD5C();
  [v58 createFileAtPath:v59 contents:v60 attributes:0];

  v61 = v72;
  sub_23E808F90(v72);

  sub_23E80A918(v55, v57);

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23E80A20C()
{
  result = qword_27E35A750;
  if (!qword_27E35A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A750);
  }

  return result;
}

uint64_t type metadata accessor for AVSDebugEvent()
{
  result = qword_27E35A790;
  if (!qword_27E35A790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E80A2AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A760, &qword_23E8306D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E80A318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void keypath_setTm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_23E82EA5C();
  [v8 *a5];
}

void sub_23E80A458()
{
  sub_23E82DDDC();
  if (v0 <= 0x3F)
  {
    sub_23E80A4EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E80A4EC()
{
  if (!qword_27E35A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A760, &qword_23E8306D8);
    v0 = sub_23E82EC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35A7A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AVSDebugEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVSDebugEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E80A6B4()
{
  result = qword_27E35A7A8;
  if (!qword_27E35A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A7A8);
  }

  return result;
}

unint64_t sub_23E80A70C()
{
  result = qword_27E35A7B0;
  if (!qword_27E35A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A7B0);
  }

  return result;
}

unint64_t sub_23E80A764()
{
  result = qword_27E35A7B8;
  if (!qword_27E35A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A7B8);
  }

  return result;
}

uint64_t sub_23E80A7B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E82EF0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000 || (sub_23E82EF0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7479426F69647561 && a2 == 0xEA00000000007365 || (sub_23E82EF0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E82EF0C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23E80A918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23E80A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveVoiceShortcut();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E80A9D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A7F8, &qword_23E830898);
    sub_23E80AADC(a2, type metadata accessor for AdaptiveVoiceShortcut);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E80AA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A830, &unk_23E8308B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E80AADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E80AB24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_23E80AB84()
{
  result = [objc_allocWithZone(type metadata accessor for AVSAutomationSupport()) init];
  qword_27E35A850 = result;
  return result;
}

id AVSAutomationSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AVSAutomationSupport.shared.getter()
{
  if (qword_27E35A1B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E35A850;

  return v1;
}

id AVSAutomationSupport.init()()
{
  *&v0[OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSAutomationSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_23E80ACF4()
{
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client;
  v2 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSAutomationSupport__client);
LABEL_7:
    v11 = v2;
    return;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v5 = sub_23E82EA5C();
  v6 = sub_23E82EA5C();
  v7 = [v4 initWithIdentifier:v5 serviceBundleName:v6];

  v8 = *(v0 + v1);
  *(v0 + v1) = v7;
  v9 = v7;

  if (v9)
  {
    [v9 setDelegate_];
  }

  v10 = *(v0 + v1);
  if (v10)
  {
    v10;
    v2 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23E80AE00(uint64_t a1, uint64_t a2)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v4 = sub_23E82E00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXIsInternalInstall())
  {
    sub_23E80ACF4();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A860, &qword_23E8308D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E830030;
    v28[0] = 5001813;
    v28[1] = 0xE300000000000000;
    v12 = MEMORY[0x277D837D0];
    sub_23E82ED0C();
    *(inited + 96) = v12;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    sub_23E80B388(inited);
    swift_setDeallocating();
    sub_23E7F55E0(inited + 32, &qword_27E35A868, &qword_23E8308D8);
    v13 = sub_23E82EA2C();

    v28[0] = 0;
    v14 = [v10 sendSynchronousMessage:v13 withIdentifier:10001 error:v28];

    if (v14)
    {
      v15 = v28[0];
    }

    else
    {
      v16 = v28[0];
      v17 = sub_23E82DCEC();

      swift_willThrow();
      if (qword_27E35A1C0 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v4, qword_27E35A958);
      swift_beginAccess();
      (*(v5 + 16))(v8, v18, v4);
      v19 = v17;
      v20 = sub_23E82DFEC();
      v21 = sub_23E82EBCC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v17;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_23E7EF000, v20, v21, "Error piping audio file into AVS: %@", v22, 0xCu);
        sub_23E7F55E0(v23, &unk_27E35A870, &qword_23E8308E0);
        MEMORY[0x23EF15860](v23, -1, -1);
        MEMORY[0x23EF15860](v22, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}