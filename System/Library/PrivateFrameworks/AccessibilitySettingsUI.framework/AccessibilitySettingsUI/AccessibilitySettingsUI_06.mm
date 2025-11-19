uint64_t sub_23D9C2760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
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

void sub_23D9C2824()
{
  sub_23D9C2DA4(319, &qword_27E2F4CA8, MEMORY[0x277CE79A0], MEMORY[0x277CE1300]);
  if (v0 <= 0x3F)
  {
    sub_23D9C2E08(319, &qword_27E2F6FB0, &qword_27E2F6F80, &qword_23D9E2600);
    if (v1 <= 0x3F)
    {
      sub_23D9273D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D9C2914()
{
  result = qword_27E2F6FB8;
  if (!qword_27E2F6FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F98, &qword_23D9E2620);
    sub_23D9C29D0();
    sub_23D9C2AB4(&qword_27E2F4228, MEMORY[0x277CDD8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6FB8);
  }

  return result;
}

unint64_t sub_23D9C29D0()
{
  result = qword_27E2F6FC0;
  if (!qword_27E2F6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F90, &qword_23D9E2608);
    sub_23D91F01C(&qword_27E2F6FC8, &qword_27E2F6FD0, &qword_23D9E26B8);
    sub_23D91F01C(&qword_27E2F6FD8, &qword_27E2F6FE0, &unk_23D9E26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6FC0);
  }

  return result;
}

uint64_t sub_23D9C2AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9C2B10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D9C2BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D9C2CB0()
{
  sub_23D9DAC94();
  if (v0 <= 0x3F)
  {
    sub_23D9C2DA4(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      sub_23D9C2E08(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D9C2DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D9C2E08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23D9DA3E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23D9C2E70()
{
  result = qword_27E2F6FF8;
  if (!qword_27E2F6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6FF8);
  }

  return result;
}

uint64_t sub_23D9C2EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9C2F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9C2FE0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_22Tm()
{
  v1 = (type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = *(v3 + 40);

  v7 = v3 + v1[9];
  v8 = sub_23D9D8C74();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610) + 28));

  return swift_deallocObject();
}

uint64_t sub_23D9C3200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23D9C3238(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23D928310;

  return sub_23D9C1418(a1, a2, v2 + v7);
}

uint64_t sub_23D9C332C(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechVoiceSelectionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D9C3390()
{
  result = qword_27E2F7060;
  if (!qword_27E2F7060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7058, &unk_23D9E2910);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0);
    sub_23D9C2AB4(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7060);
  }

  return result;
}

unint64_t sub_23D9C3480()
{
  result = qword_27E2F7068;
  if (!qword_27E2F7068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7038, &qword_23D9E28F0);
    sub_23D91F01C(&qword_27E2F7070, &qword_27E2F7078, &qword_23D9E2920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7068);
  }

  return result;
}

unint64_t sub_23D9C353C()
{
  result = qword_27E2F7080;
  if (!qword_27E2F7080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7028, &qword_23D9E28E0);
    sub_23D9C35CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7080);
  }

  return result;
}

unint64_t sub_23D9C35CC()
{
  result = qword_27E2F7088;
  if (!qword_27E2F7088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7090, &qword_23D9E2928);
    sub_23D9C2AB4(&qword_27E2F7098, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7088);
  }

  return result;
}

uint64_t sub_23D9C3688@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAB14();
  *a2 = result;
  return result;
}

uint64_t sub_23D9C36B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D9DAB24();
}

uint64_t sub_23D9C36E0()
{
  v1 = *(type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D9C0654(v2);
}

uint64_t sub_23D9C3740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for LiveSpeechSettingsView(0) - 8) + 80);

  return sub_23D9C08DC(a1, a2);
}

unint64_t sub_23D9C37C0()
{
  result = qword_27E2F70C0;
  if (!qword_27E2F70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F70C0);
  }

  return result;
}

uint64_t sub_23D9C381C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_23D9C3854()
{
  result = qword_27E2F70D8;
  if (!qword_27E2F70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F70D8);
  }

  return result;
}

uint64_t sub_23D9C38AC@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(type metadata accessor for LiveSpeechSettingsView(0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_23D9BED90(a1);
}

uint64_t objectdestroy_65Tm()
{
  v1 = (type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = (v0 + v2 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = *(v0 + v2 + v1[8] + 8);

  return swift_deallocObject();
}

void sub_23D9C3A40(_BYTE *a1)
{
  v3 = *(*(type metadata accessor for LiveSpeechSettingsView(0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_23D9BEE58(a1);
}

uint64_t sub_23D9C3B24(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_23D9D90B4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

double sub_23D9C3C10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v22 = a5 + v21[5];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v21[6];
  v24 = sub_23D9D90B4();
  (*(*(v24 - 8) + 32))(a5 + v23, a1, v24);
  v25 = (a5 + v21[7]);
  v27 = v37;
  v26 = v38;
  *v25 = a2;
  v25[1] = v27;
  v25[2] = v26;
  v28 = v21[8];
  v29 = sub_23D9D8C74();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  sub_23D91F2DC(v20, v18, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  sub_23D91F344(v20, &qword_27E2F4460, &qword_23D9DC2A0);
  v30 = a5 + v21[9];
  LOBYTE(v40) = 0;
  sub_23D9DA3A4();
  v31 = *(&v42 + 1);
  *v30 = v42;
  *(v30 + 1) = v31;
  v32 = v21[10];
  v33 = sub_23D9D8DA4();
  (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  sub_23D91F2DC(v13, v11, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(v13, &qword_27E2F5900, &unk_23D9DC640);
  v34 = a5 + v21[11];
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_23D9DA3A4();
  result = *&v42;
  v36 = v43;
  *v34 = v42;
  *(v34 + 2) = v36;
  return result;
}

uint64_t sub_23D9C3F78@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - v5;
  v7 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = v11;
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70F8, &qword_23D9E2AB8);
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v39);
  v16 = &v39 - v15;
  v40 = v1;
  v41 = v12;
  sub_23D9C64E8(v1, v12);
  v42 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = v42;
  v18 = swift_allocObject();
  sub_23D9C6550(v12, v18 + v17);
  v47 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7100, &unk_23D9E2AC0);
  sub_23D9C661C();
  sub_23D9DA404();
  sub_23D9D9B54();
  sub_23D91F01C(&qword_27E2F7120, &qword_27E2F70F8, &qword_23D9E2AB8);
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  v19 = v46;
  v20 = v39;
  v21 = v44;
  sub_23D9D9FA4();
  (*(v45 + 8))(v6, v21);
  (*(v13 + 8))(v16, v20);
  v22 = sub_23D9DA2E4();
  KeyPath = swift_getKeyPath();
  v24 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7128, &qword_23D9E2B08) + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = v40;
  v26 = v40 + *(v8 + 44);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v48) = v27;
  v49 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v29 = v51;
  v30 = v52;
  LOBYTE(KeyPath) = v53;
  v31 = v41;
  sub_23D9C64E8(v25, v41);
  v32 = v42;
  v33 = swift_allocObject();
  sub_23D9C6550(v31, v33 + v32);
  v48 = v29;
  v49 = v30;
  v50 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();
  v34 = v51;
  v35 = v52;
  LOBYTE(v32) = v53;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_23D9C6708;
  *(v36 + 24) = v33;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7130, &unk_23D9E2B18);
  sub_23D9D15E0(v34, v35, v32, sub_23D99275C, v36, 0, 0, (v19 + *(v37 + 36)));
}

uint64_t sub_23D9C4464(uint64_t a1)
{
  sub_23D9C44DC();
  v2 = (a1 + *(type metadata accessor for LiveSpeechPreferredVoiceListItemView() + 36));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C44DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v10 = v9[6];
  sub_23D9D9094();
  v11 = sub_23D9D8DA4();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = v9[10];
  sub_23D91F2DC(v8, v6, &qword_27E2F5900, &unk_23D9DC640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  sub_23D91F344(v8, &qword_27E2F5900, &unk_23D9DC640);
  v13 = sub_23D9D9034();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v1 + v9[11]);
  v17 = *v16;
  v18 = *(v16 + 2);
  v19 = 0xE000000000000000;
  if (v14)
  {
    v19 = v14;
  }

  v22 = v17;
  v23 = v18;
  v21[1] = v15;
  v21[2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C4694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D95DE1C(v8);
  v9 = (v5 + 8);
  if (sub_23D9D9654())
  {
    v14 = sub_23D9D9AB4();
    v15 = 0;
    v16 = 1;
    sub_23D93FCC4();
  }

  else
  {
    v14 = sub_23D9D99B4();
    v15 = 0;
    v16 = 1;
    sub_23D93FC00();
  }

  v10 = sub_23D9DA764();
  (*v9)(v8, v4);
  *a2 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7100, &unk_23D9E2AC0);
  return sub_23D9C47F4(a1, a2 + *(v11 + 44));
}

uint64_t sub_23D9C47F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_23D9D8DA4();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4230, &qword_23D9DBE70);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v44[-v12];
  v52 = sub_23D9C4B20();
  v53 = v14;
  sub_23D91B650();
  v15 = sub_23D9D9F04();
  v46 = v16;
  v47 = v15;
  v45 = v17;
  v48 = v18;
  v19 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v20 = a1 + *(v19 + 24);
  sub_23D9D9094();
  v21 = sub_23D9D8D84();
  v23 = v22;
  (*(v3 + 8))(v6, v49);
  v24 = *(v19 + 32);
  v25 = &v13[*(v8 + 44)];
  v26 = type metadata accessor for AXSUIVoiceLoader();
  v27 = *(v26 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  *v25 = v21;
  v25[1] = v23;
  v29 = v25 + *(v26 + 24);
  *v29 = KeyPath;
  v29[8] = 0;
  v30 = v46;
  *v13 = v47;
  *(v13 + 1) = v30;
  v13[16] = v45 & 1;
  *(v13 + 3) = v48;
  v52 = sub_23D9C4D10();
  v53 = v31;
  v32 = sub_23D9D9F04();
  v34 = v33;
  LOBYTE(v25) = v35;
  v37 = v36;
  v38 = v50;
  sub_23D91F2DC(v13, v50, &qword_27E2F4230, &qword_23D9DBE70);
  v39 = v51;
  sub_23D91F2DC(v38, v51, &qword_27E2F4230, &qword_23D9DBE70);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7140, &qword_23D9E2B70);
  v41 = v39 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = v39 + *(v40 + 64);
  *v42 = v32;
  *(v42 + 8) = v34;
  LOBYTE(v25) = v25 & 1;
  *(v42 + 16) = v25;
  *(v42 + 24) = v37;
  sub_23D91E0AC(v32, v34, v25);

  sub_23D91F344(v13, &qword_27E2F4230, &qword_23D9DBE70);
  sub_23D9274BC(v32, v34, v25);

  return sub_23D91F344(v38, &qword_27E2F4230, &qword_23D9DBE70);
}

uint64_t sub_23D9C4B20()
{
  v1 = sub_23D9D8C74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v11 = v0 + *(v10 + 24);
  result = sub_23D9D9034();
  if (!v13)
  {
    v14 = *(v10 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3B4();
    if ((*(v2 + 48))(v9, 1, v1))
    {
      sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
      return 0;
    }

    else
    {
      (*(v2 + 16))(v5, v9, v1);
      sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v16 = v15;
      (*(v2 + 8))(v5, v1);
      return v16;
    }
  }

  return result;
}

uint64_t sub_23D9C4D10()
{
  v1 = sub_23D9D89C4();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D8C74();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_23D9D8DA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v34 - v19;
  v21 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v22 = v0 + *(v21 + 24);
  sub_23D9D9094();
  sub_23D9D8CC4();
  (*(v13 + 8))(v16, v12);
  v23 = sub_23D9D8954();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    sub_23D91F344(v20, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    v25 = sub_23D9D8934();
    v27 = v26;
    (*(v24 + 8))(v20, v23);
    if (v27)
    {
      return v25;
    }
  }

  v28 = *(v21 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3B4();
  v29 = v37;
  if ((*(v37 + 48))(v11, 1, v4))
  {
    sub_23D91F344(v11, &qword_27E2F4460, &qword_23D9DC2A0);
LABEL_6:
    swift_bridgeObjectRelease_n();
    return 0;
  }

  (*(v29 + 16))(v7, v11, v4);
  sub_23D91F344(v11, &qword_27E2F4460, &qword_23D9DC2A0);
  v31 = v34;
  sub_23D9D8C04();
  (*(v29 + 8))(v7, v4);
  v25 = sub_23D9D8964();
  v33 = v32;
  (*(v35 + 8))(v31, v36);
  if (!v33)
  {
    goto LABEL_6;
  }

  return v25;
}

uint64_t sub_23D9C5154@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v75 = *(v2 - 1);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = v4;
  v77 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D8C74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v79 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v61 - v18;
  v20 = type metadata accessor for AXSUIVoiceSettings();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66D8, &qword_23D9E0D90);
  v73 = *(v24 - 8);
  v74 = v24;
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v72 = &v61 - v26;
  v27 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  v71 = v19;
  sub_23D9DA3D4();
  v28 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v29 = v1;
  sub_23D9DA3B4();
  if ((*(v6 + 48))(v12, 1, v5))
  {
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    v30 = 1;
  }

  else
  {
    v31 = v69;
    (*(v6 + 16))(v69, v12, v5);
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9D8C04();
    (*(v6 + 8))(v31, v5);
    v30 = 0;
  }

  v32 = sub_23D9D89C4();
  v33 = *(*(v32 - 8) + 56);
  v34 = v79;
  v33(v79, v30, 1, v32);
  v35 = (v29 + v2[11]);
  v36 = v35[1];
  v69 = *v35;
  v70 = v29;
  v67 = v35[2];
  v68 = v36;
  v82 = v69;
  v83 = v36;
  v84 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3D4();
  v66 = *v80;
  v65 = *&v80[16];
  v64 = v81;
  v63 = sub_23D9C4B20();
  v62 = v37;
  v82 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();
  v38 = *v80;
  v61 = *&v80[8];
  v39 = &v23[v20[7]];
  LOBYTE(v82) = 0;
  sub_23D9DA3A4();
  v40 = *&v80[8];
  *v39 = v80[0];
  *(v39 + 1) = v40;
  v41 = &v23[v20[8]];
  sub_23D9D9C64();
  v42 = v20[10];
  v33(&v23[v42], 1, 1, v32);
  v43 = &v23[v20[12]];
  v44 = &v23[v20[13]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v23[v20[14]];
  LOBYTE(v82) = 0;
  sub_23D9DA3A4();
  v46 = *&v80[8];
  *v45 = v80[0];
  *(v45 + 1) = v46;
  v47 = v20[15];
  v82 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *&v23[v47] = *v80;
  v48 = v71;
  sub_23D91F2DC(v71, v23, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v34, &v23[v42]);
  *&v23[v20[11]] = 21;
  v49 = &v23[v20[5]];
  *v49 = v38;
  *(v49 + 8) = v61;
  v50 = &v23[v20[9]];
  *v50 = 0;
  *(v50 + 1) = 0;
  sub_23D91F344(v34, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v48, &qword_27E2F4760, &qword_23D9E0740);
  v51 = &v23[v20[6]];
  *v51 = v66;
  v52 = v64;
  *(v51 + 2) = v65;
  *(v51 + 3) = v52;
  v53 = v62;
  *v43 = v63;
  v43[1] = v53;
  v82 = v69;
  v83 = v68;
  v84 = v67;
  sub_23D9DA3D4();
  sub_23D9C67AC();
  v54 = v72;
  sub_23D9DA054();

  sub_23D995014(v23);
  v55 = v77;
  sub_23D9C64E8(v70, v77);
  v56 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v57 = swift_allocObject();
  sub_23D9C6550(v55, v57 + v56);
  v58 = v78;
  (*(v73 + 32))(v78, v54, v74);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7138, &qword_23D9E2B58);
  v60 = (v58 + *(result + 36));
  *v60 = 0;
  v60[1] = 0;
  v60[2] = sub_23D9C6AE8;
  v60[3] = v57;
  return result;
}

uint64_t sub_23D9C5900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_23D9D8DA4();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - v9;
  v10 = sub_23D9D90B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v16 = (v0 + v15[7]);
  v17 = *v16;
  v18 = v16[2];
  v36 = v16[1];
  v37 = v17;
  v43 = v17;
  v44 = v36;
  v45 = v18;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](v41);
  v39 = v0;
  v33 = sub_23D9C3B24(sub_23D9C6B44, v38, v41[0]);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    (*(v11 + 16))(v14, v0 + v15[6], v10);
    v22 = v15[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    sub_23D9DA3B4();
    v23 = v34;
    v24 = v10;
    if ((*(v34 + 48))(v4, 1, v5) == 1)
    {
      sub_23D91F344(v4, &qword_27E2F5900, &unk_23D9DC640);
    }

    else
    {
      v25 = v31;
      (*(v23 + 32))(v31, v4, v5);
      (*(v23 + 16))(v32, v25, v5);
      sub_23D9D90A4();
      (*(v23 + 8))(v25, v5);
    }

    v27 = v36;
    v26 = v37;
    v43 = v37;
    v44 = v36;
    v45 = v18;

    MEMORY[0x23EEF3850](&v42, v35);
    v28 = v42;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v33;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_23D9512EC(v28);
      v28 = result;
      v29 = v33;
      if ((v33 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v29 < v28[2])
        {
          (*(v11 + 24))(v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, v14, v24);
          v41[0] = v26;
          v41[1] = v27;
          v41[2] = v18;
          v40 = v28;
          sub_23D9DA564();
          (*(v11 + 8))(v14, v24);
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_23D9C5D30(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D9D9064();
  v5 = v4;
  v6 = a2 + *(type metadata accessor for LiveSpeechPreferredVoiceListItemView() + 24);
  if (v3 == sub_23D9D9064() && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23D9DAFC4();
  }

  return v9 & 1;
}

uint64_t type metadata accessor for LiveSpeechPreferredVoiceListItemView()
{
  result = qword_27E2F70E8;
  if (!qword_27E2F70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D9C5E44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_23D9D90B4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23D9C603C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23D9D90B4();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_23D9C6220()
{
  sub_23D9C6410(319, &qword_27E2F4D58, MEMORY[0x277CDFA20]);
  if (v0 <= 0x3F)
  {
    sub_23D9C6410(319, &qword_27E2F4658, MEMORY[0x277D70110]);
    if (v1 <= 0x3F)
    {
      sub_23D9D90B4();
      if (v2 <= 0x3F)
      {
        sub_23D9C6464(319, &qword_27E2F4D70, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277CE1200]);
        if (v3 <= 0x3F)
        {
          sub_23D9C6464(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
          if (v4 <= 0x3F)
          {
            sub_23D934350(319, &qword_27E2F46A0);
            if (v5 <= 0x3F)
            {
              sub_23D9C6464(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
              if (v6 <= 0x3F)
              {
                sub_23D934350(319, &qword_27E2F48E0);
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

void sub_23D9C6410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D9C6464(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D9C64E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9C6550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9C65B4()
{
  v1 = *(type metadata accessor for LiveSpeechPreferredVoiceListItemView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D9C4464(v2);
}

unint64_t sub_23D9C661C()
{
  result = qword_27E2F7108;
  if (!qword_27E2F7108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7100, &unk_23D9E2AC0);
    sub_23D91F01C(&qword_27E2F4DA0, &qword_27E2F4DA8, &unk_23D9DD4F0);
    sub_23D91F01C(&qword_27E2F7110, &qword_27E2F7118, &qword_23D9E2AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7108);
  }

  return result;
}

uint64_t sub_23D9C6708@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveSpeechPreferredVoiceListItemView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23D9C5154(a1);
}

uint64_t sub_23D9C676C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_23D9C67AC()
{
  result = qword_27E2F4718;
  if (!qword_27E2F4718)
  {
    type metadata accessor for AXSUIVoiceSettings();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4718);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for LiveSpeechPreferredVoiceListItemView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D9D9664();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *&v4[v1[5]];

  v8 = v1[6];
  v9 = sub_23D9D90B4();
  (*(*(v9 - 8) + 8))(&v4[v8], v9);
  v10 = &v4[v1[7]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(v10 + 2);

  v14 = &v4[v1[8]];
  v15 = sub_23D9D8C74();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610) + 28)];

  v18 = *&v4[v1[9] + 8];

  v19 = &v4[v1[10]];
  v20 = sub_23D9D8DA4();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  v22 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790) + 28)];

  v23 = &v4[v1[11]];
  v24 = *(v23 + 1);

  v25 = *(v23 + 2);

  return swift_deallocObject();
}

uint64_t sub_23D9C6AE8()
{
  v1 = *(type metadata accessor for LiveSpeechPreferredVoiceListItemView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23D9C5900();
}

unint64_t sub_23D9C6B68()
{
  result = qword_27E2F7148;
  if (!qword_27E2F7148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7130, &unk_23D9E2B18);
    sub_23D9C6C20();
    sub_23D91F01C(&qword_27E2F7158, &qword_27E2F7160, &qword_23D9E2B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7148);
  }

  return result;
}

unint64_t sub_23D9C6C20()
{
  result = qword_27E2F7150;
  if (!qword_27E2F7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7128, &qword_23D9E2B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F70F8, &qword_23D9E2AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
    sub_23D91F01C(&qword_27E2F7120, &qword_27E2F70F8, &qword_23D9E2AB8);
    sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F5C20, &qword_27E2F5C28, &qword_23D9DF690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7150);
  }

  return result;
}

uint64_t AXRSettingsView.init(settings:)@<X0>(void *a1@<X8>)
{
  v2 = sub_23D9D91D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D9D90C4();
  sub_23D9C8184(MEMORY[0x277D84F90]);
  v4 = [objc_opt_self() mainRunLoop];
  v5 = objc_allocWithZone(sub_23D9D90F4());
  a1[2] = sub_23D9D90E4();
  sub_23D9DAAF4();
  result = sub_23D9DA3A4();
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_23D9C6EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v24 = MEMORY[0x277D84A98];
  v26 = MEMORY[0x277D84AA8];
  v27 = a4;
  v8 = sub_23D9D9E94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v23 = a2;
  sub_23D9D9E84();
  WitnessTable = swift_getWitnessTable();
  sub_23D91F510(v13, v8, WitnessTable);
  v17 = *(v9 + 8);
  v17(v13, v8);
  sub_23D91F510(v15, v8, WitnessTable);
  return (v17)(v15, v8);
}

uint64_t sub_23D9C706C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  v11();
  sub_23D91F510(v10, a3, a4);
  v14 = *(v6 + 8);
  v14(v10, a3);
  sub_23D91F510(v13, a3, a4);
  return (v14)(v13, a3);
}

id AXRSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v9 = *v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  v5[2] = v9;
  v5[3] = v3;
  v5[4] = v4;
  KeyPath = swift_getKeyPath();
  *a1 = sub_23D9C8298;
  *(a1 + 8) = v5;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  v7 = v4;

  return v9;
}

uint64_t sub_23D9C7258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7218, &qword_23D9E2D10);
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v38 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7220, &qword_23D9E2D18);
  v41 = *(v42 - 8);
  v11 = v41;
  v12 = *(v41 + 64);
  v13 = MEMORY[0x28223BE20](v42);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v18 = a3;
  v61 = 0;
  v62 = 0;
  v19._object = 0x800000023D9E4CA0;
  v19._countAndFlagsBits = 0xD000000000000027;
  v58 = AXSUILocString(_:)(v19);
  sub_23D91B650();
  v58._countAndFlagsBits = sub_23D9D9F04();
  v58._object = v20;
  v59 = v21 & 1;
  v60 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7228, &qword_23D9E2D20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7230, &qword_23D9E2D28);
  v24 = sub_23D91F01C(&qword_27E2F7238, &qword_27E2F7230, &qword_23D9E2D28);
  v54 = v23;
  v55 = MEMORY[0x277D839B0];
  v56 = v24;
  v57 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v40 = v17;
  sub_23D9DA674();
  v48 = a1;
  v49 = a2;
  v50 = v18;
  v25 = v47;
  sub_23D9DA694();
  v26 = *(v11 + 16);
  v39 = v15;
  v27 = v17;
  v28 = v42;
  v26(v15, v27, v42);
  v29 = v43;
  v30 = *(v43 + 16);
  v31 = v44;
  v32 = v45;
  v30(v44, v25, v45);
  v33 = v46;
  v26(v46, v15, v28);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7240, &qword_23D9E2D30) + 48)];
  v30(v34, v31, v32);
  v35 = *(v29 + 8);
  v35(v47, v32);
  v36 = *(v41 + 8);
  v36(v40, v28);
  v35(v31, v32);
  return (v36)(v39, v28);
}

uint64_t sub_23D9C76E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v22 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7230, &qword_23D9E2D28);
  v23 = *(v21 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - v7;
  v24 = a1;
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7248, qword_23D9E2D38);
  sub_23D9DA3D4();
  v9 = v26;
  v10 = v27;
  v11 = v28;
  swift_getKeyPath();
  v26 = v9;
  v27 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7250, &qword_23D9E2DA0);
  sub_23D9DA574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7258, &qword_23D9E2DA8);
  sub_23D9C8530();
  sub_23D9DA4B4();
  v26 = a1;
  v27 = a2;
  sub_23D9DA3B4();
  v12 = v24;
  v13 = sub_23D9DAAD4();

  LOBYTE(v26) = v13 & 1;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v15 = v20;
  v14[4] = v20;
  sub_23D91F01C(&qword_27E2F7238, &qword_27E2F7230, &qword_23D9E2D28);
  v16 = a1;

  v17 = v15;
  v18 = v21;
  sub_23D9DA1E4();

  return (*(v23 + 8))(v8, v18);
}

uint64_t sub_23D9C7998()
{
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x800000023D9E4D10;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  *&v5 = sub_23D9D9F04();
  *(&v5 + 1) = v1;
  LOBYTE(v6) = v2 & 1;
  *(&v6 + 1) = v3;
  *v7 = 0xD00000000000001BLL;
  *&v7[8] = 0x800000023D9E4D10;
  *&v7[16] = swift_getKeyPath();
  v7[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7270, &qword_23D9E2DB0);
  sub_23D9C85BC();
  sub_23D9DA114();
  v8[0] = v5;
  v8[1] = v6;
  v9[0] = *v7;
  *(v9 + 9) = *&v7[9];
  return sub_23D91F344(v8, &qword_27E2F7270, &qword_23D9E2DB0);
}

void sub_23D9C7AC4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_23D9D91D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = *a2;
  v10 = _AXSTripleClickCopyOptions();
  v11 = _AXSTripleClickContainsOption();

  if (v9 == 1)
  {
    if (!v11)
    {
      _AXSTripleClickAddOption();
    }

    sub_23D9D90C4();
    v12 = sub_23D9D91C4();
    v13 = sub_23D9DACB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23D918000, v12, v13, "Enabling accessibility after turning on Reader", v14, 2u);
      MEMORY[0x23EEF4BC0](v14, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    sub_23D9D90D4();
  }

  else if (v11)
  {

    MEMORY[0x2821F02C0](44);
  }
}

uint64_t sub_23D9C7DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7248, qword_23D9E2D38);
  sub_23D9DA3D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7250, &qword_23D9E2DA0);
  sub_23D9DA574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7258, &qword_23D9E2DA8);
  sub_23D9C8530();
  return sub_23D9DA4B4();
}

uint64_t sub_23D9C7ED8()
{
  v0._countAndFlagsBits = 0xD000000000000038;
  v0._object = 0x800000023D9E4CD0;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  *&v5 = sub_23D9D9F04();
  *(&v5 + 1) = v1;
  LOBYTE(v6) = v2 & 1;
  *(&v6 + 1) = v3;
  *v7 = 0xD000000000000038;
  *&v7[8] = 0x800000023D9E4CD0;
  *&v7[16] = swift_getKeyPath();
  v7[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7270, &qword_23D9E2DB0);
  sub_23D9C85BC();
  sub_23D9DA114();
  v8[0] = v5;
  v8[1] = v6;
  v9[0] = *v7;
  *(v9 + 9) = *&v7[9];
  return sub_23D91F344(v8, &qword_27E2F7270, &qword_23D9E2DB0);
}

id sub_23D9C8004@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v9 = *v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  v5[2] = v9;
  v5[3] = v3;
  v5[4] = v4;
  KeyPath = swift_getKeyPath();
  *a1 = sub_23D9C87B8;
  *(a1 + 8) = v5;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  v7 = v4;

  return v9;
}

unint64_t sub_23D9C80AC(int a1)
{
  v3 = *(v1 + 40);
  sub_23D9DB034();
  sub_23D9DB054();
  v4 = sub_23D9DB064();

  return sub_23D9C8118(a1, v4);
}

unint64_t sub_23D9C8118(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23D9C8184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F7278, &qword_23D9E2E38);
  v3 = sub_23D9DAF74();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_23D9C80AC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_23D9C80AC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D9C82A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D9874();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23D9C82D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23D9D9884();
}

unint64_t sub_23D9C8338()
{
  result = qword_27E2F7168;
  if (!qword_27E2F7168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7170, &qword_23D9E2C58);
    sub_23D91F01C(&qword_27E2F7178, &qword_27E2F7180, &qword_23D9E2C60);
    sub_23D91F01C(&qword_27E2F7188, qword_27E2F7190, &qword_23D9E2C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7168);
  }

  return result;
}

uint64_t sub_23D9C841C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D9C84CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D9C7DB8();
}

uint64_t sub_23D9C84D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAAB4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D9C8508(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23D9DAAC4();
}

unint64_t sub_23D9C8530()
{
  result = qword_27E2F7260;
  if (!qword_27E2F7260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7258, &qword_23D9E2DA8);
    sub_23D9C85BC();
    sub_23D9C8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7260);
  }

  return result;
}

unint64_t sub_23D9C85BC()
{
  result = qword_27E2F7268;
  if (!qword_27E2F7268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7270, &qword_23D9E2DB0);
    sub_23D91EAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7268);
  }

  return result;
}

unint64_t sub_23D9C8648()
{
  result = qword_27E2F43A0;
  if (!qword_27E2F43A0)
  {
    sub_23D9D9D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43A0);
  }

  return result;
}

uint64_t sub_23D9C86A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAAD4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D9C86D4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23D9DAAE4();
}

uint64_t objectdestroyTm_15()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_23D9C8744(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_23D9C7AC4(a1, a2);
}

uint64_t sub_23D9C8750(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_23D9D9E94();
  return swift_getWitnessTable();
}

uint64_t View.axDebouncedOnChange<A>(_:debounceMs:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v24 = a8;
  v25 = a5;
  v23 = a2;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AXDebouncedOnChange();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v22 - v19;
  (*(v12 + 16))(v15, a1, a6);

  sub_23D9C9564(v15, a3, a4, v23, a6, v20);
  MEMORY[0x23EEF34C0](v20, v25, v16, v26);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_23D9C8990()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6DC8, &unk_23D9E1F58);
  sub_23D9DA3A4();
  return v1;
}

uint64_t sub_23D9C89D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  v7 = sub_23D9D9C34();
  v25[2] = v7;
  v8 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v10 = *(a2 + 24);
  v31 = v7;
  v32 = v8;
  v33 = WitnessTable;
  v34 = v10;
  v26 = WitnessTable;
  v27 = MEMORY[0x277CE0E38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v28 + 64);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  (*(v5 + 16))(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v10;
  (*(v5 + 32))(v19 + v18, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v20 = swift_checkMetadataState();
  v21 = v26;
  sub_23D9DA1E4();

  v31 = v20;
  v32 = v8;
  v33 = v21;
  v34 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D91F510(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v28 + 8);
  v23(v15, OpaqueTypeMetadata2);
  sub_23D91F510(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_23D9C8CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v46 = a1;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v50 = v12;
  v13 = type metadata accessor for AXDebouncedOnChange();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - v20;
  v22 = (a3 + *(v13 + 44));
  v24 = *v22;
  v23 = v22[1];
  v47 = v24;
  v53 = v24;
  v54 = v23;
  v45 = v23;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7308, &qword_23D9E2EC8);
  sub_23D9DA3B4();
  if (v52)
  {
    sub_23D9DAA44();
  }

  v25 = sub_23D9DA9F4();
  v26 = *(*(v25 - 8) + 56);
  v43 = v21;
  v26(v21, 1, 1, v25);
  v27 = *(v14 + 16);
  v42 = v17;
  v27(v17, a3, v13);
  v28 = *(v6 + 16);
  v28(v11, v46, a4);
  v28(v51, v48, a4);
  sub_23D9DA9B4();
  v29 = sub_23D9DA9A4();
  v30 = v13;
  v31 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v32 = *(v6 + 80);
  v33 = (v15 + v32 + v31) & ~v32;
  v34 = (v49 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  *(v35 + 2) = v29;
  *(v35 + 3) = v36;
  v37 = v50;
  *(v35 + 4) = a4;
  *(v35 + 5) = v37;
  (*(v14 + 32))(&v35[v31], v42, v30);
  v38 = *(v6 + 32);
  v38(&v35[v33], v11, a4);
  v38(&v35[v34], v51, a4);
  v39 = sub_23D9BB718(0, 0, v43, &unk_23D9E2ED8, v35);
  v53 = v47;
  v54 = v45;
  v52 = v39;
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_23D9DAF04();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  sub_23D9DA9B4();
  v8[10] = sub_23D9DA9A4();
  v13 = sub_23D9DA994();
  v8[11] = v13;
  v8[12] = v12;

  return MEMORY[0x2822009F8](sub_23D9C91AC, v13, v12);
}

uint64_t sub_23D9C91AC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for AXDebouncedOnChange();
  v0[13] = v5;
  v6 = *(v4 + *(v5 + 40));
  v7 = 1000000000000000 * v6;
  v8 = (v6 * 0x38D7EA4C68000uLL) >> 64;
  v9 = (v6 >> 63) & 0xFFFC72815B398000;
  sub_23D9DB024();
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_23D9C92C0;
  v11 = v0[9];

  return (sub_23D9C9FEC)(v7, v9 + v8, 0, 0, 1);
}

uint64_t sub_23D9C92C0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_23D9C94F0;
  }

  else
  {
    v10 = sub_23D9C9458;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_23D9C9458()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = v5 + *(v1 + 36);
  v7 = *(v6 + 8);
  (*v6)(v3, v4);
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23D9C94F0()
{
  v1 = v0[15];
  v2 = v0[10];

  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23D9C9564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for AXDebouncedOnChange();
  v11 = (a6 + v10[9]);
  *v11 = a2;
  v11[1] = a3;
  *(a6 + v10[10]) = a4;
  v12 = (a6 + v10[11]);
  result = sub_23D9C8990();
  *v12 = result;
  v12[1] = v14;
  return result;
}

uint64_t sub_23D9C9614(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for AXDebouncedOnChange();
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_23D9C96A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23D95F334();
    if (v3 <= 0x3F)
    {
      sub_23D9C9A70();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23D9C9750(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23D9C989C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23D9C9A70()
{
  if (!qword_27E2F7300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6DC8, &unk_23D9E1F58);
    v0 = sub_23D9DA3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F7300);
    }
  }
}

uint64_t sub_23D9C9B1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for AXDebouncedOnChange() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = *(v5 + v3[11] + 8);

  v7 = (v5 + v3[13]);
  v8 = *v7;

  v9 = v7[1];

  return swift_deallocObject();
}

uint64_t sub_23D9C9C28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AXDebouncedOnChange() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23D9C8CD8(a1, a2, v8, v5);
}

uint64_t sub_23D9C9CC4()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for AXDebouncedOnChange() - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = *(v2 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v3 + 64) + v6) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = &v0[v4];
  v11 = *(v5 + 8);
  v11(v10, v2);
  v12 = *&v10[v3[11] + 8];

  v13 = &v10[v3[13]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v11(&v0[v7], v2);
  v11(&v0[v8], v2);

  return swift_deallocObject();
}

uint64_t sub_23D9C9E54(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for AXDebouncedOnChange() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(*(v6 - 8) + 80);
  v10 = (v8 + *(v7 + 64) + v9) & ~v9;
  v11 = (*(*(v6 - 8) + 64) + v9 + v10) & ~v9;
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_23D928310;

  return sub_23D9C90B0(a1, v12, v13, v1 + v8, v1 + v10, v1 + v11, v6, v5);
}

uint64_t sub_23D9C9FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_23D9DAEF4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23D9CA0EC, 0, 0);
}

uint64_t sub_23D9CA0EC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_23D9DAF04();
  v7 = sub_23D9CA4A4(&qword_27E2F7310, MEMORY[0x277D85928]);
  sub_23D9DB004();
  sub_23D9CA4A4(&qword_27E2F7318, MEMORY[0x277D858F8]);
  sub_23D9DAF14();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_23D9CA27C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_23D9CA27C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23D9CA438, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_23D9CA438()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_23D9CA4A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9CA4EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AXDebouncedOnChange();
  swift_getWitnessTable();
  sub_23D9D9C34();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

Swift::String __swiftcall AXSUILocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v3 = qword_27E2F7320;
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_23D9DA8B4();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_23D9CA6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D9B04();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23D9D9B14();
}

uint64_t sub_23D9CA7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23D9D9B04();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23D9D9B14();
}

uint64_t View.bind<A, B>(stream:to:on:animated:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v32 = a7;
  v33 = a5;
  v31 = a4;
  v29 = a1;
  v30 = a3;
  v8 = (*a2 + *MEMORY[0x277D84568]);
  v9 = *v8;
  v10 = *(*v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v28 - v12;
  v15 = *(v14 + 8);
  v16 = sub_23D9D8E34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *(v15 + 16);
  v22 = type metadata accessor for AXSUIAsyncStreamBinding();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v28 - v25;
  (*(v17 + 16))(v20, v29, v16);
  (*(v10 + 16))(v13, v30, v9);
  sub_23D9CB370(v20, a2, v13, v31, v26);

  MEMORY[0x23EEF34C0](v26, v33, v22, v34);
  return (*(v23 + 8))(v26, v22);
}

{
  v33 = a6;
  v31 = a7;
  v32 = a5;
  v30 = a4;
  v28 = a1;
  v29 = a3;
  v8 = (*a2 + *MEMORY[0x277D84568]);
  v9 = *v8;
  v10 = *(*v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v27 - v12;
  v15 = *(*(v14 + 8) + 16);
  v16 = sub_23D9D8E34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  v21 = type metadata accessor for AXSUIAsyncStreamBinding();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v27 - v24;
  (*(v17 + 16))(v20, v28, v16);
  (*(v10 + 16))(v13, v29, v9);

  sub_23D9CB498(v20, a2, v13, v30, v25);
  MEMORY[0x23EEF34C0](v25, v32, v21, v33);
  return (*(v22 + 8))(v25, v21);
}

uint64_t View.axSettingsAppearance()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x23EEF34C0](&KeyPath, a1, &type metadata for AXSettingsAppearanceModifier, a2);
}

uint64_t View.axPlatformSheet<A>(isPresented:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a5;
  v16 = a1;
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  v14 = a4;
  v10 = type metadata accessor for PlatformSheet();

  MEMORY[0x23EEF34C0](v12, a6, v10, a8);
  sub_23D95895C(&v16);
}

Swift::String __swiftcall AXLSCSUILocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v3 = qword_27E2F7320;
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_23D9DA8B4();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t ReplicatedState.init(sourceBinding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D9DA604();
  MEMORY[0x23EEF3850]();
  v11 = a3 + *(type metadata accessor for ReplicatedState() + 28);
  *(v11 + *(sub_23D9DA3E4() + 28)) = 0;
  (*(v6 + 32))(v11, v9, a2);
  return (*(*(v10 - 8) + 32))(a3, a1, v10);
}

uint64_t AXSUIStreamValueView.init<>(stream:animated:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a5;
  v21 = a2;
  v11 = sub_23D9D8E34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  (*(v12 + 16))(&v20 - v14, a1, v11);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v17 = sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0);
  *(&v19 + 1) = a6;
  *&v19 = v16;
  AXSUIStreamValueView.init(stream:animated:_:loadingView:)(v15, v21, v22, sub_23D9CD254, 0, a4, v23, a7, v19, v17);
  return (*(v12 + 8))(a1, v11);
}

id sub_23D9CB304()
{
  type metadata accessor for AXSUISettingsLogger();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E2F7320 = result;
  return result;
}

uint64_t sub_23D9CB370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = MEMORY[0x277D84568];
  v12 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v13 = sub_23D9D8E34();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = *(v12 + 16);
  v15 = *(v10 + *v11);
  v16 = type metadata accessor for AXSUIAsyncStreamBinding();
  *(a5 + v16[9]) = a2;
  result = (*(*(v15 - 8) + 32))(a5 + v16[10], a3, v15);
  *(a5 + v16[11]) = a4;
  return result;
}

uint64_t sub_23D9CB498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = (*a2 + *MEMORY[0x277D84568]);
  v11 = v10[1];
  v12 = sub_23D9D8E34();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = *(v11 + 16);
  *(v16 + 24) = *v10;
  v17 = sub_23D9D8E34();
  sub_23D9D8E24();

  (*(*(v17 - 8) + 8))(a1, v17);
  return sub_23D9CB370(v15, a2, a3, a4, a5);
}

uint64_t sub_23D9CB614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23D9DA9B4();
  v3[5] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9CB6B0, v5, v4);
}

uint64_t sub_23D9CB6B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = *(v2 - 8);
  (*(v5 + 16))(v4, v3, v2);
  (*(v5 + 56))(v4, 0, 1, v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_23D9CB784(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_23D9DAD74();
  v7 = *(*(v6 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v6);
  if (*(v2 + *(a2 + 44)) == 1)
  {
    MEMORY[0x28223BE20](v8);
    v12 = *(a2 + 24);
    *&v16[-32] = v5;
    *&v16[-24] = v12;
    *&v16[-16] = v2;
    *&v16[-8] = a1;
    sub_23D9DA744();
    sub_23D9D9594();
  }

  else
  {
    v14 = *(a2 + 40);
    v15 = *(v2 + *(a2 + 36));
    (*(v10 + 16))(&v16[-v9], a1, v11);
    return swift_setAtReferenceWritableKeyPath();
  }
}

uint64_t sub_23D9CB8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9DAD74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = type metadata accessor for AXSUIAsyncStreamBinding();
  v10 = *(v9 + 40);
  v11 = *(a1 + *(v9 + 36));
  (*(v5 + 16))(v8, a2, v4);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_23D9CB9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v31 = a3;
  v30 = sub_23D9DA9F4();
  v28 = *(v30 - 8);
  v6 = *(v28 + 64);
  v7 = MEMORY[0x28223BE20](v30);
  v26 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  swift_getWitnessTable();
  sub_23D9D9C34();
  sub_23D9D9584();
  v11 = sub_23D9D96C4();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(a2 + 16);
  (*(v9 + 32))(v19 + v18, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  v21 = v26;
  sub_23D9DA9C4();
  sub_23D9DA174();

  (*(v28 + 8))(v21, v30);
  v22 = sub_23D9D0998(&qword_27E2F4228, MEMORY[0x277CDD8B8]);
  v32 = WitnessTable;
  v33 = v22;
  v23 = swift_getWitnessTable();
  sub_23D91F510(v15, v11, v23);
  v24 = *(v27 + 8);
  v24(v15, v11);
  sub_23D91F510(v17, v11, v23);
  return (v24)(v17, v11);
}

uint64_t sub_23D9CBDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_23D9DAD74();
  v3[5] = v4;
  v5 = *(*(sub_23D9DAD74() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_23D9DAA24();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(v4 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[12] = v11;
  v3[13] = sub_23D9DA9B4();
  v3[14] = sub_23D9DA9A4();
  v12 = *(MEMORY[0x277CE6750] + 4);
  v13 = swift_task_alloc();
  v3[15] = v13;
  v14 = sub_23D9D8E34();
  v3[16] = v14;
  *v13 = v3;
  v13[1] = sub_23D9CBF8C;

  return MEMORY[0x282138898](v11, v14);
}

uint64_t sub_23D9CBF8C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v6 = sub_23D9DA994();
  *(v1 + 136) = v6;
  *(v1 + 144) = v5;

  return MEMORY[0x2822009F8](sub_23D9CC0D0, v6, v5);
}

uint64_t sub_23D9CC0D0()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for AXSUIAsyncStreamBinding();
  v0[19] = v7;
  sub_23D9CB784(v2, v7);
  sub_23D9D8E14();
  v8 = v0[13];
  v9 = sub_23D9DA9A4();
  v0[20] = v9;
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_23D9CC1C8;
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v13, v9, v15, v14);
}

uint64_t sub_23D9CC1C8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_23D9CC30C, v5, v4);
}

uint64_t sub_23D9CC30C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[14];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[7];

    (*(v7 + 8))(v8, v9);
    (*(v1 + 8))(v5, v2);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[19];
    v13 = v0[11];
    v14 = v0[2];
    (*(v1 + 32))(v13, v3, v2);
    sub_23D9CB784(v13, v12);
    (*(v1 + 8))(v13, v2);
    v15 = v0[13];
    v16 = sub_23D9DA9A4();
    v0[20] = v16;
    v17 = *(MEMORY[0x277D85798] + 4);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_23D9CC1C8;
    v19 = v0[9];
    v20 = v0[6];
    v21 = v0[7];
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v20, v16, v22, v21);
  }
}

uint64_t sub_23D9CC55C(uint64_t a1)
{
  v2 = sub_23D9DAD74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  sub_23D9DA3A4();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23D9CC650(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 16);
  sub_23D9DAD74();
  sub_23D9DA3E4();
  return sub_23D9DA3B4();
}

uint64_t AXSUIStreamValueView.init(stream:animated:_:loadingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10)
{
  v28 = a9;
  v18 = sub_23D9DAD74();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v28 - v20;
  v29 = a6;
  v30 = a7;
  v31 = a9;
  v32 = a10;
  v22 = type metadata accessor for AXSUIStreamValueView();
  v23 = v22[18];
  (*(*(a6 - 8) + 56))(v21, 1, 1, a6);
  sub_23D9CC55C(v21);
  v24 = sub_23D9D8E34();
  result = (*(*(v24 - 8) + 32))(a8, a1, v24);
  v26 = (a8 + v22[15]);
  *v26 = a2;
  v26[1] = a3;
  *(a8 + v22[17]) = 1;
  v27 = (a8 + v22[16]);
  *v27 = a4;
  v27[1] = a5;
  return result;
}

uint64_t AXSUIStreamValueView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v32 = a2;
  v33 = *(a1 + 24);
  sub_23D9D9B24();
  v4 = sub_23D9DA344();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = *(v3 + 16);
  v29 = type metadata accessor for AXSUIAsyncStreamBinding();
  v9 = sub_23D9D96C4();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  v11 = (MEMORY[0x28223BE20])(v9);
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v28 = &v27 - v14;
  v13.i64[0] = v8;
  *&v15 = vdupq_laneq_s64(v33, 1).u64[0];
  v17 = *(v3 + 40);
  v16 = *(v3 + 48);
  *(&v15 + 1) = v17;
  v38 = vzip1q_s64(v13, v33);
  v39 = v15;
  v40 = v16;
  v41 = v2;
  v45 = v17;
  v46 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_23D9DA334();
  v34 = v8;
  v35 = v33;
  v36 = v17;
  v37 = v16;
  KeyPath = swift_getKeyPath();
  LODWORD(v3) = *(v2 + *(v3 + 68));
  v44 = WitnessTable;
  v20 = swift_getWitnessTable();
  v21 = v27;
  View.bind<A, B>(stream:to:on:animated:)(v2, KeyPath, v2, v3, v4, v20, v27);

  (*(v30 + 8))(v7, v4);
  v22 = swift_getWitnessTable();
  v42 = v20;
  v43 = v22;
  v23 = swift_getWitnessTable();
  v24 = v28;
  sub_23D91F510(v21, v9, v23);
  v25 = *(v31 + 8);
  v25(v21, v9);
  sub_23D91F510(v24, v9, v23);
  return (v25)(v24, v9);
}

uint64_t sub_23D9CCBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a7;
  v64 = *(a3 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v60 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v63 = &v55 - v17;
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v61 = &v55 - v23;
  v24 = sub_23D9DAD74();
  v57 = *(v24 - 8);
  v58 = v24;
  v25 = *(v57 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  v29 = *(a2 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v59 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23D9D9B24();
  v65 = *(v32 - 8);
  v66 = v32;
  v33 = *(v65 + 64);
  MEMORY[0x28223BE20](v32);
  v70 = &v55 - v34;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  v76 = a5;
  v67 = a5;
  v68 = a6;
  v77 = a6;
  v35 = type metadata accessor for AXSUIStreamValueView();
  sub_23D9CC650(v35);
  v36 = a2;
  if ((*(v29 + 48))(v28, 1, a2) == 1)
  {
    v37 = (*(v57 + 8))(v28, v58);
    v38 = a1 + *(v35 + 64);
    v39 = *(v38 + 8);
    (*v38)(v37);
    v40 = v61;
    v41 = v68;
    sub_23D91F510(v22, a4, v68);
    v42 = *(v62 + 8);
    v42(v22, a4);
    sub_23D91F510(v40, a4, v41);
    v43 = v67;
    sub_23D9CA7DC(v22, a3, a4);
    v42(v22, a4);
    v42(v40, a4);
  }

  else
  {
    v44 = *(v29 + 32);
    v45 = v59;
    v56 = v36;
    v44(v59, v28, v36);
    v46 = a1 + *(v35 + 60);
    v47 = *(v46 + 8);
    v48 = v60;
    (*v46)(v45);
    v49 = v63;
    v43 = v67;
    sub_23D91F510(v48, a3, v67);
    v50 = *(v64 + 8);
    v50(v48, a3);
    sub_23D91F510(v49, a3, v43);
    v41 = v68;
    sub_23D9CA6E4(v48, a3);
    v50(v48, a3);
    v50(v49, a3);
    (*(v29 + 8))(v45, v56);
  }

  v71 = v43;
  v72 = v41;
  v51 = v66;
  WitnessTable = swift_getWitnessTable();
  v53 = v70;
  sub_23D91F510(v70, v51, WitnessTable);
  return (*(v65 + 8))(v53, v51);
}

uint64_t sub_23D9CD100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + a3 - 40);
  v6 = *(a2 + a3 - 24);
  v7 = *(a2 + a3 - 8);
  v3 = type metadata accessor for AXSUIStreamValueView();
  return sub_23D9CC650(v3);
}

uint64_t sub_23D9CD158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 40);
  v8 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 8);
  v5 = type metadata accessor for AXSUIStreamValueView();
  return sub_23D9CEFC0(a1, v5);
}

uint64_t sub_23D9CD1B8()
{
  v1 = qword_27E2F73A8;
  v2 = sub_23D9D8A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ReplicatedState.wrappedValue.getter(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = *(a1 + 16);
  sub_23D9DA3E4();
  return sub_23D9DA3B4();
}

uint64_t ReplicatedState.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_23D9CF254(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*ReplicatedState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v12 = *(a2 + 28);
  sub_23D9DA3E4();
  sub_23D9DA3B4();
  return sub_23D9CD430;
}

void sub_23D9CD430(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_23D9CF0AC(v3, v8);
    sub_23D9CF17C(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_23D9CF0AC((*a1)[5], v8);
    sub_23D9CF17C(v4, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ReplicatedState.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v16[0] = *(v3 + 16);
  (v16[0])(v16 - v7, v6);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v11 = *(a1 + 16);
  *(v10 + 4) = v11;
  v12 = *(v3 + 32);
  v12(&v10[v9], v8, a1);
  v13 = v17;
  (v16[0])(v17, v16[1], a1);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v11;
  v12(&v14[v9], v13, a1);
  return sub_23D9DA594();
}

uint64_t sub_23D9CD714(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatedState();
  sub_23D9CF0AC(a1, v2);
  return sub_23D9CF17C(a1, v2);
}

uint64_t sub_23D9CD780()
{
  v3 = *v0;
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA584();
  return v2;
}

uint64_t sub_23D9CD7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v55 = a3;
  swift_getWitnessTable();
  v5 = sub_23D9D9C34();
  v6 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v7 = sub_23D9D96C4();
  v47 = v5;
  WitnessTable = swift_getWitnessTable();
  v45 = *(a2 + 24);
  v60 = v45;
  v61 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
  v48 = swift_getWitnessTable();
  v56 = v5;
  v57 = v7;
  v58 = WitnessTable;
  v59 = v48;
  v51 = MEMORY[0x277CDEE30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v52 = OpaqueTypeMetadata2;
  v53 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v41 - v13;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_checkMetadataState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v43 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v42 = v3;
  v26 = *(v3 + 24);
  v27 = *(v3 + 32);
  v26(v23);
  swift_getKeyPath();
  v56 = 0;
  v44 = v25;
  v28 = v45;
  sub_23D9D9FC4();

  (*(v14 + 8))(v18, v6);
  v42 = sub_23D9CD780();
  v29 = v43;
  (*(v20 + 16))(v43, v25, v19);
  v30 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v6;
  *(v31 + 24) = v28;
  (*(v20 + 32))(v31 + v30, v29, v19);
  v32 = swift_checkMetadataState();
  v33 = v48;
  v34 = WitnessTable;
  v35 = v46;
  sub_23D9DA184();

  (*(v20 + 8))(v44, v19);
  v56 = v32;
  v57 = v19;
  v58 = v34;
  v59 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v50;
  v38 = v52;
  sub_23D91F510(v35, v52, OpaqueTypeConformance2);
  v39 = *(v53 + 8);
  v39(v35, v38);
  sub_23D91F510(v37, v38, OpaqueTypeConformance2);
  return (v39)(v37, v38);
}

uint64_t sub_23D9CDCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v5 = sub_23D9D96C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
  v13[0] = a3;
  v13[1] = v10;
  WitnessTable = swift_getWitnessTable();
  sub_23D91F510(a1, v5, WitnessTable);
  sub_23D91F510(v9, v5, WitnessTable);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23D9CDE54()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7630, &qword_23D9E33E8);
  sub_23D91F01C(&qword_27E2F7638, &qword_27E2F7630, &qword_23D9E33E8);
  sub_23D91B650();
  return sub_23D9DA064();
}

uint64_t AXSUIPlatformFormListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v38 = MEMORY[0x277D84A98];
  v39 = v3;
  v40 = MEMORY[0x277D84AA8];
  v41 = v2;
  v4 = sub_23D9D9E94();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = sub_23D9D96C4();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  type metadata accessor for AXNavigationSink(255);
  v12 = sub_23D9D96C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = v3;
  v32 = v2;
  v33 = v27;
  sub_23D9D9E84();
  WitnessTable = swift_getWitnessTable();
  View.axSettingsAppearance()(v4, WitnessTable);
  (*(v28 + 8))(v7, v4);
  v21 = sub_23D927AFC();
  v36 = WitnessTable;
  v37 = v21;
  v22 = swift_getWitnessTable();
  View.axNavigationSink()(v8, v22);
  (*(v29 + 8))(v11, v8);
  v23 = sub_23D9D0998(&qword_27E2F63D0, type metadata accessor for AXNavigationSink);
  v34 = v22;
  v35 = v23;
  v24 = swift_getWitnessTable();
  sub_23D91F510(v16, v12, v24);
  v25 = *(v13 + 8);
  v25(v16, v12);
  sub_23D91F510(v19, v12, v24);
  return (v25)(v19, v12);
}

uint64_t sub_23D9CE294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F510(v7, v10, v11);
  sub_23D91F510(v9, a2, a3);
  return (*(v5 + 8))(v9, a2);
}

uint64_t sub_23D9CE374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v88 = a4;
  v87 = sub_23D9D9714();
  v76 = *(v87 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v87);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7640, &qword_23D9E33F0);
  v70 = *(v83 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v83);
  v69 = &v64 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7648, &qword_23D9E33F8);
  v72 = *(v85 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v85);
  v71 = &v64 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7650, &qword_23D9E3400);
  v75 = *(v86 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v86);
  v73 = &v64 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7658, &qword_23D9E3408);
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v64 - v15;
  v77 = sub_23D9D99A4();
  v16 = *(v77 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v77);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_23D9D9734();
  v65 = *(v78 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v78);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7660, &qword_23D9E3410);
  v68 = *(v80 - 8);
  v23 = *(v68 + 64);
  MEMORY[0x28223BE20](v80);
  v66 = &v64 - v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7668, &qword_23D9E3418);
  v67 = *(v82 - 8);
  v25 = *(v67 + 64);
  MEMORY[0x28223BE20](v82);
  v27 = &v64 - v26;
  v28 = sub_23D9D9954();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7670, &qword_23D9E3420);
      v34 = sub_23D91F01C(&qword_27E2F7678, &qword_27E2F7670, &qword_23D9E3420);
      v35 = v69;
      v68 = v33;
      sub_23D9D9F54();
      v36 = v77;
      (*(v16 + 104))(v19, *MEMORY[0x277CDDDB8], v77);
      v89 = v33;
      v90 = v34;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v38 = v71;
      v39 = v83;
      sub_23D9DA144();
      (*(v16 + 8))(v19, v36);
      (*(v70 + 8))(v35, v39);
      v40 = v74;
      sub_23D9DA774();
      v89 = v39;
      v90 = OpaqueTypeConformance2;
      v41 = swift_getOpaqueTypeConformance2();
      v42 = sub_23D9D0998(&qword_27E2F7680, MEMORY[0x277CDDAB0]);
      v43 = v73;
      v44 = v85;
      v45 = v87;
      sub_23D9DA224();
      (*(v76 + 8))(v40, v45);
      (*(v72 + 8))(v38, v44);
      v46 = v75;
      v47 = v86;
      (*(v75 + 16))(v84, v43, v86);
      swift_storeEnumTagMultiPayload();
      v89 = v68;
      v90 = v78;
      v91 = v34;
      v92 = MEMORY[0x277CDDAC0];
      v48 = swift_getOpaqueTypeConformance2();
      v89 = v80;
      v90 = v48;
      swift_getOpaqueTypeConformance2();
      v89 = v44;
      v90 = v45;
      v91 = v41;
      v92 = v42;
      swift_getOpaqueTypeConformance2();
      sub_23D9D9B14();
      return (*(v46 + 8))(v43, v47);
    }
  }

  else
  {

    sub_23D9DACD4();
    v64 = v27;
    v50 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    v27 = v64;
    sub_23D91F080(a2, 0);
    (*(v29 + 8))(v32, v28);
    if (v89 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_23D9D9724();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7670, &qword_23D9E3420);
  v52 = sub_23D91F01C(&qword_27E2F7678, &qword_27E2F7670, &qword_23D9E3420);
  v53 = MEMORY[0x277CDDAC0];
  v54 = v66;
  v55 = v78;
  sub_23D9DA234();
  (*(v65 + 8))(v22, v55);
  v56 = v77;
  (*(v16 + 104))(v19, *MEMORY[0x277CDDDA8], v77);
  v89 = v51;
  v90 = v55;
  v91 = v52;
  v92 = v53;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v80;
  sub_23D9DA144();
  (*(v16 + 8))(v19, v56);
  (*(v68 + 8))(v54, v58);
  v59 = v67;
  v60 = v82;
  (*(v67 + 16))(v84, v27, v82);
  swift_storeEnumTagMultiPayload();
  v89 = v58;
  v90 = v57;
  swift_getOpaqueTypeConformance2();
  v89 = v51;
  v90 = v52;
  v61 = swift_getOpaqueTypeConformance2();
  v89 = v83;
  v90 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_23D9D0998(&qword_27E2F7680, MEMORY[0x277CDDAB0]);
  v89 = v85;
  v90 = v87;
  v91 = v62;
  v92 = v63;
  swift_getOpaqueTypeConformance2();
  sub_23D9D9B14();
  return (*(v59 + 8))(v27, v60);
}

uint64_t sub_23D9CEEE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.axBuddySetupMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D9CEF10@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.axBuddySetupMode.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_23D9CEFAC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_23D9CEFC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_23D9DAD74();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = *(a2 + 72);
  (*(v10 + 16))(&v12 - v8, a1, v5, v7);
  sub_23D9DA3E4();
  return sub_23D9DA3C4();
}

uint64_t sub_23D9CF0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v2, v4);
  sub_23D9DA604();
  return sub_23D9DA564();
}

uint64_t sub_23D9CF17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 28);
  (*(v8 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v2, v4);
  sub_23D9DA3E4();
  return sub_23D9DA3C4();
}

uint64_t sub_23D9CF254(uint64_t a1, uint64_t a2)
{
  sub_23D9CF0AC(a1, a2);

  return sub_23D9CF17C(a1, a2);
}

uint64_t sub_23D9CF2A0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for ReplicatedState();
  v3 = *(v2 - 8);
  v2 -= 8;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0 + *(v2 + 36);
  v6 = *(v2 + 24);
  sub_23D9DA3E4();
  return sub_23D9DA3B4();
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for ReplicatedState() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = sub_23D9DA604();
  v9 = *(*(v1 - 8) + 8);
  v9(v0 + v3 + *(v8 + 32), v1);
  v10 = v0 + v3 + v2[9];
  v9(v10, v1);
  v11 = *(v10 + *(sub_23D9DA3E4() + 28));

  return swift_deallocObject();
}

uint64_t sub_23D9CF46C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(*(type metadata accessor for ReplicatedState() - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];

  return sub_23D9CD714(a1);
}

uint64_t sub_23D9CF500(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9CF590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = type metadata accessor for ReplicatedState();
  return ReplicatedState.wrappedValue.getter(v4);
}

uint64_t sub_23D9CF5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for ReplicatedState();
  return sub_23D9CF254(a1, v6);
}

unint64_t sub_23D9CF660(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23D9D8E34();
  if (v3 <= 0x3F)
  {
    result = sub_23D95F334();
    if (v4 <= 0x3F)
    {
      sub_23D9DAD74();
      result = sub_23D9DA3E4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23D9CF738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23D9D8E34();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 60));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_23D9DAD74();
    v12 = sub_23D9DA3E4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 72);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23D9CF888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = sub_23D9D8E34();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  else
  {
    sub_23D9DAD74();
    v12 = sub_23D9DA3E4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 72);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_23D9CF9D8()
{
  result = sub_23D9D8A54();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D9CFA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23D9DA604();
  if (v3 <= 0x3F)
  {
    result = sub_23D9DA3E4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D9CFB18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + (((v6 | 7) + v7 + ((v6 + 16) & ~v6)) & ~(v6 | 7)) + 8;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

_BYTE *sub_23D9CFC78(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) == -8)
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) == -8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + (((v8 | 7) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & ~(v8 | 7)) != -8)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_23D9CFE74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for AXSUIAsyncStreamBinding();
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9CFF14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_23D9D9B24();
  sub_23D9DA344();
  type metadata accessor for AXSUIStreamValueView();
  type metadata accessor for AXSUIAsyncStreamBinding();
  sub_23D9D96C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9D004C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for PlatformSheet();
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9D00E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_23D9D9E94();
  sub_23D9D96C4();
  type metadata accessor for AXNavigationSink(255);
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D927AFC();
  swift_getWitnessTable();
  sub_23D9D0998(&qword_27E2F63D0, type metadata accessor for AXNavigationSink);
  return swift_getWitnessTable();
}

uint64_t sub_23D9D0204(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23D9D96C4();
  sub_23D927AFC();
  return swift_getWitnessTable();
}

uint64_t sub_23D9D0268()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D9D02A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23D9D02EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23D9D0360(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_23D9DAD74();
  result = sub_23D9D8E34();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_23D9DAFA4();
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23D9D0444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_23D9DAD74();
  v7 = sub_23D9D8E34();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = *(*(*(a3 + 24) - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2);
  }
}

uint64_t sub_23D9D0584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  sub_23D9DAD74();
  result = sub_23D9D8E34();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v12 = *(*(*(a4 + 24) - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2);
  }

  return result;
}

uint64_t sub_23D9D0770()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for AXSUIAsyncStreamBinding() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  sub_23D9DAD74();
  v6 = sub_23D9D8E34();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v3[11]);

  (*(*(v1 - 8) + 8))(v5 + v3[12], v1);

  return swift_deallocObject();
}

uint64_t sub_23D9D08B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for AXSUIAsyncStreamBinding() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D9CBDAC(v0 + v5, v2, v3);
}

uint64_t sub_23D9D0998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9D09E0()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_23D9CB8F0(v0[4], v0[5]);
}

uint64_t sub_23D9D0A08()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v2 = (sub_23D9D96C4() - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  v5 = (v4 + v2[11]);
  v6 = *v5;

  v7 = v5[1];

  return swift_deallocObject();
}

uint64_t sub_23D9D0B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v3 = *(sub_23D9D96C4() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D9CDCDC(v4, v1, v2);
}

uint64_t sub_23D9D0BCC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23D92A70C;

  return sub_23D9CB614(a1, a2, v7);
}

uint64_t sub_23D9D0C80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7630, &qword_23D9E33E8);
  sub_23D91F01C(&qword_27E2F7638, &qword_27E2F7630, &qword_23D9E33E8);
  sub_23D91B650();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D9D0D30()
{
  result = qword_27E2F7688;
  if (!qword_27E2F7688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7690, &unk_23D9E3480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7660, &qword_23D9E3410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7670, &qword_23D9E3420);
    sub_23D9D9734();
    sub_23D91F01C(&qword_27E2F7678, &qword_27E2F7670, &qword_23D9E3420);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7648, &qword_23D9E33F8);
    sub_23D9D9714();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7640, &qword_23D9E33F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D9D0998(&qword_27E2F7680, MEMORY[0x277CDDAB0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7688);
  }

  return result;
}

uint64_t sub_23D9D0F68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AXSUIAsyncStreamBinding();
  swift_getWitnessTable();
  sub_23D9D9C34();
  sub_23D9D9584();
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D9D0998(&qword_27E2F4228, MEMORY[0x277CDD8B8]);
  return swift_getWitnessTable();
}

uint64_t sub_23D9D1060(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for PlatformSheet();
  swift_getWitnessTable();
  sub_23D9D9C34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t VoiceSelectionCellDetailView.init(preferredLocale:selectedVoice:languages:dismissOnSelect:sheetOpen:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23D9DA3A4();
  *a9 = v31;
  *(a9 + 16) = v32;
  v19 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v20 = v19[5];
  v21 = sub_23D9D89C4();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a9 + v19[7];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  v23 = v19[11];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  result = sub_23D93DA98(a1, a9 + v20);
  v25 = (a9 + v19[8]);
  *v25 = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v26 = (a9 + v19[9]);
  *v26 = a6;
  v26[1] = a7;
  v26[2] = a8;
  *(a9 + v19[6]) = a10;
  v27 = a9 + v19[10];
  *v27 = a11;
  *(v27 + 8) = a12;
  *(v27 + 16) = a13;
  return result;
}

uint64_t sub_23D9D1374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v36 = a8;
  v34 = a6;
  v35 = a7;
  v33 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43E8, &qword_23D9DC0C0);
  v22 = (a9 + v21[13]);
  *v22 = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[15];
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B8, &qword_23D9DBE20);
  sub_23D9DA3A4();
  v24 = v40;
  *v23 = v39;
  *(v23 + 2) = v24;
  v25 = v21[16];
  v26 = sub_23D9D88A4();
  (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  sub_23D91F2DC(v20, v18, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  sub_23D91F344(v20, &unk_27E2F6A30, &qword_23D9E0BC0);
  v27 = a9 + v21[17];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = a9 + v21[18];
  LOBYTE(v37) = 0;
  result = sub_23D9DA3A4();
  v30 = *(&v39 + 1);
  *v28 = v39;
  *(v28 + 1) = v30;
  v31 = a9 + v21[14];
  v32 = v34;
  *v31 = v33;
  *(v31 + 1) = v32;
  *(v31 + 2) = v35;
  v31[24] = v36 & 1;
  return result;
}

uint64_t sub_23D9D1614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, uint64_t *a10)
{
  v37 = a7;
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a10);
  v23 = a9 + v22[13];
  *v23 = a1;
  *(v23 + 1) = a2;
  v23[16] = a3;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v24 = a9 + v22[15];
  v38 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA3A4();
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  v26 = v22[16];
  v27 = sub_23D9D88A4();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  sub_23D91F2DC(v21, v19, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  sub_23D91F344(v21, &unk_27E2F6A30, &qword_23D9E0BC0);
  v28 = a9 + v22[17];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = a9 + v22[18];
  v38 = 0;
  result = sub_23D9DA3A4();
  v31 = v40;
  *v29 = v39;
  *(v29 + 1) = v31;
  v32 = a9 + v22[14];
  v33 = v35;
  *v32 = v34;
  *(v32 + 1) = v33;
  *(v32 + 2) = v36;
  v32[24] = v37 & 1;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.init(label:selectedVoiceId:preferredLocale:dismissOnSelect:showLanguagePicker:languages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, unsigned __int8 a10, __int128 a11, uint64_t a12)
{
  v46 = a8;
  v45 = a7;
  v42 = a5;
  v43 = a6;
  v39 = a3;
  v37 = a2;
  v44 = a10;
  v40 = a12;
  v41 = a4;
  v38 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v22 = v21[5];
  v23 = sub_23D9D89C4();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = v21[9];
  v25 = sub_23D9D8C74();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  sub_23D91F2DC(v20, v17, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  sub_23D91F344(v20, &qword_27E2F4460, &qword_23D9DC2A0);
  v26 = &a9[v21[11]];
  v47 = 0;
  sub_23D9DA3A4();
  v27 = v49;
  *v26 = v48;
  *(v26 + 1) = v27;
  v28 = v21[12];
  *&a9[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  v29 = v21[13];
  *&a9[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  v30 = v37;
  *a9 = a1;
  *(a9 + 1) = v30;
  v31 = &a9[v21[8]];
  v33 = v41;
  v32 = v42;
  *v31 = v39;
  *(v31 + 1) = v33;
  *(v31 + 2) = v32;
  *(v31 + 3) = v43;
  v34 = &a9[v21[10]];
  *v34 = v38;
  *(v34 + 2) = v40;
  result = sub_23D93DA98(v45, &a9[v22]);
  a9[v21[7]] = v46;
  a9[v21[6]] = v44;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AXSUIGenericVoiceSelectionCell.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.preferredLocale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 20);

  return sub_23D93DA98(a1, v3);
}

uint64_t AXSUIGenericVoiceSelectionCell.showLanguagePicker.setter(char a1)
{
  result = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.dismissOnSelect.setter(char a1)
{
  result = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*AXSUIGenericVoiceSelectionCell.selectedVoiceId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v9 = v5[2];
  v8 = v5[3];
  v4[14] = v9;
  v4[15] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850]();
  return sub_23D9D82FC;
}

uint64_t AXSUIGenericVoiceSelectionCell.languages.getter()
{
  v1 = v0 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40);
  v4[1] = *v1;
  v5 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850](v4, v2);
  return v4[0];
}

void *sub_23D9D1F7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40);
  v6[1] = *v3;
  v7 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  result = MEMORY[0x23EEF3850](v6, v4);
  *a2 = v6[0];
  return result;
}

uint64_t sub_23D9D1FF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40));
  v5 = *v3;
  v6 = *(v3 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t AXSUIGenericVoiceSelectionCell.languages.setter()
{
  v1 = (v0 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t (*AXSUIGenericVoiceSelectionCell.languages.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850]();
  return sub_23D9D8300;
}

uint64_t AXSUIGenericVoiceSelectionCell.$languages.getter()
{
  v1 = (v0 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 40));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  sub_23D9DA584();
  return v3;
}

uint64_t sub_23D9D2214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  sub_23D91F2DC(v1 + *(v12 + 48), v11, &qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double AXSUIGenericVoiceSelectionCell.cellView.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9D2214(v8);
  v9 = sub_23D9D9654();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v24 = sub_23D9D9AB4();
    LOBYTE(v25) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v24 = sub_23D9D99B4();
    LOBYTE(v25) = 1;
    sub_23D93FC00();
  }

  *a1 = sub_23D9DA764();

  sub_23D9D25F0(v2, &v14);
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = v14;
  v20 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v24 = v14;
  v25 = v15;
  sub_23D91F2DC(&v19, v13, &qword_27E2F7698, &unk_23D9E3528);
  sub_23D91F344(&v24, &qword_27E2F7698, &unk_23D9E3528);

  v10 = v19;
  *(a1 + 24) = v20;
  v11 = v22;
  *(a1 + 40) = v21;
  *(a1 + 56) = v11;
  result = *&v23;
  *(a1 + 72) = v23;
  *(a1 + 8) = v10;
  return result;
}

uint64_t sub_23D9D25F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41[-v11];
  v13 = a1[1];
  v47 = *a1;
  v48 = v13;
  sub_23D91B650();

  v45 = sub_23D9D9F04();
  v15 = v14;
  v44 = v16;
  v18 = v17;
  LODWORD(v13) = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3B4();
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v24 = v23;
    v26 = v25;
    (*(v5 + 8))(v8, v4);
    v47 = v24;
    v48 = v26;
    v27 = sub_23D9D9F04();
    v29 = v28;
    v43 = v18;
    v31 = v30;
    sub_23D9DA2F4();
    v19 = sub_23D9D9EB4();
    v20 = v32;
    v42 = v33;
    v22 = v34;

    v35 = v31 & 1;
    v18 = v43;
    sub_23D9274BC(v27, v29, v35);

    v21 = v42 & 1;
    sub_23D91E0AC(v19, v20, v42 & 1);
  }

  v36 = v44 & 1;
  LOBYTE(v47) = v44 & 1;
  v46 = 1;
  v37 = v45;
  sub_23D91E0AC(v45, v15, v44 & 1);

  sub_23D992AF4(v19, v20, v21, v22);
  sub_23D992B38(v19, v20, v21, v22);
  v38 = v47;
  v39 = v46;
  *a2 = v37;
  *(a2 + 8) = v15;
  *(a2 + 16) = v38;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 40) = v39;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  sub_23D992B38(v19, v20, v21, v22);
  sub_23D9274BC(v37, v15, v36);
}

uint64_t sub_23D9D2958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  sub_23D91F2DC(v1 + *(v12 + 52), v11, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9574();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D9D2B60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v81 - v5;
  v6 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7738, &qword_23D9E3740);
  v10 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v87 = &v81 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7740, &qword_23D9E3748);
  v89 = *(v99 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v99);
  v88 = &v81 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7748, &unk_23D9E3750);
  v14 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v15;
  v16 = sub_23D9D99A4();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v16);
  v91 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CE8, &unk_23D9DE890);
  v22 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v24 = &v81 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7750, &qword_23D9E3760);
  *&v85 = *(v94 - 8);
  v25 = *(v85 + 64);
  MEMORY[0x28223BE20](v94);
  v27 = &v81 - v26;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7758, &qword_23D9E3768);
  v28 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v31 = &v81 - v30;
  if (*(v2 + v19[6]) == 1)
  {
    v89 = v29;
    sub_23D9D7DD0(v2, &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIGenericVoiceSelectionCell);
    v32 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v33 = swift_allocObject();
    sub_23D9D805C(&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for AXSUIGenericVoiceSelectionCell);
    sub_23D93B644(sub_23D9D8264, v33, v24);
    v34._countAndFlagsBits = 0x45474155474E414CLL;
    v34._object = 0xEE00454C5449545FLL;
    *v103 = AXSUILocString(_:)(v34);
    v35 = sub_23D91F01C(&qword_27E2F4CE0, &qword_27E2F4CE8, &unk_23D9DE890);
    v36 = sub_23D91B650();
    v37 = v90;
    sub_23D9DA064();

    sub_23D91F344(v24, &qword_27E2F4CE8, &unk_23D9DE890);
    v39 = v91;
    v38 = v92;
    v40 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x277CDDDB8], v93);
    *v103 = v37;
    *&v103[8] = MEMORY[0x277D837D0];
    *&v103[16] = v35;
    *&v103[24] = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v94;
    sub_23D9DA144();
    (*(v38 + 8))(v39, v40);
    (*(v85 + 8))(v27, v42);
    v43 = v89;
    v44 = v95;
    (*(v89 + 16))(v97, v31, v95);
    swift_storeEnumTagMultiPayload();
    *v103 = v42;
    *&v103[8] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v45 = sub_23D9D81A8();
    *v103 = v98;
    *&v103[8] = v45;
    swift_getOpaqueTypeConformance2();
    sub_23D9D9B14();
    return (*(v43 + 8))(v31, v44);
  }

  else
  {
    v47 = v86;
    sub_23D91F2DC(v2 + v19[5], v86, &qword_27E2F4670, &qword_23D9DC650);
    v48 = v2 + v19[8];
    v49 = *(v48 + 1);
    *v103 = *v48;
    *&v103[8] = v49;
    *&v103[16] = *(v48 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    sub_23D9DA584();
    v85 = *v101;
    v84 = *&v101[16];
    v83 = v102;
    v50 = v2 + v19[10];
    *v103 = *v50;
    *&v103[8] = *(v50 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
    sub_23D9DA584();
    v82 = *v101;
    v81 = *&v101[8];
    v51 = *(v2 + v19[7]);
    v52 = v2 + v19[11];
    v53 = *v52;
    v54 = *(v52 + 1);
    v101[0] = v53;
    *&v101[8] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    sub_23D9DA3D4();
    v55 = *v103;
    v56 = v103[16];
    *v101 = 0;
    *&v101[8] = 0xE000000000000000;
    sub_23D9DA3A4();
    v57 = *&v103[16];
    *v9 = *v103;
    *(v9 + 2) = v57;
    v58 = v6[5];
    v59 = sub_23D9D89C4();
    (*(*(v59 - 8) + 56))(&v9[v58], 1, 1, v59);
    v60 = &v9[v6[7]];
    *v60 = swift_getKeyPath();
    v60[40] = 0;
    v61 = v6[11];
    *&v9[v61] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
    swift_storeEnumTagMultiPayload();
    sub_23D93DA98(v47, &v9[v58]);
    v62 = &v9[v6[8]];
    *v62 = v85;
    v63 = v83;
    *(v62 + 2) = v84;
    *(v62 + 3) = v63;
    v64 = &v9[v6[9]];
    *v64 = v82;
    *(v64 + 8) = v81;
    v9[v6[6]] = v51;
    v65 = &v9[v6[10]];
    *v65 = v55;
    v65[16] = v56;
    v67 = *v2;
    v66 = v2[1];
    v68 = v87;
    sub_23D9D7DD0(v9, v87, type metadata accessor for VoiceSelectionCellDetailView);
    v69 = v98;
    v70 = (v68 + *(v98 + 36));
    *v70 = v67;
    v70[1] = v66;

    sub_23D9D814C(v9);
    v72 = v91;
    v71 = v92;
    v73 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x277CDDDB8], v93);
    v74 = sub_23D9D81A8();
    v75 = v88;
    sub_23D9DA144();
    (*(v71 + 8))(v72, v73);
    sub_23D91F344(v68, &qword_27E2F7738, &qword_23D9E3740);
    v76 = v89;
    v77 = v99;
    (*(v89 + 16))(v97, v75, v99);
    swift_storeEnumTagMultiPayload();
    v78 = sub_23D91F01C(&qword_27E2F4CE0, &qword_27E2F4CE8, &unk_23D9DE890);
    v79 = sub_23D91B650();
    *v103 = v90;
    *&v103[8] = MEMORY[0x277D837D0];
    *&v103[16] = v78;
    *&v103[24] = v79;
    v80 = swift_getOpaqueTypeConformance2();
    *v103 = v94;
    *&v103[8] = v80;
    swift_getOpaqueTypeConformance2();
    *v103 = v69;
    *&v103[8] = v74;
    swift_getOpaqueTypeConformance2();
    sub_23D9D9B14();
    return (*(v76 + 8))(v75, v77);
  }
}

double sub_23D9D36B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  sub_23D91F2DC(a2 + v10[5], v9, &qword_27E2F4670, &qword_23D9DC650);
  v11 = (a2 + v10[8]);
  v12 = v11[1];
  v44 = *v11;
  *v45 = v12;
  *&v45[8] = *(v11 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  sub_23D9DA584();
  v38 = v41;
  v36 = v43;
  v37 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v13 = sub_23D9D8954();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23D9DC3E0;
  (*(v14 + 16))(v17 + v16, a1, v13);
  v18 = sub_23D93D8F8(v17);
  swift_setDeallocating();
  (*(v14 + 8))(v17 + v16, v13);
  swift_deallocClassInstance();
  *&v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v19 = v44;
  LOBYTE(v18) = *(a2 + v10[7]);
  v20 = (a2 + v10[11]);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v39) = v21;
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  v35 = *v45;
  sub_23D9DA3D4();
  v23 = v41;
  LOBYTE(v14) = v42;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_23D9DA3A4();
  v24 = v42;
  *a3 = v41;
  *(a3 + 16) = v24;
  v25 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v26 = v25[5];
  v27 = sub_23D9D89C4();
  (*(*(v27 - 8) + 56))(a3 + v26, 1, 1, v27);
  v28 = a3 + v25[7];
  *v28 = swift_getKeyPath();
  *(v28 + 40) = 0;
  v29 = v25[11];
  *(a3 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  sub_23D93DA98(v9, a3 + v26);
  v30 = a3 + v25[8];
  *v30 = v38;
  v31 = v36;
  *(v30 + 16) = v37;
  *(v30 + 24) = v31;
  v32 = a3 + v25[9];
  *v32 = v19;
  result = *&v35;
  *(v32 + 8) = v35;
  *(a3 + v25[6]) = v18;
  v34 = a3 + v25[10];
  *v34 = v23;
  *(v34 + 16) = v14;
  return result;
}

uint64_t AXSUIGenericVoiceSelectionCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4260, &qword_23D9DBEA0);
  v3 = *(v2 - 8);
  v86 = (v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v73 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76A0, &qword_23D9E3538);
  v6 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v76 = &v73 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76A8, &unk_23D9E3540);
  v77 = *(v75 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  v10 = &v73 - v9;
  v11 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v12 = (v11 - 8);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = v15;
  sub_23D9D7DD0(v1, &v73 - v15, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v82 = *(v13 + 80);
  v17 = swift_allocObject();
  sub_23D9D805C(&v73 - v15, v17 + v16, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  v89 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76B0, &qword_23D9E3550);
  sub_23D9D47C8();
  sub_23D9DA404();
  v18 = (v1 + v12[13]);
  LODWORD(v84) = *v18;
  v83 = *(v18 + 1);
  LOBYTE(v93) = v84;
  v94 = v83;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  v19 = sub_23D9DA3B4();
  LOBYTE(v93) = v90;
  MEMORY[0x28223BE20](v19);
  v78 = type metadata accessor for AXSUIGenericVoiceSelectionCell;
  sub_23D9D7DD0(v1, &v73 - v15, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  v79 = v16;
  v20 = swift_allocObject();
  sub_23D9D805C(&v73 - v15, v20 + v16, type metadata accessor for AXSUIGenericVoiceSelectionCell);
  sub_23D91F01C(&qword_27E2F76C8, &qword_27E2F76A8, &unk_23D9E3540);
  v21 = v76;
  v22 = v75;
  sub_23D9DA1E4();

  (*(v77 + 8))(v10, v22);
  v23 = v1 + v12[10];
  v24 = v1;
  v25 = *(v23 + 8);
  v93 = *v23;
  v94 = v25;
  v95 = *(v23 + 16);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](&v90, v26);
  v27 = v90;
  v28 = v91;
  v29 = v12[11];
  v30 = (v21 + *(v85 + 36));
  v31 = type metadata accessor for AXSUIVoiceLoader();
  v32 = *(v31 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v74 = v24;
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  *v30 = v27;
  v30[1] = v28;
  v34 = v30 + *(v31 + 24);
  *v34 = KeyPath;
  v34[8] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v73 - v38;
  sub_23D9D9B54();
  sub_23D9D4D68();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  sub_23D9D9FA4();
  (*(v36 + 8))(v39, v35);
  sub_23D9D4EA8(v21);
  LOBYTE(v90) = v84;
  v91 = v83;
  v40 = sub_23D9DA3D4();
  v41 = v93;
  v42 = v94;
  LOBYTE(v30) = v95;
  MEMORY[0x28223BE20](v40);
  v43 = v81;
  v44 = v78;
  sub_23D9D7DD0(v24, &v73 - v81, v78);
  v45 = v79;
  v46 = v82;
  v47 = swift_allocObject();
  sub_23D9D805C(&v73 - v43, v47 + v45, v44);
  v90 = v41;
  v91 = v42;
  v92 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();
  v48 = v93;
  v49 = v94;
  LOBYTE(v30) = v95;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_23D9D4F10;
  *(v50 + 24) = v47;
  sub_23D9D1614(v48, v49, v30, sub_23D99275C, v50, 0, 0, &qword_27E2F7728, (v88 + *(v86 + 11)), &qword_23D9E36D8);

  MEMORY[0x28223BE20](v51);
  sub_23D9D7DD0(v74, &v73 - v43, v44);
  sub_23D9DA9B4();
  v52 = sub_23D9DA9A4();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  *(v53 + 16) = v52;
  *(v53 + 24) = v54;
  sub_23D9D805C(&v73 - v43, v53 + ((v46 + 32) & ~v46), v44);
  v55 = sub_23D9DA9F4();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = &v73 - v58;
  sub_23D9DA9C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v85 = sub_23D9D9614();
    v86 = &v73;
    v84 = *(v85 - 8);
    v60 = *(v84 + 64);
    MEMORY[0x28223BE20](v85);
    v62 = &v73 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_23D9DAE64();

    v93 = 0xD000000000000042;
    v94 = 0x800000023D9E4E00;
    v90 = 135;
    v63 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v63);

    v65 = MEMORY[0x28223BE20](v64);
    (*(v56 + 16))(&v73 - v58, &v73 - v58, v55, v65);
    sub_23D9D9604();
    (*(v56 + 8))(&v73 - v58, v55);
    v66 = v87;
    sub_23D9D6CFC(v88, v87);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4268, &qword_23D9DBEA8);
    return (*(v84 + 32))(v66 + *(v67 + 36), v62, v85);
  }

  else
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4270, &qword_23D9DBEB0);
    v70 = v87;
    v71 = (v87 + *(v69 + 36));
    v72 = sub_23D9D9584();
    (*(v56 + 32))(&v71[*(v72 + 20)], v59, v55);
    *v71 = &unk_23D9E3590;
    *(v71 + 1) = v53;
    return sub_23D9D6CFC(v88, v70);
  }
}

uint64_t sub_23D9D4510(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9D4588()
{
  v1 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D9D4510(v2);
}

double sub_23D9D45E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9D2214(v8);
  v9 = sub_23D9D9654();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v25 = sub_23D9D9AB4();
    LOBYTE(v26) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v25 = sub_23D9D99B4();
    LOBYTE(v26) = 1;
    sub_23D93FC00();
  }

  v10 = sub_23D9DA764();

  sub_23D9D25F0(a1, &v15);
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v20 = v15;
  v21 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v25 = v15;
  v26 = v16;
  sub_23D91F2DC(&v20, v14, &qword_27E2F7698, &unk_23D9E3528);
  sub_23D91F344(&v25, &qword_27E2F7698, &unk_23D9E3528);

  *a2 = v10;
  v11 = v20;
  *(a2 + 24) = v21;
  v12 = v23;
  *(a2 + 40) = v22;
  *(a2 + 56) = v12;
  result = *&v24;
  *(a2 + 72) = v24;
  *(a2 + 8) = v11;
  return result;
}

unint64_t sub_23D9D47C8()
{
  result = qword_27E2F76B8;
  if (!qword_27E2F76B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76B0, &qword_23D9E3550);
    sub_23D91F01C(&qword_27E2F4DA0, &qword_27E2F4DA8, &unk_23D9DD4F0);
    sub_23D91F01C(&qword_27E2F76C0, &qword_27E2F7698, &unk_23D9E3528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F76B8);
  }

  return result;
}

void sub_23D9D48AC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_23D9D9574();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    v11 = v8;
    v12 = a3 + *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) + 32);
    v13 = *(v12 + 8);
    v15[2] = *v12;
    v15[3] = v13;
    v16 = *(v12 + 16);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    MEMORY[0x23EEF3850](v15, v14);
    if (v15[1])
    {
    }

    else
    {
      sub_23D9D2958(v10);
      sub_23D9D9564();
      (*(v6 + 8))(v10, v11);
    }
  }
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = sub_23D9D89C4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = (v3 + v1[8]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[3];

  v12 = v3 + v1[9];
  v13 = sub_23D9D8C74();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610) + 28));

  v16 = (v3 + v1[10]);
  v17 = *v16;

  v18 = v16[1];

  v19 = v16[2];

  v20 = *(v3 + v1[11] + 8);

  v21 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_23D9D9664();
    (*(*(v22 - 8) + 8))(v3 + v21, v22);
  }

  else
  {
    v23 = *(v3 + v21);
  }

  v24 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_23D9D9574();
    (*(*(v25 - 8) + 8))(v3 + v24, v25);
  }

  else
  {
    v26 = *(v3 + v24);
  }

  return swift_deallocObject();
}

void sub_23D9D4CE0(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23D9D48AC(a1, a2, v6);
}

unint64_t sub_23D9D4D68()
{
  result = qword_27E2F76D0;
  if (!qword_27E2F76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76A0, &qword_23D9E3538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76A8, &unk_23D9E3540);
    sub_23D91F01C(&qword_27E2F76C8, &qword_27E2F76A8, &unk_23D9E3540);
    swift_getOpaqueTypeConformance2();
    sub_23D9D6E2C(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F76D0);
  }

  return result;
}

uint64_t sub_23D9D4EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76A0, &qword_23D9E3538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9D4F10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23D9D2B60(a1);
}

uint64_t sub_23D9D4F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v4 = sub_23D9DAF04();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  sub_23D9DA9B4();
  v3[14] = sub_23D9DA9A4();
  v8 = sub_23D9DA994();
  v3[15] = v8;
  v3[16] = v7;

  return MEMORY[0x2822009F8](sub_23D9D5068, v8, v7);
}

uint64_t sub_23D9D5068()
{
  v1 = *(v0 + 104);
  sub_23D9DB024();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_23D9D5134;
  v3 = *(v0 + 104);

  return sub_23D9C9FEC(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_23D9D5134()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = v2[13];
  v7 = v2[12];
  v8 = v2[11];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[15];
    v10 = v3[16];
    v11 = sub_23D9D82EC;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[15];
    v10 = v3[16];
    v11 = sub_23D9D52C8;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23D9D52C8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  v3 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v4 = v2 + *(v3 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](v7);
  if (*(v0 + 56))
  {
  }

  else
  {
    v8 = (*(v0 + 80) + *(v3 + 44));
    v9 = *v8;
    v10 = *(v8 + 1);
    *(v0 + 64) = v9;
    *(v0 + 72) = v10;
    *(v0 + 144) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    sub_23D9DA3C4();
  }

  v11 = *(v0 + 104);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23D9D53D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VoiceSelectionCellDetailView(0);
  sub_23D91F2DC(v1 + *(v8 + 28), v11, &qword_27E2F7730, qword_23D9E36E0);
  if (v12 == 1)
  {
    return sub_23D95EBF8(v11, a1);
  }

  sub_23D9DACD4();
  v10 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_23D9D5568(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  v3 = *(v2 + 8);
  v6[2] = *v2;
  v6[3] = v3;
  v7 = *(v2 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](v6, v4);
  return v6[0];
}

double sub_23D9D55D8@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  v9 = *v4;
  v10 = v5;
  v11 = *(v4 + 1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](&v8, v6);
  result = *&v8;
  *a3 = v8;
  return result;
}

uint64_t sub_23D9D5658(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 32));
  v9 = *v7;
  v10 = v7[1];
  v11 = *(v7 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  return sub_23D9DA564();
}

uint64_t sub_23D9D56F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (v3 + *(a3(0) + 32));
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  return sub_23D9DA564();
}

uint64_t (*VoiceSelectionCellDetailView.selectedVoice.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v9 = v5[2];
  v8 = v5[3];
  v4[14] = v9;
  v4[15] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;

  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850]();
  return sub_23D9D5844;
}

void sub_23D9D5848(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[16];
  v7 = v2[14];
  v2[5] = v3;
  v2[6] = v7;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_23D9DA564();

    v8 = v2[9];
  }

  else
  {
    sub_23D9DA564();
  }

  free(v2);
}

uint64_t sub_23D9D5938(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  sub_23D9DA584();
  return v4;
}

uint64_t VoiceSelectionCellDetailView.languages.getter()
{
  v1 = v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36);
  v4[1] = *v1;
  v5 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850](v4, v2);
  return v4[0];
}

void *sub_23D9D5A14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36);
  v6[1] = *v3;
  v7 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  result = MEMORY[0x23EEF3850](v6, v4);
  *a2 = v6[0];
  return result;
}

uint64_t sub_23D9D5A90(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36));
  v5 = *v3;
  v6 = *(v3 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t VoiceSelectionCellDetailView.languages.setter()
{
  v1 = (v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  return sub_23D9DA564();
}

uint64_t (*VoiceSelectionCellDetailView.languages.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  MEMORY[0x23EEF3850]();
  return sub_23D9D5C40;
}

void sub_23D9D5C44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v5 = v2[11];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_23D9DA564();

    v6 = v2[6];
  }

  else
  {
    sub_23D9DA564();
  }

  free(v2);
}

uint64_t VoiceSelectionCellDetailView.$languages.getter()
{
  v1 = (v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 36));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  sub_23D9DA584();
  return v3;
}

uint64_t VoiceSelectionCellDetailView.sheetOpen.getter()
{
  v1 = (v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  MEMORY[0x23EEF3850](&v6, v4);
  return v6;
}

void *sub_23D9D5DE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  result = MEMORY[0x23EEF3850](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_23D9D5E5C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

uint64_t VoiceSelectionCellDetailView.sheetOpen.setter()
{
  v1 = (v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

void (*VoiceSelectionCellDetailView.sheetOpen.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  MEMORY[0x23EEF3850]();
  return sub_23D9D6004;
}

void sub_23D9D6004(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_23D9DA564();

  free(v1);
}

uint64_t VoiceSelectionCellDetailView.$sheetOpen.getter()
{
  v1 = (v0 + *(type metadata accessor for VoiceSelectionCellDetailView(0) + 40));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA584();
  return v3;
}

uint64_t sub_23D9D60E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for VoiceSelectionCellDetailView(0);
  sub_23D91F2DC(v1 + *(v12 + 44), v11, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9574();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D9D62F0()
{
  v1 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = v0 + *(v4 + 40);
  v6 = *(v5 + 8);
  v11 = *v5;
  v12 = v6;
  v13 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  sub_23D9DA584();
  sub_23D9D7DD0(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceSelectionCellDetailView);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_23D9D805C(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for VoiceSelectionCellDetailView);
  sub_23D9DA524();

  return v11;
}

uint64_t sub_23D9D649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D9D9574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for VoiceSelectionCellDetailView(0);
  if (*(a3 + *(result + 24)) == 1)
  {
    sub_23D9D60E8(v8);
    sub_23D9D9564();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t VoiceSelectionCellDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23D9D9B74();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F76D8, &unk_23D9E3598);
  v9 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v11 = v22 - v10;
  v12 = type metadata accessor for VoiceSelectionCellDetailView(0);
  sub_23D91F2DC(v1 + *(v12 + 20), v8, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D9D53D8(&v36);
  v22[4] = sub_23D9D62F0();
  v22[3] = v13;
  v22[2] = v14;
  v22[1] = v15;
  v16 = *v1;
  v24 = v1[1];
  v25 = v16;
  v23 = v1[2];
  v33 = v16;
  v34 = v24;
  v35 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3D4();
  v17 = v1 + *(v12 + 36);
  v31 = *v17;
  v32 = *(v17 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
  sub_23D9DA584();
  sub_23D9D9154();
  KeyPath = swift_getKeyPath();
  v19 = &v11[*(v26 + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  v31 = v25;
  *&v32 = v24;
  *(&v32 + 1) = v23;
  sub_23D9DA3D4();
  v20 = v27;
  sub_23D9D9B64();
  sub_23D9D6D70();
  sub_23D9D9F94();

  (*(v29 + 8))(v20, v30);
  return sub_23D91F344(v11, &qword_27E2F76D8, &unk_23D9E3598);
}

uint64_t sub_23D9D68E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23D9D691C()
{
  v1 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[5];
  v8 = sub_23D9D89C4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + v1[8]);
  v11 = *v10;

  v12 = v10[1];

  v13 = v10[3];

  v14 = v5 + v1[9];
  v15 = sub_23D9D8C74();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610) + 28));

  v18 = (v5 + v1[10]);
  v19 = *v18;

  v20 = v18[1];

  v21 = v18[2];

  v22 = *(v5 + v1[11] + 8);

  v23 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_23D9D9664();
    (*(*(v24 - 8) + 8))(v5 + v23, v24);
  }

  else
  {
    v25 = *(v5 + v23);
  }

  v26 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_23D9D9574();
    (*(*(v27 - 8) + 8))(v5 + v26, v27);
  }

  else
  {
    v28 = *(v5 + v26);
  }

  return swift_deallocObject();
}

uint64_t sub_23D9D6C20()
{
  v2 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D9D4F74(v4, v5, v0 + v3);
}

uint64_t sub_23D9D6CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4260, &qword_23D9DBEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9D6D70()
{
  result = qword_27E2F76E0;
  if (!qword_27E2F76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76D8, &unk_23D9E3598);
    sub_23D9D6E2C(&qword_27E2F76E8, MEMORY[0x277D707B0]);
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F76E0);
  }

  return result;
}

uint64_t sub_23D9D6E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9D6F88(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_23D9D7180(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_23D9D7364()
{
  sub_23D9D75B8(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23D9D7AEC(319, &qword_27E2F7700, &qword_27E2F4458, &qword_23D9DD3A0, MEMORY[0x277CE1200]);
    if (v1 <= 0x3F)
    {
      sub_23D9D7AEC(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
      if (v2 <= 0x3F)
      {
        sub_23D9D7AEC(319, &qword_27E2F6E10, &qword_27E2F4778, &qword_23D9DC800, MEMORY[0x277CE1200]);
        if (v3 <= 0x3F)
        {
          sub_23D9D7B50(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
          if (v4 <= 0x3F)
          {
            sub_23D9D75B8(319, &qword_27E2F4D58, MEMORY[0x277CDFA20], MEMORY[0x277CDF470]);
            if (v5 <= 0x3F)
            {
              sub_23D9D75B8(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
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

void sub_23D9D75B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23D9D7630(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23D9D7780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D9D78BC()
{
  sub_23D9D7B50(319, &qword_27E2F48E0, MEMORY[0x277D837D0], MEMORY[0x277CE10B0]);
  if (v0 <= 0x3F)
  {
    sub_23D9D75B8(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23D9D7AEC(319, &qword_27E2F67D8, &qword_27E2F67E0, "XO", MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        sub_23D9D7AEC(319, &qword_27E2F7700, &qword_27E2F4458, &qword_23D9DD3A0, MEMORY[0x277CE1200]);
        if (v3 <= 0x3F)
        {
          sub_23D9D7AEC(319, &qword_27E2F6E10, &qword_27E2F4778, &qword_23D9DC800, MEMORY[0x277CE1200]);
          if (v4 <= 0x3F)
          {
            sub_23D9D7B50(319, &qword_27E2F4CB0, MEMORY[0x277D839B0], MEMORY[0x277CE1200]);
            if (v5 <= 0x3F)
            {
              sub_23D9D75B8(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
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

void sub_23D9D7AEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23D9D7B50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23D9D7BE0()
{
  result = qword_27E2F7718;
  if (!qword_27E2F7718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4260, &qword_23D9DBEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F76A0, &qword_23D9E3538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
    sub_23D9D4D68();
    sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F7720, &qword_27E2F7728, &qword_23D9E36D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7718);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFQOyAA15ModifiedContentVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyALyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA0O0VyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVyAA03AnyV0VGAA05TupleC0VyAA4TextV_AA6SpacerVA4_SgtGGG_SbQo_021AccessibilitySettingsB016AXSUIVoiceLoaderVG_AA014NavigationLinkoM0Vys5NeverOGQo_A12_28AXValueNavigationDestinationVySbAA012_ConditionalK0VyAcAE29navigationBarTitleDisplayModeyQrAA17NavigationBarItemV16TitleDisplayModeOFQOyAcAE15navigationTitleyQrqd__SyRd__lFQOyA12_20AXSUITTSLanguageListVyA12_024VoiceSelectionCellDetailC0VAA05EmptyC0VG_SSQo__Qo_AcAEA26_yQrA30_FQOyALyA35_A12_23PlatformNavigationTitleVG_Qo_GGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9D7DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9D7E38()
{
  v1 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 16);

  v6 = v1[5];
  v7 = sub_23D9D89C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v3 + v1[7];
  if (*(v9 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v10 = *v9;
  }

  v11 = (v3 + v1[8]);
  v12 = *v11;

  v13 = v11[1];

  v14 = v11[3];

  v15 = (v3 + v1[9]);
  v16 = *v15;

  v17 = v15[1];

  v18 = v15[2];

  v19 = (v3 + v1[10]);
  v20 = *v19;

  v21 = v19[1];

  v22 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_23D9D9574();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
    v24 = *(v3 + v22);
  }

  return swift_deallocObject();
}

uint64_t sub_23D9D805C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9D80C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VoiceSelectionCellDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9D649C(a1, a2, v6);
}

uint64_t sub_23D9D814C(uint64_t a1)
{
  v2 = type metadata accessor for VoiceSelectionCellDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D9D81A8()
{
  result = qword_27E2F7760;
  if (!qword_27E2F7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7738, &qword_23D9E3740);
    sub_23D9D6E2C(&qword_27E2F7768, type metadata accessor for VoiceSelectionCellDetailView);
    sub_23D99B160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7760);
  }

  return result;
}

double sub_23D9D8264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXSUIGenericVoiceSelectionCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9D36B4(a1, v6, a2);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E2FB7E8 == -1)
  {
    if (qword_27E2FB7F0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E2FB7F0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E2FB7E0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E2FB7D4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E2FB7D4 >= a3)
      {
        result = dword_27E2FB7D8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E2FB7F0;
  if (qword_27E2FB7F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E2FB7F0 = MEMORY[0x28223BE68];
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
                    v28 = result;
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
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEF4510](v13);
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
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
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
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E2FB7D4, &dword_27E2FB7D8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}