uint64_t sub_1B74E122C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B74E1294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B74E12F4()
{
  result = qword_1EB996140;
  if (!qword_1EB996140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996140);
  }

  return result;
}

unint64_t sub_1B74E1348()
{
  result = qword_1EB996158;
  if (!qword_1EB996158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996158);
  }

  return result;
}

uint64_t sub_1B74E139C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996148);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74E1414()
{
  result = qword_1EB996170;
  if (!qword_1EB996170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996170);
  }

  return result;
}

unint64_t sub_1B74E1468()
{
  result = qword_1EB996180;
  if (!qword_1EB996180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996180);
  }

  return result;
}

unint64_t sub_1B74E14BC()
{
  result = qword_1EB996188;
  if (!qword_1EB996188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996188);
  }

  return result;
}

unint64_t sub_1B74E1510()
{
  result = qword_1EB996198;
  if (!qword_1EB996198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996198);
  }

  return result;
}

unint64_t sub_1B74E1564()
{
  result = qword_1EB9961A8;
  if (!qword_1EB9961A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9961A8);
  }

  return result;
}

unint64_t sub_1B74E15BC()
{
  result = qword_1EB9961B8;
  if (!qword_1EB9961B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9961B8);
  }

  return result;
}

unint64_t sub_1B74E1614()
{
  result = qword_1EB9961C0;
  if (!qword_1EB9961C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9961C0);
  }

  return result;
}

unint64_t sub_1B74E166C()
{
  result = qword_1EB9961C8;
  if (!qword_1EB9961C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9961D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9961C8);
  }

  return result;
}

unint64_t sub_1B74E171C()
{
  result = qword_1EB9961E0;
  if (!qword_1EB9961E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9961E0);
  }

  return result;
}

unint64_t sub_1B74E1774()
{
  result = qword_1EB9961E8;
  if (!qword_1EB9961E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9961E8);
  }

  return result;
}

uint64_t sub_1B74E17F0()
{
  result = sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B74E18A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1B74E18EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B74E19B0()
{
  sub_1B7325908();
  if (v0 <= 0x3F)
  {
    sub_1B74E1A54();
    if (v1 <= 0x3F)
    {
      sub_1B7280028();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B74E1A54()
{
  if (!qword_1EB996210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994460);
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB996210);
    }
  }
}

unint64_t sub_1B74E1B7C()
{
  result = qword_1EB996218;
  if (!qword_1EB996218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996218);
  }

  return result;
}

unint64_t sub_1B74E1BD4()
{
  result = qword_1EB996220;
  if (!qword_1EB996220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996220);
  }

  return result;
}

unint64_t sub_1B74E1C2C()
{
  result = qword_1EB996228;
  if (!qword_1EB996228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996228);
  }

  return result;
}

unint64_t sub_1B74E1C84()
{
  result = qword_1EB996230;
  if (!qword_1EB996230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996230);
  }

  return result;
}

unint64_t sub_1B74E1CDC()
{
  result = qword_1EB996238;
  if (!qword_1EB996238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996238);
  }

  return result;
}

unint64_t sub_1B74E1D34()
{
  result = qword_1EB996240;
  if (!qword_1EB996240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996240);
  }

  return result;
}

unint64_t sub_1B74E1D8C()
{
  result = qword_1EB996248;
  if (!qword_1EB996248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996248);
  }

  return result;
}

unint64_t sub_1B74E1DE4()
{
  result = qword_1EB996250;
  if (!qword_1EB996250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996250);
  }

  return result;
}

unint64_t sub_1B74E1E3C()
{
  result = qword_1EB996258;
  if (!qword_1EB996258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996258);
  }

  return result;
}

unint64_t sub_1B74E1E94()
{
  result = qword_1EB996260;
  if (!qword_1EB996260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996260);
  }

  return result;
}

unint64_t sub_1B74E1EEC()
{
  result = qword_1EB996268;
  if (!qword_1EB996268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996268);
  }

  return result;
}

unint64_t sub_1B74E1F44()
{
  result = qword_1EB996270;
  if (!qword_1EB996270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996270);
  }

  return result;
}

unint64_t sub_1B74E1F9C()
{
  result = qword_1EB996278;
  if (!qword_1EB996278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996278);
  }

  return result;
}

unint64_t sub_1B74E1FF4()
{
  result = qword_1EB996280;
  if (!qword_1EB996280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996280);
  }

  return result;
}

unint64_t sub_1B74E204C()
{
  result = qword_1EB996288;
  if (!qword_1EB996288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996288);
  }

  return result;
}

unint64_t sub_1B74E20A4()
{
  result = qword_1EB996290;
  if (!qword_1EB996290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996290);
  }

  return result;
}

unint64_t sub_1B74E20FC()
{
  result = qword_1EB996298;
  if (!qword_1EB996298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996298);
  }

  return result;
}

unint64_t sub_1B74E2154()
{
  result = qword_1EB9962A0;
  if (!qword_1EB9962A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962A0);
  }

  return result;
}

unint64_t sub_1B74E21AC()
{
  result = qword_1EB9962A8;
  if (!qword_1EB9962A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962A8);
  }

  return result;
}

unint64_t sub_1B74E2204()
{
  result = qword_1EB9962B0;
  if (!qword_1EB9962B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962B0);
  }

  return result;
}

unint64_t sub_1B74E225C()
{
  result = qword_1EB9962B8;
  if (!qword_1EB9962B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962B8);
  }

  return result;
}

unint64_t sub_1B74E22B4()
{
  result = qword_1EB9962C0;
  if (!qword_1EB9962C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962C0);
  }

  return result;
}

unint64_t sub_1B74E230C()
{
  result = qword_1EB9962C8;
  if (!qword_1EB9962C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962C8);
  }

  return result;
}

unint64_t sub_1B74E2364()
{
  result = qword_1EB9962D0;
  if (!qword_1EB9962D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962D0);
  }

  return result;
}

uint64_t sub_1B74E23B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEC00000074416465 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEF6C69746E556465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5368736572666572 && a2 == 0xEF65636E65757165 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65736E6F63 && a2 == 0xEC0000006E656B6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B74E2578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xED000064496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364496E617066 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61684365646F63 && a2 == 0xED000065676E656CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF646F6874654D65 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453746E65696C63 && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x54746E65736E6F63 && a2 == 0xEB00000000657079)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B74E27E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463657269646572 && a2 == 0xEB00000000495255;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E480 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6972655665646F63 && a2 == 0xEC00000072656966 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373416475617266 && a2 == 0xEF746E656D737365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

unint64_t sub_1B74E2960()
{
  result = qword_1EB9962D8;
  if (!qword_1EB9962D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962D8);
  }

  return result;
}

unint64_t sub_1B74E29B4()
{
  result = qword_1EB9962E0;
  if (!qword_1EB9962E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962E0);
  }

  return result;
}

uint64_t FinanceStore.HistoryToken.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

id FinanceStore.HistoryToken.historyMarker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_1B7227500(v2, v3);
}

void *FinanceStore.HistoryToken.init(insertionHistoryID:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1B74E2B28()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74E2B9C()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74E2BF0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B74E2C80@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B74E2CD8(uint64_t a1)
{
  v2 = sub_1B74E4104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74E2D14(uint64_t a1)
{
  v2 = sub_1B74E4104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinanceStore.HistoryToken.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9962E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v2)
  {
    v20 = a2;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_1B727A53C();
    sub_1B7802138();
    v10 = v17;
    v9 = v18;
    sub_1B7205540(0, &qword_1EB9905D0);
    sub_1B7205540(0, &qword_1EB996830);
    v11 = sub_1B78012B8();
    if (v11)
    {
      sub_1B720A388(v10, v9);
      v12 = 0;
    }

    else
    {
      sub_1B7801B18();
      v15 = swift_allocError();
      sub_1B7801AC8();
      swift_willThrow();
      sub_1B720A388(v10, v9);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B74E4104();
      sub_1B78023C8();
      sub_1B74E4158();
      sub_1B7801E48();
      (*(v6 + 8))(v8, v5);

      v11 = v17;
      v12 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v13 = v20;
    *v20 = v11;
    *(v13 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FinanceStore.HistoryToken.encode(to:)(void *a1)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996300);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *v1;
  if (*(v1 + 8))
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B74E4104();
    sub_1B78023F8();
    v18[0] = v7;
    sub_1B74E41AC();
    sub_1B7801FC8();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = v7;
    sub_1B78023E8();
    v10 = objc_opt_self();
    v17[0] = 0;
    v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v17];
    v12 = v17[0];
    if (v11)
    {
      v13 = sub_1B77FF5B8();
      v15 = v14;

      v17[0] = v13;
      v17[1] = v15;
      __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
      sub_1B727A60C();
      sub_1B7802168();
      sub_1B7201D10(v7, 0);
      sub_1B720A388(v13, v15);
    }

    else
    {
      v16 = v12;
      sub_1B77FF318();

      swift_willThrow();
      sub_1B7201D10(v7, 0);
    }

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }
}

id FinanceStore.Changes.newToken.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_1B7227500(v2, v3);
}

uint64_t sub_1B74E33B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 32) = v6;
  return result;
}

uint64_t sub_1B74E347C(uint64_t a1)
{
  v6 = (*(**v1 + 96) + **(**v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B7201BB0;

  return v6(a1);
}

uint64_t sub_1B74E35A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v11 = swift_task_alloc();
  *(v6 + 32) = v11;
  v12 = _s15HistoryIteratorCMa();
  *v11 = v6;
  v11[1] = sub_1B74E368C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v12, a6, v6 + 16);
}

uint64_t sub_1B74E368C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1B74E379C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B74E37E4, 0, 0);
}

uint64_t sub_1B74E37E4()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 128);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1B74E38CC;
  v5 = v0[5];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

uint64_t sub_1B74E38CC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (!v0)
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B74E3A08, 0, 0);
}

uint64_t sub_1B74E3A08()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B74E3AC4()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t FinanceStore.History.Iterator.next()(uint64_t a1)
{
  v6 = (*(**v1 + 96) + **(**v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B74E3C98;

  return v6(a1);
}

uint64_t sub_1B74E3C98()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B74E3DCC, 0, 0);
}

uint64_t sub_1B74E3DCC()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 40) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B74E3ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B723838C;

  return FinanceStore.History.Iterator.next()(a1);
}

uint64_t sub_1B74E3F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1B74E46CC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t FinanceStore.History.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1B74E40A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  FinanceStore.History.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t sub_1B74E4104()
{
  result = qword_1EB9962F0;
  if (!qword_1EB9962F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962F0);
  }

  return result;
}

unint64_t sub_1B74E4158()
{
  result = qword_1EB9962F8;
  if (!qword_1EB9962F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9962F8);
  }

  return result;
}

unint64_t sub_1B74E41AC()
{
  result = qword_1EB996308[0];
  if (!qword_1EB996308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB996308);
  }

  return result;
}

uint64_t sub_1B74E424C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B74E4288(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B74E42D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B74E437C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B74E4428()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B74E4464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B74E44AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B74E450C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B74E4574()
{
  result = qword_1EB996490;
  if (!qword_1EB996490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996490);
  }

  return result;
}

unint64_t sub_1B74E45CC()
{
  result = qword_1EDAF9120;
  if (!qword_1EDAF9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9120);
  }

  return result;
}

unint64_t sub_1B74E4624()
{
  result = qword_1EDAF9128[0];
  if (!qword_1EDAF9128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAF9128);
  }

  return result;
}

unint64_t sub_1B74E4678()
{
  result = qword_1EB996498;
  if (!qword_1EB996498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996498);
  }

  return result;
}

uint64_t sub_1B74E46F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1B73932D0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1B726359C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B725CC4C();
        v11 = v13;
      }

      result = sub_1B7391A48(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1B74E47B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1B7205418(a1, &qword_1EB9964B8);
    sub_1B739144C(a2, v7);
    v12 = sub_1B77FFA18();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1B7205418(v7, &qword_1EB9964B8);
  }

  else
  {
    sub_1B74EAC8C(a1, v10, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1B7393790(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1B77FFA18();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1B74E49D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1B7205418(a1, &qword_1EB9964D0);
    sub_1B7391490(a2, a3, v9);

    return sub_1B7205418(v9, &qword_1EB9964D0);
  }

  else
  {
    sub_1B74EAC8C(a1, v12, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1B7393964(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1B74E4BA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1B7205418(a1, &qword_1EB9964C8);
    sub_1B73915FC(a2, v7);
    v12 = sub_1B77FFA18();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1B7205418(v7, &qword_1EB9964C8);
  }

  else
  {
    sub_1B74EAC8C(a1, v10, type metadata accessor for TransactionGroup.StylingMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1B7393ADC(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1B77FFA18();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_1B74E4DC8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_1B73ADA9C();
    *(v1 + 16) = v2;
  }

  os_unfair_lock_unlock((v1 + 24));
  v3 = [*(v2 + 2) newBackgroundContext];

  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for SpendingSummary(0);
  sub_1B7801468();
}

uint64_t sub_1B74E4ED0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_prot **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v394 = a3;
  v364 = a2;
  v344 = a5;
  v412 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v345 = &v326 - v8;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964A0);
  v9 = MEMORY[0x1EEE9AC00](v380);
  v346 = &v326 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v326 - v11;
  v355 = type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);
  v354 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355);
  v367 = &v326 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v363 = &v326 - v15;
  v390 = sub_1B77FFA18();
  v383 = *(v390 - 8);
  v16 = MEMORY[0x1EEE9AC00](v390);
  v347 = &v326 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v349 = &v326 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  *&v377 = &v326 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v365 = &v326 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v372 = &v326 - v25;
  MEMORY[0x1EEE9AC00](v24);
  *&v381 = &v326 - v26;
  *&v382 = sub_1B77FF988();
  v353 = *(v382 - 8);
  v27 = MEMORY[0x1EEE9AC00](v382);
  v368 = &v326 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v373 = &v326 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v352 = &v326 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964A8);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v366 = &v326 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v358 = (&v326 - v35);
  v36 = sub_1B7800008();
  v379 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v326 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v326 - v40;
  if (qword_1EB98EAC8 != -1)
  {
    goto LABEL_246;
  }

LABEL_2:
  v42 = sub_1B7800038();
  __swift_project_value_buffer(v42, qword_1EBA45940);
  sub_1B7800018();
  sub_1B77FFFD8();
  v43 = sub_1B7800018();
  v44 = sub_1B7801388();
  v45 = sub_1B7801738();
  *&v378 = v12;
  if (v45)
  {
    v46 = a4;
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v43, v44, v48, "SpendingSummary", "", v47, 2u);
    v49 = v47;
    a4 = v46;
    MEMORY[0x1B8CA7A40](v49, -1, -1);
  }

  v50 = *(v379 + 16);
  v370 = v41;
  v50(v39, v41, v36);
  sub_1B7800078();
  swift_allocObject();
  v51 = sub_1B7800068();
  v52 = [objc_opt_self() currentQueryGenerationToken];
  *&v405 = 0;
  v53 = [a1 setQueryGenerationFromToken:v52 error:&v405];

  v369 = v51;
  if (!v53)
  {
    v60 = v405;
    sub_1B77FF318();

    swift_willThrow();
    v59 = v370;
    goto LABEL_8;
  }

  v342 = v36;
  v54 = v405;
  v55 = v394;
  v56 = v393;
  sub_1B74EA3D0();
  v39 = v56;
  if (v56)
  {
    goto LABEL_6;
  }

  v62 = v58;
  if (!v58)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v64 = 3;
    swift_willThrow();
LABEL_6:
    v59 = v370;
    v36 = v342;
LABEL_8:
    sub_1B74E80A0("SpendingSummary", 15, 2);

    return (*(v379 + 8))(v59, v36);
  }

  v12 = v57;
  v63 = sub_1B74EA778(v55, v57, v58);
  v388 = v12;
  v376 = v62;
  v327 = a4;
  v65 = v63;

  v67 = sub_1B74E9F44(v66);
  v375 = 0;
  v328 = v65;

  v402 = MEMORY[0x1B8CA5910](0);
  v403 = v68;
  v404 = v69;
  v398 = MEMORY[0x1E69E7CD0];
  v70 = MEMORY[0x1E69E7CC0];
  v361 = sub_1B7203DBC(MEMORY[0x1E69E7CC0]);
  v350 = sub_1B7203ECC(v70);
  v394 = sub_1B7203DBC(v70);
  v72 = v67 + 64;
  v71 = *(v67 + 64);
  v73 = 1 << *(v67 + 32);
  v397 = v70;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  a1 = v74 & v71;
  v329 = (v73 + 63) >> 6;
  v338 = (v353 + 16);
  v351 = (v353 + 32);
  v386 = (v383 + 16);
  v362 = (v383 + 8);
  v335 = (v383 + 48);
  v334 = (v383 + 32);
  v332 = (v353 + 8);
  v331 = v67;

  v360 = 0;
  v359 = 0;
  v337 = 0;
  v336 = 0;
  v75 = 0;
  v76 = 0;
  v77 = &qword_1EB9964B0;
  *&v78 = 136315138;
  v330 = v78;
  v36 = v70;
  v371 = v70;
  a4 = v366;
  v333 = v67 + 64;
LABEL_16:
  v343 = v36;
  if (a1)
  {
    v341 = v76;
    v79 = v76;
    goto LABEL_26;
  }

  if (v329 <= v76 + 1)
  {
    v80 = v76 + 1;
  }

  else
  {
    v80 = v329;
  }

  v41 = v80 - 1;
  do
  {
    v79 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      swift_once();
      goto LABEL_2;
    }

    if (v79 >= v329)
    {
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964B0);
      (*(*(v223 - 8) + 56))(a4, 1, 1, v223);
      v340 = 0;
      v341 = v41;
      goto LABEL_27;
    }

    a1 = *(v72 + 8 * v79);
    ++v76;
  }

  while (!a1);
  v341 = v79;
LABEL_26:
  v340 = (a1 - 1) & a1;
  v81 = __clz(__rbit64(a1)) | (v79 << 6);
  v82 = v331;
  v83 = v353;
  v84 = v352;
  v39 = v382;
  (*(v353 + 16))(v352, *(v331 + 48) + *(v353 + 72) * v81, v382);
  v85 = *(*(v82 + 56) + 8 * v81);
  v77 = &qword_1EB9964B0;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964B0);
  v87 = *(v86 + 48);
  v88 = *(v83 + 32);
  a4 = v366;
  v88(v366, v84, v39);
  *(a4 + v87) = v85;
  (*(*(v86 - 8) + 56))(a4, 0, 1, v86);

LABEL_27:
  v89 = v358;
  sub_1B722376C(a4, v358, &qword_1EB9964A8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964B0);
  if ((*(*(v90 - 8) + 48))(v89, 1, v90) == 1)
  {

    a4 = &off_1E7CAF000;
    if (v371 >> 62)
    {
      goto LABEL_253;
    }

    v224 = *((v371 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_160;
  }

  v91 = *(v89 + *(v90 + 48));
  v339 = *v351;
  v339(v373, v89, v382);
  v399 = MEMORY[0x1B8CA5910](0);
  v400 = v92;
  v401 = v93;
  v396 = MEMORY[0x1E69E7CD0];
  v41 = MEMORY[0x1E69E7CC0];
  *&v389 = sub_1B7203DBC(MEMORY[0x1E69E7CC0]);
  *&v387 = sub_1B7203ECC(v41);
  v77 = v375;
  v391 = v91;
  if (v91 >> 62)
  {
    v36 = sub_1B7801958();
  }

  else
  {
    v36 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a4 = &selRef_emailTypeValue;
  a1 = &off_1E7CAF000;
  if (!v36)
  {
LABEL_128:

    (*v338)(v368, v373, v382);
    v197 = v401;
    v199 = v399;
    v198 = v400;
    a4 = v376;

    CurrencyAmount.init(_:currencyCode:)(v199, v198, v197, v388, a4, &v405);
    v200 = v396;
    v395 = sub_1B72040D0(MEMORY[0x1E69E7CC0]);
    v41 = v389 + 64;
    v201 = 1 << *(v389 + 32);
    if (v201 < 64)
    {
      v202 = ~(-1 << v201);
    }

    else
    {
      v202 = -1;
    }

    v203 = v202 & *(v389 + 64);
    v204 = (v201 + 63) >> 6;

    v205 = 0;
    if (!v203)
    {
      goto LABEL_133;
    }

    do
    {
      v206 = v205;
LABEL_136:
      v207 = __clz(__rbit64(v203)) | (v206 << 6);
      v208 = *(*(v389 + 56) + 8 * v207);
      LOBYTE(v409) = *(*(v389 + 48) + v207);
      *(&v409 + 1) = v208;

      sub_1B74E8BC4(&v395, &v409, v388, a4);
      if (v77)
      {
        goto LABEL_265;
      }

      v203 &= v203 - 1;

      v205 = v206;
    }

    while (v203);
LABEL_133:
    while (1)
    {
      v206 = v205 + 1;
      if (__OFADD__(v205, 1))
      {
        break;
      }

      if (v206 >= v204)
      {
        v374 = v75;

        v393 = v395;
        *&v409 = sub_1B7204254(MEMORY[0x1E69E7CC0]);
        v209 = v387 + 64;
        v210 = 1 << *(v387 + 32);
        if (v210 < 64)
        {
          v211 = ~(-1 << v210);
        }

        else
        {
          v211 = -1;
        }

        v39 = v211 & *(v387 + 64);
        v212 = (v210 + 63) >> 6;

        v213 = 0;
        if (v39)
        {
          while (1)
          {
            v214 = v77;
            v215 = v213;
LABEL_148:
            v216 = __clz(__rbit64(v39)) | (v215 << 6);
            v41 = v387;
            a4 = v378;
            (*(v383 + 16))(v378, *(v387 + 48) + *(v383 + 72) * v216, v390);
            *(a4 + *(v380 + 48)) = *(*(v41 + 56) + 8 * v216);

            sub_1B74E848C(&v409, a4, v388, v376);
            v77 = v214;
            if (v214)
            {
              while (1)
              {

                sub_1B7205418(a4, &qword_1EB9964A0);

                __break(1u);
LABEL_267:
                *&v405 = 0;
                *(&v405 + 1) = 0xE000000000000000;
                sub_1B7801A78();

                *&v405 = 0xD000000000000028;
                *(&v405 + 1) = 0x80000001B7882270;
                LOWORD(v409) = [v41 creditDebitIndicatorValue];
                v324 = sub_1B7802068();
                v41 = v325;
                MEMORY[0x1B8CA4D30](v324);

LABEL_263:
                sub_1B7801C88();
                __break(1u);
LABEL_264:
                sub_1B78021C8();
                __break(1u);
LABEL_265:

                __break(1u);
              }
            }

            v39 &= v39 - 1;
            sub_1B7205418(a4, &qword_1EB9964A0);
            v213 = v215;
            if (!v39)
            {
              goto LABEL_144;
            }
          }
        }

        while (1)
        {
LABEL_144:
          v215 = v213 + 1;
          if (__OFADD__(v213, 1))
          {
            goto LABEL_193;
          }

          if (v215 >= v212)
          {
            break;
          }

          v39 = *(v209 + 8 * v215);
          ++v213;
          if (v39)
          {
            v214 = v77;
            goto LABEL_148;
          }
        }

        v217 = v409;
        v12 = v367;
        v339(v367, v368, v382);
        v218 = v355;
        v219 = v12 + *(v355 + 20);
        v220 = v406;
        *v219 = v405;
        *(v219 + 16) = v220;
        *(v219 + 32) = v407;
        *(v12 + v218[6]) = v200;
        *(v12 + v218[7]) = v393;
        *(v12 + v218[8]) = v217;
        v36 = v343;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1B723F6C0(0, *(v36 + 16) + 1, 1, v36);
        }

        v75 = v374;
        a1 = v340;
        v222 = *(v36 + 16);
        v221 = *(v36 + 24);
        v375 = v77;
        if (v222 >= v221 >> 1)
        {
          v36 = sub_1B723F6C0(v221 > 1, v222 + 1, 1, v36);
        }

        a4 = v366;
        (*v332)(v373, v382);
        *(v36 + 16) = v222 + 1;
        sub_1B74EAC8C(v367, v36 + ((*(v354 + 80) + 32) & ~*(v354 + 80)) + *(v354 + 72) * v222, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
        v72 = v333;
        v77 = &qword_1EB9964B0;
        v76 = v341;
        goto LABEL_16;
      }

      v203 = *(v41 + 8 * v206);
      ++v205;
      if (v203)
      {
        goto LABEL_136;
      }
    }

    __break(1u);
LABEL_193:
    __break(1u);
    while (2)
    {
      v75 = v371;
      while (2)
      {
        v392 = sub_1B723AF4C(v200);

        while (1)
        {
          v155 = v376;
          a4 = v375;
          sub_1B7205588(v327, v345, &qword_1EB993A98);
          v77 = v398;
          v265 = v404;
          v267 = v402;
          v266 = v403;

          CurrencyAmount.init(_:currencyCode:)(v267, v266, v265, v388, v155, &v409);
          v399 = sub_1B72040D0(MEMORY[0x1E69E7CC0]);
          v268 = v361 + 8;
          v269 = 1 << *(v361 + 32);
          v270 = -1;
          if (v269 < 64)
          {
            v270 = ~(-1 << v269);
          }

          v271 = v270 & v361[8];
          v272 = (v269 + 63) >> 6;

          for (i = 0; v271; i = v274)
          {
            v274 = i;
LABEL_204:
            v275 = __clz(__rbit64(v271)) | (v274 << 6);
            v276 = *(v361[7] + 8 * v275);
            LOBYTE(v405) = *(v361[6] + v275);
            *(&v405 + 1) = v276;

            sub_1B74E8BC4(&v399, &v405, v388, v155);
            if (a4)
            {
              goto LABEL_269;
            }

            v271 &= v271 - 1;
          }

          while (1)
          {
            v274 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v274 >= v272)
            {
              v393 = v77;
              v371 = v75;
              v155 = a4;

              v385 = v399;
              *&v405 = sub_1B7204254(MEMORY[0x1E69E7CC0]);
              v277 = v350;
              v278 = v350 + 64;
              v279 = 1 << *(v350 + 32);
              v280 = -1;
              if (v279 < 64)
              {
                v280 = ~(-1 << v279);
              }

              v77 = v280 & *(v350 + 64);
              v281 = (v279 + 63) >> 6;

              v282 = 0;
              if (!v77)
              {
LABEL_211:
                v75 = v346;
                while (1)
                {
                  a4 = v282 + 1;
                  if (__OFADD__(v282, 1))
                  {
                    goto LABEL_250;
                  }

                  if (a4 >= v281)
                  {

                    v284 = v405;
                    if (v394[2] && (v285 = sub_1B7263594(10), (v286 & 1) != 0))
                    {
                      v399 = *(&v394[7]->isa + v285);

                      v287 = v376;
                      sub_1B74E99B4(&v399, v388, v376, &v405);

                      v381 = v406;
                      v382 = v405;
                      v386 = v407;
                      v384 = v408;
                      v288 = v342;
                    }

                    else
                    {

                      v386 = 0;
                      v384 = 0;
                      v382 = 0u;
                      v381 = 0u;
                      v288 = v342;
                      v287 = v376;
                    }

                    v289 = v393;
                    v290 = v394;
                    if (v394[2] && (v291 = sub_1B7263594(11), (v292 & 1) != 0))
                    {
                      v399 = *(&v290[7]->isa + v291);

                      sub_1B74E99B4(&v399, v388, v287, &v405);

                      v377 = v406;
                      v378 = v405;
                      v293 = v407;
                      v380 = v408;
                    }

                    else
                    {

                      v293 = 0;
                      v380 = 0;
                      v378 = 0u;
                      v377 = 0u;
                    }

                    v294 = v394;
                    v295 = v394[2];
                    v388 = v293;
                    if (!v295 || (v296 = sub_1B7263594(12), (v297 & 1) == 0))
                    {

                      v308 = v343;

                      v309 = 0;
                      goto LABEL_260;
                    }

                    v376 = v284;
                    v375 = v155;
                    v77 = *(&v294[7]->isa + v296);
                    if (v77 >> 62)
                    {
                      goto LABEL_257;
                    }

                    v298 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    v299 = v343;
                    if (!v298)
                    {
                      goto LABEL_258;
                    }

                    goto LABEL_230;
                  }

                  v77 = *(v278 + 8 * a4);
                  ++v282;
                  if (v77)
                  {
                    goto LABEL_215;
                  }
                }
              }

              while (1)
              {
                a4 = v282;
                v75 = v346;
LABEL_215:
                v283 = __clz(__rbit64(v77)) | (a4 << 6);
                (*(v383 + 16))(v75, *(v277 + 48) + *(v383 + 72) * v283, v390);
                *(v75 + *(v380 + 48)) = *(*(v277 + 56) + 8 * v283);

                sub_1B74E91AC(&v405, v75, v388, v376);
                if (v155)
                {
                  goto LABEL_270;
                }

                v77 &= v77 - 1;
                sub_1B7205418(v75, &qword_1EB9964A0);
                v282 = a4;
                v277 = v350;
                if (!v77)
                {
                  goto LABEL_211;
                }
              }
            }

            v271 = v268[v274];
            ++i;
            if (v271)
            {
              goto LABEL_204;
            }
          }

LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          v224 = sub_1B7801958();
LABEL_160:
          v374 = v75;
          if (v224 > 0)
          {
            break;
          }

          v391 = 0;
          v392 = 0;
          v389 = 0u;
          v387 = 0u;
          v75 = v371;
        }

        v75 = v371;
        if (v371 >> 62)
        {
          v225 = sub_1B7801958();
        }

        else
        {
          v225 = *((v371 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v226 = MEMORY[0x1E69E7CC0];
        v392 = v225;
        v385 = v225 & ~(v225 >> 63);
        if (v225)
        {
          v399 = MEMORY[0x1E69E7CC0];
          sub_1B71FE3F0(0, v225 & ~(v225 >> 63), 0);
          v227 = v392;
          if (v392 < 0)
          {
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            v298 = sub_1B7801958();
            v299 = v343;
            if (!v298)
            {
LABEL_258:

              v89 = MEMORY[0x1E69E7CC0];
              goto LABEL_259;
            }

LABEL_230:
            *&v405 = MEMORY[0x1E69E7CC0];

            sub_1B71FD958(0, v298 & ~(v298 >> 63), 0);
            if (v298 < 0)
            {
              __break(1u);
            }

            v300 = 0;
            v89 = v405;
            do
            {
              if ((v77 & 0xC000000000000001) != 0)
              {
                v301 = MEMORY[0x1B8CA5DC0](v300, v77);
              }

              else
              {
                v301 = *(v77 + 8 * v300 + 32);
              }

              v302 = v301;
              v303 = [v302 publicTransactionObject];
              v304 = [v303 id];

              v305 = v347;
              sub_1B77FF9E8();

              *&v405 = v89;
              v307 = v89[2];
              v306 = v89[3];
              if (v307 >= v306 >> 1)
              {
                sub_1B71FD958(v306 > 1, v307 + 1, 1);
                v89 = v405;
              }

              ++v300;
              v89[2] = (v307 + 1);
              (*(v383 + 32))(v89 + ((*(v383 + 80) + 32) & ~*(v383 + 80)) + *(v383 + 72) * v307, v305, v390);
              *&v405 = v89;
            }

            while (v298 != v300);
            goto LABEL_242;
          }

          v77 = 0;
          v226 = v399;
          v391 = v75 & 0xC000000000000001;
          do
          {
            v393 = v226;
            if (v391)
            {
              v228 = MEMORY[0x1B8CA5DC0](v77, v75);
            }

            else
            {
              v228 = *(v75 + 8 * v77 + 32);
            }

            v229 = v228;
            v230 = [v229 *(a4 + 2592)];
            v231 = [v230 amount];
            [v231 decimalValue];

            v232 = [v230 currency];
            v233 = sub_1B7800868();
            v235 = v234;

            if (sub_1B78009A8() == 3)
            {
            }

            else
            {
              if (qword_1EDAFAF50 != -1)
              {
                swift_once();
              }

              v236 = sub_1B78000B8();
              __swift_project_value_buffer(v236, qword_1EDAFAF58);

              v237 = sub_1B7800098();
              v238 = sub_1B78011D8();

              if (os_log_type_enabled(v237, v238))
              {
                v239 = swift_slowAlloc();
                v240 = swift_slowAlloc();
                *&v405 = v240;
                *v239 = v330;
                *(v239 + 4) = sub_1B71A3EF8(v233, v235, &v405);
                _os_log_impl(&dword_1B7198000, v237, v238, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v239, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v240);
                v241 = v240;
                v75 = v371;
                MEMORY[0x1B8CA7A40](v241, -1, -1);
                MEMORY[0x1B8CA7A40](v239, -1, -1);
              }

              v227 = v392;
            }

            v405 = v409;
            LODWORD(v406) = v410;
            *(&v406 + 1) = v233;
            v407 = v235;
            sub_1B721722C(&v405);

            v226 = v393;
            v399 = v393;
            v243 = *(v393 + 16);
            v242 = *(v393 + 24);
            if (v243 >= v242 >> 1)
            {
              sub_1B71FE3F0((v242 > 1), v243 + 1, 1);
              v227 = v392;
              v226 = v399;
            }

            ++v77;
            *(v226 + 16) = v243 + 1;
            v244 = v226 + 20 * v243;
            v245 = v405;
            *(v244 + 48) = v406;
            *(v244 + 32) = v245;
            a4 = 0x1E7CAF000;
          }

          while (v227 != v77);
        }

        v246 = MEMORY[0x1B8CA5910](0);
        v249 = *(v226 + 16);
        if (v249)
        {
          v250 = v226 + 48;
          do
          {
            v246 = sub_1B7801638();
            v250 += 20;
            --v249;
          }

          while (v249);
        }

        v251 = v246;
        v252 = v248;
        v253 = v247;

        v254 = v376;

        CurrencyAmount.init(_:currencyCode:)(v251, v253, v252, v388, v254, &v405);
        v387 = v406;
        v389 = v405;
        v200 = MEMORY[0x1E69E7CC0];
        v255 = v392;
        v391 = v407;
        if (!v392)
        {
          continue;
        }

        break;
      }

      *&v409 = MEMORY[0x1E69E7CC0];
      sub_1B71FD958(0, v385, 0);
      if ((v255 & 0x8000000000000000) == 0)
      {
        v256 = 0;
        v200 = v409;
        v257 = v75 & 0xC000000000000001;
        v258 = v349;
        do
        {
          if (v257)
          {
            v259 = MEMORY[0x1B8CA5DC0](v256, v371);
          }

          else
          {
            v259 = *(v371 + 8 * v256 + 32);
          }

          v260 = v259;
          v261 = [v260 *(a4 + 2592)];
          v262 = [v261 id];

          sub_1B77FF9E8();
          *&v409 = v200;
          v264 = *(v200 + 16);
          v263 = *(v200 + 24);
          if (v264 >= v263 >> 1)
          {
            sub_1B71FD958(v263 > 1, v264 + 1, 1);
            v200 = v409;
          }

          ++v256;
          *(v200 + 16) = v264 + 1;
          (*(v383 + 32))(v200 + ((*(v383 + 80) + 32) & ~*(v383 + 80)) + *(v383 + 72) * v264, v258, v390);
          *&v409 = v200;
        }

        while (v392 != v256);
        continue;
      }

      goto LABEL_256;
    }
  }

  v12 = 0;
  v393 = v391 & 0xC000000000000001;
  v385 = v391 & 0xFFFFFFFFFFFFFF8;
  v384 = v391 + 32;
  v392 = v36;
  while (1)
  {
    if (v393)
    {
      v94 = MEMORY[0x1B8CA5DC0](v12, v391);
    }

    else
    {
      if (v12 >= *(v385 + 16))
      {
        __break(1u);
        goto LABEL_244;
      }

      v94 = *(v384 + 8 * v12);
    }

    v39 = v94;
    v95 = __OFADD__(v12++, 1);
    if (v95)
    {
      break;
    }

    v96 = [v94 *(a1 + 584)];
    if (v96)
    {
      v97 = v96;
      v98 = [v96 userInsightObject];

      if (v98)
      {
        v99 = [v98 excludeFromSpendingSummary];

        if (v99)
        {
          v41 = v39;
          v89 = &v397;
          MEMORY[0x1B8CA4F20]();
          if (*((v397 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v397 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
            a1 = 0x1E7CAF000;
          }

          sub_1B7800C88();

          v371 = v397;
          goto LABEL_36;
        }
      }
    }

    v100 = [v39 transactionCategoryObject];
    if (v100)
    {
      v101 = v100;
      TransactionCategory.init(rawValue:)([v100 *(a4 + 2576)]);
      v102 = v405;
      if (v405 == 13)
      {
        *&v405 = 0;
        *(&v405 + 1) = 0xE000000000000000;
        sub_1B7801A78();
        MEMORY[0x1B8CA4D30](0xD000000000000015, 0x80000001B7882780);
        LOWORD(v409) = [v101 *(a4 + 2576)];
        v322 = sub_1B7802068();
        v41 = v323;
        MEMORY[0x1B8CA4D30](v322);

        MEMORY[0x1B8CA4D30](0xD000000000000020, 0x80000001B78827A0);
        goto LABEL_263;
      }

      if (v102 == 8)
      {
        v103 = 4;
      }

      else
      {
        v103 = v102;
      }

      if (v102)
      {
        v36 = v103;
      }

      else
      {
        v36 = 9;
      }
    }

    else
    {
      v36 = 9;
    }

    if (qword_1EB98E960 != -1)
    {
      swift_once();
    }

    v104 = off_1EB990F40;
    if (!*(off_1EB990F40 + 2) || (sub_1B78022F8(), sub_1B7802328(), v105 = sub_1B7802368(), v106 = -1 << v104[32], v107 = v105 & ~v106, ((*&v104[((v107 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v107) & 1) == 0))
    {
LABEL_64:
      sub_1B71F4844(v75);
      v89 = v394;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v405 = v89;
      v110 = sub_1B7263594(v36);
      v112 = v89[2];
      v113 = (v111 & 1) == 0;
      v95 = __OFADD__(v112, v113);
      v114 = v112 + v113;
      if (v95)
      {
        goto LABEL_241;
      }

      v41 = v111;
      if (v89[3] >= v114)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_69;
        }

        v194 = v110;
        sub_1B725D804();
        v110 = v194;
        a1 = 0x1E7CAF000;
        v116 = v405;
        if ((v41 & 1) == 0)
        {
LABEL_70:
          v116[(v110 >> 6) + 8] = (v116[(v110 >> 6) + 8] | (1 << v110));
          *(&v116[6]->isa + v110) = v36;
          *(&v116[7]->isa + v110) = MEMORY[0x1E69E7CC0];
          v117 = v116[2];
          v95 = __OFADD__(v117, 1);
          v118 = (&v117->isa + 1);
          if (v95)
          {
            goto LABEL_245;
          }

          v116[2] = v118;
        }
      }

      else
      {
        sub_1B724B374(v114, isUniquelyReferenced_nonNull_native);
        v110 = sub_1B7263594(v36);
        if ((v41 & 1) != (v115 & 1))
        {
          goto LABEL_264;
        }

LABEL_69:
        v116 = v405;
        if ((v41 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      v394 = v116;
      v89 = (&v116[7]->isa + v110);
      v41 = v39;
      MEMORY[0x1B8CA4F20]();
      if (*((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
        a1 = 0x1E7CAF000;
      }

      sub_1B7800C88();

      v75 = sub_1B74EACF4;
LABEL_35:
      v36 = v392;
      goto LABEL_36;
    }

    v108 = ~v106;
    while (*(*(v104 + 6) + v107) != v36)
    {
      v107 = (v107 + 1) & v108;
      if (((*&v104[((v107 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v107) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    v89 = &off_1E7CAF000;
    v41 = [v39 publicTransactionObject];
    v119 = [v41 creditDebitIndicatorValue];
    if (v119 != 1)
    {
      if (v119)
      {
        goto LABEL_267;
      }

      goto LABEL_35;
    }

    v357 = v12;
    v374 = v75;
    v375 = v77;

    v120 = [v39 publicTransactionObject];
    v121 = [v120 id];

    v122 = v381;
    sub_1B77FF9E8();

    v123 = *v386;
    v124 = v365;
    v125 = v390;
    (*v386)(v365, v122, v390);
    v126 = v372;
    sub_1B724E840(v372, v124);
    v127 = *v362;
    (*v362)(v126, v125);
    v348 = v123;
    v123(v124, v381, v125);
    sub_1B724E840(v126, v124);
    v356 = v127;
    v127(v126, v125);
    v128 = [v39 publicTransactionObject];
    v129 = [v128 amount];
    [v129 decimalValue];
    a4 = *(&v405 + 1);
    v130 = v405;
    v77 = v406;

    v131 = [v128 currency];
    v132 = sub_1B7800868();
    v134 = v133;

    CurrencyAmount.init(_:currencyCode:)(v130, a4, v77, v132, v134, &v409);
    v405 = v409;
    v406 = v410;
    v407 = v411;
    sub_1B721722C(&v405);
    MEMORY[0x1B8CA5980](&v399, v405, *(&v405 + 1), v406);
    MEMORY[0x1B8CA5980](&v402, v405, *(&v405 + 1), v406);
    sub_1B71F4844(v360);
    v135 = v389;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v409 = v135;
    v136 = sub_1B7263594(v36);
    v138 = *(v135 + 16);
    v139 = (v137 & 1) == 0;
    v95 = __OFADD__(v138, v139);
    v140 = v138 + v139;
    if (v95)
    {
      __break(1u);
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    v41 = v137;
    if (*(v135 + 24) >= v140)
    {
      v77 = v375;
      a4 = v361;
      a1 = 0x1E7CAF000;
      v12 = v357;
      if ((v75 & 1) == 0)
      {
        v195 = v136;
        sub_1B725D804();
        v136 = v195;
        a1 = 0x1E7CAF000;
      }
    }

    else
    {
      sub_1B724B374(v140, v75);
      v136 = sub_1B7263594(v36);
      v77 = v375;
      a4 = v361;
      a1 = 0x1E7CAF000;
      v12 = v357;
      if ((v41 & 1) != (v141 & 1))
      {
        goto LABEL_264;
      }
    }

    v142 = v359;
    v143 = v409;
    if ((v41 & 1) == 0)
    {
      v144 = v136;
      sub_1B737F480(v136, v36, MEMORY[0x1E69E7CC0], v409);
      v136 = v144;
    }

    *&v389 = v143;
    v145 = (*(v143 + 56) + 8 * v136);
    v146 = v39;
    MEMORY[0x1B8CA4F20]();
    if (*((*v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    sub_1B71F4844(v142);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v409 = a4;
    v147 = sub_1B7263594(v36);
    v149 = *(a4 + 16);
    v150 = (v148 & 1) == 0;
    v95 = __OFADD__(v149, v150);
    v151 = v149 + v150;
    if (v95)
    {
      goto LABEL_248;
    }

    v41 = v148;
    if (*(a4 + 24) >= v151)
    {
      if ((v75 & 1) == 0)
      {
        v196 = v147;
        sub_1B725D804();
        v147 = v196;
        a1 = 0x1E7CAF000;
        v75 = v409;
        if (v41)
        {
          goto LABEL_93;
        }

LABEL_92:
        v153 = v147;
        sub_1B737F480(v147, v36, MEMORY[0x1E69E7CC0], v75);
        v147 = v153;
        goto LABEL_93;
      }
    }

    else
    {
      sub_1B724B374(v151, v75);
      v147 = sub_1B7263594(v36);
      if ((v41 & 1) != (v152 & 1))
      {
        goto LABEL_264;
      }
    }

    v75 = v409;
    if ((v41 & 1) == 0)
    {
      goto LABEL_92;
    }

LABEL_93:
    v154 = (*(v75 + 56) + 8 * v147);
    v155 = v146;
    MEMORY[0x1B8CA4F20]();
    if (*((*v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v156 = v363;
    sub_1B74E837C(v155, v363);
    v157 = v390;
    v158 = (*v335)(v156, 1, v390);
    v361 = v75;
    if (v158 == 1)
    {
      sub_1B7205418(v156, &unk_1EB993A10);
      if (qword_1EDAFAF50 != -1)
      {
        swift_once();
      }

      v159 = sub_1B78000B8();
      v89 = __swift_project_value_buffer(v159, qword_1EDAFAF58);
      v39 = v155;
      v160 = sub_1B7800098();
      v41 = sub_1B78011D8();

      if (os_log_type_enabled(v160, v41))
      {
        v161 = swift_slowAlloc();
        LODWORD(v360) = v41;
        v41 = v161;
        v375 = swift_slowAlloc();
        *&v409 = v375;
        *v41 = v330;
        v162 = [v39 publicTransactionObject];
        v163 = [v162 id];

        v164 = v372;
        sub_1B77FF9E8();

        sub_1B729D260();
        v165 = sub_1B7802068();
        v167 = v166;
        v168 = v356;
        v356(v164, v390);
        v169 = sub_1B71A3EF8(v165, v167, &v409);
        a1 = 0x1E7CAF000;

        *(v41 + 4) = v169;
        _os_log_impl(&dword_1B7198000, v160, v360, "Spending transaction with ID: %s hasn't been grouped by FinHealth yet, unable to aggregate it by group in breakdown.", v41, 0xCu);
        v89 = v375;
        __swift_destroy_boxed_opaque_existential_1(v375);
        MEMORY[0x1B8CA7A40](v89, -1, -1);
        MEMORY[0x1B8CA7A40](v41, -1, -1);

        v168(v381, v390);
      }

      else
      {

        v356(v381, v390);
      }

      v75 = v374;
      a4 = 0x1E7CB1000;
      v36 = v392;
    }

    else
    {
      v170 = v377;
      (*v334)(v377, v156, v157);
      sub_1B71F4844(v337);
      v171 = v387;
      a4 = swift_isUniquelyReferenced_nonNull_native();
      *&v409 = v171;
      v173 = sub_1B72454E8(v170);
      v174 = *(v171 + 16);
      v175 = (v172 & 1) == 0;
      v176 = v174 + v175;
      if (__OFADD__(v174, v175))
      {
        goto LABEL_251;
      }

      v75 = v172;
      if (*(v171 + 24) >= v176)
      {
        v36 = v392;
        if ((a4 & 1) == 0)
        {
          sub_1B725D578();
        }
      }

      else
      {
        sub_1B724AF80(v176, a4);
        v177 = sub_1B72454E8(v377);
        v36 = v392;
        if ((v75 & 1) != (v178 & 1))
        {
          goto LABEL_268;
        }

        v173 = v177;
      }

      v179 = v409;
      *&v387 = v409;
      if ((v75 & 1) == 0)
      {
        v180 = v372;
        v348(v372, v377, v390);
        sub_1B737FAB4(v173, v180, MEMORY[0x1E69E7CC0], v387);
        v179 = v387;
      }

      v181 = (*(v179 + 56) + 8 * v173);
      v155 = v155;
      MEMORY[0x1B8CA4F20]();
      if (*((*v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      sub_1B71F4844(v336);
      v182 = v350;
      a4 = swift_isUniquelyReferenced_nonNull_native();
      *&v409 = v182;
      v184 = sub_1B72454E8(v377);
      v185 = *(v182 + 16);
      v186 = (v183 & 1) == 0;
      v187 = v185 + v186;
      if (__OFADD__(v185, v186))
      {
        goto LABEL_252;
      }

      v75 = v183;
      if (*(v182 + 24) >= v187)
      {
        if ((a4 & 1) == 0)
        {
          sub_1B725D578();
        }
      }

      else
      {
        sub_1B724AF80(v187, a4);
        v188 = sub_1B72454E8(v377);
        if ((v75 & 1) != (v189 & 1))
        {
LABEL_268:
          sub_1B78021C8();
          __break(1u);
LABEL_269:

          __break(1u);
LABEL_270:

          sub_1B7205418(v75, &qword_1EB9964A0);

          __break(1u);
          return result;
        }

        v184 = v188;
      }

      v190 = v409;
      v350 = v409;
      a4 = 0x1E7CB1000;
      if ((v75 & 1) == 0)
      {
        v191 = v372;
        v348(v372, v377, v390);
        sub_1B737FAB4(v184, v191, MEMORY[0x1E69E7CC0], v350);
        v190 = v350;
      }

      v192 = (*(v190 + 56) + 8 * v184);
      v193 = v155;
      MEMORY[0x1B8CA4F20]();
      if (*((*v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
        a1 = 0x1E7CAF000;
      }

      sub_1B7800C88();

      v89 = v390;
      v41 = v362;
      v39 = v356;
      v356(v377, v390);
      (v39)(v381, v89);
      v336 = sub_1B74EACF4;
      v337 = sub_1B74EACF4;
      v75 = v374;
    }

    v359 = sub_1B74EACF4;
    v360 = sub_1B74EACF4;
LABEL_36:
    if (v12 == v36)
    {
      goto LABEL_128;
    }
  }

  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  v299 = v343;
LABEL_259:
  v309 = sub_1B723AF4C(v89);

  v288 = v342;
  v308 = v299;
  v289 = v393;
  v284 = v376;
LABEL_260:

  sub_1B73F8670(0, 0, 0, 0, 0);
  sub_1B73F8670(0, 0, 0, 0, 0);
  sub_1B73F8670(0, 0, 0, 0, 0);

  v310 = v344;
  sub_1B722376C(v345, v344, &qword_1EB993A98);

  v311 = type metadata accessor for SpendingSummary(0);
  *(v310 + v311[5]) = v289;
  v312 = v310 + v311[6];
  v313 = v410;
  *v312 = v409;
  *(v312 + 16) = v313;
  *(v312 + 32) = v411;
  v314 = (v310 + v311[7]);
  *v314 = v385;
  v314[1] = v284;
  v314[2] = v308;
  v315 = v310 + v311[8];
  v316 = v381;
  *v315 = v382;
  *(v315 + 16) = v316;
  v317 = v384;
  *(v315 + 32) = v386;
  *(v315 + 40) = v317;
  v318 = v377;
  *(v315 + 48) = v378;
  *(v315 + 64) = v318;
  v319 = v380;
  *(v315 + 80) = v388;
  *(v315 + 88) = v319;
  v320 = v387;
  *(v315 + 96) = v389;
  *(v315 + 112) = v320;
  v321 = v392;
  *(v315 + 128) = v391;
  *(v315 + 136) = v321;
  *(v315 + 144) = v309;
  sub_1B74E80A0("SpendingSummary", 15, 2);

  (*(v379 + 8))(v370, v288);
  sub_1B71F4844(v360);
  sub_1B71F4844(v359);
  sub_1B71F4844(v337);
  sub_1B71F4844(v336);
  return sub_1B71F4844(v374);
}

uint64_t sub_1B74E80A0(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = sub_1B7800048();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7800008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v12 = sub_1B7800038();
  __swift_project_value_buffer(v12, qword_1EBA45940);
  v13 = sub_1B7800018();
  sub_1B7800058();
  v18 = sub_1B7801378();
  result = sub_1B7801738();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1B7800088();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1B77FFFE8();
      _os_signpost_emit_with_name_impl(&dword_1B7198000, v13, v18, v17, a1, v15, v16, 2u);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B74E837C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 insightsObject];
  if (v3 && (v4 = v3, v5 = [v3 finHealthInsightObject], v4, v5) && (v6 = objc_msgSend(v5, sel_finHealthTransactionEntityGroupObject), v5, v6))
  {
    v7 = [v6 id];

    sub_1B77FF9E8();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1B77FFA18();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t sub_1B74E848C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v72 = a1;
  v70 = a3;
  v71 = a4;
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  v76 = v5;
  v77 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964A0);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  sub_1B7205588(a2, &v66 - v16, &qword_1EB9964A0);
  v68 = v17;

  sub_1B7205588(a2, v15, &qword_1EB9964A0);
  v67 = v15;

  v18 = *(a2 + *(v12 + 56));
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v20 = sub_1B7801958();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  v78 = v18;
  if (v20)
  {
    *&v80 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FD958(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v79 = v18 >> 62;
    v23 = 0;
    v21 = v80;
    v24 = v18 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v25 = MEMORY[0x1B8CA5DC0](v23, v18);
      }

      else
      {
        v25 = *(v18 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v26 publicTransactionObject];
      v28 = [v27 id];

      sub_1B77FF9E8();
      *&v80 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B71FD958(v29 > 1, v30 + 1, 1);
        v21 = v80;
      }

      ++v23;
      *(v21 + 16) = v30 + 1;
      (*(v77 + 32))(v21 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v30, v8, v76);
      v18 = v78;
    }

    while (v20 != v23);
    v19 = v79;
  }

  v66 = sub_1B723AF4C(v21);

  if (v19)
  {
    v31 = sub_1B7801958();
  }

  else
  {
    v31 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v85 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FE3F0(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v32 = v85;
      v74 = v18 & 0xC000000000000001;
      *&v33 = 136315138;
      v73 = v33;
      v75 = v31;
      do
      {
        v79 = v32;
        if (v74)
        {
          v35 = MEMORY[0x1B8CA5DC0](v34, v18);
        }

        else
        {
          v35 = *(v18 + 8 * v34 + 32);
        }

        v36 = v35;
        v37 = [v36 publicTransactionObject];
        v38 = [v37 amount];
        [v38 decimalValue];

        v39 = [v37 currency];
        v40 = sub_1B7800868();
        v42 = v41;

        if (sub_1B78009A8() == 3)
        {
        }

        else
        {
          if (qword_1EDAFAF50 != -1)
          {
            swift_once();
          }

          v43 = sub_1B78000B8();
          __swift_project_value_buffer(v43, qword_1EDAFAF58);

          v44 = sub_1B7800098();
          v45 = sub_1B78011D8();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *&v80 = v47;
            *v46 = v73;
            *(v46 + 4) = sub_1B71A3EF8(v40, v42, &v80);
            _os_log_impl(&dword_1B7198000, v44, v45, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v47);
            v48 = v47;
            v18 = v78;
            MEMORY[0x1B8CA7A40](v48, -1, -1);
            MEMORY[0x1B8CA7A40](v46, -1, -1);
          }
        }

        v80 = v83;
        LODWORD(v81) = v84;
        *(&v81 + 1) = v40;
        v82 = v42;
        sub_1B721722C(&v80);

        v32 = v79;
        v85 = v79;
        v50 = *(v79 + 16);
        v49 = *(v79 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1B71FE3F0((v49 > 1), v50 + 1, 1);
          v32 = v85;
        }

        ++v34;
        *(v32 + 16) = v50 + 1;
        v51 = v32 + 20 * v50;
        v52 = v80;
        *(v51 + 48) = v81;
        *(v51 + 32) = v52;
      }

      while (v75 != v34);
      goto LABEL_32;
    }

LABEL_38:
    __break(1u);
    return result;
  }

LABEL_32:
  v53 = MEMORY[0x1B8CA5910](0);
  v56 = *(v32 + 16);
  if (v56)
  {
    v57 = v32 + 48;
    do
    {
      v53 = sub_1B7801638();
      v57 += 20;
      --v56;
    }

    while (v56);
  }

  v58 = v53;
  v59 = v55;
  v60 = v54;

  v61 = v71;

  CurrencyAmount.init(_:currencyCode:)(v58, v60, v59, v70, v61, &v80);
  v62 = v69;
  (*(v77 + 32))(v69, v67, v76);
  v63 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  *(v62 + *(v63 + 20)) = v66;
  v64 = v62 + *(v63 + 24);
  v65 = v81;
  *v64 = v80;
  *(v64 + 16) = v65;
  *(v64 + 32) = v82;
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  return sub_1B74E47B4(v62, v68);
}

size_t sub_1B74E8BC4(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v63 = a1;
  v61 = a3;
  v62 = a4;
  v67 = sub_1B77FFA18();
  v5 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a2;
  v8 = *(a2 + 1);
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    v10 = sub_1B7801958();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v68 = v8;
  if (v10)
  {
    *&v71 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FD958(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v13 = 0;
    v11 = v71;
    v65 = v8 >> 62;
    v66 = v8 & 0xC000000000000001;
    v14 = v10;
    do
    {
      if (v66)
      {
        v15 = MEMORY[0x1B8CA5DC0](v13, v8);
      }

      else
      {
        v15 = *(v8 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v16 publicTransactionObject];
      v18 = [v17 id];

      sub_1B77FF9E8();
      *&v71 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B71FD958(v19 > 1, v20 + 1, 1);
        v11 = v71;
      }

      ++v13;
      *(v11 + 16) = v20 + 1;
      (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v7, v67);
      v8 = v68;
    }

    while (v14 != v13);
    v9 = v65;
  }

  v21 = sub_1B723AF4C(v11);

  if (v9)
  {
    v22 = sub_1B7801958();
  }

  else
  {
    v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v75 = MEMORY[0x1E69E7CC0];
    v66 = v22;
    result = sub_1B71FE3F0(0, v22 & ~(v22 >> 63), 0);
    v25 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      v59 = v21;
      v26 = 0;
      v23 = v75;
      v67 = v8 & 0xC000000000000001;
      *&v24 = 136315138;
      v64 = v24;
      do
      {
        if (v67)
        {
          v27 = MEMORY[0x1B8CA5DC0](v26, v8);
        }

        else
        {
          v27 = *(v8 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = [v28 publicTransactionObject];
        v30 = [v29 amount];
        [v30 decimalValue];

        v31 = [v29 currency];
        v32 = sub_1B7800868();
        v34 = v33;

        if (sub_1B78009A8() == 3)
        {
        }

        else
        {
          if (qword_1EDAFAF50 != -1)
          {
            swift_once();
          }

          v35 = sub_1B78000B8();
          __swift_project_value_buffer(v35, qword_1EDAFAF58);

          v36 = sub_1B7800098();
          v37 = sub_1B78011D8();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v65 = v23;
            v40 = v39;
            *&v71 = v39;
            *v38 = v64;
            *(v38 + 4) = sub_1B71A3EF8(v32, v34, &v71);
            _os_log_impl(&dword_1B7198000, v36, v37, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            v41 = v40;
            v23 = v65;
            MEMORY[0x1B8CA7A40](v41, -1, -1);
            v42 = v38;
            v8 = v68;
            MEMORY[0x1B8CA7A40](v42, -1, -1);
          }

          v25 = v66;
        }

        v71 = v69;
        v72 = v70;
        v73 = v32;
        v74 = v34;
        sub_1B721722C(&v71);

        v75 = v23;
        v44 = *(v23 + 16);
        v43 = *(v23 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1B71FE3F0((v43 > 1), v44 + 1, 1);
          v25 = v66;
          v23 = v75;
        }

        ++v26;
        *(v23 + 16) = v44 + 1;
        v45 = v23 + 20 * v44;
        v46 = v71;
        *(v45 + 48) = v72;
        *(v45 + 32) = v46;
      }

      while (v25 != v26);
      v21 = v59;
      goto LABEL_33;
    }

LABEL_39:
    __break(1u);
    return result;
  }

LABEL_33:
  v47 = MEMORY[0x1B8CA5910](0);
  v50 = *(v23 + 16);
  if (v50)
  {
    v51 = v23 + 48;
    do
    {
      v47 = sub_1B7801638();
      v51 += 20;
      --v50;
    }

    while (v50);
  }

  v52 = v47;
  v53 = v49;
  v54 = v48;

  v55 = v62;

  CurrencyAmount.init(_:currencyCode:)(v52, v54, v53, v61, v55, &v72);
  v56 = v60;
  LOBYTE(v71) = v60;
  *(&v71 + 1) = v75;
  DWORD1(v71) = *(&v75 + 3);
  *(&v71 + 1) = v21;
  v57 = v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v69 = *v57;
  result = sub_1B739366C(&v71, v56, isUniquelyReferenced_nonNull_native);
  *v57 = v69;
  return result;
}

uint64_t sub_1B74E91AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v93 = a2;
  v84 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964A0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - v9;
  v11 = sub_1B77FFA18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - v22;
  sub_1B7205588(a2, v10, &qword_1EB9964A0);

  v89 = *(v12 + 32);
  v90 = v12 + 32;
  v89(v23, v10, v11);
  v91 = v12;
  v24 = *(v12 + 16);
  v80 = v21;
  v24(v21, v23, v11);
  v78 = v18;
  v79 = v23;
  v92 = v11;
  v24(v18, v23, v11);
  v25 = *(v93 + *(v8 + 56));
  v26 = v25 >> 62;
  if (v25 >> 62)
  {
    v27 = sub_1B7801958();
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x1E69E7CC0];
  v93 = v25;
  if (v27)
  {
    *&v94 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FD958(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v88 = v25 >> 62;
    v30 = v25;
    v31 = 0;
    v28 = v94;
    v32 = v30 & 0xC000000000000001;
    do
    {
      if (v32)
      {
        v33 = MEMORY[0x1B8CA5DC0](v31, v93);
      }

      else
      {
        v33 = *(v93 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = [v34 publicTransactionObject];
      v36 = [v35 id];

      sub_1B77FF9E8();
      *&v94 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B71FD958(v37 > 1, v38 + 1, 1);
        v28 = v94;
      }

      ++v31;
      *(v28 + 16) = v38 + 1;
      v89((v28 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v38), v15, v92);
    }

    while (v27 != v31);
    v25 = v93;
    v26 = v88;
  }

  v39 = sub_1B723AF4C(v28);

  if (v26)
  {
    v40 = sub_1B7801958();
  }

  else
  {
    v40 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v99 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FE3F0(0, v40 & ~(v40 >> 63), 0);
    if ((v40 & 0x8000000000000000) == 0)
    {
      v77 = v39;
      v43 = 0;
      v41 = v99;
      v87 = v25 & 0xC000000000000001;
      *&v42 = 136315138;
      v85 = v42;
      v88 = v40;
      do
      {
        if (v87)
        {
          v44 = MEMORY[0x1B8CA5DC0](v43, v25);
        }

        else
        {
          v44 = *(v25 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = [v45 publicTransactionObject];
        v47 = [v46 amount];
        [v47 decimalValue];

        v48 = [v46 currency];
        v49 = sub_1B7800868();
        v51 = v50;

        if (sub_1B78009A8() == 3)
        {
        }

        else
        {
          v86 = v41;
          if (qword_1EDAFAF50 != -1)
          {
            swift_once();
          }

          v52 = sub_1B78000B8();
          __swift_project_value_buffer(v52, qword_1EDAFAF58);

          v53 = sub_1B7800098();
          v54 = sub_1B78011D8();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v94 = v56;
            *v55 = v85;
            *(v55 + 4) = sub_1B71A3EF8(v49, v51, &v94);
            _os_log_impl(&dword_1B7198000, v53, v54, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v56);
            v57 = v56;
            v25 = v93;
            MEMORY[0x1B8CA7A40](v57, -1, -1);
            MEMORY[0x1B8CA7A40](v55, -1, -1);
          }

          v41 = v86;
        }

        v94 = v97;
        LODWORD(v95) = v98;
        *(&v95 + 1) = v49;
        v96 = v51;
        sub_1B721722C(&v94);

        v99 = v41;
        v59 = *(v41 + 16);
        v58 = *(v41 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1B71FE3F0((v58 > 1), v59 + 1, 1);
          v41 = v99;
        }

        ++v43;
        *(v41 + 16) = v59 + 1;
        v60 = v41 + 20 * v59;
        v61 = v94;
        *(v60 + 48) = v95;
        *(v60 + 32) = v61;
      }

      while (v88 != v43);
      v39 = v77;
      goto LABEL_33;
    }

LABEL_39:
    __break(1u);
    return result;
  }

LABEL_33:
  v62 = MEMORY[0x1B8CA5910](0);
  v65 = *(v41 + 16);
  if (v65)
  {
    v66 = v41 + 48;
    do
    {
      v62 = sub_1B7801638();
      v66 += 20;
      --v65;
    }

    while (v65);
  }

  v67 = v62;
  v68 = v64;
  v69 = v63;

  v70 = v82;

  CurrencyAmount.init(_:currencyCode:)(v67, v69, v68, v81, v70, &v94);
  v71 = v83;
  v72 = v92;
  v89(v83, v78, v92);
  v73 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  *(v71 + *(v73 + 20)) = v39;
  v74 = v71 + *(v73 + 24);
  v75 = v95;
  *v74 = v94;
  *(v74 + 16) = v75;
  *(v74 + 32) = v96;
  (*(*(v73 - 8) + 56))(v71, 0, 1, v73);
  sub_1B74E47B4(v71, v80);
  return (*(v91 + 8))(v79, v72);
}

size_t sub_1B74E99B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v59 = a4;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1 >> 62)
  {
    v11 = sub_1B7801958();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v65 = v10;
  v66 = v11;
  v58 = v11 & ~(v11 >> 63);
  if (v11)
  {
    v73 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FE3F0(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v56 = a2;
    v57 = a3;
    v15 = 0;
    v12 = v73;
    v61 = v10 & 0xC000000000000001;
    *&v14 = 136315138;
    v60 = v14;
    do
    {
      v67 = v12;
      if (v61)
      {
        v16 = MEMORY[0x1B8CA5DC0](v15, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v17 publicTransactionObject];
      v19 = [v18 amount];
      [v19 decimalValue];

      v20 = [v18 currency];
      v21 = sub_1B7800868();
      v23 = v22;

      if (sub_1B78009A8() == 3)
      {
      }

      else
      {
        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v24 = sub_1B78000B8();
        __swift_project_value_buffer(v24, qword_1EDAFAF58);

        v25 = sub_1B7800098();
        v26 = sub_1B78011D8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *&v68 = v28;
          *v27 = v60;
          *(v27 + 4) = sub_1B71A3EF8(v21, v23, &v68);
          _os_log_impl(&dword_1B7198000, v25, v26, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x1B8CA7A40](v28, -1, -1);
          v29 = v27;
          v10 = v65;
          MEMORY[0x1B8CA7A40](v29, -1, -1);
        }

        v11 = v66;
      }

      v68 = v71;
      LODWORD(v69) = v72;
      *(&v69 + 1) = v21;
      v70 = v23;
      sub_1B721722C(&v68);

      v12 = v67;
      v73 = v67;
      v31 = *(v67 + 16);
      v30 = *(v67 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B71FE3F0((v30 > 1), v31 + 1, 1);
        v12 = v73;
      }

      ++v15;
      *(v12 + 16) = v31 + 1;
      v32 = v12 + 20 * v31;
      v33 = v68;
      *(v32 + 48) = v69;
      *(v32 + 32) = v33;
    }

    while (v11 != v15);
    a3 = v57;
    a2 = v56;
  }

  v34 = MEMORY[0x1B8CA5910](0);
  v37 = *(v12 + 16);
  if (v37)
  {
    v38 = v12 + 48;
    do
    {
      v34 = sub_1B7801638();
      v38 += 20;
      --v37;
    }

    while (v37);
  }

  v39 = v34;
  v40 = v36;
  v41 = v35;

  CurrencyAmount.init(_:currencyCode:)(v39, v41, v40, a2, a3, &v68);
  v42 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    goto LABEL_32;
  }

  *&v71 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FD958(0, v58, 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v42 = v71;
    v44 = v10 & 0xC000000000000001;
    v45 = v62;
    do
    {
      if (v44)
      {
        v46 = MEMORY[0x1B8CA5DC0](v43, v10);
      }

      else
      {
        v46 = *(v10 + 8 * v43 + 32);
      }

      v47 = v46;
      v48 = [v47 publicTransactionObject];
      v49 = [v48 id];

      sub_1B77FF9E8();
      *&v71 = v42;
      v51 = *(v42 + 16);
      v50 = *(v42 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1B71FD958(v50 > 1, v51 + 1, 1);
        v42 = v71;
      }

      ++v43;
      *(v42 + 16) = v51 + 1;
      (*(v64 + 32))(v42 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v51, v45, v63);
      v10 = v65;
    }

    while (v66 != v43);
LABEL_32:
    v52 = sub_1B723AF4C(v42);

    v53 = v69;
    v54 = v59;
    *v59 = v68;
    v54[1] = v53;
    *(v54 + 4) = v70;
    *(v54 + 5) = v52;
    return result;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B74E9F44(unint64_t a1)
{
  v41 = sub_1B77FFC88();
  v2 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B77FF988();
  v34 = *(v44 - 8);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v31 - v6;
  v46 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v7 = sub_1B7801958();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = a1 & 0xC000000000000001;
      v42 = (v34 + 8);
      v36 = (v2 + 8);
      v33 = v34 + 32;
      v9 = MEMORY[0x1E69E7CC8];
      v32 = xmmword_1B780B190;
      v35 = v7;
      v10 = v40;
      while (1)
      {
        if (v38)
        {
          v12 = MEMORY[0x1B8CA5DC0](v8, a1);
        }

        else
        {
          if (v8 >= *(v37 + 16))
          {
            goto LABEL_21;
          }

          v12 = *(a1 + 8 * v8 + 32);
        }

        v2 = v12;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v43 = v8 + 1;
        sub_1B77FFBC8();
        v13 = v2;
        v14 = [v2 publicTransactionObject];
        v15 = [v14 transactionDate];

        v16 = v39;
        sub_1B77FF928();

        v17 = v45;
        sub_1B77FFB28();
        v18 = *v42;
        (*v42)(v16, v44);
        (*v36)(v10, v41);
        v2 = sub_1B7245E10(v17);
        v20 = v9[2];
        v21 = (v19 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_22;
        }

        v23 = v19;
        if (v9[3] < v22)
        {
          sub_1B724B604(v22, 1);
          v9 = v46;
          v24 = sub_1B7245E10(v45);
          if ((v23 & 1) != (v25 & 1))
          {
            result = sub_1B78021C8();
            __break(1u);
            return result;
          }

          v2 = v24;
        }

        if (v23)
        {
          v11 = v18(v45, v44);
          v2 = v9[7] + 8 * v2;
          MEMORY[0x1B8CA4F20](v11);
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
          v26 = swift_allocObject();
          *(v26 + 16) = v32;
          *(v26 + 32) = v13;
          v9[(v2 >> 6) + 8] |= 1 << v2;
          (*(v34 + 32))(v9[6] + *(v34 + 72) * v2, v45, v44);
          *(v9[7] + 8 * v2) = v26;
          v27 = v9[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_23;
          }

          v9[2] = v29;
        }

        ++v8;
        if (v43 == v35)
        {
          return v9;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1B74EA3D0()
{
  type metadata accessor for ManagedAccount();
  v17.receiver = swift_getObjCClassFromMetadata();
  v17.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedAccount;
  v1 = objc_msgSendSuper2(&v17, sel_fetchRequest);
  [v1 setResultType_];
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  v3 = sub_1B77FF9B8();
  *(v2 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v2 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v2 + 32) = v3;
  v4 = sub_1B78010E8();
  [v1 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = 0x79636E6572727563;
  *(v5 + 40) = 0xE800000000000000;
  v6 = sub_1B7800C18();

  [v1 setPropertiesToFetch_];

  [v1 setFetchLimit_];
  sub_1B7205540(0, &qword_1EB994458);
  v7 = sub_1B7801498();
  if (v0)
  {

    return;
  }

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    v15 = 0u;
    v16 = 0u;
LABEL_15:
    sub_1B7205418(&v15, &qword_1EB98FCB0);
    return;
  }

  v11 = v7;
  v12 = sub_1B7801958();
  v7 = v11;
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
LABEL_8:
    v9 = v8;

    *&v13 = 0x79636E6572727563;
    *(&v13 + 1) = 0xE800000000000000;
    v10 = [v9 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v10)
    {
      sub_1B7801848();

      swift_unknownObjectRelease();
    }

    else
    {

      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      swift_dynamicCast();
      return;
    }

    goto LABEL_15;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1B74EA778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedInternalTransaction();
  v26.receiver = swift_getObjCClassFromMetadata();
  v26.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v25 = objc_msgSendSuper2(&v26, sel_fetchRequest);
  v3 = sub_1B7800C18();
  [v25 setRelationshipKeyPathsForPrefetching_];

  [v25 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7836D40;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B77FF9B8();
  *(v5 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v5 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v5 + 32) = v6;
  *(v4 + 32) = sub_1B78010E8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  v8 = sub_1B77FF8B8();
  v9 = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v7 + 56) = v9;
  v10 = sub_1B73B4AF0(&qword_1EDAF93C0, &qword_1EDAF93C8);
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  *(v4 + 40) = sub_1B78010E8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98);
  v12 = sub_1B77FF8B8();
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = v12;
  *(v4 + 48) = sub_1B78010E8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7807CD0;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1B721FF04();
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  *(v4 + 56) = sub_1B78010E8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7807CD0;
  v15 = MEMORY[0x1E69E72E8];
  *(v14 + 56) = MEMORY[0x1E69E7290];
  *(v14 + 64) = v15;
  *(v14 + 32) = 4;
  *(v4 + 64) = sub_1B78010E8();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7807CD0;
  MEMORY[0x1B8CA5900](0.0);
  v17 = sub_1B7801608();
  *(v16 + 56) = sub_1B7205540(0, &qword_1EB990D60);
  *(v16 + 64) = sub_1B73B4AF0(&qword_1EB9964C0, &qword_1EB990D60);
  *(v16 + 32) = v17;
  *(v4 + 72) = sub_1B78010E8();
  *(v4 + 80) = sub_1B78010E8();
  v18 = sub_1B7800C18();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v25 setPredicate_];
  v20 = sub_1B7800C18();
  [v25 setRelationshipKeyPathsForPrefetching_];

  v21 = sub_1B7801498();
  return v21;
}

uint64_t sub_1B74EAC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B74EACF8(id *a1)
{
  v1 = [*a1 baseURL];
  sub_1B77FF478();
}

void sub_1B74EAD58(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 lastModifiedValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B74EADC0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLastModifiedValue_];
}

void ManagedOrderWebService.setLastModifiedValue(_:modificationDate:)()
{
  v1 = sub_1B7800838();
  [v0 setLastModifiedValue_];

  v2 = sub_1B77FF8B8();
  [v0 setLastModifiedValueModificationDate_];
}

void sub_1B74EAEB4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void ManagedOrderWebService.log(level:message:date:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a4, v8);
  v12 = [v5 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(type metadata accessor for ManagedOrderWebServiceLogEntry()) initWithContext_];
    [v14 setLevelValue_];
    v15 = sub_1B7800838();
    [v14 setMessage_];

    v16 = sub_1B77FF8B8();
    [v14 setDate_];

    (*(v9 + 8))(v11, v8);
    v17 = [v5 logEntries];
    v18 = [v17 setByAddingObject_];

    if (v18)
    {
      [v5 setLogEntries_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ManagedOrderWebService.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderWebService.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderWebService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderWebService.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedOrderWebService;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedOrderWebService.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedOrderWebService;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderWebService.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

uint64_t static ManagedOrderWebService.predicateForOrderWebServices(with:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t static ManagedOrderWebService.predicateForOrderWebServices(withBaseURL:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF3F8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9964D8);
  *(v0 + 64) = sub_1B74EBB94();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

unint64_t static ManagedOrderWebService.existingObject(with:baseURL:in:)(uint64_t a1, uint64_t a2)
{
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedOrderWebService;
  v4 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B721FF04();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  *(v5 + 32) = sub_1B78010E8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  v8 = sub_1B77FF3F8();
  *(v7 + 56) = sub_1B7205540(0, &qword_1EB9964D8);
  *(v7 + 64) = sub_1B74EBB94();
  *(v7 + 32) = v8;
  *(v5 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v4 setPredicate_];
  v11 = v17;
  result = sub_1B7801498();
  if (v11)
  {

    return v10;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = sub_1B7801958();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v10 = v13;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B74EBA18(SEL *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.super_class = swift_getObjectType();
  v9[0] = 0;
  v8.receiver = v1;
  v3 = objc_msgSendSuper2(&v8, *a1, v9);
  v4 = v9[0];
  if (v3)
  {
    swift_getKeyPath();
    v5 = v4;
    sub_1B7451E8C(v1);
  }

  else
  {
    v7 = v9[0];
    sub_1B77FF318();

    return swift_willThrow();
  }
}

uint64_t sub_1B74EBB10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

unint64_t sub_1B74EBB94()
{
  result = qword_1EB9964E0;
  if (!qword_1EB9964E0)
  {
    sub_1B7205540(255, &qword_1EB9964D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9964E0);
  }

  return result;
}

id sub_1B74EBBFC(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedOrderWebService();
  v6 = [a1 orderTypeIdentifier];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = static ManagedOrderWebService.existingObject(with:baseURL:in:)(v7, v9);
  if (v3)
  {
  }

  else
  {
    v6 = v10;

    if (!v6)
    {
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v6 setOrderType_];
      v11 = [a1 orderTypeIdentifier];
      [v6 setOrderTypeIdentifier_];

      v12 = sub_1B77FF3F8();
      [v6 setBaseURL_];
    }
  }

  return v6;
}

id ManagedAccount.searchableItemAttributeSet(configuration:)()
{
  v1 = v0;
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFF98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7800838();
  v11 = [v1 valueForKeyPath_];

  if (v11)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45[0] = v43;
  v45[1] = v44;
  if (!*(&v44 + 1))
  {
    sub_1B726990C(v45);
    return 0;
  }

  type metadata accessor for ManagedInternalAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v12 = v42[1];
  sub_1B77FFF88();
  v13 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v14 = sub_1B77FFF48();
  v15 = [v13 initWithContentType_];

  (*(v7 + 8))(v9, v6);
  v16 = [v1 id];
  sub_1B77FF9E8();

  sub_1B77FF9A8();
  v18 = v17;
  v19 = v5;
  v20 = v12;
  (*(v3 + 8))(v19, v2);
  v21 = sub_1B7800838();

  [v15 setIdentifier_];

  v22 = [v1 displayName];
  [v15 setDisplayName_];

  v23 = [v1 accountDescription];
  [v15 setContentDescription_];

  result = [v12 originTypeValue];
  v25 = result;
  if (result - 1 >= 4)
  {
    if (!result)
    {
LABEL_28:
      v38 = [v1 managedObjectContext];
      if (v38)
      {
        v39 = v38;
        [v38 refreshObject:v1 mergeChanges:0];
      }

      v40 = [v1 managedObjectContext];
      if (v40)
      {
        v41 = v40;
        [v40 refreshObject:v20 mergeChanges:0];
      }

      return v15;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v26 = sub_1B78000B8();
    __swift_project_value_buffer(v26, qword_1EDAF65B0);
    v27 = v1;
    v28 = v12;
    v23 = sub_1B7800098();
    LOBYTE(v2) = sub_1B78011C8();

    if (!os_log_type_enabled(v23, v2))
    {

LABEL_27:
      sub_1B7449284();
      v37 = sub_1B7801528();
      [v15 setDisableSearchInSpotlight_];

      goto LABEL_28;
    }

    v42[0] = v12;
    v20 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v45[0] = v18;
    *v20 = 136315394;
    v29 = [v27 debugDescription];
    v30 = sub_1B7800868();
    v32 = v31;

    v33 = sub_1B71A3EF8(v30, v32, v45);

    *(v20 + 1) = v33;
    *(v20 + 6) = 2080;
    result = [v28 originTypeValue];
    v25 = result;
    if (result > 1u)
    {
      switch(result)
      {
        case 2u:
          v35 = 0x614320656C707041;
          v34 = 0xEA00000000006873;
          goto LABEL_26;
        case 3u:
          v34 = 0xED000073676E6976;
          v35 = 0x615320656C707041;
LABEL_26:
          v36 = sub_1B71A3EF8(v35, v34, v45);

          *(v20 + 14) = v36;
          _os_log_impl(&dword_1B7198000, v23, v2, "    Account %s has origin     %s, hiding from Spotlight", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CA7A40](v18, -1, -1);
          MEMORY[0x1B8CA7A40](v20, -1, -1);

          v20 = v42[0];
          goto LABEL_27;
        case 4u:
          v34 = 0xEB00000000726564;
          v35 = 0x6C6F686563616C50;
          goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  if (!v25)
  {
    v34 = 0xEC0000007463656ELL;
    v35 = 0x6E6F43206B6E6142;
    goto LABEL_26;
  }

  if (v25 == 1)
  {
    v35 = 0x614320656C707041;
    v34 = 0xEA00000000006472;
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

id static FinancialInsightsServiceConfiguration.serviceInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7716270();
  return v0;
}

id sub_1B74EC49C()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7716270();
  return v0;
}

void *PaymentTransactionImporter.__allocating_init(coreDataStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  type metadata accessor for ManagedTransactionImporter();
  swift_allocObject();
  v2[3] = ManagedTransactionImporter.init()();
  type metadata accessor for BankConnectTransactionsMatcher();
  v3 = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v3 + 16) = swift_allocObject();
  v2[4] = v3;
  return v2;
}

uint64_t PaymentTransactionImporter.init(coreDataStore:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  type metadata accessor for ManagedTransactionImporter();
  swift_allocObject();
  *(v1 + 24) = ManagedTransactionImporter.init()();
  type metadata accessor for BankConnectTransactionsMatcher();
  v3 = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v3 + 16) = swift_allocObject();
  *(v2 + 32) = v3;
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PaymentTransactionImporter.insertOrUpdatePaymentTransaction(_:for:)(FKPaymentTransaction *_, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v9 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v7 = _os_activity_create(&dword_1B7198000, "bankConnect/insertOrUpdatePaymentTransaction", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);
  sub_1B74EC718(v3, _, countAndFlagsBits, object);
  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
}

void sub_1B74EC718(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v47 = a3;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B78000B8();
  v10 = __swift_project_value_buffer(v9, qword_1EDAF65B0);
  v11 = a2;
  v12 = sub_1B7800098();
  v13 = sub_1B78011F8();

  if (os_log_type_enabled(v12, v13))
  {
    v44[1] = a4;
    v45 = v4;
    v46 = v10;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48 = v15;
    *v14 = 136315394;
    v16 = [v11 transactionId];
    v17 = sub_1B7800868();
    v19 = v18;

    v20 = sub_1B71A3EF8(v17, v19, &v48);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 paymentHash];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B7800868();
      v25 = v24;
    }

    else
    {
      v25 = 0xE90000000000003ELL;
      v23 = 0x6E776F6E6B6E753CLL;
    }

    v26 = sub_1B71A3EF8(v23, v25, &v48);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1B7198000, v12, v13, "Inserting or updating a PassKit payment transaction with ID:\n%s and payment hash: %s.", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v15, -1, -1);
    MEMORY[0x1B8CA7A40](v14, -1, -1);

    v5 = v45;
  }

  else
  {
  }

  v27 = [*(*(a1 + 16) + 16) newBackgroundContext];
  v43 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964E8);
  sub_1B7801468();
  if (v5)
  {
    v28 = v5;
    v29 = sub_1B7800098();
    v30 = sub_1B78011D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_1B7802228();
      v35 = sub_1B71A3EF8(v33, v34, &v48);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1B7198000, v29, v30, "Failed to insert or update PassKit transaction: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1B8CA7A40](v32, -1, -1);
      MEMORY[0x1B8CA7A40](v31, -1, -1);
    }

    swift_willThrow();
    goto LABEL_13;
  }

  v36 = v49;
  if (!v49)
  {
LABEL_13:

    return;
  }

  v37 = v48;
  if (v50 != 0xD000000000000021 || v51 != 0x80000001B787E620)
  {
    v38 = sub_1B78020F8();
    if ((v38 & 1) == 0)
    {
      v47 = v44;
      v39 = MEMORY[0x1EEE9AC00](v38);
      MEMORY[0x1EEE9AC00](v39);
      sub_1B7801468();
      sub_1B74204FC(v37, v36);
      v40 = sub_1B7800098();
      v41 = sub_1B78011F8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1B7198000, v40, v41, "Successfully inserted or updated PassKit payment transaction.", v42, 2u);
        MEMORY[0x1B8CA7A40](v42, -1, -1);
      }

      goto LABEL_13;
    }
  }

  sub_1B74204FC(v37, v36);
}

void sub_1B74ECCF0(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = [objc_opt_self() currentQueryGenerationToken];
  *&v52 = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:&v52];

  v13 = v52;
  if (!v12)
  {
    v19 = v52;
    sub_1B77FF318();

    swift_willThrow();
    return;
  }

  type metadata accessor for ManagedInternalAccount();
  v14 = v13;
  v15 = static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(a2, a3);
  if (v5)
  {
    return;
  }

  if (v15)
  {
    v16 = v15;
LABEL_5:
    v17 = v15;
    v18 = v16;
    v25 = ManagedTransactionImporter.insertOrUpdateTransaction(account:appleTransaction:context:)(v18, a4, a1);

    *&v52 = 0;
    if ([a1 save_])
    {
      v26 = v52;
      v27 = a5;
      v28 = [v18 accountId];
      v29 = sub_1B7800868();
      v31 = v30;

      v32 = [v18 institutionId];
      v33 = sub_1B7800868();
      v35 = v34;

      *v27 = v29;
      v27[1] = v31;
      v27[2] = v33;
      v27[3] = v35;
    }

    else
    {
      v43 = v52;
      sub_1B77FF318();

      swift_willThrow();
    }

    return;
  }

  v54 = &_s10FinanceKit11FeatureFlagVN_0;
  v55 = sub_1B721D3DC();
  LOBYTE(v52) = 12;
  v20 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(&v52);
  if (v20)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B78000B8();
    __swift_project_value_buffer(v21, qword_1EDAF65B0);

    oslog = sub_1B7800098();
    v22 = sub_1B78011F8();

    v50 = v22;
    v49 = a5;
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v52 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B71A3EF8(a2, a3, &v52);
      _os_log_impl(&dword_1B7198000, oslog, v50, "Payment pass with fpanID: %s is not linked with Bank Connect.\nAdding unconnected transaction to placeholder account.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1B8CA7A40](v24, -1, -1);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }

    *&v52 = a2;
    *(&v52 + 1) = a3;
    v53 = 0xD000000000000021;
    v54 = 0x80000001B787E620;

    v16 = static ManagedInternalAccount.existingAccount(with:in:)(&v52);

    if (!v16)
    {
      v44 = [a4 amount];
      v45 = [v44 currency];

      v46 = sub_1B7800868();
      v48 = v47;

      v16 = sub_1B741CAC8(a2, a3, v46, v48, a1);
    }

    v15 = 0;
    a5 = v49;
    goto LABEL_5;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v36 = sub_1B78000B8();
  __swift_project_value_buffer(v36, qword_1EDAF65B0);

  v37 = sub_1B7800098();
  v38 = sub_1B78011F8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = a5;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v52 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1B71A3EF8(a2, a3, &v52);
    _os_log_impl(&dword_1B7198000, v37, v38, "Ignoring transaction, payment pass with fpanID: %s is not linked with Bank Connect.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1B8CA7A40](v41, -1, -1);
    v42 = v40;
    a5 = v39;
    MEMORY[0x1B8CA7A40](v42, -1, -1);
  }

  *a5 = 0u;
  *(a5 + 1) = 0u;
}

void sub_1B74ED298(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v11 = [objc_opt_self() currentQueryGenerationToken];
  v20[0] = 0;
  v12 = [a1 setQueryGenerationFromToken:v11 error:v20];

  v13 = v20[0];
  if (!v12)
  {
    goto LABEL_5;
  }

  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v14 = v13;
  v21.accountID._countAndFlagsBits = v20;
  v21.accountID._object = a1;
  BankConnectTransactionsMatcher.matchTransactions(for:in:)(v21, v15);
  if (v16)
  {
    return;
  }

  v20[0] = 0;
  v17 = [a1 save_];
  v13 = v20[0];
  if (v17)
  {
    v18 = v20[0];
  }

  else
  {
LABEL_5:
    v19 = v13;
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t PaymentTransactionImporter.deinit()
{

  return v0;
}

uint64_t PaymentTransactionImporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B74ED464(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = *v3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v8 = _os_activity_create(&dword_1B7198000, "bankConnect/insertOrUpdatePaymentTransaction", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);
  sub_1B74EC718(v7, a1, a2, a3);
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

uint64_t BankConnectWebServiceOfflineLabPermissionLoadRequest.init(offlineLabUserID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t BankConnectWebServiceOfflineLabPermissionLoadRequest.makeHTTPHeaderFields()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9A8();
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001B787E200;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_1B74ED73C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9A8();
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001B787E200;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t static BankConnectWebServiceOfflineLabPermissionLoadResponse.parse(data:urlResponse:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a3;
    v12 = [v10 statusCode];
    if (v12 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v13, v5);
      sub_1B77FE8C8();
      sub_1B74EDAA8();
      sub_1B77FE8D8();

      if (v3)
      {
        type metadata accessor for FinanceNetworkError();
        sub_1B743DD44();
        swift_allocError();
        *v14 = v3;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {

        v15 = v24;
      }
    }

    else
    {
      v20 = v12;
      type metadata accessor for FinanceNetworkError();
      sub_1B743DD44();
      swift_allocError();
      *v21 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    v17 = v16;
    v18 = sub_1B7205540(0, &qword_1EB99DE70);
    ObjectType = swift_getObjectType();
    *v17 = v18;
    v17[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v15 & 1;
}

unint64_t sub_1B74EDAA8()
{
  result = qword_1EB9964F0;
  if (!qword_1EB9964F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9964F0);
  }

  return result;
}

uint64_t BankConnectWebServiceOfflineLabPermissionSaveRequest.init(hasPermission:offlineLabUserID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for BankConnectWebServiceOfflineLabPermissionSaveRequest(0) + 20);
  v6 = sub_1B77FFA18();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t BankConnectWebServiceOfflineLabPermissionSaveRequest.makeAdditionalHTTPHeaderFields()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  type metadata accessor for BankConnectWebServiceOfflineLabPermissionSaveRequest(0);
  v1 = sub_1B77FF9A8();
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001B787E200;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_1B74EDC4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9A8();
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001B787E200;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  return v0;
}

void static BankConnectWebServiceOfflineLabPermissionSaveResponse.parse(urlResponse:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 statusCode];
    if (v5 != 204)
    {
      v6 = v5;
      type metadata accessor for FinanceNetworkError();
      sub_1B743DD44();
      swift_allocError();
      *v7 = v6;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    v9 = v8;
    v10 = sub_1B7205540(0, &qword_1EB99DE70);
    ObjectType = swift_getObjectType();
    *v9 = v10;
    v9[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t BankConnectWebServiceOfflineLabItemsRequest.init(offlineLabUserID:offlineLabDeviceID:inputStream:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest(0);
  *(a4 + v8[7]) = &unk_1F2F44BE0;
  v9 = sub_1B77FFA18();
  result = (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  *(a4 + v8[6]) = a3;
  return result;
}

uint64_t BankConnectWebServiceOfflineLabItemsRequest.pathComponents.getter()
{
  type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest(0);
}

uint64_t BankConnectWebServiceOfflineLabItemsRequest.pathComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t BankConnectWebServiceOfflineLabItemsRequest.makeHTTPHeaderFields()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B780D870;
  strcpy((v0 + 32), "Content-Type");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  *(v0 + 48) = 0xD000000000000010;
  *(v0 + 56) = 0x80000001B7873B70;
  v1 = sub_1B77FF9A8();
  *(v0 + 64) = 0xD000000000000019;
  *(v0 + 72) = 0x80000001B787E200;
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  type metadata accessor for BankConnectWebServiceOfflineLabItemsRequest(0);
  v3 = sub_1B7802068();
  *(v0 + 96) = 0xD00000000000001BLL;
  *(v0 + 104) = 0x80000001B787E220;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  return v0;
}

void static BankConnectWebServiceOfflineLabItemsResponse.parse(urlResponse:)(void *a1)
{
  if (a1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 statusCode];
    if (v5 != 200)
    {
      v6 = v5;
      type metadata accessor for FinanceNetworkError();
      sub_1B743DD44();
      swift_allocError();
      *v7 = v6;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B743DD44();
    swift_allocError();
    v9 = v8;
    v10 = sub_1B7205540(0, &qword_1EB99DE70);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99E0C0);
    *v9 = v10;
    v9[1] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_1B74EE21C()
{
  result = qword_1EB9964F8;
  if (!qword_1EB9964F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9964F8);
  }

  return result;
}

uint64_t sub_1B74EE2B8()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B74EE35C()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B74EE410()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B7205540(319, &qword_1EB996530);
    if (v1 <= 0x3F)
    {
      sub_1B73DD6F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id static ManagedInternalTransaction.fetchRequest()()
{
  v3.receiver = swift_getObjCClassFromMetadata();
  v3.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v0 = objc_msgSendSuper2(&v3, sel_fetchRequest);
  v1 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  return v0;
}

uint64_t static ManagedInternalTransaction.predicateForTransactions(withFinHealthEntityGroupID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t static ManagedInternalTransaction.predicateForTransactions(withIDs:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80);
  *(v2 + 64) = sub_1B728216C(&qword_1EB990B88, &qword_1EB990B80);
  *(v2 + 32) = a1;

  return sub_1B78010E8();
}

id static ManagedInternalTransaction.sortDescriptorForDate(ascending:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v3 = sub_1B7800838();
  v4 = [v2 initWithKey:v3 ascending:a1 & 1];

  return v4;
}

unint64_t static ManagedInternalTransaction.existingTransaction(withTransactionID:in:)()
{
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v0 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v1 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  v2 = "onImporter";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v0 setPredicate_];

  v6 = v12;
  result = sub_1B7801498();
  if (v6)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

void static ManagedInternalTransaction.latestTransactionDate(for:source:in:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v36 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v37 = *a1;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *a2;
  v43.receiver = swift_getObjCClassFromMetadata();
  v43.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v12 = objc_msgSendSuper2(&v43, sel_fetchRequest);
  v13 = sub_1B7800C18();
  [v12 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B780C060;
  v40 = v37;
  v41 = v10;
  v42 = v9;
  v15 = sub_1B77FEA78();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v44 = 3;
  v16 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(&v40, 0, v8, &v44);
  sub_1B7205418(v8, &qword_1EB992798);
  *(v14 + 32) = v16;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v17 = swift_allocObject();
  v37 = xmmword_1B7807CD0;
  v18 = MEMORY[0x1E69E7290];
  *(v17 + 16) = xmmword_1B7807CD0;
  v19 = MEMORY[0x1E69E72E8];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 32) = v11;
  *(v14 + 40) = sub_1B78010E8();
  v20 = sub_1B7800C18();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v12 setPredicate_];
  swift_getKeyPath();
  _s10FinanceKit26ManagedInternalTransactionC27transactionsSortDescriptors9ascending27withKeyPathForSortingByDateSaySo16NSSortDescriptorCGSb_s0kL0CyAC10Foundation0P0VGtFZ_0(0);

  sub_1B7205540(0, &qword_1EDAF6470);
  v22 = sub_1B7800C18();

  [v12 setSortDescriptors_];

  [v12 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v23 = swift_allocObject();
  *(v23 + 16) = v37;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 32) = 0x4164657461647075;
  *(v23 + 40) = 0xE900000000000074;
  v24 = sub_1B7800C18();

  [v12 setPropertiesToFetch_];

  v25 = v39;
  v26 = sub_1B7801498();
  if (v25)
  {

    return;
  }

  v27 = v36;
  if (v26 >> 62)
  {
    v32 = v26;
    v33 = sub_1B7801958();
    v26 = v32;
    if (v33)
    {
      goto LABEL_5;
    }

LABEL_10:

    v31 = 1;
    goto LABEL_11;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v28 = *(v26 + 32);
  }

  v29 = v28;

  v30 = [v29 updatedAt];

  sub_1B77FF928();
  v31 = 0;
LABEL_11:
  v34 = sub_1B77FF988();
  (*(*(v34 - 8) + 56))(v27, v31, 1, v34);
}

unint64_t static ManagedInternalTransaction.existingTransaction(with:in:)(uint64_t *a1)
{
  v1 = a1[1];
  v17 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v19.receiver = swift_getObjCClassFromMetadata();
  v19.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v6 = objc_msgSendSuper2(&v19, sel_fetchRequest);
  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1B7800C18();
  [v6 setRelationshipKeyPathsForPrefetching_];

  v18[0] = v2;
  v18[1] = v3;
  v18[2] = v5;
  v18[3] = v4;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = v7;
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = v17;
  *(v9 + 40) = v1;

  v10 = sub_1B78010E8();
  v11 = sub_1B74F3DC8(v18, v10);

  [v6 setPredicate_];

  v12 = v20;
  result = sub_1B7801498();
  if (v12)
  {

    return v11;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v15 = result;
  v16 = sub_1B7801958();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v11 = v14;

    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B74EF1DC(uint64_t a1, uint64_t a2, __int128 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, __int128 *, char *))
{
  v20 = *a3;
  v11 = *(a3 + 2);
  v10 = *(a3 + 3);
  v12 = *a4;
  v25.receiver = swift_getObjCClassFromMetadata();
  v25.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v13 = objc_msgSendSuper2(&v25, sel_fetchRequest);
  v14 = sub_1B7800C18();
  [v13 setRelationshipKeyPathsForPrefetching_];

  v22 = v20;
  v23 = v11;
  v24 = v10;
  v26 = v12;
  v15 = a7(a1, a2, &v22, &v26);
  [v13 setPredicate_];

  result = sub_1B7801498();
  if (v21)
  {

    return v10;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v18 = result;
  v19 = sub_1B7801958();
  result = v18;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 32);
LABEL_8:
    v10 = v17;

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedInternalTransaction.existingTransaction(with:in:)(uint64_t a1, uint64_t a2)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v4 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  v7 = "transactionId == %@";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v5;
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1B78010E8();
  [v4 setPredicate_];

  v10 = v16;
  result = sub_1B7801498();
  if (v10)
  {

    return v7;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v7 = v12;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedInternalTransaction.predicateForTransactions(withFinHealthIncomeInsightID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

id static ManagedInternalTransaction.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedInternalTransaction.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

id static ManagedInternalTransaction.predicateForTransaction(fqti:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v10[0] = a1[2];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B721FF04();
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  v7 = sub_1B78010E8();
  v8 = sub_1B74F3DC8(v10, v7);

  return v8;
}

uint64_t static ManagedInternalTransaction.predicateForTransaction(withPublicTransactionID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

id static ManagedInternalTransaction.fetchRequest(for:)(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v13 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v7 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  v8 = sub_1B7800C18();
  [v7 setRelationshipKeyPathsForPrefetching_];

  v15 = v13;
  v16 = v5;
  v17 = v6;
  v9 = sub_1B77FEA78();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v14 = 3;
  v10 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(&v15, 0, v4, &v14);
  sub_1B7205418(v4, &qword_1EB992798);
  [v7 setPredicate_];

  swift_getKeyPath();
  _s10FinanceKit26ManagedInternalTransactionC27transactionsSortDescriptors9ascending27withKeyPathForSortingByDateSaySo16NSSortDescriptorCGSb_s0kL0CyAC10Foundation0P0VGtFZ_0(0);

  sub_1B7205540(0, &qword_1EDAF6470);
  v11 = sub_1B7800C18();

  [v7 setSortDescriptors_];

  [v7 setReturnsObjectsAsFaults_];
  return v7;
}

id sub_1B74EFC34(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v14.receiver = swift_getObjCClassFromMetadata();
  v14.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v6 = objc_msgSendSuper2(&v14, sel_fetchRequest);
  [v6 setResultType_];
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7808C50;
  v8 = MEMORY[0x1E69E72E8];
  *(v7 + 56) = MEMORY[0x1E69E7290];
  *(v7 + 64) = v8;
  *(v7 + 32) = v5;
  v9 = MEMORY[0x1E69E6158];
  *(v7 + 96) = MEMORY[0x1E69E6158];
  *(v7 + 104) = sub_1B721FF04();
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v10 = sub_1B78010E8();
  [v6 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  *(v11 + 56) = v9;
  *(v11 + 32) = 0x4164657461647075;
  *(v11 + 40) = 0xE900000000000074;
  v12 = sub_1B7800C18();

  [v6 setPropertiesToFetch_];

  [v6 setFetchLimit_];
  return v6;
}

void static ManagedInternalTransaction.latestTransactionDate(forPublicAccountID:source:in:)(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v26.receiver = swift_getObjCClassFromMetadata();
  v26.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v3 = objc_msgSendSuper2(&v26, sel_fetchRequest);
  v4 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7290];
  *(v5 + 16) = xmmword_1B7808C50;
  v7 = MEMORY[0x1E69E72E8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  v8 = sub_1B77FF9B8();
  *(v5 + 96) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v5 + 104) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v5 + 72) = v8;
  v9 = sub_1B78010E8();
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B780B190;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1B7800838();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  sub_1B7205540(0, &qword_1EDAF6470);
  v14 = sub_1B7800C18();

  [v3 setSortDescriptors_];

  [v3 setFetchLimit_];
  v15 = v27;
  v16 = sub_1B7801498();
  if (v15)
  {

    return;
  }

  if (v16 >> 62)
  {
    v22 = v16;
    v23 = sub_1B7801958();
    v16 = v22;
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_10:

    v24 = sub_1B77FF988();
    (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_8:
    v18 = v17;

    v19 = [v18 publicTransactionObject];
    v20 = [v19 transactionDate];

    sub_1B77FF928();
    v21 = sub_1B77FF988();
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    return;
  }

  __break(1u);
}

void sub_1B74F0240(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char a4@<W4>, uint64_t a5@<X8>)
{
  LOBYTE(v22) = *a3;
  v8 = sub_1B74EFC34(a1, a2, &v22);
  swift_getKeyPath();
  _s10FinanceKit26ManagedInternalTransactionC27transactionsSortDescriptors9ascending27withKeyPathForSortingByDateSaySo16NSSortDescriptorCGSb_s0kL0CyAC10Foundation0P0VGtFZ_0(a4);

  sub_1B7205540(0, &qword_1EDAF6470);
  v9 = sub_1B7800C18();

  [v8 setSortDescriptors_];

  sub_1B7205540(0, &qword_1EB994458);
  v10 = sub_1B7801498();
  if (v5)
  {

    return;
  }

  if (v10 >> 62)
  {
    v17 = v10;
    v18 = sub_1B7801958();
    v10 = v17;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_14:

    v22 = 0u;
    v23 = 0u;
    goto LABEL_15;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = sub_1B7800838();
  v14 = [v12 valueForKeyPath_];

  if (v14)
  {
    sub_1B7801848();

    swift_unknownObjectRelease();
  }

  else
  {

    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    v15 = sub_1B77FF988();
    v16 = swift_dynamicCast();
    (*(*(v15 - 8) + 56))(a5, v16 ^ 1u, 1, v15);
    return;
  }

LABEL_15:
  sub_1B7205418(&v22, &qword_1EB98FCB0);
  v19 = sub_1B77FF988();
  (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
}

void static ManagedInternalTransaction.oldestTransactionDate(accountIdentifier:source:transactionStatuses:dateInterval:in:)(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *a2;
  v23 = *a1;
  *&v24 = v7;
  *(&v24 + 1) = v8;
  LOBYTE(v21) = v9;
  v10 = sub_1B74F0788(&v23, &v21, a3, a4);
  sub_1B7205540(0, &qword_1EB994458);
  v11 = sub_1B7801498();
  if (v5)
  {

    return;
  }

  if (v11 >> 62)
  {
    v18 = v11;
    v19 = sub_1B7801958();
    v11 = v18;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_14:

    v23 = 0u;
    v24 = 0u;
    goto LABEL_15;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = sub_1B7800838();
  v15 = [v13 valueForKeyPath_];

  if (v15)
  {
    sub_1B7801848();

    swift_unknownObjectRelease();
  }

  else
  {

    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    v16 = sub_1B77FF988();
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(a5, v17 ^ 1u, 1, v16);
    return;
  }

LABEL_15:
  sub_1B7205418(&v23, &qword_1EB98FCB0);
  v20 = sub_1B77FF988();
  (*(*(v20 - 8) + 56))(a5, 1, 1, v20);
}

id sub_1B74F0788(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v34 = *a1;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *a2;
  v40.receiver = swift_getObjCClassFromMetadata();
  v40.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v14 = objc_msgSendSuper2(&v40, sel_fetchRequest);
  [v14 setResultType_];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B780C060;
  v37 = v34;
  v38 = v12;
  v39 = v11;
  v16 = sub_1B77FEA78();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, a4, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  v36 = v13;
  v18 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(&v37, 0, v10, &v36);
  sub_1B7205418(v10, &qword_1EB992798);
  *(v15 + 32) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v19 = swift_allocObject();
  v34 = xmmword_1B7807CD0;
  *(v19 + 16) = xmmword_1B7807CD0;
  v20 = *(a3 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    *&v37 = MEMORY[0x1E69E7CC0];
    sub_1B71FDCD8(0, v20, 0);
    v21 = v37;
    v22 = (a3 + 32);
    v23 = *(v37 + 16);
    do
    {
      v25 = *v22++;
      v24 = v25;
      *&v37 = v21;
      v26 = *(v21 + 24);
      if (v23 >= v26 >> 1)
      {
        sub_1B71FDCD8((v26 > 1), v23 + 1, 1);
        v21 = v37;
      }

      *(v21 + 16) = v23 + 1;
      *(v21 + 2 * v23++ + 32) = v24;
      --v20;
    }

    while (v20);
  }

  sub_1B7205540(0, &qword_1EDAFAF30);
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D20);
  *(v19 + 64) = sub_1B728216C(&qword_1EB992D28, &qword_1EB992D20);
  *(v19 + 32) = v21;
  *(v15 + 40) = sub_1B78010E8();
  v27 = sub_1B7800C18();

  v28 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v14 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v29 = swift_allocObject();
  *(v29 + 16) = v34;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 32) = 0xD000000000000027;
  *(v29 + 40) = 0x80000001B78370B0;
  v30 = sub_1B7800C18();

  [v14 setPropertiesToFetch_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v31 + 32) = sub_1B7801288();
  v32 = sub_1B7800C18();

  [v14 setSortDescriptors_];

  [v14 setFetchLimit_];
  return v14;
}

void static ManagedInternalTransaction.deleteTransaction(with:in:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v11[0] = a1[2];
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;

  v9 = sub_1B78010E8();
  v10 = sub_1B74F3DC8(v11, v9);

  sub_1B74F0D7C(v10, a2);
}

void sub_1B74F0D7C(uint64_t a1, void *a2)
{
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v5 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  v6 = sub_1B7800C18();
  [v5 setRelationshipKeyPathsForPrefetching_];

  [v5 setPredicate_];
  [v5 setIncludesPropertyValues_];
  v7 = sub_1B7801498();
  if (v2)
  {
    goto LABEL_12;
  }

  if (v7 >> 62)
  {
    v11 = v7;
    if (sub_1B7801958() > 1)
    {
      goto LABEL_15;
    }

    v12 = sub_1B7801958();
    v7 = v11;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 > 1)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    [a2 deleteObject_];

    v5 = v10;
LABEL_12:

    return;
  }

  __break(1u);
LABEL_15:
  sub_1B7801C88();
  __break(1u);
}

void static ManagedInternalTransaction.deleteTransaction(withPublicTransactionID:in:)(uint64_t a1, void *a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  sub_1B74F0D7C(v5, a2);
}

void static ManagedInternalTransaction.deleteTransaction(withTransactionID:fqai:in:)(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
  v12 = *a3;
  v13 = v7;
  v14 = v8;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_1B78010E8();
  v11 = sub_1B74F3DC8(&v12, v10);

  sub_1B74F0D7C(v11, a4);
}

id static ManagedInternalTransaction.predicateForTransaction(transactionIdentifier:fqai:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v11 = *a3;
  v12 = v5;
  v13 = v6;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  v9 = sub_1B74F3DC8(&v11, v8);

  return v9;
}

id sub_1B74F12CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicTransactionObject];
  *a2 = result;
  return result;
}

void sub_1B74F1328(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setTransactionDate_];
}

uint64_t sub_1B74F1384@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v55 = a3;
  LODWORD(v45) = a2;
  v44 = a1;
  v58 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996598);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9965A0);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996628);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v50 = v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996540);
  v43 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996548);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996550);
  v41 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v39 - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996560);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = v39 - v22;
  v44 = *v44;
  sub_1B728216C(&qword_1EB996558, &qword_1EB996548);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  v23 = *(v16 + 8);
  v39[1] = v16 + 8;
  v40 = v23;
  v23(v18, v15);
  v61 = v45;
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB996588, &qword_1EB996550);
  v45 = sub_1B728216C(&qword_1EB996590, &qword_1EB996540);
  v24 = v59;
  sub_1B77FEFD8();
  v25 = *(v43 + 8);
  v25(v14, v24);
  (*(v41 + 8))(v21, v19);
  sub_1B77FF2D8();
  swift_getKeyPath();
  v26 = v46;
  sub_1B77FF008();

  v40(v18, v15);
  swift_getKeyPath();
  sub_1B728216C(&qword_1EB9965B8, &qword_1EB996598);
  v27 = v48;
  v28 = v51;
  sub_1B77FF008();

  (*(v52 + 8))(v26, v28);
  v60 = v55;
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB9965C8, &qword_1EB9965A0);
  v29 = v50;
  v30 = v27;
  v31 = v53;
  v32 = v59;
  sub_1B77FEFD8();
  v25(v14, v32);
  (*(v54 + 8))(v30, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996630);
  v34 = v58;
  v58[3] = v33;
  v34[4] = sub_1B74F6124(&qword_1EB996638, &qword_1EB996630, &unk_1B7837330, sub_1B74F61A8);
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_1B728216C(&qword_1EB996618, &qword_1EB996560);
  sub_1B728216C(&qword_1EB996648, &qword_1EB996628);
  v35 = v42;
  v36 = v47;
  v37 = v56;
  sub_1B77FF098();
  (*(v57 + 8))(v29, v37);
  return (*(v49 + 8))(v35, v36);
}

uint64_t sub_1B74F1B88@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a3;
  LODWORD(v49) = a2;
  v46 = a1;
  v64 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996598);
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9965A0);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v42 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9965A8);
  v59 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v48 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9965B0);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v42 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996540);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996548);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996550);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996560);
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = *v46;
  v47 = &v42 - v24;
  sub_1B728216C(&qword_1EB996558, &qword_1EB996548);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  v25 = *(v17 + 8);
  v42 = v17 + 8;
  v43 = v25;
  v25(v19, v16);
  v66 = v49;
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB996588, &qword_1EB996550);
  v49 = MEMORY[0x1E6968D20];
  sub_1B728216C(&qword_1EB996590, &qword_1EB996540);
  v26 = v44;
  sub_1B77FEFD8();
  (*(v45 + 8))(v15, v26);
  (*(v21 + 8))(v23, v20);
  v65 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D20);
  v27 = v48;
  sub_1B77FF2C8();
  sub_1B77FF2D8();
  swift_getKeyPath();
  v28 = v52;
  sub_1B77FF008();

  v43(v19, v16);
  swift_getKeyPath();
  sub_1B728216C(&qword_1EB9965B8, &qword_1EB996598);
  v29 = v55;
  v30 = v57;
  sub_1B77FF008();

  (*(v58 + 8))(v28, v30);
  sub_1B728216C(&qword_1EB9965C0, &qword_1EB9965A8);
  sub_1B728216C(&qword_1EB9965C8, &qword_1EB9965A0);
  sub_1B728216C(&qword_1EB9965D0, &qword_1EB992D20);
  v31 = v53;
  v32 = v29;
  v33 = v56;
  v34 = v60;
  sub_1B77FF028();
  (*(v61 + 8))(v32, v34);
  (*(v59 + 8))(v27, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9965D8);
  v36 = v64;
  v64[3] = v35;
  v36[4] = sub_1B74F6124(&qword_1EB9965E0, &qword_1EB9965D8, &unk_1B7837320, sub_1B74F5E24);
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_1B728216C(&qword_1EB996618, &qword_1EB996560);
  sub_1B728216C(&qword_1EB996620, &qword_1EB9965B0);
  v37 = v47;
  v38 = v31;
  v39 = v50;
  v40 = v62;
  sub_1B77FF098();
  (*(v63 + 8))(v38, v40);
  return (*(v54 + 8))(v37, v39);
}

uint64_t sub_1B74F24AC@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0);
  v2 = *(v1 - 8);
  v24 = v1;
  v25 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v22 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996548);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996598);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996650);
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v21 - v13;
  sub_1B728216C(&qword_1EB996558, &qword_1EB996548);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  sub_1B728216C(&qword_1EB9965B8, &qword_1EB996598);
  sub_1B77FF008();

  (*(v9 + 8))(v11, v8);
  v26 = 1;
  v15 = v22;
  sub_1B77FF2C8();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996658);
  v17 = v23;
  v23[3] = v16;
  v17[4] = sub_1B74F6258();
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1B728216C(&qword_1EB996670, &qword_1EB996650);
  sub_1B728216C(&qword_1EB9914F8, &qword_1EB9913D0);
  v18 = v21;
  v19 = v24;
  sub_1B77FEFD8();
  (*(v25 + 8))(v15, v19);
  return (*(v12 + 8))(v14, v18);
}

uint64_t sub_1B74F2914@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996540);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996548);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996550);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17[-v13];
  sub_1B728216C(&qword_1EB996558, &qword_1EB996548);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v8 + 8))(v10, v7);
  v21 = v18;
  sub_1B77FF2C8();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996560);
  a2[4] = sub_1B74F5CCC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1B728216C(&qword_1EB996588, &qword_1EB996550);
  sub_1B728216C(&qword_1EB996590, &qword_1EB996540);
  v15 = v19;
  sub_1B77FEFD8();
  (*(v20 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

id sub_1B74F2C80@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

id static ManagedInternalTransaction.containsShareableTransactionsFetchRequest()()
{
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_1B7800868();
    v0 = sub_1B7800838();
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  v2 = _s10FinanceKit26ManagedInternalTransactionC33predicateForShareableTransactionsSo11NSPredicateCyFZ_0();
  [v1 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v3 + 32) = sub_1B7801288();
  v4 = sub_1B7800C18();

  [v1 setSortDescriptors_];

  [v1 setFetchLimit_];
  [v1 setResultType_];
  return v1;
}

id static ManagedInternalTransaction.yearlyGroupedFetchRequest(excluding:)(uint64_t a1)
{
  v2 = [swift_getObjCClassFromMetadata() entityName];
  if (!v2)
  {
    sub_1B7800868();
    v2 = sub_1B7800838();
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  v4 = _s10FinanceKit26ManagedInternalTransactionC9predicate3forSo11NSPredicateCSi_tFZ_0(a1);
  v5 = objc_opt_self();
  v6 = [v5 notPredicateWithSubpredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  *(v7 + 32) = _s10FinanceKit26ManagedInternalTransactionC33predicateForShareableTransactionsSo11NSPredicateCyFZ_0();
  *(v7 + 40) = v6;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v8 = v6;
  v9 = sub_1B7800C18();

  v10 = [v5 andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 16) = xmmword_1B7807CD0;
  *(v11 + 56) = v12;
  *(v11 + 32) = 1918985593;
  *(v11 + 40) = 0xE400000000000000;
  v13 = sub_1B7800C18();

  [v3 setPropertiesToGroupBy_];

  [v3 setResultType_];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v14 + 32) = sub_1B7801288();
  v15 = sub_1B7800C18();

  [v3 setSortDescriptors_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7807CD0;
  *(v16 + 56) = v12;
  *(v16 + 32) = 1918985593;
  *(v16 + 40) = 0xE400000000000000;
  v17 = sub_1B7800C18();

  [v3 setPropertiesToFetch_];

  return v3;
}

id static ManagedInternalTransaction.monthlyGroupedFetchRequest(for:)(uint64_t a1)
{
  v2 = [swift_getObjCClassFromMetadata() entityName];
  if (!v2)
  {
    sub_1B7800868();
    v2 = sub_1B7800838();
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  *(v4 + 32) = _s10FinanceKit26ManagedInternalTransactionC33predicateForShareableTransactionsSo11NSPredicateCyFZ_0();
  *(v4 + 40) = _s10FinanceKit26ManagedInternalTransactionC9predicate3forSo11NSPredicateCSi_tFZ_0(a1);
  sub_1B7205540(0, &qword_1EDAFAF30);
  v5 = sub_1B7800C18();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = v8;
  strcpy((v7 + 32), "monthAndYear");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  v9 = sub_1B7800C18();

  [v3 setPropertiesToGroupBy_];

  [v3 setResultType_];
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470);
  swift_getKeyPath();
  *(v10 + 32) = sub_1B7801288();
  v11 = sub_1B7800C18();

  [v3 setSortDescriptors_];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  *(v12 + 56) = v8;
  strcpy((v12 + 32), "monthAndYear");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  v13 = sub_1B7800C18();

  [v3 setPropertiesToFetch_];

  return v3;
}

void sub_1B74F3428(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 monthAndYear];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B74F3480(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setMonthAndYear_];
}

id _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  v55 = a3;
  v52 = a2;
  v51 = sub_1B77FF988();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = (&v47 - v8);
  v9 = sub_1B77FEA78();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v53 = *a1;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v56 = *a4;
  v62 = MEMORY[0x1E69E7CC0];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v14 = swift_allocObject();
  v47 = xmmword_1B780C060;
  *(v14 + 16) = xmmword_1B780C060;
  v15 = sub_1B7205540(0, &qword_1EDAFAF30);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v17 = swift_allocObject();
  v61 = xmmword_1B7807CD0;
  *(v17 + 16) = xmmword_1B7807CD0;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1B721FF04();
  *(v17 + 64) = v19;
  *(v17 + 32) = v13;
  *(v17 + 40) = v12;

  *(v14 + 32) = sub_1B78010E8();
  v60 = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v61;
  *(v20 + 56) = v18;
  *(v20 + 64) = v19;
  *(v20 + 32) = v53;
  *(v20 + 40) = v11;
  *(v14 + 40) = sub_1B78010E8();
  v21 = sub_1B7800C18();

  v53 = objc_opt_self();
  v22 = [v53 andPredicateWithSubpredicates_];

  v23 = v22;
  MEMORY[0x1B8CA4F20]();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B7800C58();
  }

  sub_1B7800C88();
  v24 = v52;
  if (v52)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B780B190;
    v26 = swift_allocObject();
    *(v26 + 16) = v61;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    *(v26 + 64) = sub_1B728216C(&qword_1EDAF64A0, &unk_1EB99A670);
    *(v26 + 32) = v24;

    *(inited + 32) = sub_1B78010E8();
    sub_1B72444D8(inited);
  }

  v27 = v54;
  sub_1B7205588(v55, v54, &qword_1EB992798);
  v29 = v58;
  v28 = v59;
  if ((*(v58 + 48))(v27, 1, v59) == 1)
  {
    sub_1B7205418(v27, &qword_1EB992798);
  }

  else
  {
    v30 = v48;
    (*(v29 + 32))(v48, v27, v28);
    v31 = swift_initStackObject();
    *(v31 + 16) = v47;
    v52 = "blicAccountObject.id == %@";
    v32 = swift_allocObject();
    *(v32 + 16) = v61;
    v33 = v49;
    sub_1B77FEA48();
    v34 = sub_1B77FF8B8();
    v57 = v15;
    v54 = *(v50 + 8);
    v35 = v51;
    (v54)(v33, v51);
    v36 = sub_1B7205540(0, &qword_1EDAF93C8);
    v55 = v23;
    v37 = v36;
    *(v32 + 56) = v36;
    v38 = sub_1B73B4AF0(&qword_1EDAF93C0, &qword_1EDAF93C8);
    *(v32 + 64) = v38;
    *(v32 + 32) = v34;
    *(v31 + 32) = sub_1B78010E8();
    v39 = swift_allocObject();
    *(v39 + 16) = v61;
    sub_1B77FEA18();
    v40 = sub_1B77FF8B8();
    (v54)(v33, v35);
    *(v39 + 56) = v37;
    *(v39 + 64) = v38;
    v23 = v55;
    *(v39 + 32) = v40;
    *(v31 + 40) = sub_1B78010E8();
    sub_1B72444D8(v31);
    (*(v58 + 8))(v30, v59);
  }

  v41 = v56;
  if (v56 != 3)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v61;
    v43 = MEMORY[0x1E69E72E8];
    *(v42 + 56) = MEMORY[0x1E69E7290];
    *(v42 + 64) = v43;
    *(v42 + 32) = v41;
    sub_1B78010E8();
    MEMORY[0x1B8CA4F20]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  v44 = sub_1B7800C18();

  v45 = [v53 andPredicateWithSubpredicates_];

  return v45;
}

uint64_t _s10FinanceKit26ManagedInternalTransactionC27transactionsSortDescriptors9ascending27withKeyPathForSortingByDateSaySo16NSSortDescriptorCGSb_s0kL0CyAC10Foundation0P0VGtFZ_0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B781E650;
  sub_1B7205540(0, &qword_1EDAF6470);

  *(v2 + 32) = sub_1B7801288();
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1B7800838();
  v5 = [v3 initWithKey:v4 ascending:(a1 & 1) == 0 selector:sel_localizedCaseInsensitiveCompare_];

  *(v2 + 40) = v5;
  swift_getKeyPath();
  *(v2 + 48) = sub_1B7801288();
  return v2;
}

id sub_1B74F3DC8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v14 = *a1;
  v4 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B781E650;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1B721FF04();
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  *(v5 + 32) = sub_1B78010E8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  *(v9 + 32) = v14;
  *(v9 + 40) = v2;
  *(v5 + 40) = sub_1B78010E8();
  *(v5 + 48) = a2;
  v10 = a2;
  v11 = sub_1B7800C18();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v12;
}

id _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with8sharedId6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_10Foundation4UUIDVAA0E6SourceOtFZ_0(__int128 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v15 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7808C50;
  v8 = sub_1B77FF9B8();
  *(v7 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v7 + 64) = sub_1B73B4AF0(&qword_1EB9905B0, &qword_1EB9905A8);
  v9 = MEMORY[0x1E69E7290];
  *(v7 + 32) = v8;
  v10 = MEMORY[0x1E69E72E8];
  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  *(v7 + 72) = v5;
  *(v6 + 32) = sub_1B78010E8();
  v11 = sub_1B7800C18();

  v12 = [objc_opt_self() andPredicateWithSubpredicates_];

  v16 = v15;
  v17 = v3;
  v18 = v4;
  v13 = sub_1B74F3DC8(&v16, v12);

  return v13;
}

id sub_1B74F414C(uint64_t a1, uint64_t a2, __int128 *a3, unsigned __int8 *a4)
{
  v6 = *(a3 + 2);
  v7 = *(a3 + 3);
  v8 = *a4;
  v18 = *a3;
  v19 = v6;
  v20 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1B721FF04();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  *(v9 + 32) = sub_1B78010E8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7290];
  *(v11 + 16) = xmmword_1B7807CD0;
  v13 = MEMORY[0x1E69E72E8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v8;
  *(v9 + 40) = sub_1B78010E8();
  v14 = sub_1B7800C18();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  v16 = sub_1B74F3DC8(&v18, v15);
  return v16;
}

id _s10FinanceKit26ManagedInternalTransactionC012predicateForE04with6amount8currency12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_So9NSDecimalaSS10Foundation04DateL0VAA0E6SourceOtFZ_0(__int128 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, unsigned __int8 *a8)
{
  v64 = a7;
  v54 = a6;
  v49 = a5;
  LODWORD(v53) = a4;
  v52 = a3;
  v51 = a2;
  v57 = sub_1B77FF988();
  v65 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v12 = *(a1 + 2);
  v59 = *(a1 + 3);
  v60 = v12;
  v58 = *a8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v13 = swift_allocObject();
  v63 = xmmword_1B780C060;
  *(v13 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v14 = swift_allocObject();
  v66 = xmmword_1B7807CD0;
  *(v14 + 16) = xmmword_1B7807CD0;
  v15 = sub_1B7801608();
  v16 = sub_1B7205540(0, &qword_1EB990D60);
  *(v14 + 56) = v16;
  v17 = sub_1B73B4AF0(&qword_1EB9964C0, &qword_1EB990D60);
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  *(v13 + 32) = sub_1B78010E8();
  v18 = swift_allocObject();
  *(v18 + 16) = v66;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1B721FF04();
  *(v18 + 64) = v19;
  *(v18 + 32) = a5;
  v20 = v54;
  *(v18 + 40) = v54;

  *(v13 + 40) = sub_1B78010E8();
  v21 = sub_1B7800C18();

  v62 = objc_opt_self();
  v50 = [v62 andPredicateWithSubpredicates_];

  v22 = swift_allocObject();
  *(v22 + 16) = v63;
  v23 = swift_allocObject();
  *(v23 + 16) = v66;
  v24 = sub_1B7801608();
  *(v23 + 56) = v16;
  *(v23 + 64) = v17;
  *(v23 + 32) = v24;
  *(v22 + 32) = sub_1B78010E8();
  v25 = swift_allocObject();
  *(v25 + 16) = v66;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = v19;
  *(v25 + 32) = v49;
  *(v25 + 40) = v20;

  *(v22 + 40) = sub_1B78010E8();
  v26 = sub_1B7800C18();

  v27 = v62;
  v28 = [v62 andPredicateWithSubpredicates_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B782D420;
  v30 = swift_allocObject();
  *(v30 + 16) = v63;
  v31 = v50;
  *(v30 + 32) = v50;
  *(v30 + 40) = v28;
  *&v63 = v31;
  v55 = v28;
  v32 = sub_1B7800C18();

  v33 = [v27 orPredicateWithSubpredicates_];

  *(v29 + 32) = v33;
  v53 = "blicAccountObject.id == %@";
  v34 = swift_allocObject();
  *(v34 + 16) = v66;
  v35 = v56;
  sub_1B77FEA48();
  v36 = sub_1B77FF8B8();
  v37 = *(v65 + 8);
  v65 += 8;
  v54 = v37;
  v38 = v57;
  v37(v35, v57);
  v39 = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v34 + 56) = v39;
  v40 = sub_1B73B4AF0(&qword_1EDAF93C0, &qword_1EDAF93C8);
  *(v34 + 64) = v40;
  *(v34 + 32) = v36;
  *(v29 + 40) = sub_1B78010E8();
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  sub_1B77FEA18();
  v42 = sub_1B77FF8B8();
  v54(v35, v38);
  *(v41 + 56) = v39;
  *(v41 + 64) = v40;
  *(v41 + 32) = v42;
  *(v29 + 48) = sub_1B78010E8();
  v43 = swift_allocObject();
  *(v43 + 16) = v66;
  v44 = MEMORY[0x1E69E72E8];
  *(v43 + 56) = MEMORY[0x1E69E7290];
  *(v43 + 64) = v44;
  *(v43 + 32) = v58;
  *(v29 + 56) = sub_1B78010E8();
  v45 = sub_1B7800C18();

  v46 = [v62 andPredicateWithSubpredicates_];

  v67 = v61;
  v68 = v60;
  v69 = v59;
  v47 = sub_1B74F3DC8(&v67, v46);

  return v47;
}

id sub_1B74F4A1C(uint64_t a1, uint64_t a2, __int128 *a3, unsigned __int8 *a4)
{
  v6 = *(a3 + 2);
  v7 = *(a3 + 3);
  v8 = *a4;
  v18 = *a3;
  v19 = v6;
  v20 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1B721FF04();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  *(v9 + 32) = sub_1B78010E8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7290];
  *(v11 + 16) = xmmword_1B7807CD0;
  v13 = MEMORY[0x1E69E72E8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v8;
  *(v9 + 40) = sub_1B78010E8();
  v14 = sub_1B7800C18();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  v16 = sub_1B74F3DC8(&v18, v15);
  return v16;
}

char *_s10FinanceKit26ManagedInternalTransactionC21insightObjectKeyPathsSaySSGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B78100C0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001B7872C90;
  strcpy((inited + 48), "insightsObject");
  *(inited + 63) = -18;
  *(inited + 64) = 0xD000000000000024;
  *(inited + 72) = 0x80000001B7873800;
  *(inited + 80) = 0xD000000000000033;
  *(inited + 88) = 0x80000001B7882C40;
  *(inited + 96) = 0xD000000000000025;
  *(inited + 104) = 0x80000001B7873DC0;
  *(inited + 112) = 0xD000000000000020;
  *(inited + 120) = 0x80000001B7873830;
  *(inited + 128) = 0xD00000000000002FLL;
  *(inited + 136) = 0x80000001B7882C80;
  *(inited + 144) = 0xD00000000000002CLL;
  *(inited + 152) = 0x80000001B7882CB0;
  result = sub_1B723E180(1, 9, 1, inited);
  *(result + 2) = 9;
  *(result + 20) = 0xD000000000000023;
  *(result + 21) = 0x80000001B787D2A0;
  return result;
}

void sub_1B74F4D80(__int128 *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v17 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  type metadata accessor for ManagedInternalTransaction();
  v9 = [swift_getObjCClassFromMetadata() fetchRequest];
  v18 = v17;
  v19 = v7;
  v20 = v8;
  v10 = sub_1B77FEA78();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v21 = 3;
  v11 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(&v18, 0, v6, &v21);
  sub_1B7205418(v6, &qword_1EB992798);
  [v9 setPredicate_];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  *&v18 = 0;
  v13 = [a2 executeRequest:v12 error:&v18];
  if (v13)
  {
    v14 = v13;
    v15 = v18;
  }

  else
  {
    v16 = v18;
    sub_1B77FF318();

    swift_willThrow();
  }
}

id _s10FinanceKit26ManagedInternalTransactionC31predicateForVisibleTransactions21withExternalAccountIDSo11NSPredicateCSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  *(v4 + 32) = sub_1B78010E8();
  *(v4 + 40) = sub_1B78010E8();
  v6 = sub_1B7800C18();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

id sub_1B74F5104()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996538);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v22[-v6];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v25 = 1;
  v26 = type metadata accessor for ManagedInternalTransaction();
  sub_1B77FFD38();
  v23 = 2;
  v24 = &unk_1F2F44CB0;
  sub_1B77FFD38();
  sub_1B7205540(0, &qword_1EDAFAF30);
  v10 = *(v1 + 16);
  v10(v4, v9, v0);
  v11 = sub_1B78010F8();
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  v10(v4, v7, v0);
  v13 = sub_1B78010F8();
  if (!v13)
  {

LABEL_5:
    v19 = [objc_opt_self() predicateWithValue_];
    goto LABEL_6;
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B780C060;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = v12;
  v17 = v14;
  v18 = sub_1B7800C18();

  v19 = [objc_opt_self() orPredicateWithSubpredicates_];

LABEL_6:
  v20 = *(v1 + 8);
  v20(v7, v0);
  v20(v9, v0);
  return v19;
}

id _s10FinanceKit26ManagedInternalTransactionC33predicateForShareableTransactionsSo11NSPredicateCyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996538);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - v5;
  v54 = type metadata accessor for ManagedInternalTransaction();
  sub_1B77FFD38();
  sub_1B7205540(0, &qword_1EDAFAF30);
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_1B78010F8();
  if (!v7)
  {
    v26 = [objc_opt_self() predicateWithValue_];
    (*(v1 + 8))(v6, v0);
    return v26;
  }

  v41 = v7;
  v42 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  v43 = xmmword_1B7807CD0;
  *(v8 + 16) = xmmword_1B7807CD0;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v8 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8);
  *(v8 + 64) = sub_1B73B4AF0(&qword_1EDAF6448, &qword_1EDAFC4C8);
  *(v8 + 32) = v9;
  v10 = sub_1B78010E8();
  v11 = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B780C060;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  v40 = v10;
  v39 = v11;
  v13 = sub_1B7800C18();

  v38 = objc_opt_self();
  v37 = [v38 orPredicateWithSubpredicates_];

  v14 = swift_allocObject();
  *(v14 + 16) = v43;
  v15 = MEMORY[0x1E69E7290];
  v16 = MEMORY[0x1E69E72E8];
  *(v14 + 56) = MEMORY[0x1E69E7290];
  *(v14 + 64) = v16;
  *(v14 + 32) = 4;
  v17 = sub_1B78010E8();
  v18 = swift_allocObject();
  *(v18 + 16) = v43;
  *(v18 + 56) = v15;
  *(v18 + 64) = v16;
  *(v18 + 32) = 2;
  v19 = sub_1B78010E8();
  v20 = sub_1B78010E8();
  v50 = &type metadata for UncheckedSendableUserDefaults;
  v51 = &protocol witness table for UncheckedSendableUserDefaults;
  v21 = swift_allocObject();
  v49 = v21;
  if (qword_1EDAF7308 != -1)
  {
    *&v43 = v21;
    swift_once();
    v21 = v43;
  }

  sub_1B7201D1C(qword_1EDAF7310, v21 + 16);
  v46[0] = 0xD00000000000001DLL;
  v46[1] = 0x80000001B78753B0;
  v47 = 0;
  v48 = 1;
  v52 = &type metadata for DeviceInfo;
  v53 = &protocol witness table for DeviceInfo;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B78370C0;
  sub_1B7205588(v46, v44, &qword_1EB98F140);
  if (v44[18] != 1 || ((*(v45 + 16))() & 1) != 0)
  {
    v23 = sub_1B71FBF7C();
    v24 = v41;
    if (v23 == 2)
    {
      v25 = v44[16];
    }

    else
    {
      v25 = v23;
    }

    sub_1B7205418(v44, &qword_1EB98F140);
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_13:
    v28 = v24;
    goto LABEL_14;
  }

  v29 = v44[17];
  sub_1B7205418(v44, &qword_1EB98F140);
  v24 = v41;
  if (v29 != 1)
  {
    goto LABEL_13;
  }

LABEL_11:
  v28 = [objc_opt_self() predicateWithValue_];
LABEL_14:
  *(v22 + 32) = v28;
  *(v22 + 40) = v20;
  v30 = v20;
  *(v22 + 48) = sub_1B74F5104();
  *(v22 + 56) = v17;
  v31 = v37;
  *(v22 + 64) = v19;
  *(v22 + 72) = v31;
  v32 = v17;
  v33 = v19;
  v34 = v31;
  v35 = sub_1B7800C18();

  v36 = [v38 andPredicateWithSubpredicates_];

  sub_1B7205418(v46, &qword_1EB98F140);
  (*(v1 + 8))(v6, v42);
  return v36;
}

uint64_t _s10FinanceKit26ManagedInternalTransactionC9predicate3forSo11NSPredicateCSi_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996538);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  if (a1 < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 >= 0x8000)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  LOWORD(v12[-2]) = a1;
  v12[1] = type metadata accessor for ManagedInternalTransaction();
  sub_1B77FFD38();
  sub_1B7205540(0, &qword_1EDAFAF30);
  (*(v3 + 16))(v6, v9, v2);
  v10 = sub_1B78010F8();
  if (!v10)
  {
    v10 = [objc_opt_self() predicateWithValue_];
  }

  v11 = v10;
  (*(v3 + 8))(v9, v2);
  return v11;
}

unint64_t sub_1B74F5CCC()
{
  result = qword_1EB996568;
  if (!qword_1EB996568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996560);
    sub_1B74F608C(&qword_1EB996570, &qword_1EB996550);
    sub_1B74F5D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996568);
  }

  return result;
}

unint64_t sub_1B74F5D70()
{
  result = qword_1EB996580;
  if (!qword_1EB996580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996580);
  }

  return result;
}

unint64_t sub_1B74F5E24()
{
  result = qword_1EB9965E8;
  if (!qword_1EB9965E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9965B0);
    sub_1B74F5EC8();
    sub_1B74F6008(&qword_1EB996608, &qword_1EB9965A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9965E8);
  }

  return result;
}

unint64_t sub_1B74F5EC8()
{
  result = qword_1EB9965F0;
  if (!qword_1EB9965F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9965A8);
    sub_1B74F5F9C(&qword_1EB9965F8);
    sub_1B74F5F9C(&qword_1EB996600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9965F0);
  }

  return result;
}

uint64_t sub_1B74F5F9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992D20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B74F6008(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1B74F608C(&qword_1EB996610, &qword_1EB996598);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B74F608C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1B728216C(&qword_1EB996578, &qword_1EB996548);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B74F6124(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1B74F5CCC();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74F61A8()
{
  result = qword_1EB996640;
  if (!qword_1EB996640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996628);
    sub_1B74F6008(&qword_1EB996608, &qword_1EB9965A0);
    sub_1B74F5D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996640);
  }

  return result;
}

unint64_t sub_1B74F6258()
{
  result = qword_1EB996660;
  if (!qword_1EB996660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996658);
    sub_1B74F6008(&qword_1EB996668, &qword_1EB996650);
    sub_1B72D7CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996660);
  }

  return result;
}

id ManagedOrderWebServiceLogEntry.__allocating_init(level:message:date:context:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = [objc_allocWithZone(v6) initWithContext_];
  [v10 setLevelValue_];
  v11 = sub_1B7800838();

  [v10 setMessage_];

  v12 = sub_1B77FF8B8();
  [v10 setDate_];

  v13 = sub_1B77FF988();
  (*(*(v13 - 8) + 8))(a4, v13);
  return v10;
}

uint64_t ManagedOrderWebServiceLogEntry.Level.description.getter(char a1)
{
  if (a1)
  {
    return 0x524F525245;
  }

  else
  {
    return 1330007625;
  }
}

FinanceKit::ManagedOrderWebServiceLogEntry::Level_optional __swiftcall ManagedOrderWebServiceLogEntry.Level.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = FinanceKit_ManagedOrderWebServiceLogEntry_Level_error;
  }

  else
  {
    v1.value = FinanceKit_ManagedOrderWebServiceLogEntry_Level_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B74F6460()
{
  if (*v0)
  {
    return 0x524F525245;
  }

  else
  {
    return 1330007625;
  }
}

uint64_t ManagedOrderWebServiceLogEntry.level.getter()
{
  result = [v0 levelValue];
  if (result)
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      result = sub_1B7801C88();
      __break(1u);
    }
  }

  return result;
}

id sub_1B74F651C@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  result = [*a1 levelValue];
  if (result == 1)
  {
    v4 = 1;
LABEL_4:
    *a2 = v4;
    return result;
  }

  v4 = result;
  if (!result)
  {
    goto LABEL_4;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void sub_1B74F65BC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 message];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B74F6614(id *a1)
{
  v1 = [*a1 date];
  sub_1B77FF928();
}

Swift::String __swiftcall ManagedOrderWebServiceLogEntry.formatted()()
{
  v1 = v0;
  v2 = sub_1B77FF818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 date];
  sub_1B77FF928();

  MEMORY[0x1B8CA2B90]();
  sub_1B74F6928();
  sub_1B77FF968();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v22 = v21[0];
  v23 = v21[1];
  MEMORY[0x1B8CA4D30](32, 0xE100000000000000);
  v11 = [v1 levelValue];
  if (v11)
  {
    if (v11 != 1)
    {
      v18 = sub_1B7801C88();
      __break(1u);
      goto LABEL_7;
    }

    v12 = 0xE500000000000000;
    v13 = 0x524F525245;
  }

  else
  {
    v12 = 0xE400000000000000;
    v13 = 1330007625;
  }

  MEMORY[0x1B8CA4D30](v13, v12);

  MEMORY[0x1B8CA4D30](32, 0xE100000000000000);
  v14 = [v1 message];
  v15 = sub_1B7800868();
  v17 = v16;

  MEMORY[0x1B8CA4D30](v15, v17);

  v18 = v22;
  v19 = v23;
LABEL_7:
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

unint64_t sub_1B74F6928()
{
  result = qword_1EDAF65F8;
  if (!qword_1EDAF65F8)
  {
    sub_1B77FF818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF65F8);
  }

  return result;
}

id ManagedOrderWebServiceLogEntry.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderWebServiceLogEntry.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderWebServiceLogEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderWebServiceLogEntry.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit30ManagedOrderWebServiceLogEntry;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B74F6BE4(SEL *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.super_class = swift_getObjectType();
  v9[0] = 0;
  v8.receiver = v1;
  v3 = objc_msgSendSuper2(&v8, *a1, v9);
  v4 = v9[0];
  if (v3)
  {
    swift_getKeyPath();
    v5 = v4;
    sub_1B7451E8C(v1);
  }

  else
  {
    v7 = v9[0];
    sub_1B77FF318();

    return swift_willThrow();
  }
}

unint64_t sub_1B74F6CC8()
{
  result = qword_1EB996678;
  if (!qword_1EB996678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996678);
  }

  return result;
}

uint64_t sub_1B74F6D74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void FinanceStore.checkDataAvailability(for:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = &_s10FinanceKit11FeatureFlagVN_0;
      v5 = sub_1B721D3DC();
      v3[0] = 7;
      v1 = sub_1B77FFDC8();
      __swift_destroy_boxed_opaque_existential_1(v3);
      if (v1)
      {
        return;
      }
    }

    else
    {
      static DeviceInfo.deviceType.getter(v3);
      if (!v3[0])
      {
        return;
      }
    }

    sub_1B7201CA4();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }
}

uint64_t FinanceStore.isDataAvailable(for:deviceInfo:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5[3] = &_s10FinanceKit11FeatureFlagVN_0;
      v5[4] = sub_1B721D3DC();
      LOBYTE(v5[0]) = 7;
      v3 = sub_1B77FFDC8();
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      (*(a3 + 8))(v5, a2, a3);
      v3 = LOBYTE(v5[0]) == 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t FinanceStore.checkDataRestriction(for:)(char *a1)
{
  v1 = *a1;
  v4 = *a1;
  result = FinanceStore.isDataRestricted(for:)(&v4);
  if (result)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v3 = v1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B74F6FD0(uint64_t a1)
{
  v2 = sub_1B74F8008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74F700C(uint64_t a1)
{
  v2 = sub_1B74F8008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74F7048()
{
  v1 = 0x646572436B6E6162;
  if (*v0 != 1)
  {
    v1 = 0x6169636E616E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726564726FLL;
  }
}

uint64_t sub_1B74F70B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74F84D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B74F70E0(uint64_t a1)
{
  v2 = sub_1B74F7F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74F711C(uint64_t a1)
{
  v2 = sub_1B74F7F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74F7158(uint64_t a1)
{
  v2 = sub_1B74F7FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74F7194(uint64_t a1)
{
  v2 = sub_1B74F7FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74F71D0(uint64_t a1)
{
  v2 = sub_1B74F805C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74F720C(uint64_t a1)
{
  v2 = sub_1B74F805C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinanceStore.DataType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t FinanceStore.DataType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996680);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996688);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996690);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996698);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74F7F60();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B74F8008();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B74F7FB4();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B74F805C();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t FinanceStore.DataType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9966C0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9966C8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9966D0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9966D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B74F7F60();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for FinanceStore.DataType;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B74F8008();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B74F7FB4();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B74F805C();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t FinanceStore.DataType.XPC.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B74F7BDC()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t sub_1B74F7C50()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t *sub_1B74F7C94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static FinanceStore.isDataAvailable(_:)(_BYTE *a1)
{
  v1 = *a1;
  if (qword_1EDAFB7C0 == -1)
  {
    if (*a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 1;
    return v2 & 1;
  }

  swift_once();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v1 == 1)
  {
    v5 = &_s10FinanceKit11FeatureFlagVN_0;
    v6 = sub_1B721D3DC();
    v4[0] = 7;
    v2 = sub_1B77FFDC8();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    static DeviceInfo.deviceType.getter(v4);
    v2 = v4[0] == 0;
  }

  return v2 & 1;
}

uint64_t FinanceStore.isDataRestricted(for:)(_BYTE *a1)
{
  v2 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = *a1;
  swift_storeEnumTagMultiPayload();
  v5 = sub_1B73B62AC(v4);
  sub_1B72A820C(v4);
  return v5 & 1;
}

unint64_t sub_1B74F7F60()
{
  result = qword_1EB9966A0;
  if (!qword_1EB9966A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966A0);
  }

  return result;
}

unint64_t sub_1B74F7FB4()
{
  result = qword_1EB9966A8;
  if (!qword_1EB9966A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966A8);
  }

  return result;
}

unint64_t sub_1B74F8008()
{
  result = qword_1EB9966B0;
  if (!qword_1EB9966B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966B0);
  }

  return result;
}

unint64_t sub_1B74F805C()
{
  result = qword_1EB9966B8;
  if (!qword_1EB9966B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966B8);
  }

  return result;
}

unint64_t sub_1B74F80B4()
{
  result = qword_1EB9966E0;
  if (!qword_1EB9966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966E0);
  }

  return result;
}

unint64_t sub_1B74F810C()
{
  result = qword_1EB9966E8;
  if (!qword_1EB9966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966E8);
  }

  return result;
}

unint64_t sub_1B74F81C4()
{
  result = qword_1EB9966F0;
  if (!qword_1EB9966F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966F0);
  }

  return result;
}

unint64_t sub_1B74F821C()
{
  result = qword_1EB9966F8;
  if (!qword_1EB9966F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9966F8);
  }

  return result;
}

unint64_t sub_1B74F8274()
{
  result = qword_1EB996700;
  if (!qword_1EB996700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996700);
  }

  return result;
}

unint64_t sub_1B74F82CC()
{
  result = qword_1EB996708;
  if (!qword_1EB996708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996708);
  }

  return result;
}

unint64_t sub_1B74F8324()
{
  result = qword_1EB996710;
  if (!qword_1EB996710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996710);
  }

  return result;
}

unint64_t sub_1B74F837C()
{
  result = qword_1EB996718;
  if (!qword_1EB996718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996718);
  }

  return result;
}

unint64_t sub_1B74F83D4()
{
  result = qword_1EB996720;
  if (!qword_1EB996720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996720);
  }

  return result;
}

unint64_t sub_1B74F842C()
{
  result = qword_1EB996728;
  if (!qword_1EB996728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996728);
  }

  return result;
}

unint64_t sub_1B74F8484()
{
  result = qword_1EB996730;
  if (!qword_1EB996730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996730);
  }

  return result;
}

uint64_t sub_1B74F84D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726564726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646572436B6E6162 && a2 == 0xEF736C6169746E65 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169636E616E6966 && a2 == 0xED0000617461446CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t ManagedInstitution.reconsentType.getter()
{
  result = [v0 reconsentTypeValue];
  if (result)
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      sub_1B7801A78();

      [v0 reconsentTypeValue];
      v2 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v2);

      result = sub_1B7801C88();
      __break(1u);
    }
  }

  return result;
}

id ManagedInstitution.privacyLabels.getter@<X0>(_WORD *a1@<X8>)
{
  result = [v1 privacyLabelsValue];
  *a1 = result;
  return result;
}

uint64_t sub_1B74F8798()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v0 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v0);
  return sub_1B7801468();
}

uint64_t Institution.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = &v77[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v77[-v10];
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  MEMORY[0x1EEE9AC00](refreshed);
  v93 = &v77[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a1 piiRedactionConfiguration];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 countryCodes];
    v91 = sub_1B7800FA8();
  }

  else
  {
    v91 = 0;
  }

  v17 = [a1 id];
  v18 = sub_1B7800868();
  v89 = v19;
  v90 = v18;

  v20 = [a1 name];
  v21 = sub_1B7800868();
  v87 = v22;
  v88 = v21;

  v86 = ManagedInstitution.reconsentType.getter();
  v85 = [a1 authTypeObjects];
  v23 = [a1 firstTransactionsRequestWindow];
  v24 = v23;
  if (v23)
  {
    [v23 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v81 = v24;
  [a1 maxAgeTransactionsFirstRequest];
  v28 = v27;
  [a1 maxAgeTransactionsRefreshRequest];
  v30 = v29;
  v31 = [a1 extensionsBundleIdentifiers];
  if (v31)
  {
    v32 = v31;
    v82 = sub_1B7800C38();
  }

  else
  {
    v82 = 0;
  }

  v80 = [a1 maximumNumberOfBackgroundRefreshes];
  v79 = [a1 numberOfRemainingBackgroundRefreshes];
  v33 = [a1 backgroundRefreshRetryAfterDate];
  if (v33)
  {
    v34 = v33;
    sub_1B77FF928();

    v35 = sub_1B77FF988();
    (*(*(v35 - 8) + 56))(v11, 0, 1, v35);
  }

  else
  {
    v36 = sub_1B77FF988();
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
  }

  v37 = [a1 lastBackgroundRefreshDate];
  v83 = v11;
  if (v37)
  {
    v38 = v37;
    sub_1B77FF928();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = sub_1B77FF988();
  v41 = *(*(v40 - 8) + 56);
  v41(v9, v39, 1, v40);
  v42 = [a1 backgroundRefreshConfirmationWindow];
  v43 = v42;
  v44 = 0;
  v45 = 0;
  if (v42)
  {
    [v42 doubleValue];
    v45 = v46;
  }

  v84 = v9;
  v47 = [a1 backgroundRefreshConfirmationExpiryWindow];
  v48 = v47;
  if (v47)
  {
    [v47 doubleValue];
    v44 = v49;
  }

  v78 = v48 == 0;
  v50 = v43 == 0;
  v51 = *(refreshed + 24);
  v52 = refreshed;
  v53 = v93;
  v41(&v93[v51], 1, 1, v40);
  v54 = v52[7];
  v41(v53 + v54, 1, 1, v40);
  v55 = v53 + v52[8];
  v56 = v53 + v52[9];
  v57 = v79;
  *v53 = v80;
  v53[1] = v57;
  sub_1B7213740(v83, v53 + v51, &qword_1EB98EBD0);
  sub_1B7213740(v84, v53 + v54, &qword_1EB98EBD0);
  *v55 = v45;
  v55[8] = v50;
  *v56 = v44;
  v56[8] = v78;
  LODWORD(v84) = [a1 multipleConsentsEnabled];
  LODWORD(v83) = [a1 problemReportingEnabled];
  v58 = [a1 termsAndConditionsObject];
  v59 = v92;
  if (v58)
  {
    BankConnectTermsAndConditions.init(from:)(v58, v92);
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  LODWORD(v92) = v81 == 0;
  v61 = type metadata accessor for BankConnectTermsAndConditions();
  v62 = *(*(v61 - 8) + 56);
  v62(v59, v60, 1, v61);
  LODWORD(v81) = [a1 financialLabEnabled];
  v80 = [a1 timestampSuitableForUserDisplay];
  v79 = [a1 privacyLabelsValue];
  v78 = [a1 consentSyncingEnabled];
  [a1 consentSyncingOutdatedTokenWaitTimeout];
  v64 = v63;
  v65 = [a1 balanceWidgetEnabled];
  v66 = [a1 personalizedInsightsEnabled];
  v67 = [a1 supportsTransactions];

  v68 = type metadata accessor for Institution(0);
  v69 = v68[15];
  v62((a2 + v69), 1, 1, v61);
  v70 = v68[18];
  *(a2 + v70) = 0;
  v71 = v89;
  *a2 = v90;
  *(a2 + 8) = v71;
  v72 = v87;
  *(a2 + 16) = v88;
  *(a2 + 24) = v72;
  LOWORD(v72) = v85;
  *(a2 + 32) = v86;
  *(a2 + 34) = v72;
  *(a2 + 40) = v26;
  *(a2 + 48) = v92;
  *(a2 + 56) = v28;
  *(a2 + 64) = v30;
  *(a2 + 72) = v82;
  sub_1B721D430(v93, a2 + v68[12]);
  *(a2 + v68[13]) = v84;
  *(a2 + v68[14]) = v83;
  sub_1B7213740(v59, a2 + v69, &qword_1EB98FC40);
  v73 = v80;
  *(a2 + v68[16]) = v81;
  *(a2 + v68[17]) = v73;

  *(a2 + v70) = v91;
  v75 = v78;
  *(a2 + v68[19]) = v79;
  v76 = a2 + v68[20];
  *v76 = v75;
  *(v76 + 8) = v64;
  *(a2 + v68[21]) = v65;
  *(a2 + v68[22]) = v66;
  *(a2 + v68[23]) = v67;
  return result;
}

uint64_t ManagedInstitution.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = sub_1B74FA170(a1, a2);

  return v3;
}

{
  v3 = sub_1B74FAC9C(a1, a2);

  return v3;
}

void sub_1B74F92E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 extensionsBundleIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800C38();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1B74F9348(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_1B7800C18();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setExtensionsBundleIdentifiers_];
}

void sub_1B74F93B8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedInstitution.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInstitution.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInstitution.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedInstitution.supportedAuthTypes.getter@<X0>(_WORD *a1@<X8>)
{
  result = [v1 authTypeObjects];
  *a1 = result;
  return result;
}

id (*ManagedInstitution.reconsentType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedInstitution.reconsentType.getter();
  return sub_1B74F9738;
}

id (*ManagedInstitution.supportedAuthTypes.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 authTypeObjects];
  return sub_1B74F97A4;
}

id ManagedInstitution.supportedNotificationEventTypes.getter@<X0>(_DWORD *a1@<X8>)
{
  result = [v1 supportedNotificationEventTypesValue];
  *a1 = result;
  return result;
}

id (*ManagedInstitution.supportedNotificationEventTypes.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 supportedNotificationEventTypesValue];
  return sub_1B74F9844;
}

id (*ManagedInstitution.privacyLabels.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 privacyLabelsValue];
  return sub_1B74F98B0;
}

void sub_1B74F98C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t (*a7)(uint64_t, uint64_t, void *))
{
  v24[1] = *MEMORY[0x1E69E9840];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v24 - v15;
  type metadata accessor for ManagedInstitution();
  v17 = a7(a1, a2, a3);
  if (!v7)
  {
    v18 = v17;
    if (v17)
    {
      sub_1B7280900(a5, v16);
      v19 = sub_1B77FF988();
      v20 = *(v19 - 8);
      v21 = 0;
      if ((*(v20 + 48))(v16, 1, v19) != 1)
      {
        v21 = sub_1B77FF8B8();
        (*(v20 + 8))(v16, v19);
      }

      [v18 setBackgroundRefreshRetryAfterDate_];
    }

    [v18 setNumberOfRemainingBackgroundRefreshes_];
    v24[0] = 0;
    if ([a3 save_])
    {
      v22 = v24[0];
    }

    else
    {
      v23 = v24[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(void *a1, uint64_t a2, void *a3)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
  MEMORY[0x1EEE9AC00](refreshed);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B7800838();
  [a1 setName_];

  [a1 setReconsentTypeValue_];
  [a1 setAuthTypeObjects_];
  v14 = 0;
  if ((*(a2 + 48) & 1) == 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [a1 setFirstTransactionsRequestWindow_];

  [a1 setMaxAgeTransactionsFirstRequest_];
  [a1 setMaxAgeTransactionsRefreshRequest_];
  if (*(a2 + 72))
  {
    v15 = sub_1B7800C18();
  }

  else
  {
    v15 = 0;
  }

  [a1 setExtensionsBundleIdentifiers_];

  v16 = type metadata accessor for Institution(0);
  sub_1B74FB448(a2 + v16[12], v12);
  [a1 setMaximumNumberOfBackgroundRefreshes_];
  [a1 setNumberOfRemainingBackgroundRefreshes_];
  v42 = refreshed;
  v17 = v12;
  sub_1B7280900(v12 + *(refreshed + 24), v9);
  v18 = sub_1B77FF988();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v9, 1, v18) != 1)
  {
    v21 = sub_1B77FF8B8();
    (*(v19 + 8))(v9, v18);
  }

  [a1 setBackgroundRefreshRetryAfterDate_];

  v22 = v17;
  v23 = v17 + *(v42 + 28);
  v24 = v40;
  sub_1B7280900(v23, v40);
  if (v20(v24, 1, v18) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1B77FF8B8();
    (*(v19 + 8))(v24, v18);
  }

  v26 = v41;
  [a1 setLastBackgroundRefreshDate_];

  v27 = v42;
  v28 = v22 + *(v42 + 32);
  if (*(v28 + 8))
  {
    v29 = 0;
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [a1 setBackgroundRefreshConfirmationWindow_];

  v30 = v22 + *(v27 + 36);
  if (*(v30 + 8))
  {
    v31 = 0;
  }

  else
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [a1 setBackgroundRefreshConfirmationExpiryWindow_];

  [a1 setMultipleConsentsEnabled_];
  [a1 setProblemReportingEnabled_];
  [a1 setFinancialLabEnabled_];
  [a1 setTimestampSuitableForUserDisplay_];
  v32 = (a2 + v16[20]);
  [a1 setConsentSyncingEnabled_];
  [a1 setConsentSyncingOutdatedTokenWaitTimeout_];
  [a1 setBalanceWidgetEnabled_];
  [a1 setPersonalizedInsightsEnabled_];
  [a1 setSupportsTransactions_];
  v33 = [a1 piiRedactionConfiguration];
  if (v33)
  {
    v34 = v33;
    [v26 deleteObject_];
  }

  if (*(a2 + v16[18]))
  {
    v35 = objc_allocWithZone(type metadata accessor for ManagedPIIRedactionConfiguration());

    v36 = [v35 initWithContext_];
    v37 = sub_1B7800F78();

    [v36 setCountryCodes_];

    [a1 setPiiRedactionConfiguration_];
  }

  [a1 setPrivacyLabelsValue_];
  return sub_1B74FB4AC(v22, type metadata accessor for Institution.BackgroundRefreshConfiguration);
}

uint64_t sub_1B74FA170(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v42 - v11;
  v12 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFB08();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FFC88();
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1B77FF988();
  v21 = *(v48 - 8);
  v22 = MEMORY[0x1EEE9AC00](v48);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v42 - v25;
  v26 = objc_allocWithZone(v3);
  v44 = a2;
  v27 = [v26 initWithContext_];
  v45 = a1;
  v28 = v27;
  v29 = sub_1B7800838();
  [v28 setId_];

  sub_1B77FF938();
  (*(v16 + 104))(v18, *MEMORY[0x1E6969830], v15);
  v30 = v46;
  sub_1B77FFB18();
  (*(v16 + 8))(v18, v15);
  v31 = v47;
  v32 = *(v47 + 56);
  v42 = v19;
  v32(v49, 1, 1, v19);
  v33 = sub_1B77FFCF8();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v34 = v30;
  v35 = v48;
  sub_1B77FECD8();
  v36 = v51;
  sub_1B77FFC08();
  result = (*(v21 + 48))(v36, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B74FB4AC(v14, type metadata accessor for Duration);
    (*(v31 + 8))(v34, v42);
    v38 = *(v21 + 8);
    v38(v24, v35);
    v39 = v43;
    (*(v21 + 32))(v43, v36, v35);
    v40 = sub_1B77FF8B8();
    v38(v39, v35);
    [v28 setEarliestUpdateRequestStartDate_];

    v41 = v45;
    _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(v28, v45, v44);

    sub_1B74FB4AC(v41, type metadata accessor for Institution);
    return v28;
  }

  return result;
}