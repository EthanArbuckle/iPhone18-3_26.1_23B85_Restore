unint64_t sub_23BB6F584()
{
  result = qword_27E1A2668;
  if (!qword_27E1A2668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25D8);
    sub_23BB6F40C();
    sub_23BB6F640(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2668);
  }

  return result;
}

uint64_t sub_23BB6F640(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BB6F688()
{
  result = qword_27E1A2670;
  if (!qword_27E1A2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2660);
    sub_23BB6F584();
    sub_23BA7AF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2670);
  }

  return result;
}

uint64_t sub_23BB6F714(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25D8);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BB6F77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB6F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A25F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB6F854(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23BA51B84(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23BB6F898()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A25D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2660);
  sub_23BB6F584();
  sub_23BB6F688();
  OUTLINED_FUNCTION_0_54();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_23BB6F948@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2698);
  sub_23BBDBF58();
  result = v14;
  a3->n128_f64[0] = a4;
  a3->n128_f64[1] = a5;
  a3[1].n128_u64[0] = a1;
  a3[1].n128_u64[1] = a2;
  a3[2].n128_u64[0] = KeyPath;
  a3[2].n128_u8[8] = 0;
  a3[3].n128_u64[0] = v11;
  a3[3].n128_u8[8] = 0;
  a3[4].n128_u64[0] = v12;
  a3[4].n128_u8[8] = 0;
  a3[5] = v14;
  return result;
}

uint64_t sub_23BB6FA24(uint64_t a1, uint64_t a2)
{
  v6[0] = sub_23BB71E34();
  v6[1] = v4;
  MEMORY[0x23EEB43C0](v6, a1, &type metadata for ShareCurrentAppIconCacheModifier, a2);
}

uint64_t sub_23BB6FAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDC318();
  v5 = v4;
  sub_23BB6FB58(v1, v11);
  v6 = v11[0];
  v7 = v11[1];
  v8 = v12;
  v9 = swift_allocObject();
  memcpy((v9 + 16), v1, 0x60uLL);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = sub_23BB721D0;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return sub_23BB721F4(v1, v11);
}

uint64_t sub_23BB6FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDBE48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0);
  result = sub_23BBDBF68();
  v13 = v25;
  if (v25)
  {
    v26 = *(a1 + 72);
    v25 = *(a1 + 64);
    v23[0] = v4;
    if (v26 != 1)
    {

      sub_23BBDD5A8();
      v16 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9EA92C(&v25, &qword_27E1A26D8);
      (*(v9 + 8))(v11, v8);
    }

    v17 = [objc_opt_self() mainBundle];
    v18 = sub_23BAD97BC();
    v20 = v19;

    if (v20)
    {
      *&v24 = v18;
      *(&v24 + 1) = v20;
      sub_23B9F6A08();
      sub_23BBDB678();
    }

    else
    {
      sub_23BBDAA48();
      sub_23BBDB648();
    }

    v21 = v13;
    sub_23BBDBE78();
    v22 = v23[0];
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v23[0]);
    v14 = sub_23BBDBE68();

    result = (*(v5 + 8))(v7, v22);
    v15 = 0x3FF0000000000000;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23BB6FEDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20[-v3];
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v1 + 24))
  {
    v26 = *(v1 + 40);
    v14 = *(v1 + 32);
    v25 = v14;
    v15 = v26;

    if ((v15 & 1) == 0)
    {
      sub_23BBDD5A8();
      v16 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9EA92C(&v25, &qword_27E1A26C0);
      (*(v6 + 8))(v8, v5);
      v14 = v22[0];
    }

    if (v14)
    {
      sub_23BB70210();
      v17 = sub_23BB70444();
      if (v17)
      {
        v18 = *(v1 + 80);
        v23 = *(v1 + 88);
        v24 = v18;
        v22[0] = v18;
        v22[1] = v23;
        v21 = v17;
        v19 = v17;
        sub_23BA9B0D4(&v24, v20, &qword_27E1A2698);
        sub_23BA9B0D4(&v23, v20, &qword_27E1A26C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0);
        sub_23BBDBF78();

        sub_23B9EA92C(&v24, &qword_27E1A2698);
        v12 = &v23;
        v11 = &qword_27E1A26C8;
        return sub_23B9EA92C(v12, v11);
      }
    }
  }

  sub_23BBDD328();
  v9 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  memcpy(v10 + 4, v1, 0x60uLL);
  sub_23BB721F4(v1, v22);
  sub_23BB142C0();

  v11 = &qword_27E198320;
  v12 = v4;
  return sub_23B9EA92C(v12, v11);
}

uint64_t sub_23BB70210()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + 72);
  v12 = *(v0 + 64);
  if (v13 != 1)
  {

    sub_23BBDD5A8();
    v5 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v12, &qword_27E1A26D8);
    (*(v2 + 8))(v4, v1);
  }

  v11 = *(v0 + 56);
  v6 = *(v0 + 48);
  v10 = v6;
  if (v11 != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(&v10, &qword_27E19E8A8);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

void *sub_23BB70444()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t sub_23BB70490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[39] = a4;
  v5 = sub_23BBDA928();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB70550, 0, 0);
}

uint64_t sub_23BB70550()
{
  if (*(v0[39] + 24))
  {
    sub_23BAE0E08(0, &qword_27E1A26E0);

    v1 = sub_23BB71194();
    v0[43] = v1;
    v2 = [objc_opt_self() imageDescriptorNamed_];
    v0[44] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A12F8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23BBFE040;
    *(v3 + 32) = v2;
    sub_23BAE0E08(0, &qword_27E1A26E8);
    v4 = v2;
    v5 = sub_23BBDD238();

    [v1 prepareImagesForImageDescriptors_];

    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = sub_23BB70800;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26F0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23BB71208;
    v0[13] = &block_descriptor_0;
    v0[14] = v6;
    [v1 getImageForImageDescriptor:v4 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v0[45] = sub_23BBDD308();
    v0[46] = sub_23BBDD2F8();
    v8 = sub_23BBDD2D8();

    return MEMORY[0x2822009F8](sub_23BB70A48, v8, v7);
  }
}

uint64_t sub_23BB70800()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_23BB708D8, 0, 0);
}

uint64_t sub_23BB708D8()
{
  v1 = v0[43];
  v10 = v0[44];
  v2 = v0[39];
  v3 = v0[35];
  v4 = [v3 CGImage];

  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v0[28] = v5;
  v0[29] = v6;
  v0[22] = v5;
  v0[23] = v6;
  v0[36] = v4;
  sub_23BA9B0D4((v0 + 28), (v0 + 37), &qword_27E1A2698);
  sub_23BA9B0D4((v0 + 29), (v0 + 38), &qword_27E1A26C8);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0);
  sub_23BBDBF78();

  sub_23B9EA92C((v0 + 28), &qword_27E1A2698);
  sub_23B9EA92C((v0 + 29), &qword_27E1A26C8);

  OUTLINED_FUNCTION_1_16();

  return v8();
}

uint64_t sub_23BB70A48()
{
  v1 = *(v0 + 312);

  v2 = *(v1 + 40);
  *(v0 + 192) = *(v1 + 32);
  *(v0 + 200) = v2;
  v3 = *(v0 + 192);
  v4 = v2;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9EA92C(v0 + 192, &qword_27E1A26C0);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 240);
  }

  *(v0 + 376) = v3;
  v9 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23BB70B84()
{
  OUTLINED_FUNCTION_3_13();
  if (v0[47])
  {
    v0[48] = sub_23BBDD2F8();
    v1 = sub_23BBDD2D8();
    v3 = v2;
    v4 = sub_23BB70C58;
  }

  else
  {
    v0[51] = type metadata accessor for CurrentAppIconCache();
    v0[52] = sub_23BBDD2F8();
    v1 = sub_23BBDD2D8();
    v3 = v5;
    v4 = sub_23BB70F50;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_23BB70C58()
{

  v1 = sub_23BB70210();
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_23BB70D1C;
  v3 = OUTLINED_FUNCTION_4_39();

  return sub_23BB71274(v1, v3, v4, v5);
}

uint64_t sub_23BB70D1C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = v3;

  v4 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23BB70E08()
{
  v1 = v0[50];
  v2 = v0[39];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  v0[26] = v4;
  v0[27] = v3;
  v0[20] = v4;
  v0[21] = v3;
  v0[32] = v1;
  sub_23BA9B0D4((v0 + 26), (v0 + 33), &qword_27E1A2698);
  sub_23BA9B0D4((v0 + 27), (v0 + 34), &qword_27E1A26C8);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0);
  sub_23BBDBF78();

  sub_23B9EA92C((v0 + 26), &qword_27E1A2698);
  sub_23B9EA92C((v0 + 27), &qword_27E1A26C8);

  OUTLINED_FUNCTION_1_16();

  return v6();
}

uint64_t sub_23BB70F50()
{

  v1 = sub_23BB70210();
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_23BB71014;
  v3 = OUTLINED_FUNCTION_4_39();

  return sub_23BB715F0(v1, v3, v4, v5);
}

uint64_t sub_23BB71014()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23BB71100()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 432);
  *(v0 + 144) = *(*(v0 + 312) + 80);
  *(v0 + 248) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A26D0);
  sub_23BBDBF78();

  OUTLINED_FUNCTION_1_16();

  return v2();
}

id sub_23BB71194()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_23BBDCFE8();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_23BB71208(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_23BB71254(v3, a2);
}

uint64_t sub_23BB71274(char a1, double a2, double a3, double a4)
{
  *(v5 + 40) = v4;
  *(v5 + 96) = a1;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a2;
  *(v5 + 48) = *v4;
  sub_23BBDD308();
  *(v5 + 56) = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x2822009F8](sub_23BB71340, v7, v6);
}

uint64_t sub_23BB71340()
{
  OUTLINED_FUNCTION_3_13();
  v1 = sub_23BB70444();
  if (v1)
  {
    v2 = v1;

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_23BB71434;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = *(v0 + 96);

    return sub_23BB715F0(v9, v8, v6, v7);
  }
}

uint64_t sub_23BB71434()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v5 = v4;
  *(v7 + 88) = v6;

  v8 = *(v1 + 72);
  v9 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23BB71550, v9, v8);
}

uint64_t sub_23BB71550()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 88);

  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 40);
    v4 = *(v0 + 96);
    v5 = *(v0 + 32);
    v6 = *(v3 + 16);
    v7 = *(v0 + 16);
    *(v3 + 16) = v2;
    *(v3 + 24) = v7;
    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    v8 = v2;

    v9 = *(v0 + 88);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_23BB715F0(char a1, double a2, double a3, double a4)
{
  *(v4 + 80) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  v5 = sub_23BBDC468();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB716B8, 0, 0);
}

uint64_t sub_23BB716B8()
{
  v2 = *(v0 + 6);
  v1 = *(v0 + 7);
  v3 = *(v0 + 5);
  sub_23BAE0E08(0, &qword_27E1A26F8);
  *v1 = sub_23BBDD5C8();
  (*(v2 + 104))(v1, *MEMORY[0x277D851F0], v3);
  v4 = sub_23BBDC478();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    *(v0 + 8) = [objc_opt_self() applicationIcon];
    v6 = swift_task_alloc();
    *(v0 + 9) = v6;
    *v6 = v0;
    v6[1] = sub_23BB71804;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_23BB71A60(v9, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BB71804(uint64_t a1)
{
  OUTLINED_FUNCTION_21_4();
  v4 = *(v3 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

uint64_t sub_23BB71934()
{
  sub_23BB71ECC();
  sub_23BBDA958();
  return v1;
}

BOOL sub_23BB719D8(char a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 == a6;
  if (a4 != a7)
  {
    v8 = 0;
  }

  if (a5 != a8)
  {
    v8 = 0;
  }

  return a1 == a2 && v8;
}

uint64_t sub_23BB71A60(double a1, double a2, double a3)
{
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  *(v4 + 88) = a1;
  return MEMORY[0x2822009F8](sub_23BB71A88, 0, 0);
}

uint64_t sub_23BB71A88()
{
  v1 = *(v0 + 14);
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 10;
  *(v0 + 3) = sub_23BB71B4C;
  v5 = swift_continuation_init();
  sub_23BB7244C(v5, v1, v4, v3, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23BB71B4C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

uint64_t sub_23BB71C34()
{

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_23BB71C90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 25))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 7;
      v2 = v3 - 7;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BB71CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_23BB71D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2678);
  sub_23BBDBF68();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2680);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2688);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v8;
  return result;
}

uint64_t sub_23BB71E34()
{
  type metadata accessor for CurrentAppIconCache();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_23BBDBF58();
  return v2;
}

uint64_t sub_23BB71E9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB71934();
  *a1 = result;
  return result;
}

unint64_t sub_23BB71ECC()
{
  result = qword_27E1A2690;
  if (!qword_27E1A2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2690);
  }

  return result;
}

uint64_t sub_23BB71F24@<X0>(void *a1@<X8>)
{
  result = sub_23BBDA638();
  *a1 = v3;
  return result;
}

uint64_t sub_23BB71F90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BB71FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_23BB72064()
{
  result = qword_27E1A26A0;
  if (!qword_27E1A26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2688);
    sub_23B97B518(&qword_27E1A26A8, &qword_27E1A2680);
    sub_23B97B518(&qword_27E1A26B0, &qword_27E1A26B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A26A0);
  }

  return result;
}

uint64_t sub_23BB72164()
{

  j__swift_release(*(v0 + 48), *(v0 + 56));
  sub_23B97B450(*(v0 + 64), *(v0 + 72));
  sub_23B97B450(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_23BB7222C()
{
  swift_unknownObjectRelease();

  j__swift_release(*(v0 + 64), *(v0 + 72));
  sub_23B97B450(*(v0 + 80), *(v0 + 88));
  sub_23B97B450(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_23BB722A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BB72350;

  return sub_23BB70490(a1, v4, v5, v1 + 32);
}

uint64_t sub_23BB72350()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

void sub_23BB7244C(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a3 scale:{a4, a5}];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v10[4] = sub_23BB725D0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23BB725D8;
  v10[3] = &block_descriptor_32;
  v9 = _Block_copy(v10);

  [a2 getCGImageForImageDescriptor:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_23BB7256C(void *a1, uint64_t a2)
{
  **(*(a2 + 64) + 40) = a1;
  v3 = a1;

  return MEMORY[0x282200948](a2);
}

void sub_23BB725D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BB72660()
{
  result = qword_27E1A2700;
  if (!qword_27E1A2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2708);
    sub_23B97B518(&qword_27E1A2710, &qword_27E1A2718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2700);
  }

  return result;
}

uint64_t sub_23BB72748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDCD08();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 6)
    {
      v9 = 6;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 6;
    if (v8 >= 6)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23BB72810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDCD08();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t _s20LocalizationResourceVMa()
{
  result = qword_27E1A2720;
  if (!qword_27E1A2720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB72904()
{
  result = sub_23BBDCD08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s20LocalizationResourceV6FormatOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[16])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s20LocalizationResourceV6FormatOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_23BB72A00(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

void *sub_23BB72A14(void *result, unsigned int a2)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

void sub_23BB72A48()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v94 = v2;
  v95 = v3;
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v90 = v5;
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_23BBD9848();
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v89[2] = v12 - v11;
  v13 = sub_23BBDCFC8();
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v89[1] = v16 - v15;
  v17 = sub_23BBDCFA8();
  v18 = OUTLINED_FUNCTION_13_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v89[0] = v20 - v19;
  sub_23BBDCCC8();
  OUTLINED_FUNCTION_7();
  v96 = v21;
  v97 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v89 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v89 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v89 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v89 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v89 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = v89 - v41;
  sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v93 = v43;
  v45 = MEMORY[0x28223BE20](v44);
  v46 = MEMORY[0x28223BE20](v45);
  v47 = MEMORY[0x28223BE20](v46);
  v48 = MEMORY[0x28223BE20](v47);
  v49 = MEMORY[0x28223BE20](v48);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v92 = v89 - v58;
  if (v1 == 1)
  {
    v59 = v95;
    v60 = v51;
    switch(v94)
    {
      case 1:
        v77 = v53;
        sub_23BBDCCD8();
        v78 = v96;
        v79 = (*(v97 + 88))(v40, v96);
        v69 = v92;
        v64 = v93;
        if (v79 == *MEMORY[0x277CDD2D0])
        {
          goto LABEL_15;
        }

        if (v79 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
          goto LABEL_46;
        }

        if (v79 == *MEMORY[0x277CDD2E8])
        {
LABEL_15:
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          goto LABEL_46;
        }

        if (v79 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_5_39();
        sub_23BBD9678();
        OUTLINED_FUNCTION_16_21();
        v87 = v40;
        v88 = v78;
        goto LABEL_71;
      case 2:
        v40 = v56;
        v70 = v54;
        v71 = sub_23BBDCCE8();
        v56 = v40;
        if (v71 != 1)
        {
          goto LABEL_12;
        }

        sub_23BBDCCD8();
        v72 = (*(v97 + 88))(v37, v96);
        v69 = v92;
        v64 = v93;
        if (v72 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_3_42();
          sub_23BBDCF48();
          goto LABEL_31;
        }

        v76 = v59;
        if (v72 == *MEMORY[0x277CDD2D8] || v72 == *MEMORY[0x277CDD2E8] || v72 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_3_42();
          sub_23BBDCF48();
          OUTLINED_FUNCTION_17_16();
          sub_23BB73D2C();
        }

        else
        {
          OUTLINED_FUNCTION_5_39();
          sub_23BBD9678();
          (*(v97 + 8))(v37, v96);
        }

        v75 = v70;
        goto LABEL_49;
      case 3:
        v66 = v57;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v68 = v67(v34, v40);
        v69 = v92;
        if (v68 == *MEMORY[0x277CDD2D0] || v68 == *MEMORY[0x277CDD2D8] || v68 == *MEMORY[0x277CDD2E8] || v68 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_3_42();
          sub_23BBDCF88();
          OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16();
          OUTLINED_FUNCTION_18_21();
        }

        else
        {
          OUTLINED_FUNCTION_5_39();
          sub_23BBD9678();
          OUTLINED_FUNCTION_16_21();
          v84(v34, v40);
        }

        v75 = v66;
        v76 = v59;
        v64 = v93;
        goto LABEL_49;
      case 4:
        v77 = v52;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v81 = v80(v31, v40);
        v69 = v92;
        v64 = v93;
        if (v81 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_14_27();
LABEL_46:
          sub_23BBDCF88();
          OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16();
          OUTLINED_FUNCTION_18_21();
          goto LABEL_47;
        }

        if (v81 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
          goto LABEL_46;
        }

        if (v81 == *MEMORY[0x277CDD2E8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_7_40();
          goto LABEL_46;
        }

        if (v81 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_11_26();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_5_39();
        sub_23BBD9678();
        OUTLINED_FUNCTION_16_21();
        v87 = v31;
        v88 = v40;
LABEL_71:
        v86(v87, v88);
LABEL_47:
        v75 = v77;
LABEL_48:
        v76 = v59;
        goto LABEL_49;
      case 5:
LABEL_12:
        v70 = v56;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v74 = v73(v28, v40);
        if (v74 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_14_27();
          sub_23BBDCF88();
          OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16();
          sub_23BB73D2C();
          v75 = v70;
          v76 = v59;
          v69 = v92;
          v64 = v93;
          goto LABEL_49;
        }

        v69 = v92;
        v64 = v93;
        if (v74 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
        }

        else if (v74 == *MEMORY[0x277CDD2E8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_7_40();
        }

        else
        {
          if (v74 != *MEMORY[0x277CDD2E0])
          {
            OUTLINED_FUNCTION_5_39();
            sub_23BBD9678();
            OUTLINED_FUNCTION_16_21();
            v83(v28, v40);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_6_33();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
        }

        sub_23BBDCF88();
        OUTLINED_FUNCTION_15_25();
LABEL_31:
        OUTLINED_FUNCTION_17_16();
        sub_23BB73D2C();
LABEL_32:
        v75 = v70;
        goto LABEL_48;
      default:
        v61 = v55;
        sub_23BBDCCD8();
        OUTLINED_FUNCTION_20_19();
        v63 = v62(v42, v40);
        v64 = v93;
        if (v63 == *MEMORY[0x277CDD2D0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_14_27();
LABEL_40:
          sub_23BBDCF88();
          OUTLINED_FUNCTION_15_25();
          OUTLINED_FUNCTION_17_16();
          OUTLINED_FUNCTION_18_21();
          goto LABEL_41;
        }

        if (v63 == *MEMORY[0x277CDD2D8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_12_30();
          goto LABEL_40;
        }

        if (v63 == *MEMORY[0x277CDD2E8])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_7_40();
          goto LABEL_40;
        }

        if (v63 == *MEMORY[0x277CDD2E0])
        {
          OUTLINED_FUNCTION_4_40();
          sub_23BBDCF98();
          OUTLINED_FUNCTION_5_39();
          sub_23BBDCF88();
          v98 = sub_23BBDCCE8();
          OUTLINED_FUNCTION_0_55();
          OUTLINED_FUNCTION_13_30();
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_5_39();
        sub_23BBD9678();
        OUTLINED_FUNCTION_16_21();
        v85(v42, v40);
LABEL_41:
        v75 = v61;
        v76 = v59;
        v69 = v92;
LABEL_49:
        v82 = *(v64 + 32);
        v82(v69, v75, v60);
        v82(v76, v69, v60);
        break;
    }
  }

  else
  {
    sub_23BBDCCD8();
    v65 = sub_23BBDCCE8();
    if ((v65 * v1) >> 64 != (v65 * v1) >> 63)
    {
      __break(1u);
      JUMPOUT(0x23BB7396CLL);
    }

    sub_23BBDCCF8();
    (*(v97 + 8))(v25, v96);
    sub_23BB72A48(v94, 1);
    (*(v90 + 8))(v8, v91);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB73984()
{
  if (*(v0 + *(_s20LocalizationResourceVMa() + 20)) == 6)
  {

    sub_23BB74064();
  }

  else
  {

    sub_23BB72A48();
  }
}

void sub_23BB739F8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = sub_23BBD9848();
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v3 = sub_23BBDCFC8();
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v5 = sub_23BBDCFA8();
  v6 = OUTLINED_FUNCTION_13_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v7 = sub_23BBDCCC8();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  (*(v9 + 16))(v12 - v11, v0, v7);
  v14 = (*(v9 + 88))(v13, v7);
  if (v14 == *MEMORY[0x277CDD2D0] || v14 == *MEMORY[0x277CDD2D8] || v14 == *MEMORY[0x277CDD2E8] || v14 == *MEMORY[0x277CDD2E0])
  {
    sub_23BBDCF98();
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_24_16();
    OUTLINED_FUNCTION_23_15();
    OUTLINED_FUNCTION_19_27();
    sub_23BBDCF88();
    sub_23BBDCFB8();
    sub_23BBD9838();
    sub_23BB73D2C();
  }

  else
  {
    OUTLINED_FUNCTION_5_39();
    sub_23BBD9678();
    (*(v9 + 8))(v13, v7);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB73D2C()
{
  OUTLINED_FUNCTION_10_0();
  v24 = v0;
  v2 = v1;
  v3 = sub_23BBD9688();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_23BBDCFC8();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  (*(v19 + 16))(v22 - v21, v2, v17);
  (*(v12 + 16))(v16, v24, v10);
  if (qword_27E197630 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_27E1BF848);
  (*(v5 + 16))(v9, v23, v3);
  sub_23BBD96C8();
  (*(v12 + 8))(v24, v10);
  (*(v19 + 8))(v2, v17);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB73F90@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;

  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_23BB74064()
{
  OUTLINED_FUNCTION_10_0();
  v0 = sub_23BBD9848();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v2 = sub_23BBDCFC8();
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v4 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_23BBDCFA8();
  v12 = OUTLINED_FUNCTION_13_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  sub_23BBDCF98();
  OUTLINED_FUNCTION_25_9();
  sub_23BBDCF88();
  sub_23BB72A48();
  sub_23BBDCF78();
  (*(v6 + 8))(v10, v4);
  sub_23BBDCF88();
  sub_23BBDCFB8();
  sub_23BBD9838();
  sub_23BB73D2C();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB7425C(uint64_t a1, uint64_t a2)
{
  if ((sub_23BBDCCA8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s20LocalizationResourceVMa() + 20);
  v5 = a1 + v4;
  v6 = *(a1 + v4);
  v7 = a2 + v4;
  v8 = *(a2 + v4);
  if (v6 == 6)
  {
    if (v8 != 6)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(v7 + 8);
    v11 = *(v5 + 8);
    v12 = (v8 ^ v6);
    if (v8 == 6 || v12 != 0 || v11 != v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23BB742EC()
{
  sub_23BBDCD08();
  OUTLINED_FUNCTION_9_28();
  sub_23BB74774(v1, v2);
  sub_23BBDCE68();
  v3 = (v0 + *(_s20LocalizationResourceVMa() + 20));
  v4 = *v3;
  if (v4 == 6)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + 1);
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v4);
  }

  return MEMORY[0x23EEB63A0](v5);
}

uint64_t sub_23BB7439C()
{
  sub_23BBDDBB8();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_9_28();
  sub_23BB74774(v1, v2);
  sub_23BBDCE68();
  v3 = (v0 + *(_s20LocalizationResourceVMa() + 20));
  v4 = *v3;
  if (v4 == 6)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + 1);
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v4);
  }

  MEMORY[0x23EEB63A0](v5);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB74470(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  sub_23BBDCD08();
  sub_23BB74774(qword_27E19FD00, MEMORY[0x277CDD300]);
  sub_23BBDCE68();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  if (v5 == 6)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v4 + 1);
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v5);
  }

  MEMORY[0x23EEB63A0](v6);
  return sub_23BBDDBF8();
}

BOOL sub_23BB7454C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 6)
  {
    return a3 == 6;
  }

  if (a3 == 6)
  {
    return 0;
  }

  return a3 == a1 && a2 == a4;
}

uint64_t sub_23BB74590(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = a2;
  if (a2 == 6)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](v3);
  }

  return MEMORY[0x23EEB63A0](v4);
}

uint64_t sub_23BB745E8(unsigned __int8 a1, uint64_t a2)
{
  sub_23BBDDBB8();
  if (a1 == 6)
  {
    a2 = 1;
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    MEMORY[0x23EEB63A0](a1);
  }

  MEMORY[0x23EEB63A0](a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB74678()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23BBDDBB8();
  sub_23BB74590(v4, v1, v2);
  return sub_23BBDDBF8();
}

unint64_t sub_23BB746D8()
{
  result = qword_27E1A2730;
  if (!qword_27E1A2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2730);
  }

  return result;
}

uint64_t sub_23BB74774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BB747BC()
{
  v0 = sub_23BBDAA38();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  sub_23BBDAA28();
  OUTLINED_FUNCTION_25_9();
  sub_23BBDAA18();
  sub_23BBDAA08();
  OUTLINED_FUNCTION_5_39();
  sub_23BBDAA18();
  return sub_23BBDAA58();
}

_BYTE *_s20LocalizationResourceV5StyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x23BB74938);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BB74974()
{
  result = qword_27E1A2740;
  if (!qword_27E1A2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2740);
  }

  return result;
}

uint64_t sub_23BB749C8()
{
  v0 = sub_23BBDAA38();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  sub_23BBDAA28();
  OUTLINED_FUNCTION_25_9();
  sub_23BBDAA18();
  sub_23BBDAA08();
  sub_23BBDAA18();
  return sub_23BBDAA58();
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return MEMORY[0x28211E7C0](v0 - 88, 1684827173, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return sub_23BBDCFB8();
}

uint64_t OUTLINED_FUNCTION_17_16()
{

  return sub_23BBD9838();
}

void OUTLINED_FUNCTION_18_21()
{

  sub_23BB73D2C();
}

uint64_t OUTLINED_FUNCTION_23_15()
{

  return sub_23BBDCF68();
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return sub_23BBDCF88();
}

uint64_t sub_23BB74C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ApplyStoreKitEnvironmentViewModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B979510();
  *&v12[*(v9 + 20)] = a2;
  *&v12[*(v9 + 24)] = a3;

  MEMORY[0x23EEB43C0](v12, a4, v9, a5);
  return sub_23BB766B8(v12, type metadata accessor for ApplyStoreKitEnvironmentViewModifier);
}

uint64_t sub_23BB74D2C()
{
  sub_23BB7654C();

  return sub_23BBDA958();
}

uint64_t sub_23BB74D98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_40();
  return sub_23BB74E20(v0);
}

uint64_t sub_23BB74E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_40();
  sub_23BB7654C();
  sub_23BBDA968();
  return sub_23B979910(a1, &qword_27E199800);
}

uint64_t sub_23BB74EC8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2760);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v6 + 20)) = a1;
  MEMORY[0x23EEB43C0](v9, a2, v6, a3);
  return sub_23BB766B8(v9, type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier);
}

uint64_t sub_23BB74FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a1;
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  v57[1] = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A27F8);
  MEMORY[0x28223BE20](v58);
  v17 = v57 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2800);
  MEMORY[0x28223BE20](v59);
  v19 = v57 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2808);
  MEMORY[0x28223BE20](v60);
  v21 = v57 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2810);
  MEMORY[0x28223BE20](v62);
  v63 = v57 - v22;
  v57[0] = swift_getKeyPath();
  v65 = v3;
  sub_23B979510();
  v23 = type metadata accessor for StoreKitEnvironmentValues(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v23);
  v66 = v6;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v11, &qword_27E199800);
    v25 = 1;
  }

  else
  {
    sub_23BB76CC0();
    sub_23BB766B8(v11, type metadata accessor for StoreKitEnvironmentValues);
    v25 = 0;
  }

  v26 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  __swift_storeEnumTagSinglePayload(v15, v25, 1, v26);
  sub_23B979688();
  v27 = swift_allocObject();
  sub_23B979688();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2818);
  (*(*(v28 - 8) + 16))(v17, v61, v28);
  v29 = &v17[*(v58 + 36)];
  *v29 = v57[0];
  *(v29 + 1) = sub_23BB76BC4;
  *(v29 + 2) = v27;
  KeyPath = swift_getKeyPath();
  v31 = type metadata accessor for ApplyStoreKitEnvironmentViewModifier(0);
  v32 = v65;
  v33 = *(v65 + *(v31 + 20));
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  sub_23B979688();
  v35 = &v19[*(v59 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_23BB76C88;
  v35[2] = v34;
  v36 = swift_getKeyPath();
  v37 = *(v32 + *(v31 + 24));
  sub_23B979688();
  v38 = &v21[*(v60 + 36)];
  *v38 = v36;
  v38[1] = v37;
  v39 = swift_getKeyPath();
  v40 = v64;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v40, 1, v23) == 1)
  {

    sub_23B979910(v40, &qword_27E199800);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v43 = (v40 + *(v23 + 20));
    v41 = *v43;
    v42 = v43[1];

    sub_23BB766B8(v40, type metadata accessor for StoreKitEnvironmentValues);
  }

  v44 = v63;
  sub_23B979688();
  v45 = &v44[*(v62 + 36)];
  *v45 = v39;
  v45[1] = v41;
  v45[2] = v42;
  v46 = swift_getKeyPath();
  v47 = v66;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v47, 1, v23) == 1)
  {
    sub_23B979910(v47, &qword_27E199800);
    v48 = 2;
  }

  else
  {
    v49 = (v47 + *(v23 + 24));
    v50 = *v49;
    v51 = v49[1];
    sub_23BB766B8(v47, type metadata accessor for StoreKitEnvironmentValues);
    if (v51)
    {
      v52 = 256;
    }

    else
    {
      v52 = 0;
    }

    v48 = v52 | v50;
  }

  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v54 = v67;
  sub_23B979688();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2820);
  v56 = (v54 + *(result + 36));
  *v56 = v46;
  v56[1] = sub_23BB76CB8;
  v56[2] = v53;
  return result;
}

_BYTE *sub_23BB7572C(_BYTE *result, __int16 a2)
{
  if (a2 != 2)
  {
    *result = a2 & 1;
    result[1] = HIBYTE(a2) & 1;
  }

  return result;
}

uint64_t sub_23BB75750(uint64_t *a1, uint64_t a2)
{
  if (a2 != 1)
  {

    *a1 = a2;
  }

  return sub_23BB76D18(a2);
}

uint64_t sub_23BB7579C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_23B979510();
  v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_23B979910(v4, &qword_27E1A0BC0);
  }

  sub_23BB766B8(a1, type metadata accessor for SubscriptionStorePolicyConfiguration);
  return sub_23BB764F4();
}

uint64_t sub_23BB758B4@<X0>(uint64_t a1@<X8>)
{
  sub_23BB2A448();
  sub_23BBDA958();
  sub_23BADA2DC();
  sub_23BBDA958();
  sub_23B97B158();
  sub_23BBDA958();
  result = type metadata accessor for StoreKitEnvironmentValues(0);
  v3 = (a1 + *(result + 20));
  *v3 = v4;
  v3[1] = v5;
  *(a1 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_23BB75970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  KeyPath = swift_getKeyPath();
  sub_23BB76CC0();
  v6 = swift_allocObject();
  sub_23BB764F4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A27A0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A27A8);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_23BB76494;
  v9[2] = v6;
  return result;
}

uint64_t sub_23BB75B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2760);
  MEMORY[0x28223BE20](v8);
  result = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  if (*(a2 + *(result + 20)) == 1)
  {
    sub_23B979910(a1, &qword_27E199800);
    sub_23B979510();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23BB764F4();
    }

    else
    {
      sub_23BBDD5A8();
      v10 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
    }

    v11 = type metadata accessor for StoreKitEnvironmentValues(0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  return result;
}

uint64_t sub_23BB75D40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  __swift_allocate_value_buffer(v0, qword_27E1A2748);
  v1 = __swift_project_value_buffer(v0, qword_27E1A2748);
  v2 = type metadata accessor for StoreKitEnvironmentValues(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BB75DBC()
{
  if (qword_27E197820 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  __swift_project_value_buffer(v0, qword_27E1A2748);
  return sub_23B979510();
}

uint64_t sub_23BB75EA4()
{
  OUTLINED_FUNCTION_7_41();
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_43(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_6_34();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_23BB75F48()
{
  OUTLINED_FUNCTION_1_57();
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

void sub_23BB75FD8()
{
  type metadata accessor for SubscriptionStorePolicyConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_23B9989D8(319, &qword_27E1A2778);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB76088()
{
  OUTLINED_FUNCTION_7_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2780);
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_6_34();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BB76150()
{
  OUTLINED_FUNCTION_1_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2780);
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

void sub_23BB761E8()
{
  sub_23BB76930(319, &qword_27E1A2798, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BB762BC()
{
  v1 = *(type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v4 + 8))(v0 + v2);
    }

    v5 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v6 = v5[5];
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 == 1)
    {
    }

    else if (!v7)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v0 + v2 + v6);
    }

    v9 = OUTLINED_FUNCTION_9_29(v5[6]);
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v11 = OUTLINED_FUNCTION_9_29(v5[7]);
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    type metadata accessor for StoreKitEnvironmentValues(0);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB76494()
{
  v0 = type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(0);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_11_27();

  return sub_23BB75B14(v1, v2);
}

uint64_t sub_23BB764F4()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23BB7654C()
{
  result = qword_27E1A27B0;
  if (!qword_27E1A27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A27B0);
  }

  return result;
}

unint64_t sub_23BB765B4()
{
  result = qword_27E1A27B8;
  if (!qword_27E1A27B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A27A8);
    sub_23B97B518(&qword_27E1A27C0, &qword_27E1A27A0);
    sub_23B97B518(&qword_27E1A27C8, &qword_27E1A27D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A27B8);
  }

  return result;
}

uint64_t sub_23BB766B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB76724()
{
  OUTLINED_FUNCTION_7_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_43(*(v0 + *(v2 + 20)));
  }

  v4 = OUTLINED_FUNCTION_6_34();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_23BB767D0()
{
  OUTLINED_FUNCTION_1_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800);
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void sub_23BB76868()
{
  sub_23BB76930(319, &qword_27E1A27E8, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23B9989D8(319, qword_27E19FE30);
    if (v1 <= 0x3F)
    {
      sub_23BB76990();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BB76930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StoreKitEnvironmentValues(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23BB76990()
{
  if (!qword_27E1A27F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B620);
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A27F0);
    }
  }
}

uint64_t sub_23BB76A18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v5 + 8))(v0 + v2);
    }

    v6 = v3[5];
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 == 1)
    {
    }

    else if (!v7)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v0 + v2 + v6);
    }

    v9 = OUTLINED_FUNCTION_9_29(v3[6]);
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v11 = OUTLINED_FUNCTION_9_29(v3[7]);
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_23BB76BC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_11_27();

  return sub_23BB7579C(v1);
}

uint64_t sub_23BB76C48()
{
  if (*(v0 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB76CC0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB76D18(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_23BB76D2C()
{
  result = qword_27E1A2828;
  if (!qword_27E1A2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2820);
    sub_23BB76DE4();
    sub_23B97B518(&qword_27E1A2878, qword_27E1A2880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2828);
  }

  return result;
}

unint64_t sub_23BB76DE4()
{
  result = qword_27E1A2830;
  if (!qword_27E1A2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2810);
    sub_23BB76E9C();
    sub_23B97B518(&qword_27E1A2148, &qword_27E1A2140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2830);
  }

  return result;
}

unint64_t sub_23BB76E9C()
{
  result = qword_27E1A2838;
  if (!qword_27E1A2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2808);
    sub_23BB76F54();
    sub_23B97B518(&qword_27E19B638, &qword_27E19B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2838);
  }

  return result;
}

unint64_t sub_23BB76F54()
{
  result = qword_27E1A2840;
  if (!qword_27E1A2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2800);
    sub_23BB7700C();
    sub_23B97B518(&qword_27E1A2868, &qword_27E1A2870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2840);
  }

  return result;
}

unint64_t sub_23BB7700C()
{
  result = qword_27E1A2848;
  if (!qword_27E1A2848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A27F8);
    sub_23B97B518(&qword_27E1A2850, &qword_27E1A2818);
    sub_23B97B518(&qword_27E1A2858, &qword_27E1A2860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2848);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_43@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_5_40()
{

  return sub_23B979510();
}

uint64_t sub_23BB77190()
{
  if (sub_23BBDC2A8())
  {

    return sub_23BBDB578();
  }

  else
  {

    return sub_23BBDB438();
  }
}

uint64_t sub_23BB771D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v35 = MEMORY[0x277CE0BD8];
  v36 = v4;
  v37 = MEMORY[0x277CE0BC8];
  v38 = v3;
  v5 = sub_23BBDBEA8();
  OUTLINED_FUNCTION_7();
  v24 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390);
  v10 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v25 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v30 = v4;
  v31 = v3;
  v32 = v2;
  v27 = v4;
  v28 = v3;
  v29 = v2;
  sub_23BBDBE98();
  sub_23BB77190();
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBAC8();

  (*(v24 + 8))(v9, v5);
  v19 = sub_23BB77F60();
  v33 = WitnessTable;
  v34 = v19;
  OUTLINED_FUNCTION_0();
  v20 = swift_getWitnessTable();
  sub_23B9D2D88(v14, v10, v20);
  v21 = *(v25 + 8);
  v21(v14, v10);
  sub_23B9D2D88(v17, v10, v20);
  return (v21)(v17, v10);
}

uint64_t sub_23BB77478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB77FC4(a1, v6);
  result = sub_23BB95790(v6);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_23BB77510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SingleLineLabel();
  sub_23B9D2D88(a1 + *(v9 + 36), a2, a3);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23BB77608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23BB77698(a1, a4);
  v7 = type metadata accessor for SingleLineLabel();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t sub_23BB77698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB77714()
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
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

uint64_t sub_23BB7779C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v7 | v10 | 7;
  v12 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 8;
  v14 = v12 + 10;
  if (v14 <= v13)
  {
    v14 = v13;
  }

  if (v14 <= 3)
  {
    v14 = 3;
  }

  v15 = v14 + ((((v7 + 16) & ~v7) + v8 + v11) & ~v11);
  if (v15 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v16 <= 0x10)
  {
    v16 = 16;
  }

  v17 = v16 + 1;
  v18 = (v16 + 1 + v11) & ~v11;
  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v23 = v18 + v17;
  if (v23 <= 0x20)
  {
    v23 = 32;
  }

  v24 = *(v20 + 80);
  v25 = *(v20 + 64);
  if (!a2)
  {
    return 0;
  }

  v26 = v23 + v24 + 1;
  if (a2 <= v22)
  {
    goto LABEL_36;
  }

  v27 = (v26 & ~v24) + v25;
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((a2 - v22 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v31 < 2)
    {
LABEL_36:
      if (v21 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((a1 + v26) & ~v24, v21, v19);
      }

      else
      {
        v35 = *(a1 + v23);
        if (v35 >= 2)
        {
          return (v35 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_36;
  }

LABEL_26:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = v27;
    }

    else
    {
      v33 = 4;
    }

    switch(v33)
    {
      case 2:
        v34 = *a1;
        break;
      case 3:
        v34 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v34 = *a1;
        break;
      default:
        v34 = *a1;
        break;
    }
  }

  else
  {
    v34 = 0;
  }

  return v22 + (v34 | v32) + 1;
}

void sub_23BB77AB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v9 | v12 | 7;
  v14 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = v14 + 10;
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (v16 <= 3)
  {
    v16 = 3;
  }

  v17 = v16 + ((((v9 + 16) & ~v9) + v10 + v13) & ~v13);
  if (v17 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  v19 = v18 + 1;
  v20 = (v18 + 1 + v13) & ~v13;
  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0xFE)
  {
    v24 = 254;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = v20 + v19;
  if (v25 <= 0x20)
  {
    v25 = 32;
  }

  v26 = *(v22 + 80);
  v27 = v25 + v26 + 1;
  v28 = (v27 & ~v26) + *(v22 + 64);
  v29 = 8 * v28;
  if (a3 <= v24)
  {
    v30 = 0;
  }

  else if (v28 <= 3)
  {
    v33 = ((a3 - v24 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v33))
    {
      v30 = 4;
    }

    else
    {
      if (v33 < 0x100)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v33 >= 2)
      {
        v30 = v34;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else
  {
    v30 = 1;
  }

  if (v24 < a2)
  {
    v31 = ~v24 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> v29) + 1;
      if (v28)
      {
        v35 = v31 & ~(-1 << v29);
        bzero(a1, v28);
        if (v28 == 3)
        {
          *a1 = v35;
          a1[2] = BYTE2(v35);
        }

        else if (v28 == 2)
        {
          *a1 = v35;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v31;
      v32 = 1;
    }

    switch(v30)
    {
      case 1:
        a1[v28] = v32;
        return;
      case 2:
        *&a1[v28] = v32;
        return;
      case 3:
        goto LABEL_66;
      case 4:
        *&a1[v28] = v32;
        return;
      default:
        return;
    }
  }

  switch(v30)
  {
    case 1:
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_66:
      __break(1u);
      JUMPOUT(0x23BB77EC8);
    case 4:
      *&a1[v28] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (a2)
      {
LABEL_38:
        if (v23 > 0xFE)
        {

          __swift_storeEnumTagSinglePayload(&a1[v27] & ~v26, a2, v23, v21);
        }

        else if (a2 > 0xFE)
        {
          v36 = (v25 + 1);
          if (v36 <= 3)
          {
            v37 = ~(-1 << (8 * (v25 + 1)));
          }

          else
          {
            v37 = -1;
          }

          if (v25 != -1)
          {
            v38 = v37 & (a2 - 255);
            if (v36 <= 3)
            {
              v39 = v25 + 1;
            }

            else
            {
              v39 = 4;
            }

            bzero(a1, v36);
            switch(v39)
            {
              case 2:
                *a1 = v38;
                break;
              case 3:
                *a1 = v38;
                a1[2] = BYTE2(v38);
                break;
              case 4:
                *a1 = v38;
                break;
              default:
                *a1 = v38;
                break;
            }
          }
        }

        else
        {
          a1[v25] = -a2;
        }
      }

      return;
  }
}

unint64_t sub_23BB77F60()
{
  result = qword_27E198388;
  if (!qword_27E198388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198388);
  }

  return result;
}

uint64_t sub_23BB77FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB78028()
{
  sub_23BBDBEA8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390);
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_56();
  swift_getWitnessTable();
  sub_23BB77F60();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB78108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v22[0] = a7;
  v22[1] = a8;
  v16 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v16 + 16))(v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v20 = v22[0];
  v19[4] = a6;
  v19[5] = v20;
  v19[6] = a9;
  v19[7] = a10;
  v19[8] = a2;
  v19[9] = a3;
  sub_23BBDBE08();
  return (*(v16 + 8))(a1, a5);
}

uint64_t sub_23BB78268@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v38 = a3;
  v39 = a2;
  v32 = a1;
  v40 = a9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E0);
  MEMORY[0x28223BE20](v35);
  v13 = &v31 - v12;
  v14 = sub_23BBDAA98();
  sub_23BB785D0();
  v33 = sub_23BBDD8A8();
  v15 = *(v33 - 8);
  v16 = MEMORY[0x28223BE20](v33);
  v18 = &v31 - v17;
  v19 = *(a6 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  (*(*(v14 - 8) + 16))(v13, v32, v14);
  v25 = swift_allocObject();
  v26 = v34;
  v25[2] = a4;
  v25[3] = v26;
  v28 = v36;
  v27 = v37;
  v25[4] = a6;
  v25[5] = v28;
  v25[6] = v27;
  v25[7] = a10;
  v25[8] = a4;
  sub_23BB78744();
  sub_23BBDD9B8();

  sub_23BB787A8(v13);
  v39(v18);
  (*(v15 + 8))(v18, v33);
  sub_23B9D2D88(v22, a6, a10);
  v29 = *(v19 + 8);
  v29(v22, a6);
  sub_23B9D2D88(v24, a6, a10);
  return (v29)(v24, a6);
}

uint64_t sub_23BB78564()
{

  return swift_deallocObject();
}

unint64_t sub_23BB785D0()
{
  result = qword_27E1A00F8;
  if (!qword_27E1A00F8)
  {
    sub_23BBDAA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A00F8);
  }

  return result;
}

uint64_t sub_23BB78628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_23BBDC208();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  return (*(a6 + 32))(v11, a3, a6);
}

unint64_t sub_23BB78744()
{
  result = qword_27E1A2908;
  if (!qword_27E1A2908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2908);
  }

  return result;
}

uint64_t sub_23BB787A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_23BB78850(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_23BB78900(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_23BBDCC88() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_23BB789D4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBAE714(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EEB5F90](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_23BB78AC8()
{
  sub_23BB79610();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB78B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_23BBDCC88();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);

  v18(a1, a2);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v19 = *(v15 + 32);
    v19(v17, v13, v14);
    sub_23BB78EB8(v17, v10);
    (*(v15 + 8))(v17, v14);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
    {
      v20 = v24;
      v19(v24, v10, v14);
      v21 = 0;
      return __swift_storeEnumTagSinglePayload(v20, v21, 1, v14);
    }

    v13 = v10;
  }

  v20 = v24;
  sub_23B9C8F9C(v13);
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v14);
}

uint64_t sub_23BB78D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = *v2;
  v6 = v2[1];
  v14 = *(v2 + 1);
  v15 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2910);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2918);
  v9 = swift_allocObject();
  *(v9 + 16) = *(v2 + 1);
  *(v9 + 32) = *(v2 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2920);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2928) + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  v11[2] = v9;

  return sub_23BB79540(&v14, v13);
}

uint64_t sub_23BB78EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDCBA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  sub_23BBDCC48();
  sub_23BBDCB78();
  v11 = sub_23B9A07E0(v10, v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0 || (v13 = sub_23BBDCC38(), !v14))
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v23, qword_27E1BFC88);
    v24 = sub_23BBDD598();
    v25 = sub_23BBD9988();
    if (!os_log_type_enabled(v25, v24))
    {
      goto LABEL_10;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v39);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_23BA5AB90(0xD0000000000000AFLL, 0x800000023BBE31A0, &v39);
    _os_log_impl(&dword_23B970000, v25, v24, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v27, -1, -1);
    v28 = v26;
LABEL_9:
    MEMORY[0x23EEB6DC0](v28, -1, -1);
LABEL_10:

LABEL_11:
    v22 = sub_23BBDCC88();
    v20 = a2;
    v21 = 1;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }

  v15 = v13;
  v16 = v14;
  v17 = sub_23BBDCA88();
  MEMORY[0x28223BE20](v17);
  *(&v38 - 2) = a1;
  v18 = sub_23BB78900(sub_23BB794C0, (&v38 - 4), v17);

  if (!v18)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v30, qword_27E1BFC88);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD00000000000002DLL, 0x800000023BBE3250);
    MEMORY[0x23EEB5890](v15, v16);

    MEMORY[0x23EEB5890](0xD00000000000003BLL, 0x800000023BBE3280);
    v31 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    MEMORY[0x23EEB5890](v31);

    MEMORY[0x23EEB5890](0xD000000000000029, 0x800000023BBE32C0);
    v33 = v39;
    v32 = v40;
    v34 = sub_23BBDD598();

    v25 = sub_23BBD9988();

    if (!os_log_type_enabled(v25, v34))
    {

      goto LABEL_11;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v35 = 136446466;
    *(v35 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v39);
    *(v35 + 12) = 2082;
    v37 = sub_23BA5AB90(v33, v32, &v39);

    *(v35 + 14) = v37;
    _os_log_impl(&dword_23B970000, v25, v34, "%{public}s%{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v36, -1, -1);
    v28 = v35;
    goto LABEL_9;
  }

  v19 = sub_23BBDCC88();
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  v20 = a2;
  v21 = 0;
  v22 = v19;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t sub_23BB7941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23BBDDA88() & 1;
  }
}

uint64_t sub_23BB79460()
{
  sub_23BBDCC88();
  sub_23BB794E0();
  return sub_23BBDCF38() & 1;
}

unint64_t sub_23BB794E0()
{
  result = qword_27E197B88;
  if (!qword_27E197B88)
  {
    sub_23BBDCC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197B88);
  }

  return result;
}

unint64_t sub_23BB795CC()
{
  result = qword_27E19FED8;
  if (!qword_27E19FED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19FED8);
  }

  return result;
}

unint64_t sub_23BB79610()
{
  result = qword_27E1A2930;
  if (!qword_27E1A2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2930);
  }

  return result;
}

unint64_t sub_23BB79690()
{
  result = qword_27E1A2938;
  if (!qword_27E1A2938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2928);
    sub_23B97B518(&qword_27E1A2940, &qword_27E1A2920);
    sub_23B97B518(&qword_27E1A2948, &qword_27E1A2950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2938);
  }

  return result;
}

unint64_t sub_23BB79794()
{
  result = sub_23B9EE60C();
  if (v1 <= 0x3F)
  {
    result = sub_23BBD9728();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB7981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 28)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BB798E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 28)) = (v4 - 1);
  }

  return result;
}

void sub_23BB799B4()
{
  sub_23BB7D460(319, &qword_27E198598, &type metadata for CommonUIHorizontalSizeClass, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23BB7D460(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_23BB7D4B0(319, &qword_27E1A2980, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AMSBagKey(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BB79AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v58 = v4;
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v57 = v6 - v5;
  sub_23BBDA408();
  OUTLINED_FUNCTION_7();
  v53 = v7;
  v54 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v62 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2988);
  OUTLINED_FUNCTION_7();
  v51 = v13;
  v52 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2990);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2998);
  OUTLINED_FUNCTION_7();
  v55 = v22;
  v56 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v60 = &v50 - v27;
  v63 = v2;
  sub_23BB7D7A0();
  swift_allocObject();
  sub_23BB7D95C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29A8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF18);
  v29 = type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle(255);
  v30 = sub_23B97B518(&qword_27E19AF10, &qword_27E19AF18);
  v31 = sub_23BB7B900(&qword_27E1A29B0, type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle);
  v67 = v28;
  v68 = v29;
  v69 = v30;
  v70 = v31;
  swift_getOpaqueTypeConformance2();
  sub_23BBDBFA8();
  sub_23BBDA3F8();
  sub_23B97B518(&qword_27E1A29B8, &qword_27E1A2988);
  sub_23BB7B900(&qword_27E19AE90, MEMORY[0x277CDDB18]);
  v32 = v51;
  v33 = v53;
  sub_23BBDB728();
  v34 = v11;
  v35 = v50;
  (*(v54 + 8))(v34, v33);
  (*(v52 + 8))(v17, v32);
  sub_23BBDB538();
  sub_23BBDB488();
  v36 = sub_23BBDB508();

  KeyPath = swift_getKeyPath();
  v38 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29C0) + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  *&v20[*(v35 + 36)] = sub_23BBDAF28();
  v39 = v57;
  sub_23BBDB128();
  v40 = sub_23BB7C950();
  sub_23BBDB968();
  (*(v58 + 8))(v39, v59);
  sub_23B979910(v20, &qword_27E1A2990);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v67 = v35;
  v68 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v60;
  v42 = v56;
  sub_23BBDBA28();

  (*(v55 + 8))(v25, v42);
  v43 = *(v63 + 24);
  v65 = *(v63 + 16);
  v66 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF88();
  v44 = v67;
  v45 = v68;
  v46 = v69;
  v47 = v41 + *(v61 + 36);
  type metadata accessor for LicenseAgreementModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968);
  sub_23BBDBF88();
  *v47 = v44;
  *(v47 + 8) = v45;
  *(v47 + 16) = v46;
  v48 = sub_23BBDC2B8();
  MEMORY[0x28223BE20](v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29D8);
  sub_23BB7CBA8();
  sub_23BB7CD5C();
  sub_23BBDBC58();
  return sub_23B979910(v41, &qword_27E1A29A0);
}

uint64_t sub_23BB7A2A4()
{
  v1 = v0;
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  v6 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_23BB7D7A0();
  sub_23BBDD308();
  v7 = sub_23BBDD2F8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_23BB7D95C();
  sub_23BB5D2B8();

  v10 = *(v1 + 24);
  v12[16] = *(v1 + 16);
  v13 = v10;
  v12[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23BB7A49C()
{
  v0 = type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_23BBDBE98();
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B97B518(&qword_27E19AF10, &qword_27E19AF18);
  sub_23BB7B900(&qword_27E1A29B0, type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle);
  sub_23BBDB6E8();
  sub_23BB7D19C(v2, type metadata accessor for SubscriptionOfferViewNoCodeLabelStyle);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23BB7A6EC@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BB7A7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDBE38();
  *a1 = result;
  return result;
}

uint64_t sub_23BB7A814(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDB388();
  v7 = *a2;
  if (*(a2 + 8) != 1)
  {

    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v7, 0);
    (*(v4 + 8))(v6, v3);
  }

  sub_23BBD9B18();
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29D8);
  sub_23BBDB028();
  return sub_23BB7CE18();
}

uint64_t sub_23BB7A9D0()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BB7AA7C;

  return sub_23BB7ABB0();
}

uint64_t sub_23BB7AA7C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v4, v3);
}

uint64_t sub_23BB7ABB0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_23BBDD308();
  v1[7] = sub_23BBDD2F8();
  v3 = sub_23BBDD2D8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_23BB7ACA4, v3, v2);
}

uint64_t sub_23BB7ACA4()
{
  v1 = *(v0 + 48);
  *(v0 + 112) = *(type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0) + 24);
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968);
  sub_23BBDBF68();
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
  *(v0 + 88) = v2;
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v3 = *(v0 + 48);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_23BB7D19C(v3, type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState);
      }

      else
      {
      }

      OUTLINED_FUNCTION_1_16();
      OUTLINED_FUNCTION_15_26();

      __asm { BRAA            X1, X16 }
    }

    sub_23BB7D19C(v3, type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState);
  }

  v5 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_40(v5);
  OUTLINED_FUNCTION_16_22();
  sub_23BBDBF78();
  sub_23B979910(v5, &qword_27E19C6F0);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_23BB7AEBC;
  OUTLINED_FUNCTION_15_26();

  return sub_23BB7B1E4(v7, v8);
}

uint64_t sub_23BB7AEBC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_23BB7B0F0;
  }

  else
  {
    v7 = sub_23BB7AFF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_23BB7AFF4()
{
  v1 = *(v0 + 24);

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_40(v1);
  sub_23B979510();
  sub_23BBDBF78();
  sub_23B979910(v1, &qword_27E19C6F0);

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_15_26();

  __asm { BRAA            X1, X16 }
}

void sub_23BB7B0F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_40(v2);
  OUTLINED_FUNCTION_16_22();
  sub_23BBDBF78();
  sub_23B979910(v2, &qword_27E19C6F0);

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_15_26();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_23BB7B1E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_23BB7B204, 0, 0);
}

uint64_t sub_23BB7B204()
{
  v1 = v0[21];
  sub_23BB7D1F4();
  v2 = sub_23BB7B588();
  v0[22] = v2;
  v3 = [v2 URLForKey_];
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23BB7B38C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23BB7B61C;
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23BB7B38C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_23BB7B514;
  }

  else
  {
    v5 = sub_23BB7B494;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23BB7B494()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  sub_23BBD96F8();

  OUTLINED_FUNCTION_1_16();

  return v4();
}

uint64_t sub_23BB7B514()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_1_16();

  return v3();
}

id sub_23BB7B588()
{
  v0 = sub_23BBDCFE8();

  v1 = sub_23BBDCFE8();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t *sub_23BB7B61C(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_23BB7B6B4(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_23BB7B720(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BB7B6B4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_23BB7B720(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x282200950]();
}

uint64_t sub_23BB7B748()
{
  type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_19_0();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_23B97B5C0(*v4, *(v4 + 8));

  if (!OUTLINED_FUNCTION_7_42())
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v7 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968);

  return swift_deallocObject();
}

uint64_t sub_23BB7B888()
{
  v0 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_13_0(v0);
  return sub_23BB7A2A4();
}

uint64_t sub_23BB7B900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BB7B948()
{
  v0 = type metadata accessor for LicenseAgreementModifier(0);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  sub_23BB7D7A0();
  swift_allocObject();
  sub_23BB7D95C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A58);
  sub_23B97B518(&qword_27E1A2A60, &qword_27E1A2A50);
  sub_23BB7DA14();
  sub_23BBDBB28();
}

uint64_t sub_23BB7BB64@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_23BBD9848();
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DA8);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v38 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0610);
  MEMORY[0x28223BE20](v48);
  v41 = &v38 - v7;
  v42 = sub_23BBD9728();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A80);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A88);
  MEMORY[0x28223BE20](v10);
  v12 = (&v38 - v11);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A78);
  MEMORY[0x28223BE20](v47);
  v45 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C6F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v38 - v15);
  type metadata accessor for LicenseAgreementModifier(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18);
  MEMORY[0x23EEB48C0](v17);
  v18 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v34 = *v16;
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *v12 = sub_23BB7C3B0;
      v12[1] = 0;
      v12[2] = sub_23BB01920;
      v12[3] = v35;
      swift_storeEnumTagMultiPayload();
      v36 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA00);
      sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8);
      sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00);
      v37 = v45;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB7DAA0();
      sub_23BB01430();
      sub_23BBDACD8();

      return sub_23B979910(v37, &qword_27E1A2A78);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v21 = v39;
      v20 = v40;
      v22 = v42;
      (*(v40 + 32))(v39, v16, v42);
      v23 = v41;
      (*(v20 + 16))(v41, v21, v22);
      v24 = sub_23BBDA398();
      v25 = sub_23BBDB398();
      v26 = v23 + *(v48 + 36);
      *v26 = v24;
      *(v26 + 8) = v25;
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB7DAA0();
      sub_23BB01430();
      sub_23BBDACD8();
      sub_23B979910(v23, &qword_27E1A0610);
      return (*(v20 + 8))(v21, v22);
    }
  }

  sub_23BBDCF48();
  sub_23BBD9838();
  sub_23BB73D2C();
  v50 = sub_23BBDD028();
  v51 = v28;
  sub_23B9F6A08();
  sub_23BBD98A8();
  v29 = v6;
  v30 = v44;
  v31 = *(v44 + 16);
  v43 = v9;
  v32 = v46;
  v31(v12, v29, v46);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA00);
  sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8);
  sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00);
  v33 = v45;
  sub_23BBDACD8();
  sub_23B979510();
  swift_storeEnumTagMultiPayload();
  sub_23BB7DAA0();
  sub_23BB01430();
  sub_23BBDACD8();
  sub_23B979910(v33, &qword_27E1A2A78);
  return (*(v30 + 8))(v29, v32);
}

uint64_t sub_23BB7C3B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBD9848();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_23BBDCF48();
  sub_23BBD9838();
  sub_23BB73D2C();
  result = sub_23BBDB668();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23BB7C4FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19AC20);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_23B9B70F0();
  v13 = sub_23BBDA2E8();
  (*(v4 + 8))(v8, v2);
  if (v13)
  {
    v14 = sub_23BBDA9D8();
  }

  else
  {
    v14 = sub_23BBDA998();
  }

  v15 = v14;
  if (qword_27E197698 != -1)
  {
    swift_once();
  }

  v16 = qword_27E1BFC58;
  *v12 = v15;
  *(v12 + 1) = v16;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABF8);
  sub_23BB7C6B4(&v12[*(v17 + 44)]);
  sub_23BB7D730(v12, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A48);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_23BB7C6B4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_23BBDAFB8();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_23BBDAFD8();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_23BBDAFE8();
  sub_23BBDAFC8();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AC00) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

unint64_t sub_23BB7C950()
{
  result = qword_27E1A29C8;
  if (!qword_27E1A29C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2990);
    sub_23BB7CA08();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29C8);
  }

  return result;
}

unint64_t sub_23BB7CA08()
{
  result = qword_27E1A29D0;
  if (!qword_27E1A29D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2988);
    sub_23BBDA408();
    sub_23B97B518(&qword_27E1A29B8, &qword_27E1A2988);
    sub_23BB7B900(&qword_27E19AE90, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29D0);
  }

  return result;
}

unint64_t sub_23BB7CBA8()
{
  result = qword_27E1A29E0;
  if (!qword_27E1A29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29A0);
    sub_23BB7CC64();
    sub_23BB7B900(&qword_27E1A29F8, type metadata accessor for LicenseAgreementModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29E0);
  }

  return result;
}

unint64_t sub_23BB7CC64()
{
  result = qword_27E1A29E8;
  if (!qword_27E1A29E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2990);
    sub_23BB7C950();
    swift_getOpaqueTypeConformance2();
    sub_23BB7B900(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A29E8);
  }

  return result;
}

unint64_t sub_23BB7CD5C()
{
  result = qword_27E1A2A00;
  if (!qword_27E1A2A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29D8);
    sub_23BB7CBA8();
    sub_23BB7B900(&qword_27E1985A8, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A00);
  }

  return result;
}

uint64_t sub_23BB7CE18()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A29A0);
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_17_0();
  v2(v1);
  return v0;
}

uint64_t sub_23BB7CE80()
{
  type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_19_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  sub_23B97B5C0(*(v1 + v4), *(v1 + v4 + 8));

  if (!OUTLINED_FUNCTION_7_42())
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v7 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2968);

  return swift_deallocObject();
}

uint64_t sub_23BB7CFC8()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton(0);
  OUTLINED_FUNCTION_13_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23BB7D0B4;

  return sub_23BB7A9D0();
}

uint64_t sub_23BB7D0B4()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BB7D19C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BB7D1F4()
{
  result = qword_27E1A2A08;
  if (!qword_27E1A2A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1A2A08);
  }

  return result;
}

uint64_t sub_23BB7D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_23BB7D314()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18);
    v6 = v1 + *(v4 + 20);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

void sub_23BB7D39C()
{
  sub_23BB7D460(319, &qword_27E19A2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_23BB7D4B0(319, &qword_27E1A2A30, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB7D460(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23BB7D4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23BB7D530()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BB7D594()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_23BB7D5E8()
{
  sub_23B9C68B0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BB7D654()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A29D8);
  sub_23BB7CBA8();
  sub_23BB7CD5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BB7D730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19AC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB7D7A0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB7D7F8()
{
  v1 = (type metadata accessor for LicenseAgreementModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2A18) + 32);
  v5 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v3 + v4);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_23BB7D95C()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB7D9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LicenseAgreementModifier(0);
  OUTLINED_FUNCTION_13_0(v2);
  return sub_23BB7BB64(a1);
}

unint64_t sub_23BB7DA14()
{
  result = qword_27E1A2A68;
  if (!qword_27E1A2A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A58);
    sub_23BB7DAA0();
    sub_23BB01430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A68);
  }

  return result;
}

unint64_t sub_23BB7DAA0()
{
  result = qword_27E1A2A70;
  if (!qword_27E1A2A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A78);
    sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8);
    sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A70);
  }

  return result;
}

uint64_t sub_23BB7DB84()
{

  return swift_deallocObject();
}

unint64_t sub_23BB7DBC0()
{
  result = qword_27E1A2A90;
  if (!qword_27E1A2A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A48);
    sub_23B97B518(&qword_27E19AC18, qword_27E19AC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2A90);
  }

  return result;
}

uint64_t sub_23BB7DC78()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2A58);
  sub_23B97B518(&qword_27E1A2A60, &qword_27E1A2A50);
  sub_23BB7DA14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_42()
{
  v2 = v1 + *(v0 + 24);
  v3 = type metadata accessor for SubscriptionOfferViewNoCodeLicenseAgreementButton.LicenseAgreementState(0);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_16_22()
{

  return sub_23B979510();
}

uint64_t sub_23BB7DDC4()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v47 = v1;
    v13 = v12;

    sub_23BB02B28(v11, v13);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v14 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v14, v15);
    v16 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v16, v17);
    v18 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v18, v19);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v20 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v20, v21);
    v22 = sub_23BB02FE4(v8);
    v24 = v23;
    v1 = v47;

    v25 = sub_23BBD97D8();
    v27 = v26;
    sub_23B9A940C(v22, v24);
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = sub_23B9D4CA8(v25, v27);

  if (v28)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = *(v1 + 40);
  v49 = *(v1 + 24);
  v50 = v31;
  v51 = *(v1 + 56);
  v52 = *(v1 + 72);
  v32 = sub_23BBCA150();
  if (!v32)
  {
LABEL_15:

    return 0;
  }

  v33 = v32;
  type metadata accessor for SubscriptionViewPurchaseEvent();
  sub_23BBC9CD8();
  if (!v34)
  {

    goto LABEL_15;
  }

  v35 = v34;
  v36 = sub_23BB024A0(v33, v30, 1);
  v37 = sub_23BB024A0(v35, v36, 1);
  v38 = &unk_284E57088;
  v39 = 3;
  do
  {
    v40 = *(v38 - 1);
    v41 = *v38;

    v42 = sub_23BB03A88(v40, v41);
    v44 = v43;

    if (v44)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v48 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010);
      sub_23BBDD8D8();
      v37 = v48;

      sub_23B9A9318();
      sub_23BBDD8F8();
    }

    v38 += 2;
    --v39;
  }

  while (v39);
  return v37;
}

uint64_t type metadata accessor for SubscriptionViewPurchaseEvent()
{
  result = qword_27E1A2A98;
  if (!qword_27E1A2A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB7E200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for MintViewBasePurchaseEvent(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_23BB7E2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for MintViewBasePurchaseEvent(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23BB7E328()
{
  result = type metadata accessor for MintViewBasePurchaseEvent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23BB7E3F0()
{
  OUTLINED_FUNCTION_10_0();
  v190 = v1;
  v3 = v2;
  v193 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v4 = OUTLINED_FUNCTION_25_0(v193);
  v194 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_3();
  v181[1] = v10;
  OUTLINED_FUNCTION_5_3();
  v195 = sub_23BBDC1E8();
  OUTLINED_FUNCTION_3_2();
  v207 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_3();
  v203 = v14;
  v15 = OUTLINED_FUNCTION_5_3();
  v199 = type metadata accessor for SubscriptionStoreContentConfiguration.Section(v15);
  v16 = OUTLINED_FUNCTION_25_0(v199);
  v206 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_5();
  v217 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_3();
  v218 = v20;
  v21 = OUTLINED_FUNCTION_5_3();
  v198 = type metadata accessor for SubscriptionStoreContentConfiguration.Context.SectionContext(v21);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v219 = v24 - v23;
  v25 = OUTLINED_FUNCTION_5_3();
  v188 = type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v196 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199668);
  OUTLINED_FUNCTION_13_0(v29);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  v32 = v181 - v31;
  sub_23BBDA288();
  OUTLINED_FUNCTION_3_2();
  v215 = v34;
  v216 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_3();
  v214 = v36;
  v37 = OUTLINED_FUNCTION_5_3();
  v213 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(v37);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_3();
  v220 = v40;
  OUTLINED_FUNCTION_5_3();
  v221 = sub_23BBDC208();
  OUTLINED_FUNCTION_3_2();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_5();
  v222 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_3();
  v212 = v46;
  OUTLINED_FUNCTION_5_3();
  v47 = sub_23BBDAA98();
  OUTLINED_FUNCTION_3_2();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_1();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_42_7();
  v56 = MEMORY[0x277CE0150];
  v57 = sub_23BB85F08(&qword_27E1984F8, MEMORY[0x277CE0150]);
  OUTLINED_FUNCTION_157();
  sub_23BBDD458();
  sub_23B9B8168();
  v197 = v58;
  (*(v49 + 16))(v53, v3, v47);
  sub_23BB85F08(&qword_27E1A00F8, v56);
  v59 = v195;
  sub_23BBDD188();
  v192 = 0;
  v210 = (v42 + 16);
  v60 = *(v54 + 44);
  v208 = (v42 + 32);
  ++v215;
  v201 = v207 + 16;
  v200 = v207 + 8;
  v207 = v42 + 8;
  v183 = "ERROR_TERMS_OF_SERVICE_TITLE";
  *&v61 = 136446466;
  v182 = v61;
  v62 = MEMORY[0x277D84F90];
  v205 = v32;
  v211 = v47;
  v209 = v0;
  while (1)
  {
    OUTLINED_FUNCTION_157();
    sub_23BBDD4A8();
    if (*(v0 + v60) == v224)
    {
      break;
    }

    v63 = sub_23BBDD558();
    v64 = v212;
    v65 = v221;
    (*v210)(v212);
    v63(&v224, 0);
    v66 = v60;
    v67 = v57;
    sub_23BBDD4B8();
    (*v208)(v222, v64, v65);
    v68 = v214;
    sub_23BBDC1D8();
    sub_23BA22C2C();
    sub_23BBDA298();
    v69 = *v215;
    (*v215)(v68, v216);
    if (__swift_getEnumTagSinglePayload(v32, 1, v213) == 1)
    {
      sub_23B979910(v32, &qword_27E199668);
      if (v192)
      {
        v83 = OUTLINED_FUNCTION_7_43();
        v84(v83);
        v192 = 1;
      }

      else
      {
        if (qword_27E1976D0 != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v106, qword_27E1BFC88);
        v107 = sub_23BBDD5A8();
        v108 = sub_23BBD9988();
        if (os_log_type_enabled(v108, v107))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *&v224 = v110;
          *v109 = v182;
          *(v109 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v224);
          *(v109 + 12) = 2082;
          *(v109 + 14) = sub_23BA5AB90(0xD000000000000053, v183 | 0x8000000000000000, &v224);
          _os_log_impl(&dword_23B970000, v108, v107, "%{public}s%{public}s", v109, 0x16u);
          swift_arrayDestroy();
          v32 = v205;
          MEMORY[0x23EEB6DC0](v110, -1, -1);
          MEMORY[0x23EEB6DC0](v109, -1, -1);
        }

        v111 = OUTLINED_FUNCTION_7_43();
        v112(v111);
        v192 = 1;
        v59 = v195;
      }

      v60 = v66;
      v0 = v209;
    }

    else
    {
      OUTLINED_FUNCTION_55_4();
      sub_23BB85FCC();
      OUTLINED_FUNCTION_55_4();
      v70 = v202;
      sub_23BB86024();
      OUTLINED_FUNCTION_17_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_55_4();
        v71 = v219;
        sub_23BB85FCC();
        OUTLINED_FUNCTION_13_31();
        sub_23BBDC1F8();
        OUTLINED_FUNCTION_14_28();
        v72(v204, v68, v59);
        OUTLINED_FUNCTION_0_57();
        sub_23BB85F08(&qword_27E19B1F8, v73);
        v74 = v218;
        sub_23BBDD718();
        OUTLINED_FUNCTION_14_28();
        v75(v68, v59);
        v76 = (v71 + *(v198 + 20));
        v77 = *v76;
        v78 = v76[1];
        sub_23BB86024();
        *(v74 + 40) = v77;
        *(v74 + 48) = v78;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B9B8090();
          v62 = v152;
        }

        v57 = v67;
        v80 = *(v62 + 16);
        v79 = *(v62 + 24);
        v32 = v205;
        v60 = v66;
        if (v80 >= v79 >> 1)
        {
          OUTLINED_FUNCTION_11_28(v79);
          sub_23B9B8090();
          v62 = v153;
        }

        v0 = v209;
        sub_23BB86080(v219, type metadata accessor for SubscriptionStoreContentConfiguration.Context.SectionContext);
        OUTLINED_FUNCTION_1_58();
        v81 = OUTLINED_FUNCTION_7_43();
        v82(v81);
        *(v62 + 16) = v80 + 1;
        OUTLINED_FUNCTION_23_2();
        sub_23BB85FCC();
      }

      else
      {
        OUTLINED_FUNCTION_55_4();
        sub_23BB85FCC();
        v59 = *(v62 + 16);
        if (v59)
        {
          v223 = MEMORY[0x277D84F90];

          sub_23BA92C88();
          v85 = v223;
          v86 = v206;
          OUTLINED_FUNCTION_23_2();
          v88 = v62 + v87;
          v89 = *(v86 + 72);
          do
          {
            OUTLINED_FUNCTION_17_17();
            v90 = v217;
            sub_23BB86024();
            sub_23B97933C(v90, &v224);
            OUTLINED_FUNCTION_16_23();
            sub_23BB86080(v90, v91);
            v223 = v85;
            v92 = *(v85 + 16);
            if (v92 >= *(v85 + 24) >> 1)
            {
              sub_23BA92C88();
              v85 = v223;
            }

            *(v85 + 16) = v92 + 1;
            OUTLINED_FUNCTION_52_6(v85 + 40 * v92);
            v88 += v89;
            v59 = (v59 - 1);
          }

          while (v59);
          v223 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5C8);
          sub_23BB85F50();
          sub_23BBDD718();
          v59 = v193;
          v93 = v189;
          v94 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
          type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v98, v99, v100, v94);
          sub_23B979510();

          *(v93 + 32) = v226;
          v101 = v225;
          *v93 = v224;
          *(v93 + 16) = v101;
          v102 = v93 + v59[7];
          *v102 = v62;
          *(v102 + 8) = 0;
          *(v93 + v59[8]) = 1;
          v103 = v197;
          v68 = *(v197 + 16);
          v104 = *(v197 + 24);
          v70 = v194;
          if (v68 >= v104 >> 1)
          {
            OUTLINED_FUNCTION_11_28(v104);
            sub_23B9B8168();
            v103 = v155;
          }

          v57 = v67;
          *(v103 + 16) = v68 + 1;
          OUTLINED_FUNCTION_23_2();
          v197 = v105;
          OUTLINED_FUNCTION_4_41();
          sub_23BB85FCC();
          v62 = MEMORY[0x277D84F90];
        }

        v60 = v66;
        v113 = (v196 + *(v188 + 20));
        v114 = *v113;
        v115 = *(v113 + 8);
        v0 = v209;
        v186 = *v113;
        if (v115 != 1 || *(v114 + 16) != 1)
        {
          v130 = v203;
          LODWORD(v184) = v115;
          sub_23BBDC1F8();
          OUTLINED_FUNCTION_10_24();
          OUTLINED_FUNCTION_38_6();
          v131();
          OUTLINED_FUNCTION_0_57();
          sub_23BB85F08(&qword_27E19B1F8, v132);
          v133 = v191;
          sub_23BBDD718();
          OUTLINED_FUNCTION_14_28();
          v134(v130, v70);
          v59 = v193;
          OUTLINED_FUNCTION_5_41();
          OUTLINED_FUNCTION_54_4();
          sub_23BB86024();
          v135 = v59[6];
          v136 = v187;
          sub_23BBDC1D8();
          sub_23BA22BD8();
          sub_23BBDA298();
          v69(v136, v216);
          v137 = v133 + v59[7];
          *v137 = v186;
          *(v137 + 8) = v184;
          *(v133 + v59[8]) = 0;
          j__swift_bridgeObjectRetain_0();
          OUTLINED_FUNCTION_48_8();
          if (v127)
          {
            OUTLINED_FUNCTION_11_28(v138);
            sub_23B9B8168();
            v135 = v154;
          }

          OUTLINED_FUNCTION_1_58();
          v139 = OUTLINED_FUNCTION_7_43();
          v140(v139);
          *(v135 + 16) = v136;
          OUTLINED_FUNCTION_23_2();
          v197 = v135;
          OUTLINED_FUNCTION_37_6();
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_23_2();
        v184 = v116;
        v118 = v116 + v117;
        v119 = v193;
        v120 = (v116 + v117 + v193[7]);
        if ((v120[1] & 1) == 0 && *(v118 + v193[8]) == 1)
        {
          v186 = *v120;
          j__swift_bridgeObjectRetain_0();
          OUTLINED_FUNCTION_13_31();
          sub_23BBDC1F8();
          OUTLINED_FUNCTION_10_24();
          OUTLINED_FUNCTION_38_6();
          v121();
          OUTLINED_FUNCTION_0_57();
          sub_23BB85F08(&qword_27E19B1F8, v122);
          OUTLINED_FUNCTION_56_5();
          OUTLINED_FUNCTION_14_28();
          v123(v68, v70);
          OUTLINED_FUNCTION_5_41();
          OUTLINED_FUNCTION_54_4();
          sub_23BB86024();
          v124 = v119[6];
          OUTLINED_FUNCTION_13_31();
          sub_23BBDC1D8();
          sub_23BA22BD8();
          sub_23BBDA298();
          v69(v68, v216);
          v125 = v59 + v119[7];
          *v125 = v186;
          v125[8] = 0;
          *(v59 + v119[8]) = 0;
          OUTLINED_FUNCTION_48_8();
          if (v127)
          {
            OUTLINED_FUNCTION_11_28(v126);
            sub_23B9B8168();
            v124 = v157;
          }

          OUTLINED_FUNCTION_1_58();
          v128 = OUTLINED_FUNCTION_7_43();
          v129(v128);
          *(v124 + 16) = v68;
          v197 = v124;
          OUTLINED_FUNCTION_37_6();
LABEL_36:
          v32 = v205;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_13_31();
        sub_23BBDC1F8();
        OUTLINED_FUNCTION_10_24();
        OUTLINED_FUNCTION_38_6();
        v143();
        OUTLINED_FUNCTION_0_57();
        sub_23BB85F08(&qword_27E19B1F8, v144);
        OUTLINED_FUNCTION_56_5();
        OUTLINED_FUNCTION_14_28();
        v145(v68, v70);
        OUTLINED_FUNCTION_5_41();
        OUTLINED_FUNCTION_54_4();
        sub_23BB86024();
        OUTLINED_FUNCTION_13_31();
        sub_23BBDC1D8();
        sub_23BA22BD8();
        sub_23BBDA298();
        v69(v68, v216);
        v146 = v59 + v119[7];
        *v146 = v186;
        v146[8] = 1;
        *(v59 + v119[8]) = 0;
        v147 = v197;
        v149 = *(v197 + 16);
        v148 = *(v197 + 24);

        if (v149 >= v148 >> 1)
        {
          sub_23B9B8168();
          v147 = v156;
        }

        v32 = v205;
        v59 = v184;
        OUTLINED_FUNCTION_1_58();
        v150 = OUTLINED_FUNCTION_7_43();
        v151(v150);
        *(v147 + 16) = v149 + 1;
        v197 = v147;
        OUTLINED_FUNCTION_37_6();
LABEL_37:
        OUTLINED_FUNCTION_4_41();
        sub_23BB85FCC();
        v141 = OUTLINED_FUNCTION_54_4();
        sub_23BB86080(v141, v142);
      }
    }
  }

  sub_23B979910(v0, &qword_27E1A00F0);
  v158 = *(v62 + 16);
  if (v158)
  {
    v159 = v193;
    v223 = MEMORY[0x277D84F90];

    sub_23BA92C88();
    v160 = v223;
    OUTLINED_FUNCTION_23_2();
    v162 = v62 + v161;
    v164 = *(v163 + 72);
    do
    {
      OUTLINED_FUNCTION_17_17();
      v165 = v217;
      sub_23BB86024();
      sub_23B97933C(v165, &v224);
      OUTLINED_FUNCTION_16_23();
      sub_23BB86080(v165, v166);
      v223 = v160;
      v167 = *(v160 + 16);
      if (v167 >= *(v160 + 24) >> 1)
      {
        sub_23BA92C88();
        v160 = v223;
      }

      *(v160 + 16) = v167 + 1;
      OUTLINED_FUNCTION_52_6(v160 + 40 * v167);
      v162 += v164;
      --v158;
    }

    while (v158);
    v223 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5C8);
    sub_23BB85F50();
    sub_23BBDD718();
    v168 = v185;
    v169 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v169);
    type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v173, v174, v175, v169);
    sub_23B979510();

    *(v168 + 32) = v226;
    v176 = v225;
    *v168 = v224;
    *(v168 + 16) = v176;
    v177 = v168 + *(v159 + 28);
    *v177 = v62;
    *(v177 + 8) = 0;
    *(v168 + *(v159 + 32)) = 1;
    v178 = v197;
    v179 = *(v197 + 16);
    if (v179 >= *(v197 + 24) >> 1)
    {
      sub_23B9B8168();
      v178 = v180;
    }

    *(v178 + 16) = v179 + 1;
    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_4_41();
    sub_23BB85FCC();
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB7F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v59) = a3;
  v58 = a2;
  v51 = a1;
  v64 = sub_23BBDA288();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC208();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_23BBDAA98();
  v56 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618) - 8;
  MEMORY[0x28223BE20](v57);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2D30);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  v53 = *(type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0) + 20);
  v65 = v6;
  __swift_storeEnumTagSinglePayload(a4 + v53, 1, 1, v6);
  v27 = *(type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(0) + 20);
  v54 = a4;
  v28 = a4 + v27;
  *v28 = v58;
  *(v28 + 8) = v59 & 1;
  sub_23B979510();
  v56[4](v55, v22, v19);
  v29 = MEMORY[0x277CE0150];
  sub_23BB85F08(&qword_27E1A00F8, MEMORY[0x277CE0150]);
  sub_23BBDD188();
  v30 = &v22[*(v57 + 52)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = &v26[*(v24 + 52)];
  v58 = v32;
  v59 = v31;
  *v33 = v31;
  *(v33 + 1) = v32;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0) + 36);
  sub_23BB85F08(&qword_27E1984F8, v29);
  v56 = (v61 + 4);
  v57 = (v61 + 2);
  v55 = (v61 + 1);
  v61 = (v62 + 8);
  v62 = v19;
  v52 = v18;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v26[v34] == v67[0])
    {
      v35 = 1;
    }

    else
    {
      v36 = sub_23BBDD558();
      (*v57)(v15);
      v36(v67, 0);
      sub_23BBDD4B8();
      v35 = 0;
    }

    v37 = 1;
    __swift_storeEnumTagSinglePayload(v15, v35, 1, v9);
    v38 = v66;
    sub_23B979688();
    if (__swift_getEnumTagSinglePayload(v38, 1, v9) != 1)
    {
      v39 = v60;
      (*v56)(v60, v66, v9);
      v59(v39);
      (*v55)(v39, v9);
      v37 = 0;
    }

    v40 = v37;
    v41 = v65;
    __swift_storeEnumTagSinglePayload(v18, v40, 1, v65);
    if (__swift_getEnumTagSinglePayload(v18, 1, v41) == 1)
    {
      break;
    }

    sub_23BB85FCC();
    v42 = v63;
    sub_23BBDC1D8();
    sub_23B9B7448();
    sub_23BBDA298();
    (*v61)(v42, v64);
    if (LOBYTE(v67[0]) == 2)
    {
      sub_23BB86080(v8, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    }

    else
    {
      if (v67[0])
      {
        v43 = v9;
        v44 = v15;
        v45 = v53;
        v46 = v54;
        sub_23B979910(v54 + v53, &qword_27E199640);
        sub_23BB85FCC();
        v47 = v46 + v45;
        v15 = v44;
        v9 = v43;
        v18 = v52;
      }

      else
      {
        v48 = v54;
        sub_23B979910(v54, &qword_27E199640);
        sub_23BB85FCC();
        v47 = v48;
      }

      __swift_storeEnumTagSinglePayload(v47, 0, 1, v65);
    }
  }

  sub_23B979910(v51, &qword_27E199618);
  return sub_23B979910(v26, &qword_27E1A2D30);
}

uint64_t sub_23BB8009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9 - 8];
  sub_23B979510();
  sub_23B9B73EC(a3, v16);
  sub_23BB7E3F0();
  v12 = v11;
  sub_23B979910(v16, &qword_27E19A528);
  sub_23BB7F8C4(v10, v12, 1, a4);
  sub_23B9ED050(a3);
  v13 = sub_23BBDAA98();
  (*(*(v13 - 8) + 8))(a2, v13);
  return sub_23B979910(a1, &qword_27E199618);
}

uint64_t sub_23BB801F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = a2;
  v5 = sub_23BBDAA98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_23B979510();
  (*(v6 + 16))(v8, a1, v5);
  sub_23B9B73EC(v14, v15);
  sub_23BB8009C(v11, v8, v15, a3);
  type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BB80380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BACD2D8();
  *a1 = result;
  return result;
}

void SubscriptionOptionGroup.init<>(isIncluded:label:marketingContent:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v19 = v9;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v20[0] = v15;
  v20[1] = v16;
  v21 = 1;

  v18 = v8(v17);
  v6(v18);

  sub_23B9B4FB8();
  sub_23BB804FC(v20, v14, v0, v4, v2, v19);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB804FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SubscriptionOptionGroup.ContentStorage();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for SubscriptionOptionGroup();
  (*(*(a4 - 8) + 32))(a6 + *(v13 + 68), a2, a4);
  return (*(*(a5 - 8) + 32))(a6 + *(v13 + 72), a3, a5);
}

void SubscriptionOptionGroup.init(content:label:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v23 = v22;
  v39 = v24;
  v41 = v25;
  v40 = v26;
  v42 = v27;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v31 = v30 - v29;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_53_5();
  v39();
  v37 = swift_storeEnumTagMultiPayload();
  v38 = v40(v37);
  v41(v38);
  sub_23BB804FC(v21, v35, v31, v23, a21, v42);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionOptionGroup._identifiedContent.getter@<X0>(uint64_t a1@<X8>)
{
  _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0();
  OUTLINED_FUNCTION_21_18();
  swift_getWitnessTable();
  type metadata accessor for GroupView();
  type metadata accessor for LeafView();
  v2 = sub_23BBDACE8();
  OUTLINED_FUNCTION_20_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  return sub_23BB6BAB8(sub_23BB810AC, v2, a1);
}

uint64_t sub_23BB808FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v70 = a1;
  v83 = a8;
  v86 = a3;
  v87 = a4;
  v88 = a6;
  v89 = a7;
  v14 = _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0();
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for LeafView();
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v67 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v61 - v19;
  MEMORY[0x28223BE20](v20);
  v71 = &v61 - v21;
  v72 = v14;
  v86 = a2;
  v87 = v14;
  v88 = a5;
  v89 = WitnessTable;
  v78 = WitnessTable;
  v22 = type metadata accessor for GroupView();
  v65 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v63 = &v61 - v26;
  v64 = *(a2 - 8);
  MEMORY[0x28223BE20](v27);
  v62 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v69 = &v61 - v30;
  v73 = a2;
  v74 = a3;
  v86 = a2;
  v87 = a3;
  v75 = a4;
  v76 = a6;
  v88 = a4;
  v89 = a5;
  v79 = a5;
  v90 = a6;
  v91 = a7;
  v77 = a7;
  v31 = type metadata accessor for SubscriptionOptionGroup.ContentStorage();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (&v61 - v33);
  v35 = sub_23BBDACE8();
  v81 = *(v35 - 8);
  v82 = v35;
  v36 = MEMORY[0x28223BE20](v35);
  v80 = &v61 - v37;
  (*(v32 + 16))(v34, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v34;
    v38 = v34[1];
    v86 = v73;
    v87 = v74;
    v88 = v75;
    v89 = v79;
    v90 = v76;
    v91 = v77;
    v40 = type metadata accessor for SubscriptionOptionGroup();
    v41 = v71;
    sub_23BB81108(v40, v71);
    v42 = v67;
    sub_23BB8136C(v39, v38, v41, v72, v67);
    v43 = swift_getWitnessTable();
    v44 = v66;
    sub_23B9D2D88(v42, v16, v43);
    v45 = *(v68 + 8);

    v45(v42, v16);
    sub_23B9D2D88(v44, v16, v43);
    swift_getWitnessTable();
    v46 = v80;
    sub_23BA82E14();

    v45(v42, v16);
    v45(v44, v16);
  }

  else
  {
    v47 = v64;
    v48 = v69;
    v49 = v73;
    (*(v64 + 32))(v69, v34, v73);
    v50 = v62;
    (*(v47 + 16))(v62, v48, v49);
    v86 = v49;
    v87 = v74;
    v88 = v75;
    v89 = v79;
    v90 = v76;
    v91 = v77;
    v51 = type metadata accessor for SubscriptionOptionGroup();
    v52 = v71;
    sub_23BB81108(v51, v71);
    sub_23BB81284(v50, v52, v49, v72, v24);
    v53 = swift_getWitnessTable();
    v54 = v63;
    sub_23B9D2D88(v24, v22, v53);
    v55 = *(v65 + 8);
    v55(v24, v22);
    sub_23B9D2D88(v54, v22, v53);
    swift_getWitnessTable();
    v46 = v80;
    sub_23BA82D64();
    v55(v24, v22);
    v55(v54, v22);
    (*(v47 + 8))(v69, v49);
  }

  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v84 = v56;
  v85 = v57;
  v58 = v82;
  v59 = swift_getWitnessTable();
  sub_23B9D2D88(v46, v58, v59);
  return (*(v81 + 8))(v46, v58);
}

uint64_t sub_23BB81108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v13, v2 + *(v14 + 68), v10, v11);
  (*(v6 + 16))(v8, v2 + *(a1 + 72), v5);
  return sub_23BB81410(v13, v8, v10, v5, a2);
}

uint64_t sub_23BB81284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for GroupView();
  (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
  v9 = a5 + *(v8 + 56);
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 343) = 0;
  return result;
}

uint64_t sub_23BB8136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for LeafView();
  (*(*(a4 - 8) + 32))(&a5[v8[9]], a3, a4);
  v9 = &a5[v8[10]];
  result = swift_getKeyPath();
  *v9 = result;
  v9[343] = 0;
  *&a5[v8[11]] = 0;
  return result;
}

uint64_t sub_23BB81410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t SubscriptionOptionGroup<>.init<>(isIncluded:marketingContent:)@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v18[0] = v10;
  v18[1] = v11;
  v19 = 1;
  v15 = 0;
  OUTLINED_FUNCTION_35_8();
  KeyPath = swift_getKeyPath();
  v17 = 0;

  sub_23B979910(v14, &qword_27E19C4E8);
  v12 = OUTLINED_FUNCTION_35_8();
  v15 = 0;
  a1(v12);

  sub_23B9B4FB8();
  sub_23BADB06C();
  return sub_23BB804FC(v18, v14, v9, &type metadata for AutomaticSubscriptionOptionGroupLabel, a2, a3);
}

uint64_t sub_23BB8176C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BACD2D8();
  *a1 = result;
  return result;
}

void SubscriptionOptionGroup<>.init(content:marketingContent:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v17 = v7;
  v9 = v8;
  v18 = v10;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  sub_23BADB06C();
  v19[0] = v6;
  v19[1] = &type metadata for AutomaticSubscriptionOptionGroupLabel;
  v19[2] = v4;
  v19[3] = v2;
  type metadata accessor for SubscriptionOptionGroup.ContentStorage();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_53_5();
  v9();
  swift_storeEnumTagMultiPayload();
  v20 = 0;
  OUTLINED_FUNCTION_35_8();
  KeyPath = swift_getKeyPath();
  v22 = 0;
  sub_23B979910(v19, &qword_27E19C4E8);
  v16 = OUTLINED_FUNCTION_35_8();
  v20 = 0;
  v17(v16);
  sub_23BB804FC(v0, v19, v14, &type metadata for AutomaticSubscriptionOptionGroupLabel, v4, v18);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

double SubscriptionOptionGroup<>.init<>(isIncluded:)()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  v4 = (v2 + 24);
  *(v2 + 64) = swift_getKeyPath();
  *(v3 + 72) = 0;
  sub_23B979910(v4, &qword_27E19C4E8);
  result = 0.0;
  *v4 = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = 1;
  return result;
}

void SubscriptionOptionGroup<>.init(content:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v11[0] = v4;
  v11[1] = &type metadata for AutomaticSubscriptionOptionGroupLabel;
  v11[2] = &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v11[3] = v5;
  v12 = sub_23BADB06C();
  KeyPath = sub_23B9B0108();
  type metadata accessor for SubscriptionOptionGroup.ContentStorage();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  v1(v7);
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  OUTLINED_FUNCTION_35_8();
  KeyPath = swift_getKeyPath();
  v14 = 0;
  sub_23B979910(v11, &qword_27E19C4E8);
  OUTLINED_FUNCTION_35_8();
  v12 = 0;
  sub_23BB804FC(v9, v11, v10, &type metadata for AutomaticSubscriptionOptionGroupLabel, &type metadata for AutomaticSubscriptionStoreMarketingContent, v3);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<>(_:isIncluded:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v22 = v21;
  v33 = v23;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  v37[0] = v28;
  v37[1] = v29;
  LOBYTE(v38) = 1;

  OUTLINED_FUNCTION_28_10();
  v34[0] = OUTLINED_FUNCTION_25_11();
  v34[1] = v30;
  v35 = v31 & 1;
  v36 = v32;
  v22();

  sub_23B9B4FB8();
  sub_23BB804FC(v37, v34, v27, MEMORY[0x277CE0BD8], a21, v33);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<A>(_:isIncluded:marketingContent:)()
{
  OUTLINED_FUNCTION_10_0();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v27[0] = v16;
  v27[1] = v17;
  LOBYTE(v28) = 1;
  v18 = OUTLINED_FUNCTION_157();
  v19(v18);

  v24[0] = sub_23BBDB678();
  v24[1] = v20;
  v25 = v21 & 1;
  v26 = v22;
  v6();

  (*(v14 + 8))(v8, v2);
  sub_23B9B4FB8();
  sub_23BB804FC(v27, v24, v12, MEMORY[0x277CE0BD8], v4, v23);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init(_:content:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_0();
  v39 = v25;
  v27 = v26;
  v40 = v28;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  v41[0] = a21;
  v41[1] = MEMORY[0x277CE0BD8];
  v41[2] = a22;
  v41[3] = a23;
  v41[4] = MEMORY[0x277CE0BC8];
  v41[5] = a24;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_42_7();
  v27();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_10();
  v34 = OUTLINED_FUNCTION_25_11();
  v38 = OUTLINED_FUNCTION_29_6(v34, v35, v36, v37);
  v39(v38);
  sub_23BB804FC(v24, v41, v32, MEMORY[0x277CE0BD8], a22, v40);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<A>(_:content:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v25 = v24;
  v27 = v26;
  v59 = v29;
  v60 = v28;
  v55 = v30;
  v32 = v31;
  v61 = v33;
  v57 = v34;
  v58 = a23;
  OUTLINED_FUNCTION_1_4();
  v56 = a21;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_3_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_1();
  v41 = v40 - v39;
  v62[0] = v42;
  v62[1] = MEMORY[0x277CE0BD8];
  v62[2] = v43;
  v62[3] = v44;
  v62[4] = MEMORY[0x277CE0BC8];
  v62[5] = a22;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v54 - v47;
  v55(v46);
  swift_storeEnumTagMultiPayload();
  (*(v37 + 16))(v41, v32, v25);
  v49 = sub_23BBDB678();
  v53 = OUTLINED_FUNCTION_29_6(v49, v50, v51, v52);
  v60(v53);
  (*(v37 + 8))(v32, v25);
  sub_23BB804FC(v48, v62, v23, MEMORY[0x277CE0BD8], v27, v61);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionOptionGroup<>.init<>(_:isIncluded:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_28_10();
  result = OUTLINED_FUNCTION_25_11();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 24) = result;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8 & 1;
  *(a3 + 48) = v9;
  return result;
}

void SubscriptionOptionGroup<>.init<A>(_:isIncluded:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_3_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  (*(v11 + 16))(v14 - v13, v7, v15);
  v16 = sub_23BBDB678();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v11 + 8))(v7, v1);
  *v9 = v5;
  *(v9 + 8) = v3;
  *(v9 + 16) = 1;
  *(v9 + 24) = v16;
  *(v9 + 32) = v18;
  *(v9 + 40) = v20 & 1;
  *(v9 + 48) = v22;
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init(_:content:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v18[1] = v6;
  v19 = v7;
  v8 = sub_23B9B0108();
  v20[0] = v3;
  v20[1] = MEMORY[0x277CE0BD8];
  v20[2] = &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v20[3] = v1;
  v20[4] = MEMORY[0x277CE0BC8];
  v20[5] = v8;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v5(v10);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_28_10();
  v13 = OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_29_6(v13, v14, v15, v16);
  sub_23BB804FC(v12, v20, v17, MEMORY[0x277CE0BD8], &type metadata for AutomaticSubscriptionStoreMarketingContent, v19);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionOptionGroup<>.init<A>(_:content:)()
{
  OUTLINED_FUNCTION_10_0();
  v28[1] = v1;
  v28[2] = v2;
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v29 = v12;
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_42_7();
  v16 = sub_23B9B0108();
  v30 = v7;
  v31 = MEMORY[0x277CE0BD8];
  v32 = &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v33 = v3;
  v34 = MEMORY[0x277CE0BC8];
  v35 = v16;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v28 - v19;
  v9(v18);
  swift_storeEnumTagMultiPayload();
  (*(v14 + 16))(v0, v11, v5);
  v21 = sub_23BBDB678();
  v23 = v22;
  LOBYTE(v9) = v24;
  v26 = v25;
  (*(v14 + 8))(v11, v5);
  v30 = v21;
  v31 = v23;
  LOBYTE(v32) = v9 & 1;
  v33 = v26;
  sub_23BB804FC(v20, &v30, v27, MEMORY[0x277CE0BD8], &type metadata for AutomaticSubscriptionStoreMarketingContent, v29);
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB825B4()
{
  result = type metadata accessor for SubscriptionOptionGroup.ContentStorage();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BB82678(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  if (*(v7 + 64) <= 0x10uLL)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = a3[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = *(v9 + 80);
  v16 = *(*(v5 - 8) + 64);
  v17 = *(v12 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v8 + v15 + 1;
  v20 = a2 - v18;
  if (a2 <= v18)
  {
    goto LABEL_31;
  }

  v21 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v11 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v25 < 2)
    {
LABEL_31:
      if (v14 > 0xFE)
      {
        v30 = (a1 + v19) & ~v15;
        if (v10 != v18)
        {
          v30 = (v30 + v16 + v17) & ~v17;
          v10 = v13;
          v5 = v11;
        }

        return __swift_getEnumTagSinglePayload(v30, v10, v5);
      }

      else
      {
        v29 = *(a1 + v8);
        if (v29 >= 2)
        {
          return (v29 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_31;
  }

LABEL_21:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = v21;
    }

    else
    {
      v27 = 4;
    }

    switch(v27)
    {
      case 2:
        v28 = *a1;
        break;
      case 3:
        v28 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v28 = *a1;
        break;
      default:
        v28 = *a1;
        break;
    }
  }

  else
  {
    v28 = 0;
  }

  return v18 + (v28 | v26) + 1;
}

void sub_23BB828BC(char *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(*(v8 - 8) + 64);
  if (v9 <= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = a4[4];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v12 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  v18 = v10 + 1;
  v19 = *(v11 + 80);
  v20 = v10 + 1 + v19;
  v21 = *(*(v7 - 8) + 64);
  v22 = *(v14 + 80);
  v23 = ((v21 + v22 + (v20 & ~v19)) & ~v22) + *(*(v13 - 8) + 64);
  v24 = 8 * v23;
  v25 = a3 >= v17;
  v26 = a3 - v17;
  if (v26 != 0 && v25)
  {
    if (v23 <= 3)
    {
      v30 = ((v26 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  if (v17 < a2)
  {
    v28 = ~v17 + a2;
    if (v23 < 4)
    {
      v29 = (v28 >> v24) + 1;
      if (v23)
      {
        v32 = v28 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v32;
          a1[2] = BYTE2(v32);
        }

        else if (v23 == 2)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v28;
      v29 = 1;
    }

    switch(v27)
    {
      case 1:
        a1[v23] = v29;
        return;
      case 2:
        *&a1[v23] = v29;
        return;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v23] = v29;
        return;
      default:
        return;
    }
  }

  switch(v27)
  {
    case 1:
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_63:
      __break(1u);
      JUMPOUT(0x23BB82C34);
    case 4:
      *&a1[v23] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v16 > 0xFE)
        {
          v33 = &a1[v20] & ~v19;
          if (v12 != v17)
          {
            v33 = (v33 + v21 + v22) & ~v22;
            v12 = v15;
            v7 = v13;
          }

          __swift_storeEnumTagSinglePayload(v33, a2, v12, v7);
        }

        else if (a2 > 0xFE)
        {
          if (v18 <= 3)
          {
            v34 = ~(-1 << (8 * v18));
          }

          else
          {
            v34 = -1;
          }

          if (v10 != -1)
          {
            v35 = v34 & (a2 - 255);
            if (v18 <= 3)
            {
              v36 = v10 + 1;
            }

            else
            {
              v36 = 4;
            }

            bzero(a1, v18);
            switch(v36)
            {
              case 2:
                *a1 = v35;
                break;
              case 3:
                *a1 = v35;
                a1[2] = BYTE2(v35);
                break;
              case 4:
                *a1 = v35;
                break;
              default:
                *a1 = v35;
                break;
            }
          }
        }

        else
        {
          a1[v10] = -a2;
        }
      }

      return;
  }
}

uint64_t sub_23BB82C84()
{
  OUTLINED_FUNCTION_44_6();
  _s17_StoreKit_SwiftUI18AccessoryMultiviewVMa_0();
  OUTLINED_FUNCTION_21_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for GroupView();
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for LeafView();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_20_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

void sub_23BB82D48()
{
  sub_23B975E04();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9B5B34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BB82DF0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 351) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB82F40);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BB82F54(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 351) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 351) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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
  }

  if (a2 > v9)
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 351) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 351) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BB8313CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

void sub_23BB83164()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9B5B34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BB83208(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 < a2)
  {
    v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 344;
    v16 = a2 - v12;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v15);
        if (!v21)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB833C8);
      case 4:
        v21 = *(a1 + v15);
        if (!v21)
        {
          break;
        }

LABEL_25:
        v23 = v21 - 1;
        if (v17)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v6 == v12)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  a1 = ((a1 + v13) & ~v11);
  if (v9 == v12)
  {
    v6 = v9;
    v5 = v7;
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v25 = *(((a1 + v14) & 0xFFFFFFFFFFFFFFF8) + 343);
  if (v25 > 1)
  {
    return (v25 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_23BB833DC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 344;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFEA8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFEA8)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + v15) & 0xFFFFFFF8) != 0xFFFFFEA8)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 344);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        return result;
      case 2:
        *(v6 + v17) = v22;
        return result;
      case 3:
        goto LABEL_46;
      case 4:
        *(v6 + v17) = v22;
        return result;
      default:
        return result;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    case 3:
LABEL_46:
      __break(1u);
      JUMPOUT(0x23BB83694);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!a2)
      {
        return result;
      }

LABEL_34:
      if (v8 == v12)
      {
        goto LABEL_37;
      }

      a1 = (&a1[v14] & ~v13);
      if (v11 == v12)
      {
        v8 = v11;
        v7 = v9;
LABEL_37:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      }

      else
      {
        v25 = &a1[v16] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          result = 0.0;
          *(v25 + 248) = 0u;
          *(v25 + 232) = 0u;
          *(v25 + 216) = 0u;
          *(v25 + 200) = 0u;
          *(v25 + 184) = 0u;
          *(v25 + 168) = 0u;
          *(v25 + 152) = 0u;
          *(v25 + 136) = 0u;
          *(v25 + 120) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 8) = 0u;
          *(v25 + 328) = 0u;
          *(v25 + 312) = 0u;
          *(v25 + 296) = 0u;
          *(v25 + 280) = 0u;
          *(v25 + 264) = 0u;
          *v25 = (a2 - 255);
        }

        else
        {
          *(v25 + 343) = -a2;
        }
      }

      return result;
  }
}

uint64_t sub_23BB836BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23BB83894(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB83B20);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

void sub_23BB83B48()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BB83EE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23BB83BC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23BB83CF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BB83EB8);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_23BB83EE0()
{
  if (!qword_27E1A2D28)
  {
    v0 = sub_23B975E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A2D28);
    }
  }
}

uint64_t sub_23BB83F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = *(a1 + 24);
  Description = v42[-1].Description;
  MEMORY[0x28223BE20](a1);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WrappedIntoUnaryVStack();
  v47 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  v35 = sub_23BBDA358();
  v46 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - v9;
  v10 = *(a1 + 16);
  v11 = sub_23BBDA358();
  v34 = *(v11 - 8);
  v12 = v34;
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v34 - v16;
  v17 = *(a1 + 32);
  sub_23BB10FDC(0, v10 == &type metadata for AutomaticSubscriptionOptionGroupLabel, v10, v17);
  v18 = sub_23BB50C38(&qword_27E1996A0, &qword_27E199590);
  v52[4] = v17;
  v52[5] = v18;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v14, v11, WitnessTable);
  v38 = *(v12 + 8);
  v39 = v12 + 8;
  v38(v14, v11);
  v19 = *(a1 + 52);
  v20 = v44;
  v21 = Description;
  v22 = v42;
  Description[2](v44, v2 + v19, v42);
  v23 = v40;
  (v21)[4](v40, v20, v22);
  LOBYTE(v20) = v22 == &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v24 = v41;
  v25 = swift_getWitnessTable();
  sub_23BB10FDC(1, v20, v24, v25);
  (*(v47 + 8))(v23, v24);
  v52[2] = v25;
  v52[3] = v18;
  v26 = v35;
  v27 = swift_getWitnessTable();
  v28 = v43;
  sub_23B9D2D88(v7, v26, v27);
  v29 = v46;
  v30 = *(v46 + 8);
  v30(v7, v26);
  v31 = v36;
  (*(v34 + 16))(v14, v36, v11);
  v52[0] = v14;
  (*(v29 + 16))(v7, v28, v26);
  v52[1] = v7;
  v51[0] = v11;
  v51[1] = v26;
  v49 = WitnessTable;
  v50 = v27;
  sub_23BB6739C(v52, 2, v51);
  v30(v28, v26);
  v32 = v38;
  v38(v31, v11);
  v30(v7, v26);
  return v32(v14, v11);
}

uint64_t sub_23BB844B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_23BBDC078();
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v18 = v2;
  v19 = v3;
  v20 = v1;
  sub_23B9BE15C();
  sub_23BBDC068();
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v9, v4, WitnessTable);
  v12 = *(v6 + 8);
  (v12)(v9, v4);
  v13 = OUTLINED_FUNCTION_157();
  sub_23B9D2D88(v13, v14, WitnessTable);
  v15 = OUTLINED_FUNCTION_157();
  return v12(v15);
}

uint64_t sub_23BB8462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88(v6, v9, v10);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_23BB84710()
{
  sub_23BBDDBB8();
  sub_23BBDC3C8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB8477C(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  sub_23BB8470C(v5, *v2, *(a2 + 16), *(a2 + 24));
  return sub_23BBDDBF8();
}

uint64_t sub_23BB847D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598);
  v35 = v12;
  v31 = *(a1 + 24);
  v13 = v31;
  v33 = sub_23B9B5FD8();
  v39 = v8;
  v40 = v12;
  v41 = v13;
  v42 = v33;
  v34 = sub_23BBDAEC8();
  v14 = sub_23BBDBE28();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v32 = &v29 - v19;
  (*(v9 + 16))(v11, v2 + *(a1 + 36), v8, v18);
  v20 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  (*(v4 + 16))(v6, v2, a1);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v8;
  *(v22 + 24) = v23;
  (*(v4 + 32))(v22 + v21, v6, a1);
  v24 = sub_23BB85F08(&qword_27E199610, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  sub_23BB78108(v30, sub_23BB86274, v22, v20, v8, v35, v24, v16, v23, v33);
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = v32;
  sub_23B9D2D88(v16, v14, v25);
  v27 = *(v36 + 8);
  v27(v16, v14);
  sub_23B9D2D88(v26, v14, v25);
  return (v27)(v26, v14);
}

void sub_23BB84B94(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_23BBDC318();
  v33 = v9;
  v34 = v8;
  KeyPath = swift_getKeyPath();
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199630);
  v12 = (type metadata accessor for SubscriptionStoreContentConfiguration.Section(0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23BBE7F10;
  v15 = v14 + v13;
  type metadata accessor for LeafView();
  v35 = sub_23BBDC3A8();
  type metadata accessor for LeafView.ImplicitSectionID();
  swift_getWitnessTable();
  sub_23BBDD718();
  v16 = a2;
  v29 = a2;
  v17 = *a2;
  v18 = v16[1];
  v19 = v15 + v12[8];
  v20 = type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v21 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  __swift_storeEnumTagSinglePayload(v19 + *(v21 + 20), 1, 1, v20);
  v22 = v37;
  *v15 = v36;
  *(v15 + 16) = v22;
  *(v15 + 32) = v38;
  *(v15 + 40) = v17;
  *(v15 + 48) = v18;
  sub_23B979510();

  sub_23BB7F8C4(v7, v14, 0, v10 + v11);
  v23 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v10 + v11, 0, 1, v23);
  *v10 = KeyPath;
  v24 = v30;
  v25 = v33;
  *v30 = v34;
  v24[1] = v25;
  v26 = v24;
  v27 = swift_getKeyPath();
  v28 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199598) + 36));
  sub_23B9B7294();
  *v28 = v27;
}

uint64_t sub_23BB84ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = *(a1 - 8);
  v52 = v2;
  v53 = v4;
  v54 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v49 = *(v10 + 16);
  v50 = v11;
  v12 = type metadata accessor for StoreContentAdapter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_23B9B6090();
  v59 = v12;
  v60 = v13;
  v61 = WitnessTable;
  v62 = v15;
  sub_23BBDAEC8();
  v16 = sub_23BBDBE28();
  v42 = *(a1 + 40);
  v17 = v42;
  v48 = MEMORY[0x277CE04D0];
  v58 = swift_getWitnessTable();
  v47 = MEMORY[0x277CE0FB0];
  v45 = v16;
  v43 = swift_getWitnessTable();
  v59 = v7;
  v60 = v16;
  v61 = v17;
  v62 = v43;
  v44 = sub_23BBDAEC8();
  v18 = sub_23BBDBE28();
  v46 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v25 = *(v8 + 16);
  v26 = v52;
  v27 = v52 + *(a1 + 52);
  v41 = v7;
  v25(v56, v27, v7, v22);
  v28 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  v29 = v53;
  v30 = v51;
  (*(v53 + 16))(v51, v26, a1);
  v31 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *&v33 = v49;
  *&v34 = v50;
  *(&v33 + 1) = v7;
  v35 = v42;
  *(&v34 + 1) = v42;
  *(v32 + 16) = v33;
  *(v32 + 32) = v34;
  (*(v29 + 32))(v32 + v31, v30, a1);
  v36 = sub_23BB85F08(&qword_27E199610, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  sub_23BB78108(v56, sub_23BB85ACC, v32, v28, v41, v45, v36, v20, v35, v43);
  v57 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  sub_23B9D2D88(v20, v18, v37);
  v38 = *(v46 + 8);
  v38(v20, v18);
  sub_23B9D2D88(v24, v18, v37);
  return (v38)(v24, v18);
}

uint64_t sub_23BB8533C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a4;
  v50 = a6;
  v48 = a1;
  v51 = a7;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v46 = type metadata accessor for GroupView();
  v44 = *(v46 - 8);
  v47 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = a3;
  v35 = a5;
  v13 = type metadata accessor for StoreContentAdapter();
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v36 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0);
  v40 = v16;
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v38 = sub_23B9B6090();
  v53 = v13;
  v54 = v16;
  v55 = WitnessTable;
  v56 = v38;
  v37 = sub_23BBDAEC8();
  v18 = sub_23BBDBE28();
  v45 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  sub_23BB69DD4(a3, v15);
  sub_23B979510();
  v24 = v43;
  v25 = v44;
  v26 = v46;
  (*(v44 + 16))(v43, a2, v46);
  v27 = (v12 + *(v25 + 80) + ((*(v42 + 80) + 48) & ~*(v42 + 80))) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 2) = v34;
  *(v28 + 3) = v29;
  v30 = v50;
  *(v28 + 4) = v35;
  *(v28 + 5) = v30;
  sub_23B979688();
  (*(v25 + 32))(&v28[v27], v24, v26);
  sub_23BBDBE08();
  v52 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_23B9D2D88(v20, v18, v31);
  v32 = *(v45 + 8);
  v32(v20, v18);
  sub_23B9D2D88(v23, v18, v31);
  return (v32)(v23, v18);
}

uint64_t sub_23BB857B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v12 = sub_23BBDC318();
  v19 = v13;
  v20 = v12;
  KeyPath = swift_getKeyPath();
  v14 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8) + 28);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  type metadata accessor for GroupView();
  sub_23B9B7294();
  sub_23BB801F4(a1, v21, v14 + v15);
  sub_23B9ED050(v21);
  v16 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  result = __swift_storeEnumTagSinglePayload(v14 + v15, 0, 1, v16);
  *v14 = KeyPath;
  *a6 = v20;
  a6[1] = v19;
  return result;
}

uint64_t sub_23BB85908()
{
  v2 = *(v0 + 16);
  v19 = *(v0 + 24);
  type metadata accessor for GroupView();
  OUTLINED_FUNCTION_20_1();
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  OUTLINED_FUNCTION_1_4();
  v6 = (*(v5 + 8))(v4, v2);
  v14 = OUTLINED_FUNCTION_36_5(v6, v7, v8, v9, v10, v11, v12, v13, v19);
  (*(v15 + 8))(v4 + v16, v14);
  v17 = v4 + *(v1 + 64);
  if (*(v17 + 343))
  {

    if (*(v17 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 16);
    }

    if (*(v17 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 56);
    }

    if (*(v17 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 96);
    }

    if (*(v17 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 136);
    }

    if (*(v17 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 176);
    }

    if (*(v17 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v17 + 224);
    }

    if (*(v17 + 280) >= 4uLL)
    {

      if (*(v17 + 312))
      {
      }
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB85ACC()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for GroupView();
  OUTLINED_FUNCTION_13_0(v3);
  v4 = OUTLINED_FUNCTION_45_6();

  return sub_23BB8533C(v4, v5, v6, v7, v1, v2, v8);
}

uint64_t sub_23BB85B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618) - 8);
  v4 = *(v3 + 64);
  v23 = *(v0 + 24);
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  type metadata accessor for GroupView();
  OUTLINED_FUNCTION_20_1();
  v7 = (v5 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  sub_23BBDAA98();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 8))(v0 + v5);

  OUTLINED_FUNCTION_1_4();
  v10 = (*(v9 + 8))(v0 + v7, v1);
  v18 = OUTLINED_FUNCTION_36_5(v10, v11, v12, v13, v14, v15, v16, v17, v23);
  (*(v19 + 8))(v0 + v7 + v20, v18);
  v21 = v0 + v7 + *(v2 + 64);
  if (*(v21 + 343))
  {

    if (*(v21 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v21 + 16);
    }

    if (*(v21 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v21 + 56);
    }

    if (*(v21 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(v21 + 96);
    }

    if (*(v21 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1(v21 + 136);
    }

    if (*(v21 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1(v21 + 176);
    }

    if (*(v21 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v21 + 224);
    }

    if (*(v21 + 280) >= 4uLL)
    {

      if (*(v21 + 312))
      {
      }
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB85DE8()
{
  OUTLINED_FUNCTION_15_2();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  OUTLINED_FUNCTION_25_0(v7);
  v8 = type metadata accessor for GroupView();
  OUTLINED_FUNCTION_13_0(v8);

  return sub_23BB857B8(v0, v3, v4, v5, v6, v2);
}

uint64_t sub_23BB85F08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BB85F50()
{
  result = qword_27E1A2D38[0];
  if (!qword_27E1A2D38[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A2D38);
  }

  return result;
}

uint64_t sub_23BB85FCC()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB86024()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB86080(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB860D8()
{
  v2 = *(v0 + 16);
  type metadata accessor for LeafView();
  OUTLINED_FUNCTION_20_1();
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  (*(*(v2 - 8) + 8))(v4 + *(v1 + 44), v2);
  v5 = v4 + *(v1 + 48);
  if (*(v5 + 343))
  {

    if (*(v5 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 16);
    }

    if (*(v5 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 56);
    }

    if (*(v5 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 96);
    }

    if (*(v5 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 136);
    }

    if (*(v5 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 176);
    }

    if (*(v5 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 224);
    }

    if (*(v5 + 280) >= 4uLL)
    {

      if (*(v5 + 312))
      {
      }
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_23BB86274()
{
  OUTLINED_FUNCTION_15_2();
  v0 = type metadata accessor for LeafView();
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_23_2();
  v1 = OUTLINED_FUNCTION_45_6();

  sub_23BB84B94(v1, v2, v3);
}

uint64_t sub_23BB86314()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB86350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BB8649C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BB866A0);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_23BB866C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  type metadata accessor for WrappedIntoUnaryVStack();
  sub_23BBDA358();
  OUTLINED_FUNCTION_18_1();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();

  return swift_getWitnessTable();
}

uint64_t sub_23BB86784()
{
  type metadata accessor for StoreContentAdapter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0);
  swift_getWitnessTable();
  sub_23B9B6090();
  OUTLINED_FUNCTION_44_6();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_22_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BB86894()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598);
  sub_23B9B5FD8();
  OUTLINED_FUNCTION_44_6();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_22_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_16();
  return swift_getWitnessTable();
}

uint64_t sub_23BB8698C()
{
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_58()
{
  v2 = *(v0 - 160);

  return sub_23BB86080(v2, type metadata accessor for SubscriptionStoreContentConfiguration.Context);
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return sub_23BBDB648();
}

uint64_t OUTLINED_FUNCTION_29_6(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 - 128) = result;
  *(v4 - 120) = a2;
  *(v4 - 112) = a3 & 1;
  *(v4 - 104) = a4;
  return result;
}

double OUTLINED_FUNCTION_35_8()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return type metadata accessor for SubscriptionOptionGroup.ContentStorage();
}

__n128 OUTLINED_FUNCTION_52_6@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 128);
  v3 = *(v1 - 112);
  *(a1 + 64) = *(v1 - 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_5()
{

  return sub_23BBDD718();
}

uint64_t sub_23BB86CB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBDA8B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BB86CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF68();
  return v1;
}

uint64_t sub_23BB86D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_23BB89A38(v2 + *(a1 + 56), &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23BB89AA8(v11, a2);
  }

  sub_23BBDD5A8();
  v13 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BB86F50(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(a1 + 60));
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23BB870A4(uint64_t a1)
{
  if ((sub_23BB86F50(a1) & 1) == 0)
  {
    return 0;
  }

  if (sub_23BB86CE8())
  {

    return 0;
  }

  return 1;
}

uint64_t InAppPurchaseButton.init(_:options:onTap:onCompletion:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for InAppPurchaseButton();
  v18 = (a9 + v17[13]);
  *v18 = sub_23BA0F934();
  v18[1] = v19;
  v20 = v17[14];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  swift_storeEnumTagMultiPayload();
  v21 = a9 + v17[15];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = sub_23BBDCDB8();
  result = (*(*(v22 - 8) + 32))(a9, a1, v22);
  *(a9 + v17[9]) = a2;
  v24 = (a9 + v17[10]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v17[11]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v17[12]);
  *v26 = a7;
  v26[1] = a8;
  return result;
}

uint64_t sub_23BB87270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBDA8B8();
  *a1 = result & 1;
  return result;
}

uint64_t InAppPurchaseButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = sub_23BBDBFC8();
  OUTLINED_FUNCTION_7();
  v37 = v14;
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310);
  v17 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v38 = v18;
  MEMORY[0x28223BE20](v19);
  v34 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v36 = &v34 - v23;
  (*(v6 + 16))(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v22);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  *(v25 + 24) = v12;
  (*(v6 + 32))(v25 + v24, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v40 = v11;
  v41 = v12;
  v42 = v3;
  v26 = v35;
  sub_23BBDBFA8();
  sub_23BB870A4(a1);
  OUTLINED_FUNCTION_3_44();
  WitnessTable = swift_getWitnessTable();
  v28 = v34;
  sub_23BBDBBD8();
  (*(v37 + 8))(v26, v13);
  v29 = sub_23BB88904();
  v43 = WitnessTable;
  v44 = v29;
  OUTLINED_FUNCTION_0();
  v30 = swift_getWitnessTable();
  v31 = v36;
  sub_23B9D2D88(v28, v17, v30);
  v32 = *(v38 + 8);
  v32(v28, v17);
  sub_23B9D2D88(v31, v17, v30);
  return (v32)(v31, v17);
}

uint64_t sub_23BB87624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InAppPurchaseButton();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  if (sub_23BB86CE8())
  {
  }

  else
  {
    sub_23BBDD328();
    v14 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
    (*(v7 + 16))(v9, a1, v6);
    v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = a2;
    *(v16 + 5) = a3;
    (*(v7 + 32))(&v16[v15], v9, v6);
    sub_23BB142C0();
    sub_23B9846E8(v12, &qword_27E198320);
    return sub_23BB86D3C();
  }
}

uint64_t sub_23BB8784C()
{
  type metadata accessor for InAppPurchaseButton();
  OUTLINED_FUNCTION_19_0();
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v3);

  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();

  v5 = v3 + *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v6 + 8))(v5);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_27();

  return swift_deallocObject();
}