double sub_23DB2E224@<D0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27E2FBC18;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27E300540;
  sub_23DB702FC();
  v12 = 1.0;
  (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v4);
  v13 = sub_23DB702EC();

  (*(v5 + 8))(v9, v4);
  if (a1)
  {
    v12 = -1.0;
  }

  sub_23DB7072C();
  v15 = v14;
  v17 = v16;
  sub_23DB7062C();
  sub_23DB6F34C();
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  v18 = v22[2];
  *(a2 + 88) = v22[3];
  v19 = v22[5];
  *(a2 + 104) = v22[4];
  *(a2 + 120) = v19;
  *(a2 + 136) = v22[6];
  result = *v22;
  v21 = v22[1];
  *(a2 + 40) = v22[0];
  *(a2 + 56) = v21;
  *(a2 + 72) = v18;
  *(a2 + 152) = 1;
  return result;
}

double sub_23DB2E478@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  return sub_23DB2E224(*(v1 + 16), a1);
}

double sub_23DB2E49C@<D0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27E2FBC18;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27E300540;
  sub_23DB702FC();
  v12 = 1.0;
  (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v4);
  v13 = sub_23DB702EC();

  (*(v5 + 8))(v9, v4);
  if (a1)
  {
    v12 = -1.0;
  }

  sub_23DB7072C();
  v15 = v14;
  v17 = v16;
  sub_23DB7062C();
  sub_23DB6F34C();
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  v18 = v22[2];
  *(a2 + 88) = v22[3];
  v19 = v22[5];
  *(a2 + 104) = v22[4];
  *(a2 + 120) = v19;
  *(a2 + 136) = v22[6];
  result = *v22;
  v21 = v22[1];
  *(a2 + 40) = v22[0];
  *(a2 + 56) = v21;
  *(a2 + 72) = v18;
  *(a2 + 152) = 1;
  return result;
}

double sub_23DB2E700@<D0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27E2FBC18;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27E300540;
  sub_23DB702FC();
  v12 = 1.0;
  (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v4);
  v13 = sub_23DB702EC();

  (*(v5 + 8))(v9, v4);
  if (a1)
  {
    v12 = -1.0;
  }

  sub_23DB7072C();
  v15 = v14;
  v17 = v16;
  sub_23DB7062C();
  sub_23DB6F34C();
  *a2 = v13;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  v18 = v22[2];
  *(a2 + 88) = v22[3];
  v19 = v22[5];
  *(a2 + 104) = v22[4];
  *(a2 + 120) = v19;
  *(a2 + 136) = v22[6];
  result = *v22;
  v21 = v22[1];
  *(a2 + 40) = v22[0];
  *(a2 + 56) = v21;
  *(a2 + 72) = v18;
  *(a2 + 152) = 1;
  return result;
}

uint64_t sub_23DB2E968(__n128 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, __n128))
{
  if (*(v4 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *(v4 + 16);
  if (*(v4 + 18))
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  a1.n128_u64[0] = *(v4 + 24);
  return a4(*v4, *(v4 + 8), v6 | v7, a1);
}

uint64_t sub_23DB2E9CC(uint64_t a1)
{
  v2 = sub_23DB6F26C();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  return sub_23DB6F43C();
}

uint64_t type metadata accessor for PopupBackgroundMaskShared()
{
  result = qword_27E300648;
  if (!qword_27E300648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DB2EAE4()
{
  result = qword_27E3005E0;
  if (!qword_27E3005E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3005A8, &qword_23DB81658);
    sub_23DB2EB9C();
    sub_23DA17B80(&qword_27E300600, &qword_27E300608, &qword_23DB816D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3005E0);
  }

  return result;
}

unint64_t sub_23DB2EB9C()
{
  result = qword_27E3005E8;
  if (!qword_27E3005E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3005F0, &unk_23DB816C0);
    sub_23DB2EC54();
    sub_23DA17B80(&qword_27E2FC200, &qword_27E2FC208, &qword_23DB7CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3005E8);
  }

  return result;
}

unint64_t sub_23DB2EC54()
{
  result = qword_27E3005F8;
  if (!qword_27E3005F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3005F8);
  }

  return result;
}

unint64_t sub_23DB2ECA8()
{
  result = qword_27E300610;
  if (!qword_27E300610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3005B8, &qword_23DB81668);
    sub_23DB2ED60();
    sub_23DA17B80(&qword_27E300600, &qword_27E300608, &qword_23DB816D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300610);
  }

  return result;
}

unint64_t sub_23DB2ED60()
{
  result = qword_27E300618;
  if (!qword_27E300618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300620, &qword_23DB816D8);
    sub_23DB2EC54();
    sub_23DA17B80(&qword_27E300628, &qword_27E300630, &qword_23DB816E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300618);
  }

  return result;
}

uint64_t sub_23DB2EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300640, &unk_23DB816F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23DB2EF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300640, &unk_23DB816F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_23DB2EFC8()
{
  sub_23DB2F03C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23DB2F03C()
{
  if (!qword_27E300658)
  {
    sub_23DB6F26C();
    v0 = sub_23DB6F05C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E300658);
    }
  }
}

unint64_t sub_23DB2F13C()
{
  result = qword_27E3006C0;
  if (!qword_27E3006C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3006C8, qword_23DB81820);
    sub_23DA17B80(&qword_27E300688, &qword_27E300678, &qword_23DB81780);
    sub_23DA17B80(&qword_27E300690, &qword_27E300680, &qword_23DB81788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3006C0);
  }

  return result;
}

unint64_t sub_23DB2F294()
{
  result = qword_27E3006D0;
  if (!qword_27E3006D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3006D8, &qword_23DB81930);
    sub_23DB2F34C(&qword_27E3006E0, &qword_27E3006E8, &qword_23DB81938, sub_23DB2F3D0);
    sub_23DADC478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3006D0);
  }

  return result;
}

uint64_t sub_23DB2F34C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DB2F3D0()
{
  result = qword_27E3006F0;
  if (!qword_27E3006F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3006F8, qword_23DB81940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3006F0);
  }

  return result;
}

unint64_t sub_23DB2F458()
{
  result = qword_27E300700;
  if (!qword_27E300700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300700);
  }

  return result;
}

unint64_t sub_23DB2F4B0()
{
  result = qword_27E300708;
  if (!qword_27E300708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300708);
  }

  return result;
}

uint64_t sub_23DB2F5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v13 - v10);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEF6430](v11, a1, v7, a2);
  return sub_23DB2F6C0(v11, a4);
}

uint64_t sub_23DB2F6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double View.bulletListSpacing.getter()
{
  v0 = AXDeviceTemplateType();
  if ((v0 - 2) > 3)
  {
    return 36.0;
  }

  else
  {
    return dbl_23DB81E30[v0 - 2];
  }
}

double View.bulletItemSpacing.getter()
{
  v0 = _UISolariumEnabled();
  result = 14.0;
  if (v0)
  {
    return 30.0;
  }

  return result;
}

double Image.imageSizeModifier(_:)@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB702CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, *MEMORY[0x277CE0FE0], v2, v6);
  v9 = sub_23DB702EC();
  (*(v3 + 8))(v8, v2);
  sub_23DB7062C();
  sub_23DB6F10C();
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = v12[1];
  *(a1 + 24) = v12[0];
  *(a1 + 40) = v10;
  result = *&v13;
  *(a1 + 56) = v13;
  return result;
}

double View.titleToDescriptionSpacing.getter()
{
  v0 = 0.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = AXDeviceTemplateType();
    v0 = 15.0;
    if ((v1 - 1) <= 4)
    {
      return dbl_23DB81E50[v1 - 1];
    }
  }

  return v0;
}

double View.iconToTitleSpacing.getter()
{
  v0 = _UISolariumEnabled();
  result = 40.0;
  if (!v0)
  {
    return 20.0;
  }

  return result;
}

uint64_t AXOnboardingViewFormat.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB78D60;
  v5 = sub_23DB6FB6C();
  *(inited + 32) = v5;
  v6 = sub_23DB6FB8C();
  *(inited + 33) = v6;
  v7 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v5)
  {
    v7 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v6)
  {
    v7 = sub_23DB6FB7C();
  }

  v8 = AXDeviceTemplateType() - 1;
  if (v8 < 5)
  {
    v9 = qword_23DB81E78[v8];
  }

  sub_23DB6EFAC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300710, &qword_23DB81A50);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300718, &qword_23DB81A58);
  v20 = a2 + *(result + 36);
  *v20 = v7;
  *(v20 + 8) = v11;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = 0;
  return result;
}

uint64_t AXOnboardingBulletListFormat.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_23DB6F25C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB78D60;
  v14 = sub_23DB6FB6C();
  *(inited + 32) = v14;
  v15 = sub_23DB6FB8C();
  *(inited + 33) = v15;
  v16 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v14)
  {
    v16 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v15)
  {
    v16 = sub_23DB6FB7C();
  }

  sub_23DB330EC(v12);
  (*(v4 + 104))(v8, *MEMORY[0x277CDFA00], v3);
  sub_23DB311A4(&qword_27E2FC160, MEMORY[0x277CDFA28]);
  v17 = sub_23DB7084C();
  v18 = *(v4 + 8);
  v18(v8, v3);
  if ((v17 & 1) == 0)
  {
    AXDeviceIsPad();
  }

  v18(v12, v3);
  sub_23DB6EFAC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300720, &qword_23DB81A60);
  (*(*(v27 - 8) + 16))(a2, v30, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300728, &qword_23DB81A68);
  v29 = a2 + *(result + 36);
  *v29 = v16;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  return result;
}

double AXOnboardingTitleToListFormat.body(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _UISolariumEnabled();
  v4 = AXDeviceTemplateType() - 1;
  if (v4 <= 4)
  {
    v5 = qword_23DB81EA0[v4];
  }

  sub_23DB7062C();
  sub_23DB6F10C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300730, &qword_23DB81A70);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300738, &qword_23DB81A78) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

double sub_23DB2FF40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _UISolariumEnabled();
  v4 = AXDeviceTemplateType() - 1;
  if (v4 <= 4)
  {
    v5 = qword_23DB81EA0[v4];
  }

  sub_23DB7062C();
  sub_23DB6F10C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300730, &qword_23DB81A70);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300738, &qword_23DB81A78) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t AXOnboardingPrimaryButtonStyle.makeBody(configuration:)()
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300748, &qword_23DB81A88);
  sub_23DB30D70();
  sub_23DB311EC();
  return sub_23DB705EC();
}

uint64_t sub_23DB3012C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v85 = a2;
  v84 = sub_23DB704BC();
  v2 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v3);
  v83 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_23DB7028C();
  v82 = *(v87 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v87, v6);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v78 = &v71 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v80 = &v71 - v13;
  v14 = sub_23DB6F97C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v71 - v27;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  v29 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86, v30);
  v72 = &v71 - v31;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D8, &unk_23DB81E20);
  v79 = *(v81 - 8);
  v32 = *(v79 + 64);
  MEMORY[0x28223BE20](v81, v33);
  v74 = &v71 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300760, &qword_23DB81A90);
  v36 = *(v35 - 8);
  v76 = v35 - 8;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35 - 8, v38);
  v75 = &v71 - v39;
  *v28 = sub_23DB6F5BC();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v40 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v89 = 1;
  v41 = v15[2];
  v41(v19, v23, v14);
  v88 = 1;
  v42 = v89;
  *v40 = 0;
  v40[8] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v41(&v40[*(v43 + 48)], v19, v14);
  v44 = &v40[*(v43 + 64)];
  v45 = v88;
  *v44 = 0;
  v44[8] = v45;
  v46 = v15[1];
  v46(v23, v14);
  v46(v19, v14);
  v47 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v49 = &v28[*(v24 + 36)];
  *v49 = KeyPath;
  v49[1] = v47;
  sub_23DB310C0();
  v50 = v72;
  sub_23DB7002C();
  sub_23DB332DC(v28);
  LOBYTE(v47) = sub_23DB6FB3C();
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36);
  *v51 = v47;
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  *(v51 + 40) = 1;
  v52 = sub_23DB701AC();
  v53 = swift_getKeyPath();
  v54 = (v50 + *(v86 + 36));
  *v54 = v53;
  v54[1] = v52;
  v55 = v77;
  sub_23DB7027C();
  sub_23DB7012C();
  v56 = v78;
  sub_23DB7026C();

  v57 = *(v82 + 8);
  v58 = v87;
  v57(v55, v87);
  v59 = v80;
  MEMORY[0x23EEF6600](1);
  v57(v56, v58);
  LODWORD(v82) = *MEMORY[0x277CE0118];
  v60 = v82;
  v61 = sub_23DB6F63C();
  v62 = *(*(v61 - 8) + 104);
  v63 = v83;
  v62(v83, v60, v61);
  sub_23DB30F40();
  sub_23DB311A4(&qword_27E3007A8, MEMORY[0x277CE1260]);
  v64 = v74;
  sub_23DB6FE5C();
  sub_23DB2F6C0(v63, MEMORY[0x277CE1260]);
  v57(v59, v87);
  sub_23DB3334C(v50);
  if (sub_23DB6F99C())
  {
    v65 = 0.7;
  }

  else
  {
    v65 = 1.0;
  }

  v66 = v75;
  (*(v79 + 32))(v75, v64, v81);
  *(v66 + *(v76 + 44)) = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  v68 = v85;
  v69 = v85 + *(v67 + 36);
  v62(v69, v82, v61);
  *(v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007B8, &qword_23DB81AB8) + 36)) = 0;
  return sub_23DA17A54(v66, v68, &qword_27E300760, &qword_23DB81A90);
}

uint64_t sub_23DB30868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v68 = a2;
  v2 = sub_23DB6F97C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v61 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  v12 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E0, &qword_23DB81AC8);
  v17 = *(v16 - 8);
  *&v65 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007D0, &qword_23DB81AC0);
  v23 = *(v22 - 8);
  v67 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8, v25);
  v66 = &v61 - v26;
  *v15 = sub_23DB6F5BC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v70 = 1;
  v28 = v3[2];
  v28(v7, v11, v2);
  v69 = 1;
  v29 = v70;
  *v27 = 0;
  v27[8] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v28(&v27[*(v30 + 48)], v7, v2);
  v31 = &v27[*(v30 + 64)];
  v32 = v69;
  *v31 = 0;
  v31[8] = v32;
  v33 = v3[1];
  v33(v11, v2);
  v33(v7, v2);
  v34 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v36 = &v15[*(v63 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  sub_23DB310C0();
  sub_23DB7002C();
  sub_23DB332DC(v15);
  LOBYTE(v34) = sub_23DB6FB3C();
  v37 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36)];
  v62 = v21;
  *v37 = v34;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  v37[40] = 1;
  v38 = sub_23DB701AC();
  v39 = swift_getKeyPath();
  v40 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98) + 36)];
  *v40 = v39;
  v40[1] = v38;
  v41 = sub_23DB7012C();
  v42 = &v21[*(v65 + 44)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
  v44 = v42 + *(v43 + 52);
  v45 = sub_23DB6F32C();
  v46 = *(v45 + 20);
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_23DB6F63C();
  v49 = *(*(v48 - 8) + 104);
  v49(&v44[v46], v47, v48);
  __asm { FMOV            V0.2D, #8.0 }

  v65 = _Q0;
  *v44 = _Q0;
  *v42 = v41;
  *(v42 + *(v43 + 56)) = 256;
  if (sub_23DB6F99C())
  {
    v55 = 0.7;
  }

  else
  {
    v55 = 1.0;
  }

  v56 = v66;
  sub_23DA17A54(v62, v66, &qword_27E3007E0, &qword_23DB81AC8);
  *(v56 + *(v67 + 44)) = v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300748, &qword_23DB81A88);
  v58 = v68;
  v59 = (v68 + *(v57 + 36));
  v49(&v59[*(v45 + 20)], v47, v48);
  *v59 = v65;
  v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  return sub_23DA17A54(v56, v58, &qword_27E3007D0, &qword_23DB81AC0);
}

unint64_t sub_23DB30D70()
{
  result = qword_27E300750;
  if (!qword_27E300750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300740, &qword_23DB81A80);
    sub_23DB30E28();
    sub_23DA17B80(&qword_27E3007B0, &qword_27E3007B8, &qword_23DB81AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300750);
  }

  return result;
}

unint64_t sub_23DB30E28()
{
  result = qword_27E300758;
  if (!qword_27E300758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300760, &qword_23DB81A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300768, &qword_23DB81A98);
    sub_23DB704BC();
    sub_23DB30F40();
    sub_23DB311A4(&qword_27E3007A8, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300758);
  }

  return result;
}

unint64_t sub_23DB30F40()
{
  result = qword_27E300770;
  if (!qword_27E300770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300768, &qword_23DB81A98);
    sub_23DB30FF8();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300770);
  }

  return result;
}

unint64_t sub_23DB30FF8()
{
  result = qword_27E300778;
  if (!qword_27E300778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300780, &qword_23DB81AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300788, &qword_23DB81AA8);
    sub_23DB310C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300778);
  }

  return result;
}

unint64_t sub_23DB310C0()
{
  result = qword_27E300790;
  if (!qword_27E300790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300788, &qword_23DB81AA8);
    sub_23DA17B80(&qword_27E300798, &qword_27E3007A0, &qword_23DB81AB0);
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300790);
  }

  return result;
}

uint64_t sub_23DB311A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DB311EC()
{
  result = qword_27E3007C0;
  if (!qword_27E3007C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300748, &qword_23DB81A88);
    sub_23DB312A4();
    sub_23DA17B80(&qword_27E2FDAB8, &qword_27E2FDAC0, &unk_23DB793D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007C0);
  }

  return result;
}

unint64_t sub_23DB312A4()
{
  result = qword_27E3007C8;
  if (!qword_27E3007C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3007D0, &qword_23DB81AC0);
    sub_23DB31330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007C8);
  }

  return result;
}

unint64_t sub_23DB31330()
{
  result = qword_27E3007D8;
  if (!qword_27E3007D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3007E0, &qword_23DB81AC8);
    sub_23DB30F40();
    sub_23DA17B80(&qword_27E2FC148, &qword_27E2FC150, &qword_23DB74180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007D8);
  }

  return result;
}

uint64_t sub_23DB313E8()
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300748, &qword_23DB81A88);
  sub_23DB30D70();
  sub_23DB311EC();
  return sub_23DB705EC();
}

uint64_t AXOnboardingSecondaryButtonStyle.makeBody(configuration:)()
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E8, &qword_23DB81AD0);
  sub_23DB30D70();
  sub_23DB320FC();
  return sub_23DB705EC();
}

uint64_t sub_23DB31590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v79 = a2;
  v78 = sub_23DB704BC();
  v2 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78, v3);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23DB7028C();
  v80 = *(v76 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v76, v6);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v72 = &v66 - v10;
  v11 = sub_23DB6F97C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v66 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  v21 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v22);
  v24 = &v66 - v23;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  v25 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67, v26);
  v28 = &v66 - v27;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D8, &unk_23DB81E20);
  v73 = *(v75 - 8);
  v29 = *(v73 + 64);
  MEMORY[0x28223BE20](v75, v30);
  v69 = &v66 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300760, &qword_23DB81A90);
  v33 = *(v32 - 8);
  v71 = v32 - 8;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32 - 8, v35);
  v70 = &v66 - v36;
  *v24 = sub_23DB6F5BC();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v37 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v82 = 1;
  v38 = v12[2];
  v38(v16, v20, v11);
  v81 = 1;
  v39 = v82;
  *v37 = 0;
  v37[8] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v38(&v37[*(v40 + 48)], v16, v11);
  v41 = &v37[*(v40 + 64)];
  v42 = v81;
  *v41 = 0;
  v41[8] = v42;
  v43 = v12[1];
  v43(v20, v11);
  v43(v16, v11);
  v44 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v46 = &v24[*(v66 + 36)];
  *v46 = KeyPath;
  v46[1] = v44;
  sub_23DB310C0();
  v47 = v28;
  sub_23DB7002C();
  sub_23DB332DC(v24);
  LOBYTE(v44) = sub_23DB6FB3C();
  v48 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36)];
  *v48 = v44;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  v48[40] = 1;
  v49 = sub_23DB7020C();
  v50 = swift_getKeyPath();
  v51 = &v28[*(v67 + 36)];
  *v51 = v50;
  v51[1] = v49;
  v52 = v74;
  sub_23DB7027C();
  v53 = v72;
  MEMORY[0x23EEF6600](1);
  v54 = *(v80 + 8);
  v80 += 8;
  v55 = v76;
  v54(v52, v76);
  LODWORD(v74) = *MEMORY[0x277CE0118];
  v56 = v74;
  v57 = sub_23DB6F63C();
  v66 = *(*(v57 - 8) + 104);
  v58 = v77;
  (v66)(v77, v56, v57);
  sub_23DB30F40();
  sub_23DB311A4(&qword_27E3007A8, MEMORY[0x277CE1260]);
  v59 = v69;
  sub_23DB6FE5C();
  sub_23DB2F6C0(v58, MEMORY[0x277CE1260]);
  v54(v53, v55);
  sub_23DB3334C(v47);
  if (sub_23DB6F99C())
  {
    v60 = 0.7;
  }

  else
  {
    v60 = 1.0;
  }

  v61 = v70;
  (*(v73 + 32))(v70, v59, v75);
  *(v61 + *(v71 + 44)) = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  v63 = v79;
  v64 = v79 + *(v62 + 36);
  (v66)(v64, v74, v57);
  *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007B8, &qword_23DB81AB8) + 36)) = 0;
  return sub_23DA17A54(v61, v63, &qword_27E300760, &qword_23DB81A90);
}

uint64_t sub_23DB31C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v60 = a2;
  v2 = sub_23DB6F97C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56, v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  v17 = *(v16 - 8);
  v59 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300800, &qword_23DB81AD8);
  v23 = *(v22 - 8);
  v58 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8, v25);
  v57 = &v55 - v26;
  *v15 = sub_23DB6F5BC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008C8, &qword_23DB81DB0) + 44)];
  sub_23DB6F98C();
  v62 = 1;
  v28 = v3[2];
  v28(v7, v11, v2);
  v61 = 1;
  v29 = v62;
  *v27 = 0;
  v27[8] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008D0, &qword_23DB81DB8);
  v28(&v27[*(v30 + 48)], v7, v2);
  v31 = &v27[*(v30 + 64)];
  v32 = v61;
  *v31 = 0;
  v31[8] = v32;
  v33 = v3[1];
  v33(v11, v2);
  v33(v7, v2);
  v34 = sub_23DB6FBCC();
  KeyPath = swift_getKeyPath();
  v36 = &v15[*(v56 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  sub_23DB310C0();
  sub_23DB7002C();
  sub_23DB332DC(v15);
  LOBYTE(v34) = sub_23DB6FB3C();
  v37 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300780, &qword_23DB81AA0) + 36)];
  *v37 = v34;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  v37[40] = 1;
  v38 = sub_23DB700EC();
  v39 = swift_getKeyPath();
  v40 = &v21[*(v59 + 44)];
  *v40 = v39;
  v40[1] = v38;
  if (sub_23DB6F99C())
  {
    v41 = 0.7;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = v57;
  sub_23DA17A54(v21, v57, &qword_27E300768, &qword_23DB81A98);
  *(v42 + *(v58 + 44)) = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E8, &qword_23DB81AD0);
  v44 = v60;
  v45 = (v60 + *(v43 + 36));
  v46 = *(sub_23DB6F32C() + 20);
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_23DB6F63C();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #8.0 }

  *v45 = _Q0;
  v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  return sub_23DA17A54(v42, v44, &qword_27E300800, &qword_23DB81AD8);
}

unint64_t sub_23DB320FC()
{
  result = qword_27E3007F0;
  if (!qword_27E3007F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3007E8, &qword_23DB81AD0);
    sub_23DB321B4();
    sub_23DA17B80(&qword_27E2FDAB8, &qword_27E2FDAC0, &unk_23DB793D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007F0);
  }

  return result;
}

unint64_t sub_23DB321B4()
{
  result = qword_27E3007F8;
  if (!qword_27E3007F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300800, &qword_23DB81AD8);
    sub_23DB30F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3007F8);
  }

  return result;
}

uint64_t sub_23DB32240()
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300740, &qword_23DB81A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3007E8, &qword_23DB81AD0);
  sub_23DB30D70();
  sub_23DB320FC();
  return sub_23DB705EC();
}

uint64_t AXOnboardingTextFieldShapeModifier.body(content:)()
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300808, &qword_23DB81AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300810, &qword_23DB81AE8);
  sub_23DB32628();
  sub_23DB3270C();
  return sub_23DB705EC();
}

uint64_t sub_23DB323F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300808, &qword_23DB81AE0) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_23DB6F63C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300838, &unk_23DB81AF8) + 36)) = 256;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300828, &qword_23DB81AF0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_23DB32500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300810, &qword_23DB81AE8) + 36));
  v5 = *(sub_23DB6F32C() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_23DB6F63C();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300828, &qword_23DB81AF0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

unint64_t sub_23DB32628()
{
  result = qword_27E300818;
  if (!qword_27E300818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300808, &qword_23DB81AE0);
    sub_23DA17B80(&qword_27E300820, &qword_27E300828, &qword_23DB81AF0);
    sub_23DA17B80(&qword_27E300830, &qword_27E300838, &unk_23DB81AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300818);
  }

  return result;
}

unint64_t sub_23DB3270C()
{
  result = qword_27E300840;
  if (!qword_27E300840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300810, &qword_23DB81AE8);
    sub_23DA17B80(&qword_27E300820, &qword_27E300828, &qword_23DB81AF0);
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300840);
  }

  return result;
}

uint64_t sub_23DB32898()
{
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300808, &qword_23DB81AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300810, &qword_23DB81AE8);
  sub_23DB32628();
  sub_23DB3270C();
  return sub_23DB705EC();
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23DB32AD4()
{
  sub_23DA156A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23DB32B74()
{
  result = qword_27E300868;
  if (!qword_27E300868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300718, &qword_23DB81A58);
    sub_23DA17B80(&qword_27E300870, &qword_27E300710, &qword_23DB81A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300868);
  }

  return result;
}

unint64_t sub_23DB32C30()
{
  result = qword_27E300878;
  if (!qword_27E300878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300728, &qword_23DB81A68);
    sub_23DA17B80(&qword_27E300880, &qword_27E300720, &qword_23DB81A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300878);
  }

  return result;
}

unint64_t sub_23DB32CEC()
{
  result = qword_27E300888;
  if (!qword_27E300888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300738, &qword_23DB81A78);
    sub_23DA17B80(&qword_27E300890, &qword_27E300730, &qword_23DB81A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300888);
  }

  return result;
}

uint64_t sub_23DB32DA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23DB6F2DC();
  sub_23DAB22E0();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx28AccessibilitySharedUISupport29AXOnboardingTitleToListFormatVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  a2(255);
  sub_23DB6F2DC();
  sub_23DB311A4(a3, a4);
  return swift_getWitnessTable();
}

uint64_t sub_23DB32FBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23DB30D70();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DB33050()
{
  result = qword_27E3008B8;
  if (!qword_27E3008B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3008C0, &qword_23DB81DA8);
    sub_23DB32628();
    sub_23DB3270C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3008B8);
  }

  return result;
}

uint64_t sub_23DB330EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_23DB333B4(v2, &v19 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23DB6F25C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_23DB332DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300788, &qword_23DB81AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DB3334C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300768, &qword_23DB81A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DB333B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23DB33478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23DB334C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DB3353C@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v121 = sub_23DB700FC();
  v120 = *(v121 - 8);
  v2 = *(v120 + 64);
  MEMORY[0x28223BE20](v121, v3);
  v119 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_23DB6F32C();
  v5 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114, v6);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  v9 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115, v10);
  v118 = &v111 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD210, &qword_23DB77E90);
  v12 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117, v13);
  v15 = &v111 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008E0, &qword_23DB81FC0);
  v16 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124, v17);
  v128 = &v111 - v18;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008E8, &qword_23DB81FC8);
  v19 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126, v20);
  v129 = &v111 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008F0, &qword_23DB81FD0);
  v22 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127, v23);
  v131 = &v111 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3008F8, &unk_23DB81FD8);
  v25 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130, v26);
  v28 = &v111 - v27;
  v29 = type metadata accessor for KeyContent();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23DB6F55C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = *(v1 + 48);
  v40 = *(v1 + 5);
  v136 = v40;
  v132 = v137;
  v123 = v41;
  v122 = v35;
  v116 = v8;
  if (v137 == 1)
  {
    if (v40)
    {
      v42 = 100.0;
LABEL_9:
      v48 = sub_23DB6FBCC();
      goto LABEL_12;
    }

    v42 = 149.0;
  }

  else
  {

    sub_23DB70ACC();
    v43 = sub_23DB6FAFC();
    v113 = v28;
    v44 = v43;
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v136, &qword_27E2FCBA0, &qword_23DB76C70);
    v112 = v15;
    v45 = v34;
    v46 = *(v35 + 8);
    v46(v39, v45);
    if (LOBYTE(v133[0]))
    {
      v42 = 100.0;
    }

    else
    {
      v42 = 149.0;
    }

    sub_23DB70ACC();
    v47 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v136, &qword_27E2FCBA0, &qword_23DB76C70);
    v46(v39, v45);
    v28 = v113;
    v15 = v112;
    if (LOBYTE(v133[0]) == 1)
    {
      goto LABEL_9;
    }
  }

  v48 = sub_23DB6FC4C();
LABEL_12:
  v49 = v48;
  v50 = *v1;
  v134 = v1[1];
  v135 = v50;
  v51 = *(v1 + 32);
  *&v33[*(v29 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300900, &unk_23DB82018);
  swift_storeEnumTagMultiPayload();
  v52 = v134;
  *v33 = v135;
  *(v33 + 1) = v52;
  v33[32] = v51;
  *(v33 + 5) = v42;
  *(v33 + 6) = v49;
  v53 = *(v114 + 20);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_23DB6F63C();
  v56 = v116 + v53;
  v57 = v116;
  (*(*(v55 - 8) + 104))(v56, v54, v55);
  __asm { FMOV            V0.2D, #10.0 }

  *v57 = _Q0;
  if (v51 == 1)
  {
    sub_23DAB668C(&v135, v133);
    sub_23DA0E2B4(&v134, v133, &qword_27E2FC358, &qword_23DB74690);
    v63 = 0.0;
    v64 = sub_23DB7019C();
    v65 = v128;
  }

  else
  {
    sub_23DAB668C(&v135, v133);
    sub_23DA0E2B4(&v134, v133, &qword_27E2FC358, &qword_23DB74690);
    v65 = v128;
    if (qword_27E2FBB80 != -1)
    {
      swift_once();
    }

    v64 = qword_27E30A658;

    v63 = 10.0;
  }

  v66 = v57;
  v67 = v118;
  sub_23DB3526C(v66, v118, MEMORY[0x277CDFC08]);
  v68 = v115;
  *(v67 + *(v115 + 52)) = v64;
  *(v67 + *(v68 + 56)) = 256;
  (*(v120 + 104))(v119, *MEMORY[0x277CE0ED0], v121);
  v69 = sub_23DB7022C();
  sub_23DA17A54(v67, v15, &qword_27E2FD208, &qword_23DB7C3F0);
  v70 = &v15[*(v117 + 36)];
  *v70 = v69;
  *(v70 + 1) = v63;
  v70[2] = 0;
  v70[3] = 0;
  v71 = sub_23DB6FB2C();
  if (v132)
  {
    v72 = v123;
  }

  else
  {

    sub_23DB70ACC();
    v73 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v136, &qword_27E2FCBA0, &qword_23DB76C70);
    v72 = v123;
    (*(v122 + 8))(v39, v123);
  }

  sub_23DB6EFAC();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  sub_23DA17A54(v15, v65, &qword_27E2FD210, &qword_23DB77E90);
  v82 = v65 + *(v124 + 36);
  *v82 = v71;
  *(v82 + 8) = v75;
  *(v82 + 16) = v77;
  *(v82 + 24) = v79;
  *(v82 + 32) = v81;
  *(v82 + 40) = 0;
  v83 = sub_23DB6FB9C();
  if (!v132)
  {

    sub_23DB70ACC();
    v84 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v136, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v122 + 8))(v39, v72);
  }

  sub_23DB6EFAC();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v129;
  sub_23DA17A54(v65, v129, &qword_27E3008E0, &qword_23DB81FC0);
  v94 = v93 + *(v126 + 36);
  *v94 = v83;
  *(v94 + 8) = v86;
  *(v94 + 16) = v88;
  *(v94 + 24) = v90;
  *(v94 + 32) = v92;
  *(v94 + 40) = 0;
  v95 = sub_23DB7066C();
  v96 = v93;
  v97 = v131;
  sub_23DA17A54(v96, v131, &qword_27E3008E8, &qword_23DB81FC8);
  v98 = v97 + *(v127 + 36);
  *v98 = v95;
  *(v98 + 8) = v51;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v97, v28, &qword_27E3008F0, &qword_23DB81FD0);
  v99 = &v28[*(v130 + 36)];
  v100 = v133[5];
  *(v99 + 4) = v133[4];
  *(v99 + 5) = v100;
  *(v99 + 6) = v133[6];
  v101 = v133[1];
  *v99 = v133[0];
  *(v99 + 1) = v101;
  v102 = v133[3];
  *(v99 + 2) = v133[2];
  *(v99 + 3) = v102;
  v103 = sub_23DB7062C();
  v105 = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300908, &qword_23DB82028);
  v107 = v125;
  v108 = v125 + *(v106 + 36);
  sub_23DA17A54(v28, v108, &qword_27E3008F8, &unk_23DB81FD8);
  v109 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300910, &qword_23DB82030) + 36));
  *v109 = v103;
  v109[1] = v105;
  return sub_23DB3526C(v33, v107, type metadata accessor for KeyContent);
}

uint64_t type metadata accessor for KeyContent()
{
  result = qword_27E300920;
  if (!qword_27E300920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DB341AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6F55C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300900, &unk_23DB82018);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for KeyContent();
  sub_23DA0E2B4(v1 + *(v14 + 36), v13, &qword_27E300900, &unk_23DB82018);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23DB6EB1C();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

double sub_23DB343B4@<D0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_23DB6EAFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB6EB1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300950, &qword_23DB820A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v35 - v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300958, &qword_23DB820A8);
  v19 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35, v20);
  v22 = &v35 - v21;
  v23 = v1;
  sub_23DB341AC(v13);
  sub_23DB6EB0C();
  (*(v9 + 8))(v13, v8);
  v24 = sub_23DB6EAEC();
  (*(v3 + 8))(v7, v2);
  if (v24 == 2)
  {
    v25 = sub_23DB6F69C();
  }

  else
  {
    v25 = sub_23DB6F6AC();
  }

  *v18 = v25;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300960, &qword_23DB820B0);
  sub_23DB34710(v23, &v18[*(v26 + 44)]);
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v18, v22, &qword_27E300950, &qword_23DB820A0);
  v27 = &v22[*(v35 + 36)];
  v28 = v42;
  *(v27 + 4) = v41;
  *(v27 + 5) = v28;
  *(v27 + 6) = v43;
  v29 = v38;
  *v27 = v37;
  *(v27 + 1) = v29;
  v30 = v40;
  *(v27 + 2) = v39;
  *(v27 + 3) = v30;
  v31 = sub_23DB6FB3C();
  v32 = v36;
  sub_23DA17A54(v22, v36, &qword_27E300958, &qword_23DB820A8);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300968, &qword_23DB820B8) + 36);
  *v33 = v31;
  result = 0.0;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 1;
  return result;
}

uint64_t sub_23DB34710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_23DB6EAFC();
  v126 = *(v3 - 8);
  v4 = *(v126 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_23DB6EB1C();
  v131 = *(v128 - 8);
  v7 = *(v131 + 64);
  MEMORY[0x28223BE20](v128, v8);
  v127 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300970, &qword_23DB820C0);
  v10 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119, v11);
  v13 = &v118 - v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300978, &qword_23DB820C8);
  v14 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120, v15);
  v17 = &v118 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300980, &qword_23DB820D0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v121 = &v118 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300988, &qword_23DB820D8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v125 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v118 - v33;
  v36 = *(a1 + 24);
  v130 = a1;
  v122 = v3;
  v123 = &v118 - v33;
  if (v36)
  {
    v118 = v19;
    v37 = *(v130 + 16);

    v144 = sub_23DB702BC();
    sub_23DB6FC1C();
    sub_23DB6FE1C();
    a1 = v130;

    v38 = *(a1 + 48);
    KeyPath = swift_getKeyPath();
    v40 = &v13[*(v119 + 36)];
    *v40 = KeyPath;
    v40[1] = v38;
    v41 = *(a1 + 32);

    if (v41)
    {
      v42 = sub_23DB701AC();
    }

    else
    {
      v42 = sub_23DB7014C();
    }

    v43 = v42;
    v44 = swift_getKeyPath();
    sub_23DA17A54(v13, v17, &qword_27E300970, &qword_23DB820C0);
    v45 = &v17[*(v120 + 36)];
    *v45 = v44;
    v45[1] = v43;
    v46 = v127;
    sub_23DB341AC(v127);
    v47 = v129;
    sub_23DB6EB0C();
    (*(v131 + 8))(v46, v128);
    v48 = sub_23DB6EAEC();
    (*(v126 + 8))(v47, v3);
    if (v48 == 2)
    {
      v49 = sub_23DB6FB6C();
    }

    else
    {
      v49 = sub_23DB6FB8C();
    }

    v50 = v49;
    v51 = v118;
    sub_23DA17A54(v17, v23, &qword_27E300978, &qword_23DB820C8);
    v52 = &v23[*(v18 + 36)];
    *v52 = v50;
    *(v52 + 8) = 0u;
    *(v52 + 24) = 0u;
    v52[40] = 1;
    v53 = v121;
    sub_23DA17A54(v23, v121, &qword_27E300980, &qword_23DB820D0);
    sub_23DA17A54(v53, v35, &qword_27E300980, &qword_23DB820D0);
    (*(v51 + 56))(v35, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(&v118 - v33, 1, 1, v18, v34);
  }

  v54 = *(a1 + 8);
  v144 = *a1;
  v145 = v54;
  sub_23DA16E70();

  v55 = sub_23DB6FD8C();
  v57 = v56;
  v59 = v58;
  sub_23DB6FC1C();
  v60 = sub_23DB6FCCC();
  v62 = v61;
  v64 = v63;
  sub_23DA16EC4(v55, v57, v59 & 1);

  v65 = *(a1 + 48);
  v66 = a1;
  v67 = sub_23DB6FD3C();
  v69 = v68;
  v71 = v70;
  sub_23DA16EC4(v60, v62, v64 & 1);

  if (*(v66 + 32) == 1)
  {
    sub_23DB701AC();
  }

  else
  {
    sub_23DB7014C();
  }

  v72 = v122;
  v73 = sub_23DB6FCDC();
  v119 = v74;
  v120 = v73;
  v76 = v75;
  v121 = v77;

  sub_23DA16EC4(v67, v69, v71 & 1);

  v78 = *(v130 + 40);
  v79 = v127;
  sub_23DB341AC(v127);
  v80 = v129;
  sub_23DB6EB0C();
  v81 = *(v131 + 8);
  v131 += 8;
  v81(v79, v128);
  v82 = sub_23DB6EAEC();
  v83 = *(v126 + 8);
  v83(v80, v72);
  if (v82 == 2)
  {
    sub_23DB7063C();
  }

  else
  {
    sub_23DB7064C();
  }

  v84 = v72;
  sub_23DB6F34C();
  LODWORD(v126) = v76 & 1;
  v177 = v76 & 1;
  v85 = v127;
  sub_23DB341AC(v127);
  v86 = v129;
  sub_23DB6EB0C();
  v81(v85, v128);
  v87 = sub_23DB6EAEC();
  v83(v86, v84);
  if (v87 == 2)
  {
    v88 = sub_23DB6FB6C();
  }

  else
  {
    v88 = sub_23DB6FB8C();
  }

  v89 = v88;
  v178 = 1;
  v90 = sub_23DB6FB5C();
  v91 = v90;
  LODWORD(v131) = v90;
  sub_23DB6EFAC();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v180 = 0;
  v100 = v123;
  v101 = v125;
  sub_23DB356A0(v123, v125);
  v102 = v124;
  sub_23DB356A0(v101, v124);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300990, &qword_23DB820E0);
  v104 = v102 + *(v103 + 48);
  *v104 = 0;
  *(v104 + 8) = 1;
  v105 = (v102 + *(v103 + 64));
  v107 = v119;
  v106 = v120;
  *&v132 = v120;
  *(&v132 + 1) = v119;
  LOBYTE(v102) = v126;
  LOBYTE(v133) = v126;
  *(&v133 + 1) = *v176;
  DWORD1(v133) = *&v176[3];
  v108 = v121;
  *(&v133 + 1) = v121;
  v134 = v169;
  v135 = v170;
  v138 = v173;
  v139 = v174;
  v140 = v175;
  v136 = v171;
  v137 = v172;
  LOBYTE(v141[0]) = v89;
  *(v141 + 1) = *v179;
  DWORD1(v141[0]) = *&v179[3];
  *(&v141[1] + 8) = 0u;
  *(v141 + 8) = 0u;
  BYTE8(v141[2]) = 1;
  *(&v141[2] + 9) = v182[0];
  HIDWORD(v141[2]) = *(v182 + 3);
  LOBYTE(v142) = v91;
  *(&v142 + 1) = *v181;
  DWORD1(v142) = *&v181[3];
  *(&v142 + 1) = v93;
  *&v143[0] = v95;
  *(&v143[0] + 1) = v97;
  *&v143[1] = v99;
  BYTE8(v143[1]) = 0;
  v109 = v133;
  *v105 = v132;
  v105[1] = v109;
  v110 = v137;
  v105[4] = v136;
  v105[5] = v110;
  v111 = v141[0];
  v105[8] = v140;
  v105[9] = v111;
  v112 = v139;
  v105[6] = v138;
  v105[7] = v112;
  v113 = v135;
  v105[2] = v134;
  v105[3] = v113;
  v114 = v141[1];
  v115 = v141[2];
  *(v105 + 217) = *(v143 + 9);
  v116 = v143[0];
  v105[12] = v142;
  v105[13] = v116;
  v105[10] = v114;
  v105[11] = v115;
  sub_23DA0E2B4(&v132, &v144, &qword_27E300998, &qword_23DB820E8);
  sub_23DB35710(v100);
  v144 = v106;
  v145 = v107;
  v146 = v102;
  *v147 = *v176;
  *&v147[3] = *&v176[3];
  v148 = v108;
  v153 = v173;
  v154 = v174;
  v155 = v175;
  v149 = v169;
  v150 = v170;
  v151 = v171;
  v152 = v172;
  v156 = v89;
  *v157 = *v179;
  *&v157[3] = *&v179[3];
  v158 = 0u;
  v159 = 0u;
  v160 = 1;
  *v161 = v182[0];
  *&v161[3] = *(v182 + 3);
  v162 = v131;
  *&v163[3] = *&v181[3];
  *v163 = *v181;
  v164 = v93;
  v165 = v95;
  v166 = v97;
  v167 = v99;
  v168 = 0;
  sub_23DA17988(&v144, &qword_27E300998, &qword_23DB820E8);
  return sub_23DB35710(v101);
}

uint64_t sub_23DB351A0(uint64_t a1)
{
  v2 = sub_23DB6EB1C();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  return sub_23DB6F4AC();
}

uint64_t sub_23DB3526C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB352E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300918, &qword_23DB82038);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DB353B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300918, &qword_23DB82038);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DB35468()
{
  sub_23DA18420();
  if (v0 <= 0x3F)
  {
    sub_23DB35518();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DB35518()
{
  if (!qword_27E300930)
  {
    sub_23DB6EB1C();
    v0 = sub_23DB6F05C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E300930);
    }
  }
}

unint64_t sub_23DB35574()
{
  result = qword_27E300938;
  if (!qword_27E300938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300908, &qword_23DB82028);
    sub_23DB3562C();
    sub_23DA17B80(&qword_27E300948, &qword_27E300910, &qword_23DB82030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300938);
  }

  return result;
}

unint64_t sub_23DB3562C()
{
  result = qword_27E300940;
  if (!qword_27E300940)
  {
    type metadata accessor for KeyContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300940);
  }

  return result;
}

uint64_t sub_23DB356A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300988, &qword_23DB820D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB35710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300988, &qword_23DB820D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DB3578C()
{
  result = qword_27E3009A0;
  if (!qword_27E3009A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300968, &qword_23DB820B8);
    sub_23DB35818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009A0);
  }

  return result;
}

unint64_t sub_23DB35818()
{
  result = qword_27E3009A8;
  if (!qword_27E3009A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300958, &qword_23DB820A8);
    sub_23DA17B80(&qword_27E3009B0, &qword_27E300950, &qword_23DB820A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009A8);
  }

  return result;
}

uint64_t DetailView.init(dataModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for NavigationModel();
  sub_23DB35C18(&unk_27E2FE800, type metadata accessor for NavigationModel);
  result = sub_23DB6F39C();
  a2[1] = result;
  a2[2] = v5;
  *a2 = a1;
  return result;
}

uint64_t DetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009B8, &qword_23DB82150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - v7;
  if (*(v1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v9 = v21;
    v10 = 1;
    if (v21)
    {
      *v8 = sub_23DB6F68C();
      *(v8 + 1) = 0;
      v8[16] = 1;
      v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009C0, &qword_23DB821A0) + 44)];
      type metadata accessor for Page(0);
      sub_23DB35C18(&qword_27E2FCBD8, type metadata accessor for Page);

      v12 = sub_23DB6F1EC();
      v14 = v13;
      v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009C8, &qword_23DB821A8) + 52);
      v17 = sub_23DB6EA8C();
      (*(*(v17 - 8) + 16))(v11 + v16, v9 + v15, v17);

      *v11 = v12;
      v11[1] = v14;
      sub_23DB35C60(v8, a1);
      v10 = 0;
    }

    return (*(v4 + 56))(a1, v10, 1, v3);
  }

  else
  {
    v19 = *(v1 + 16);
    type metadata accessor for NavigationModel();
    sub_23DB35C18(&unk_27E2FE800, type metadata accessor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB35C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DB35C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3009B8, &qword_23DB82150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DB35D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23DB35D4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_23DB35DA0()
{
  result = qword_27E3009D0;
  if (!qword_27E3009D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3009D8, &qword_23DB82248);
    sub_23DB35E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009D0);
  }

  return result;
}

unint64_t sub_23DB35E24()
{
  result = qword_27E3009E0;
  if (!qword_27E3009E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3009B8, &qword_23DB82150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3009E0);
  }

  return result;
}

id sub_23DB35E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E300A60, &qword_23DB822C0);
  MEMORY[0x23EEF6810](v13, v10);
  v11 = v13[0];
  [v9 setAttributedText_];

  [v9 setAllowsEditingTextAttributes_];
  [v9 setDelegate_];
  return v9;
}

void sub_23DB35F58(void *a1)
{
  v2 = [a1 attributedText];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    [v4 removeAttribute:*MEMORY[0x277D74118] range:{0, objc_msgSend(v4, sel_length)}];
    v7 = *(v1 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate__currentPhrase);
    v8 = *(v1 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate__currentPhrase + 8);
    v9 = *(v1 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate__currentPhrase + 16);

    v5 = v9;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E300A60, &qword_23DB822C0);
    sub_23DB7047C();
  }
}

id sub_23DB36114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RichTextWrapper.TextFieldDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DB361D8(void *a1)
{
  v3 = *(v1 + 24);
  v7[1] = *v1;
  v8 = *(v1 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E300A60, &qword_23DB822C0);
  MEMORY[0x23EEF6810](v7, v4);
  v5 = v7[0];
  [a1 setAttributedText_];

  [a1 setAllowsEditingTextAttributes_];
  return [a1 setDelegate_];
}

uint64_t sub_23DB36284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB36378();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23DB362E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB36378();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23DB3634C()
{
  sub_23DB36378();
  sub_23DB6F75C();
  __break(1u);
}

unint64_t sub_23DB36378()
{
  result = qword_27E300A70;
  if (!qword_27E300A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300A70);
  }

  return result;
}

char *sub_23DB363CC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = [*(v1 + 16) dictionaryRepresentation];
    sub_23DB7081C();

    v3 = objc_allocWithZone(MEMORY[0x277CB88C8]);
    v4 = sub_23DB7080C();

    v5 = [v3 initWithDictionary_];

    v6 = objc_allocWithZone(type metadata accessor for ChartSonificationContainerView());
    return sub_23DAB8B20(v5, 0.0, 0.0, 0.0, 0.0);
  }

  else
  {
    v8 = v0[1];
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB3671C();
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB36508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB3AD8C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23DB3656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB3AD8C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23DB365D0()
{
  sub_23DB3AD8C();
  sub_23DB6F75C();
  __break(1u);
}

void ChartView.init()(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB3671C();
  *a1 = sub_23DB6F39C();
  a1[1] = v2;
  sub_23DB7037C();
  a1[2] = v6;
  a1[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23DB7B4D0;
  *(v3 + 32) = sub_23DB7012C();
  *(v3 + 40) = sub_23DB7019C();
  *(v3 + 48) = sub_23DB701DC();
  *(v3 + 56) = sub_23DB701CC();
  *(v3 + 64) = sub_23DB7016C();
  *(v3 + 72) = sub_23DB7013C();
  a1[4] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  a1[5] = v4;
  v5 = v4;
  [v5 setUsesSignificantDigits_];
  [v5 setMaximumSignificantDigits_];
}

unint64_t sub_23DB3671C()
{
  result = qword_27E300AE0;
  if (!qword_27E300AE0)
  {
    type metadata accessor for AudiographExplorerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300AE0);
  }

  return result;
}

uint64_t ChartView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v166 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300AE8, &qword_23DB823A8);
  v140 = *(v142 - 8);
  v2 = *(v140 + 64);
  MEMORY[0x28223BE20](v142, v3);
  v152 = &v138 - v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300AF0, &qword_23DB823B0);
  v143 = *(v144 - 8);
  v5 = *(v143 + 64);
  MEMORY[0x28223BE20](v144, v6);
  v141 = &v138 - v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300AF8, &qword_23DB823B8);
  v8 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146, v9);
  v145 = &v138 - v10;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B00, &qword_23DB823C0);
  v149 = *(v150 - 8);
  v11 = *(v149 + 64);
  MEMORY[0x28223BE20](v150, v12);
  v147 = &v138 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B08, &qword_23DB823C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v148 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v151 = &v138 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B10, &unk_23DB823D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v138 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v168 = &v138 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B18, &qword_23DB823E0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v165 = &v138 - v33;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B20, &qword_23DB823E8);
  v176 = *(v175 - 8);
  v34 = *(v176 + 64);
  MEMORY[0x28223BE20](v175, v35);
  v37 = &v138 - v36;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B28, &qword_23DB823F0);
  v153 = *(v155 - 8);
  v38 = *(v153 + 64);
  MEMORY[0x28223BE20](v155, v39);
  v41 = &v138 - v40;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B30, &qword_23DB823F8);
  v156 = *(v157 - 8);
  v42 = *(v156 + 64);
  MEMORY[0x28223BE20](v157, v43);
  v154 = &v138 - v44;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B38, &qword_23DB82400);
  v45 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159, v46);
  v158 = &v138 - v47;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B40, &qword_23DB82408);
  v162 = *(v163 - 8);
  v48 = *(v162 + 64);
  MEMORY[0x28223BE20](v163, v49);
  v160 = &v138 - v50;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B48, &qword_23DB82410);
  v51 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171, v52);
  v161 = &v138 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v164 = &v138 - v56;
  v57 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v58 = *(v57 + 16);
    v59 = (v57 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
    swift_beginAccess();
    v60 = v59[1];
    *&v181 = *v59;
    *(&v181 + 1) = v60;
    v61 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
    sub_23DB7038C();
    v62 = v180;
    v63 = [v61 series];
    sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
    sub_23DB709EC();

    swift_beginAccess();
    v169 = v62;
    v64 = *(v62 + 40);

    v65 = [v61 xAxis];
    v170 = v61;
    v66 = [v61 yAxis];
    v67 = v66;
    v174 = v14;
    v173 = v25;
    v172 = v21;
    if (v66)
    {
      [v66 lowerBound];
      v69 = v68;
      [v67 upperBound];
      v71 = v70;
    }

    else
    {
      v71 = 1.0;
      v69 = 0.0;
    }

    v167 = v67;
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    MEMORY[0x28223BE20](v72, v73);
    v177 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B60, &qword_23DB82420);
    sub_23DB39BD8();
    if (v72)
    {
      sub_23DB6ED6C();

      MEMORY[0x28223BE20](v74, v75);
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300BB8, &qword_23DB82468);
      v76 = sub_23DA17B80(&qword_27E300B80, &qword_27E300B20, &qword_23DB823E8);
      v77 = sub_23DA17B80(&qword_27E300BC0, &qword_27E300BB8, &qword_23DB82468);
      v139 = v41;
      v78 = v175;
      sub_23DB6FD9C();
      (*(v176 + 8))(v37, v78);
      v79 = [v72 categoryOrder];
      *&v80 = COERCE_DOUBLE(sub_23DB709EC());

      v178 = *&v80;
      v81 = sub_23DB6EE1C();
      v176 = *(*(v81 - 8) + 56);
      v82 = v165;
      (v176)(v165, 1, 1, v81);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC820, &unk_23DB74E50);
      *&v181 = v78;
      *(&v181 + 1) = v152;
      *&v182 = v76;
      *(&v182 + 1) = v77;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v85 = sub_23DB3A41C();
      v86 = v154;
      v87 = v155;
      v88 = v139;
      sub_23DB6FDBC();
      sub_23DA17988(v82, &qword_27E300B18, &qword_23DB823E0);

      (*(v153 + 8))(v88, v87);
      v178 = v69;
      v179 = v71;
      (v176)(v82, 1, 1, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B90, &qword_23DB82430);
      *&v181 = v87;
      *(&v181 + 1) = v83;
      *&v182 = OpaqueTypeConformance2;
      *(&v182 + 1) = v85;
      swift_getOpaqueTypeConformance2();
      sub_23DB39CB0();
      v89 = v158;
      v90 = v157;
      sub_23DB6FDCC();
      sub_23DA17988(v82, &qword_27E300B18, &qword_23DB823E0);
      (*(v156 + 8))(v86, v90);
      v91 = sub_23DB6FBEC();
      v92 = v168;
      (*(*(v91 - 8) + 56))(v168, 1, 1, v91);
      v93 = sub_23DB6FC2C();
      sub_23DA17988(v92, &qword_27E2FCEE8, &qword_23DB846E0);
      KeyPath = swift_getKeyPath();
      v95 = (v89 + *(v159 + 36));
      *v95 = KeyPath;
      v95[1] = v93;
      sub_23DB3A1CC();
      v96 = v160;
      sub_23DB6FDAC();
      sub_23DA17988(v89, &qword_27E300B38, &qword_23DB82400);
      sub_23DB7062C();
      sub_23DB6F34C();
      v97 = v161;
      (*(v162 + 32))(v161, v96, v163);
      v98 = (v97 + *(v171 + 36));
      v99 = v184;
      v100 = v186;
      v101 = v187;
      v98[4] = v185;
      v98[5] = v100;
      v98[6] = v101;
      v102 = v182;
      *v98 = v181;
      v98[1] = v102;
      v98[2] = v183;
      v98[3] = v99;
      v103 = &qword_27E300B48;
      v104 = &qword_23DB82410;
      v105 = v164;
      sub_23DA17A54(v97, v164, &qword_27E300B48, &qword_23DB82410);
      sub_23DA0E2B4(v105, v173, &qword_27E300B48, &qword_23DB82410);
      swift_storeEnumTagMultiPayload();
      sub_23DB3A104();
      sub_23DB3A498();
      sub_23DB6F79C();

      swift_unknownObjectRelease();
      return sub_23DA17988(v105, v103, v104);
    }

    sub_23DB6ED6C();

    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B78, &qword_23DB82428);
    v107 = sub_23DA17B80(&qword_27E300B80, &qword_27E300B20, &qword_23DB823E8);
    v108 = sub_23DA17B80(&qword_27E300B88, &qword_27E300B78, &qword_23DB82428);
    v109 = v152;
    v110 = v175;
    sub_23DB6FD9C();
    (*(v176 + 8))(v37, v110);
    v1 = v177;
    [v177 lowerBound];
    v112 = v111;
    [v1 upperBound];
    if (v112 <= v113)
    {
      v178 = v112;
      v179 = v113;
      v114 = v109;
      v115 = sub_23DB6EE1C();
      v176 = *(*(v115 - 8) + 56);
      v116 = v165;
      (v176)(v165, 1, 1, v115);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B90, &qword_23DB82430);
      *&v181 = v110;
      *(&v181 + 1) = v106;
      *&v182 = v107;
      *(&v182 + 1) = v108;
      v118 = swift_getOpaqueTypeConformance2();
      v119 = sub_23DB39CB0();
      v120 = v141;
      v121 = v142;
      sub_23DB6FDBC();
      sub_23DA17988(v116, &qword_27E300B18, &qword_23DB823E0);
      (*(v140 + 8))(v114, v121);
      v178 = v69;
      v179 = v71;
      (v176)(v116, 1, 1, v115);
      *&v181 = v121;
      *(&v181 + 1) = v117;
      *&v182 = v118;
      *(&v182 + 1) = v119;
      swift_getOpaqueTypeConformance2();
      v122 = v145;
      v123 = v144;
      sub_23DB6FDCC();
      sub_23DA17988(v116, &qword_27E300B18, &qword_23DB823E0);
      (*(v143 + 8))(v120, v123);
      v124 = sub_23DB6FBEC();
      v125 = v168;
      (*(*(v124 - 8) + 56))(v168, 1, 1, v124);
      v126 = sub_23DB6FC2C();
      sub_23DA17988(v125, &qword_27E2FCEE8, &qword_23DB846E0);
      v127 = swift_getKeyPath();
      v128 = (v122 + *(v146 + 36));
      *v128 = v127;
      v128[1] = v126;
      sub_23DB39ED0();
      v129 = v147;
      sub_23DB6FDAC();
      sub_23DA17988(v122, &qword_27E300AF8, &qword_23DB823B8);
      sub_23DB7062C();
      sub_23DB6F34C();
      v130 = v148;
      (*(v149 + 32))(v148, v129, v150);
      v131 = (v130 + *(v174 + 36));
      v132 = v184;
      v133 = v186;
      v134 = v187;
      v131[4] = v185;
      v131[5] = v133;
      v131[6] = v134;
      v135 = v182;
      *v131 = v181;
      v131[1] = v135;
      v131[2] = v183;
      v131[3] = v132;
      v103 = &qword_27E300B08;
      v104 = &qword_23DB823C8;
      v105 = v151;
      sub_23DA17A54(v130, v151, &qword_27E300B08, &qword_23DB823C8);
      sub_23DA0E2B4(v105, v173, &qword_27E300B08, &qword_23DB823C8);
      swift_storeEnumTagMultiPayload();
      sub_23DB3A104();
      sub_23DB3A498();
      sub_23DB6F79C();
      swift_unknownObjectRelease();

      return sub_23DA17988(v105, v103, v104);
    }

    __break(1u);
  }

  v137 = v1[1];
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB3671C();
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB37C04(void *a1)
{
  v2 = sub_23DB6ED1C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_23DB6ECAC();
  v6 = *(*(v5 - 8) + 64);
  v8 = [a1 categoryOrder];
  sub_23DB709EC();

  sub_23DB6EC9C();
  sub_23DB6ED0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C48, &qword_23DB82978);
  sub_23DB3B75C();
  return sub_23DB6EDCC();
}

uint64_t sub_23DB37D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB6ED3C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_23DB6ED5C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C60, &qword_23DB82980);
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - v11;
  if (!sub_23DB6EDEC())
  {
    goto LABEL_14;
  }

  v13 = sub_23DB6EDEC();
  result = sub_23DB6EDDC();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (v13 != result - 1)
  {
    v15 = *(v17 + 56);

    return v15(a1, 1, 1, v8);
  }

  else
  {
LABEL_14:
    if (sub_23DB6EDEC())
    {
      sub_23DB706EC();
    }

    else
    {
      sub_23DB706DC();
    }

    sub_23DB6ED4C();
    sub_23DB6ED2C();
    sub_23DB6ECDC();
    (*(v17 + 32))(a1, v12, v8);
    return (*(v17 + 56))(a1, 0, 1, v8);
  }
}

uint64_t sub_23DB37FE8(unint64_t a1, uint64_t a2)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
    sub_23DA52254();
    sub_23DB39C5C();
    return sub_23DB704DC();
  }

  result = sub_23DB70C3C();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

unint64_t sub_23DB380E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x23EEF70C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a2 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB38140()
{
  v0 = sub_23DB6ED1C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_23DB6ECAC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_23DB6ECCC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  sub_23DB6ECBC();
  sub_23DB6EC9C();
  sub_23DB6ED0C();
  return sub_23DB6EDBC();
}

uint64_t sub_23DB3828C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v13[4] = a1[4];
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB3AD54(v13, v12);

  sub_23DB6EF0C();

  v9 = 0.1;
  if (v12[0])
  {
    v9 = 1.0;
  }

  v10 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v10;
  *(a3 + 64) = a1[4];
  v11 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v11;
  *(a3 + 80) = a2;
  *(a3 + 88) = v9;
  return result;
}

uint64_t sub_23DB38370@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v130 = sub_23DB6EE0C();
  v128 = *(v130 - 8);
  v2 = *(v128 + 64);
  MEMORY[0x28223BE20](v130, v3);
  v143 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C78, &qword_23DB82B40);
  v129 = *(v132 - 8);
  v5 = *(v129 + 64);
  MEMORY[0x28223BE20](v132, v6);
  v124 = &v120 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C80, &qword_23DB82B48);
  v125 = *(v126 - 8);
  v8 = *(v125 + 64);
  MEMORY[0x28223BE20](v126, v9);
  v11 = &v120 - v10;
  v133 = sub_23DB6EDAC();
  v131 = *(v133 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v133, v13);
  v127 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C88, &qword_23DB82B50);
  v139 = *(v15 - 8);
  v140 = v15;
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v138 = &v120 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C90, &qword_23DB82B58);
  v136 = *(v19 - 8);
  v137 = v19;
  v20 = *(v136 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v135 = &v120 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C98, &qword_23DB82B60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v134 = &v120 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CA0, &qword_23DB82B68);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v120 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CA8, &qword_23DB82B70);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  MEMORY[0x28223BE20](v35, v36);
  v144 = &v120 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CB0, &qword_23DB82B78);
  v145 = *(v38 - 8);
  v146 = v38;
  v39 = *(v145 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v142 = &v120 - v45;
  v46 = sub_23DB6ED8C();
  v121 = *(v46 - 8);
  v47 = *(v121 + 64);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CB8, &qword_23DB82B80);
  v122 = *(v123 - 8);
  v51 = *(v122 + 64);
  MEMORY[0x28223BE20](v123, v52);
  v54 = &v120 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CC0, &qword_23DB82B88);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55, v57);
  v61 = &v120 - v60;
  v62 = *(v1 + 80);
  v63 = v62[24];
  if (v63 == 2)
  {
    v141 = v1;
    v142 = v11;
    v88 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8];
    *&v148 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
    v87 = v148;
    *(&v148 + 1) = v88;
    v89 = *(v1 + 24);
    *&v151 = *v1;
    sub_23DB3B9EC();
    sub_23DA16E70();
    sub_23DB6ECFC();
    *&v148 = v87;
    *(&v148 + 1) = v88;
    *&v151 = v89;
    sub_23DB6ECFC();
    sub_23DB6EDFC();
    if (v62[40] == 1)
    {
      sub_23DB6F61C();
      v151 = *(v141 + 40);
      v90 = *(v141 + 40);
    }

    else
    {
      sub_23DB6F61C();
      v151 = *(v141 + 56);
      v90 = *(v141 + 56);
    }

    v148 = v90;
    sub_23DB3BA40();

    sub_23DB6ECEC();

    sub_23DB3BA94(&v151);
    v109 = v132;
    v110 = v130;
    v111 = v129;
    v112 = v128;
    v113 = sub_23DB3BA40();
    v114 = MEMORY[0x277CBB468];
    v115 = v124;
    v116 = v143;
    sub_23DB6EC7C();
    (*(v145 + 8))(v42, v146);
    (*(v112 + 8))(v116, v110);
    v117 = *(v141 + 88);
    *&v148 = v110;
    *(&v148 + 1) = &type metadata for ChartData.CategoricalDataValue;
    v149 = v114;
    v150 = v113;
    swift_getOpaqueTypeConformance2();
    v118 = v142;
    sub_23DB6EC8C();
    (*(v111 + 8))(v115, v109);
    v108 = v147;
    (*(v125 + 32))(v147, v118, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CE0, &qword_23DB82B98);
    goto LABEL_17;
  }

  if (v63 == 1)
  {
    v143 = v31;
    if (v62[41] == 1)
    {
      v75 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle + 8];
      *&v148 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle];
      *(&v148 + 1) = v75;
      v76 = *(v1 + 24);
      v151 = *(v1 + 8);
      v77 = sub_23DB3BA40();
      sub_23DA16E70();
      v78 = v142;
      sub_23DB6ECFC();
      v79 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8];
      *&v148 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
      *(&v148 + 1) = v79;
      *&v151 = v76;
      sub_23DB3B9EC();
      sub_23DB6ECFC();
      v80 = v127;
      sub_23DB6ED9C();
      sub_23DB6F61C();
      v151 = *(v1 + 56);
      v148 = *(v1 + 56);

      sub_23DB6ECEC();

      sub_23DB3BA94(&v151);
      v81 = MEMORY[0x277CBB438];
      v82 = v138;
      v83 = v133;
      sub_23DB6EC7C();
      (*(v145 + 8))(v78, v146);
      (*(v131 + 8))(v80, v83);
      v84 = *(v1 + 88);
      *&v148 = v83;
      *(&v148 + 1) = &type metadata for ChartData.CategoricalDataValue;
      v149 = v81;
      v150 = v77;
    }

    else
    {
      v96 = &v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
      v97 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
      v98 = *(v96 + 1);
      *&v148 = v97;
      *(&v148 + 1) = v98;
      v99 = *(v1 + 24);
      *&v151 = *v1;
      sub_23DB3B9EC();
      sub_23DA16E70();
      sub_23DB6ECFC();
      *&v148 = v97;
      *(&v148 + 1) = v98;
      *&v151 = v99;
      sub_23DB6ECFC();
      v100 = v127;
      sub_23DB6ED9C();
      sub_23DB6F61C();
      v151 = *(v1 + 56);
      v148 = *(v1 + 56);
      v101 = sub_23DB3BA40();

      v102 = v142;
      sub_23DB6ECEC();

      sub_23DB3BA94(&v151);
      v103 = MEMORY[0x277CBB438];
      v82 = v138;
      v104 = v133;
      sub_23DB6EC7C();
      (*(v145 + 8))(v102, v146);
      (*(v131 + 8))(v100, v104);
      v105 = *(v1 + 88);
      *&v148 = v104;
      *(&v148 + 1) = &type metadata for ChartData.CategoricalDataValue;
      v149 = v103;
      v150 = v101;
    }

    swift_getOpaqueTypeConformance2();
    v85 = v135;
    v86 = v140;
    sub_23DB6EC8C();
    (*(v139 + 8))(v82, v86);
    v106 = v134;
    (*(v136 + 32))(v134, v85, v137);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CE8, &qword_23DB82BA0);
    swift_storeEnumTagMultiPayload();
    v74 = v143;
    sub_23DA17A54(v106, v143, &qword_27E300C98, &qword_23DB82B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CF0, &qword_23DB82BA8);
    goto LABEL_14;
  }

  if (!v62[24])
  {
    v64 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle + 8];
    *&v148 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle];
    *(&v148 + 1) = v64;
    v65 = *(v1 + 24);
    v151 = *(v1 + 8);
    v140 = v58;
    v141 = v1;
    v139 = v59;
    v66 = sub_23DB3BA40();
    sub_23DA16E70();
    v67 = v142;
    v138 = v46;
    v68 = v66;
    sub_23DB6ECFC();
    v69 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8];
    *&v148 = *&v62[OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle];
    *(&v148 + 1) = v69;
    *&v151 = v65;
    sub_23DB3B9EC();
    v143 = v31;
    sub_23DB6ECFC();
    sub_23DB6ED7C();
    sub_23DB6F61C();
    v151 = *(v141 + 56);
    v148 = *(v141 + 56);

    sub_23DB6ECEC();

    sub_23DB3BA94(&v151);
    v70 = MEMORY[0x277CBB400];
    v71 = v138;
    sub_23DB6EC7C();
    (*(v145 + 8))(v67, v146);
    (*(v121 + 8))(v50, v71);
    v72 = *(v141 + 88);
    *&v148 = v71;
    *(&v148 + 1) = &type metadata for ChartData.CategoricalDataValue;
    v149 = v70;
    v150 = v68;
    swift_getOpaqueTypeConformance2();
    v73 = v123;
    sub_23DB6EC8C();
    (*(v122 + 8))(v54, v73);
    v74 = v143;
    (*(v139 + 32))(v143, v61, v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CF0, &qword_23DB82BA8);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    v107 = v74;
    v108 = v147;
    sub_23DA17A54(v107, v147, &qword_27E300CA0, &qword_23DB82B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CE0, &qword_23DB82B98);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CC8, &qword_23DB82B90);
    return (*(*(v119 - 8) + 56))(v108, 0, 1, v119);
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300CC8, &qword_23DB82B90);
  v92 = *(*(v91 - 8) + 56);
  v93 = v91;
  v94 = v147;

  return v92(v94, 1, 1, v93);
}

uint64_t sub_23DB3958C()
{
  v1 = *v0;
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300C18, &qword_23DB82920);
  sub_23DA17B80(&qword_27E300C20, &qword_27E300C18, &qword_23DB82920);
  sub_23DB3ACA4();
  sub_23DB3ACF8();
  return sub_23DB704DC();
}

double sub_23DB396BC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_23DB396C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_23DB396D4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23DB396E0()
{
  sub_23DB70E5C();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EEF71E0](*&v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23DB7091C();
  v4 = *(v0 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EEF71E0](*&v4);
  v5 = *(v0 + 32);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EEF71E0](*&v5);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_23DB7091C();
  v8 = *(v0 + 72);
  v9 = sub_23DB70A9C();
  return MEMORY[0x23EEF71C0](v9);
}

uint64_t sub_23DB3978C()
{
  sub_23DB70E0C();
  sub_23DB396E0();
  return sub_23DB70E4C();
}

uint64_t sub_23DB397CC()
{
  sub_23DB70E0C();
  sub_23DB396E0();
  return sub_23DB70E4C();
}

BOOL sub_23DB39804()
{
  sub_23DB70E0C();
  sub_23DB396E0();
  v0 = sub_23DB70E4C();
  sub_23DB70E0C();
  sub_23DB396E0();
  return v0 == sub_23DB70E4C();
}

uint64_t sub_23DB39878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

unint64_t sub_23DB398EC(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_23DB70C3C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EEF70C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
    v8 = sub_23DB70B4C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_23DB399FC()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel__isSelected;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle + 8);

  v5 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t ChartViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t ChartViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23DB39B64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChartViewModel();
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

unint64_t sub_23DB39BD8()
{
  result = qword_27E300B68;
  if (!qword_27E300B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B60, &qword_23DB82420);
    sub_23DB39C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300B68);
  }

  return result;
}

unint64_t sub_23DB39C5C()
{
  result = qword_27E300B70;
  if (!qword_27E300B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300B70);
  }

  return result;
}

unint64_t sub_23DB39CB0()
{
  result = qword_27E300B98;
  if (!qword_27E300B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B90, &qword_23DB82430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300B98);
  }

  return result;
}

uint64_t sub_23DB39D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DB39DAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB39E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F47C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB39E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F47C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB39E78(uint64_t *a1)
{
  v1 = *a1;

  return sub_23DB6F48C();
}

uint64_t sub_23DB39EA4(uint64_t *a1)
{
  v1 = *a1;

  return sub_23DB6F48C();
}

unint64_t sub_23DB39ED0()
{
  result = qword_27E300BA0;
  if (!qword_27E300BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300AF8, &qword_23DB823B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300AF0, &qword_23DB823B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B90, &qword_23DB82430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300AE8, &qword_23DB823A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B20, &qword_23DB823E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B78, &qword_23DB82428);
    sub_23DA17B80(&qword_27E300B80, &qword_27E300B20, &qword_23DB823E8);
    sub_23DA17B80(&qword_27E300B88, &qword_27E300B78, &qword_23DB82428);
    swift_getOpaqueTypeConformance2();
    sub_23DB39CB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300BA0);
  }

  return result;
}

unint64_t sub_23DB3A104()
{
  result = qword_27E300BA8;
  if (!qword_27E300BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B48, &qword_23DB82410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B38, &qword_23DB82400);
    sub_23DB3A1CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300BA8);
  }

  return result;
}

unint64_t sub_23DB3A1CC()
{
  result = qword_27E300BB0;
  if (!qword_27E300BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B38, &qword_23DB82400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B30, &qword_23DB823F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B90, &qword_23DB82430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B28, &qword_23DB823F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC820, &unk_23DB74E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B20, &qword_23DB823E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300BB8, &qword_23DB82468);
    sub_23DA17B80(&qword_27E300B80, &qword_27E300B20, &qword_23DB823E8);
    sub_23DA17B80(&qword_27E300BC0, &qword_27E300BB8, &qword_23DB82468);
    swift_getOpaqueTypeConformance2();
    sub_23DB3A41C();
    swift_getOpaqueTypeConformance2();
    sub_23DB39CB0();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300BB0);
  }

  return result;
}

unint64_t sub_23DB3A41C()
{
  result = qword_27E300BC8;
  if (!qword_27E300BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC820, &unk_23DB74E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300BC8);
  }

  return result;
}

unint64_t sub_23DB3A498()
{
  result = qword_27E300BD0;
  if (!qword_27E300BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300B08, &qword_23DB823C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300AF8, &qword_23DB823B8);
    sub_23DB39ED0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300BD0);
  }

  return result;
}

uint64_t sub_23DB3A5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23DB3A604(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t type metadata accessor for ChartViewModel.SeriesViewModel()
{
  result = qword_27E300BE0;
  if (!qword_27E300BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DB3A6F0()
{
  sub_23DB3A7C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DB3A7C0()
{
  if (!qword_27E2FBFB0)
  {
    v0 = sub_23DB6EF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FBFB0);
    }
  }
}

unint64_t sub_23DB3A814()
{
  result = qword_27E300BF0;
  if (!qword_27E300BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300BF8, &qword_23DB82620);
    sub_23DB3A104();
    sub_23DB3A498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300BF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartViewModel.SeriesViewModel.SeriesType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChartViewModel.SeriesViewModel.SeriesType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DB3AA00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23DB3AA48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DB3AAAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23DB3AB08(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23DB3AB7C()
{
  result = qword_27E300C00;
  if (!qword_27E300C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C00);
  }

  return result;
}

unint64_t sub_23DB3ABD4()
{
  result = qword_27E300C08;
  if (!qword_27E300C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C08);
  }

  return result;
}

unint64_t sub_23DB3AC2C()
{
  result = qword_27E300C10;
  if (!qword_27E300C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C10);
  }

  return result;
}

unint64_t sub_23DB3ACA4()
{
  result = qword_27E300C28;
  if (!qword_27E300C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C28);
  }

  return result;
}

unint64_t sub_23DB3ACF8()
{
  result = qword_27E300C30;
  if (!qword_27E300C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C30);
  }

  return result;
}

unint64_t sub_23DB3AD8C()
{
  result = qword_27E300C38;
  if (!qword_27E300C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C38);
  }

  return result;
}

void sub_23DB3ADE0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [a1 xValue];
  [v10 number];
  v12 = v11;

  v13 = [a1 xValue];
  v14 = [v13 category];

  if (v14)
  {
    v15 = sub_23DB708BC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = [a1 yValue];
  v19 = 0;
  v20 = 0;
  if (v18)
  {
    v21 = v18;
    [v18 number];
    v20 = v22;
  }

  v23 = [a1 zNumericAxisValue];
  if (v23)
  {
    v24 = v23;
    [v23 number];
    v19 = v25;
  }

  v26 = [a1 zCategoryAxisValue];
  if (v26 && (v27 = v26, v28 = [v26 category], v27, v28))
  {
    v29 = sub_23DB708BC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  *a5 = v12;
  a5[1] = v15;
  a5[2] = v17;
  a5[3] = v20;
  a5[4] = v19;
  a5[5] = v29;
  a5[6] = v31;
  a5[7] = a2;
  a5[8] = a3;
  a5[9] = a4;
}

void sub_23DB3AFA0(void *a1, char a2, void *a3)
{
  *(v3 + 32) = MEMORY[0x277D84F90];
  v5 = (v3 + 32);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = a1;
  v7 = [a3 series];
  sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
  v8 = sub_23DB709EC();

  if (v8 >> 62)
  {
    v9 = sub_23DB70C3C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v49 + 40) = v9 == 1;
  v10 = [objc_msgSend(a3 xAxis)];
  swift_unknownObjectRelease();
  *(v49 + 41) = v10;
  v11 = [a3 series];
  v12 = sub_23DB709EC();

  v13 = sub_23DB398EC(v6, v12);
  v15 = v14;

  v16 = [objc_msgSend(a3 xAxis)];
  swift_unknownObjectRelease();
  v17 = sub_23DB708BC();
  v19 = v18;

  v20 = (v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_xAxisTitle);
  *v20 = v17;
  v20[1] = v19;
  v21 = [a3 yAxis];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 title];

    v24 = sub_23DB708BC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = (v49 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport14ChartViewModel15SeriesViewModel_yAxisTitle);
  *v27 = v24;
  v27[1] = v26;
  swift_beginAccess();
  sub_23DB6EECC();
  swift_endAccess();
  v28 = [v6 dataPoints];
  sub_23DAA967C(0, &qword_27E300C40, 0x277CE6AA0);
  v29 = sub_23DB709EC();

  if (v15)
  {
    goto LABEL_25;
  }

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_25:

    return;
  }

  v30 = sub_23DB70C3C();
  if (!v30)
  {
    goto LABEL_25;
  }

LABEL_9:
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x23EEF70C0](v31, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = [*(v49 + 16) name];
      if (v34)
      {
        v35 = v34;
        v36 = sub_23DB708BC();
        v38 = v37;
      }

      else
      {
        v36 = sub_23DB70D9C();
        v38 = v39;
      }

      v40 = v33;
      sub_23DB3ADE0(v40, v36, v38, v13, v50);

      swift_beginAccess();
      v41 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_23DAC8658(0, *(v41 + 2) + 1, 1, v41);
        *v5 = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v41 = sub_23DAC8658((v43 > 1), v44 + 1, 1, v41);
      }

      ++v31;
      *(v41 + 2) = v44 + 1;
      v45 = &v41[80 * v44];
      *(v45 + 2) = v50[0];
      v46 = v50[1];
      v47 = v50[2];
      v48 = v50[4];
      *(v45 + 5) = v50[3];
      *(v45 + 6) = v48;
      *(v45 + 3) = v46;
      *(v45 + 4) = v47;
      *v5 = v41;
      swift_endAccess();
    }

    while (v30 != v31);
    goto LABEL_25;
  }

  __break(1u);
}

void *sub_23DB3B41C(void *a1)
{
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB3671C();
  v3 = sub_23DB6F39C();
  v4 = MEMORY[0x277D84F90];
  v36 = v1;
  v1[5] = MEMORY[0x277D84F90];
  v5 = v1 + 5;
  v1[2] = v3;
  v1[3] = v6;
  v1[6] = v4;
  v1[4] = a1;
  v1[7] = 0;
  v7 = a1;
  v8 = [v7 series];
  sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
  v9 = sub_23DB709EC();

  if (v9 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DB70C3C())
  {
    v11 = 0;
    v34 = v9 & 0xFFFFFFFFFFFFFF8;
    v35 = v9 & 0xC000000000000001;
    v32 = i;
    v33 = v9;
    while (1)
    {
      if (v35)
      {
        v12 = MEMORY[0x23EEF70C0](v11, v9);
      }

      else
      {
        if (v11 >= *(v34 + 16))
        {
          goto LABEL_28;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v9 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = v36[7];
      v15 = [v7 contentDirection];
      v16 = [objc_msgSend(v7 xAxis)];
      swift_unknownObjectRelease();
      v17 = [v9 isContinuous];
      v18 = v17;
      if (v15 == 4)
      {
        if ((v16 & 1) == 0)
        {
          if (!v17)
          {
            goto LABEL_21;
          }

LABEL_19:
          v18 = 1;
          goto LABEL_22;
        }

        if (v17)
        {
          goto LABEL_19;
        }

LABEL_17:
        v18 = 3;
        goto LABEL_22;
      }

      if ((v16 & 1) == 0)
      {
        if ((v17 & 1) == 0)
        {
LABEL_21:
          v18 = 2;
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      if (v15 == 5)
      {
        v19 = v17;
      }

      else
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      v20 = type metadata accessor for ChartViewModel.SeriesViewModel();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = v7;
      v24 = v9;
      sub_23DB3AFA0(v24, v18, v23);
      v26 = v25;

      swift_beginAccess();

      MEMORY[0x23EEF6D70](v27);
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23DB709FC();
      }

      sub_23DB70A0C();
      swift_endAccess();
      swift_beginAccess();
      v28 = *(v26 + 32);
      swift_beginAccess();

      sub_23DB3C954(v29);
      swift_endAccess();

      ++v11;
      v9 = v33;
      if (v13 == v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:

  return v36;
}

unint64_t sub_23DB3B75C()
{
  result = qword_27E300C50;
  if (!qword_27E300C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300C48, &qword_23DB82978);
    sub_23DA17B80(&qword_27E300C58, &qword_27E300C60, &qword_23DB82980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C50);
  }

  return result;
}

uint64_t sub_23DB3B80C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23DB3B860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_23DB3B8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DB3B934()
{
  result = qword_27E300C68;
  if (!qword_27E300C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300C70, &qword_23DB82A58);
    sub_23DB3ACF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300C68);
  }

  return result;
}

unint64_t sub_23DB3B9EC()
{
  result = qword_27E300CD0;
  if (!qword_27E300CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300CD0);
  }

  return result;
}

unint64_t sub_23DB3BA40()
{
  result = qword_27E300CD8;
  if (!qword_27E300CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300CD8);
  }

  return result;
}

unint64_t sub_23DB3BAC8()
{
  result = qword_27E300CF8;
  if (!qword_27E300CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300D00, &unk_23DB82BB0);
    sub_23DB3BB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300CF8);
  }

  return result;
}

unint64_t sub_23DB3BB4C()
{
  result = qword_27E300D08;
  if (!qword_27E300D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300CC8, &qword_23DB82B90);
    sub_23DB3BC60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300C78, &qword_23DB82B40);
    sub_23DB6EE0C();
    sub_23DB3BA40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300D08);
  }

  return result;
}

unint64_t sub_23DB3BC60()
{
  result = qword_27E300D10;
  if (!qword_27E300D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300CA0, &qword_23DB82B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300CB8, &qword_23DB82B80);
    sub_23DB6ED8C();
    sub_23DB3BA40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23DB3BD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300D10);
  }

  return result;
}

unint64_t sub_23DB3BD74()
{
  result = qword_27E300D18;
  if (!qword_27E300D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300C98, &qword_23DB82B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300C88, &qword_23DB82B50);
    sub_23DB6EDAC();
    sub_23DB3BA40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300D18);
  }

  return result;
}

id AudiographExplorerViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiographExplorerViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiographExplorerViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AudiographExplorerViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiographExplorerViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DB3BFB4(void *a1)
{
  v2 = type metadata accessor for AudiographExplorerState(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = a1;
  sub_23DB6C0D0(v5);

  sub_23DB3671C();
  sub_23DB6F39C();
  sub_23DB3C134();
  v6 = [swift_getObjCClassFromMetadata() appearance];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  sub_23DB6EE5C();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D28, &unk_23DB82BF0));
  return sub_23DB6F6BC();
}

unint64_t sub_23DB3C134()
{
  result = qword_27E300D20;
  if (!qword_27E300D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E300D20);
  }

  return result;
}

Swift::Bool __swiftcall shouldShowCompactVariant()()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  if (v2 < 850.0)
  {
    return 1;
  }

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v5 == 0;
}

void sub_23DB3C238()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedInstance];
  [v0 enableVoiceControl_];
}

Swift::Bool __swiftcall isPhone()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

Swift::Bool __swiftcall isPad()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_23DB3C3FC()
{

  v0 = sub_23DB7097C();
  v2 = v1;
  v3 = sub_23DB7097C();
  v5 = v4;
  if (v2)
  {
    v6 = v3;
    while (v5)
    {
      if (v0 == v6 && v2 == v5)
      {
      }

      else
      {
        v7 = sub_23DB70DBC();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v0 = sub_23DB7097C();
      v2 = v8;
      v6 = sub_23DB7097C();
      v5 = v9;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_9:

  if (v5)
  {
LABEL_13:

    return 0;
  }

  return 1;
}

size_t sub_23DB3C59C(void *a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23DAC8B24(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    v7 = *(type metadata accessor for CommandToPractice(0) - 8);
    v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2;
    return sub_23DB3C680;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23DB3C694(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t AXOnboardingModelVoiceControl.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AXOnboardingModelVoiceControl.init()();
}

uint64_t sub_23DB3C728(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_23DB709AC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DB3C770(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23DAC82F8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DB3C864(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23DB70C3C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_23DB70C3C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23DAC8A04(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23DB5F204(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23DB3C954(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23DAC8658(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DB3CA4C()
{
  v0 = sub_23DB6E92C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - v8;
  __swift_allocate_value_buffer(v10, qword_27E30A748);
  __swift_project_value_buffer(v0, qword_27E30A748);
  sub_23DB6E8EC();
  sub_23DB6E91C();
  sub_23DB6E90C();
  v11 = *(v1 + 8);
  v11(v5, v0);
  return (v11)(v9, v0);
}

uint64_t *sub_23DB3CB7C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t AXOnboardingModelVoiceControl.init()()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v1 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceControl_subscribers) = v1;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceControl_vcStatus) = 2;
  v2 = AXOnboardingModel.init()();
  v3 = qword_27E2FBBE0;
  swift_retain_n();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27E30A6B0;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 voiceControlEnabled];

  v8 = sub_23DB7087C();
  [v5 setBool:v7 forKey:v8];

  v12 = *(v4[2] + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE150, &qword_23DB82C70);
  sub_23DA17B80(qword_27E2FE830, &qword_27E2FE150, &qword_23DB82C70);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v13 = *(v4[5] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v14 = *(v4[3] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D40, &qword_23DB82C78);
  sub_23DA17B80(&qword_27E300D48, &qword_27E300D40, &qword_23DB82C78);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v15 = *(v4[4] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D50, &qword_23DB82C80);
  sub_23DA17B80(&qword_27E300D58, &qword_27E300D50, &qword_23DB82C80);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v16 = *(v4[6] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D60, &qword_23DB82C88);
  sub_23DA17B80(&qword_27E300D68, &qword_27E300D60, &qword_23DB82C88);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v17 = *(v4[7] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D70, &qword_23DB82C90);
  sub_23DA17B80(&qword_27E300D78, &qword_27E300D70, &qword_23DB82C90);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v18 = *(v4[8] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D80, &qword_23DB82C98);
  sub_23DA17B80(&qword_27E300D88, &qword_27E300D80, &qword_23DB82C98);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v19 = *(v4[9] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300D90, &qword_23DB82CA0);
  sub_23DA17B80(&qword_27E300D98, &qword_27E300D90, &qword_23DB82CA0);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v20 = *(v4[10] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v21 = *(v4[11] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v22 = *(v4[12] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v23 = *(v4[17] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  v24 = *(v4[15] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DA0, &qword_23DB82CA8);
  sub_23DA17B80(&qword_27E300DA8, &qword_27E300DA0, &qword_23DB82CA8);
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  return v2;
}

unint64_t sub_23DB3D74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  result = sub_23DAC72C0();
  v5 = result;
  if (result >> 62)
  {
    result = sub_23DB70C3C();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EEF70C0](i, v5);
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState;
        swift_beginAccess();
        v10 = *v9;
        if (*v9)
        {
          v11 = *(v9 + 8);

          v10(v12);

          sub_23DA18BA0(v10);
        }

        else
        {
        }
      }
    }
  }

LABEL_15:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(a3 + 16);
    swift_beginAccess();
    v14 = *(v13 + 40);
    sub_23DB3DFF0();
  }

  return result;
}

uint64_t sub_23DB3D904()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DAC6AD0();
  }

  return result;
}

uint64_t sub_23DB3D95C()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E30A6B0;
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 voiceControlEnabled];

  if (v3)
  {
    v4 = *(v0 + 32);
    swift_beginAccess();
    if (*(v4 + 40) && *(v4 + 40) == 1)
    {

      goto LABEL_8;
    }

    v5 = sub_23DB70DBC();

    if (v5)
    {
LABEL_8:
      v6 = objc_opt_self();
      v7 = [v6 currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if (v8 == 1 || (v9 = [v6 currentDevice], v10 = objc_msgSend(v9, sel_userInterfaceIdiom), v9, !v10))
      {
        v11 = "onboarding.vc.welcome.text.vcInstructions.ios";
      }

      else
      {
        v11 = "onboarding.vc.welcome.text.vcInstructions.mac";
      }

      v15 = (v11 - 32) | 0x8000000000000000;
      v16 = 0xD00000000000002DLL;
      return sub_23DAC7D28(v16, v15);
    }
  }

  v12 = [v1 sharedInstance];
  v13 = [v12 voiceControlEnabled];

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = *(v0 + 32);
  swift_beginAccess();
  if (*(v14 + 40))
  {
    v17 = sub_23DB70DBC();

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_21:
    v24 = [v1 sharedInstance];
    v25 = [v24 voiceControlEnabled];

    if (v25)
    {
      v26 = *(v0 + 32);
      swift_beginAccess();
      if (*(v26 + 40) && *(v26 + 40) != 1)
      {
      }

      else
      {
        v31 = sub_23DB70DBC();

        if ((v31 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      sub_23DAA2A30();
    }

LABEL_31:
    v16 = 0xD000000000000022;
    v15 = 0x800000023DB8EF30;
    return sub_23DAC7D28(v16, v15);
  }

LABEL_18:
  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1 || (v21 = [v18 currentDevice], v22 = objc_msgSend(v21, sel_userInterfaceIdiom), v21, !v22))
  {
    v23 = "onboarding.vc.welcome.text.vcInstructions.withWakeUp.ios";
  }

  else
  {
    v23 = "onboarding.vc.welcome.text.vcInstructions.withWakeUp.mac";
  }

  v27 = sub_23DAC7D28(0xD000000000000038, (v23 - 32) | 0x8000000000000000);
  v32[0] = 4;
  v29 = sub_23DAA8EC0(v27, v28, v32);

  return v29;
}

uint64_t sub_23DB3DDA4()
{
  sub_23DAC7D28(0xD000000000000023, 0x800000023DB8EF00);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v9 = 53;
  v0 = sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8B830);
  v2 = sub_23DAA67F0(&v9, v0, v1);
  v4 = v3;

  v5 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23DB73BA0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_23DA40598();
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  v7 = sub_23DB708CC();

  return v7;
}

uint64_t sub_23DB3DF5C()
{
  v2 = MEMORY[0x277D84F90];
  sub_23DB5C718();
  MEMORY[0x23EEF6D70]();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DB709FC();
  }

  sub_23DB70A0C();
  return v2;
}

unint64_t sub_23DB3DFF0()
{
  result = sub_23DAC72C0();
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
  }

  result = sub_23DB70C3C();
  v2 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      type metadata accessor for Page.Practice(0);
      if (swift_dynamicCastClass())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF1C();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB3E160()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v151 = *(v1 - 8);
  v152 = v1;
  v2 = *(v151 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v150 = &v125 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v148 = *(v5 - 8);
  v149 = v5;
  v6 = *(v148 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v147 = &v125 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v137 = *(v140 - 1);
  v9 = *(v137 + 64);
  MEMORY[0x28223BE20](v140, v10);
  v134 = &v125 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v132 = *(v133 - 8);
  v12 = *(v132 + 64);
  MEMORY[0x28223BE20](v133, v13);
  v131 = &v125 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v126 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v126, v17);
  v19 = &v125 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v125 - v24;
  v26 = sub_23DB6EA8C();
  v153 = *(v26 - 8);
  v27 = v153[8];
  MEMORY[0x28223BE20](v26, v28);
  v142 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v125 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v125 - v36;
  v139 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8EEC0);
  v138 = v38;
  v154 = v0;
  v136 = sub_23DAC7D28(0xD000000000000018, 0x800000023DB8EEE0);
  v135 = v39;
  sub_23DB6EA7C();
  v40 = type metadata accessor for Page.PracticeCommandsCheckmark(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v155 = 0uLL;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v45 = *(v21 + 32);
  v143 = v20;
  v141 = v21 + 32;
  v127 = v45;
  v45(v43 + v44, v25, v20);
  v46 = v153[2];
  v144 = v37;
  v145 = v33;
  v47 = v126;
  v146 = v26;
  v130 = v153 + 2;
  v129 = v46;
  v46(v33, v37, v26);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v49 = *(v15 + 32);
  v50 = v47;
  v49(v43 + v48, v19, v47);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v155 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v51;
  v55 = v131;
  sub_23DB6EECC();
  (*(v132 + 32))(v43 + v53, v55, v133);
  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v54;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v155 = 0;
  v57 = v134;
  sub_23DB6EECC();
  (*(v137 + 32))(v43 + v56, v57, v140);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v49(v43 + v58, v19, v47);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v137 = xmmword_23DB74320;
  v155 = xmmword_23DB74320;
  sub_23DB6EECC();
  v60 = v143;
  v140 = v49;
  v61 = v127;
  v127(v43 + v59, v25, v143);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v155 = v137;
  sub_23DB6EECC();
  v61(v43 + v62, v25, v60);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v155) = 0;
  sub_23DB6EECC();
  v140(v43 + v63, v19, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v155 = 0;
  *(&v155 + 1) = 0xE000000000000000;
  v65 = v147;
  sub_23DB6EECC();
  (*(v148 + 32))(v43 + v64, v65, v149);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v155 = 0uLL;
  sub_23DB6EECC();
  v61(v43 + v66, v25, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v155 = nullsub_1;
  *(&v155 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v150;
  sub_23DB6EECC();
  (*(v151 + 32))(v43 + v67, v68, v152);
  v69 = v142;
  v71 = v145;
  v70 = v146;
  v129(v142, v145, v146);
  v72 = Page.init(id:title:text:subPages:iconName:)(v69, v139, v138, v136, v135, MEMORY[0x277D84F90], 0, 0);
  v73 = v153[1];
  v73(v71, v70);
  v73(v144, v70);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v74 = qword_27E30A6B0;
  swift_retain_n();
  v75 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v77 = v76;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v155 = v75;
  *(&v155 + 1) = v77;

  sub_23DB6EF1C();
  v78 = sub_23DB3DDA4();
  v80 = v79;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v155 = v78;
  *(&v155 + 1) = v80;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v155) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v81 = type metadata accessor for CommandToPractice(0);
  v82 = (*(*(v81 - 1) + 80) + 32) & ~*(*(v81 - 1) + 80);
  v151 = *(*(v81 - 1) + 72);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_23DB78D60;
  v152 = v83;
  v153 = v74;
  v84 = v83 + v82;
  LOBYTE(v155) = 45;
  v85 = sub_23DAA67F0(&v155, 0, 0);
  v87 = v86;
  *v84 = 0;
  *(v84 + 8) = 0xE000000000000000;
  *(v84 + 17) = 186;
  *(v84 + 19) = 0;
  v88 = v84 + v81[9];
  sub_23DB6EA7C();
  v89 = v81[10];
  *(v84 + v89) = 1;
  v90 = v81[11];
  *(v84 + v90) = 1;
  v91 = v81[12];
  v92 = type metadata accessor for KeyboardKey(0);
  v93 = *(v92 - 8);
  v94 = *(v93 + 56);
  v149 = v93 + 56;
  v150 = v94;
  (v94)(v84 + v91, 1, 1, v92);
  v95 = (v84 + v81[13]);
  *v95 = 0;
  v95[1] = 0;
  v96 = *(v84 + 8);
  *v84 = v85;
  *(v84 + 8) = v87;

  *(v84 + 16) = -83;
  *(v84 + 19) = 1;
  v97 = v95[1];
  *v95 = 0;
  v95[1] = 0;

  *(v84 + v89) = 1;
  *(v84 + v90) = 1;
  v98 = [objc_opt_self() currentDevice];
  v99 = [v98 userInterfaceIdiom];

  if (v99)
  {
    LOBYTE(v155) = 46;
    v100 = sub_23DAA67F0(&v155, 0, 0);
    v102 = v101;
    v103 = -82;
  }

  else
  {
    LOBYTE(v155) = 47;
    v100 = sub_23DAA67F0(&v155, 0, 0);
    v102 = v104;
    v103 = -81;
  }

  v105 = v84 + v151;
  *v105 = 0;
  *(v105 + 8) = 0xE000000000000000;
  *(v105 + 17) = 186;
  *(v105 + 19) = 0;
  v106 = v105 + v81[9];
  sub_23DB6EA7C();
  v107 = v81[10];
  *(v105 + v107) = 1;
  v108 = v81[11];
  *(v105 + v108) = 1;
  (v150)(v105 + v81[12], 1, 1, v92);
  v109 = (v105 + v81[13]);
  *v109 = 0;
  v109[1] = 0;
  v110 = *(v105 + 8);
  *v105 = v100;
  *(v105 + 8) = v102;

  *(v105 + 16) = v103;
  *(v105 + 19) = 0;
  v111 = v109[1];
  *v109 = 0;
  v109[1] = 0;

  *(v105 + v107) = 1;
  *(v105 + v108) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v112 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v113 = *(v72 + v112);
  *(v72 + v112) = v152;

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  v116 = v154;
  *(v115 + 16) = v114;
  *(v115 + 24) = v116;
  v117 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  *v117 = sub_23DB60F3C;
  v117[1] = v115;
  swift_retain_n();

  sub_23DA18BA0(v118);

  v120 = swift_allocObject();
  swift_weakInit();

  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v116;
  v122 = (v72 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v123 = v122[1];
  *v122 = sub_23DB60F44;
  v122[1] = v121;

  return v72;
}

uint64_t sub_23DB3F048()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v12[0] != 1)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v2 = v12[0];
    v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v13 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = sub_23DB6EEFC();
    sub_23DAC8040(&v13, v2, v5);
    v4(v12, 0);

    v6 = v13;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v7 = *(v1 + v3);
    *(v1 + v3) = v6;

    v8 = *(v1 + v3);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = *(type metadata accessor for CommandToPractice(0) - 8);
      if (*(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10 + 18) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v12[0] = 1;
        sub_23DB6EF1C();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23DB3F334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v157 = *(v1 - 8);
  v158 = v1;
  v2 = *(v157 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v156 = &v134 - v4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v152 = *(v153 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x28223BE20](v153, v6);
  v149 = &v134 - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v144 = *(v145 - 8);
  v8 = *(v144 + 64);
  MEMORY[0x28223BE20](v145, v9);
  v143 = &v134 - v10;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v11 = *(v160 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v160, v13);
  v138 = &v134 - v14;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v164 = *(v162 - 8);
  v15 = *(v164 + 64);
  MEMORY[0x28223BE20](v162, v16);
  v18 = &v134 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v134 - v23;
  v25 = sub_23DB6EA8C();
  v161 = *(v25 - 8);
  v26 = v161[8];
  MEMORY[0x28223BE20](v25, v27);
  v150 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v159 = &v134 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v134 - v34;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v155 = qword_27E30A6B0;
  LOBYTE(v165) = 48;
  v142 = sub_23DAA8EC0(16421, 0xE200000000000000, &v165);
  v141 = v36;
  v163 = v0;
  v37 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8EE40);
  LOBYTE(v165) = 48;
  v140 = sub_23DAA8EC0(v37, v38, &v165);
  v139 = v39;

  sub_23DB6EA7C();
  v40 = type metadata accessor for Page.PracticeSingleButton(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__buttonText;
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v20 + 32);
  v146 = v24;
  v148 = v19;
  v147 = v20 + 32;
  v135 = v45;
  v45(v43 + v44, v24, v19);
  v46 = v35;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__popoverText;
  v165 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v48 = *(v164 + 32);
  v164 += 32;
  v134 = v48;
  v48(v43 + v47, v18, v162);
  v49 = v161[2];
  v151 = v46;
  v154 = v25;
  v137 = v161 + 2;
  v136 = v49;
  v49(v159, v46, v25);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v165) = 0;
  v51 = v138;
  sub_23DB6EECC();
  v54 = *(v11 + 32);
  v52 = v11 + 32;
  v53 = v54;
  v54(v43 + v50, v51, v160);
  v55 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v56 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v56 = MEMORY[0x277D84FA0];
  }

  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v56;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v165 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v58 = v55;
  v59 = v143;
  sub_23DB6EECC();
  (*(v144 + 32))(v43 + v57, v59, v145);
  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v58;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v165 = 0;
  v61 = v149;
  sub_23DB6EECC();
  (*(v152 + 32))(v43 + v60, v61, v153);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v63 = v160;
  v53(v43 + v62, v51, v160);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v152 = xmmword_23DB74320;
  v165 = xmmword_23DB74320;
  sub_23DB6EECC();
  v65 = v162;
  v153 = v52;
  v66 = v53;
  v67 = v134;
  v134(v43 + v64, v18, v162);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v165 = v152;
  sub_23DB6EECC();
  v67(v43 + v68, v18, v65);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v165) = 0;
  sub_23DB6EECC();
  v66(v43 + v69, v51, v63);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  v71 = v146;
  sub_23DB6EECC();
  v135(v43 + v70, v71, v148);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v165 = 0uLL;
  sub_23DB6EECC();
  v67(v43 + v72, v18, v65);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v165 = nullsub_1;
  *(&v165 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v74 = v156;
  sub_23DB6EECC();
  (*(v157 + 32))(v43 + v73, v74, v158);
  v75 = v150;
  v76 = v159;
  v77 = v154;
  v136(v150, v159, v154);
  v78 = Page.init(id:title:text:subPages:iconName:)(v75, v142, v141, v140, v139, MEMORY[0x277D84F90], 0, 0);
  v79 = v161[1];
  v79(v151, v77);
  v79(v76, v77);
  swift_retain_n();
  v80 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v82 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v80;
  *(&v165 + 1) = v82;

  sub_23DB6EF1C();
  v83 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8AED0);
  v85 = v84;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v83;
  *(&v165 + 1) = v85;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v165 = xmmword_23DB82C00;
  swift_retain_n();
  sub_23DB6EF1C();
  v86 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E400);
  v88 = v87;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v86;
  *(&v165 + 1) = v88;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v165) = 1;
  sub_23DB6EF1C();
  v89 = sub_23DAA67F4(0xD000000000000026, 0x800000023DB8EE60, 2);
  v91 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v89;
  *(&v165 + 1) = v91;
  sub_23DB6EF1C();
  v92 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8EE90);
  v94 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v165 = v92;
  *(&v165 + 1) = v94;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v95 = (type metadata accessor for CommandToPractice(0) - 8);
  v96 = *v95;
  v162 = *(*v95 + 72);
  v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v98 = swift_allocObject();
  v164 = v98;
  *(v98 + 16) = xmmword_23DB78D60;
  v99 = v98 + v97;
  LOBYTE(v165) = 48;
  v161 = sub_23DAA904C(&v165, 0, 0);
  v101 = v100;
  *v99 = 0;
  *(v99 + 8) = 0xE000000000000000;
  *(v99 + 17) = 186;
  *(v99 + 19) = 0;
  v102 = v99 + v95[11];
  sub_23DB6EA7C();
  v103 = v95[12];
  *(v99 + v103) = 1;
  v104 = v95[13];
  *(v99 + v104) = 1;
  v105 = v95[14];
  v106 = type metadata accessor for KeyboardKey(0);
  v107 = *(*(v106 - 8) + 56);
  v107(v99 + v105, 1, 1, v106);
  v108 = (v99 + v95[15]);
  *v108 = 0;
  v108[1] = 0;
  v109 = *(v99 + 8);
  *v99 = v161;
  *(v99 + 8) = v101;

  *(v99 + 16) = -80;
  *(v99 + 19) = 1;
  v110 = v108[1];
  *v108 = 0;
  v108[1] = 0;

  *(v99 + v103) = 1;
  *(v99 + v104) = 1;
  v111 = v99 + v162;
  LOBYTE(v165) = 53;
  v112 = sub_23DAA904C(&v165, 0, 0);
  v114 = v113;
  *v111 = 0;
  *(v111 + 8) = 0xE000000000000000;
  *(v111 + 17) = 186;
  *(v111 + 19) = 0;
  v115 = v111 + v95[11];
  sub_23DB6EA7C();
  v116 = v95[12];
  *(v111 + v116) = 1;
  v117 = v95[13];
  *(v111 + v117) = 1;
  v107(v111 + v95[14], 1, 1, v106);
  v118 = (v111 + v95[15]);
  *v118 = 0;
  v118[1] = 0;
  v119 = *(v111 + 8);
  *v111 = v112;
  *(v111 + 8) = v114;

  *(v111 + 16) = -75;
  *(v111 + 19) = 0;
  v120 = v118[1];
  *v118 = 0;
  v118[1] = 0;

  *(v111 + v116) = 1;
  *(v111 + v117) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v121 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v122 = *(v78 + v121);
  *(v78 + v121) = v164;

  v123 = swift_allocObject();
  swift_weakInit();
  v124 = swift_allocObject();
  v125 = v163;
  *(v124 + 16) = v123;
  *(v124 + 24) = v125;
  v126 = (v78 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v127 = *v126;
  v128 = v126[1];
  *v126 = sub_23DB60F0C;
  v126[1] = v124;

  sub_23DA18BA0(v127);

  v129 = swift_allocObject();
  swift_weakInit();

  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = v125;
  v131 = (v78 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v132 = v131[1];
  *v131 = sub_23DB60F14;
  v131[1] = v130;

  return v78;
}

uint64_t sub_23DB403B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E30A6B0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (LOBYTE(v27[0]) != 1)
  {
  }

  LOBYTE(v27[0]) = 53;
  v3 = *(v2 + 80);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);

  v6 = sub_23DAA904C(v27, v4, v5);
  v8 = v7;

  v9 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v10 = *(v1 + v9);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DAC8B24(v10);
    v10 = result;
  }

  if (v10[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(type metadata accessor for CommandToPractice(0) - 8);
  v12 = *(v11 + 72);
  v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (v10 + v26 + v12);
  v14 = v13[1];
  *v13 = v6;
  v13[1] = v8;

  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v15 = *(v1 + v9);
  *(v1 + v9) = v10;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v16 = v27[0];
  v28 = *(v1 + v9);
  swift_getKeyPath();
  swift_getKeyPath();

  v17 = sub_23DB6EEFC();
  sub_23DAC8040(&v28, v16, v18);
  v17(v27, 0);

  v19 = v28;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v20 = *(v1 + v9);
  *(v1 + v9) = v19;

  v21 = *(v1 + v9);
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (*(v21 + v26 + (v22 - 1) * v12 + 18) == 1)
  {
    v23 = sub_23DAA67F4(0xD000000000000025, 0x800000023DB8EB90, 2);
    v25 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    v27[0] = v23;
    v27[1] = v25;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v27[0]) = 1;
    sub_23DB6EF1C();
  }
}

uint64_t sub_23DB40824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6, v9);
  v61 = (&v49 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v49 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v57 = a3;
    v58 = a4;
    v21 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v22 = result;
    swift_beginAccess();
    v59 = v21;
    v23 = *(v22 + v21);
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();

    v56 = KeyPath;
    v55 = v25;
    v26 = v23;
    v54 = sub_23DB6EEFC();
    v50 = v27;
    v28 = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v60 = v22;
    v53 = v28;
    v52 = v29;
    v51 = sub_23DB6EEFC();
    v49 = v30;

    v31 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v32 = 0;
    v33 = v7 + 7;
    v62 = v26;
    v26 = v26[2];
    v7 += 6;
    v34 = &qword_27E2FE1C8;
    if (!v26)
    {
LABEL_4:
      v35 = 1;
      v32 = v26;
      goto LABEL_7;
    }

    while (1)
    {
      v36 = v19;
      v19 = v7;
      v7 = v33;
      v37 = v26;
      v26 = v31;
      v38 = v34;
      v39 = v62;
      if (v32 >= v62[2])
      {
        goto LABEL_18;
      }

      v40 = *(type metadata accessor for CommandToPractice(0) - 8);
      v63 = (v32 + 1);
      v41 = v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32;
      v42 = *(v6 + 48);
      v43 = v61;
      *v61 = v32;
      sub_23DAC962C(v41, v43 + v42);
      sub_23DA17A54(v43, v15, &qword_27E2FE1C0, &qword_23DB7A440);
      v35 = 0;
      v32 = v63;
      v34 = v38;
      v31 = v26;
      v26 = v37;
      v33 = v7;
      v7 = v19;
      v19 = v36;
LABEL_7:
      (*v33)(v15, v35, 1, v6);
      sub_23DA17A54(v15, v19, v34, &qword_23DB7A448);
      if ((*v7)(v19, 1, v6) == 1)
      {
        break;
      }

      v44 = *v19;
      if ((*v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v31 = sub_23DAC8B24(v26);
        goto LABEL_3;
      }

      if (v44 >= *(v31 + 16))
      {
        goto LABEL_17;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DB5F554(v19 + *(v6 + 48));
      if (v32 == v26)
      {
        goto LABEL_4;
      }
    }

    *v49 = 0;
    *v50 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    sub_23DB6BB30(v57);
    sub_23DA17988(v58, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v51(v64, 0);

    v54(v65, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v47 = v60;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v48 = *(v47 + v59);
    *(v47 + v59) = v31;
  }

  return result;
}

uint64_t sub_23DB40E20()
{
  v1 = sub_23DB6EA8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v6 = qword_27E30A6B0;
  v7 = sub_23DAC7D28(0xD00000000000001ALL, 0x800000023DB8ED90);
  v9 = v8;
  v10 = v0;
  v11 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8EDB0);
  LOBYTE(v87) = 44;
  v13 = sub_23DAA8EC0(v11, v12, &v87);
  v15 = v14;

  sub_23DB6EA7C();
  v16 = type metadata accessor for Page.PracticeScroll(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_23DA234C8(v5, v7, v9, v13, v15, MEMORY[0x277D84F90], 0, 0);
  swift_retain_n();
  v20 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v20;
  v88 = v22;

  sub_23DB6EF1C();
  v83 = v10;
  v23 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8AED0);
  v25 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v23;
  v88 = v25;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = 0xD000000000000011;
  v88 = 0x800000023DB8EDD0;
  swift_retain_n();
  sub_23DB6EF1C();
  v26 = sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8EDF0);
  v28 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v26;
  v88 = v28;

  sub_23DB6EF1C();
  v29 = sub_23DAA67F4(0xD000000000000021, 0x800000023DB8EE10, 2);
  v31 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v29;
  v88 = v31;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v87) = 1;
  sub_23DB6EF1C();
  v32 = *(v6 + 72);
  swift_beginAccess();
  v84 = *(v32 + 40);
  v33 = VCCommandIdentifier.rawValue.getter();
  v35 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = v33;
  v86 = v35;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = 0xD00000000000001DLL;
  v86 = 0x800000023DB859F0;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v85 = 0xD00000000000001BLL;
  v86 = 0x800000023DB85A10;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v36 = (type metadata accessor for CommandToPractice(0) - 8);
  v37 = *v36;
  v80 = *(*v36 + 72);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  v81 = v6;
  v82 = v39;
  *(v39 + 16) = xmmword_23DB78D60;
  v40 = v39 + v38;
  LOBYTE(v85) = 43;
  v41 = sub_23DAA67F0(&v85, 0, 0);
  v78 = v42;
  v79 = v41;
  *v40 = 0;
  *(v40 + 8) = 0xE000000000000000;
  *(v40 + 17) = 186;
  *(v40 + 19) = 0;
  v43 = v40 + v36[11];
  sub_23DB6EA7C();
  v44 = v36[12];
  *(v40 + v44) = 1;
  v45 = v36[13];
  *(v40 + v45) = 1;
  v46 = v36[14];
  v47 = type metadata accessor for KeyboardKey(0);
  v48 = *(*(v47 - 8) + 56);
  v48(v40 + v46, 1, 1, v47);
  v49 = (v40 + v36[15]);
  *v49 = 0;
  v49[1] = 0;
  v50 = *(v40 + 8);
  v51 = v78;
  *v40 = v79;
  *(v40 + 8) = v51;

  *(v40 + 16) = -85;
  *(v40 + 19) = 1;
  v52 = v49[1];
  *v49 = 0;
  v49[1] = 0;

  *(v40 + v44) = 1;
  *(v40 + v45) = 1;
  v53 = v40 + v80;
  LOBYTE(v85) = 44;
  v54 = sub_23DAA67F0(&v85, 0, 0);
  v56 = v55;
  *v53 = 0;
  *(v53 + 8) = 0xE000000000000000;
  *(v53 + 17) = 186;
  *(v53 + 19) = 0;
  v57 = v53 + v36[11];
  sub_23DB6EA7C();
  v58 = v36[12];
  *(v53 + v58) = 1;
  v59 = v36[13];
  *(v53 + v59) = 1;
  v48(v53 + v36[14], 1, 1, v47);
  v60 = (v53 + v36[15]);
  *v60 = 0;
  v60[1] = 0;
  v61 = *(v53 + 8);
  *v53 = v54;
  *(v53 + 8) = v56;

  *(v53 + 16) = -84;
  *(v53 + 19) = 0;
  v62 = v60[1];
  *v60 = 0;
  v60[1] = 0;

  *(v53 + v58) = 1;
  *(v53 + v59) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v64 = *(v19 + v63);
  *(v19 + v63) = v82;

  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  v67 = v83;
  v66[2] = v65;
  v66[3] = v67;
  v66[4] = v81;
  v68 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v69 = *v68;
  v70 = v68[1];
  *v68 = sub_23DB60EA8;
  v68[1] = v66;

  sub_23DA18BA0(v69);

  v71 = swift_allocObject();
  swift_weakInit();

  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = v67;
  v73 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v74 = v73[1];
  *v73 = sub_23DB60EB4;
  v73[1] = v72;

  v75 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v76 = v75[1];
  *v75 = sub_23DB421BC;
  v75[1] = 0;

  return v19;
}

uint64_t sub_23DB41738()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v22[0] != 1)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v2 = v22[0];
    v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v19 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = sub_23DB6EEFC();
    sub_23DAC8040(&v19, v2, v5);
    v4(v22, 0);

    v6 = v19;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v7 = *(v1 + v3);
    *(v1 + v3) = v6;

    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    v8 = *(qword_27E30A6B0 + 72);
    swift_beginAccess();
    v21 = *(v8 + 40);
    v9 = VCCommandIdentifier.rawValue.getter();
    v11 = v10;
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v9;
    v20 = v11;

    result = sub_23DB6EF1C();
    v12 = *(v1 + v3);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = *(type metadata accessor for CommandToPractice(0) - 8);
      if (*(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14 + 18) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v19) = 1;

        sub_23DB6EF1C();
        v16 = sub_23DAA67F4(0xD000000000000021, 0x800000023DB8EE10, 2);
        v18 = v17;
        swift_getKeyPath();
        swift_getKeyPath();
        v19 = v16;
        v20 = v18;
        sub_23DB6EF1C();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23DB41B44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v57 = (&v45 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v45 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27E2FBBE0 == -1)
    {
      goto LABEL_3;
    }

LABEL_19:
    v44 = result;
    swift_once();
    result = v44;
LABEL_3:
    v55 = qword_27E30A6B0;
    v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v16 = result;
    swift_beginAccess();
    v54 = v15;
    v17 = *(v16 + v15);
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();

    v53 = KeyPath;
    v20 = v17;
    v52 = v19;
    v51 = sub_23DB6EEFC();
    v47 = v21;
    v22 = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v56 = v16;
    v50 = v22;
    v49 = v23;
    v48 = sub_23DB6EEFC();
    v46 = v24;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23DAC8B24(v17);
      v17 = result;
    }

    v25 = 0;
    v26 = v1 + 7;
    v58 = v20;
    v27 = v20[2];
    v1 += 6;
    v28 = &qword_27E2FE1C8;
    if (!v27)
    {
LABEL_6:
      v29 = 1;
      v25 = v27;
      goto LABEL_9;
    }

    while (1)
    {
      v30 = v13;
      v13 = v1;
      v1 = v26;
      v31 = v27;
      v32 = v17;
      v33 = v28;
      v34 = v58;
      if (v25 >= v58[2])
      {
        goto LABEL_18;
      }

      v35 = *(type metadata accessor for CommandToPractice(0) - 8);
      v59 = v25 + 1;
      v36 = v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25;
      v37 = *(v0 + 48);
      v38 = v57;
      *v57 = v25;
      sub_23DAC962C(v36, v38 + v37);
      sub_23DA17A54(v38, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v29 = 0;
      v25 = v59;
      v28 = v33;
      v17 = v32;
      v27 = v31;
      v26 = v1;
      v1 = v13;
      v13 = v30;
LABEL_9:
      (*v26)(v9, v29, 1, v0);
      sub_23DA17A54(v9, v13, v28, &qword_23DB7A448);
      result = (*v1)(v13, 1, v0);
      if (result == 1)
      {
        break;
      }

      v39 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v39 >= v17[2])
      {
        goto LABEL_17;
      }

      v40 = *(type metadata accessor for CommandToPractice(0) - 8);
      v41 = v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39;
      *(v41 + 18) = 0;
      *(v41 + 19) = v39 == 0;
      result = sub_23DB5F554(v13 + *(v0 + 48));
      if (v25 == v27)
      {
        goto LABEL_6;
      }
    }

    *v46 = 0;
    *v47 = 0;
    sub_23DB6BB30(&unk_284FE7A88);
    sub_23DA17988(&unk_284FE7AA8, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v48(v60, 0);

    v51(v61, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v42 = v56;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v43 = *(v42 + v54);
    *(v42 + v54) = v17;

    sub_23DB6BB30(&unk_284FE7AC8);
    sub_23DA17988(&unk_284FE7AE8, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    sub_23DB6BB30(&unk_284FE7B08);
    sub_23DA17988(&unk_284FE7B28, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();
  }

  return result;
}

char *sub_23DB421CC()
{
  v1 = v0;
  v2 = type metadata accessor for CommandToPractice(0);
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = *(v110 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DB6EA8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8ECF0);
  v14 = v13;
  v15 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8ED10);
  v17 = v16;
  sub_23DB6EA7C();
  v18 = type metadata accessor for Page.PracticeLongText(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_23DA23EBC(v11, v12, v14, v15, v17, MEMORY[0x277D84F90], 0, 0);
  v22 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8ED30);
  v24 = sub_23DB5E0E4(v22, v23, 1);

  v25 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8ED30);
  v112 = sub_23DB5E0E4(v25, v26, 1);

  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  swift_retain_n();
  v27 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8ED60);
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v117 = v27;
  *(&v117 + 1) = v29;

  sub_23DB6EF1C();
  v30 = sub_23DB3DDA4();
  v32 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v117 = v30;
  *(&v117 + 1) = v32;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = xmmword_23DB82C10;
  swift_retain_n();
  sub_23DB6EF1C();
  v113 = v1;
  v33 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8ED30);
  v35 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v117 = v33;
  *(&v117 + 1) = v35;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v117) = 1;
  sub_23DB6EF1C();
  v36 = type metadata accessor for Page.Practice(0);
  v108 = sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v109 = v36;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v37 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v38 = *(v21 + v37);
  v114 = v21;
  *(v21 + v37) = MEMORY[0x277D84F90];

  v102 = v24;
  v39 = *(v24 + 2);
  if (v39)
  {
    v106 = "olEnabledChanged";
    v105 = "onboarding.global.openingQuote";
    v40 = (v102 + 40);
    v104 = 0xD00000000000001ELL;
    v107 = v37;
    v103 = v6;
    do
    {
      v42 = *(v40 - 1);
      v41 = *v40;
      v43 = qword_27E2FBBF0;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = (*qword_27E30A6D8 + 304);
      v45 = *v44;
      v46 = v104;
      v47 = (*v44)(v104, v106 | 0x8000000000000000);
      v49 = v48;
      v50 = v45(v46, v105 | 0x8000000000000000);
      v52 = v51;
      v115 = v47;
      v116 = v49;
      MEMORY[0x23EEF6D00](v42, v41);

      MEMORY[0x23EEF6D00](v50, v52);

      v53 = v115;
      v54 = v116;
      v55 = v103;
      *(v103 + 17) = 186;
      v56 = v111;
      v57 = v55 + v111[9];
      sub_23DB6EA7C();
      v58 = v56[10];
      v59 = v56[11];
      v60 = v56[12];
      v61 = type metadata accessor for KeyboardKey(0);
      (*(*(v61 - 8) + 56))(v55 + v60, 1, 1, v61);
      v62 = (v55 + v56[13]);
      *v55 = v53;
      *(v55 + 8) = v54;
      *(v55 + 16) = -72;
      *(v55 + 19) = 0;
      *v62 = 0;
      v62[1] = 0;
      *(v55 + v58) = 1;
      *(v55 + v59) = 1;
      v63 = v107;
      v64 = *(v114 + v107);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_23DAC8404(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_23DAC8404(v65 > 1, v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      sub_23DB60970(v55, v64 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v66, type metadata accessor for CommandToPractice);
      v67 = v114;
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v68 = *(v67 + v63);
      *(v67 + v63) = v64;

      v40 += 2;
      --v39;
    }

    while (v39);
  }

  result = v112;
  v111 = *(v112 + 2);
  if (v111)
  {
    v70 = 0;
    v71 = MEMORY[0x277D84F90];
    v72 = (v112 + 40);
    while (v70 < *(result + 2))
    {
      v73 = *(v72 - 1);
      v74 = *v72;
      v75 = swift_allocObject();

      v76 = sub_23DB5DDFC(v73, v74);
      v78 = v77;

      v75[2] = v76;
      v75[3] = v78;
      v75[4] = nullsub_1;
      v75[5] = 0;
      v75[6] = v70;
      v79 = swift_allocObject();
      *(v79 + 16) = v114;
      *(v79 + 24) = v75;
      swift_beginAccess();
      v80 = v75[5];
      v75[4] = sub_23DB60C78;
      v75[5] = v79;

      v81 = v75[2];
      v82 = v75[3];
      v83 = v75[6];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_23DAC842C(0, *(v71 + 2) + 1, 1, v71);
      }

      v85 = *(v71 + 2);
      v84 = *(v71 + 3);
      if (v85 >= v84 >> 1)
      {
        v71 = sub_23DAC842C((v84 > 1), v85 + 1, 1, v71);
      }

      *(v71 + 2) = v85 + 1;
      v86 = &v71[40 * v85];
      *(v86 + 4) = v81;
      *(v86 + 5) = v82;
      *(v86 + 6) = sub_23DB60C78;
      *(v86 + 7) = v79;
      *(v86 + 8) = v83;

      v70 = (v70 + 1);
      v72 += 2;
      result = v112;
      if (v111 == v70)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
LABEL_20:

    v87 = swift_allocObject();
    swift_weakInit();
    v88 = swift_allocObject();
    v89 = v114;
    swift_weakInit();
    v90 = swift_allocObject();
    v90[2] = v87;
    v90[3] = v88;
    v91 = v101;
    v90[4] = v71;
    v90[5] = v91;
    v92 = (v89 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v93 = *v92;
    v94 = v92[1];
    *v92 = sub_23DB60C20;
    v92[1] = v90;

    sub_23DA18BA0(v93);

    v95 = swift_allocObject();
    swift_weakInit();

    v96 = swift_allocObject();
    swift_weakInit();
    v97 = swift_allocObject();
    *(v97 + 2) = v95;
    *(v97 + 3) = v96;
    *(v97 + 4) = v91;
    v98 = (v89 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v99 = v98[1];
    *v98 = sub_23DB60C2C;
    v98[1] = v97;

    return v89;
  }

  return result;
}

uint64_t sub_23DB42C90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v22;
  v8 = sub_23DB6EEFC();
  MEMORY[0x23EEF6D00](v5, v6);

  v8(v22, 0);

  swift_beginAccess();
  v9 = *(a2 + 48);
  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v11 = *(a1 + v10);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = sub_23DAC8B24(v11);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v9 >= *(v11 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = *(type metadata accessor for CommandToPractice(0) - 8);
  v7 = ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v2 = *(v12 + 72);
  v7[v11 + 18 + v2 * v9] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v13 = *(a1 + v10);
  *(a1 + v10) = v11;

  swift_beginAccess();
  v9 = *(a2 + 48);
  v11 = *(a1 + v10);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  v11 = sub_23DAC8B24(v11);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v9 >= *(v11 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7[v11 + 19 + v9 * v2] = 0;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v14 = *(a1 + v10);
  *(a1 + v10) = v11;

  swift_beginAccess();
  v15 = *(a2 + 48);
  v9 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = *(a1 + v10);
  if (v9 >= *(v11 + 16))
  {
    goto LABEL_14;
  }

  v16 = *(a1 + v10);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_27:
  v11 = sub_23DAC8B24(v11);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if (v9 >= *(v11 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7[v11 + 19 + v9 * v2] = 1;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v17 = *(a1 + v10);
  *(a1 + v10) = v11;

  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_23DB6EEFC();
  if (__OFADD__(*v19, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  ++*v19;
  (result)(v22, 0);

LABEL_14:
  result = swift_beginAccess();
  v9 = *(a2 + 48);
  a2 = *(a1 + v10);
  if (v9 != *(a2 + 16) - 1)
  {
    return result;
  }

  v20 = *(a1 + v10);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_23DAC8B24(a2);
  a2 = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_17:
  if (v9 >= *(a2 + 16))
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v7[a2 + 19 + v9 * v2] = 1;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v21 = *(a1 + v10);
  *(a1 + v10) = a2;

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB43148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      if (v17 == 1)
      {
        if (qword_27E2FBBE0 != -1)
        {
          swift_once();
        }

        v7 = *(qword_27E30A6B0 + 56);
        swift_beginAccess();
        v9 = *(v7 + 40);
        v8 = *(v7 + 48);
        v10 = qword_27E2FBBE8;

        if (v10 != -1)
        {
          swift_once();
        }

        v11 = sub_23DB6EBFC();
        __swift_project_value_buffer(v11, qword_27E30A6C0);

        v12 = sub_23DB6EBDC();
        v13 = sub_23DB70AAC();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v16 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_23DB5EC5C(v9, v8, &v16);
          _os_log_impl(&dword_23D9FF000, v12, v13, "vcText (dictationPractice): %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x23EEF7D90](v15, -1, -1);
          MEMORY[0x23EEF7D90](v14, -1, -1);
        }

        swift_beginAccess();
        sub_23DB43B9C(v9, v8, a3, (a4 + 16));
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_23DB433FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v71 = (&v60 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v60 - v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      *(a3 + 16) = 0;
      v69 = v21;
      v22 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8ED30);
      v24 = v23;
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = v22;
      v75 = v24;

      sub_23DB6EF1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = 0;
      v75 = 0xE000000000000000;

      sub_23DB6EF1C();
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = 0;
      v75 = 0xE000000000000000;

      sub_23DB6EF1C();
      v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v68 = v25;
      v26 = *(v19 + v25);
      KeyPath = swift_getKeyPath();
      v28 = swift_getKeyPath();

      v67 = KeyPath;
      v66 = v28;
      v29 = v26;
      v65 = sub_23DB6EEFC();
      v61 = v30;
      v31 = swift_getKeyPath();
      v32 = swift_getKeyPath();
      v70 = v19;
      v64 = v31;
      v63 = v32;
      v62 = sub_23DB6EEFC();
      v60 = v33;

      v34 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_4:
      v35 = 0;
      v36 = (v5 + 56);
      v37 = v29[2];
      v5 += 48;
      if (!v37)
      {
LABEL_5:
        v38 = 1;
        v35 = v37;
        goto LABEL_8;
      }

      while (1)
      {
        if (v35 >= v29[2])
        {
          goto LABEL_20;
        }

        v39 = *(type metadata accessor for CommandToPractice(0) - 8);
        v72 = v35 + 1;
        v40 = v29 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35;
        v41 = *(v4 + 48);
        v42 = v5;
        v43 = v36;
        v44 = v17;
        v45 = v37;
        v46 = v4;
        v47 = v34;
        v48 = v13;
        v49 = v29;
        v50 = v71;
        *v71 = v35;
        sub_23DAC962C(v40, v50 + v41);
        v51 = v50;
        v29 = v49;
        v13 = v48;
        v34 = v47;
        v4 = v46;
        v37 = v45;
        v17 = v44;
        v36 = v43;
        v5 = v42;
        sub_23DA17A54(v51, v13, &qword_27E2FE1C0, &qword_23DB7A440);
        v38 = 0;
        v35 = v72;
LABEL_8:
        (*v36)(v13, v38, 1, v4);
        sub_23DA17A54(v13, v17, &qword_27E2FE1C8, &qword_23DB7A448);
        if ((*v5)(v17, 1, v4) == 1)
        {
          break;
        }

        v52 = *v17;
        if ((*v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v34 = sub_23DAC8B24(v29);
          goto LABEL_4;
        }

        if (v52 >= *(v34 + 16))
        {
          goto LABEL_19;
        }

        v53 = *(type metadata accessor for CommandToPractice(0) - 8);
        v54 = v34 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52;
        *(v54 + 18) = 0;
        *(v54 + 19) = v52 == 0;
        sub_23DB5F554(v17 + *(v4 + 48));
        if (v35 == v37)
        {
          goto LABEL_5;
        }
      }

      *v60 = 0;
      *v61 = 0;
      if (qword_27E2FBBE0 != -1)
      {
        swift_once();
      }

      v55 = qword_27E30A6B0;
      sub_23DB6BB30(&unk_284FE7B88);
      sub_23DA17988(&unk_284FE7BA8, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();

      v62(v73, 0);

      v65(&v74, 0);

      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      v56 = v70;
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v57 = *(v56 + v68);
      *(v56 + v68) = v34;

      v58 = *(v55 + 56);
      swift_beginAccess();
      v59 = *(v58 + 48);
      *(v58 + 40) = 0;
      *(v58 + 48) = 0xE000000000000000;

      sub_23DABC354();
    }
  }

  return result;
}

void sub_23DB43B9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23DB6E92C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23DB7092C() < 1)
  {
    return;
  }

  v12 = *(a3 + 16);
  if (!v12)
  {
    return;
  }

  v13 = *a4;
  if (*a4 >= v12)
  {
    return;
  }

  v14 = sub_23DB708DC();
  v16 = sub_23DB5E0E4(v14, v15, 0);

  v39 = *(v16 + 2);
  if (v39)
  {
    v34 = a4;
    v37 = a3 + 32;
    v38 = v6;
    v17 = (v7 + 8);
    v40 = v16;
    v43 = (v16 + 40);
    v44 = 0;
    v35 = v12;
    v36 = v11;
    while (1)
    {
      if (v13 >= v12)
      {
LABEL_13:

        return;
      }

      if (v13 < 0)
      {
        break;
      }

      v21 = (v37 + 40 * v13);
      v22 = *v21;
      v23 = v21[1];
      v41 = v21;
      v42 = v13;
      v45 = sub_23DB708DC();
      v46 = v24;
      sub_23DB6E8DC();
      sub_23DA16E70();
      sub_23DB70BAC();
      v25 = *v17;
      v26 = v38;
      (*v17)(v11, v38);

      if (v44 >= *(v40 + 2))
      {
        goto LABEL_22;
      }

      v27 = *v43;
      v45 = *(v43 - 1);
      v46 = v27;

      sub_23DB6E8DC();
      sub_23DB70BAC();
      v25(v11, v26);

      v28 = sub_23DB3C3FC();

      if (v28)
      {
        v18 = v41[2];
        v19 = v41[3];

        v18(v20);

        v13 = v42 + 1;
        v12 = v35;
        *v34 = v42 + 1;
      }

      else
      {
        v12 = v35;
        v13 = v42;
      }

      v43 += 2;
      v44 = (v44 + 1);
      v11 = v36;
      if (v39 == v44)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (qword_27E2FBBE8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v29 = sub_23DB6EBFC();
  __swift_project_value_buffer(v29, qword_27E30A6C0);
  v44 = sub_23DB6EBDC();
  v30 = sub_23DB70AAC();
  if (os_log_type_enabled(v44, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_23D9FF000, v44, v30, "pattern splitting failed!", v31, 2u);
    MEMORY[0x23EEF7D90](v31, -1, -1);
  }

  v32 = v44;
}

uint64_t sub_23DB43F58(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_23DB7093C();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_23DB43FC0()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8EBE0);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8EC00);
  v12 = v11;
  sub_23DB6EA7C();
  v13 = type metadata accessor for Page.PracticeShortText(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_23DA24B98(v6, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  swift_retain_n();
  v17 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v17;
  *(&v86 + 1) = v19;

  sub_23DB6EF1C();
  v20 = sub_23DB3DDA4();
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v20;
  *(&v86 + 1) = v22;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = xmmword_23DB82C10;
  swift_retain_n();
  sub_23DB6EF1C();
  v85 = v1;
  v23 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8EC20);
  v25 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v86 = v23;
  *(&v86 + 1) = v25;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v26 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v26;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v86) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v27 = type metadata accessor for CommandToPractice(0);
  v28 = (*(*(v27 - 1) + 80) + 32) & ~*(*(v27 - 1) + 80);
  v81 = *(*(v27 - 1) + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_23DB76A80;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v30 = v29 + v28;
  v82 = v29;
  LOBYTE(v86) = 33;
  v79 = sub_23DAA67F0(&v86, 0, 0);
  v32 = v31;
  *v30 = 0;
  *(v30 + 8) = 0xE000000000000000;
  *(v30 + 17) = 186;
  *(v30 + 19) = 0;
  v33 = v29 + v28 + v27[9];
  sub_23DB6EA7C();
  v34 = v27[10];
  *(v30 + v34) = 1;
  v35 = v27[11];
  *(v30 + v35) = 1;
  v36 = v27[12];
  v84 = type metadata accessor for KeyboardKey(0);
  v37 = *(v84 - 8);
  v83 = *(v37 + 56);
  v38 = v37 + 56;
  v83(v30 + v36, 1, 1, v84);
  v80 = v38;
  v39 = (v30 + v27[13]);
  *v39 = 0;
  v39[1] = 0;
  v40 = *(v30 + 8);
  *v30 = v79;
  *(v30 + 8) = v32;

  *(v30 + 16) = -95;
  *(v30 + 19) = 1;
  v41 = v39[1];
  *v39 = 0;
  v39[1] = 0;

  *(v30 + v34) = 1;
  *(v30 + v35) = 1;
  v42 = v81;
  v43 = v30 + v81;
  v44 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8EC50);
  v46 = v45;
  *v43 = 0;
  *(v43 + 8) = 0xE000000000000000;
  *(v43 + 17) = 186;
  *(v43 + 19) = 0;
  v47 = v43 + v27[9];
  sub_23DB6EA7C();
  v48 = v27[10];
  *(v43 + v48) = 1;
  v49 = v27[11];
  *(v43 + v49) = 1;
  v83(v43 + v27[12], 1, 1, v84);
  v50 = v42;
  v51 = (v43 + v27[13]);
  *v51 = 0;
  v51[1] = 0;
  v52 = *(v43 + 8);
  *v43 = v44;
  *(v43 + 8) = v46;

  *(v43 + 16) = -23389;
  *(v43 + 19) = 1;
  *(v43 + v48) = 1;
  *(v43 + v49) = 1;
  v53 = v51[1];
  *v51 = 0;
  v51[1] = 0;

  v54 = v30 + 2 * v50;
  v55 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8EC80);
  v57 = v56;
  *v54 = 0;
  *(v54 + 8) = 0xE000000000000000;
  *(v54 + 17) = 186;
  *(v54 + 19) = 0;
  v58 = v54 + v27[9];
  sub_23DB6EA7C();
  v59 = v27[10];
  *(v54 + v59) = 1;
  v60 = v27[11];
  *(v54 + v60) = 1;
  v83(v54 + v27[12], 1, 1, v84);
  v61 = (v54 + v27[13]);
  *v61 = 0;
  v61[1] = 0;
  v62 = *(v54 + 8);
  *v54 = v55;
  *(v54 + 8) = v57;

  *(v54 + 16) = -94;
  *(v54 + 19) = 0;
  v63 = v61[1];
  *v61 = 0;
  v61[1] = 0;

  *(v54 + v59) = 1;
  *(v54 + v60) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v65 = *(v16 + v64);
  *(v16 + v64) = v82;

  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  *(v68 + 24) = v67;
  v69 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  *v69 = sub_23DB60B10;
  v69[1] = v68;

  sub_23DA18BA0(v70);

  v72 = swift_allocObject();
  swift_weakInit();

  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = v73;
  v75 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v76 = v75[1];
  *v75 = sub_23DB60B18;
  v75[1] = v74;

  return v16;
}

uint64_t sub_23DB44884()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if ((v32 & 1) == 0)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v5 = sub_23DB600A8(v32, v33);
  v7 = v6;

  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (*(v9 + 16))
  {
    v10 = *(type metadata accessor for CommandToPractice(0) - 8);
    v2 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v1 = *(v9 + v2);
    v0 = *(v9 + v2 + 8);
    v11 = qword_27E2FBBE0;

    if (v11 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  LOBYTE(v32) = 33;
  v12 = sub_23DAA904C(&v32, v5, v7);
  v14 = v13;

  v15 = *(v4 + v8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v15[2])
    {
      goto LABEL_8;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_23DAC8B24(v15);
  v15 = result;
  if (!*(result + 16))
  {
    goto LABEL_22;
  }

LABEL_8:
  v16 = (v15 + v2);
  v17 = *(v15 + v2 + 8);
  *v16 = v12;
  v16[1] = v14;

  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v18 = *(v4 + v8);
  *(v4 + v8) = v15;

  v19 = *(v4 + v8);
  if (!*(v19 + 16))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v20 = (v19 + v2);
  if (v1 == *v20 && v0 == v20[1])
  {
  }

  else
  {
    v21 = sub_23DB70DBC();

    if ((v21 & 1) == 0)
    {
      v22 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8EC20);
      v24 = sub_23DB603BC(v22, v23);
      v26 = v25;

      swift_getKeyPath();
      swift_getKeyPath();
      v32 = v24;
      v33 = v26;

      sub_23DB6EF1C();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v27 = v32;
  v34 = *(v4 + v8);
  swift_getKeyPath();
  swift_getKeyPath();

  v28 = sub_23DB6EEFC();
  sub_23DAC8040(&v34, v27, v29);
  v28(&v32, 0);

  v30 = v34;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v31 = *(v4 + v8);
  *(v4 + v8) = v30;
}

uint64_t sub_23DB44D5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v74 = (&v62 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v62 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v71 = Strong;
      v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v70 = v17;
      v18 = *(v15 + v17);
      KeyPath = swift_getKeyPath();
      v20 = swift_getKeyPath();

      v69 = KeyPath;
      v68 = v20;
      v67 = sub_23DB6EEFC();
      v63 = v21;
      v22 = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v72 = v15;
      v66 = v22;
      v65 = v23;
      v64 = sub_23DB6EEFC();
      v62 = v24;

      v25 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_4:
      v26 = 0;
      v27 = v1 + 7;
      v73 = v18;
      v28 = *(v18 + 16);
      v1 += 6;
      v29 = &qword_27E2FE1C8;
      if (!v28)
      {
LABEL_5:
        v30 = 1;
        v26 = v28;
        goto LABEL_8;
      }

      while (1)
      {
        v18 = v13;
        v13 = v1;
        v1 = v27;
        v31 = v28;
        v32 = v25;
        v33 = v29;
        v34 = v73;
        if (v26 >= *(v73 + 16))
        {
          goto LABEL_20;
        }

        v35 = *(type metadata accessor for CommandToPractice(0) - 8);
        v75 = v26 + 1;
        v36 = v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26;
        v37 = *(v0 + 48);
        v38 = v74;
        *v74 = v26;
        sub_23DAC962C(v36, v38 + v37);
        sub_23DA17A54(v38, v9, &qword_27E2FE1C0, &qword_23DB7A440);
        v30 = 0;
        v26 = v75;
        v29 = v33;
        v25 = v32;
        v28 = v31;
        v27 = v1;
        v1 = v13;
        v13 = v18;
LABEL_8:
        (*v27)(v9, v30, 1, v0);
        sub_23DA17A54(v9, v13, v29, &qword_23DB7A448);
        if ((*v1)(v13, 1, v0) == 1)
        {
          break;
        }

        v18 = *v13;
        if ((*v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v25 = sub_23DAC8B24(v18);
          goto LABEL_4;
        }

        if (v18 >= *(v25 + 16))
        {
          goto LABEL_19;
        }

        v39 = *(type metadata accessor for CommandToPractice(0) - 8);
        v40 = v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v18;
        *(v40 + 18) = 0;
        *(v40 + 19) = v18 == 0;
        sub_23DB5F554(v13 + *(v0 + 48));
        if (v26 == v28)
        {
          goto LABEL_5;
        }
      }

      *v62 = 0;
      *v63 = 0;
      if (qword_27E2FBBE0 != -1)
      {
        swift_once();
      }

      sub_23DB6BB30(&unk_284FE7BC8);
      sub_23DA17988(&unk_284FE7BE8, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();

      v64(&v78, 0);

      v67(&v80, 0);

      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      v41 = v72;
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v42 = *(v41 + v70);
      *(v41 + v70) = v25;

      v43 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8EC20);
      v45 = sub_23DB603BC(v43, v44);
      v47 = v46;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v45;
      v81 = v47;

      sub_23DB6EF1C();
      v48 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8EC20);
      v50 = v49;
      v75 = sub_23DAC7D28(0xD000000000000031, 0x800000023DB8ECB0);
      v76 = 0;
      v52 = v51;
      v80 = v48;
      v81 = v50;
      v78 = 60;
      v79 = 0xE100000000000000;
      v77 = 0xE000000000000000;
      sub_23DA16E70();
      v53 = sub_23DB70BBC();
      v55 = v54;

      v80 = v53;
      v81 = v55;
      v78 = 62;
      v79 = 0xE100000000000000;
      v76 = 0;
      v77 = 0xE000000000000000;
      v56 = sub_23DB70BBC();
      v58 = v57;

      v80 = v56;
      v81 = v58;
      v78 = 0x295C2A2E285CLL;
      v79 = 0xE600000000000000;
      v76 = v75;
      v77 = v52;
      v59 = sub_23DB70BBC();
      v61 = v60;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v59;
      v81 = v61;
      sub_23DB6EF1C();
    }
  }

  return result;
}

uint64_t sub_23DB455D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v159 = *(v2 - 8);
  v160 = v2;
  v3 = *(v159 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v158 = &v135 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v156 = *(v6 - 8);
  v157 = v6;
  v7 = *(v156 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v155 = &v135 - v9;
  *&v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v150 = *(v151 - 8);
  v10 = *(v150 + 64);
  MEMORY[0x28223BE20](v151, v11);
  v148 = &v135 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v144 = *(v145 - 8);
  v13 = *(v144 + 64);
  MEMORY[0x28223BE20](v145, v14);
  v143 = &v135 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v166 = *(v142 - 8);
  v16 = *(v166 + 64);
  MEMORY[0x28223BE20](v142, v17);
  v141 = &v135 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v19 = *(v138 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v138, v21);
  v23 = &v135 - v22;
  v24 = sub_23DB6EA8C();
  v163 = *(v24 - 8);
  v164 = v24;
  v25 = v163[8];
  MEMORY[0x28223BE20](v24, v26);
  v153 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v162 = &v135 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v135 - v33;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v161 = qword_27E30A6B0;
  v147 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8EA90);
  v146 = v35;
  v36 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8EAB0);
  LOBYTE(v169) = 3;
  v38 = sub_23DAA8EC0(v36, v37, &v169);
  v40 = v39;

  v41 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8EAE0);
  LOBYTE(v169) = 4;
  v43 = sub_23DAA8EC0(v41, v42, &v169);
  v45 = v44;

  *&v169 = v38;
  *(&v169 + 1) = v40;

  MEMORY[0x23EEF6D00](v43, v45);

  v46 = v169;
  v47 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8EB10);
  LOBYTE(v169) = 3;
  v49 = sub_23DAA8EC0(v47, v48, &v169);
  v51 = v50;

  v169 = v46;

  MEMORY[0x23EEF6D00](v49, v51);

  v139 = *(&v169 + 1);
  v140 = v169;
  sub_23DB6EA7C();
  v52 = type metadata accessor for Page.PracticeCommandsCheckmark(0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v169 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v57 = *(v19 + 32);
  v149 = v23;
  v58 = v23;
  v59 = v138;
  v152 = v19 + 32;
  v135 = v57;
  (v57)(v55 + v56, v58);
  v60 = v163[2];
  v154 = v34;
  v137 = v163 + 2;
  v136 = v60;
  v60(v162, v34, v164);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v169) = 0;
  v62 = v141;
  sub_23DB6EECC();
  v63 = v166 + 32;
  v64 = *(v166 + 32);
  v65 = v62;
  v66 = v142;
  v64(v55 + v61, v62, v142);
  v67 = MEMORY[0x277D84F90];
  v165 = v1;
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v68 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v68 = MEMORY[0x277D84FA0];
  }

  *(v55 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v68;
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v169 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v70 = v143;
  sub_23DB6EECC();
  (*(v144 + 32))(v55 + v69, v70, v145);
  *(v55 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v67;
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v169 = 0;
  v72 = v148;
  sub_23DB6EECC();
  (*(v150 + 32))(v55 + v71, v72, v151);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v169) = 0;
  sub_23DB6EECC();
  v64(v55 + v73, v65, v66);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v151 = xmmword_23DB74320;
  v169 = xmmword_23DB74320;
  v75 = v149;
  sub_23DB6EECC();
  v166 = v63;
  v76 = v135;
  v135(v55 + v74, v75, v59);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v169 = v151;
  sub_23DB6EECC();
  v76(v55 + v77, v75, v59);
  v78 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v169) = 0;
  sub_23DB6EECC();
  v64(v55 + v78, v65, v66);
  v79 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v169 = 0;
  *(&v169 + 1) = 0xE000000000000000;
  v80 = v155;
  sub_23DB6EECC();
  (*(v156 + 32))(v55 + v79, v80, v157);
  v81 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v169 = 0uLL;
  sub_23DB6EECC();
  v76(v55 + v81, v75, v59);
  v82 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v169 = nullsub_1;
  *(&v169 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v83 = v158;
  sub_23DB6EECC();
  (*(v159 + 32))(v55 + v82, v83, v160);
  v84 = v153;
  v85 = v162;
  v86 = v164;
  v136(v153, v162, v164);
  v87 = Page.init(id:title:text:subPages:iconName:)(v84, v147, v146, v140, v139, MEMORY[0x277D84F90], 0, 0);
  v88 = v163[1];
  v88(v85, v86);
  v88(v154, v86);
  swift_retain_n();
  v89 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v91 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v169 = v89;
  *(&v169 + 1) = v91;

  sub_23DB6EF1C();
  v92 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8EB40);
  v94 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v169 = v92;
  *(&v169 + 1) = v94;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v169) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v95 = (type metadata accessor for CommandToPractice(0) - 8);
  v96 = *v95;
  v164 = *(*v95 + 72);
  v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v98 = swift_allocObject();
  v166 = v98;
  *(v98 + 16) = xmmword_23DB78D60;
  v99 = v98 + v97;
  LOBYTE(v169) = 3;
  v100 = sub_23DAA67F0(&v169, 0, 0);
  v162 = v101;
  v163 = v100;
  *v99 = 0;
  *(v99 + 8) = 0xE000000000000000;
  *(v99 + 17) = 186;
  *(v99 + 19) = 0;
  v102 = v99 + v95[11];
  sub_23DB6EA7C();
  v103 = v95[12];
  *(v99 + v103) = 1;
  v104 = v95[13];
  *(v99 + v104) = 1;
  v105 = v95[14];
  v106 = type metadata accessor for KeyboardKey(0);
  v107 = *(*(v106 - 8) + 56);
  v107(v99 + v105, 1, 1, v106);
  v108 = (v99 + v95[15]);
  *v108 = 0;
  v108[1] = 0;
  v109 = *(v99 + 8);
  v110 = v162;
  *v99 = v163;
  *(v99 + 8) = v110;

  *(v99 + 16) = -125;
  *(v99 + 19) = 1;
  v111 = v108[1];
  *v108 = 0;
  v108[1] = 0;

  *(v99 + v103) = 1;
  *(v99 + v104) = 1;
  v112 = v99 + v164;
  LOBYTE(v169) = 4;
  v113 = sub_23DAA67F0(&v169, 0, 0);
  v115 = v114;
  *v112 = 0;
  *(v112 + 8) = 0xE000000000000000;
  *(v112 + 17) = 186;
  *(v112 + 19) = 0;
  v116 = v112 + v95[11];
  sub_23DB6EA7C();
  v117 = v95[12];
  *(v112 + v117) = 1;
  v118 = v95[13];
  *(v112 + v118) = 1;
  v107(v112 + v95[14], 1, 1, v106);
  v119 = (v112 + v95[15]);
  *v119 = 0;
  v119[1] = 0;
  v120 = *(v112 + 8);
  *v112 = v113;
  *(v112 + 8) = v115;

  *(v112 + 16) = -124;
  *(v112 + 19) = 0;
  v121 = v119[1];
  *v119 = 0;
  v119[1] = 0;

  *(v112 + v117) = 1;
  *(v112 + v118) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v122 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v123 = *(v87 + v122);
  *(v87 + v122) = v166;

  swift_getKeyPath();
  swift_getKeyPath();
  v167 = 0xD000000000000019;
  v168 = 0x800000023DB8EB70;

  sub_23DB6EF1C();
  v124 = swift_allocObject();
  swift_weakInit();
  v125 = swift_allocObject();
  v126 = v165;
  *(v125 + 16) = v124;
  *(v125 + 24) = v126;
  v127 = (v87 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v128 = *v127;
  v129 = v127[1];
  *v127 = sub_23DB60B00;
  v127[1] = v125;
  swift_retain_n();

  sub_23DA18BA0(v128);

  v130 = swift_allocObject();
  swift_weakInit();

  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = v126;
  v132 = (v87 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v133 = v132[1];
  *v132 = sub_23DB60B08;
  v132[1] = v131;

  return v87;
}

uint64_t sub_23DB465E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (v23 != 1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v2 = v23;
  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v20[0] = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = sub_23DB6EEFC();
  sub_23DAC8040(v20, v2, v5);
  v4(&v23, 0);

  v6 = v20[0];
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v7 = *(v1 + v3);
  *(v1 + v3) = v6;

  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_23DAA67F4(0xD000000000000025, 0x800000023DB8EB90, 2);
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v8;
  v24 = v10;

  result = sub_23DB6EF1C();
  v11 = *(v1 + v3);
  v12 = *(v11 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = type metadata accessor for CommandToPractice(0);
  v15 = *(v13 - 8);
  result = v13 - 8;
  v14 = v15;
  v16 = v15;
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  if (*(v11 + v17 + 18) == 1)
  {
    if (v12 == 1)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    if ((*(v11 + v17 + *(v14 + 72) + 18) & 1) == 0)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v23 = 0xD00000000000001FLL;
        v24 = 0x800000023DB8EBC0;
        result = sub_23DB6EF1C();
      }
    }
  }

  v18 = *(v1 + v3);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v18 + v17 + *(v16 + 72) * (v19 - 1) + 18) == 1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = 0xD000000000000019;
      v22 = 0x800000023DB8EB70;
      sub_23DB6EF1C();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v21) = 1;
    sub_23DB6EF1C();
  }
}

uint64_t sub_23DB46A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v58 = (&v47 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v47 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v61[0] = 0xD000000000000019;
    v61[1] = 0x800000023DB8EB70;

    sub_23DB6EF1C();
    v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v56 = v16;
    v17 = *(v15 + v16);
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();

    v54 = v19;
    v55 = KeyPath;
    v53 = sub_23DB6EEFC();
    v49 = v20;
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    v57 = v15;
    v52 = v21;
    v51 = v22;
    v50 = sub_23DB6EEFC();
    v48 = v23;

    v24 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v25 = 0;
    v26 = (v1 + 56);
    v27 = v17[2];
    v1 += 48;
    if (!v27)
    {
LABEL_4:
      v28 = 1;
      v25 = v27;
      goto LABEL_7;
    }

    while (1)
    {
      if (v25 >= v17[2])
      {
        goto LABEL_18;
      }

      v29 = *(type metadata accessor for CommandToPractice(0) - 8);
      v59 = v25 + 1;
      v30 = v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25;
      v31 = *(v0 + 48);
      v32 = v13;
      v33 = v1;
      v34 = v26;
      v35 = v0;
      v36 = v27;
      v37 = v9;
      v38 = v24;
      v39 = v17;
      v40 = v58;
      *v58 = v25;
      sub_23DAC962C(v30, v40 + v31);
      v41 = v40;
      v17 = v39;
      v24 = v38;
      v9 = v37;
      v27 = v36;
      v0 = v35;
      v26 = v34;
      v1 = v33;
      v13 = v32;
      sub_23DA17A54(v41, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v28 = 0;
      v25 = v59;
LABEL_7:
      (*v26)(v9, v28, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v42 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v24 = sub_23DAC8B24(v17);
        goto LABEL_3;
      }

      if (v42 >= *(v24 + 16))
      {
        goto LABEL_17;
      }

      v43 = *(type metadata accessor for CommandToPractice(0) - 8);
      v44 = v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
      *(v44 + 18) = 0;
      *(v44 + 19) = v42 == 0;
      sub_23DB5F554(v13 + *(v0 + 48));
      if (v25 == v27)
      {
        goto LABEL_4;
      }
    }

    *v48 = 0;
    *v49 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    sub_23DB6BB30(&unk_284FE7C08);
    sub_23DA17988(&unk_284FE7C28, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v50(v60, 0);

    v53(v61, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v45 = v57;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v46 = *(v45 + v56);
    *(v45 + v56) = v24;
  }

  return result;
}

uint64_t sub_23DB470A8()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8E9C0);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E9E0);
  v12 = v11;
  sub_23DB6EA7C();
  v13 = type metadata accessor for Page.PracticeShortText(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_23DA24B98(v6, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v85 = qword_27E30A6B0;
  swift_retain_n();
  v17 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v91[0] = v17;
  *(&v91[0] + 1) = v19;

  sub_23DB6EF1C();
  v84 = v1;
  v20 = sub_23DB3DDA4();
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v91[0] = v20;
  *(&v91[0] + 1) = v22;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = xmmword_23DB82C20;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v91[0]) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v91[0]) = 0;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v23 = (type metadata accessor for CommandToPractice(0) - 8);
  v24 = *(*v23 + 72);
  v25 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
  v82 = 2 * v24;
  v26 = swift_allocObject();
  v83 = v26;
  *(v26 + 16) = xmmword_23DB76A80;
  v27 = v26 + v25;
  v28 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8EA00);
  v30 = v29;
  *v27 = 0;
  *(v27 + 8) = 0xE000000000000000;
  *(v27 + 17) = 186;
  *(v27 + 19) = 0;
  v31 = v27 + v23[11];
  sub_23DB6EA7C();
  v32 = v23[12];
  *(v27 + v32) = 1;
  v33 = v23[13];
  *(v27 + v33) = 1;
  v34 = v23[14];
  v87 = type metadata accessor for KeyboardKey(0);
  v35 = *(v87 - 8);
  v86 = *(v35 + 56);
  v88 = v35 + 56;
  v86(v27 + v34, 1, 1, v87);
  v36 = (v27 + v23[15]);
  *v36 = 0;
  v36[1] = 0;
  v37 = *(v27 + 8);
  *v27 = v28;
  *(v27 + 8) = v30;

  *(v27 + 16) = -72;
  *(v27 + 19) = 1;
  v38 = v36[1];
  *v36 = 0;
  v36[1] = 0;

  *(v27 + v32) = 1;
  *(v27 + v33) = 1;
  v39 = v27 + v24;
  LOBYTE(v91[0]) = 28;
  v40 = sub_23DAA67F0(v91, 0, 0);
  v42 = v41;
  *v39 = 0;
  *(v39 + 8) = 0xE000000000000000;
  *(v39 + 17) = 186;
  *(v39 + 19) = 0;
  v43 = v27 + v24 + v23[11];
  sub_23DB6EA7C();
  v44 = v23[12];
  *(v39 + v44) = 1;
  v45 = v23[13];
  *(v39 + v45) = 1;
  v86(v39 + v23[14], 1, 1, v87);
  v46 = (v39 + v23[15]);
  *v46 = 0;
  v46[1] = 0;
  v47 = *(v39 + 8);
  *v39 = v40;
  *(v39 + 8) = v42;

  *(v39 + 16) = -100;
  *(v39 + 19) = 0;
  v48 = v46[1];
  *v46 = 0;
  v46[1] = 0;

  *(v39 + v44) = 1;
  *(v39 + v45) = 1;
  v49 = v27 + v82;
  LOBYTE(v91[0]) = 29;
  v50 = sub_23DAA67F0(v91, 0, 0);
  v52 = v51;
  *v49 = 0;
  *(v49 + 8) = 0xE000000000000000;
  *(v49 + 17) = 186;
  *(v49 + 19) = 0;
  v53 = v49 + v23[11];
  sub_23DB6EA7C();
  v54 = v23[12];
  *(v49 + v54) = 1;
  v55 = v23[13];
  *(v49 + v55) = 1;
  v86(v49 + v23[14], 1, 1, v87);
  v56 = (v49 + v23[15]);
  *v56 = 0;
  v56[1] = 0;
  v57 = *(v49 + 8);
  *v49 = v50;
  *(v49 + 8) = v52;

  *(v49 + 16) = -99;
  *(v49 + 19) = 0;
  v58 = v56[1];
  *v56 = 0;
  v56[1] = 0;

  *(v49 + v54) = 1;
  *(v49 + v55) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v60 = *(v16 + v59);
  *(v16 + v59) = v83;

  v61 = v84;
  v62 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8EA30);
  v64 = v63;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v62;
  v90 = v64;

  sub_23DB6EF1C();
  v65 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8EA60);
  v67 = v66;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v65;
  v90 = v67;

  sub_23DB6EF1C();
  v68 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8EA60);
  v70 = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v68;
  v90 = v70;

  sub_23DB6EF1C();
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = v61;
  v73 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v74 = *v73;
  v75 = v73[1];
  *v73 = sub_23DB60A80;
  v73[1] = v72;

  sub_23DA18BA0(v74);

  v76 = swift_allocObject();
  swift_weakInit();

  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v61;
  v78 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v79 = v78[1];
  *v78 = sub_23DB60A88;
  v78[1] = v77;

  return v16;
}

size_t sub_23DB479A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v51 = (&v47 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v47 - v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v54[0] != 1)
    {
    }

    v19 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v50 = v19;
    v20 = *(v18 + v19);
    if (!*(v20 + 16))
    {
      goto LABEL_31;
    }

    v21 = *(type metadata accessor for CommandToPractice(0) - 8);
    v52 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v53 = v21;
    if (*(v20 + v52 + 18))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v49 = a2;
      sub_23DB6EF0C();

      LODWORD(v48) = v54[0];
      v22 = v50;
      v57[0] = *(v18 + v50);
      swift_getKeyPath();
      swift_getKeyPath();

      v23 = sub_23DB6EEFC();
      sub_23DAC8040(v57, v48, v24);
      v23(v54, 0);

      v25 = v57[0];
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();
      v26 = v22;

      v27 = *(v18 + v22);
      *(v18 + v22) = v25;
      goto LABEL_12;
    }

    v28 = qword_27E2FBBE0;

    if (v28 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v29 = *(qword_27E30A6B0 + 56);
      swift_beginAccess();
      v30 = *(v29 + 48);
      v57[0] = *(v29 + 40);
      v57[1] = v30;
      v55 = 2307825648;
      v56 = 0xA400000000000000;
      sub_23DA16E70();
      v31 = sub_23DB70BDC();
      v26 = v50;
      if (v31)
      {
        v32 = *(v18 + v50);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (!v32[2])
          {
            goto LABEL_34;
          }
        }

        else
        {
          result = sub_23DAC8B24(v32);
          v32 = result;
          if (!*(result + 16))
          {
LABEL_34:
            __break(1u);
            return result;
          }
        }

        *(v32 + v52 + 18) = 1;
        type metadata accessor for Page.Practice(0);
        sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v26 = v50;
        v33 = *(v18 + v50);
        *(v18 + v50) = v32;
LABEL_12:
      }

      v34 = *(v18 + v26);
      v35 = *(v34 + 16);
      v48 = v34 + v52;
      v49 = v34;
      v36 = (v4 + 56);
      v37 = (v4 + 48);

      v4 = 0;
      if (!v35)
      {
LABEL_14:
        v38 = 1;
        v4 = v35;
        goto LABEL_18;
      }

      while ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= *(v49 + 16))
        {
          goto LABEL_30;
        }

        v39 = v48 + *(v53 + 72) * v4;
        v40 = *(v3 + 48);
        v41 = v18;
        v42 = v51;
        *v51 = v4;
        sub_23DAC962C(v39, v42 + v40);
        v43 = v42;
        v18 = v41;
        v26 = v50;
        sub_23DA17A54(v43, v12, &qword_27E2FE1C0, &qword_23DB7A440);
        v38 = 0;
        ++v4;
LABEL_18:
        (*v36)(v12, v38, 1, v3);
        sub_23DA17A54(v12, v16, &qword_27E2FE1C8, &qword_23DB7A448);
        if ((*v37)(v16, 1, v3) == 1)
        {

          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v57[0]) = 1;
          return sub_23DB6EF1C();
        }

        v44 = *v16;
        if ((*v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

        v45 = *(v18 + v26);
        if (v44 >= *(v45 + 16))
        {
          goto LABEL_28;
        }

        v46 = *(v3 + 48);
        if ((*(v45 + v52 + *(v53 + 72) * v44 + 18) & 1) == 0)
        {

          return sub_23DB5F554(v16 + v46);
        }

        sub_23DB5F554(v16 + v46);
        if (v4 == v35)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }
  }

  return result;
}