char *sub_23857FF54(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_238758350();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v31 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v17 = (a3 + 40);
  v18 = MEMORY[0x277D84F90];
  v27 = a1;
  while (1)
  {
    v19 = *v17;
    v32[0] = *(v17 - 1);
    v32[1] = v19;

    a1(v32);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_238439884(v9, &qword_27DF0AF98, &unk_238775820);
    }

    else
    {
      v20 = v10;
      v21 = v28;
      v22 = *v29;
      (*v29)(v28, v9, v20);
      v22(v31, v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2384986AC(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_2384986AC(v23 > 1, v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v22(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v31, v20);
      v10 = v20;
      a1 = v27;
    }

    v17 += 2;
    if (!--v16)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t View.managedOrderResourceLoader(fqoid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManagedOrderResourceLoaderModifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875A710();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = &v9[*(v6 + 20)];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  MEMORY[0x23EE629E0](v9, a2, v6, a3);
  return sub_238580950(v9);
}

uint64_t sub_238580374()
{
  sub_238585BE0();

  return sub_23875CDC0();
}

uint64_t sub_2385803BC@<X0>(uint64_t *a1@<X8>)
{
  sub_238758890();
  sub_238758880();
  sub_238758870();

  v2 = sub_238758010();

  *a1 = v2;
  return result;
}

uint64_t sub_238580420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_238585C6C(&qword_27DF0EB00, sub_2384B6C9C);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2385804B4()
{
  sub_238585E00();
  sub_23875CDC0();
  return v1;
}

uint64_t sub_238580508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875CDB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875A710();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(v14, v2, v10);
  v15 = v2 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = v16;
  }

  else
  {

    sub_23875EFF0();
    v18 = sub_23875D730();
    v28 = v5;
    v19 = v18;
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384B4E98(v16, 0);
    (*(v6 + 8))(v9, v28);
    v17 = v30[0];
  }

  v20 = type metadata accessor for ManagedOrderResourceLoader(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v14, v10);
  *(v23 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context) = v17;
  v30[3] = v20;
  v30[4] = &protocol witness table for ManagedOrderResourceLoader;
  v30[0] = v23;
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA98, &qword_238770E08) + 36));
  sub_23845C998(v30, (v24 + 1));
  *v24 = KeyPath;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAA0, &unk_238770E10);
  (*(*(v25 - 8) + 16))(a2, a1, v25);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t ManagedOrderResourceLoader.__allocating_init(fqoid:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v9 = sub_23875A710();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context) = a2;
  return v7;
}

uint64_t sub_2385808A4@<X0>(void *a1@<X8>)
{
  sub_238585E00();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2385808F4(void **a1)
{
  v1 = *a1;
  sub_238585E00();
  v2 = v1;
  return sub_23875CDD0();
}

uint64_t sub_238580950(uint64_t a1)
{
  v2 = type metadata accessor for ManagedOrderResourceLoaderModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2385809B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238580A3C;

  return sub_2385850CC();
}

uint64_t sub_238580A3C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_238580B3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238586094;

  return sub_238585290();
}

uint64_t sub_238580BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238586094;

  return sub_238585010();
}

uint64_t ManagedOrderResourceLoader.init(fqoid:context:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v6 = sub_23875A710();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context) = a2;
  return v2;
}

uint64_t ManagedOrderResourceLoader.loadImagesNamed(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23875F130();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_23875A710();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238580DF8, 0, 0);
}

uint64_t sub_238580DF8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[4];
  v16 = v0[3];
  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context);
  v17 = v0[5];
  v18 = v0[7];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[12] = v10;
  (*(v4 + 32))(v10 + v8, v2, v3);
  *(v10 + v9) = v7;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  (*(v5 + 104))(v18, *MEMORY[0x277CBE110], v17);
  v11 = *(MEMORY[0x277CBE118] + 4);
  v7;

  v12 = swift_task_alloc();
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA60, &qword_238770B80);
  *v12 = v0;
  v12[1] = sub_238580FD0;
  v14 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v14, sub_238581624, v10, v13);
}

uint64_t sub_238580FD0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_2385811DC;
  }

  else
  {
    v7 = sub_238581164;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_238581164()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2385811DC()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

void sub_23858124C(void *a1@<X8>)
{
  v3 = sub_238758350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  sub_238757DF0();
  v11 = sub_238757D50();
  if (v1)
  {
    return;
  }

  if (!v11)
  {
    *a1 = 0;
    return;
  }

  v33 = v11;
  v34 = 0;
  v12 = [v11 ecommerceOrderContent];
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [objc_opt_self() preferredLanguages];
  sub_23875EC80();

  v15 = v34;
  v16 = sub_23875A560();
  v34 = v15;
  v17 = v13;
  if (v15)
  {

    return;
  }

  v18 = v16;

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v18;
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v20 = v18;
  if (!sub_23875F3A0())
  {
LABEL_24:

LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  v19 = sub_23875F3A0();
  if (!v19)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_26:
    *a1 = v29;
    return;
  }

LABEL_9:
  v35 = v20;
  v36 = MEMORY[0x277D84F90];
  sub_2385FE810(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    v31 = v17;
    v32 = a1;
    v21 = v36;
    if ((v35 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        MEMORY[0x23EE63F70](i, v35);
        sub_238758340();
        v36 = v21;
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2385FE810(v23 > 1, v24 + 1, 1);
          v21 = v36;
        }

        *(v21 + 16) = v24 + 1;
        (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v10, v3);
      }
    }

    else
    {
      v25 = 32;
      do
      {
        v26 = *(v35 + v25);
        sub_238758340();
        v36 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2385FE810(v27 > 1, v28 + 1, 1);
          v21 = v36;
        }

        *(v21 + 16) = v28 + 1;
        (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v7, v3);
        v25 += 8;
        --v19;
      }

      while (v19);
    }

    *v32 = v21;
  }
}

void sub_238581624(void *a1@<X8>)
{
  v3 = *(sub_23875A710() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_23858124C(a1);
}

uint64_t ManagedOrderResourceLoader.loadReceiptNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875F130();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23875A710();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v3[11] = *(v8 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385817F0, 0, 0);
}

uint64_t sub_2385817F0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v19 = v0[6];
  v20 = v0[8];
  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context);
  v17 = v0[3];
  v18 = v0[4];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[13] = v10;
  (*(v4 + 32))(v10 + v8, v2, v3);
  *(v10 + v9) = v7;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v17;
  v11[1] = v18;
  (*(v5 + 104))(v20, *MEMORY[0x277CBE110], v19);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v7;

  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB0, &qword_238766040);
  *v13 = v0;
  v13[1] = sub_2385819CC;
  v15 = v0[8];

  return MEMORY[0x28210EE50](v0 + 2, v15, sub_238581C48, v10, v14);
}

uint64_t sub_2385819CC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_238581BD8;
  }

  else
  {
    v7 = sub_238581B60;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_238581B60()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_238581BD8()
{
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t ManagedOrderResourceLoader.loadReturnLabelNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875F130();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23875A710();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v3[11] = *(v8 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238581DB0, 0, 0);
}

uint64_t sub_238581DB0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v19 = v0[6];
  v20 = v0[8];
  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_context);
  v17 = v0[3];
  v18 = v0[4];
  (*(v4 + 16))(v2, v6 + OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[13] = v10;
  (*(v4 + 32))(v10 + v8, v2, v3);
  *(v10 + v9) = v7;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v17;
  v11[1] = v18;
  (*(v5 + 104))(v20, *MEMORY[0x277CBE110], v19);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v7;

  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E6C8, &qword_238770BA0);
  *v13 = v0;
  v13[1] = sub_238581F8C;
  v15 = v0[8];

  return MEMORY[0x28210EE50](v0 + 2, v15, sub_2385823F0, v10, v14);
}

uint64_t sub_238581F8C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_23858608C;
  }

  else
  {
    v7 = sub_238586090;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_238582120(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  sub_238757DF0();
  v11 = sub_238757D50();
  if (v5)
  {
    return;
  }

  if (!v11)
  {
LABEL_6:
    *a5 = 0;
    return;
  }

  v32 = v11;
  v12 = [v11 ecommerceOrderContent];
  if (!v12)
  {

    goto LABEL_6;
  }

  v13 = v12;
  v14 = [objc_opt_self() preferredLanguages];
  v15 = sub_23875EC80();

  v16 = a3(a1, a2, v15);

  if (v16)
  {
    v17 = [v16 mimeType];
    if (v17)
    {
      v18 = v17;
      v19 = sub_23875EA80();
      v30 = v20;
      v31 = v19;

      v21 = [v16 data];
      v22 = sub_23875B990();
      v29 = v23;

      v24 = [v16 name];
      v25 = sub_23875EA80();
      v27 = v26;

      v28 = a4(v22, v29, v31, v30, v25, v27);
      *a5 = v28;
      return;
    }
  }

  *a5 = 0;
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

void sub_238582430(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_23875A710() - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  sub_238582120(*(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a1, a2, a3);
}

uint64_t ManagedOrderResourceLoader.deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v2 = sub_23875A710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ManagedOrderResourceLoader.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI26ManagedOrderResourceLoader_fqoid;
  v2 = sub_23875A710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23858260C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return ManagedOrderResourceLoader.loadImagesNamed(_:)(a1);
}

uint64_t sub_2385826A4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238586094;

  return ManagedOrderResourceLoader.loadReceiptNamed(_:)(a1, a2);
}

uint64_t sub_23858274C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238586094;

  return ManagedOrderResourceLoader.loadReturnLabelNamed(_:)(a1, a2);
}

uint64_t OrderBundleResourceLoader.__allocating_init(orderBundle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OrderBundleResourceLoader.loadImagesNamed(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_23858287C, 0, 0);
}

uint64_t sub_23858287C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v0[4] + 16);
  v4 = sub_238757C00();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA60, &qword_238770B80);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v1;
  v8 = *(MEMORY[0x277D859B8] + 4);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_2385829B8;

  return MEMORY[0x282200740](v0 + 2, v5, v6, 0, 0, &unk_238770BC0, v7, v5);
}

uint64_t sub_2385829B8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_238582B3C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_238582AD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238582AD4()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_238582B3C()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_238582BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_238758350();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAB0, &qword_238770E28) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0);
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v12 = *(v11 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAB8, &unk_238770E30);
  v5[23] = v13;
  v14 = *(v13 - 8);
  v5[24] = v14;
  v15 = *(v14 + 64) + 15;
  v5[25] = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820) - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238582E68, 0, 0);
}

uint64_t sub_238582E68()
{
  v1 = 0;
  v37 = (v0 + 16);
  v2 = *(v0 + 88);
  v39 = *(v2 + 16);
  v3 = (v2 + 40);
  while (v39 != v1)
  {
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *v3;
    v40 = v9;
    v41 = *(v3 - 1);
    v43 = v3;
    v12 = sub_23875ED80();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v7, 1, 1, v12);
    v14 = swift_allocObject();
    v14[2] = 0;
    v15 = v14 + 2;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v41;
    v14[6] = v11;
    v42 = v1;
    v14[7] = v1;
    v14[8] = v40;
    sub_23843981C(v7, v8, &unk_27DF09920, &qword_238764D80);
    LODWORD(v7) = (*(v13 + 48))(v8, 1, v12);
    v0 = v38;

    v16 = *(v38 + 256);
    if (v7 == 1)
    {
      sub_238439884(*(v38 + 256), &unk_27DF09920, &qword_238764D80);
    }

    else
    {
      sub_23875ED70();
      (*(v13 + 8))(v16, v12);
    }

    if (*v15)
    {
      v17 = v14[3];
      v18 = *v15;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_23875ECE0();
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = **(v38 + 80);

    if (v21 | v19)
    {
      v4 = v37;
      *v37 = 0;
      v37[1] = 0;
      *(v38 + 32) = v19;
      *(v38 + 40) = v21;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v38 + 264);
    v6 = *(v38 + 152);
    *(v38 + 48) = 1;
    *(v38 + 56) = v4;
    *(v38 + 64) = v22;
    swift_task_create();

    sub_238439884(v5, &unk_27DF09920, &qword_238764D80);
    ++v1;
    v3 = v43 + 2;
    if (__OFADD__(v42 + 1, 1))
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  v23 = *(v0 + 248);
  v24 = *(v0 + 200);
  v25 = *(v0 + 152);
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = **(v0 + 80);
  v29 = *(v27 + 56);
  *(v0 + 272) = v29;
  *(v0 + 280) = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v29(v23, 1, 1, v26);
  v5 = sub_238583FDC(v23, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  sub_23875EE10();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

LABEL_18:
  v5 = sub_23852F118(v5);
LABEL_14:
  *(v0 + 288) = v5;
  v30 = sub_23843A3E8(&qword_27DF0EAC0, &qword_27DF0EAB8, &unk_238770E30);
  v31 = *(MEMORY[0x277D856D0] + 4);
  v32 = swift_task_alloc();
  *(v0 + 296) = v32;
  *v32 = v0;
  v32[1] = sub_23858327C;
  v33 = *(v0 + 200);
  v34 = *(v0 + 184);
  v35 = *(v0 + 144);

  return MEMORY[0x282200308](v35, v34, v30);
}

uint64_t sub_23858327C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[36];
    (*(v2[24] + 8))(v2[25], v2[23]);

    v5 = sub_238583970;
  }

  else
  {
    v5 = sub_2385833B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2385833B4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v2, 1, v1) != 1)
  {
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 120);
    v59 = *(v0 + 112);
    sub_2384396E4(v2, v20, &qword_27DF0EA68, &qword_238770BB0);
    sub_23843981C(v20, v21, &qword_27DF0EA68, &qword_238770BB0);
    v23 = *v21;
    sub_2384396E4(v21 + *(v1 + 48), v18, &qword_27DF0AF98, &unk_238775820);
    sub_23843981C(v18, v19, &qword_27DF0AF98, &unk_238775820);
    if ((*(v22 + 48))(v19, 1, v59) == 1)
    {
      v24 = *(v0 + 232);
      v25 = *(v0 + 176);
      sub_238439884(*(v0 + 240), &qword_27DF0AF98, &unk_238775820);
      sub_238439884(v25, &qword_27DF0EA68, &qword_238770BB0);
      sub_238439884(v24, &qword_27DF0AF98, &unk_238775820);
      goto LABEL_22;
    }

    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v40 = *(v0 + 240);
    v41 = *(v0 + 248);
    v42 = *(v0 + 176);
    v43 = *(v0 + 136);
    v44 = *(v0 + 112);
    v45 = *(v0 + 120);
    (*(v45 + 32))(v43, *(v0 + 232), v44);
    (*(v45 + 16))(v41, v43, v44);
    v39(v41, 0, 1, v44);
    (*(v45 + 8))(v43, v44);
    sub_238439884(v40, &qword_27DF0AF98, &unk_238775820);
    v46 = sub_238439884(v42, &qword_27DF0EA68, &qword_238770BB0);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v49 = *(v0 + 288);
      if (v23 < *(v49 + 16))
      {
        sub_238585D90(*(v0 + 248), v49 + ((*(*(v0 + 208) + 80) + 32) & ~*(*(v0 + 208) + 80)) + *(*(v0 + 208) + 72) * v23);
LABEL_22:
        v50 = sub_23843A3E8(&qword_27DF0EAC0, &qword_27DF0EAB8, &unk_238770E30);
        v51 = *(MEMORY[0x277D856D0] + 4);
        v52 = swift_task_alloc();
        *(v0 + 296) = v52;
        *v52 = v0;
        v52[1] = sub_23858327C;
        v53 = *(v0 + 200);
        v47 = *(v0 + 184);
        v46 = *(v0 + 144);
        v48 = v50;

        return MEMORY[0x282200308](v46, v47, v48);
      }
    }

    __break(1u);
    return MEMORY[0x282200308](v46, v47, v48);
  }

  v3 = *(v0 + 288);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  sub_238439884(v2, &qword_27DF0EAB0, &qword_238770E28);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 120);
    v7 = *(v0 + 288) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v56 = v6;
    v58 = *(v5 + 72);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v10 = *(v0 + 216);
      v9 = *(v0 + 224);
      v11 = *(v0 + 112);
      v12 = *(v0 + 120);
      sub_23843981C(v7, v9, &qword_27DF0AF98, &unk_238775820);
      sub_2384396E4(v9, v10, &qword_27DF0AF98, &unk_238775820);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_238439884(*(v0 + 216), &qword_27DF0AF98, &unk_238775820);
      }

      else
      {
        v13 = *(*(v0 + 120) + 32);
        v13(*(v0 + 128), *(v0 + 216), *(v0 + 112));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2384986AC(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = sub_2384986AC(v14 > 1, v15 + 1, 1, v8);
        }

        v16 = *(v0 + 128);
        v17 = *(v0 + 112);
        *(v8 + 2) = v15 + 1;
        v13(&v8[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v15], v16, v17);
      }

      v7 += v58;
      --v4;
    }

    while (v4);
    v26 = *(v0 + 288);

    if (*(v8 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_16:
  v28 = *(v0 + 256);
  v27 = *(v0 + 264);
  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v32 = *(v0 + 224);
  v31 = *(v0 + 232);
  v33 = *(v0 + 216);
  v34 = *(v0 + 200);
  v35 = *(v0 + 176);
  v54 = *(v0 + 168);
  v55 = *(v0 + 144);
  v57 = *(v0 + 136);
  v60 = *(v0 + 128);
  **(v0 + 72) = v8;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_238583970()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[16];

  v11 = v0[1];
  v12 = v0[38];

  return v11();
}

uint64_t sub_238583A78(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238449A7C;

  return sub_238582BA8(a1, a2, v6, v7, v8);
}

uint64_t sub_238583B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_238758350();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = sub_23875B940();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238583C98, 0, 0);
}

uint64_t sub_238583C98()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_2387588A0();
  sub_2387591A0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[6];
    v8 = v0[2];
    sub_238439884(v0[10], &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    sub_238585454();
    if ((v9 & 1) == 0)
    {
      v17 = sub_23875B960();
      v19 = v18;
      v20 = objc_allocWithZone(MEMORY[0x277CBF758]);
      sub_23844C8EC(v17, v19);
      v21 = sub_23875B980();
      v22 = [v20 initWithData_];

      sub_23844C954(v17, v19);
      v23 = v0[9];
      if (v22)
      {
        sub_2386D0DB8(MEMORY[0x277D84F90]);
        sub_238758030();

        sub_238758320();
      }

      else
      {
        v24 = v0[9];
        sub_238758320();
      }

      v26 = v0[8];
      v25 = v0[9];
      v28 = v0[6];
      v27 = v0[7];
      v29 = v0[2];
      (*(v0[12] + 8))(v0[13], v0[11]);
      v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0) + 48);
      *v29 = v28;
      (*(v26 + 32))(v30, v25, v27);
      v10 = v30;
      v11 = 0;
      goto LABEL_6;
    }

    v7 = v0[6];
    v8 = v0[2];
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA68, &qword_238770BB0) + 48);
  *v8 = v7;
  v11 = 1;
LABEL_6:
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];
  (*(v0[8] + 56))(v10, v11, 1, v0[7]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_238583FDC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
      v4 = sub_23875ECA0();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_23843981C(v3, v4 + v6, &qword_27DF0AF98, &unk_238775820);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_23843981C(v3, v9, &qword_27DF0AF98, &unk_238775820);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_238439884(v3, &qword_27DF0AF98, &unk_238775820);
    return v4;
  }

  return result;
}

uint64_t OrderBundleResourceLoader.loadReceiptNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_23875B940();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23858421C, 0, 0);
}

uint64_t sub_23858421C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0[4] + 16);
  sub_238757C00();
  sub_238759180();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[5];

    sub_238439884(v7, &qword_27DF0D040, &qword_2387676A0);
    v8 = 0;
  }

  else
  {
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    (*(v12 + 32))(v10, v0[5], v11);
    (*(v12 + 16))(v9, v10, v11);
    v8 = _s12FinanceKitUI12OrderReceiptC7fileUrlACSg10Foundation3URLV_tcfC_0(v9);

    (*(v12 + 8))(v10, v11);
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[5];

  v16 = v0[1];

  return v16(v8);
}

uint64_t OrderBundleResourceLoader.loadReturnLabelNamed(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_23875B940();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385844A8, 0, 0);
}

uint64_t sub_2385844A8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0[4] + 16);
  sub_238757C00();
  sub_238759190();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[5];

    sub_238439884(v7, &qword_27DF0D040, &qword_2387676A0);
    v8 = 0;
  }

  else
  {
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    (*(v12 + 32))(v10, v0[5], v11);
    (*(v12 + 16))(v9, v10, v11);
    v8 = _s12FinanceKitUI16OrderReturnLabelC7fileUrlACSg10Foundation3URLV_tcfC_0(v9);

    (*(v12 + 8))(v10, v11);
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[5];

  v16 = v0[1];

  return v16(v8);
}

uint64_t OrderBundleResourceLoader.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OrderBundleResourceLoader.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_238584684(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238586094;

  return OrderBundleResourceLoader.loadImagesNamed(_:)(a1);
}

uint64_t sub_23858471C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238586094;

  return OrderBundleResourceLoader.loadReceiptNamed(_:)(a1, a2);
}

uint64_t sub_2385847C4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238586094;

  return OrderBundleResourceLoader.loadReturnLabelNamed(_:)(a1, a2);
}

Swift::String __swiftcall OrderBundleResourceLoader.localizedString(forKey:)(Swift::String forKey)
{
  v2 = *(v1 + 16);
  v3 = sub_238757BD0();
  v4 = sub_2387586A0();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_2385848FC()
{
  v1 = *(*v0 + 16);
  v2 = sub_238757BD0();
  v3 = sub_2387586A0();

  return v3;
}

uint64_t sub_238584970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_23875E720();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875E690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = sub_23875E630();
  if (*(v17 + 16) && (v18 = sub_23853B46C(v16, v15), (v19 & 1) != 0))
  {
    (*(v8 + 16))(v11, *(v17 + 56) + *(v8 + 72) * v18, v7);

    (*(v8 + 32))(v14, v11, v7);
    sub_23875E680();
    sub_23875E710();
    (*(v24 + 8))(v6, v3);
    v20 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = v14;
    sub_238758350();
    sub_23875E5F0();
    __swift_destroy_boxed_opaque_existential_1(v26);
    return (*(v8 + 8))(v14, v7);
  }

  else
  {

    v22 = sub_238758350();
    return (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
  }
}

uint64_t sub_238584C70@<X0>(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EAA8, &qword_238770E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_23875EF50();
  if (v8 >> 60 == 15)
  {
    v9 = sub_238758350();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    sub_23875E670();
    v11 = sub_23875E700();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_238439884(v7, &qword_27DF0EAA8, &qword_238770E20);
    }

    else
    {
      sub_23875E6F0();
      (*(v12 + 8))(v7, v11);
    }

    sub_238758320();
    v13 = sub_238758350();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_238584E80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238584EA0, 0, 0);
}

uint64_t sub_238584EA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_23857FF54(sub_238585C34, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_238584F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875E640();
  if (*(v4 + 16) && (v5 = sub_23853B46C(a1, a2), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    a1 = *v7;
    v8 = v7[1];
  }

  else
  {
  }

  return a1;
}

uint64_t sub_238585010()
{
  v1 = sub_23875C1E0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238586084, 0, 0);
}

uint64_t sub_2385850CC()
{
  v1 = sub_23875C1E0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238585188, 0, 0);
}

uint64_t sub_238585188()
{
  v1 = v0[4];
  sub_23875C180();
  v2 = sub_23875C1B0();
  v3 = sub_23875EFE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2383F8000, v2, v3, "Image loader was not provided. NoopResourceLoader was used", v4, 2u);
    MEMORY[0x23EE64DF0](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_238585290()
{
  v1 = sub_23875C1E0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23858534C, 0, 0);
}

uint64_t sub_23858534C()
{
  v1 = v0[4];
  sub_23875C180();
  v2 = sub_23875C1B0();
  v3 = sub_23875EFE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2383F8000, v2, v3, "Resource loader was not provided. NoopResourceLoader was used", v4, 2u);
    MEMORY[0x23EE64DF0](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_238585454()
{
  v0 = sub_23875B860();
  v1 = CGImageSourceCreateWithURL(v0, 0);

  if (v1)
  {
    v2 = CGImageSourceCopyPropertiesAtIndex(v1, 0, 0);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v5 = 0;
        type metadata accessor for CFString(0);
        sub_238585C6C(&qword_27DF08FE0, type metadata accessor for CFString);
        sub_23875E920();
      }
    }
  }

  return 0;
}

uint64_t dispatch thunk of OrderResourceLoader.loadImagesNamed(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2384617DC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of OrderResourceLoader.loadReceiptNamed(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_238586088;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of OrderResourceLoader.loadReturnLabelNamed(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_238586088;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_238585A00()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_238585B40()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    sub_23853C1AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_238585BE0()
{
  result = qword_27DF0EA90;
  if (!qword_27DF0EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EA90);
  }

  return result;
}

uint64_t sub_238585C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238585CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2384494A4;

  return sub_238583B3C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_238585D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_238585E00()
{
  result = qword_27DF0EAC8;
  if (!qword_27DF0EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EAC8);
  }

  return result;
}

uint64_t sub_238585EBC()
{
  result = sub_23875E6A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238585F28()
{
  result = qword_27DF0EAE0;
  if (!qword_27DF0EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA98, &qword_238770E08);
    sub_23843A3E8(&qword_27DF0EAE8, &qword_27DF0EAA0, &unk_238770E10);
    sub_23843A3E8(&qword_27DF0EAF0, &qword_27DF0EAF8, &qword_23877FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EAE0);
  }

  return result;
}

uint64_t sub_23858600C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238586104()
{
  result = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238586198()
{
  sub_23875B290();
  if (v0 <= 0x3F)
  {
    sub_2385862B4();
    if (v1 <= 0x3F)
    {
      sub_23858631C(319, &qword_27DF0EB50, MEMORY[0x277CC84E0]);
      if (v2 <= 0x3F)
      {
        sub_23858631C(319, &qword_27DF0EB58, MEMORY[0x277CC8578]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MerchantImage.ViewModel(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2385862B4()
{
  if (!qword_27DF0EB40)
  {
    sub_238449184(255, &qword_27DF0EB48, 0x277CBDB78);
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0EB40);
    }
  }
}

void sub_23858631C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23858638C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v140 = a4;
  v141 = a3;
  v144 = a1;
  v5 = sub_2387588F0();
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  MEMORY[0x28223BE20](v5);
  v120 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB60, &unk_238771050);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v132 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v138 = &v111 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D640, &unk_23876D6E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v135 = &v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v130 = &v111 - v20;
  v129 = sub_238757AA0();
  v128 = *(v129 - 8);
  v21 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v117 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v118 = &v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D8, &qword_238771650);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v123 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v126 = &v111 - v29;
  v137 = sub_238757CC0();
  v143 = *(v137 - 8);
  v30 = *(v143 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB68, &qword_238771060);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v111 - v34;
  v36 = sub_2387586B0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v122 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v142 = &v111 - v41;
  v42 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v139 = *(v42 - 8);
  v43 = *(v139 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v111 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v46 + 28);
  v48 = sub_23875AEB0();
  (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
  v49 = *(v42 + 32);
  v50 = sub_23875B1D0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v127 = v50;
  v125 = v52;
  v124 = v51 + 56;
  (v52)(v45 + v49, 1, 1);
  sub_238759CF0();
  v53 = v37;
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v54 = sub_238759D10();
    (*(*(v54 - 8) + 8))(a2, v54);
    v55 = sub_238759B60();
    (*(*(v55 - 8) + 8))(v144, v55);
    sub_238439884(v35, &qword_27DF0EB68, &qword_238771060);
    __swift_destroy_boxed_opaque_existential_1(v141);
    sub_238439884(v45 + v47, &qword_27DF0D5D0, &unk_238770FE0);
    sub_238439884(v45 + v49, &qword_27DF0D640, &unk_23876D6E0);
    return (*(v139 + 56))(v140, 1, 1, v42);
  }

  else
  {
    v112 = v47;
    v115 = v49;
    v57 = *(v37 + 32);
    v131 = v36;
    v57(v142, v35, v36);
    v58 = v141;
    v60 = v141[3];
    v59 = v141[4];
    v121 = a2;
    __swift_project_boxed_opaque_existential_1(v141, v60);
    v61 = v136;
    sub_238759B30();
    sub_238757C60();
    v62 = *(v143 + 8);
    v143 += 8;
    v111 = v62;
    v62(v61, v137);
    v114 = sub_23875A360();
    v113 = v63;

    v64 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    sub_238759C80();
    v65 = v121;
    v66 = sub_23875A360();
    v68 = v67;

    *v45 = v66;
    v45[1] = v68;
    v116 = v53;
    (*(v53 + 16))(v122, v142, v131);
    sub_23845C998(v58, v145);
    v69 = v42;
    v70 = v45 + *(v42 + 20);
    sub_23875B2A0();
    v71 = v126;
    sub_238759CE0();
    v72 = v123;
    sub_23843981C(v71, v123, &qword_27DF0D5D8, &qword_238771650);
    v73 = v128;
    v74 = v129;
    v75 = v45;
    if ((*(v128 + 48))(v72, 1, v129) == 1)
    {
      sub_238439884(v71, &qword_27DF0D5D8, &qword_238771650);
      v76 = 0;
      v77 = v144;
      v79 = v133;
      v78 = v134;
    }

    else
    {
      v80 = v118;
      (*(v73 + 32))(v118, v72, v74);
      sub_238449184(0, &qword_27DF0D608, 0x277CBDB60);
      (*(v73 + 16))(v117, v80, v74);
      v76 = sub_23875F0F0();
      v81 = sub_23875F020();

      (*(v73 + 8))(v80, v74);
      sub_238439884(v71, &qword_27DF0D5D8, &qword_238771650);
      v79 = v133;
      if (v81)
      {

        v76 = 0;
      }

      v77 = v144;
      v78 = v134;
    }

    v82 = v69;
    v83 = v112;
    *(v75 + v69[6]) = v76;
    v84 = v130;
    sub_238759C90();
    sub_2385309FC(v84, v75 + v83, &qword_27DF0D5D0, &unk_238770FE0);
    v85 = v138;
    sub_238759B20();
    v86 = v85;
    v87 = v132;
    sub_23843981C(v86, v132, &qword_27DF0EB60, &unk_238771050);
    v88 = 1;
    if ((*(v79 + 48))(v87, 1, v78) != 1)
    {
      v89 = v87;
      v90 = v119;
      (*(v79 + 32))(v119, v89, v78);
      (*(v79 + 16))(v120, v90, v78);
      sub_23875B1E0();
      (*(v79 + 8))(v90, v78);
      v88 = 0;
    }

    sub_238439884(v138, &qword_27DF0EB60, &unk_238771050);
    v91 = v135;
    v125(v135, v88, 1, v127);
    sub_2385309FC(v91, v75 + v115, &qword_27DF0D640, &unk_23876D6E0);
    v92 = (v75 + v82[9]);
    v93 = v114;
    v94 = v113;
    *v92 = v114;
    v92[1] = v94;

    v95 = sub_238759CB0();
    v96 = (v75 + v82[10]);
    *v96 = v95;
    v96[1] = v97;
    v98 = v136;
    sub_238759B30();
    v99 = sub_238757CB0();
    v101 = v100;
    v111(v98, v137);
    v102 = v65;
    v103 = (v75 + v82[11]);
    v104 = v77;
    v105 = type metadata accessor for MerchantImage.ViewModel(0);
    v106 = v103 + *(v105 + 20);
    sub_238759AB0();
    v107 = sub_238759D10();
    (*(*(v107 - 8) + 8))(v102, v107);
    v108 = sub_238759B60();
    (*(*(v108 - 8) + 8))(v104, v108);
    (*(v116 + 8))(v142, v131);
    *v103 = v99;
    v103[1] = v101;
    v109 = (v103 + *(v105 + 24));
    *v109 = v93;
    v109[1] = v94;
    v110 = v140;
    sub_23858A2F0(v75, v140, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
    (*(v139 + 56))(v110, 0, 1, v82);
    __swift_destroy_boxed_opaque_existential_1(v141);
    return sub_23858A464(v75, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
  }
}

uint64_t sub_23858706C()
{
  v1 = *v0;
  v6 = *v0;
  v7 = v0[1];
  v2 = *(v0 + *(type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0) + 24));

  if (v2)
  {
    v3 = v2;
    v4 = sub_23875F010();
    MEMORY[0x23EE63650](v4);

    MEMORY[0x23EE63650](10, 0xE100000000000000);

    return v6;
  }

  return v1;
}

uint64_t sub_238587120()
{
  v0 = sub_23875BE40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BE20();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BD20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387595E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = sub_238759120();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v32);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875AEA0();
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - v21;
  v23 = sub_23875AEB0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  sub_23843981C(v38 + *(v28 + 28), v22, &qword_27DF0D5D0, &unk_238770FE0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_238439884(v22, &qword_27DF0D5D0, &unk_238770FE0);
    return 0;
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    (*(v11 + 104))(v14, *MEMORY[0x277CC7748], v32);
    sub_23875BCC0();
    sub_23875BDB0();
    sub_23875BE30();
    sub_2387595B0();
    sub_23875AE80();
    sub_23858A41C(&qword_27DF0EC38, MEMORY[0x277CC84D8]);
    v30 = v34;
    sub_238759950();
    (*(v33 + 8))(v18, v30);
    (*(v24 + 8))(v27, v23);
    return v39;
  }
}

uint64_t sub_2385875C4@<X0>(uint64_t a1@<X8>)
{
  sub_23858A2F0(v1, a1, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
  v3 = *(type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E8, &qword_23876A230);

  return swift_storeEnumTagMultiPayload();
}

double sub_238587670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D030();
  *(a2 + 8) = 0x4038000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBE8, &qword_238771170);
  sub_2385877D0(a1, a2 + *(v4 + 44));
  v5 = sub_23875D770();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBB8, &qword_238771140) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_23875D7A0();

  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBA0, &qword_238771138) + 36);
  *v16 = v15;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  return result;
}

uint64_t sub_2385877D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v113 = type metadata accessor for BarcodeView(0);
  v3 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v110 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBF0, &qword_238771178);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBF8, &qword_238771180);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v114 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v117 = (&v107 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D640, &unk_23876D6E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v107 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC00, &qword_238771188);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v122 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = &v107 - v24;
  MEMORY[0x28223BE20](v25);
  v119 = &v107 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v107 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC08, &qword_238771190);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v120 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v107 - v34;
  sub_23875ED50();
  v112 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v35 = sub_23875D020();
  *(v35 + 1) = 0x4034000000000000;
  v35[16] = 0;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC10, &qword_238771198) + 44);
  v118 = v35;
  sub_2385889C4(a1, &v35[v36]);
  v109 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  sub_23843981C(a1 + *(v109 + 32), v19, &qword_27DF0D640, &unk_23876D6E0);
  v37 = sub_23875B1D0();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v19, 1, v37) == 1)
  {
    sub_238439884(v19, &qword_27DF0D640, &unk_23876D6E0);
LABEL_9:
    v54 = 1;
    goto LABEL_10;
  }

  v39 = sub_23875B1C0();
  v41 = v40;
  (*(v38 + 8))(v19, v37);
  if (!v41)
  {
    goto LABEL_9;
  }

  v42 = v10;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v43 = qword_2814F1B90;
  v44 = sub_23875EA50();
  v45 = sub_23875EA50();
  v46 = sub_23875EA50();
  v47 = [v43 localizedStringForKey:v44 value:v45 table:v46];

  v48 = sub_23875EA80();
  v50 = v49;

  v51 = sub_23875D030();
  v52 = v117;
  *v117 = v51;
  *(v52 + 8) = 0;
  *(v52 + 16) = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
  sub_238589980(v48, v50, v39, v41, v52 + *(v53 + 44));

  sub_23858A4C4(v52, v29);
  v54 = 0;
  v10 = v42;
LABEL_10:
  v55 = *(v11 + 56);
  v56 = 1;
  v57 = v10;
  v55(v29, v54, 1, v10);
  v111 = a1;
  v58 = sub_238587120();
  if (v59)
  {
    v60 = v58;
    v61 = v59;
    v62 = v29;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v63 = qword_2814F1B90;
    v64 = sub_23875EA50();
    v65 = sub_23875EA50();
    v66 = sub_23875EA50();
    v67 = [v63 localizedStringForKey:v64 value:v65 table:v66];

    v68 = sub_23875EA80();
    v70 = v69;

    v71 = sub_23875D030();
    v72 = v117;
    *v117 = v71;
    *(v72 + 8) = 0;
    *(v72 + 16) = 1;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
    sub_238589980(v68, v70, v60, v61, v72 + *(v73 + 44));

    v74 = v119;
    sub_23858A4C4(v72, v119);
    v56 = 0;
  }

  else
  {
    v62 = v29;
    v74 = v119;
  }

  v55(v74, v56, 1, v57);
  v75 = v74;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v76 = qword_2814F1B90;
  v77 = sub_23875EA50();
  v78 = sub_23875EA50();
  v79 = sub_23875EA50();
  v80 = [v76 localizedStringForKey:v77 value:v78 table:v79];

  v81 = sub_23875EA80();
  v83 = v82;

  v84 = v111;
  v85 = sub_23858706C();
  v87 = v86;
  v88 = sub_23875D030();
  v89 = v117;
  *v117 = v88;
  *(v89 + 8) = 0;
  *(v89 + 16) = 1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
  sub_238589980(v81, v83, v85, v87, v89 + *(v90 + 44));

  v91 = *(v109 + 20);
  v92 = sub_23875B290();
  v93 = v110;
  (*(*(v92 - 8) + 16))(v110, v84 + v91, v92);
  v94 = v113;
  *(v93 + *(v113 + 20)) = 0;
  v95 = *(v94 + 24);
  v124 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *(v93 + v95) = v125;
  sub_23858A41C(&qword_27DF0EC20, type metadata accessor for BarcodeView);
  v96 = v123;
  sub_23875DE00();
  sub_23858A464(v93, type metadata accessor for BarcodeView);
  v97 = v120;
  sub_23843981C(v118, v120, &qword_27DF0EC08, &qword_238771190);
  v108 = v62;
  v98 = v121;
  sub_23843981C(v62, v121, &qword_27DF0EC00, &qword_238771188);
  sub_23843981C(v75, v122, &qword_27DF0EC00, &qword_238771188);
  v99 = v114;
  sub_23843981C(v89, v114, &qword_27DF0EBF8, &qword_238771180);
  v100 = v115;
  sub_23843981C(v96, v115, &qword_27DF0EBF0, &qword_238771178);
  v101 = v116;
  sub_23843981C(v97, v116, &qword_27DF0EC08, &qword_238771190);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC28, &unk_2387711B0);
  sub_23843981C(v98, v101 + v102[12], &qword_27DF0EC00, &qword_238771188);
  v103 = v122;
  sub_23843981C(v122, v101 + v102[16], &qword_27DF0EC00, &qword_238771188);
  sub_23843981C(v99, v101 + v102[20], &qword_27DF0EBF8, &qword_238771180);
  v104 = v101 + v102[24];
  *v104 = 0x4038000000000000;
  *(v104 + 8) = 0;
  sub_23843981C(v100, v101 + v102[28], &qword_27DF0EBF0, &qword_238771178);
  v105 = v101 + v102[32];
  *v105 = 0x4038000000000000;
  *(v105 + 8) = 0;
  sub_238439884(v123, &qword_27DF0EBF0, &qword_238771178);
  sub_238439884(v89, &qword_27DF0EBF8, &qword_238771180);
  sub_238439884(v119, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v108, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v118, &qword_27DF0EC08, &qword_238771190);
  sub_238439884(v100, &qword_27DF0EBF0, &qword_238771178);
  sub_238439884(v99, &qword_27DF0EBF8, &qword_238771180);
  sub_238439884(v103, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v121, &qword_27DF0EC00, &qword_238771188);
  sub_238439884(v120, &qword_27DF0EC08, &qword_238771190);
}

uint64_t sub_2385883F8(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA28, &qword_238770B20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875D250();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  sub_23857F5E0();
  sub_23875C4D0();
  v10 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_238588628@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23858A2F0(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23858A358(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_23858A3BC;
  a2[1] = v8;
  return result;
}

uint64_t sub_23858879C(uint64_t a1)
{
  v2 = sub_23875C970();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F0, &qword_23876A238);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = a1 + *(type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0) + 20);
  sub_2384D55D8(v7);
  MEMORY[0x23EE62DC0](v4);
  sub_23875C960();
  sub_23875E2F0();
  return sub_238439884(v7, &qword_27DF0C2F0, &qword_23876A238);
}

uint64_t sub_2385888E0(uint64_t a1, char a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08CC0 != -1)
  {
    swift_once();
  }

  sub_238487300(a2 & 1);
}

uint64_t sub_2385889C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_23875E360();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC40, &qword_238771200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_23875CE60();
  *(v17 + 1) = 0x4028000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC48, &qword_238771208);
  sub_238588C9C(a1, &v17[*(v18 + 44)]);
  sub_23875E350();
  sub_23843981C(v17, v14, &qword_27DF0EC40, &qword_238771200);
  v19 = v4[2];
  v19(v7, v10, v3);
  v20 = v14;
  v28 = v14;
  v21 = v10;
  v22 = v7;
  v23 = v30;
  sub_23843981C(v20, v30, &qword_27DF0EC40, &qword_238771200);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC50, &qword_238771210);
  v19((v23 + *(v24 + 48)), v22, v3);
  v25 = v4[1];
  v25(v21, v3);
  sub_238439884(v17, &qword_27DF0EC40, &qword_238771200);
  v25(v22, v3);
  sub_238439884(v28, &qword_27DF0EC40, &qword_238771200);
}

uint64_t sub_238588C9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC58, &qword_238771218);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = (&v51 - v6);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  v7 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v9 = &v51 - v8;
  v10 = sub_23875DFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC60, &qword_238771230);
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v19);
  v56 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v62 = &v51 - v23;
  sub_23875ED50();
  v55 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  sub_23858A2F0(a1 + *(v24 + 44), v18, type metadata accessor for MerchantImage.ViewModel);
  v25 = type metadata accessor for MerchantImage(0);
  v18[*(v25 + 20)] = 1;
  v52 = a1;
  v26 = *(v25 + 24);
  *&v18[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 104))(v14, *MEMORY[0x277CE0EE0], v10);
  v27 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v29 = &v18[*(v15 + 36)];
  v30 = type metadata accessor for OrderImageStyleModifier();
  *&v29[*(v30 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v29[*(v30 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v29 = xmmword_23876FD10;
  *(v29 + 2) = 0;
  v29[24] = 1;
  *(v29 + 4) = v27;
  v29[40] = 0;
  v31 = *MEMORY[0x277CDFA00];
  v32 = sub_23875C880();
  (*(*(v32 - 8) + 104))(v9, v31, v32);
  sub_23858A41C(&qword_2814F0998, MEMORY[0x277CDFA28]);
  result = sub_23875E9E0();
  if (result)
  {
    sub_23858A534();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220);
    v34 = v62;
    sub_23875DC50();
    sub_238439884(v9, &qword_27DF0A3D0, &unk_238771220);
    sub_238439884(v18, &qword_27DF0C7D0, &unk_23876B3E0);
    v35 = sub_23875D030();
    v36 = v54;
    *v54 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC18, &unk_2387711A0);
    sub_2385893AC(v52, v36 + *(v37 + 44));
    v38 = swift_getKeyPath();
    v39 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC80, &qword_2387712D8) + 36);
    *v39 = v38;
    *(v39 + 8) = 1;
    *(v39 + 16) = 0;
    v40 = swift_getKeyPath();
    v41 = v58;
    v42 = (v36 + *(v59 + 36));
    *v42 = v40;
    v42[1] = 0x3FE0000000000000;
    v44 = v56;
    v43 = v57;
    v45 = *(v57 + 16);
    v45(v56, v34, v41);
    v46 = v60;
    sub_23843981C(v36, v60, &qword_27DF0EC58, &qword_238771218);
    v47 = v61;
    v45(v61, v44, v41);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC88, &unk_238771310);
    sub_23843981C(v46, &v47[*(v48 + 48)], &qword_27DF0EC58, &qword_238771218);
    v49 = &v47[*(v48 + 64)];
    *v49 = 0;
    v49[8] = 1;
    sub_238439884(v36, &qword_27DF0EC58, &qword_238771218);
    v50 = *(v43 + 8);
    v50(v62, v41);
    sub_238439884(v46, &qword_27DF0EC58, &qword_238771218);
    v50(v44, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2385893AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830);
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v69 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = v64 - v5;
  sub_23875ED50();
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  v71 = v11;
  v72 = v13;
  v64[1] = sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  LOBYTE(v13) = v17;
  sub_23875D7F0();
  v18 = sub_23875DA60();
  v20 = v19;
  v22 = v21;

  sub_2384397FC(v14, v16, v13 & 1);

  sub_23875D890();
  v23 = sub_23875D9E0();
  v25 = v24;
  LOBYTE(v13) = v26;
  sub_2384397FC(v18, v20, v22 & 1);

  LODWORD(v71) = sub_23875D440();
  v27 = sub_23875DA20();
  v29 = v28;
  LOBYTE(v9) = v30;
  v32 = v31;
  sub_2384397FC(v23, v25, v13 & 1);

  v33 = v70;
  v34 = (v70 + *(v65 + 36));
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v36 = *MEMORY[0x277CE0B48];
  v37 = sub_23875DA40();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  *v34 = swift_getKeyPath();
  *v33 = v27;
  *(v33 + 8) = v29;
  *(v33 + 16) = v9 & 1;
  *(v33 + 24) = v32;
  v39 = (v66 + *(type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0) + 36));
  v40 = v39[1];
  v71 = *v39;
  v72 = v40;

  v41 = sub_23875DAA0();
  v43 = v42;
  LOBYTE(v37) = v44;
  sub_23875D8E0();
  v45 = sub_23875DA60();
  v47 = v46;
  LOBYTE(v27) = v48;

  sub_2384397FC(v41, v43, v37 & 1);

  sub_23875D890();
  v49 = sub_23875D9E0();
  v51 = v50;
  LOBYTE(v34) = v52;
  sub_2384397FC(v45, v47, v27 & 1);

  LODWORD(v71) = sub_23875D420();
  v53 = sub_23875DA20();
  v55 = v54;
  LOBYTE(v45) = v56;
  v58 = v57;
  sub_2384397FC(v49, v51, v34 & 1);

  v59 = v69;
  v60 = v70;
  sub_23843981C(v70, v69, &qword_27DF0AB38, &unk_238766830);
  v61 = v67;
  sub_23843981C(v59, v67, &qword_27DF0AB38, &unk_238766830);
  v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC30, &qword_2387711F8) + 48);
  *v62 = v53;
  *(v62 + 8) = v55;
  *(v62 + 16) = v45 & 1;
  *(v62 + 24) = v58;
  sub_23843980C(v53, v55, v45 & 1);

  sub_238439884(v60, &qword_27DF0AB38, &unk_238766830);
  sub_2384397FC(v53, v55, v45 & 1);

  sub_238439884(v59, &qword_27DF0AB38, &unk_238766830);
}

uint64_t sub_238589980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v56 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830);
  v7 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v57 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v51 - v10;
  sub_23875ED50();
  v55 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v58 = a1;
  v59 = a2;
  v51[1] = sub_2384397A8();

  v12 = sub_23875DAA0();
  v14 = v13;
  v16 = v15;
  sub_23875D7F0();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  sub_23875D890();
  v22 = sub_23875D9E0();
  v24 = v23;
  LOBYTE(v12) = v25;
  sub_2384397FC(v17, v19, v21 & 1);

  LODWORD(v58) = sub_23875D440();
  v26 = sub_23875DA20();
  v28 = v27;
  LOBYTE(v17) = v29;
  v31 = v30;
  sub_2384397FC(v22, v24, v12 & 1);

  v32 = &v11[*(v52 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v34 = *MEMORY[0x277CE0B48];
  v35 = sub_23875DA40();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v32 + v33, v34, v35);
  (*(v36 + 56))(v32 + v33, 0, 1, v35);
  *v32 = swift_getKeyPath();
  *v11 = v26;
  *(v11 + 1) = v28;
  v11[16] = v17 & 1;
  *(v11 + 3) = v31;
  v58 = v53;
  v59 = v54;

  v37 = sub_23875DAA0();
  v39 = v38;
  LOBYTE(v35) = v40;
  sub_23875D820();
  v41 = sub_23875DA60();
  v43 = v42;
  LOBYTE(v36) = v44;
  v46 = v45;

  sub_2384397FC(v37, v39, v35 & 1);

  v47 = v57;
  sub_23843981C(v11, v57, &qword_27DF0AB38, &unk_238766830);
  v48 = v56;
  sub_23843981C(v47, v56, &qword_27DF0AB38, &unk_238766830);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EC30, &qword_2387711F8) + 48);
  *v49 = v41;
  *(v49 + 8) = v43;
  *(v49 + 16) = v36 & 1;
  *(v49 + 24) = v46;
  sub_23843980C(v41, v43, v36 & 1);

  sub_238439884(v11, &qword_27DF0AB38, &unk_238766830);
  sub_2384397FC(v41, v43, v36 & 1);

  sub_238439884(v47, &qword_27DF0AB38, &unk_238766830);
}

void sub_238589E00()
{
  type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238589E84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238589E84()
{
  if (!qword_27DF0EB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C2F0, &qword_23876A238);
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0EB88);
    }
  }
}

uint64_t sub_238589F04@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB98, &qword_238771130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v15 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBA0, &qword_238771138);
  sub_23858A19C();
  sub_23875C410();
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EA20, &unk_238771150);
  sub_23843A3E8(&qword_27DF0EBD0, &qword_27DF0EB98, &qword_238771130);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
  v9 = sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
  v16 = v8;
  v17 = v9;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  (*(v4 + 8))(v7, v3);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBD8, &qword_238771160) + 36));
  *v10 = sub_2385888C8;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBE0, &qword_238771168);
  v12 = (a1 + *(result + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_2385888D4;
  v12[3] = 0;
  return result;
}

unint64_t sub_23858A19C()
{
  result = qword_27DF0EBA8;
  if (!qword_27DF0EBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBA0, &qword_238771138);
    sub_23858A228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EBA8);
  }

  return result;
}

unint64_t sub_23858A228()
{
  result = qword_27DF0EBB0;
  if (!qword_27DF0EBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBB8, &qword_238771140);
    sub_23843A3E8(&qword_27DF0EBC0, &qword_27DF0EBC8, &qword_238771148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EBB0);
  }

  return result;
}

uint64_t sub_23858A2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858A358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23858A3BC()
{
  v1 = *(type metadata accessor for OrderDetailsPickupBarcodeSheet_iOS(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23858879C(v2);
}

uint64_t sub_23858A41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23858A464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23858A4C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EBF8, &qword_238771180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23858A534()
{
  result = qword_27DF0EC68;
  if (!qword_27DF0EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C7D0, &unk_23876B3E0);
    sub_23858A41C(&qword_27DF0EC70, type metadata accessor for MerchantImage);
    sub_23858A41C(&qword_27DF0EC78, type metadata accessor for OrderImageStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC68);
  }

  return result;
}

unint64_t sub_23858A620()
{
  result = qword_27DF0EC90;
  if (!qword_27DF0EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBE0, &qword_238771168);
    sub_23858A6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC90);
  }

  return result;
}

unint64_t sub_23858A6AC()
{
  result = qword_27DF0EC98;
  if (!qword_27DF0EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EBD8, &qword_238771160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EB98, &qword_238771130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA20, &unk_238771150);
    sub_23843A3E8(&qword_27DF0EBD0, &qword_27DF0EB98, &qword_238771130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EA28, &qword_238770B20);
    sub_23843A3E8(&qword_27DF0EA30, &qword_27DF0EA28, &qword_238770B20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC98);
  }

  return result;
}

uint64_t sub_23858A8AC()
{
  result = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23858A918()
{
  result = sub_23858A98C();
  if (v1 <= 0x3F)
  {
    result = sub_23875B940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23858A98C()
{
  result = qword_27DF12260;
  if (!qword_27DF12260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12260);
  }

  return result;
}

uint64_t sub_23858A9F4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = type metadata accessor for OrderDetailsPickupDirectionsButton(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v20[2] = v14;
  v20[3] = v16;
  sub_23858B820(v20[0], v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsPickupDirectionsButton);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  sub_23858B6F8(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_2384397A8();
  sub_23875E230();
  sub_23858B7BC();
  sub_23875DE00();
  return (*(v5 + 8))(v8, v4);
}

void sub_23858ACD0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23858AFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(v2 + 40) = sub_23875EA80();
  *(v2 + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(v2 + 56) = *MEMORY[0x277D38390];
  strcpy((v2 + 64), "pickupLocation");
  v7 = *MEMORY[0x277D384B8];
  *(v2 + 79) = -18;
  *(v2 + 80) = v7;
  strcpy((v2 + 88), "orderDetails");
  *(v2 + 101) = 0;
  *(v2 + 102) = -5120;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v16);

  v13 = *MEMORY[0x277D38548];
  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23858B888(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v15 = sub_23875E910();

  [v14 subject:v13 sendEvent:v15];
}

void sub_23858AFF4()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23858B820(v1, v10, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = [objc_opt_self() sharedApplication];
    v12 = sub_23875B860();
    sub_23854BA18(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_23858B888(&qword_27DF09138, type metadata accessor for OpenExternalURLOptionsKey);
    v13 = sub_23875E910();

    [v11 openURL:v12 options:v13 completionHandler:0];

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    v16 = *MEMORY[0x277CD4B68];
    *(inited + 32) = sub_23875EA80();
    *(inited + 40) = v17;
    v18 = *MEMORY[0x277CD4B58];
    v19 = sub_23875EA80();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v19;
    *(inited + 56) = v20;
    sub_23853BB18(inited);
    swift_setDeallocating();
    sub_238439884(inited + 32, &qword_27DF0A4D8, &qword_238766B00);
    v21 = sub_23875E910();

    [v14 openInMapsWithLaunchOptions_];
  }
}

id sub_23858B318(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      if ((sub_23875F020() & 1) == 0)
      {
        v11 = v4;
        v8 = v5;
        v12 = sub_23875EA50();
        v10 = [objc_opt_self() placemarkWithLocation:v11 name:v12 postalAddress:v8];

        v9 = v8;
        goto LABEL_9;
      }
    }

    else
    {
      v7 = a1;
    }

    v8 = a1;
    v9 = sub_23875EA50();
    v10 = [objc_opt_self() placemarkWithLocation:v8 name:v9 postalAddress:0];
LABEL_9:

    v6 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];
    v13 = sub_23875EA50();
    [v6 setName_];

    return v6;
  }

  return 0;
}

uint64_t sub_23858B494@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  if (a1)
  {
    v8 = a1;
    if ((sub_23875F020() & 1) == 0)
    {
      sub_23875F010();
      v9 = objc_allocWithZone(MEMORY[0x277CD4FA8]);
      v10 = sub_23875EA50();

      v11 = [v9 initForDirectionsTo_];

      if (v11)
      {
        v12 = v11;
        v13 = sub_23875EA50();
        [v12 setDestinationLabel_];

        v14 = [v12 build];
        if (v14)
        {
          v15 = v14;
          sub_23875B8B0();

          v16 = sub_23875B940();
          (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
        }

        else
        {

          v20 = sub_23875B940();
          (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        }

        return sub_23853B5CC(v7, a2);
      }
    }
  }

  v17 = sub_23875B940();
  v18 = *(*(v17 - 8) + 56);

  return v18(a2, 1, 1, v17);
}

uint64_t sub_23858B6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupDirectionsButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23858B75C()
{
  v0 = *(*(type metadata accessor for OrderDetailsPickupDirectionsButton(0) - 8) + 80);

  sub_23858ACD0();
}

unint64_t sub_23858B7BC()
{
  result = qword_27DF0D2C0;
  if (!qword_27DF0D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D2C0);
  }

  return result;
}

uint64_t sub_23858B820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858B888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OrderImageCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  return v0;
}

void OrderImageCache.store(image:for:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OrderImageModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v2 + 16);
  sub_23858BA48(a2, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v10 = sub_238758360();
  [v8 setObject:a1 forKey:v10];
}

uint64_t sub_23858BA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImageModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23858BAAC()
{
  result = qword_27DF0ECC0;
  if (!qword_27DF0ECC0)
  {
    type metadata accessor for OrderImageModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECC0);
  }

  return result;
}

void OrderImageCache.store(resource:for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_23858BB94();
  sub_23875F410();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v5 = sub_238758360();
  [v3 setObject:a1 forKey:v5];
}

unint64_t sub_23858BB94()
{
  result = qword_27DF0ECD0;
  if (!qword_27DF0ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECD0);
  }

  return result;
}

id OrderImageCache.image(for:)(uint64_t a1)
{
  v3 = type metadata accessor for OrderImageModel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *(v1 + 16);
  sub_23858BA48(a1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v8 = sub_238758360();
  v9 = [v6 objectForKey_];

  return v9;
}

id OrderImageCache.resource(for:)()
{
  v1 = *(v0 + 16);
  sub_23858BB94();
  sub_23875F410();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v3 = sub_238758360();
  v4 = [v1 objectForKey_];

  return v4;
}

uint64_t OrderImageCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_23858BDCC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OrderImageModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(*v2 + 16);
  sub_23858BA48(a2, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v10 = sub_238758360();
  [v8 setObject:a1 forKey:v10];
}

void sub_23858BEC4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  sub_23858BB94();
  sub_23875F410();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v5 = sub_238758360();
  [v3 setObject:a1 forKey:v5];
}

id sub_23858BF58(uint64_t a1)
{
  v3 = type metadata accessor for OrderImageModel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *(*v1 + 16);
  sub_23858BA48(a1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23858BAAC();
  sub_23875F410();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v8 = sub_238758360();
  v9 = [v6 objectForKey_];

  return v9;
}

id sub_23858C058()
{
  v1 = *(*v0 + 16);
  sub_23858BB94();
  sub_23875F410();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ECC8, &qword_2387713B0));
  v3 = sub_238758360();
  v4 = [v1 objectForKey_];

  return v4;
}

id sub_23858C0EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for OrderImageCache();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for OrderImageCache;
  *a1 = v3;
  return result;
}

uint64_t EnvironmentValues.orderImageCache.getter()
{
  sub_23858C1A0();

  return sub_23875CDC0();
}

unint64_t sub_23858C1A0()
{
  result = qword_27DF0ECD8;
  if (!qword_27DF0ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECD8);
  }

  return result;
}

uint64_t sub_23858C234(uint64_t a1)
{
  sub_23845C998(a1, v3);
  sub_23845C998(v3, &v2);
  sub_23858C1A0();
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t EnvironmentValues.orderImageCache.setter(uint64_t *a1)
{
  sub_23845C998(a1, v3);
  sub_23858C1A0();
  sub_23875CDD0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*EnvironmentValues.orderImageCache.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_23858C1A0();
  sub_23875CDC0();
  return sub_23858C378;
}

void sub_23858C378(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23845C998((v2 + 5), (v2 + 10));
    sub_23875CDD0();
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_23845C998(*a1, (v2 + 5));
    sub_23875CDD0();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t BadgedErrorInstitutionLogo.init(institution:logoStyle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_238757B60();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for BadgedErrorInstitutionLogo();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for BadgedErrorInstitutionLogo()
{
  result = qword_27DF0ECE8;
  if (!qword_27DF0ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double BadgedErrorInstitutionLogo.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875E4A0();
  v6 = v5;
  sub_23858C6EC(v2, &v17);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v49[12] = v29;
  v49[13] = v30;
  v49[14] = v31;
  v49[15] = v32;
  v49[8] = v25;
  v49[9] = v26;
  v49[10] = v27;
  v49[11] = v28;
  v49[4] = v21;
  v49[5] = v22;
  v49[6] = v23;
  v49[7] = v24;
  v49[0] = v17;
  v49[1] = v18;
  v49[2] = v19;
  v49[3] = v20;
  sub_23843981C(&v33, &v16, &qword_27DF0ECE0, &qword_238771470);
  sub_238439884(v49, &qword_27DF0ECE0, &qword_238771470);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v46;
  *(a1 + 208) = v45;
  *(a1 + 224) = v7;
  v8 = v48;
  *(a1 + 240) = v47;
  *(a1 + 256) = v8;
  v9 = v42;
  *(a1 + 144) = v41;
  *(a1 + 160) = v9;
  v10 = v44;
  *(a1 + 176) = v43;
  *(a1 + 192) = v10;
  v11 = v38;
  *(a1 + 80) = v37;
  *(a1 + 96) = v11;
  v12 = v40;
  *(a1 + 112) = v39;
  *(a1 + 128) = v12;
  v13 = v34;
  *(a1 + 16) = v33;
  *(a1 + 32) = v13;
  result = *&v35;
  v15 = v36;
  *(a1 + 48) = v35;
  *(a1 + 64) = v15;
  return result;
}

uint64_t sub_23858C6EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v77 = a1;
  v3 = sub_23875E0E0();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_238757B60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v76 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = v77;
  (*(v8 + 16))(v11);
  v13 = *(type metadata accessor for BadgedErrorInstitutionLogo() + 20);
  v14 = *(v12 + v13);
  v62 = v13;
  v74 = v14;
  KeyPath = swift_getKeyPath();
  LOBYTE(v80[0]) = 0;
  *&v109 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v72 = v117;
  v73 = v116;
  v71 = sub_238757B40();
  v79 = v15;
  (*(v8 + 8))(v11, v7);
  v78 = LOBYTE(v80[0]);
  sub_23875E0D0();
  v17 = v68;
  v16 = v69;
  (*(v68 + 104))(v6, *MEMORY[0x277CE0FE0], v69);
  v70 = sub_23875E150();

  (*(v17 + 8))(v6, v16);
  v18 = qword_238771578[*(v12 + v13)];
  sub_23875E4A0();
  sub_23875C5C0();
  LOBYTE(v16) = v163;
  v65 = v162;
  v66 = v164;
  LOBYTE(v18) = v165;
  v63 = v165;
  v68 = v167;
  v69 = v166;
  v67 = sub_23875E070();
  v64 = swift_getKeyPath();
  v158 = v16;
  v156 = v18;
  v19 = objc_opt_self();
  v20 = [v19 systemBackgroundColor];
  v61 = sub_23875DFB0();
  v60 = sub_23875D780();
  v21 = [v19 systemBackgroundColor];
  v22 = sub_23875DFB0();
  sub_23875C4C0();
  v23 = v168;
  LODWORD(v13) = v169;
  v24 = v170;
  v25 = v171;
  v26 = v172;
  v27 = v173;
  v28 = sub_23875E4A0();
  v30 = v29;
  v31 = sub_23875E4A0();
  *&v137 = v23;
  *(&v137 + 1) = __PAIR64__(v24, v13);
  *&v138 = v25;
  *(&v138 + 1) = v26;
  *&v139 = v27;
  *(&v139 + 1) = v22;
  LOWORD(v140) = 256;
  *(&v140 + 1) = v28;
  *&v141 = v30;
  *(&v141 + 1) = v31;
  *(&v159[2] + 5) = v139;
  *(&v159[3] + 5) = v140;
  *(&v159[4] + 5) = v141;
  *(v159 + 5) = v137;
  v142 = v32;
  *(&v159[5] + 5) = v32;
  *(&v159[1] + 5) = v138;
  v143 = v23;
  v144 = v13;
  v145 = v24;
  v146 = v25;
  v147 = v26;
  v148 = v27;
  v149 = v22;
  v150 = 256;
  v151 = v28;
  v152 = v30;
  v153 = v31;
  v154 = v32;
  sub_23843981C(&v137, &v116, &qword_27DF0ED08, &qword_238771560);
  sub_238439884(&v143, &qword_27DF0ED08, &qword_238771560);
  v33 = *(v77 + v62);
  v34 = dbl_2387715A8[v33];
  v35 = v34 - dbl_2387715D8[v33];
  v36 = v71;
  *&v105 = v71;
  *(&v105 + 1) = v79;
  LOBYTE(v24) = v74;
  LOBYTE(v106) = v74;
  *(&v106 + 1) = *v161;
  DWORD1(v106) = *&v161[3];
  *(&v106 + 1) = 0x3FB999999999999ALL;
  v37 = KeyPath;
  *&v107 = KeyPath;
  BYTE8(v107) = v78;
  *(&v107 + 9) = *v160;
  HIDWORD(v107) = *&v160[3];
  v39 = v72;
  v38 = v73;
  *&v108 = v73;
  *(&v108 + 1) = v72;
  v91 = v107;
  v92 = v108;
  v89 = v105;
  v90 = v106;
  v41 = v69;
  v40 = v70;
  *&v109 = v70;
  v43 = v65;
  v42 = v66;
  *(&v109 + 1) = v65;
  LOBYTE(v110) = v16;
  DWORD1(v110) = *&v157[3];
  *(&v110 + 1) = *v157;
  *(&v110 + 1) = v66;
  v44 = v63;
  LOBYTE(v111) = v63;
  DWORD1(v111) = *&v155[3];
  *(&v111 + 1) = *v155;
  *(&v111 + 1) = v69;
  v46 = v67;
  v45 = v68;
  *&v112 = v68;
  v47 = v64;
  *(&v112 + 1) = v64;
  *&v113 = v67;
  v48 = v61;
  *(&v113 + 1) = v61;
  v49 = v60;
  LOBYTE(v114[0]) = v60;
  *(v114 + 1) = 256;
  *(&v114[1] + 3) = v159[1];
  *(v114 + 3) = v159[0];
  v114[5] = *(&v159[4] + 13);
  *(&v114[4] + 3) = v159[4];
  *(&v114[3] + 3) = v159[3];
  *(&v114[2] + 3) = v159[2];
  *&v115 = v34;
  *(&v115 + 1) = v35;
  v95 = v111;
  v96 = v112;
  v93 = v109;
  v94 = v110;
  v99 = v114[1];
  v100 = v114[2];
  v97 = v113;
  v98 = v114[0];
  v103 = v114[5];
  v104 = v115;
  v101 = v114[3];
  v102 = v114[4];
  v50 = v114[4];
  a2[12] = v114[3];
  a2[13] = v50;
  v51 = v104;
  a2[14] = v103;
  a2[15] = v51;
  v52 = v98;
  a2[8] = v97;
  a2[9] = v52;
  v53 = v100;
  a2[10] = v99;
  a2[11] = v53;
  v54 = v94;
  a2[4] = v93;
  a2[5] = v54;
  v55 = v96;
  a2[6] = v95;
  a2[7] = v55;
  v56 = v90;
  *a2 = v89;
  a2[1] = v56;
  v57 = v92;
  a2[2] = v91;
  a2[3] = v57;
  v116 = v40;
  v117 = v43;
  v118 = v16;
  *v119 = *v157;
  *&v119[3] = *&v157[3];
  v120 = v42;
  v121 = v44;
  *v122 = *v155;
  *&v122[3] = *&v155[3];
  v123 = v41;
  v124 = v45;
  v125 = v47;
  v126 = v46;
  v127 = v48;
  v128 = v49;
  v129 = 256;
  v132 = v159[2];
  v133 = v159[3];
  *v134 = v159[4];
  *&v134[13] = *(&v159[4] + 13);
  v130 = v159[0];
  v131 = v159[1];
  v135 = v34;
  v136 = v35;
  sub_238558A88(&v105, v80);
  sub_23843981C(&v109, v80, &qword_27DF0ED10, &unk_238771568);
  sub_238439884(&v116, &qword_27DF0ED10, &unk_238771568);
  v80[0] = v36;
  v80[1] = v79;
  v81 = v24;
  *v82 = *v161;
  *&v82[3] = *&v161[3];
  v83 = 0x3FB999999999999ALL;
  v84 = v37;
  v85 = v78;
  *v86 = *v160;
  *&v86[3] = *&v160[3];
  v87 = v38;
  v88 = v39;
  sub_23858D0F0(v80);
}

double sub_23858CEA4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875E4A0();
  v6 = v5;
  sub_23858C6EC(v2, &v17);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v49[12] = v29;
  v49[13] = v30;
  v49[14] = v31;
  v49[15] = v32;
  v49[8] = v25;
  v49[9] = v26;
  v49[10] = v27;
  v49[11] = v28;
  v49[4] = v21;
  v49[5] = v22;
  v49[6] = v23;
  v49[7] = v24;
  v49[0] = v17;
  v49[1] = v18;
  v49[2] = v19;
  v49[3] = v20;
  sub_23843981C(&v33, &v16, &qword_27DF0ECE0, &qword_238771470);
  sub_238439884(v49, &qword_27DF0ECE0, &qword_238771470);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v46;
  *(a1 + 208) = v45;
  *(a1 + 224) = v7;
  v8 = v48;
  *(a1 + 240) = v47;
  *(a1 + 256) = v8;
  v9 = v42;
  *(a1 + 144) = v41;
  *(a1 + 160) = v9;
  v10 = v44;
  *(a1 + 176) = v43;
  *(a1 + 192) = v10;
  v11 = v38;
  *(a1 + 80) = v37;
  *(a1 + 96) = v11;
  v12 = v40;
  *(a1 + 112) = v39;
  *(a1 + 128) = v12;
  v13 = v34;
  *(a1 + 16) = v33;
  *(a1 + 32) = v13;
  result = *&v35;
  v15 = v36;
  *(a1 + 48) = v35;
  *(a1 + 64) = v15;
  return result;
}

uint64_t sub_23858D018()
{
  result = sub_238757B60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23858D08C()
{
  result = qword_27DF0ECF8;
  if (!qword_27DF0ECF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ED00, &qword_2387714F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ECF8);
  }

  return result;
}

void sub_23858D18C()
{
  type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384561E8();
    if (v1 <= 0x3F)
    {
      sub_2385862B4();
      if (v2 <= 0x3F)
      {
        sub_23858D2A0(319, &qword_27DF0ED28, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
        if (v3 <= 0x3F)
        {
          sub_23858D2A0(319, &qword_27DF0ED30, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23858D2A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23858D2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858D3C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  sub_23875AED0();
  v10 = (*(v3 + 88))(v9, v2);
  if (v10 == *MEMORY[0x277CC83B8])
  {
    v11 = 28;
    goto LABEL_5;
  }

  if (v10 == *MEMORY[0x277CC83A8])
  {
    v11 = 24;
LABEL_5:
    v12 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
    v13 = (v1 + *(v12 + v11));
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v3 + 8);

    v16(v9, v2);
    if (!v15)
    {
      return 0;
    }

    v17 = (v1 + *(v12 + 20));
    v18 = *v17;
    v19 = v17[1];

    return v18;
  }

  if (v10 == *MEMORY[0x277CC83B0])
  {
    (*(v3 + 8))(v9, v2);
    return 0;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875AED0();
  sub_23875F510();
  (*(v3 + 8))(v6, v2);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23858D668()
{
  v1 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v2 = (v0 + *(v1 + 32));
  v3 = *v2;
  v8 = *v2;
  v9 = v2[1];
  v4 = *(v0 + *(v1 + 36));

  if (v4)
  {
    v5 = v4;
    v6 = sub_23875F010();
    MEMORY[0x23EE63650](v6);

    MEMORY[0x23EE63650](10, 0xE100000000000000);

    return v8;
  }

  return v3;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23858D878()
{
  result = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23858D8E4()
{
  result = qword_27DF0ED58;
  if (!qword_27DF0ED58)
  {
    type metadata accessor for OrderDetailsPickupFulfillment_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ED58);
  }

  return result;
}

uint64_t sub_23858D958@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for OrderDetailsPickupDirectionsButton(0);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C8, &unk_23876D600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v63 - v7;
  v8 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED60, &qword_238771728);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED68, &qword_238771730);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v71 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = (&v63 - v20);
  v21 = type metadata accessor for OrderDetailsPickupStatusLabel(0);
  v65 = *(v21 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v63 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED70, &qword_238771738);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v68 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v63 - v33;
  v35 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  sub_23843981C(v1 + v35[11], v28, &qword_27DF0D5B8, &unk_23876D5F0);
  v36 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v37 = 1;
  v38 = (*(*(v36 - 8) + 48))(v28, 1, v36);
  v39 = v28;
  v40 = v34;
  v41 = v21;
  v42 = v1;
  sub_238439884(v39, &qword_27DF0D5B8, &unk_23876D5F0);
  if (v38 == 1 && !*(v1 + v35[6] + 8))
  {
    sub_23858EA60(v1, v24, type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel);
    v43 = v41[5];
    *&v24[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
    swift_storeEnumTagMultiPayload();
    v44 = v41[6];
    *&v24[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C300, &qword_2387729A0);
    swift_storeEnumTagMultiPayload();
    v45 = v41[7];
    *&v24[v45] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F8, &unk_23876A240);
    swift_storeEnumTagMultiPayload();
    sub_23858D2F4(v24, v40, type metadata accessor for OrderDetailsPickupStatusLabel);
    v37 = 0;
  }

  (*(v65 + 56))(v40, v37, 1, v41);
  v46 = sub_23875D030();
  v47 = v76;
  *v76 = v46;
  v47[1] = 0x4032000000000000;
  *(v47 + 16) = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED78, &qword_2387717E8);
  sub_23858E138(v42, v47 + *(v48 + 44));
  v49 = v42 + v35[10];
  v50 = v69;
  sub_23843981C(v49, v69, &qword_27DF0D5C8, &unk_23876D600);
  if ((*(v66 + 48))(v50, 1, v67) == 1)
  {
    sub_238439884(v50, &qword_27DF0D5C8, &unk_23876D600);
    v51 = 1;
    v52 = v70;
  }

  else
  {
    v53 = v50;
    v54 = v63;
    sub_23858D2F4(v53, v63, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
    v55 = v64;
    sub_23858D2F4(v54, v64, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
    v52 = v70;
    sub_23858D2F4(v55, v70, type metadata accessor for OrderDetailsPickupDirectionsButton);
    v51 = 0;
  }

  (*(v73 + 56))(v52, v51, 1, v74);
  v56 = v68;
  sub_23843981C(v40, v68, &qword_27DF0ED70, &qword_238771738);
  v57 = v76;
  v58 = v71;
  sub_23843981C(v76, v71, &qword_27DF0ED68, &qword_238771730);
  v74 = v40;
  v59 = v72;
  sub_23843981C(v52, v72, &qword_27DF0ED60, &qword_238771728);
  v60 = v75;
  sub_23843981C(v56, v75, &qword_27DF0ED70, &qword_238771738);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED80, &qword_2387717F0);
  sub_23843981C(v58, v60 + *(v61 + 48), &qword_27DF0ED68, &qword_238771730);
  sub_23843981C(v59, v60 + *(v61 + 64), &qword_27DF0ED60, &qword_238771728);
  sub_238439884(v52, &qword_27DF0ED60, &qword_238771728);
  sub_238439884(v57, &qword_27DF0ED68, &qword_238771730);
  sub_238439884(v74, &qword_27DF0ED70, &qword_238771738);
  sub_238439884(v59, &qword_27DF0ED60, &qword_238771728);
  sub_238439884(v58, &qword_27DF0ED68, &qword_238771730);
  return sub_238439884(v56, &qword_27DF0ED70, &qword_238771738);
}

uint64_t sub_23858E138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for OrderDetailsBarcodeButton();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v6 = *(v96 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v96);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED88, &qword_2387717F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED90, &qword_238771800);
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ED98, &qword_238771808);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v93 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v98 = &v84 - v29;
  sub_23875ED50();
  v92 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  v31 = *(v30 + 44);
  sub_23843981C(a1 + v31, v24, &qword_27DF0D5B8, &unk_23876D5F0);
  v32 = v6 + 48;
  v33 = *(v6 + 48);
  v89 = v32;
  v34 = a1;
  v35 = v33(v24, 1, v96);
  sub_238439884(v24, &qword_27DF0D5B8, &unk_23876D5F0);
  if (v35 == 1 && !*(v34 + *(v30 + 24) + 8))
  {
    v42 = 1;
    v43 = v97;
    v41 = v98;
    v40 = v88;
  }

  else
  {
    sub_23858EA60(v34, v17, type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel);
    v36 = type metadata accessor for OrderDetailsPickupStatusLabel(0);
    v37 = v36[5];
    *&v17[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
    swift_storeEnumTagMultiPayload();
    v38 = v36[6];
    *&v17[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C300, &qword_2387729A0);
    swift_storeEnumTagMultiPayload();
    v39 = v36[7];
    *&v17[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2F8, &unk_23876A240);
    swift_storeEnumTagMultiPayload();
    v40 = v88;
    *&v17[*(v88 + 36)] = 256;
    v41 = v98;
    sub_2384396E4(v17, v98, &qword_27DF0ED90, &qword_238771800);
    v42 = 0;
    v43 = v97;
  }

  (*(v87 + 56))(v41, v42, 1, v40);
  sub_23843981C(v34 + v31, v21, &qword_27DF0D5B8, &unk_23876D5F0);
  if (v33(v21, 1, v96) == 1)
  {
    sub_238439884(v21, &qword_27DF0D5B8, &unk_23876D5F0);
    v44 = 1;
    v45 = v91;
  }

  else
  {
    v46 = v85;
    sub_23858D2F4(v21, v85, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
    v47 = v86;
    sub_23858EA60(v46, v86, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
    v45 = v91;
    v48 = v47 + *(v91 + 20);
    v99 = 0;
    sub_23875E1A0();
    sub_23858EAC8(v46);
    v49 = v101;
    *v48 = v100;
    *(v48 + 8) = v49;
    v50 = v47 + *(v45 + 24);
    *v50 = swift_getKeyPath();
    *(v50 + 8) = 0;
    sub_23858D2F4(v47, v43, type metadata accessor for OrderDetailsBarcodeButton);
    v44 = 0;
  }

  (*(v90 + 56))(v43, v44, 1, v45);
  v51 = sub_23858D3C0();
  if (qword_2814F0880 != -1)
  {
    v80 = v51;
    v81 = v52;
    v82 = v53;
    v83 = v54;
    swift_once();
    v54 = v83;
    v53 = v82;
    v51 = v80;
    v52 = v81;
    v41 = v98;
  }

  if (v52)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v96 = v55;
  if (v52)
  {
    v56 = v53;
  }

  else
  {
    v56 = 0;
  }

  v91 = v56;
  if (v52)
  {
    v57 = v51;
  }

  else
  {
    v57 = 0;
  }

  v89 = v52;
  v90 = v57;
  v58 = qword_2814F1B90;
  v59 = sub_23875EA50();
  v60 = sub_23875EA50();
  v61 = sub_23875EA50();
  v62 = [v58 localizedStringForKey:v59 value:v60 table:v61];

  v88 = sub_23875EA80();
  v64 = v63;

  v65 = sub_23858D668();
  v67 = v66;
  v68 = v93;
  sub_23843981C(v41, v93, &qword_27DF0ED98, &qword_238771808);
  v69 = v43;
  v70 = v94;
  sub_23843981C(v69, v94, &qword_27DF0ED88, &qword_2387717F8);
  v71 = v95;
  sub_23843981C(v68, v95, &qword_27DF0ED98, &qword_238771808);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EDA0, &qword_238771810);
  sub_23843981C(v70, v71 + v72[12], &qword_27DF0ED88, &qword_2387717F8);
  v73 = (v71 + v72[16]);
  v75 = v89;
  v74 = v90;
  *v73 = v90;
  v73[1] = v75;
  v76 = v96;
  v73[2] = v91;
  v73[3] = v76;
  v77 = (v71 + v72[20]);
  *v77 = v88;
  v77[1] = v64;
  v77[2] = v65;
  v77[3] = v67;
  v78 = v74;
  sub_2385570E8(v74, v75);

  sub_238439884(v97, &qword_27DF0ED88, &qword_2387717F8);
  sub_238439884(v98, &qword_27DF0ED98, &qword_238771808);

  sub_23855712C(v78, v75);
  sub_238439884(v70, &qword_27DF0ED88, &qword_2387717F8);
  sub_238439884(v68, &qword_27DF0ED98, &qword_238771808);
}

uint64_t sub_23858EA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23858EAC8(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23858EB24()
{
  result = qword_27DF0EDA8;
  if (!qword_27DF0EDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EDB0, &qword_238771840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EDA8);
  }

  return result;
}

void sub_23858EBD4()
{
  sub_23875AF00();
  if (v0 <= 0x3F)
  {
    sub_23858EE1C(319, &qword_27DF0EDC8, type metadata accessor for OrderDetailsNote, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23858ECD8()
{
  type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23858EE1C(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23858EE1C(319, &qword_27DF0EDF0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23858EE1C(319, &qword_27DF0EDF8, MEMORY[0x277CC9A70], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23858EE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23858EE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875D990();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BE20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OrderDetailsPickupStatusLabel(0);
  v24 = v1 + v23[6];
  sub_2384D57B8(v18);
  v25 = v2 + v23[5];
  sub_2384D5588(v14);
  v26 = v2 + v23[7];
  sub_2384D57E0(v10);
  sub_2387595B0();
  sub_2385913B4(&qword_27DF0EE00, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter);
  sub_238759950();
  sub_238591564(v22, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter);
  v28 = v55;
  v27 = v56;
  v30 = v57;
  v29 = v58;
  v50[0] = v58;

  v31 = v27;
  v50[1] = v27;

  LOBYTE(v23) = sub_23858F2F8();
  v32 = type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0);
  v33 = *(v32 + 20);
  v34 = type metadata accessor for OrderDetailsStatusLabel();
  sub_2385912B0(v2 + v33, a1 + v34[7]);
  v35 = (v2 + *(v32 + 24));
  v36 = *v35;
  v37 = v35[24];
  *a1 = v28;
  *(a1 + 8) = v31;
  *(a1 + 16) = v30;
  *(a1 + 24) = v29;
  *(a1 + 32) = v23;
  v38 = a1 + v34[8];
  *v38 = v36;
  *(v38 + 8) = *(v35 + 8);
  *(v38 + 24) = v37;
  v39 = a1 + v34[9];
  v54 = 0;
  sub_23875E1A0();
  v40 = v56;
  *v39 = v55;
  *(v39 + 8) = v40;
  v41 = a1 + v34[10];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = v34[11];
  v55 = 0x403F000000000000;
  v43 = *MEMORY[0x277CE0A50];
  v44 = v51;
  v45 = *(v52 + 104);
  v46 = v53;
  v45(v51, v43, v53);
  sub_23857414C();
  sub_23875C540();
  v47 = v34[12];
  v55 = 0x403C000000000000;
  v45(v44, v43, v46);
  sub_23875C540();
  v48 = v34[13];
  v55 = 0x4018000000000000;
  v45(v44, v43, v46);
  sub_23875C540();
}

uint64_t sub_23858F2F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  sub_23875AED0();
  v14 = (*(v1 + 88))(v13, v0);
  if (v14 == *MEMORY[0x277CC83B8])
  {
    (*(v1 + 16))(v7, v13, v0);
    (*(v1 + 96))(v7, v0);
    v15 = sub_238757C30();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 88))(v7, v15);
    if (v17 != *MEMORY[0x277CC6B98])
    {
      if (v17 != *MEMORY[0x277CC6BA8])
      {
        if (v17 == *MEMORY[0x277CC6BA0])
        {
LABEL_5:
          v18 = 1;
LABEL_18:
          (*(v1 + 8))(v13, v0);
          return v18;
        }

        v10 = v7;
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v14 == *MEMORY[0x277CC83A8])
  {
    (*(v1 + 16))(v10, v13, v0);
    (*(v1 + 96))(v10, v0);
    v15 = sub_23875ACF0();
    v16 = *(v15 - 8);
    v19 = (*(v16 + 88))(v10, v15);
    if (v19 != *MEMORY[0x277CC83E8] && v19 != *MEMORY[0x277CC83E0] && v19 != *MEMORY[0x277CC83D8])
    {
      if (v19 != *MEMORY[0x277CC83F8])
      {
        if (v19 == *MEMORY[0x277CC83F0])
        {
          v18 = 2;
          goto LABEL_18;
        }

        if (v19 == *MEMORY[0x277CC8400])
        {
          goto LABEL_5;
        }

LABEL_25:
        (*(v16 + 8))(v10, v15);
        goto LABEL_26;
      }

LABEL_17:
      v18 = 0;
      goto LABEL_18;
    }

LABEL_15:
    v18 = 3;
    goto LABEL_18;
  }

  if (v14 == *MEMORY[0x277CC83B0])
  {
    goto LABEL_17;
  }

LABEL_26:
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000017, 0x800000023878AD90);
  sub_23875AED0();
  sub_23875F510();
  (*(v1 + 8))(v4, v0);
  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23858F780(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23875F630(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_23858F820(uint64_t a1, const char *a2)
{
  v63 = a2;
  v3 = sub_2387591F0();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23875BC40();
  v56 = *(v61 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderDetailsStatusSubtitleFormatter();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - v13;
  v15 = sub_23875AEB0();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v54 - v31;
  sub_23875AED0();
  v33 = (*(v20 + 88))(v32, v19);
  if (v33 == *MEMORY[0x277CC83B8])
  {
    (*(v20 + 16))(v26, v32, v19);
    (*(v20 + 96))(v26, v19);
    v34 = sub_238757C30();
    v35 = *(v34 - 8);
    if ((*(v35 + 88))(v26, v34) == *MEMORY[0x277CC6B98])
    {
LABEL_3:
      (*(v20 + 8))(v32, v19);
      return sub_238590484(a1, v63);
    }

    (*(v35 + 8))(v26, v34);
LABEL_18:
    (*(v20 + 8))(v32, v19);
    return 0;
  }

  if (v33 != *MEMORY[0x277CC83A8])
  {
    if (v33 == *MEMORY[0x277CC83B0])
    {
      (*(v20 + 16))(v23, v32, v19);
      (*(v20 + 96))(v23, v19);
      v42 = v56;
      (*(v56 + 32))();
      v63 = "Unknown displayStatus: ";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2387632F0;
      v44 = sub_23875B9D0();
      v46 = v45;
      *(v43 + 56) = MEMORY[0x277D837D0];
      *(v43 + 64) = sub_238448C58();
      *(v43 + 32) = v44;
      *(v43 + 40) = v46;
      v47 = v57;
      v48 = v58;
      v49 = v59;
      (*(v58 + 104))(v57, *MEMORY[0x277CC77B0], v59);
      v50 = sub_238758A50();

      (*(v48 + 8))(v47, v49);
      (*(v42 + 8))(v60, v61);
      (*(v20 + 8))(v32, v19);
      return v50;
    }

    goto LABEL_18;
  }

  (*(v20 + 16))(v29, v32, v19);
  (*(v20 + 96))(v29, v19);
  v37 = sub_23875ACF0();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 88))(v29, v37);
  if (v39 == *MEMORY[0x277CC83E8] || v39 == *MEMORY[0x277CC83E0])
  {
    goto LABEL_3;
  }

  if (v39 != *MEMORY[0x277CC83D8])
  {
    if (v39 == *MEMORY[0x277CC83F8])
    {
      v51 = sub_238590078(a1, v63);
      (*(v20 + 8))(v32, v19);
      return v51;
    }

    (*(v38 + 8))(v29, v37);
    goto LABEL_18;
  }

  sub_23875AEF0();
  v40 = v55;
  if ((*(v55 + 48))(v14, 1, v15) == 1)
  {
    sub_238439884(v14, &qword_27DF0D5D0, &unk_238770FE0);
    v41 = 0;
  }

  else
  {
    (*(v40 + 32))(v18, v14, v15);
    v52 = sub_2387595E0();
    v53 = v54;
    (*(*(v52 - 8) + 16))(v54, v62, v52);
    v41 = sub_2385BCA9C(v18, v63);
    sub_238591564(v53, type metadata accessor for OrderDetailsStatusSubtitleFormatter);
    (*(v40 + 8))(v18, v15);
  }

  (*(v20 + 8))(v32, v19);
  return v41;
}

uint64_t sub_238590078(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_238759120();
  v26 = *(v28 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2387595E0();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238759140();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_23875BC40();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875AEE0();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_2385913B4(&unk_27DF12BC0, MEMORY[0x277CC9578]);
    if (sub_23875E9C0())
    {
      (*(v24 + 16))(v8, v27, v5);
      (*(v26 + 104))(v4, *MEMORY[0x277CC7750], v28);
      sub_238759110();
      v22 = sub_238759130();
      (*(v25 + 8))(v12, v9);
      (*(v18 + 8))(v21, v17);
      return v22;
    }

    (*(v18 + 8))(v21, v17);
  }

  return 0;
}

uint64_t sub_238590484(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = sub_2387591F0();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238759120();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387595E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875AEA0();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = sub_23875AEB0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875AEF0();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_238439884(v21, &qword_27DF0D5D0, &unk_238770FE0);
    return 0;
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    (*(v10 + 16))(v13, v41, v9);
    (*(v39 + 104))(v8, *MEMORY[0x277CC7750], v40);
    sub_23875AE80();
    v28 = sub_23875AE90();
    v30 = v29;
    (*(v37 + 8))(v17, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2387632F0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_238448C58();
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    v33 = v43;
    v32 = v44;
    v34 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x277CC77B0], v45);
    v35 = sub_238758A50();

    (*(v32 + 8))(v33, v34);
    (*(v23 + 8))(v26, v22);
    return v35;
  }
}

uint64_t sub_238590948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_2387595E0();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE48, &qword_238771A70);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = sub_23875BE40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23875BE20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_23875BD20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385915C4();
  v22 = v29;
  sub_23875F780();
  if (!v22)
  {
    v23 = v27;
    sub_2385913B4(&qword_27DF09CE0, MEMORY[0x277CC7968]);
    sub_23875F5B0();
    (*(v28 + 8))(v10, v7);
    (*(v23 + 40))(v20, v6, v3);
    sub_238591618(v20, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238591564(v20, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter);
}

uint64_t sub_238590CDC(uint64_t a1)
{
  v2 = sub_2385915C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238590D18(uint64_t a1)
{
  v2 = sub_2385915C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238590D54@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2387595E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875AF30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, v8, v16);
  sub_23875AF10();
  v19 = sub_23875AF20();
  v21 = v20;
  (*(v14 + 8))(v18, v13);
  result = sub_23858F820(a1, a2);
  *a3 = v19;
  a3[1] = v21;
  a3[2] = result;
  a3[3] = v23;
  return result;
}

uint64_t sub_238590F0C()
{
  sub_2385913B4(&qword_27DF0EE00, type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter);

  return sub_238759950();
}

uint64_t sub_238590FA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE58, &qword_238771A78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2385915C4();
  sub_23875F790();
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF0, MEMORY[0x277CC7968]);
  sub_23875F5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238591120()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385911A8()
{
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF8, MEMORY[0x277CC7968]);

  return sub_23875E960();
}

uint64_t sub_23859122C()
{
  sub_23875F700();
  sub_2387595E0();
  sub_2385913B4(&qword_27DF09CF8, MEMORY[0x277CC7968]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385912B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238591348()
{
  result = sub_2387595E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2385913B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238591564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2385915C4()
{
  result = qword_27DF0EE50;
  if (!qword_27DF0EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE50);
  }

  return result;
}

uint64_t sub_238591618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsPickupStatusLabel.TitleFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385916A0()
{
  result = qword_27DF0EE60;
  if (!qword_27DF0EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE60);
  }

  return result;
}

unint64_t sub_2385916F8()
{
  result = qword_27DF0EE68;
  if (!qword_27DF0EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE68);
  }

  return result;
}

unint64_t sub_238591750()
{
  result = qword_27DF0EE70;
  if (!qword_27DF0EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EE70);
  }

  return result;
}

uint64_t BackgroundRefreshTileView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE78, &qword_238771BF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = *v0;
  v6 = *(v0 + 8);
  *v4 = sub_23875D030();
  *(v4 + 1) = 0x402C000000000000;
  v4[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE80, &unk_238771BF8);
  sub_238591990(v5, v6, &v4[*(v7 + 44)]);
  v9[32] = v5;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  type metadata accessor for BankConnectReconfirmationView(0);
  sub_23843A3E8(&qword_27DF0EE88, &qword_27DF0EE78, &qword_238771BF0);
  sub_238592AFC(&qword_27DF0EE90, type metadata accessor for BankConnectReconfirmationView);
  sub_23875DED0();

  return sub_238439884(v4, &qword_27DF0EE78, &qword_238771BF0);
}

uint64_t sub_238591990@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EE98, &qword_238771CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  sub_23875ED50();
  v21[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875CE50();
  v23 = 0;
  sub_238591CE8(&v34);
  v28 = *&v35[48];
  v29 = *&v35[64];
  v24 = v34;
  v25 = *v35;
  v26 = *&v35[16];
  v27 = *&v35[32];
  v31[1] = *v35;
  v31[2] = *&v35[16];
  v30 = *&v35[80];
  v31[0] = v34;
  v31[3] = *&v35[32];
  v31[4] = *&v35[48];
  v31[5] = *&v35[64];
  v31[6] = *&v35[80];
  sub_23843981C(&v24, &v32, &qword_27DF0EEA0, &qword_238771CA8);
  sub_238439884(v31, &qword_27DF0EEA0, &qword_238771CA8);
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  v13 = v23;
  *v11 = sub_23875CE60();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEA8, &qword_238771CB0);
  sub_2385922BC(a1 & 1, v21[0], &v11[*(v14 + 44)]);
  sub_238411E04(v11, v8);
  *&v32 = v12;
  *(&v32 + 1) = 0x4028000000000000;
  v33[0] = v13;
  *&v33[1] = *v22;
  *&v33[17] = *&v22[16];
  *&v33[81] = *&v22[80];
  *&v33[65] = *&v22[64];
  *&v33[97] = *&v22[96];
  *&v33[112] = *&v22[111];
  *&v33[33] = *&v22[32];
  *&v33[49] = *&v22[48];
  v15 = *&v33[96];
  *(a3 + 96) = *&v33[80];
  *(a3 + 112) = v15;
  *(a3 + 128) = *&v33[112];
  v16 = *&v33[32];
  *(a3 + 32) = *&v33[16];
  *(a3 + 48) = v16;
  v17 = *&v33[64];
  *(a3 + 64) = *&v33[48];
  *(a3 + 80) = v17;
  v18 = *v33;
  *a3 = v32;
  *(a3 + 16) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEB0, &qword_238771CB8);
  sub_238411E04(v8, a3 + *(v19 + 48));
  sub_23843981C(&v32, &v34, &qword_27DF0EEB8, &qword_238771CC0);
  sub_238439884(v11, &qword_27DF0EE98, &qword_238771CA0);
  sub_238439884(v8, &qword_27DF0EE98, &qword_238771CA0);
  *&v35[65] = *&v22[64];
  *&v35[81] = *&v22[80];
  *v36 = *&v22[96];
  *&v35[1] = *v22;
  *&v35[17] = *&v22[16];
  *&v35[33] = *&v22[32];
  *&v34 = v12;
  *(&v34 + 1) = 0x4028000000000000;
  v35[0] = v13;
  *&v36[15] = *&v22[111];
  *&v35[49] = *&v22[48];
  sub_238439884(&v34, &qword_27DF0EEB8, &qword_238771CC0);
}

uint64_t sub_238591CE8@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875D030();
  LOBYTE(v17[0]) = 0;
  sub_238591ED0(v13);
  *&v12[7] = v13[0];
  *&v12[55] = v14;
  *&v12[39] = v13[2];
  *&v12[23] = v13[1];
  v3 = v17[0];
  *&v15 = v2;
  *(&v15 + 1) = 0x4020000000000000;
  v16[0] = v17[0];
  v4 = *&v12[16];
  *&v16[1] = *v12;
  *&v16[64] = *(&v14 + 1);
  v5 = *&v12[32];
  *&v16[49] = *&v12[48];
  *&v16[33] = *&v12[32];
  v6 = *v12;
  *&v16[17] = *&v12[16];
  *&v11[23] = *v16;
  *&v11[7] = v15;
  *&v11[71] = *&v16[48];
  *&v11[87] = *&v16[64];
  *&v11[55] = *&v16[32];
  *&v11[39] = *&v16[16];
  v7 = *v11;
  *(a1 + 33) = *&v11[16];
  *(a1 + 17) = v7;
  *(a1 + 96) = *&v11[79];
  v8 = *&v11[48];
  *(a1 + 81) = *&v11[64];
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x800000023878B890;
  *(a1 + 16) = 0;
  *(a1 + 65) = v8;
  *(a1 + 49) = *&v11[32];
  v17[0] = v2;
  v17[1] = 0x4020000000000000;
  v18 = v3;
  v19 = v6;
  *&v22[15] = *&v12[63];
  *v22 = *&v12[48];
  v21 = v5;
  v20 = v4;

  sub_23843981C(&v15, &v10, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v17, &qword_27DF0BA70, &unk_238769590);
}

uint64_t sub_238591ED0@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v34 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_23875D980();
  v11 = sub_23875DA60();
  v36 = v12;
  v37 = v11;
  v35 = v13;
  v38 = v14;

  sub_2384397FC(v7, v9, v6 & 1);

  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v34 localizedStringForKey:v15 value:v16 table:v17];

  sub_23875EA80();
  v19 = sub_23875DAA0();
  v21 = v20;
  LOBYTE(v17) = v22;
  sub_23875D7F0();
  v23 = sub_23875DA60();
  v25 = v24;
  LOBYTE(v4) = v26;

  sub_2384397FC(v19, v21, v17 & 1);

  sub_23875D440();
  v27 = sub_23875DA20();
  v29 = v28;
  LOBYTE(v17) = v30;
  v32 = v31;
  sub_2384397FC(v23, v25, v4 & 1);

  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v17 & 1;
  *(a1 + 56) = v32;
  sub_23843980C(v37, v36, v35 & 1);

  sub_23843980C(v27, v29, v17 & 1);

  sub_2384397FC(v27, v29, v17 & 1);

  sub_2384397FC(v37, v36, v35 & 1);
}

uint64_t sub_2385922BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v26 = a1;
  v30 = a3;
  v29 = sub_23875CFD0();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEC0, &qword_238771CC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = v26 & 1;
  v21 = v27;
  *(v20 + 24) = v27;
  MEMORY[0x28223BE20](v21);
  *&v25[-16] = v17;
  *&v25[-8] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1F8, &unk_238769FD0);
  sub_2384D34EC();
  sub_23875E200();

  sub_23875CFC0();
  sub_23843A3E8(&qword_27DF0EEC8, &qword_27DF0EEC0, &qword_238771CC8);
  sub_238592AFC(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
  v23 = v29;
  v22 = v30;
  sub_23875DB30();
  (*(v3 + 8))(v6, v23);
  (*(v8 + 8))(v11, v7);
  LODWORD(v17) = sub_23875D420();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EED0, &unk_238771CD0);
  *(v22 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_23859274C@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  BankConnectReconfirmationView.init(showDeniedAccounts:)(1, a1);
}

__n128 sub_238592808@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v26 = a1;
  *(&v26 + 1) = a2;
  sub_2384397A8();

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D850();
  v11 = sub_23875D9E0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v6, v8, v10 & 1);

  sub_23875E4A0();
  sub_23875C9C0();
  sub_23875E4A0();
  sub_23875C9C0();

  *(a3 + 96) = v30;
  *(a3 + 112) = v31;
  result = v32;
  *(a3 + 32) = v26;
  *(a3 + 48) = v27;
  *(a3 + 64) = v28;
  *(a3 + 80) = v29;
  *(a3 + 192) = v22;
  *(a3 + 208) = v23;
  *(a3 + 224) = v24;
  *(a3 + 240) = v25;
  *(a3 + 128) = v32;
  *(a3 + 144) = v19;
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  *(a3 + 160) = v20;
  *(a3 + 176) = v21;
  return result;
}

uint64_t sub_238592A2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_238592A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_238592AE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2385926F4();
}

uint64_t sub_238592AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AccountNameTokenProvider()
{
  result = qword_27DF0EED8;
  if (!qword_27DF0EED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238592BB8()
{
  result = sub_23875BCB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238592C34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[3];
  v11 = v1[2];
  v12 = *v1;

  v5 = sub_23875E030();
  v6 = *(type metadata accessor for AccountNameTokenProvider() + 24);
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632F0;
  v8 = sub_23875BC60();
  *(v7 + 56) = sub_238449184(0, &qword_27DF0EEE8, 0x277CCAD78);
  *(v7 + 64) = sub_23859383C();
  *(v7 + 32) = v8;
  v9 = sub_23875EF80();
  *(a1 + 69) = 0;
  *(a1 + 70) = -5120;
  *(a1 + 16) = v11;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0xD000000000000010;
  *(a1 + 48) = 0x8000000238788350;
  strcpy((a1 + 56), "Account Name");
  *a1 = v12;
  *(a1 + 8) = v3;
  result = swift_allocObject();
  *(result + 16) = v9;
  *(a1 + 72) = &unk_2387654B0;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_238592DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238592E2C(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_238592E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a1;
  v96 = a2;
  v94 = type metadata accessor for AccountNameTokenProvider();
  v90 = *(v94 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v94);
  v87 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  v84 = sub_23875BF90();
  v9 = *(v84 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  v88 = *(v93 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v93);
  v89 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v77 - v15;
  MEMORY[0x28223BE20](v16);
  v85 = &v77 - v17;
  MEMORY[0x28223BE20](v18);
  v82 = &v77 - v19;
  MEMORY[0x28223BE20](v20);
  v78 = &v77 - v21;
  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = sub_238451F44(a3);
  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v23 = v22;
  result = sub_23875EB40();
  if (result < 2)
  {
LABEL_29:

    return MEMORY[0x277D84F90];
  }

  v25 = MEMORY[0x277D84F90];
  v81 = *(v23 + 16);
  if (!v81)
  {
LABEL_16:

    v45 = *(v25 + 16);
    if (v45)
    {
      *&v97 = MEMORY[0x277D84F90];
      sub_2385FE8FC(0, v45, 0);
      v46 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v84 = v25;
      v47 = v25 + v46;
      v48 = *(v88 + 72);
      v91 = v89 + 8;
      v92 = v48;
      v49 = v86;
      v51 = v96;
      v50 = v97;
      do
      {
        v52 = v85;
        sub_238593638(v47, v85);
        sub_238593638(v52, v49);
        v53 = v93;
        v54 = (v49 + *(v93 + 48));
        v55 = *v54;
        v56 = v54[1];
        v57 = v52;
        v58 = v89;
        sub_238453E10(v57, v89);
        v59 = *(v91 + *(v53 + 48));

        v60 = v94;
        *v8 = v95;
        *(v8 + 1) = v51;
        *(v8 + 2) = v55;
        *(v8 + 3) = v56;
        v61 = *(v60 + 24);
        v62 = sub_23875BCB0();
        v63 = *(v62 - 8);
        (*(v63 + 32))(&v8[v61], v58, v62);
        (*(v63 + 8))(v49, v62);
        *&v97 = v50;
        v65 = *(v50 + 16);
        v64 = *(v50 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_2385FE8FC(v64 > 1, v65 + 1, 1);
          v50 = v97;
        }

        *(v50 + 16) = v65 + 1;
        sub_238593774(v8, v50 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v65);
        v47 += v92;
        --v45;
      }

      while (v45);
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    v66 = *(v50 + 16);
    if (v66)
    {
      v101 = MEMORY[0x277D84F90];
      sub_2385FE78C(0, v66, 0);
      v67 = v101;
      v68 = v50 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v69 = *(v90 + 72);
      do
      {
        v70 = v87;
        sub_2385937D8(v68, v87);
        *&v98[8] = v94;
        *&v98[16] = &off_284B2ABE0;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v97);
        sub_238593774(v70, boxed_opaque_existential_1);
        v98[24] = 3;
        v101 = v67;
        v73 = *(v67 + 16);
        v72 = *(v67 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_2385FE78C((v72 > 1), v73 + 1, 1);
          v67 = v101;
        }

        *(v67 + 16) = v73 + 1;
        v74 = (v67 + 48 * v73);
        v75 = v97;
        v76 = *v98;
        *(v74 + 57) = *&v98[9];
        v74[2] = v75;
        v74[3] = v76;
        v68 += v69;
        --v66;
      }

      while (v66);

      return v67;
    }

    goto LABEL_29;
  }

  v26 = 0;
  v79 = (v9 + 8);
  v27 = v78;
  v80 = v23;
  while (v26 < *(v23 + 16))
  {
    v28 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v91 = *(v88 + 72);
    v92 = v28;
    sub_238593638(v23 + v28 + v91 * v26, v27);
    v29 = (v27 + *(v93 + 48));
    v31 = *v29;
    v30 = v29[1];
    v101 = v31;
    v102 = v30;
    v32 = v83;
    sub_23875C080();
    v99 = &unk_284B24E38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7F0, &unk_238771D20);
    sub_2384B6A0C();
    sub_2385936A8();
    sub_2384B6A60();
    v33 = v27;
    v34 = v84;
    sub_23875EF30();
    (*v79)(v32, v34);
    v35 = sub_23875EAE0();
    v37 = v36;

    *&v97 = v35;
    *(&v97 + 1) = v37;
    v101 = v95;
    v102 = v96;
    sub_2384397A8();
    v99 = sub_23875F240();
    v100 = v38;
    v39 = sub_23875F280();

    if (v39)
    {
      sub_238453E10(v33, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v33;
      }

      else
      {
        sub_2385FE940(0, *(v25 + 16) + 1, 1);
        v27 = v78;
        v25 = v103;
      }

      v23 = v80;
      v42 = v91;
      v41 = v92;
      v44 = *(v25 + 16);
      v43 = *(v25 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2385FE940(v43 > 1, v44 + 1, 1);
        v27 = v78;
        v25 = v103;
      }

      *(v25 + 16) = v44 + 1;
      result = sub_238453E10(v82, v25 + v41 + v44 * v42);
    }

    else
    {
      result = sub_23859370C(v33);
      v23 = v80;
      v27 = v33;
    }

    if (v81 == ++v26)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238593638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2385936A8()
{
  result = qword_27DF0B800;
  if (!qword_27DF0B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B7F0, &unk_238771D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B800);
  }

  return result;
}

uint64_t sub_23859370C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A58, &unk_2387641B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238593774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNameTokenProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385937D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNameTokenProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23859383C()
{
  result = qword_27DF0EEF0;
  if (!qword_27DF0EEF0)
  {
    sub_238449184(255, &qword_27DF0EEE8, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EEF0);
  }

  return result;
}

uint64_t sub_2385938A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AccountInfoView(0);
  sub_23843981C(v1 + *(v12 + 36), v11, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C600();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t AccountInfoView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEF8, &qword_238771D30);
  sub_238593E88();
  return sub_23875C8F0();
}

uint64_t sub_238593B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for AccountInfoView(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23875ED50();
  v23 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v21 = &v19;
  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v19 - 2) = a1;
  v20 = sub_23875D760();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F010, &qword_238771F68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F018, &unk_238771F70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C9C8, &unk_23877A850);
  v8 = sub_23843A3E8(&qword_27DF0F020, &qword_27DF0F018, &unk_238771F70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v10 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  v25 = v9;
  v26 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v12 = v24;
  sub_23875C410();
  sub_238597070(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountInfoView);
  v13 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v14 = swift_allocObject();
  sub_2385970D8(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AccountInfoView);
  v15 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF10, &qword_238771D38) + 36));
  *v15 = sub_238597140;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = sub_23875E020();
  LOBYTE(v14) = sub_23875D780();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEF8, &qword_238771D30);
  v18 = v12 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v14;
  return result;
}

unint64_t sub_238593E88()
{
  result = qword_27DF0EF00;
  if (!qword_27DF0EF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EEF8, &qword_238771D30);
    sub_238593F40();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EF00);
  }

  return result;
}

unint64_t sub_238593F40()
{
  result = qword_27DF0EF08;
  if (!qword_27DF0EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EF10, &qword_238771D38);
    sub_23843A3E8(&qword_27DF0EF18, &qword_27DF0EF20, &unk_238771D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EF08);
  }

  return result;
}

uint64_t sub_238594014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F018, &unk_238771F70);
  v3 = *(*(v11[0] - 8) + 64);
  MEMORY[0x28223BE20](v11[0]);
  v5 = v11 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_23875D020();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F028, &qword_238771F90);
  v7 = sub_238594274(a1, &v5[*(v6 + 44)]);
  MEMORY[0x28223BE20](v7);
  v11[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C9C8, &unk_23877A850);
  sub_23843A3E8(&qword_27DF0F020, &qword_27DF0F018, &unk_238771F70);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CA00, &unk_238771F80);
  v9 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  v11[2] = v8;
  v11[3] = v9;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  sub_238439884(v5, &qword_27DF0F018, &unk_238771F70);
}

uint64_t sub_238594274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for AccountInfoView.HeaderView(0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F030, &qword_238771F98);
  v7 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v12);
  v54 = &v51 - v13;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_238758A00();
  (*(*(v14 - 8) + 16))(v6, a1, v14);
  v15 = type metadata accessor for AccountInfoView(0);
  v16 = v15[6];
  v17 = (a1 + v15[5]);
  v19 = *v17;
  v18 = v17[1];
  v20 = *(a1 + v16);
  v21 = *(a1 + v16 + 8);
  v22 = (a1 + v15[7]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v3[8];

  sub_23875D490();
  v26 = &v6[v3[5]];
  *v26 = v19;
  *(v26 + 1) = v18;
  v27 = &v6[v3[6]];
  *v27 = v20;
  *(v27 + 1) = v21;
  v28 = &v6[v3[7]];
  *v28 = v23;
  *(v28 + 1) = v24;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2385970D8(v6, v11, type metadata accessor for AccountInfoView.HeaderView);
  v29 = &v11[*(v52 + 36)];
  v30 = v68;
  v31 = v70;
  v32 = v71;
  *(v29 + 4) = v69;
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
  v33 = v66;
  v34 = v67;
  *v29 = v65;
  *(v29 + 1) = v33;
  *(v29 + 2) = v34;
  *(v29 + 3) = v30;
  v35 = v54;
  sub_2385973AC(v11, v54);
  sub_23875E4A0();
  sub_23875C9C0();
  LOBYTE(v18) = sub_23875D770();
  sub_23875C3D0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v64 = 0;
  v44 = v55;
  sub_23843981C(v35, v55, &qword_27DF0F030, &qword_238771F98);
  v45 = v56;
  sub_23843981C(v44, v56, &qword_27DF0F030, &qword_238771F98);
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F038, &qword_238771FA0) + 48);
  v47 = v62;
  *(v46 + 64) = v61;
  *(v46 + 80) = v47;
  *(v46 + 96) = v63;
  v48 = v58;
  *v46 = v57;
  *(v46 + 16) = v48;
  v49 = v60;
  *(v46 + 32) = v59;
  *(v46 + 48) = v49;
  *(v46 + 112) = v18;
  *(v46 + 120) = v37;
  *(v46 + 128) = v39;
  *(v46 + 136) = v41;
  *(v46 + 144) = v43;
  *(v46 + 152) = 0;
  sub_238439884(v35, &qword_27DF0F030, &qword_238771F98);
  sub_238439884(v44, &qword_27DF0F030, &qword_238771F98);
}

uint64_t sub_2385946DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_23875D2A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA00, &unk_238771F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D250();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875C990();
  v11 = sub_23843A3E8(&qword_27DF0CA08, &qword_27DF0CA00, &unk_238771F80);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_238594950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AccountInfoView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  sub_238597070(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountInfoView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_2385970D8(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AccountInfoView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

uint64_t sub_238594C70()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385938A4(v4);
  sub_23875C5F0();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_238594DB4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for AccountInfoView(0) + 32));
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v2, 22, v3);
}

uint64_t sub_238594E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFB8, &qword_238771EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFC0, &qword_238771EE8);
  v7 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v57 - v10;
  MEMORY[0x28223BE20](v11);
  v63 = &v57 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for AccountLogo();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFC8, &qword_238771EF8);
  v23 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v60 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = sub_238758A00();
  (*(*(v28 - 8) + 16))(v22, a1, v28);
  v29 = (a1 + *(type metadata accessor for AccountInfoView.HeaderView(0) + 28));
  v31 = *v29;
  v30 = v29[1];
  KeyPath = swift_getKeyPath();
  v33 = &v22[v19[5]];
  *v33 = v31;
  *(v33 + 1) = v30;
  v22[v19[6]] = 5;
  v34 = &v22[v19[7]];
  *v34 = KeyPath;
  v34[8] = 0;
  v35 = &v22[v19[8]];
  LOBYTE(v66) = 0;

  sub_23875E1A0();
  v36 = *(&v67 + 1);
  *v35 = v67;
  *(v35 + 1) = v36;
  v37 = v19[9];
  v38 = sub_238757B60();
  (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
  sub_23843981C(v18, v15, &qword_27DF0A0C0, &qword_238771EF0);
  sub_23875E1A0();
  sub_238439884(v18, &qword_27DF0A0C0, &qword_238771EF0);
  v39 = v19[10];
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *&v22[v39] = v67;
  sub_238597020(&qword_27DF0EFD0, type metadata accessor for AccountLogo);
  sub_23875DBF0();
  sub_238596EE4(v22);
  LOBYTE(v39) = sub_23875D7D0();
  sub_23875C3D0();
  v40 = &v27[*(v58 + 36)];
  *v40 = v39;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  *v6 = sub_23875D030();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFD8, &qword_238771F38);
  sub_238595504(a1, &v6[*(v45 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  v46 = v62;
  sub_2384396E4(v6, v62, &qword_27DF0EFB8, &qword_238771EE0);
  v47 = (v46 + *(v61 + 36));
  v48 = v72;
  v47[4] = v71;
  v47[5] = v48;
  v47[6] = v73;
  v49 = v68;
  *v47 = v67;
  v47[1] = v49;
  v50 = v70;
  v47[2] = v69;
  v47[3] = v50;
  v51 = v63;
  sub_2384396E4(v46, v63, &qword_27DF0EFC0, &qword_238771EE8);
  v52 = v60;
  sub_23843981C(v27, v60, &qword_27DF0EFC8, &qword_238771EF8);
  v53 = v64;
  sub_2384126FC(v51, v64);
  v54 = v65;
  sub_23843981C(v52, v65, &qword_27DF0EFC8, &qword_238771EF8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFE0, &qword_238771F40);
  sub_2384126FC(v53, v54 + *(v55 + 48));
  sub_23841276C(v51);
  sub_238439884(v27, &qword_27DF0EFC8, &qword_238771EF8);
  sub_23841276C(v53);
  sub_238439884(v52, &qword_27DF0EFC8, &qword_238771EF8);
}

uint64_t sub_238595504@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v76 = sub_238758A00();
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFE8, &qword_238771F48);
  v79 = *(v81 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v70 - v8;
  sub_23875ED50();
  v78 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for AccountInfoView.HeaderView(0);
  v10 = (a1 + *(v9 + 20));
  v11 = v10[1];
  v87 = *v10;
  v88 = v11;
  v73 = sub_2384397A8();

  v12 = sub_23875DAA0();
  v14 = v13;
  v87 = v12;
  v88 = v13;
  v16 = v15 & 1;
  v89 = v15 & 1;
  v90 = v17;
  v72 = v9;
  v18 = *(v9 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  sub_23875D480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFF0, &qword_238771F50);
  sub_238596F40();
  v19 = a1;
  sub_23875DD70();

  sub_2384397FC(v12, v14, v16);

  v20 = v75;
  v21 = v74;
  v22 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277CC7158], v76);
  sub_238597020(&unk_27DF0B400, MEMORY[0x277CC7180]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v20 + 8))(v21, v22);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v87 == v83)
  {
    v27 = (v19 + *(v72 + 24));
    v28 = v27[1];
    v87 = *v27;
    v88 = v28;

    v23 = sub_23875DAA0();
    v24 = v29;
    v26 = v30;
    v25 = (v31 & 1);
    sub_23843980C(v23, v29, v31 & 1);
  }

  v74 = v25;
  v75 = v26;
  v76 = v23;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v32 = qword_2814F1B90;
  v33 = sub_23875EA50();
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = [v32 localizedStringForKey:v33 value:v34 table:v35];

  v37 = sub_23875EA80();
  v39 = v38;

  v87 = v37;
  v88 = v39;
  v71 = sub_23875DAA0();
  v41 = v40;
  v72 = v40;
  LOBYTE(v36) = v42;
  v70 = v43;
  v44 = sub_23875D7A0();
  sub_23875C3D0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  LODWORD(v36) = v36 & 1;
  LOBYTE(v87) = v36;
  LODWORD(v73) = v36;
  LOBYTE(v83) = 0;
  v53 = v79;
  v54 = *(v79 + 16);
  v55 = v80;
  v56 = v81;
  v54(v80, v82, v81);
  v57 = v77;
  v54(v77, v55, v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F008, &qword_238771F58);
  v59 = &v57[*(v58 + 48)];
  v60 = v76;
  *v59 = v76;
  v59[1] = v24;
  LOBYTE(v56) = v74;
  v61 = v75;
  v59[2] = v74;
  v59[3] = v61;
  v62 = &v57[*(v58 + 64)];
  v63 = v71;
  *&v83 = v71;
  *(&v83 + 1) = v41;
  LOBYTE(v84) = v36;
  v64 = v70;
  *(&v84 + 1) = v70;
  LOBYTE(v85) = v44;
  *(&v85 + 1) = v46;
  *v86 = v48;
  *&v86[8] = v50;
  *&v86[16] = v52;
  v86[24] = 0;
  sub_238476F5C(v60, v24, v56, v61);
  sub_23843981C(&v83, &v87, &qword_27DF0AB28, &qword_238771F60);
  sub_238476FA0(v60, v24, v56, v61);
  v65 = *v86;
  *(v62 + 2) = v85;
  *(v62 + 3) = v65;
  *(v62 + 57) = *&v86[9];
  v66 = v84;
  *v62 = v83;
  *(v62 + 1) = v66;
  v67 = *(v53 + 8);
  v68 = v81;
  v67(v82, v81);
  v87 = v63;
  v88 = v72;
  v89 = v73;
  v90 = v64;
  v91 = v44;
  v92 = v46;
  v93 = v48;
  v94 = v50;
  v95 = v52;
  v96 = 0;
  sub_238439884(&v87, &qword_27DF0AB28, &qword_238771F60);
  sub_238476FA0(v60, v24, v56, v61);
  v67(v80, v68);
}

uint64_t sub_238595C94()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(type metadata accessor for AccountInfoView.HeaderView(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
  sub_23875D470();
}

uint64_t sub_238595D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFA0, &qword_238771EC8);
  sub_238594E80(v3, a2 + *(v8 + 44));
  v9 = sub_23875D770();
  sub_23875C3D0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFA8, &qword_238771ED0) + 36);
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  sub_238597070(v3, v7, type metadata accessor for AccountInfoView.HeaderView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_2385970D8(v7, v20 + v19, type metadata accessor for AccountInfoView.HeaderView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EFB0, &qword_238771ED8);
  v22 = (a2 + *(result + 36));
  *v22 = sub_238596EB8;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

uint64_t sub_238595F1C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_23875D310();
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF68, &qword_238771EA0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF70, &qword_238771EA8);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF78, &qword_238771EB0);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF80, &qword_238771EB8);
  v20 = *(v19 - 8);
  v37 = v19;
  v38 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF88, &qword_238771EC0);
  sub_23843A3E8(&qword_27DF0EF90, &qword_27DF0EF88, &qword_238771EC0);
  sub_23875D9C0();
  sub_23875D300();
  v24 = sub_23843A3E8(&qword_27DF0EF98, &qword_27DF0EF68, &qword_238771EA0);
  v25 = MEMORY[0x277CDE0D0];
  v26 = v39;
  sub_23875DF50();
  (*(v40 + 8))(v5, v26);
  (*(v33 + 8))(v9, v6);
  v42 = v6;
  v43 = v26;
  v44 = v24;
  v45 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23875DD80();
  (*(v34 + 8))(v13, v10);
  v42 = v10;
  v43 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_23875DB70();
  (*(v36 + 8))(v18, v29);
  v42 = v29;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_23875DE10();
  return (*(v38 + 8))(v23, v30);
}

uint64_t sub_238596400@<X0>(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x800000023878B960;
  a1[2] = 0xD000000000000028;
  a1[3] = 0x800000023878B980;
  a1[4] = 0xD000000000000024;
  a1[5] = 0x800000023878B9B0;
  a1[6] = 0xD000000000000030;
  a1[7] = 0x800000023878B9E0;
  a1[8] = 0xD000000000000020;
  a1[9] = 0x800000023878BA20;
  a1[10] = 0xD00000000000002CLL;
  a1[11] = 0x800000023878BA50;
}

uint64_t sub_238596560@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v1 = sub_23875D590();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875D030();
  LOBYTE(v11) = 0;
  sub_2385967A4(v14);
  *&v13[7] = v14[0];
  *&v13[23] = v14[1];
  *&v13[39] = v14[2];
  *&v13[55] = v14[3];
  v7 = v11;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  *&v15[0] = qword_27DF2F920;

  v8 = sub_23875E2D0();
  *(&v12[1] + 1) = *&v13[16];
  *(&v12[2] + 1) = *&v13[32];
  *(&v12[3] + 1) = *&v13[48];
  v11 = v6;
  LOBYTE(v12[0]) = v7;
  *(v12 + 1) = *v13;
  *&v12[4] = *&v13[63];
  *(&v12[4] + 1) = v8;
  sub_23875D580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F060, &qword_238772038);
  sub_23859758C();
  sub_23875DD60();
  (*(v2 + 8))(v5, v1);
  v15[2] = v12[1];
  v15[3] = v12[2];
  v15[4] = v12[3];
  v15[5] = v12[4];
  v15[0] = v11;
  v15[1] = v12[0];
  return sub_238439884(v15, &qword_27DF0F060, &qword_238772038);
}

uint64_t sub_2385967A4@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v41 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  sub_23875D820();
  v12 = sub_23875DA60();
  v14 = v13;
  v16 = v15;

  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D420();
  v17 = sub_23875DA20();
  v43 = v18;
  v44 = v17;
  v42 = v19;
  v45 = v20;
  sub_2384397FC(v12, v14, v16 & 1);

  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v41 localizedStringForKey:v21 value:v22 table:v23];

  sub_23875EA80();
  v25 = sub_23875DAA0();
  v27 = v26;
  LOBYTE(v23) = v28;
  sub_23875D7F0();
  v29 = sub_23875DA60();
  v31 = v30;
  v33 = v32;

  sub_2384397FC(v25, v27, v23 & 1);

  sub_23875D440();
  v34 = sub_23875DA20();
  v36 = v35;
  LOBYTE(v27) = v37;
  v39 = v38;
  sub_2384397FC(v29, v31, v33 & 1);

  *a1 = v44;
  *(a1 + 8) = v43;
  *(a1 + 16) = v42 & 1;
  *(a1 + 24) = v45;
  *(a1 + 32) = v34;
  *(a1 + 40) = v36;
  *(a1 + 48) = v27 & 1;
  *(a1 + 56) = v39;
  sub_23843980C(v44, v43, v42 & 1);

  sub_23843980C(v34, v36, v27 & 1);

  sub_2384397FC(v34, v36, v27 & 1);

  sub_2384397FC(v44, v43, v42 & 1);
}

uint64_t sub_238596BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_238596560(a1);
}

uint64_t sub_238596BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EEF8, &qword_238771D30);
  sub_238593E88();
  return sub_23875C8F0();
}

void sub_238596C98()
{
  sub_238758A00();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PKAnalyticsSubject(319);
    if (v1 <= 0x3F)
    {
      sub_23857F390();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238596D98()
{
  sub_238758A00();
  if (v0 <= 0x3F)
  {
    sub_238596E28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238596E28()
{
  if (!qword_27DF0EF60)
  {
    v0 = sub_23875D4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0EF60);
    }
  }
}

uint64_t sub_238596EE4(uint64_t a1)
{
  v2 = type metadata accessor for AccountLogo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238596F40()
{
  result = qword_27DF0EFF8;
  if (!qword_27DF0EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EFF0, &qword_238771F50);
    sub_238596FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EFF8);
  }

  return result;
}

unint64_t sub_238596FCC()
{
  result = qword_27DF0F000;
  if (!qword_27DF0F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F000);
  }

  return result;
}

uint64_t sub_238597020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238597070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385970D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23859716C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_19Tm()
{
  v1 = (type metadata accessor for AccountInfoView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_238758A00();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C600();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2385973AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F030, &qword_238771F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23859742C()
{
  result = qword_27DF0F040;
  if (!qword_27DF0F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EFB0, &qword_238771ED8);
    sub_2385974B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F040);
  }

  return result;
}

unint64_t sub_2385974B8()
{
  result = qword_27DF0F048;
  if (!qword_27DF0F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0EFA8, &qword_238771ED0);
    sub_23843A3E8(&qword_27DF0F050, &qword_27DF0F058, qword_238771FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F048);
  }

  return result;
}

unint64_t sub_23859758C()
{
  result = qword_27DF0F068;
  if (!qword_27DF0F068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F060, &qword_238772038);
    sub_23843A3E8(&qword_27DF0F070, &qword_27DF0BA70, &unk_238769590);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F068);
  }

  return result;
}

uint64_t sub_2385976D8(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(v2 + 20));
  swift_getKeyPath();
  sub_238553A7C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23859A230(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for BankConnectAccountConnectionPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0A8, &qword_2387720D0);
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0);
  sub_2385994A4(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  sub_23843A3E8(&qword_27DF0F0A0, &qword_27DF0F0A8, &qword_2387720D0);
  sub_23875E370();
}

uint64_t sub_23859797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v146 = a2;
  v122 = a1;
  v143 = a3;
  v120 = sub_23875C880();
  v119 = *(v120 - 8);
  v3 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v116 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v115 = &v106 - v6;
  v118 = sub_23875E360();
  v117 = *(v118 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  MEMORY[0x28223BE20](v9);
  v113 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v106 - v13;
  v138 = sub_23875BCB0();
  v135 = *(v138 - 8);
  v14 = *(v135 + 64);
  MEMORY[0x28223BE20](v138);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A730, &unk_238765CD0);
  v16 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v137 = &v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v131 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v144 = &v106 - v22;
  MEMORY[0x28223BE20](v23);
  v130 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v140 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v139 = &v106 - v29;
  v30 = sub_23875C950();
  v127 = *(v30 - 8);
  v128 = v30;
  v31 = *(v127 + 64);
  MEMORY[0x28223BE20](v30);
  v126 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_238758680();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v111 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v106 - v37;
  v125 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  v39 = *(v125 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0B8, &qword_238772140);
  v123 = *(v124 - 8);
  v41 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v106 - v42;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0C0, &qword_238772148);
  v134 = *(v136 - 8);
  v43 = *(v134 + 64);
  MEMORY[0x28223BE20](v136);
  v133 = &v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v145 = &v106 - v46;
  sub_23875ED50();
  v132 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238553A7C(v146, &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v34 + 16);
  v48 = v122;
  v109 = v34 + 16;
  v108 = v47;
  v47(v38, v122, v33);
  v49 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v50 = *(v34 + 80);
  v51 = swift_allocObject();
  sub_23859A230(&v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v49, type metadata accessor for BankConnectAccountConnectionPickerView);
  v52 = *(v34 + 32);
  v110 = v33;
  v53 = v52(v51 + ((v40 + v50 + v49) & ~v50), v38, v33);
  MEMORY[0x28223BE20](v53);
  v54 = v146;
  *(&v106 - 2) = v48;
  *(&v106 - 1) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0C8, &unk_238772150);
  sub_2385995C0();
  v55 = v121;
  sub_23875E200();
  v56 = v126;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0F0E0, &qword_27DF0F0B8, &qword_238772140);
  sub_2385994A4(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  v57 = v124;
  v58 = v128;
  sub_23875DB30();
  (*(v127 + 8))(v56, v58);
  (*(v123 + 8))(v55, v57);
  v59 = v130;
  sub_238758640();
  v60 = v135;
  v61 = *(v135 + 56);
  v62 = 1;
  v63 = v138;
  v61(v59, 0, 1, v138);
  v64 = *(v54 + *(v125 + 20));
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v111;
    v67 = v110;
    v108(v111, v64 + ((v50 + 32) & ~v50) + *(v34 + 72) * (v65 - 1), v110);
    v68 = v144;
    sub_238758640();
    (*(v34 + 8))(v66, v67);
    v62 = 0;
  }

  else
  {
    v68 = v144;
  }

  v61(v68, v62, 1, v63);
  v69 = *(v129 + 48);
  v70 = v137;
  sub_23843981C(v59, v137, &unk_27DF0B520, &qword_2387681F0);
  sub_23843981C(v68, v70 + v69, &unk_27DF0B520, &qword_2387681F0);
  v71 = *(v60 + 48);
  v72 = v71(v70, 1, v63);
  v73 = v131;
  if (v72 == 1)
  {
    sub_238439884(v68, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v59, &unk_27DF0B520, &qword_2387681F0);
    if (v71(v70 + v69, 1, v63) == 1)
    {
      sub_238439884(v70, &unk_27DF0B520, &qword_2387681F0);
      v74 = 1;
      v75 = v142;
LABEL_18:
      v90 = v139;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  sub_23843981C(v70, v131, &unk_27DF0B520, &qword_2387681F0);
  if (v71(v70 + v69, 1, v63) == 1)
  {
    sub_238439884(v144, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v59, &unk_27DF0B520, &qword_2387681F0);
    (*(v60 + 8))(v73, v63);
LABEL_11:
    sub_238439884(v70, &qword_27DF0A730, &unk_238765CD0);
    v75 = v142;
    goto LABEL_12;
  }

  v91 = v70 + v69;
  v92 = v107;
  (*(v60 + 32))(v107, v91, v63);
  sub_2385994A4(&qword_27DF0A788, MEMORY[0x277CC95F0]);
  v93 = sub_23875E9E0();
  v94 = *(v60 + 8);
  v94(v92, v63);
  sub_238439884(v144, &unk_27DF0B520, &qword_2387681F0);
  sub_238439884(v59, &unk_27DF0B520, &qword_2387681F0);
  v94(v73, v63);
  sub_238439884(v70, &unk_27DF0B520, &qword_2387681F0);
  v75 = v142;
  if (v93)
  {
    v74 = 1;
    goto LABEL_18;
  }

LABEL_12:
  v76 = v114;
  sub_23875E350();
  v77 = v115;
  sub_2384D5138(v115);
  v78 = v119;
  v79 = v116;
  v80 = v120;
  (*(v119 + 104))(v116, *MEMORY[0x277CDF9D8], v120);
  v81 = sub_23875C870();
  v82 = *(v78 + 8);
  v82(v79, v80);
  v82(v77, v80);
  if (v81)
  {
    v83 = 0x4028000000000000;
  }

  else
  {
    v83 = 0x4030000000000000;
  }

  v84 = sub_23875D780();
  v85 = v113;
  (*(v117 + 32))(v113, v76, v118);
  v86 = &v85[*(v75 + 36)];
  *v86 = v84;
  *(v86 + 1) = 0;
  *(v86 + 2) = v83;
  *(v86 + 3) = 0;
  *(v86 + 4) = v83;
  v86[40] = 0;
  v87 = v85;
  v88 = v112;
  sub_2384396E4(v87, v112, &qword_27DF09510, &qword_2387637D0);
  v89 = v88;
  v90 = v139;
  sub_2384396E4(v89, v139, &qword_27DF09510, &qword_2387637D0);
  v74 = 0;
LABEL_19:
  (*(v141 + 56))(v90, v74, 1, v75);
  v96 = v133;
  v95 = v134;
  v97 = v90;
  v98 = *(v134 + 16);
  v99 = v145;
  v100 = v136;
  v98(v133, v145, v136);
  v101 = v140;
  sub_23843981C(v97, v140, &qword_27DF09528, &qword_238765CE0);
  v102 = v143;
  v98(v143, v96, v100);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0E8, &unk_238772160);
  sub_23843981C(v101, &v102[*(v103 + 48)], &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v97, &qword_27DF09528, &qword_238765CE0);
  v104 = *(v95 + 8);
  v104(v99, v100);
  sub_238439884(v101, &qword_27DF09528, &qword_238765CE0);
  v104(v96, v100);
}

uint64_t sub_2385988D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758530();
  v7 = sub_23875A9F0();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *(type metadata accessor for BankConnectAccountConnectionPickerView(0) + 24);
  sub_23843981C(v6, v3, &qword_27DF0D390, &unk_238763350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  sub_23875E2F0();
  sub_238439884(v6, &qword_27DF0D390, &unk_238763350);
}

uint64_t sub_238598A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v51 = a3;
  v4 = sub_23875A9F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A790, &qword_238765D10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = sub_238758680();
  v53 = *(v21 - 8);
  v22 = *(v53 + 64);
  MEMORY[0x28223BE20](v21);
  v52 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for BankConnectAccountConnectionPickerItemView(0);
  v24 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F0C8, &unk_238772150);
  v26 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v42 - v27;
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(v53 + 16);
  v50 = v21;
  v28(v52, a1, v21);
  sub_238758530();
  (*(v5 + 56))(v20, 0, 1, v4);
  v29 = *(type metadata accessor for BankConnectAccountConnectionPickerView(0) + 24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  MEMORY[0x23EE62DC0](v30);
  v31 = *(v8 + 48);
  sub_23843981C(v20, v11, &qword_27DF0D390, &unk_238763350);
  sub_23843981C(v17, &v11[v31], &qword_27DF0D390, &unk_238763350);
  v32 = *(v5 + 48);
  if (v32(v11, 1, v4) != 1)
  {
    v36 = v43;
    sub_23843981C(v11, v43, &qword_27DF0D390, &unk_238763350);
    if (v32(&v11[v31], 1, v4) != 1)
    {
      v37 = v42;
      (*(v5 + 32))(v42, &v11[v31], v4);
      sub_2385994A4(&qword_27DF0A798, MEMORY[0x277CC8058]);
      v35 = sub_23875E9E0();
      v38 = *(v5 + 8);
      v38(v37, v4);
      sub_238439884(v17, &qword_27DF0D390, &unk_238763350);
      sub_238439884(v20, &qword_27DF0D390, &unk_238763350);
      v38(v36, v4);
      sub_238439884(v11, &qword_27DF0D390, &unk_238763350);
      v34 = v50;
      goto LABEL_10;
    }

    sub_238439884(v17, &qword_27DF0D390, &unk_238763350);
    sub_238439884(v20, &qword_27DF0D390, &unk_238763350);
    (*(v5 + 8))(v36, v4);
    v34 = v50;
    goto LABEL_8;
  }

  sub_238439884(v17, &qword_27DF0D390, &unk_238763350);
  sub_238439884(v20, &qword_27DF0D390, &unk_238763350);
  v33 = v32(&v11[v31], 1, v4);
  v34 = v50;
  if (v33 != 1)
  {
LABEL_8:
    sub_238439884(v11, &qword_27DF0A790, &qword_238765D10);
    v35 = 0;
    goto LABEL_10;
  }

  sub_238439884(v11, &qword_27DF0D390, &unk_238763350);
  v35 = 1;
LABEL_10:
  v39 = v48;
  (*(v53 + 32))(v48, v52, v34);
  *(v39 + *(v49 + 20)) = v35 & 1;
  v40 = v45;
  sub_23859A230(v39, v45, type metadata accessor for BankConnectAccountConnectionPickerItemView);
  *(v40 + *(v47 + 36)) = 0;
  sub_2384396E4(v40, v51, &qword_27DF0F0C8, &unk_238772150);
}

uint64_t sub_238599128()
{
  v1 = type metadata accessor for ContinuousGroupBoxStyle();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F088, &qword_2387720C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F090, &qword_2387720C8);
  sub_238599374();
  sub_23875E470();
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v1 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF0F0B0, &qword_27DF0F088, &qword_2387720C0);
  sub_2385994A4(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_238475660(v4);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_238599374()
{
  result = qword_27DF0F098;
  if (!qword_27DF0F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F090, &qword_2387720C8);
    sub_23843A3E8(&qword_27DF0F0A0, &qword_27DF0F0A8, &qword_2387720D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F098);
  }

  return result;
}

uint64_t sub_238599424@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectAccountConnectionPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23859797C(a1, v6, a2);
}

uint64_t sub_2385994A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385994EC()
{
  v1 = *(type metadata accessor for BankConnectAccountConnectionPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_238758680() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2385988D0();
}

unint64_t sub_2385995C0()
{
  result = qword_27DF0F0D0;
  if (!qword_27DF0F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F0C8, &unk_238772150);
    sub_2385994A4(&qword_27DF0F0D8, type metadata accessor for BankConnectAccountConnectionPickerItemView);
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F0D0);
  }

  return result;
}

uint64_t sub_2385996C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875D590();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F100, &qword_2387721F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  *v11 = sub_23875CE60();
  *(v11 + 1) = 0x4020000000000000;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F108, &qword_2387721F8);
  sub_23859992C(v1, &v11[*(v12 + 44)]);
  sub_23875D580();
  sub_23843A3E8(&qword_27DF0F110, &qword_27DF0F100, &qword_2387721F0);
  sub_23875DD60();
  (*(v4 + 8))(v7, v3);
  sub_238439884(v11, &qword_27DF0F100, &qword_2387721F0);
  v13 = sub_23875D770();
  sub_23875C3D0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F118, &qword_238772200) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = sub_23875D7D0();
  sub_23875C3D0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F120, &qword_238772208);
  v33 = a1 + *(result + 36);
  *v33 = v23;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_23859992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = a2;
  v2 = sub_23875CF90();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7C8, &qword_238765DE0);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7D0, &qword_238765DE8);
  v9 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v37 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F128, &qword_238772210);
  v12 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v47 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v45 = &v37 - v18;
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_23875E0D0();
  v20 = sub_23875DFC0();
  KeyPath = swift_getKeyPath();
  *&v59 = v19;
  *(&v59 + 1) = KeyPath;
  *v60 = v20;
  sub_23875D870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
  sub_238448F8C();
  sub_23875DAF0();

  if (*(v44 + *(type metadata accessor for BankConnectAccountConnectionPickerItemView(0) + 20)))
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  (*(v40 + 32))(v11, v8, v41);
  v23 = v37;
  *&v11[*(v38 + 36)] = v22;
  sub_23875CF80();
  sub_23859A350();
  sub_23875DDE0();
  (*(v42 + 8))(v23, v43);
  sub_238439884(v11, &qword_27DF0A7D0, &qword_238765DE8);
  v24 = v45;
  sub_23875C8B0();
  sub_238439884(v16, &qword_27DF0F128, &qword_238772210);
  v25 = sub_23875D030();
  v50 = 0;
  sub_238599F10(&v59);
  v53 = *&v60[16];
  v54 = *&v60[32];
  v51 = v59;
  v52 = *v60;
  v56[2] = *&v60[16];
  v56[3] = *&v60[32];
  v56[4] = *&v60[48];
  v56[1] = *v60;
  v55 = *&v60[48];
  v56[0] = v59;
  sub_23843981C(&v51, &v57, &qword_27DF0F138, &qword_238772248);
  sub_238439884(v56, &qword_27DF0F138, &qword_238772248);
  *&v49[23] = v52;
  *&v49[39] = v53;
  *&v49[55] = v54;
  *&v49[71] = v55;
  *&v49[7] = v51;
  LOBYTE(v23) = v50;
  v26 = v47;
  sub_2384132D8(v24, v47);
  v27 = v48;
  sub_2384132D8(v26, v48);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F140, &qword_238772250);
  v29 = v27 + *(v28 + 48);
  *&v57 = v25;
  *(&v57 + 1) = 0x4008000000000000;
  v58[0] = v23;
  *&v58[1] = *v49;
  *&v58[17] = *&v49[16];
  *&v58[65] = *&v49[64];
  *&v58[80] = *&v49[79];
  *&v58[49] = *&v49[48];
  *&v58[33] = *&v49[32];
  v30 = *v58;
  *v29 = v57;
  *(v29 + 16) = v30;
  v31 = *&v58[16];
  v32 = *&v58[32];
  v33 = *&v58[48];
  v34 = *&v58[64];
  *(v29 + 96) = *&v58[80];
  *(v29 + 64) = v33;
  *(v29 + 80) = v34;
  *(v29 + 32) = v31;
  *(v29 + 48) = v32;
  v35 = v27 + *(v28 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_23843981C(&v57, &v59, &qword_27DF0F148, &qword_238772258);
  sub_238439884(v24, &qword_27DF0F128, &qword_238772210);
  *&v60[33] = *&v49[32];
  *&v60[49] = *&v49[48];
  *v61 = *&v49[64];
  *&v60[1] = *v49;
  *&v59 = v25;
  *(&v59 + 1) = 0x4008000000000000;
  v60[0] = v23;
  *&v61[15] = *&v49[79];
  *&v60[17] = *&v49[16];
  sub_238439884(&v59, &qword_27DF0F148, &qword_238772258);
  sub_238439884(v26, &qword_27DF0F128, &qword_238772210);
}

uint64_t sub_238599F10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_238757FC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v48 = sub_2387585B0();
  v49 = v7;
  sub_2384397A8();
  v8 = sub_23875DAA0();
  v42 = v9;
  v43 = v8;
  HIDWORD(v40) = v10;
  v44 = v11;
  KeyPath = swift_getKeyPath();
  sub_2387585C0();
  v12 = sub_238757FB0();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v48 = v12;
  v49 = v14;
  v15 = sub_23875DAA0();
  v17 = v16;
  v19 = v18;
  LODWORD(v48) = sub_23875D440();
  v20 = sub_23875DA20();
  v22 = v21;
  v24 = v23;
  sub_2384397FC(v15, v17, v19 & 1);

  sub_23875D7F0();
  v25 = sub_23875DA60();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_2384397FC(v20, v22, v24 & 1);

  v32 = BYTE4(v40) & 1;
  LOBYTE(v48) = BYTE4(v40) & 1;
  v47 = BYTE4(v40) & 1;
  v33 = v29 & 1;
  v46 = v29 & 1;
  v34 = v29 & 1;
  v36 = v42;
  v35 = v43;
  *a1 = v43;
  *(a1 + 8) = v36;
  *(a1 + 16) = v32;
  v37 = KeyPath;
  *(a1 + 24) = v44;
  *(a1 + 32) = v37;
  *(a1 + 40) = 1;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v34;
  *(a1 + 72) = v31;
  v38 = v35;
  sub_23843980C(v35, v36, v32);

  sub_23843980C(v25, v27, v33);

  sub_2384397FC(v25, v27, v33);

  sub_2384397FC(v38, v36, v48);
}

uint64_t sub_23859A230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23859A2C0()
{
  result = sub_238758680();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23859A350()
{
  result = qword_27DF0F130;
  if (!qword_27DF0F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A7D0, &qword_238765DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09678, &unk_2387639F0);
    sub_238448F8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F130);
  }

  return result;
}

unint64_t sub_23859A418()
{
  result = qword_27DF0F150;
  if (!qword_27DF0F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F120, &qword_238772208);
    sub_23859A4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F150);
  }

  return result;
}

unint64_t sub_23859A4A4()
{
  result = qword_27DF0F158;
  if (!qword_27DF0F158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F118, &qword_238772200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F100, &qword_2387721F0);
    sub_23843A3E8(&qword_27DF0F110, &qword_27DF0F100, &qword_2387721F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F158);
  }

  return result;
}

uint64_t sub_23859A5A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ReturnDetails.ViewModel(0);
  if (*(v0 + v8[11] + 8) || *(v0 + v8[12] + 8))
  {
    return 1;
  }

  v10 = v8;
  sub_23843981C(v0 + v8[15], v7, &qword_27DF0D040, &qword_2387676A0);
  v11 = sub_23875B940();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v7, 1, v11);
  sub_238439884(v7, &qword_27DF0D040, &qword_2387676A0);
  result = 1;
  if (v13 == 1)
  {
    sub_23843981C(v0 + v10[18], v4, &qword_27DF0D040, &qword_2387676A0);
    v14 = v12(v4, 1, v11) != 1;
    sub_238439884(v4, &qword_27DF0D040, &qword_2387676A0);
    return v14;
  }

  return result;
}

uint64_t sub_23859A76C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ReturnDetails(0);
  sub_23843981C(v1 + *(v12 + 24), v11, &qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C6D0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23859A974@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ReturnDetails(0);
  sub_23843981C(v1 + *(v12 + 28), v11, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ReturnDetails.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_23875CE00();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F160, &qword_238772290);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F168, &qword_238772298);
  v10 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v28 - v11;
  v35 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F170, &qword_2387722A0);
  sub_23843A3E8(&qword_27DF0F178, &qword_27DF0F170, &qword_2387722A0);
  sub_23875C410();
  v13 = [objc_opt_self() systemGroupedBackgroundColor];
  v14 = sub_23875DFB0();
  v15 = sub_23875D780();
  v16 = &v9[*(v6 + 36)];
  *v16 = v14;
  v16[8] = v15;
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F180, &qword_2387722A8);
  sub_23859F5C4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F1A0, &qword_2387722B8);
  v18 = sub_23843A3E8(&qword_27DF0F1A8, &qword_27DF0F1A0, &qword_2387722B8);
  v37 = v17;
  v38 = v18;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  sub_238439884(v9, &qword_27DF0F160, &qword_238772290);
  v19 = &v12[*(v29 + 36)];
  v20 = sub_23875A710();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, v2, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  v22 = &v19[*(type metadata accessor for OrderDetailsRefreshableModifier() + 20)];
  v36 = 0;
  sub_23875E1A0();
  v23 = v38;
  *v22 = v37;
  *(v22 + 1) = v23;
  v25 = v30;
  v24 = v31;
  v26 = v32;
  (*(v31 + 104))(v30, *MEMORY[0x277CDDDC0], v32);
  sub_23859F6A8();
  sub_23875DE50();
  (*(v24 + 8))(v25, v26);
  return sub_238439884(v12, &qword_27DF0F168, &qword_238772298);
}

uint64_t sub_23859AFBC(uint64_t a1)
{
  v2 = sub_23875D320();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *&v6[-4] = a1;
  sub_23875D020();
  v6[3] = 0;
  sub_2385A1A4C(&qword_27DF0F1E0, MEMORY[0x277CE0428]);
  sub_23875F7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F1E8, &qword_238772398);
  sub_23843A3E8(&qword_27DF0F1F0, &qword_27DF0F1E8, &qword_238772398);
  sub_23875C3F0();
}

uint64_t sub_23859B1C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v237 = a2;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D768, &qword_23876D868);
  v210 = *(v212 - 8);
  v3 = *(v210 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v184 - v4;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D770, &qword_23876D870);
  v211 = *(v213 - 8);
  v5 = *(v211 + 64);
  MEMORY[0x28223BE20](v213);
  v209 = &v184 - v6;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D920, &qword_23876D990);
  v233 = *(v234 - 8);
  v7 = *(v233 + 64);
  MEMORY[0x28223BE20](v234);
  v207 = &v184 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D778, &qword_23876D878);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v236 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v235 = &v184 - v13;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F1F8, &qword_2387723A0);
  v203 = *(v205 - 8);
  v14 = *(v203 + 64);
  MEMORY[0x28223BE20](v205);
  v201 = &v184 - v15;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F200, &qword_2387723A8);
  v204 = *(v206 - 8);
  v16 = *(v204 + 64);
  MEMORY[0x28223BE20](v206);
  v202 = &v184 - v17;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F208, &qword_2387723B0);
  v231 = *(v232 - 8);
  v18 = *(v231 + 64);
  MEMORY[0x28223BE20](v232);
  v200 = &v184 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F210, &qword_2387723B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v244 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v249 = &v184 - v24;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F218, &qword_2387723C0);
  v195 = *(v197 - 8);
  v25 = *(v195 + 64);
  MEMORY[0x28223BE20](v197);
  v193 = &v184 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F220, &qword_2387723C8);
  v196 = *(v198 - 8);
  v27 = *(v196 + 64);
  MEMORY[0x28223BE20](v198);
  v194 = &v184 - v28;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F228, &qword_2387723D0);
  v226 = *(v227 - 8);
  v29 = *(v226 + 64);
  MEMORY[0x28223BE20](v227);
  v192 = &v184 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v228 = &v184 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v225 = &v184 - v35;
  v239 = sub_23875B940();
  v229 = *(v239 - 8);
  v36 = *(v229 + 64);
  MEMORY[0x28223BE20](v239);
  v199 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v191 = &v184 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F230, &qword_2387723D8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v243 = &v184 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v248 = &v184 - v44;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F238, &qword_2387723E0);
  v217 = *(v219 - 8);
  v45 = *(v217 + 64);
  MEMORY[0x28223BE20](v219);
  v215 = &v184 - v46;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F240, &qword_2387723E8);
  v218 = *(v220 - 8);
  v47 = *(v218 + 64);
  MEMORY[0x28223BE20](v220);
  v216 = &v184 - v48;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F248, &qword_2387723F0);
  v223 = *(v224 - 8);
  v49 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v214 = &v184 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F250, &qword_2387723F8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v242 = &v184 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v247 = &v184 - v55;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F258, &qword_238772400);
  v187 = *(v189 - 8);
  v56 = *(v187 + 64);
  MEMORY[0x28223BE20](v189);
  v185 = &v184 - v57;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F260, &qword_238772408);
  v188 = *(v190 - 8);
  v58 = *(v188 + 64);
  MEMORY[0x28223BE20](v190);
  v186 = &v184 - v59;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F268, &qword_238772410);
  v221 = *(v222 - 8);
  v60 = *(v221 + 64);
  MEMORY[0x28223BE20](v222);
  v184 = &v184 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F270, &qword_238772418);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v241 = &v184 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v246 = &v184 - v66;
  v67 = type metadata accessor for ReturnDetailsContentsSection(0);
  v68 = *(*(v67 - 1) + 64);
  MEMORY[0x28223BE20](v67);
  v240 = &v184 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v245 = &v184 - v71;
  sub_23875ED50();
  v230 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v72 = type metadata accessor for ReturnDetails.ViewModel(0);
  v73 = v245;
  sub_2385A1A94(&a1[v72[6]], v245, type metadata accessor for ReturnDetailsHeader.ViewModel);
  v74 = v72[7];
  v75 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  sub_2385A1A94(&a1[v74], v73 + v75[5], type metadata accessor for ReturnDetailsStatusLabel.ViewModel);
  v76 = &a1[v72[8]];
  v77 = *v76;
  v78 = *(v76 + 1);
  v79 = &a1[v72[9]];
  v80 = *v79;
  v81 = *(v79 + 1);
  v82 = &a1[v72[17]];
  v83 = *v82;
  v84 = *(v82 + 1);
  v85 = &a1[v72[13]];
  v86 = *v85;
  v87 = *(v85 + 1);
  v88 = &a1[v72[14]];
  v238 = v72;
  v89 = *&a1[v72[10]];
  v90 = *v88;
  v91 = *(v88 + 1);
  v92 = (v73 + v75[6]);
  *v92 = v77;
  v92[1] = v78;
  v93 = (v73 + v75[7]);
  *v93 = v80;
  v93[1] = v81;
  v94 = (v73 + v75[8]);
  *v94 = v83;
  v94[1] = v84;
  v95 = (v73 + v75[9]);
  *v95 = v86;
  v95[1] = v87;
  v96 = (v73 + v75[10]);
  *v96 = v90;
  v96[1] = v91;
  *(v73 + v75[11]) = v89;
  v97 = &a1[*(type metadata accessor for ReturnDetails(0) + 20)];
  v98 = *(v97 + 3);
  v252 = *(v97 + 2);
  v253 = v98;
  v254 = *(v97 + 4);
  v255 = *(v97 + 10);
  v99 = *(v97 + 1);
  v250 = *v97;
  v251 = v99;
  v100 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1D0();
  v101 = (v73 + v67[5]);
  v102 = v259;
  v101[2] = v258;
  v101[3] = v102;
  v101[4] = *v260;
  *(v101 + 73) = *&v260[9];
  v103 = v257;
  *v101 = v256;
  v101[1] = v103;
  v104 = v67[6];
  *(v73 + v104) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v105 = v73 + v67[7];
  *v105 = swift_getKeyPath();
  *(v105 + 8) = 0;
  v106 = sub_23859A5A0();
  if (v106)
  {
    MEMORY[0x28223BE20](v106);
    *(&v184 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F348, &qword_2387724D8);
    sub_2385A2204();
    v107 = v185;
    sub_23875D9C0();
    v108 = sub_23843A3E8(&qword_27DF0F398, &qword_27DF0F258, &qword_238772400);
    v109 = v186;
    v110 = v189;
    sub_23875DB70();
    (*(v187 + 8))(v107, v110);
    *&v250 = v110;
    *(&v250 + 1) = v108;
    swift_getOpaqueTypeConformance2();
    v111 = v184;
    v112 = v190;
    sub_23875DD80();
    (*(v188 + 8))(v109, v112);
    v113 = v221;
    v114 = v246;
    v115 = v222;
    (*(v221 + 32))(v246, v111, v222);
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v114 = v246;
    v115 = v222;
    v113 = v221;
  }

  v117 = (*(v113 + 56))(v114, v116, 1, v115);
  v118 = v238;
  v119 = v247;
  v120 = v239;
  v121 = v229;
  if (*&a1[v238[11] + 8] || *&a1[v238[12] + 8])
  {
    MEMORY[0x28223BE20](v117);
    *(&v184 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F300, &qword_2387724B8);
    sub_2385A1FD0();
    v122 = v215;
    sub_23875D9C0();
    v123 = sub_23843A3E8(&qword_27DF0F340, &qword_27DF0F238, &qword_2387723E0);
    v124 = v216;
    v125 = v219;
    sub_23875DB70();
    (*(v217 + 8))(v122, v125);
    *&v250 = v125;
    *(&v250 + 1) = v123;
    swift_getOpaqueTypeConformance2();
    v126 = v214;
    v127 = v220;
    sub_23875DD80();
    (*(v218 + 8))(v124, v127);
    v128 = v223;
    v129 = v224;
    (*(v223 + 32))(v119, v126, v224);
    v130 = 0;
  }

  else
  {
    v130 = 1;
    v129 = v224;
    v128 = v223;
  }

  (*(v128 + 56))(v119, v130, 1, v129);
  v131 = v225;
  sub_23843981C(&v100[v118[15]], v225, &qword_27DF0D040, &qword_2387676A0);
  v132 = *(v121 + 48);
  if (v132(v131, 1, v120) == 1)
  {
    sub_238439884(v131, &qword_27DF0D040, &qword_2387676A0);
    (*(v226 + 56))(v248, 1, 1, v227);
  }

  else
  {
    v133 = v191;
    v134 = (*(v121 + 32))(v191, v131, v120);
    MEMORY[0x28223BE20](v134);
    *(&v184 - 2) = v100;
    *(&v184 - 1) = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2B8, &qword_238772498);
    v135 = v121;
    sub_2385A1D9C();
    v136 = v193;
    sub_23875D9C0();
    v137 = sub_23843A3E8(&qword_27DF0F2F8, &qword_27DF0F218, &qword_2387723C0);
    v138 = v194;
    v139 = v197;
    sub_23875DB70();
    (*(v195 + 8))(v136, v139);
    *&v250 = v139;
    *(&v250 + 1) = v137;
    swift_getOpaqueTypeConformance2();
    v140 = v192;
    v141 = v198;
    sub_23875DD80();
    v142 = v138;
    v121 = v135;
    v120 = v239;
    (*(v196 + 8))(v142, v141);
    v143 = v226;
    v144 = v248;
    v145 = v140;
    v118 = v238;
    v146 = v227;
    (*(v226 + 32))(v248, v145, v227);
    (*(v143 + 56))(v144, 0, 1, v146);
    (*(v121 + 8))(v133, v120);
  }

  v147 = v228;
  sub_23843981C(&v100[v118[18]], v228, &qword_27DF0D040, &qword_2387676A0);
  if (v132(v147, 1, v120) == 1)
  {
    sub_238439884(v147, &qword_27DF0D040, &qword_2387676A0);
    v148 = (*(v231 + 56))(v249, 1, 1, v232);
  }

  else
  {
    v149 = *(v121 + 32);
    v150 = v121;
    v151 = v199;
    v152 = v149(v199, v147, v120);
    MEMORY[0x28223BE20](v152);
    *(&v184 - 2) = v100;
    *(&v184 - 1) = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F280, &qword_238772480);
    sub_2385A1B68();
    v153 = v201;
    sub_23875D9C0();
    v154 = sub_23843A3E8(&qword_27DF0F2B0, &qword_27DF0F1F8, &qword_2387723A0);
    v155 = v202;
    v156 = v205;
    sub_23875DB70();
    (*(v203 + 8))(v153, v156);
    *&v250 = v156;
    *(&v250 + 1) = v154;
    swift_getOpaqueTypeConformance2();
    v157 = v200;
    v158 = v206;
    sub_23875DD80();
    (*(v204 + 8))(v155, v158);
    v159 = v231;
    v160 = v249;
    v161 = v232;
    (*(v231 + 32))(v249, v157, v232);
    (*(v159 + 56))(v160, 0, 1, v161);
    v148 = (*(v150 + 8))(v151, v120);
  }

  v162 = v247;
  if (*(*&v100[v118[19]] + 16))
  {
    MEMORY[0x28223BE20](v148);
    *(&v184 - 2) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968);
    sub_23853250C();
    v163 = v208;
    sub_23875D9C0();
    v164 = sub_23843A3E8(&qword_27DF0D918, &qword_27DF0D768, &qword_23876D868);
    v165 = v209;
    v166 = v212;
    sub_23875DB70();
    (*(v210 + 8))(v163, v166);
    *&v250 = v166;
    *(&v250 + 1) = v164;
    swift_getOpaqueTypeConformance2();
    v167 = v207;
    v168 = v213;
    sub_23875DD80();
    (*(v211 + 8))(v165, v168);
    v169 = v233;
    v170 = v235;
    v171 = v234;
    (*(v233 + 32))(v235, v167, v234);
    v172 = 0;
  }

  else
  {
    v172 = 1;
    v170 = v235;
    v171 = v234;
    v169 = v233;
  }

  (*(v169 + 56))(v170, v172, 1, v171);
  LODWORD(v239) = sub_23875D770();
  v173 = v240;
  sub_2385A1A94(v245, v240, type metadata accessor for ReturnDetailsContentsSection);
  v174 = v241;
  sub_23843981C(v246, v241, &qword_27DF0F270, &qword_238772418);
  v175 = v242;
  sub_23843981C(v162, v242, &qword_27DF0F250, &qword_2387723F8);
  v176 = v243;
  sub_23843981C(v248, v243, &qword_27DF0F230, &qword_2387723D8);
  v177 = v244;
  sub_23843981C(v249, v244, &qword_27DF0F210, &qword_2387723B8);
  v178 = v236;
  sub_23843981C(v170, v236, &qword_27DF0D778, &qword_23876D878);
  v179 = v173;
  v180 = v237;
  sub_2385A1A94(v179, v237, type metadata accessor for ReturnDetailsContentsSection);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F278, &qword_238772478);
  sub_23843981C(v174, v180 + v181[12], &qword_27DF0F270, &qword_238772418);
  sub_23843981C(v175, v180 + v181[16], &qword_27DF0F250, &qword_2387723F8);
  sub_23843981C(v176, v180 + v181[20], &qword_27DF0F230, &qword_2387723D8);
  sub_23843981C(v177, v180 + v181[24], &qword_27DF0F210, &qword_2387723B8);
  sub_23843981C(v178, v180 + v181[28], &qword_27DF0D778, &qword_23876D878);
  v182 = v180 + v181[32];
  *v182 = v239;
  *(v182 + 8) = 0u;
  *(v182 + 24) = 0u;
  *(v182 + 40) = 1;
  sub_238439884(v170, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v249, &qword_27DF0F210, &qword_2387723B8);
  sub_238439884(v248, &qword_27DF0F230, &qword_2387723D8);
  sub_238439884(v247, &qword_27DF0F250, &qword_2387723F8);
  sub_238439884(v246, &qword_27DF0F270, &qword_238772418);
  sub_2385A1B04(v245);
  sub_238439884(v178, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v244, &qword_27DF0F210, &qword_2387723B8);
  sub_238439884(v243, &qword_27DF0F230, &qword_2387723D8);
  sub_238439884(v242, &qword_27DF0F250, &qword_2387723F8);
  sub_238439884(v241, &qword_27DF0F270, &qword_238772418);
  sub_2385A1B04(v240);
}

uint64_t sub_23859CFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F380, &qword_2387724F0);
  sub_2385A2404();
  sub_23875E3D0();
  sub_23875CE90();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F360, &qword_2387724E0) + 36);
  (*(v5 + 16))(a2 + v10, v8, v4);
  v11 = *(v5 + 56);
  v11(a2 + v10, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F348, &qword_2387724D8) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v13 + v14, v8, v4);
  v11(v13 + v14, 0, 1, v4);

  *v13 = KeyPath;
  return result;
}

uint64_t sub_23859D218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a1;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = sub_2387591F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, *MEMORY[0x277CC77C8], v11, v14);
  v17 = sub_238758A40();
  v19 = v18;
  (*(v12 + 8))(v16, v11);
  sub_23859A974(v10);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF9D8], v3);
  LOBYTE(v12) = sub_23875C870();
  v20 = *(v4 + 8);
  v20(v7, v3);
  v20(v10, v3);
  if (v12)
  {
    v21 = 0x4028000000000000;
  }

  else
  {
    v21 = 0x4030000000000000;
  }

  v23[2] = sub_23875E020();
  result = sub_23875E2D0();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = 0x4028000000000000;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = v21;
  *(a2 + 48) = 0;
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_23859D494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F338, &qword_2387724D0);
  sub_23843A3E8(&qword_27DF0F330, &qword_27DF0F338, &qword_2387724D0);
  sub_23875E3D0();
  sub_23875CE90();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F318, &qword_2387724C0) + 36);
  (*(v5 + 16))(a2 + v10, v8, v4);
  v11 = *(v5 + 56);
  v11(a2 + v10, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F300, &qword_2387724B8) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v13 + v14, v8, v4);
  v11(v13 + v14, 0, 1, v4);

  *v13 = KeyPath;
  return result;
}

uint64_t sub_23859D734@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2387591F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReturnDetails.ViewModel(0);
  v10 = (a1 + *(v9 + 44));
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    (*(v5 + 104))(v8, *MEMORY[0x277CC77C8], v4);

    v30 = sub_238758A40();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v30 = 0;
    v14 = 0;
    v12 = 0;
  }

  v15 = (a1 + *(v9 + 48));
  v16 = v15[1];
  if (v16)
  {
    v29 = v12;
    v17 = *v15;
    v18 = qword_2814F0880;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_2814F1B90;
    v20 = sub_23875EA50();
    v21 = sub_23875EA50();
    v22 = sub_23875EA50();
    v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

    v24 = sub_23875EA80();
    v26 = v25;

    v12 = v29;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v17 = 0;
  }

  v27 = v30;
  *a2 = v30;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v24;
  a2[5] = v26;
  a2[6] = v17;
  a2[7] = v16;
  sub_2385570E8(v27, v14);
  sub_2385570E8(v24, v26);
  sub_23855712C(v24, v26);
  return sub_23855712C(v27, v14);
}

uint64_t sub_23859DA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v18 - 2) = a1;
  *(&v18 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2F0, &qword_2387724B0);
  sub_23843A3E8(&qword_27DF0F2E8, &qword_27DF0F2F0, &qword_2387724B0);
  sub_23875E3D0();
  sub_23875CE90();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2D0, &qword_2387724A0) + 36);
  (*(v7 + 16))(a3 + v12, v10, v6);
  v13 = *(v7 + 56);
  v13(a3 + v12, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F2B8, &qword_238772498) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v15 + v16, v10, v6);
  v13(v15 + v16, 0, 1, v6);

  *v15 = KeyPath;
  return result;
}

uint64_t sub_23859DCA4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v80 = a2;
  v86 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = (&v70 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3A0, &qword_238772530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v70 - v11;
  v12 = sub_23875B940();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v18 = type metadata accessor for ReturnDetails(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E288, &qword_23876F500);
  v82 = *(v22 - 8);
  v83 = v22;
  v23 = *(v82 + 64);
  MEMORY[0x28223BE20](v22);
  v81 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  sub_2385A1A94(a1, v21, type metadata accessor for ReturnDetails);
  v71 = *(v13 + 16);
  v72 = v13 + 16;
  v71(v17, v80, v12);
  v28 = *(v19 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = *(v13 + 80);
  v31 = (v20 + v30 + v29) & ~v30;
  v76 = v14;
  v70 = v28 | v30;
  v32 = swift_allocObject();
  v73 = v29;
  v33 = v32 + v29;
  v34 = v13;
  v75 = v21;
  sub_2385A19D4(v21, v33, type metadata accessor for ReturnDetails);
  v35 = *(v13 + 32);
  v74 = v31;
  v77 = v17;
  v35(v32 + v31, v17, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0B0, &unk_23876EF30);
  sub_23843A3E8(&qword_27DF0E0B8, &qword_27DF0E0B0, &unk_23876EF30);
  v80 = v27;
  v36 = a1;
  v37 = v78;
  sub_23875E200();
  v38 = type metadata accessor for ReturnDetails.ViewModel(0);
  sub_23843981C(v36 + *(v38 + 64), v37, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v34 + 48))(v37, 1, v12) == 1)
  {
    sub_238439884(v37, &qword_27DF0D040, &qword_2387676A0);
    v39 = 1;
    v40 = v84;
  }

  else
  {
    v35(v79, v37, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2387632F0;
    v42 = (v36 + *(v38 + 68));
    v44 = *v42;
    v43 = v42[1];
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_238448C58();
    *(v41 + 32) = v44;
    *(v41 + 40) = v43;
    v45 = qword_2814F0880;

    v78 = v35;
    if (v45 != -1)
    {
      swift_once();
    }

    v46 = qword_2814F1B90;
    v47 = sub_23875EA50();
    v48 = sub_23875EA50();
    v49 = sub_23875EA50();
    v50 = [v46 localizedStringForKey:v47 value:v48 table:v49];

    sub_23875EA80();
    v51 = sub_23875EAA0();
    v53 = v52;

    v87 = v51;
    v88 = v53;
    v54 = v75;
    sub_2385A1A94(v36, v75, type metadata accessor for ReturnDetails);
    v55 = v77;
    v56 = v79;
    v71(v77, v79, v12);
    v57 = v74;
    v58 = swift_allocObject();
    sub_2385A19D4(v54, v58 + v73, type metadata accessor for ReturnDetails);
    v78(v58 + v57, v55, v12);
    sub_2384397A8();
    v40 = v84;
    sub_23875E230();
    (*(v34 + 8))(v56, v12);
    v39 = 0;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  (*(*(v59 - 8) + 56))(v40, v39, 1, v59);
  v61 = v81;
  v60 = v82;
  v62 = *(v82 + 16);
  v63 = v80;
  v64 = v83;
  v62(v81, v80, v83);
  v65 = v85;
  sub_23843981C(v40, v85, &qword_27DF0F3A0, &qword_238772530);
  v66 = v86;
  v62(v86, v61, v64);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3A8, &qword_238772538);
  sub_23843981C(v65, &v66[*(v67 + 48)], &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v40, &qword_27DF0F3A0, &qword_238772530);
  v68 = *(v60 + 8);
  v68(v63, v64);
  sub_238439884(v65, &qword_27DF0F3A0, &qword_238772530);
  return (v68)(v61, v64);
}

__n128 sub_23859E500@<Q0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875CE60();
  v16 = 1;
  sub_23859E5E4(&v10);

  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

uint64_t sub_23859E5E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CC77C8], v2);
  v7 = sub_238758A40();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v18[0] = v7;
  v18[1] = v9;
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_23875E0D0();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v7) = v7 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  sub_23843980C(v10, v12, v7);

  sub_2384397FC(v10, v12, v7);
}

uint64_t sub_23859E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v18 - 2) = a1;
  *(&v18 - 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  sub_23875E3D0();
  sub_23875CE90();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F298, &qword_238772488) + 36);
  (*(v7 + 16))(a3 + v12, v10, v6);
  v13 = *(v7 + 56);
  v13(a3 + v12, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F280, &qword_238772480) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v15 + v16, v10, v6);
  v13(v15 + v16, 0, 1, v6);

  *v15 = KeyPath;
  return result;
}

uint64_t sub_23859EAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v23 = a1;
  v24 = sub_23875B940();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = type metadata accessor for ReturnDetails(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2387591F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x277CC77C8], v7, v10);
  v13 = sub_238758A40();
  v15 = v14;
  (*(v8 + 8))(v12, v7);
  v27 = v13;
  v28 = v15;
  sub_2385A1A94(v23, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetails);
  v16 = v24;
  (*(v3 + 16))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v24);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = (v6 + *(v3 + 80) + v17) & ~*(v3 + 80);
  v19 = swift_allocObject();
  sub_2385A19D4(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for ReturnDetails);
  (*(v3 + 32))(v19 + v18, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_2384397A8();
  return sub_23875E230();
}

uint64_t sub_23859EDA4()
{
  v0 = sub_23875C6D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23859A76C(v4);
  sub_23875C6A0();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_23859EEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  MEMORY[0x28223BE20](v17);
  v24[-2] = a1;
  v24[0] = v14;
  v24[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D908, &unk_23876D980);
  sub_238532714();
  sub_238532768();
  sub_23875E3B0();
  sub_23875CE90();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8E0, &qword_23876D970) + 36);
  (*(v5 + 16))(a2 + v18, v8, v4);
  v19 = *(v5 + 56);
  v19(a2 + v18, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v21 + v22, v8, v4);
  v19(v21 + v22, 0, 1, v4);

  *v21 = KeyPath;
  return result;
}

double sub_23859F264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReturnDetails.ViewModel(0) + 76));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  sub_23875E1A0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_23859F354(uint64_t a1)
{
  v2 = sub_23875D2A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F1A0, &qword_2387722B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875D290();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 2) = a1;
  type metadata accessor for ReturnDetailsMerchantImage();
  sub_2385A1A4C(&qword_27DF0F1D8, type metadata accessor for ReturnDetailsMerchantImage);
  sub_23875C4D0();
  v10 = sub_23843A3E8(&qword_27DF0F1A8, &qword_27DF0F1A0, &qword_2387722B8);
  MEMORY[0x23EE61E80](v8, v4, v10);
  (*(v5 + 8))(v8, v4);
}

unint64_t sub_23859F5C4()
{
  result = qword_27DF0F188;
  if (!qword_27DF0F188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F160, &qword_238772290);
    sub_23843A3E8(&qword_27DF0F190, &qword_27DF0F198, &qword_2387722B0);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F188);
  }

  return result;
}

unint64_t sub_23859F6A8()
{
  result = qword_27DF0F1B0;
  if (!qword_27DF0F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F168, &qword_238772298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F160, &qword_238772290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F180, &qword_2387722A8);
    sub_23859F5C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0F1A0, &qword_2387722B8);
    sub_23843A3E8(&qword_27DF0F1A8, &qword_27DF0F1A0, &qword_2387722B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2385A1A4C(&qword_27DF0D6D8, type metadata accessor for OrderDetailsRefreshableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0F1B0);
  }

  return result;
}

uint64_t sub_23859F860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for ReturnDetails.ViewModel(0);
  sub_2385A1A94(a1 + *(v4 + 20), a2, type metadata accessor for MerchantImage.ViewModel);
  v5 = (a1 + *(type metadata accessor for ReturnDetails(0) + 20));
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = *(v5 + 10);
  v10 = *v5;
  v11 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1D0();
  v6 = type metadata accessor for ReturnDetailsMerchantImage();
  v7 = (a2 + *(v6 + 20));
  v7[2] = v18;
  v7[3] = v19;
  v7[4] = *v20;
  *(v7 + 73) = *&v20[9];
  *v7 = v16;
  v7[1] = v17;
  v8 = *(v6 + 24);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
}

void sub_23859FA50()
{
  type metadata accessor for ReturnDetails.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23859FD98(319, &qword_27DF0D660, &type metadata for HeaderIconVisibility, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_23859FDE8(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23859FDE8(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23859FBB0()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MerchantImage.ViewModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ReturnDetailsHeader.ViewModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ReturnDetailsStatusLabel.ViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_23859FD98(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23859FDE8(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_23859FDE8(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_23859FDE8(319, &qword_27DF0D548, MEMORY[0x277CC8398], MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
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
}

void sub_23859FD98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23859FDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

size_t sub_23859FE4C@<X0>(int *a1@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v222 = a3;
  v200 = a2;
  v226 = a1;
  v5 = sub_23875AC40();
  v6 = *(v5 - 8);
  v224 = v5;
  v225 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v199 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v214 = (&v199 - v11);
  v213 = sub_23875AD40();
  v211 = *(v213 - 8);
  v12 = *(v211 + 64);
  MEMORY[0x28223BE20](v213);
  v218 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v14 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v16 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v215 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v209 = &v199 - v21;
  v207 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v22 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v208 = (&v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v206 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v204 = &v199 - v28;
  MEMORY[0x28223BE20](v29);
  v202 = &v199 - v30;
  v31 = sub_23875AF90();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v39 = &v199 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ReturnDetails.ViewModel(0);
  v41 = v40[15];
  v42 = sub_23875B940();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v45 = (v43 + 56);
  v201 = v41;
  v44(a4 + v41, 1, 1, v42);
  v203 = v40[16];
  v44(a4 + v203, 1, 1, v42);
  v220 = v40;
  v205 = v40[18];
  v216 = v44;
  v217 = v42;
  v219 = v45;
  v44(a4 + v205, 1, 1, v42);
  v221 = a4;
  sub_238757D40();
  v46 = sub_238758D10();
  if (v46 >> 62)
  {
    v198 = v46;
    v47 = sub_23875F3A0();
    v46 = v198;
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v212 = v16;
  if (v47)
  {
    v48 = v46;
    v227 = MEMORY[0x277D84F90];
    result = sub_2385FEB6C(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      goto LABEL_71;
    }

    v50 = 0;
    v51 = v227;
    v52 = v48;
    v223 = (v48 & 0xC000000000000001);
    do
    {
      if (v223)
      {
        v53 = MEMORY[0x23EE63F70](v50, v52);
      }

      else
      {
        v53 = *(v52 + 8 * v50 + 32);
      }

      v54 = v53;
      sub_238757DA0();
      sub_23868CAF8(v54, v34, v39);
      v227 = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_2385FEB6C(v55 > 1, v56 + 1, 1);
        v51 = v227;
      }

      ++v50;
      *(v51 + 16) = v56 + 1;
      sub_2385A19D4(v39, v51 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v56, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      v52 = v48;
    }

    while (v47 != v50);
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v58 = v220;
  v57 = v221;
  *(v221 + v220[10]) = v51;
  v226 = v226;
  v59 = v200;
  v60 = [v59 merchant];
  v61 = [v60 logoName];

  if (v61)
  {
    v62 = sub_23875EA80();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = (v57 + v58[5]);
  *v65 = v62;
  v65[1] = v64;
  v66 = type metadata accessor for MerchantImage.ViewModel(0);
  v67 = v65 + v66[5];
  v68 = v226;
  sub_238757DA0();
  v69 = [v59 merchant];
  v70 = [v69 displayName];

  v71 = sub_2387586A0();
  v73 = v72;

  v200 = v66;
  v74 = (v65 + v66[6]);
  *v74 = v71;
  v74[1] = v73;
  v75 = [v222 returnNumber];
  if (v75)
  {
    v76 = v75;
    v77 = sub_23875EA80();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = v217;
  v81 = v203;
  v82 = (v57 + v58[11]);
  *v82 = v77;
  v82[1] = v79;
  v83 = [v59 customerEmailAddress];
  if (v83)
  {
    v84 = v83;
    v85 = sub_23875EA80();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = v222;
  v89 = (v57 + v58[12]);
  *v89 = v85;
  v89[1] = v87;
  v90 = [v88 trackingNumber];
  if (v90)
  {
    v91 = v90;
    v92 = sub_23875EA80();
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0;
  }

  v95 = (v57 + v58[13]);
  *v95 = v92;
  v95[1] = v94;
  v96 = [v88 carrier];
  if (v96)
  {
    v97 = v96;
    v98 = sub_23875EA80();
    v100 = v99;
  }

  else
  {
    v98 = 0;
    v100 = 0;
  }

  v101 = v202;
  v102 = (v57 + v58[14]);
  *v102 = v98;
  v102[1] = v100;
  v103 = [v88 returnManagementURL];
  if (v103)
  {
    v104 = v103;
    sub_23875B8B0();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v106 = v216;
  v107 = 1;
  v216(v101, v105, 1, v80);
  sub_2385309FC(v101, v57 + v201, &qword_27DF0D040, &qword_2387676A0);
  v108 = [v59 &off_278A55290 + 7];
  v109 = [v108 contactURL];

  v110 = v204;
  if (v109)
  {
    sub_23875B8B0();

    v107 = 0;
  }

  v111 = 1;
  v106(v110, v107, 1, v80);
  sub_2385309FC(v110, v57 + v81, &qword_27DF0D040, &qword_2387676A0);
  v112 = [v59 &off_278A55290 + 7];
  v113 = [v112 displayName];

  v114 = sub_2387586A0();
  v116 = v115;

  v117 = (v57 + v58[17]);
  *v117 = v114;
  v117[1] = v116;
  v118 = [v59 returnInfo];
  if (v118)
  {
    v119 = v118;
    v120 = [v118 returnPolicyURL];

    v121 = v206;
    sub_23875B8B0();

    v111 = 0;
    v122 = v207;
    v123 = v208;
  }

  else
  {
    v122 = v207;
    v123 = v208;
    v121 = v206;
  }

  v124 = v205;
  v216(v121, v111, 1, v217);
  sub_2385309FC(v121, v57 + v124, &qword_27DF0D040, &qword_2387676A0);
  v125 = *(v122 + 20);
  v126 = sub_23875BC40();
  v127 = *(*(v126 - 8) + 56);
  v127(&v125[v123], 1, 1, v126);
  v128 = v226;
  v129 = v59;
  v219 = v128;
  v130 = v129;
  v223 = v222;
  v131 = [v130 merchant];
  v132 = [v131 logoName];

  v216 = v125;
  v217 = v127;
  if (v132)
  {
    v133 = sub_23875EA80();
    v135 = v134;
  }

  else
  {
    v133 = 0;
    v135 = 0;
  }

  v136 = v214;
  *v123 = v133;
  v123[1] = v135;
  v137 = v200;
  v138 = v123 + v200[5];
  v139 = v219;
  sub_238757DA0();
  v140 = [v130 merchant];
  v141 = [v140 displayName];

  v142 = sub_2387586A0();
  v144 = v143;

  v145 = (v123 + v137[6]);
  *v145 = v142;
  v145[1] = v144;
  v146 = v130;
  v147 = v223;
  v148 = [v223 initiationDate];
  v226 = v146;
  if (v148)
  {
    v149 = v148;
    v150 = v209;
    sub_23875BBE0();

    v151 = 0;
    v139 = v146;
    v146 = v147;
  }

  else
  {
    v151 = 1;
    v149 = v147;
    v150 = v209;
  }

  v152 = 1;
  v153 = v217;
  v217(v150, v151, 1, v126);
  v154 = v220[6];
  sub_2385309FC(v150, v216 + v123, &qword_27DF12E00, &unk_238763FC0);
  sub_2385A19D4(v123, v221 + v154, type metadata accessor for ReturnDetailsHeader.ViewModel);
  sub_238758D00();
  sub_23875AD60();
  v155 = [v147 dropOffDate];
  v156 = v215;
  if (v155)
  {
    v157 = v155;
    sub_23875BBE0();

    v152 = 0;
  }

  v158 = v226;
  v153(v156, v152, 1, v126);
  v159 = v223;
  v160 = [v223 notes];
  if (v160)
  {
    v161 = v160;
    v162 = [v158 merchant];
    v163 = [v162 displayName];

    v164 = sub_2387586A0();
    v166 = v165;

    v167 = sub_2387586A0();
    v169 = v168;

    *v136 = v164;
    v136[1] = v166;
    v136[2] = v167;
    v136[3] = v169;
    v156 = v215;
    v170 = type metadata accessor for OrderDetailsNote(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v170 - 8) + 56))(v136, 0, 1, v170);
  }

  else
  {
    v171 = type metadata accessor for OrderDetailsNote(0);
    (*(*(v171 - 8) + 56))(v136, 1, 1, v171);
  }

  v173 = v220;
  v172 = v221;
  v174 = v210;
  v175 = v212;
  (*(v211 + 32))(v212, v218, v213);
  sub_2384396E4(v156, v175 + *(v174 + 20), &qword_27DF12E00, &unk_238763FC0);
  sub_2384396E4(v136, v175 + *(v174 + 24), &qword_27DF0D5F8, &unk_23876D640);
  sub_2385A19D4(v175, v172 + v173[7], type metadata accessor for ReturnDetailsStatusLabel.ViewModel);
  v176 = [v159 statusDescription];
  if (v176)
  {
    v177 = v176;
    v178 = sub_2387586A0();
    v180 = v179;
  }

  else
  {
    v178 = 0;
    v180 = 0;
  }

  v181 = (v172 + v173[8]);
  *v181 = v178;
  v181[1] = v180;
  v182 = [v159 returnLabel];
  if (v182)
  {
    v183 = v182;
    v184 = sub_23875EA80();
    v186 = v185;
  }

  else
  {
    v184 = 0;
    v186 = 0;
  }

  v187 = (v172 + v173[9]);
  *v187 = v184;
  v187[1] = v186;
  v188 = sub_23875A540();
  v189 = v188;
  if (v188 >> 62)
  {
    v190 = sub_23875F3A0();
  }

  else
  {
    v190 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v190)
  {

    v192 = MEMORY[0x277D84F90];
LABEL_67:
    *(v172 + v173[19]) = v192;
    return result;
  }

  v227 = MEMORY[0x277D84F90];
  result = sub_2385FED48(0, v190 & ~(v190 >> 63), 0);
  if ((v190 & 0x8000000000000000) == 0)
  {
    v191 = 0;
    v192 = v227;
    v193 = v199;
    do
    {
      if ((v189 & 0xC000000000000001) != 0)
      {
        v194 = MEMORY[0x23EE63F70](v191, v189);
      }

      else
      {
        v194 = *(v189 + 8 * v191 + 32);
      }

      v195 = v194;
      sub_2387598D0();

      v227 = v192;
      v197 = *(v192 + 16);
      v196 = *(v192 + 24);
      if (v197 >= v196 >> 1)
      {
        sub_2385FED48(v196 > 1, v197 + 1, 1);
        v192 = v227;
      }

      ++v191;
      *(v192 + 16) = v197 + 1;
      (*(v225 + 32))(v192 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v197, v193, v224);
    }

    while (v190 != v191);

    v173 = v220;
    v172 = v221;
    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
  return result;
}