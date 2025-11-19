uint64_t sub_23DB62968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F38, &qword_23DB83EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v30 - v14;
  v30 = v6;
  v16 = *(v6 + 16);
  v16(&v30 - v14, a1, v5, v13);
  if (*(a2 + 18) == 1)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v32 = (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB87B80);
    v33 = v17;
    sub_23DA16E70();
    v18 = sub_23DB6FD8C();
    v20 = v19;
    v22 = v21;
    v24 = v23 & 1;
    sub_23DA6D470(v18, v19, v23 & 1);
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
    v22 = 0;
  }

  (v16)(v10, v15, v5);
  v25 = v10;
  v26 = v31;
  (v16)(v31, v25, v5);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F40, &qword_23DB83EA8) + 48));
  sub_23DA6EC54(v18, v20, v24, v22);
  sub_23DA6EC98(v18, v20, v24, v22);
  *v27 = v18;
  v27[1] = v20;
  v27[2] = v24;
  v27[3] = v22;
  v28 = *(v30 + 8);
  v28(v15, v5);
  sub_23DA6EC98(v18, v20, v24, v22);
  return (v28)(v25, v5);
}

uint64_t sub_23DB62C20(uint64_t a1, void *a2)
{
  MEMORY[0x23EEF6D40](*a2, a2[1]);
  sub_23DB7072C();
  return sub_23DB6F2EC();
}

uint64_t sub_23DB62C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v61 = a3;
  v56 = sub_23DB6F2FC();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56, v6);
  v50 = v7;
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DE8, &qword_23DB83B68);
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v49, v10);
  v12 = &v48 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DF0, &qword_23DB83B70);
  v13 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53, v14);
  v16 = &v48 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DF8, &qword_23DB83B78);
  v59 = *(v60 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v60, v18);
  v55 = &v48 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E00, &qword_23DB83B80);
  v20 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54, v21);
  v58 = &v48 - v22;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E08, &qword_23DB83B88);
  v23 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v24);
  v26 = &v48 - v25;
  v62 = a2;
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E10, &qword_23DB83B90);
  sub_23DA17B80(&qword_27E300E18, &qword_27E300E10, &qword_23DB83B90);
  sub_23DB6F01C();
  v65 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v65 = *(a2 + 48);
  sub_23DB7038C();
  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v8 + 32))(v16, v12, v49);
  v27 = &v16[*(v53 + 36)];
  v28 = v70;
  *(v27 + 4) = v69;
  *(v27 + 5) = v28;
  *(v27 + 6) = v71;
  v29 = v66;
  *v27 = v65;
  *(v27 + 1) = v29;
  v30 = v68;
  *(v27 + 2) = v67;
  *(v27 + 3) = v30;
  v72 = *a2;
  v64 = v72;
  v31 = v52;
  v32 = v56;
  (*(v4 + 16))(v52, v51, v56);
  v33 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v34 = swift_allocObject();
  v35 = *(a2 + 16);
  *(v34 + 1) = *a2;
  *(v34 + 2) = v35;
  v36 = *(a2 + 48);
  *(v34 + 3) = *(a2 + 32);
  *(v34 + 4) = v36;
  (*(v4 + 32))(&v34[v33], v31, v32);
  sub_23DA0E2B4(&v72, v63, &qword_27E2FD230, &qword_23DB77ED0);
  sub_23DB64018(a2, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD230, &qword_23DB77ED0);
  sub_23DB6419C();
  sub_23DB64254();
  v37 = v55;
  sub_23DB700BC();

  sub_23DA17988(&v72, &qword_27E2FD230, &qword_23DB77ED0);
  sub_23DA17988(v16, &qword_27E300DF0, &qword_23DB83B70);
  v38 = swift_allocObject();
  v39 = *(a2 + 16);
  *(v38 + 1) = *a2;
  *(v38 + 2) = v39;
  v40 = *(a2 + 48);
  *(v38 + 3) = *(a2 + 32);
  *(v38 + 4) = v40;
  v41 = v58;
  (*(v59 + 32))(v58, v37, v60);
  v42 = (v41 + *(v54 + 36));
  *v42 = sub_23DA70240;
  v42[1] = v38;
  v43 = swift_allocObject();
  v44 = *(a2 + 16);
  *(v43 + 1) = *a2;
  *(v43 + 2) = v44;
  v45 = *(a2 + 48);
  *(v43 + 3) = *(a2 + 32);
  *(v43 + 4) = v45;
  sub_23DA17A54(v41, v26, &qword_27E300E00, &qword_23DB83B80);
  v46 = &v26[*(v57 + 36)];
  *v46 = sub_23DB6435C;
  v46[1] = v43;
  sub_23DA17A54(v26, v61, &qword_27E300E08, &qword_23DB83B88);
  sub_23DB64018(a2, v63);
  return sub_23DB64018(a2, v63);
}

uint64_t sub_23DB633F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E40, &qword_23DB83B98);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = *a1;
  KeyPath = swift_getKeyPath();
  v26 = 0;
  *&v21 = 0x6D6F74746F62;
  *(&v21 + 1) = 0xE600000000000000;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = 0;
  *&v23 = 0;
  BYTE8(v23) = 0;
  *&v24 = KeyPath;
  BYTE8(v24) = 0;
  v25 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E48, &qword_23DB83BC8);
  sub_23DB643D8();
  sub_23DB6FE7C();
  v27[2] = v23;
  v27[3] = v24;
  v28 = v25;
  v27[0] = v21;
  v27[1] = v22;
  sub_23DA17988(v27, &qword_27E300E48, &qword_23DB83BC8);
  v16 = sub_23DB7062C();
  v17 = &v13[*(v5 + 44)];
  *v17 = sub_23DB650F8;
  *(v17 + 1) = 0;
  *(v17 + 2) = v16;
  *(v17 + 3) = v18;
  sub_23DA0E2B4(v13, v9, &qword_27E300E40, &qword_23DB83B98);
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E60, &qword_23DB83BD0);
  sub_23DA0E2B4(v9, a2 + *(v19 + 48), &qword_27E300E40, &qword_23DB83B98);

  sub_23DA17988(v13, &qword_27E300E40, &qword_23DB83B98);
  sub_23DA17988(v9, &qword_27E300E40, &qword_23DB83B98);
}

void sub_23DB63610(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(*a1 + 16))
  {
    sub_23DB64DAC(*a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for CommandToPractice);
    sub_23DB7067C();
    sub_23DB7065C();

    MEMORY[0x28223BE20](v11, v12);
    *&v13[-16] = a2;
    *&v13[-8] = v9;
    sub_23DB6F19C();

    sub_23DB64E14(v9, type metadata accessor for CommandToPractice);
    return;
  }

  __break(1u);
}

uint64_t sub_23DB637A0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_23DB64010;
  a1[1] = v5;
  return sub_23DB64018(v10, &v9);
}

uint64_t sub_23DB6381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E68, &qword_23DB83BD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v31 - v10;
  *v11 = sub_23DB6F68C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v31[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E70, &qword_23DB83BE0) + 44);
  v37 = a1;
  v31[0] = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3 & 1;
  *(v12 + 33) = HIBYTE(a3) & 1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD230, &qword_23DB77ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E78, &qword_23DB83C08);
  sub_23DA17B80(&qword_27E2FD240, &qword_27E2FD230, &qword_23DB77ED0);
  sub_23DB650A8(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300E80, &unk_23DB83C10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3002C0, &qword_23DB80FC0);
  v15 = sub_23DB64518();
  v16 = sub_23DB6F37C();
  v17 = sub_23DB650A8(&qword_27E3002C8, MEMORY[0x277CDFCB0]);
  v33 = v16;
  v34 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_23DB704FC();
  LOBYTE(v16) = sub_23DB6FB9C();
  v19 = [objc_opt_self() currentDevice];
  [v19 userInterfaceIdiom];

  sub_23DB6EFAC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v32;
  sub_23DA17A54(v11, v32, &qword_27E300E68, &qword_23DB83BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EA0, &qword_23DB83C28);
  v30 = v28 + *(result + 36);
  *v30 = v16;
  *(v30 + 8) = v21;
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_23DB63B94(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  v6 = sub_23DB6FA8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300E80, &unk_23DB83C10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v26 - v15;
  sub_23DB64DAC(a1, v26 - v15, type metadata accessor for CommandToPractice);
  KeyPath = swift_getKeyPath();
  v18 = type metadata accessor for CommandCardWithCheckmark();
  v16[*(v18 + 20)] = v4 & 1;
  v19 = &v16[*(v18 + 24)];
  *v19 = KeyPath;
  v19[8] = 0;
  v20 = sub_23DB7062C();
  v21 = &v16[*(v12 + 36)];
  *v21 = sub_23DB650F8;
  *(v21 + 1) = 0;
  *(v21 + 2) = v20;
  *(v21 + 3) = v22;
  sub_23DB6FA7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3002C0, &qword_23DB80FC0);
  sub_23DB64518();
  v23 = sub_23DB6F37C();
  v24 = sub_23DB650A8(&qword_27E3002C8, MEMORY[0x277CDFCB0]);
  v26[0] = v23;
  v26[1] = v24;
  swift_getOpaqueTypeConformance2();
  sub_23DB6FEEC();
  (*(v7 + 8))(v11, v6);
  return sub_23DA17988(v16, &qword_27E300E80, &unk_23DB83C10);
}

uint64_t sub_23DB63E24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB6F7BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DB7018C();
  sub_23DB6F94C();
  sub_23DB6F14C();
  v10 = v9;
  result = (*(v3 + 8))(v7, v2);
  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_23DB63F24()
{
  sub_23DB6F85C();
  sub_23DB6F37C();
  sub_23DB650A8(&qword_27E3002C8, MEMORY[0x277CDFCB0]);
  return sub_23DB6F0FC();
}

uint64_t sub_23DB63FC8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23DB6381C(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

uint64_t sub_23DB64058()
{
  v1 = sub_23DB6F2FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));
  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_23DB64138()
{
  v1 = *(sub_23DB6F2FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));

  sub_23DB63610((v0 + 16), v2);
}

unint64_t sub_23DB6419C()
{
  result = qword_27E300E20;
  if (!qword_27E300E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300DF0, &qword_23DB83B70);
    sub_23DA17B80(&qword_27E300E28, &qword_27E300DE8, &qword_23DB83B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E20);
  }

  return result;
}

unint64_t sub_23DB64254()
{
  result = qword_27E300E30;
  if (!qword_27E300E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD230, &qword_23DB77ED0);
    sub_23DB650A8(&qword_27E300E38, type metadata accessor for CommandToPractice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E30);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_23DB6435C(uint64_t *a1)
{
  v4 = *(v1 + 64);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  return sub_23DB7039C();
}

unint64_t sub_23DB643D8()
{
  result = qword_27E300E50;
  if (!qword_27E300E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300E48, &qword_23DB83BC8);
    sub_23DB64464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E50);
  }

  return result;
}

unint64_t sub_23DB64464()
{
  result = qword_27E300E58;
  if (!qword_27E300E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E58);
  }

  return result;
}

uint64_t sub_23DB644B8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23DB644F0(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23DB63B94(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_23DB64518()
{
  result = qword_27E300E88;
  if (!qword_27E300E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300E80, &unk_23DB83C10);
    sub_23DB650A8(&qword_27E2FFE60, type metadata accessor for CommandCardWithCheckmark);
    sub_23DA17B80(&qword_27E300E90, &qword_27E300E98, &qword_23DB83C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300E88);
  }

  return result;
}

uint64_t type metadata accessor for CommandCardWithCheckmark()
{
  result = qword_27E300EA8;
  if (!qword_27E300EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DB646C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandToPractice(0);
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23DB647A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommandToPractice(0);
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

void sub_23DB6485C()
{
  type metadata accessor for CommandToPractice(319);
  if (v0 <= 0x3F)
  {
    sub_23DA557A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23DB64930()
{
  result = qword_27E300EC8;
  if (!qword_27E300EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EA0, &qword_23DB83C28);
    sub_23DA17B80(&qword_27E300ED0, &qword_27E300E68, &qword_23DB83BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300EC8);
  }

  return result;
}

unint64_t sub_23DB64A20()
{
  result = qword_27E300F10;
  if (!qword_27E300F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EF8, &qword_23DB83E78);
    sub_23DA17B80(&qword_27E300F18, &qword_27E300F20, &qword_23DB83E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F10);
  }

  return result;
}

unint64_t sub_23DB64AD8()
{
  result = qword_27E300F60;
  if (!qword_27E300F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F58, &qword_23DB83EC0);
    sub_23DB64B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F60);
  }

  return result;
}

unint64_t sub_23DB64B64()
{
  result = qword_27E300F68;
  if (!qword_27E300F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F70, &qword_23DB83EC8);
    sub_23DB64BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F68);
  }

  return result;
}

unint64_t sub_23DB64BF0()
{
  result = qword_27E300F78;
  if (!qword_27E300F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F80, &qword_23DB83ED0);
    sub_23DB64C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F78);
  }

  return result;
}

unint64_t sub_23DB64C7C()
{
  result = qword_27E300F88;
  if (!qword_27E300F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300F90, &unk_23DB83ED8);
    sub_23DAB5904();
    sub_23DA17B80(&qword_27E300F98, &qword_27E300FA0, &qword_23DB83EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300F88);
  }

  return result;
}

uint64_t sub_23DB64DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB64E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23DB64E78()
{
  result = qword_27E300FE0;
  if (!qword_27E300FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EF0, &qword_23DB83E70);
    sub_23DB64F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300FE0);
  }

  return result;
}

unint64_t sub_23DB64F04()
{
  result = qword_27E300FE8;
  if (!qword_27E300FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300EE0, &qword_23DB83E60);
    sub_23DA17B80(&qword_27E300FF0, &qword_27E300ED8, &qword_23DB83E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300FE8);
  }

  return result;
}

unint64_t sub_23DB64FC0()
{
  result = qword_27E300FF8;
  if (!qword_27E300FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E300FD0, &qword_23DB83F18);
    sub_23DA17B80(&qword_27E300FD8, &qword_27E300FC8, &qword_23DB83F10);
    sub_23DB650A8(&qword_27E2FCBD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300FF8);
  }

  return result;
}

uint64_t sub_23DB650A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AudiographExplorerState.__allocating_init(chartDescriptor:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  sub_23DB6C0D0(a1);
  v6 = v5;

  return v6;
}

void AudiographExplorerView.init()(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  *a1 = sub_23DB6F39C();
  a1[1] = v2;
  sub_23DAA967C(0, &qword_27E300D20, 0x277D75B40);
  v3 = [swift_getObjCClassFromMetadata() appearance];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

uint64_t AudiographExplorerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB7062C();
  v4 = v3;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  v5 = sub_23DB6F39C();
  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  v9 = sub_23DB700DC();
  result = sub_23DB6FB3C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_23DB6530C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB7062C();
  v4 = v3;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  v5 = sub_23DB6F39C();
  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  v9 = sub_23DB700DC();
  result = sub_23DB6FB3C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = result;
  return result;
}

uint64_t ElementsContainerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_23DB6F69C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301000, &unk_23DB83FC0);
  return sub_23DB6543C(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_23DB6543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011A0, &qword_23DB84790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38 - v12;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  v14 = sub_23DB6F39C();
  v16 = v15;
  v17 = sub_23DB6FB3C();
  LOBYTE(v54) = 0;
  if (a1)
  {
    *&v41 = a2;
    v44 = v17;
    v45 = v16;
    v18 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
    swift_beginAccess();
    v19 = v18[1];
    v54 = *v18;
    v55 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
    sub_23DB7038C();
    v20 = *(v50[0] + 32);

    v21 = [v20 series];

    sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
    v22 = sub_23DB709EC();

    v43 = v14;
    if (v22 >> 62)
    {
      v23 = sub_23DB70C3C();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 <= 1)
    {
      v26 = 0;
      v29 = 0;
      v28 = 0;
      v24 = 1;
    }

    else
    {
      v24 = sub_23DB6F39C();
      v26 = v25;
      v27 = sub_23DB6FB3C();
      LOBYTE(v54) = 1;
      v28 = v27;
      v29 = 1;
    }

    *v13 = sub_23DB6F69C();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011A8, &qword_23DB84798);
    sub_23DB658B8(a1, v41, &v13[*(v30 + 44)]);
    v31 = v42;
    v39 = v13;
    sub_23DA0E2B4(v13, v42, &qword_27E3011A0, &qword_23DB84790);
    *&v46 = v43;
    *(&v46 + 1) = v45;
    LOBYTE(v47[0]) = v44;
    *(v47 + 1) = v61[0];
    DWORD1(v47[0]) = *(v61 + 3);
    v41 = xmmword_23DB83FA0;
    v40 = xmmword_23DB83FB0;
    *(v47 + 8) = xmmword_23DB83FA0;
    *(&v47[1] + 8) = xmmword_23DB83FB0;
    BYTE8(v47[2]) = 0;
    a3[2] = v47[1];
    *(a3 + 41) = *(&v47[1] + 9);
    v32 = v47[0];
    *a3 = v46;
    a3[1] = v32;
    *&v48 = v24;
    *(&v48 + 1) = v26;
    *&v49[0] = v28;
    *(v49 + 8) = 0u;
    *(&v49[1] + 8) = 0u;
    BYTE8(v49[2]) = v29;
    v33 = v48;
    v34 = v49[0];
    v35 = v49[1];
    *(a3 + 105) = *(&v49[1] + 9);
    a3[5] = v34;
    a3[6] = v35;
    a3[4] = v33;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011B0, &qword_23DB847A0);
    sub_23DA0E2B4(v31, a3 + *(v36 + 80), &qword_27E3011A0, &qword_23DB84790);
    sub_23DA0E2B4(&v46, &v54, &qword_27E3011B8, &qword_23DB847A8);
    sub_23DA0E2B4(&v48, &v54, &qword_27E3011C0, &qword_23DB847B0);
    sub_23DA17988(v39, &qword_27E3011A0, &qword_23DB84790);
    sub_23DA17988(v31, &qword_27E3011A0, &qword_23DB84790);
    v50[0] = v24;
    v50[1] = v26;
    v50[2] = v28;
    v51 = 0u;
    v52 = 0u;
    v53 = v29;
    sub_23DA17988(v50, &qword_27E3011C0, &qword_23DB847B0);
    v54 = v43;
    v55 = v45;
    v56 = v44;
    *v57 = v61[0];
    *&v57[3] = *(v61 + 3);
    v58 = v41;
    v59 = v40;
    v60 = 0;
    return sub_23DA17988(&v54, &qword_27E3011B8, &qword_23DB847A8);
  }

  else
  {
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB658B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011C8, &qword_23DB847B8);
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v55 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011D0, &qword_23DB847C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v54 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011D8, &qword_23DB847C8);
  v14 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v15);
  v61 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011E0, &qword_23DB847D0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v24);
  v60 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = (v54 - v28);
  *v29 = sub_23DB7062C();
  v29[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011E8, &qword_23DB847D8);
  sub_23DB65E00(v29 + *(v31 + 44));
  v32 = sub_23DB6FB3C();
  v33 = v29 + *(v22 + 44);
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  v34 = sub_23DB6F39C();
  v56 = v35;
  v63 = a1;
  v64 = a2;
  v54[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3011F0, &qword_23DB847E0);
  sub_23DA17B80(&qword_27E3011F8, &qword_27E3011F0, &qword_23DB847E0);
  sub_23DB6FC9C();
  v36 = sub_23DB7062C();
  if (a1)
  {
    v38 = v36;
    v39 = v37;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v65)
    {
      v40 = 1;
      v42 = v58;
      v41 = v59;
    }

    else
    {
      v43 = v55;
      sub_23DB6F0AC();
      v42 = v58;
      v44 = v43;
      v41 = v59;
      (*(v58 + 32))(v13, v44, v59);
      v40 = 0;
    }

    (*(v42 + 56))(v13, v40, 1, v41);
    v45 = &v20[*(v57 + 36)];
    sub_23DA17A54(v13, v45, &qword_27E3011D0, &qword_23DB847C0);
    v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301200, &qword_23DB847E8) + 36));
    *v46 = v38;
    v46[1] = v39;
    v47 = v60;
    sub_23DA0E2B4(v29, v60, &qword_27E3011E0, &qword_23DB847D0);
    v48 = v61;
    sub_23DA0E2B4(v20, v61, &qword_27E3011D8, &qword_23DB847C8);
    v49 = v62;
    sub_23DA0E2B4(v47, v62, &qword_27E3011E0, &qword_23DB847D0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301208, &qword_23DB847F0);
    v51 = (v49 + *(v50 + 48));
    v52 = v56;
    *v51 = v34;
    v51[1] = v52;
    sub_23DA0E2B4(v48, v49 + *(v50 + 64), &qword_27E3011D8, &qword_23DB847C8);

    sub_23DA17988(v20, &qword_27E3011D8, &qword_23DB847C8);
    sub_23DA17988(v29, &qword_27E3011E0, &qword_23DB847D0);
    sub_23DA17988(v48, &qword_27E3011D8, &qword_23DB847C8);

    return sub_23DA17988(v47, &qword_27E3011E0, &qword_23DB847D0);
  }

  else
  {
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB65E00@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3012A8, &qword_23DB848A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16 - v9;
  ChartView.init()(&v20);
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  sub_23DB6DBB8();
  sub_23DB6FE7C();

  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  v11 = sub_23DB6F39C();
  v13 = v12;
  sub_23DA0E2B4(v10, v6, &qword_27E3012A8, &qword_23DB848A0);
  sub_23DA0E2B4(v6, a1, &qword_27E3012A8, &qword_23DB848A0);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3012B8, &qword_23DB848A8) + 48));
  *v14 = v11;
  v14[1] = v13;

  sub_23DA17988(v10, &qword_27E3012A8, &qword_23DB848A0);

  return sub_23DA17988(v6, &qword_27E3012A8, &qword_23DB848A0);
}

uint64_t sub_23DB65FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v118 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301210, &qword_23DB847F8);
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v104 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301218, &qword_23DB84800);
  v9 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108, v10);
  v12 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v104 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v110 = v104 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v109 = v104 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301220, &qword_23DB84808);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v114 = v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = v104 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301228, &qword_23DB84810);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v104 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301230, &qword_23DB84818);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v41 = v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v45 = v104 - v44;
  if (a1)
  {
    v111 = v16;
    v112 = v12;
    v113 = v8;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v119 = v45;
    if (v120)
    {
      v46 = 1;
    }

    else
    {
      type metadata accessor for AudiographExplorerState(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      v49 = sub_23DB6E9FC();
      v107 = v31;
      v51 = v50;

      v120 = v49;
      v121 = v51;
      sub_23DA16E70();
      v52 = sub_23DB6FD8C();
      v106 = v104;
      v120 = v52;
      v121 = v53;
      v122 = v54 & 1;
      v123 = v55;
      MEMORY[0x28223BE20](v52, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECF0, &qword_23DB84880);
      sub_23DB6D9EC();
      v31 = v107;
      sub_23DB6DB58(&qword_27E2FED20, &qword_27E2FECF0, &qword_23DB84880);
      v45 = v119;
      sub_23DB7052C();
      v56 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301280, &qword_23DB84888) + 36)];
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301270, &qword_23DB84840) + 28);
      v58 = sub_23DB6FD0C();
      (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
      *v56 = swift_getKeyPath();
      v59 = [objc_opt_self() secondarySystemBackgroundColor];
      v120 = sub_23DB700DC();
      *&v36[*(v31 + 36)] = sub_23DB7045C();
      sub_23DA17A54(v36, v45, &qword_27E301228, &qword_23DB84810);
      v46 = 0;
    }

    v60 = 1;
    (*(v32 + 56))(v45, v46, 1, v31);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v120 == 1)
    {
      type metadata accessor for AudiographExplorerState(0);
      v61 = swift_getObjCClassFromMetadata();
      v105 = v61;
      v62 = objc_opt_self();
      v107 = v30;
      v63 = v62;
      v64 = [v62 bundleForClass_];
      v65 = sub_23DB6E9FC();
      v67 = v66;

      v120 = v65;
      v121 = v67;
      v104[5] = sub_23DA16E70();
      v120 = sub_23DB6FD8C();
      v121 = v68;
      v122 = v69 & 1;
      v123 = v70;
      MEMORY[0x28223BE20](v120, v68);
      v104[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301240, &qword_23DB84828);
      v104[3] = sub_23DB6D9EC();
      v104[2] = sub_23DB6DA40();
      v104[1] = a1;
      v71 = v109;
      sub_23DB7052C();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301268, &qword_23DB84838);
      v73 = (v71 + *(v72 + 36));
      v104[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301270, &qword_23DB84840);
      v74 = *(v104[0] + 28);
      v75 = sub_23DB6FD0C();
      v106 = v41;
      v76 = v75;
      v77 = *(*(v75 - 8) + 56);
      v77(v73 + v74, 1, 1, v75);
      *v73 = swift_getKeyPath();
      v78 = objc_opt_self();
      v79 = [v78 secondarySystemBackgroundColor];
      v120 = sub_23DB700DC();
      v80 = sub_23DB7045C();
      v81 = v108;
      *(v71 + *(v108 + 36)) = v80;
      v82 = [v63 bundleForClass_];
      v83 = sub_23DB6E9FC();
      v85 = v84;

      v120 = v83;
      v121 = v85;
      v120 = sub_23DB6FD8C();
      v121 = v86;
      v122 = v87 & 1;
      v123 = v88;
      MEMORY[0x28223BE20](v120, v86);
      v89 = v110;
      sub_23DB7052C();
      v90 = v107;
      v91 = (v89 + *(v72 + 36));
      v77(v91 + *(v104[0] + 28), 1, 1, v76);
      *v91 = swift_getKeyPath();
      v92 = [v78 secondarySystemBackgroundColor];
      v120 = sub_23DB700DC();
      *(v89 + *(v81 + 36)) = sub_23DB7045C();
      v93 = v111;
      sub_23DA0E2B4(v71, v111, &qword_27E301218, &qword_23DB84800);
      v94 = v112;
      sub_23DA0E2B4(v89, v112, &qword_27E301218, &qword_23DB84800);
      v95 = v113;
      sub_23DA0E2B4(v93, v113, &qword_27E301218, &qword_23DB84800);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301278, &qword_23DB84878);
      sub_23DA0E2B4(v94, v95 + *(v96 + 48), &qword_27E301218, &qword_23DB84800);
      sub_23DA17988(v89, &qword_27E301218, &qword_23DB84800);
      sub_23DA17988(v71, &qword_27E301218, &qword_23DB84800);
      sub_23DA17988(v94, &qword_27E301218, &qword_23DB84800);
      v97 = v93;
      v41 = v106;
      sub_23DA17988(v97, &qword_27E301218, &qword_23DB84800);
      v30 = v90;
      sub_23DA17A54(v95, v90, &qword_27E301210, &qword_23DB847F8);
      v60 = 0;
    }

    v98 = v30;
    (*(v115 + 56))(v30, v60, 1, v116);
    v99 = v119;
    sub_23DA0E2B4(v119, v41, &qword_27E301230, &qword_23DB84818);
    v100 = v114;
    sub_23DA0E2B4(v98, v114, &qword_27E301220, &qword_23DB84808);
    v101 = v117;
    sub_23DA0E2B4(v41, v117, &qword_27E301230, &qword_23DB84818);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301238, &qword_23DB84820);
    sub_23DA0E2B4(v100, v101 + *(v102 + 48), &qword_27E301220, &qword_23DB84808);
    sub_23DA17988(v98, &qword_27E301220, &qword_23DB84808);
    sub_23DA17988(v99, &qword_27E301230, &qword_23DB84818);
    sub_23DA17988(v100, &qword_27E301220, &qword_23DB84808);
    return sub_23DA17988(v41, &qword_27E301230, &qword_23DB84818);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

id sub_23DB66CA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    result = [*(a1 + 16) summary];
    if (result)
    {
      v5 = result;
      sub_23DB708BC();

      sub_23DA16E70();
      result = sub_23DB6FD8C();
      v9 = v8 & 1;
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v7 = 0;
    }

    *a2 = result;
    a2[1] = v6;
    a2[2] = v9;
    a2[3] = v7;
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB66DB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301260, &qword_23DB84830);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - v10;
  if (a1)
  {

    v12 = sub_23DB69D70();

    v13 = *a2;
    swift_beginAccess();
    v14 = *(v12 + v13);

    if (*(v14 + 16))
    {
      v17 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301288, &qword_23DB84890);
      sub_23DB6EA8C();
      sub_23DA17B80(&qword_27E301290, &qword_27E301288, &qword_23DB84890);
      sub_23DB6D288(&qword_27E301298, type metadata accessor for DescriptionSectionItem);
      sub_23DB7050C();
      (*(v7 + 32))(a3, v11, v6);
      v15 = 0;
    }

    else
    {

      v15 = 1;
    }

    return (*(v7 + 56))(a3, v15, 1, v6);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB6704C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DescriptionSectionItem(0) + 20));
  v8 = *v3;
  v9 = v3[1];
  sub_23DA16E70();

  result = sub_23DB6FD8C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t View.platformAccessibilityAction(_:)()
{
  v0 = sub_23DB6F8DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6F8CC();
  sub_23DB6FF6C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_23DB67210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F67C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCEE8, &qword_23DB846E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301180, &qword_23DB846E8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v59 = &v52 - v19;
  if (a1)
  {
    swift_beginAccess();
    v20 = [*(a1 + 16) title];
    if (v20)
    {
      v56 = a2;
      v21 = v20;
      v22 = sub_23DB708BC();
      v57 = v16;
      v58 = v15;
      v23 = v22;
      v25 = v24;

      *&v69[0] = v23;
      *(&v69[0] + 1) = v25;
      sub_23DA16E70();
      v26 = sub_23DB6FD8C();
      v55 = v9;
      v28 = v27;
      LOBYTE(v21) = v29;
      v30 = sub_23DB6FBEC();
      (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
      sub_23DB6FC2C();
      sub_23DA17988(v14, &qword_27E2FCEE8, &qword_23DB846E0);
      v31 = sub_23DB6FD3C();
      v53 = v5;
      v54 = v4;
      v33 = v32;
      v35 = v34;

      sub_23DA16EC4(v26, v28, v21 & 1);

      v36 = sub_23DB6FD1C();
      v38 = v37;
      LOBYTE(v28) = v39;
      sub_23DA16EC4(v31, v33, v35 & 1);

      v40 = [objc_opt_self() labelColor];
      sub_23DB700DC();
      v41 = sub_23DB6FCDC();
      v43 = v42;
      LOBYTE(v33) = v44;
      v46 = v45;

      sub_23DA16EC4(v36, v38, v28 & 1);

      sub_23DB7062C();
      sub_23DB6F34C();
      v71 = v33 & 1;
      KeyPath = swift_getKeyPath();
      *&v60 = v41;
      *(&v60 + 1) = v43;
      LOBYTE(v61) = v33 & 1;
      *(&v61 + 1) = v46;
      v66 = v68[6];
      v67 = v68[7];
      v68[0] = v68[8];
      v62 = v68[2];
      v63 = v68[3];
      v64 = v68[4];
      v65 = v68[5];
      *&v68[1] = KeyPath;
      BYTE8(v68[1]) = 1;
      v48 = v55;
      sub_23DB6F66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFF8, &qword_23DB79C40);
      sub_23DB28374();
      v49 = v59;
      sub_23DB6FE8C();
      (*(v53 + 8))(v48, v54);
      v69[6] = v66;
      v69[7] = v67;
      v70[0] = v68[0];
      *(v70 + 9) = *(v68 + 9);
      v69[2] = v62;
      v69[3] = v63;
      v69[4] = v64;
      v69[5] = v65;
      v69[0] = v60;
      v69[1] = v61;
      sub_23DA17988(v69, &qword_27E2FDFF8, &qword_23DB79C40);
      v50 = v56;
      sub_23DA17A54(v49, v56, &qword_27E301180, &qword_23DB846E8);
      return (*(v57 + 56))(v50, 0, 1, v58);
    }

    else
    {
      return (*(v16 + 56))(a2, 1, 1, v15);
    }
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB67794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301138, &qword_23DB845F0);
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v58[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301140, &qword_23DB845F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v66 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v15);
  v65 = &v58[-v16];
  type metadata accessor for AudiographExplorerState(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_23DB6E9FC();
  v21 = v20;

  v72 = v19;
  v73 = v21;
  sub_23DA16E70();
  v22 = sub_23DB6FD8C();
  v24 = v23;
  v26 = v25;
  v27 = [objc_opt_self() labelColor];
  sub_23DB700DC();
  v28 = sub_23DB6FCDC();
  v60 = v29;
  v61 = v28;
  v59 = v30;
  v62 = v31;

  sub_23DA16EC4(v22, v24, v26 & 1);

  if (!a1)
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_23DB6EF0C();

  v32 = v72;
  v33 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  swift_beginAccess();
  v34 = *(a1 + v33);

  if ((v34 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](v32, v34);
  }

  else
  {
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v32 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v35 = *(v34 + 8 * v32 + 32);
  }

  v36 = sub_23DB6ADBC();
  v38 = v37;

  v70 = v36;
  v71 = v38;
  MEMORY[0x28223BE20](v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301148, &qword_23DB84648);
  sub_23DB6D7D0();
  sub_23DB6FCAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v32 = v70;
  v41 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  swift_beginAccess();
  v34 = *(a1 + v41);

  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_13:
    MEMORY[0x23EEF70C0](v32, v34);
    goto LABEL_10;
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    if (v32 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v34 + 8 * v32 + 32);

LABEL_10:

      v43 = sub_23DB6ADBC();
      v45 = v44;

      v68 = v43;
      v69 = v45;
      v46 = sub_23DB6FD8C();
      v48 = v47;
      v50 = v49;
      sub_23DA17B80(&qword_27E301168, &qword_27E301138, &qword_23DB845F0);
      v52 = v64;
      v51 = v65;
      sub_23DB6FF0C();
      sub_23DA16EC4(v46, v48, v50 & 1);

      (*(v63 + 8))(v9, v52);
      v53 = v66;
      sub_23DA0E2B4(v51, v66, &qword_27E301140, &qword_23DB845F8);
      v55 = v60;
      v54 = v61;
      *a3 = v61;
      *(a3 + 8) = v55;
      LOBYTE(v48) = v59 & 1;
      *(a3 + 16) = v59 & 1;
      *(a3 + 24) = v62;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301170, &unk_23DB84660);
      sub_23DA0E2B4(v53, a3 + *(v56 + 48), &qword_27E301140, &qword_23DB845F8);
      sub_23DA6D470(v54, v55, v48);

      sub_23DA17988(v51, &qword_27E301140, &qword_23DB845F8);
      sub_23DA17988(v53, &qword_27E301140, &qword_23DB845F8);
      sub_23DA16EC4(v54, v55, v48);
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB67E28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
      swift_getKeyPath();
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301160, &unk_23DB84650);
      sub_23DA52254();
      sub_23DB6D854();
      return sub_23DB704FC();
    }

    if (v5 < 0)
    {
      v9 = *(v3 + v4);
    }

    a1 = sub_23DB70C3C();
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(a1);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB67FBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2B8, &qword_23DB74308);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v26[-v10];
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;
  v27 = a2;
  v28 = a3;
  v29 = v12;

  sub_23DB703CC();
  if (a2)
  {
    v14 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    swift_beginAccess();
    v15 = *(a2 + v14);
    if ((v15 & 0xC000000000000001) != 0)
    {

      MEMORY[0x23EEF70C0](v12, v15);

      goto LABEL_6;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v12 + 32);

LABEL_6:
      v17 = sub_23DB6ADBC();
      v19 = v18;

      v30 = v17;
      v31 = v19;
      sub_23DA16E70();
      v20 = sub_23DB6FD8C();
      v22 = v21;
      v24 = v23;
      sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308);
      sub_23DB6FF0C();
      sub_23DA16EC4(v20, v22, v24 & 1);

      return (*(v7 + 8))(v11, v6);
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(0);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

void sub_23DB682A8(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF1C();
    sub_23DB6A008();
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    sub_23DB6F38C();
    __break(1u);
  }
}

uint64_t sub_23DB6837C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = a1;
    v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    a1 = swift_beginAccess();
    v7 = *(v4 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      MEMORY[0x23EEF70C0](a2, v7);

      goto LABEL_6;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v8 = *(v7 + 8 * a2 + 32);

LABEL_6:
      sub_23DB6ADBC();

      sub_23DA16E70();
      v9 = sub_23DB6FD8C();
      v11 = v10;
      v13 = v12;
      v14 = [objc_opt_self() labelColor];
      sub_23DB700DC();
      v15 = sub_23DB6FCDC();
      v17 = v16;
      v19 = v18;

      sub_23DA16EC4(v9, v11, v13 & 1);

      v20 = sub_23DB6FD1C();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      sub_23DA16EC4(v15, v17, v19 & 1);

      *a3 = v20;
      *(a3 + 8) = v22;
      *(a3 + 16) = v24 & 1;
      *(a3 + 24) = v26;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for AudiographExplorerState(a1);
  sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DB685D4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v10 = v5[1];
  *a5 = a1();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v12 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 44);
  return a4(v11, v10);
}

double sub_23DB6864C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v94 = a3;
  v93 = sub_23DB6F67C();
  v92 = *(v93 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v93, v5);
  v91 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_23DB6F9FC();
  v84 = *(v86 - 8);
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v86, v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010A8, &qword_23DB84538);
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v82, v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010B0, &qword_23DB84540);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010B8, &qword_23DB84548);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v79 - v25;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010C0, &qword_23DB84550);
  v90 = *(v88 - 8);
  v27 = *(v90 + 64);
  MEMORY[0x28223BE20](v88, v28);
  v81 = &v79 - v29;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010C8, &qword_23DB84558);
  v30 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89, v31);
  v83 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v87 = &v79 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010D0, &qword_23DB84560);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36, v39);
  v85 = &v79 - v40;
  v41 = swift_allocObject();
  v42 = v80;
  *(v41 + 16) = a1;
  *(v41 + 24) = v42;
  v95 = a1;
  v96 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010D8, &qword_23DB84568);
  sub_23DB6D4A0();
  sub_23DB703CC();
  sub_23DB7062C();
  sub_23DB6F34C();
  (*(v11 + 32))(v21, v15, v82);
  v43 = &v21[*(v17 + 44)];
  v44 = v104;
  *(v43 + 4) = v103;
  *(v43 + 5) = v44;
  *(v43 + 6) = v105;
  v45 = v100;
  *v43 = v99;
  *(v43 + 1) = v45;
  v46 = v102;
  *(v43 + 2) = v101;
  *(v43 + 3) = v46;
  v47 = [objc_opt_self() secondarySystemBackgroundColor];
  v48 = sub_23DB700DC();
  LOBYTE(a1) = sub_23DB6FB3C();
  sub_23DA17A54(v21, v26, &qword_27E3010B0, &qword_23DB84540);
  v49 = &v26[*(v22 + 36)];
  *v49 = v48;
  v49[8] = a1;
  sub_23DB6F9CC();
  v50 = sub_23DB6D588();
  v51 = v81;
  sub_23DB6FF8C();
  (*(v84 + 8))(v10, v86);
  sub_23DA17988(v26, &qword_27E3010B8, &qword_23DB84548);
  type metadata accessor for AudiographExplorerState(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = [objc_opt_self() bundleForClass_];
  v54 = sub_23DB6E9FC();
  v56 = v55;

  v97 = v54;
  v98 = v56;
  sub_23DA16E70();
  v57 = sub_23DB6FD8C();
  v59 = v58;
  v61 = v60;
  v97 = v22;
  v98 = v50;
  swift_getOpaqueTypeConformance2();
  v62 = v83;
  v63 = v88;
  sub_23DB6FF0C();
  sub_23DA16EC4(v57, v59, v61 & 1);

  (*(v90 + 8))(v51, v63);
  v64 = v91;
  sub_23DB6F65C();
  v65 = v87;
  sub_23DB6F27C();
  (*(v92 + 8))(v64, v93);
  sub_23DA17988(v62, &qword_27E3010C8, &qword_23DB84558);
  v66 = v85;
  v67 = &v85[*(v37 + 44)];
  v68 = *(sub_23DB6F32C() + 20);
  v69 = *MEMORY[0x277CE0118];
  v70 = sub_23DB6F63C();
  (*(*(v70 - 8) + 104))(&v67[v68], v69, v70);
  __asm { FMOV            V0.2D, #8.0 }

  *v67 = _Q0;
  *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  sub_23DA17A54(v65, v66, &qword_27E3010C8, &qword_23DB84558);
  LOBYTE(v69) = sub_23DB6FB3C();
  v76 = v94;
  sub_23DA17A54(v66, v94, &qword_27E3010D0, &qword_23DB84560);
  v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301110, &qword_23DB84580) + 36);
  *v77 = v69;
  result = 0.0;
  *(v77 + 8) = 0u;
  *(v77 + 24) = 0u;
  *(v77 + 40) = 1;
  return result;
}

void sub_23DB68F08(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_23DB7087C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301118, &qword_23DB845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  sub_23DB70C8C();
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_23DB6BF94(inited);
    swift_setDeallocating();
    sub_23DA17988(inited + 32, &qword_27E301120, &qword_23DB845D8);
    v5 = sub_23DB7080C();

    [v2 postNotificationName:v3 object:0 userInfo:v5];
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    sub_23DB6F38C();
    __break(1u);
  }
}

uint64_t sub_23DB69138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3010F0, &unk_23DB84570);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v14 - v6;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    type metadata accessor for AudiographExplorerState(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_23DB6E9FC();
    v12 = v11;

    v14[2] = v10;
    v14[3] = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    sub_23DA16E70();
    sub_23DB7030C();
    sub_23DA17B80(&qword_27E3010E8, &qword_27E3010F0, &unk_23DB84570);
    sub_23DB6FE7C();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    sub_23DB6D288(&qword_27E300AE0, type metadata accessor for AudiographExplorerState);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DB6948C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v33 = sub_23DB6F67C();
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v33, v10);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB6EFFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301098, &qword_23DB844F8);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v30 - v22;
  v34 = a1;
  v35 = a2;
  v36 = a3 & 1;
  v37 = a4;
  (*(v13 + 104))(v17, *MEMORY[0x277CDF350], v12, v21);
  sub_23DA6D470(a1, a2, a3 & 1);

  sub_23DB6FEDC();
  (*(v13 + 8))(v17, v12);
  sub_23DA16EC4(a1, a2, a3 & 1);

  v24 = [objc_opt_self() labelColor];
  v25 = sub_23DB700DC();
  KeyPath = swift_getKeyPath();
  v27 = &v23[*(v18 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = v30;
  sub_23DB6F66C();
  sub_23DB6D370();
  sub_23DB6FE8C();
  (*(v31 + 8))(v28, v33);
  return sub_23DA17988(v23, &qword_27E301098, &qword_23DB844F8);
}

uint64_t sub_23DB69780@<X0>(uint64_t a1@<X8>)
{
  sub_23DB704CC();
  v2 = sub_23DB7014C();
  v3 = sub_23DB6FB3C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301178, &qword_23DB846D8);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void sub_23DB697E0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_23DB69838()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_23DB6987C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_23DB69914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DB69988@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v6 = *v3;
  v7 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  result = sub_23DB7038C();
  *a2 = v5;
  return result;
}

uint64_t sub_23DB69A04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v5 = *v3;
  v6 = v3[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  return sub_23DB7039C();
}

uint64_t sub_23DB69A88()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  return v3;
}

uint64_t sub_23DB69AF8()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  return sub_23DB7039C();
}

void (*sub_23DB69B70(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v6 = *v5;
  v4[9] = *v5;
  v7 = v5[1];
  v4[3] = v6;
  v4 += 3;
  v4[7] = v7;
  v4[1] = v7;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  return sub_23DB69C44;
}

void sub_23DB69C44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v2[5] = *(*a1 + 72);
  v2[8] = v2[7];
  v4 = v2[11];
  v2[6] = v3;
  if (a2)
  {

    sub_23DB7039C();

    v5 = v2[7];
  }

  else
  {
    sub_23DB7039C();
  }

  free(v2);
}

uint64_t sub_23DB69CFC()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB703AC();
  return v3;
}

uint64_t sub_23DB69D70()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v10)
  {
    goto LABEL_6;
  }

  v2 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v10 = *v2;
  v11 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  swift_beginAccess();
  v3 = *(v9 + 40);

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23DB70C3C())
  {

    if (i == 1)
    {
      v5 = 1;
    }

    else
    {
LABEL_6:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      v5 = v10;
    }

    v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
    swift_beginAccess();
    v1 = *(v1 + v6);
    if ((v1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v1 + 8 * v5 + 32);

      return v7;
    }

    __break(1u);
LABEL_15:
    ;
  }

  v7 = MEMORY[0x23EEF70C0](v5, v1);

  return v7;
}

uint64_t sub_23DB69F64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t AudiographExplorerState.init(chartDescriptor:)(void *a1)
{
  sub_23DB6C0D0(a1);
  v3 = v2;

  return v3;
}

void sub_23DB6A008()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v13 = *v1;
  v15 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300B50, &qword_23DB82418);
  sub_23DB7038C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(v12 + 56) = v13;

  v14 = *v1;
  v16 = v1[1];
  sub_23DB7038C();
  swift_beginAccess();
  v2 = *(v12 + 40);

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DB70C3C())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EEF70C0](v4, v2);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      if (v12)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C();

        v5 = v12 == v7;
      }

      else
      {
        v5 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v12) = v5;
      sub_23DB6EF1C();
      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(v2 + 8 * v4 + 32);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_23DB7087C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301118, &qword_23DB845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  sub_23DB70C8C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 0x6E49736569726573;
  sub_23DB6BF94(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E301120, &qword_23DB845D8);
  v11 = sub_23DB7080C();

  [v8 postNotificationName:v9 object:0 userInfo:v11];
}

uint64_t sub_23DB6A454()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DB6A4C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

void sub_23DB6A548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF1C();
  sub_23DB6A008();
}

uint64_t sub_23DB6A5C0(uint64_t a1)
{
  v57 = type metadata accessor for DescriptionSectionItem(0);
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v57, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v48 - v9;
  v11 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  swift_beginAccess();
  v48 = a1;
  v12 = *(a1 + v11);
  if (v12 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DB70C3C())
  {
    v55 = v12 & 0xC000000000000001;
    v49 = v12 + 32;
    v50 = v12 & 0xFFFFFFFFFFFFFF8;

    v14 = 0;
    v51 = i;
    v52 = v12;
    while (v55)
    {
      v15 = MEMORY[0x23EEF70C0](v14, v12);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        goto LABEL_35;
      }

LABEL_12:
      v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor;
      v18 = *(v15 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor);
      if (!v18)
      {
        goto LABEL_4;
      }

      v19 = [v18 dataSummary];
      v20 = [v19 dataFeatureDescriptions];

      if (v20)
      {
        v53 = v17;
        v56 = v14;
        v21 = sub_23DB709EC();

        v54 = v21;
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions;
          v24 = (v54 + 40);
          do
          {
            v25 = *(v24 - 1);
            v26 = *v24;

            sub_23DB6EA7C();
            v27 = &v10[*(v57 + 20)];
            *v27 = v25;
            *(v27 + 1) = v26;
            swift_beginAccess();
            v28 = *(v15 + v23);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v15 + v23) = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = sub_23DAC8778(0, v28[2] + 1, 1, v28);
              *(v15 + v23) = v28;
            }

            v31 = v28[2];
            v30 = v28[3];
            if (v31 >= v30 >> 1)
            {
              v28 = sub_23DAC8778(v30 > 1, v31 + 1, 1, v28);
            }

            v28[2] = v31 + 1;
            sub_23DB6DC2C(v10, v28 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v31);
            *(v15 + v23) = v28;
            swift_endAccess();
            v24 += 2;
            --v22;
          }

          while (v22);
        }

        i = v51;
        v12 = v52;
        v14 = v56;
        v17 = v53;
      }

      v32 = *(v15 + v17);
      if (v32 && (v33 = [v32 dataSummary], v34 = objc_msgSend(v33, sel_statsDescriptions), v33, v34))
      {
        v35 = sub_23DB709EC();

        v36 = v35;
        v37 = *(v35 + 16);
        if (v37)
        {
          v56 = v14;
          v38 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions;
          v54 = v36;
          v39 = (v36 + 40);
          do
          {
            v40 = *(v39 - 1);
            v41 = *v39;

            sub_23DB6EA7C();
            v42 = &v6[*(v57 + 20)];
            *v42 = v40;
            *(v42 + 1) = v41;
            swift_beginAccess();
            v43 = *(v15 + v38);
            v44 = swift_isUniquelyReferenced_nonNull_native();
            *(v15 + v38) = v43;
            if ((v44 & 1) == 0)
            {
              v43 = sub_23DAC8778(0, v43[2] + 1, 1, v43);
              *(v15 + v38) = v43;
            }

            v46 = v43[2];
            v45 = v43[3];
            if (v46 >= v45 >> 1)
            {
              v43 = sub_23DAC8778(v45 > 1, v46 + 1, 1, v43);
            }

            v43[2] = v46 + 1;
            sub_23DB6DC2C(v6, v43 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v46);
            *(v15 + v38) = v43;
            swift_endAccess();
            v39 += 2;
            --v37;
          }

          while (v37);

          i = v51;
          v12 = v52;
          v14 = v56;
        }

        else
        {
        }
      }

      else
      {
LABEL_4:
      }

      if (v14 == i)
      {

        goto LABEL_34;
      }
    }

    if (v14 >= *(v50 + 16))
    {
      goto LABEL_36;
    }

    v15 = *(v49 + 8 * v14);

    v16 = __OFADD__(v14++, 1);
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_34:
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = 1;

  return sub_23DB6EF1C();
}

uint64_t AudiographExplorerState.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__audiographPlaybackStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301018, &qword_23DB83FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel + 8);

  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData);

  v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__summariesLoaded;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__selectedSeriesIndex;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t AudiographExplorerState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__audiographPlaybackStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301018, &qword_23DB83FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel + 8);

  v5 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData);

  v6 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__summariesLoaded;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__selectedSeriesIndex;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 12);
  v11 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t sub_23DB6AD7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudiographExplorerState(0);
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB6ADBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 name];
    if (v3)
    {
      v4 = v3;
      v5 = sub_23DB708BC();
    }

    else
    {
      type metadata accessor for AudiographExplorerState(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      sub_23DB6E9FC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_23DB73BA0;
      v13 = MEMORY[0x277D83C10];
      *(v12 + 56) = MEMORY[0x277D83B88];
      *(v12 + 64) = v13;
      *(v12 + 32) = 1;
      v5 = sub_23DB7088C();
    }

    return v5;
  }

  else
  {
    type metadata accessor for AudiographExplorerState(0);
    v7 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_23DB6E9FC();

    return v9;
  }
}

uint64_t sub_23DB6AFF4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_id;
  v3 = sub_23DB6EA8C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *&v0[OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions];

  v5 = *&v0[OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DB6B0C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_id;
  v5 = sub_23DB6EA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23DB6B144@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeriesData(0);
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB6B184@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DB6B204(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB6B278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DB6B2F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

unint64_t sub_23DB6B36C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23DB70E0C();
  sub_23DB7091C();
  v6 = sub_23DB70E4C();

  return sub_23DB6B5E4(a1, a2, v6);
}

unint64_t sub_23DB6B3E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23DB708BC();
  sub_23DB70E0C();
  sub_23DB7091C();
  v4 = sub_23DB70E4C();

  return sub_23DB6B69C(a1, v4);
}

unint64_t sub_23DB6B478(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](a1);
  v4 = sub_23DB70E4C();

  return sub_23DB6B7A0(a1, v4);
}

unint64_t sub_23DB6B4E4(char a1)
{
  v3 = *(v1 + 40);
  sub_23DB70E0C();
  if (a1 < 0)
  {
    MEMORY[0x23EEF71C0](1);
    VCCommandIdentifier.rawValue.getter();
  }

  else
  {
    MEMORY[0x23EEF71C0](0);
    VOCommandIdentifier.rawValue.getter();
  }

  sub_23DB7091C();

  v4 = sub_23DB70E4C();

  return sub_23DB6B80C(a1, v4);
}

unint64_t sub_23DB6B5A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23DB70C6C();

  return sub_23DB6B968(a1, v5);
}

unint64_t sub_23DB6B5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23DB70DBC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23DB6B69C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23DB708BC();
      v9 = v8;
      if (v7 == sub_23DB708BC() && v9 == v10)
      {
        break;
      }

      v12 = sub_23DB70DBC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23DB6B7A0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23DB6B80C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (*(*(v2 + 48) + v4) < 0)
      {
        if ((a1 & 0x80) == 0)
        {
          goto LABEL_4;
        }

        v8 = VCCommandIdentifier.rawValue.getter();
        v10 = v13;
        v11 = VCCommandIdentifier.rawValue.getter();
      }

      else
      {
        if (a1 < 0)
        {
          goto LABEL_4;
        }

        v15 = *(*(v2 + 48) + v4);
        v8 = VOCommandIdentifier.rawValue.getter();
        v10 = v9;
        v11 = VOCommandIdentifier.rawValue.getter();
      }

      if (v8 == v11 && v10 == v12)
      {

        return v4;
      }

      v7 = sub_23DB70DBC();

      if (v7)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23DB6B968(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23DB6D710(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEF7020](v9, a1);
      sub_23DB6D76C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23DB6BA30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F40C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB6BA5C(uint64_t *a1)
{
  v1 = *a1;

  return sub_23DB6F41C();
}

uint64_t sub_23DB6BA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3012A0, &qword_23DB84898);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_23DA0E2B4(a1, &v7 - v5, &qword_27E3012A0, &qword_23DB84898);
  return sub_23DB6F4DC();
}

unint64_t sub_23DB6BB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE308, &unk_23DB7BBC0);
    v3 = sub_23DB70D6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23DB6B36C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DB6BC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301188, &unk_23DB84770);
    v3 = sub_23DB70D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DA0E2B4(v4, &v11, &qword_27E2FE1D8, &qword_23DB7A4F0);
      v5 = v11;
      result = sub_23DB6B3E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23DB6D700(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23DB6BD6C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301198, &qword_23DB84788);
  v3 = sub_23DB70D6C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = sub_23DB6B478(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v6;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v4;
    v14 = (v3[7] + 32 * v11);
    *v14 = v5;
    v14[1] = result;
    v14[2] = v7;
    v14[3] = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v19 = *(v13 - 2);
    v7 = *(v13 - 1);
    v20 = *v13;

    v11 = sub_23DB6B478(v4);
    v13 = v18;
    v8 = v20;
    result = v19;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23DB6BEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301190, &qword_23DB84780);
    v3 = sub_23DB70D6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23DB6B4E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DB6BF94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301128, &qword_23DB845E0);
    v3 = sub_23DB70D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DA0E2B4(v4, v13, &qword_27E301120, &qword_23DB845D8);
      result = sub_23DB6B5A0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23DB6D700(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_23DB6C0D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v59 - v14;
  v16 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__summariesLoaded;
  LOBYTE(aBlock) = 0;
  sub_23DB6EECC();
  (*(v11 + 32))(v2 + v16, v15, v10);
  v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__selectedSeriesIndex;
  aBlock = 0;
  sub_23DB6EECC();
  (*(v5 + 32))(v2 + v17, v9, v4);
  *(v2 + 16) = a1;
  v59 = v2 + 16;
  type metadata accessor for ChartViewModel();
  swift_allocObject();
  v18 = a1;
  v19 = sub_23DB3B41C(v18);
  v20 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState__chartModel);
  swift_beginAccess();
  v69 = v19;
  sub_23DB7037C();
  v21 = v68;
  *v20 = v67;
  v20[1] = v21;
  swift_endAccess();
  v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData;
  v23 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport23AudiographExplorerState_seriesData) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v67 = 0;
  type metadata accessor for PlaybackStatus(0);
  sub_23DB6EECC();
  swift_endAccess();
  v24 = type metadata accessor for SeriesData(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();

  sub_23DB6EA7C();
  v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor;
  *(v27 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions) = v23;
  *(v27 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions) = v23;
  *(v27 + 16) = v2;
  *(v27 + v28) = 0;
  v29 = swift_beginAccess();
  MEMORY[0x23EEF6D70](v29);
  if (*((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23DB709FC();
  }

  sub_23DB70A0C();
  swift_endAccess();
  v30 = [v18 series];
  sub_23DAA967C(0, &qword_27E300B58, 0x277CE6AA8);
  v31 = sub_23DB709EC();

  v32 = v31;
  if (v31 >> 62)
  {
    v46 = sub_23DB70C3C();
    v32 = v31;
    v33 = v46;
    if (!v46)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_15;
    }
  }

  if (v33 < 1)
  {
    __break(1u);
    return;
  }

  v34 = 0;
  v60 = v32 & 0xC000000000000001;
  v35 = v32;
  do
  {
    if (v60)
    {
      v36 = MEMORY[0x23EEF70C0](v34);
    }

    else
    {
      v36 = *(v32 + 8 * v34 + 32);
    }

    v37 = v36;
    v38 = *(v24 + 48);
    v39 = *(v24 + 52);
    v40 = swift_allocObject();

    v41 = v37;
    sub_23DB6EA7C();
    v42 = OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_seriesDescriptor;
    v43 = MEMORY[0x277D84F90];
    *(v40 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_featureDescriptions) = MEMORY[0x277D84F90];
    *(v40 + OBJC_IVAR____TtC28AccessibilitySharedUISupport10SeriesData_statsDescriptions) = v43;
    *(v40 + 16) = v2;
    *(v40 + v42) = v37;
    v44 = swift_beginAccess();
    MEMORY[0x23EEF6D70](v44);
    if (*((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23DB709FC();
    }

    ++v34;
    sub_23DB70A0C();
    swift_endAccess();

    v32 = v35;
  }

  while (v33 != v34);
LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if ((aBlock & 1) == 0)
  {
    swift_beginAccess();
    v47 = *(v2 + 16);
    v65 = sub_23DB6DC0C;
    v66 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_23DABB3DC;
    v64 = &block_descriptor_10;
    v48 = _Block_copy(&aBlock);

    v49 = v47;

    [v49 generateDataSummariesWithCompletion_];
    _Block_release(v48);
  }

  v50 = *(v2 + v22);
  if (v50 >> 62)
  {
    if (v50 < 0)
    {
      v58 = *(v2 + v22);
    }

    v51 = sub_23DB70C3C();
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v51 < 2;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v52;

  sub_23DB6EF1C();
  sub_23DB6A008();
  qword_27E30A760 = v2;

  v53 = [objc_opt_self() defaultCenter];
  v54 = sub_23DB7087C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E301118, &qword_23DB845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  aBlock = 0x6E49736569726573;
  v62 = 0xEB00000000786564;
  sub_23DB70C8C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v56 = aBlock;
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v56;
  sub_23DB6BF94(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E301120, &qword_23DB845D8);
  v57 = sub_23DB7080C();

  [v53 postNotificationName:v54 object:0 userInfo:v57];
}

id sub_23DB6C964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_23DB6C9F8()
{
  sub_23DB6CC6C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA15D94(319, &qword_27E2FBFB0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA15D94(319, &qword_27E2FBFA8);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DB6CC6C()
{
  if (!qword_27E301040)
  {
    type metadata accessor for PlaybackStatus(255);
    v0 = sub_23DB6EF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E301040);
    }
  }
}

uint64_t sub_23DB6CCEC()
{
  result = sub_23DB6EA8C();
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

unint64_t sub_23DB6CDB8()
{
  result = qword_27E301058;
  if (!qword_27E301058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301060, &qword_23DB841C0);
    sub_23DA17B80(&qword_27E301068, &qword_27E301070, &unk_23DB841C8);
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301058);
  }

  return result;
}

uint64_t sub_23DB6CEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DB6EA8C();
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

uint64_t sub_23DB6CFC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DB6EA8C();
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

uint64_t sub_23DB6D0A4()
{
  result = sub_23DB6EA8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DB6D124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DB6D16C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23DB6D288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DB6D318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F40C();
  *a1 = result;
  return result;
}

uint64_t sub_23DB6D344(uint64_t *a1)
{
  v1 = *a1;

  return sub_23DB6F41C();
}

unint64_t sub_23DB6D370()
{
  result = qword_27E3010A0;
  if (!qword_27E3010A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301098, &qword_23DB844F8);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3010A0);
  }

  return result;
}

uint64_t sub_23DB6D458()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_23DB6D4A0()
{
  result = qword_27E3010E0;
  if (!qword_27E3010E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010D8, &qword_23DB84568);
    sub_23DA17B80(&qword_27E3010E8, &qword_27E3010F0, &unk_23DB84570);
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3010E0);
  }

  return result;
}

unint64_t sub_23DB6D588()
{
  result = qword_27E3010F8;
  if (!qword_27E3010F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010B8, &qword_23DB84548);
    sub_23DB6D640();
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3010F8);
  }

  return result;
}

unint64_t sub_23DB6D640()
{
  result = qword_27E301100;
  if (!qword_27E301100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010B0, &qword_23DB84540);
    sub_23DA17B80(&qword_27E301108, &qword_27E3010A8, &qword_23DB84538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301100);
  }

  return result;
}

_OWORD *sub_23DB6D700(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23DB6D7D0()
{
  result = qword_27E301150;
  if (!qword_27E301150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301148, &qword_23DB84648);
    sub_23DB6D854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301150);
  }

  return result;
}

unint64_t sub_23DB6D854()
{
  result = qword_27E301158;
  if (!qword_27E301158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301160, &unk_23DB84650);
    sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308);
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301158);
  }

  return result;
}

uint64_t sub_23DB6D944()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

void sub_23DB6D97C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_23DB682A8(v0[2]);
}

unint64_t sub_23DB6D9EC()
{
  result = qword_27E301248;
  if (!qword_27E301248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301248);
  }

  return result;
}

unint64_t sub_23DB6DA40()
{
  result = qword_27E301250;
  if (!qword_27E301250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301240, &qword_23DB84828);
    sub_23DB6DB58(&qword_27E301258, &qword_27E301260, &qword_23DB84830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301250);
  }

  return result;
}

uint64_t sub_23DB6DB58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23DB6DBB8()
{
  result = qword_27E3012B0;
  if (!qword_27E3012B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012B0);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DB6DC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionSectionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB6DCD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DB6DD8C()
{
  result = qword_27E3012D0;
  if (!qword_27E3012D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301110, &qword_23DB84580);
    sub_23DB6DE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012D0);
  }

  return result;
}

unint64_t sub_23DB6DE18()
{
  result = qword_27E3012D8;
  if (!qword_27E3012D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010D0, &qword_23DB84560);
    sub_23DB6DED0();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012D8);
  }

  return result;
}

unint64_t sub_23DB6DED0()
{
  result = qword_27E3012E0;
  if (!qword_27E3012E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010C8, &qword_23DB84558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3010B8, &qword_23DB84548);
    sub_23DB6D588();
    swift_getOpaqueTypeConformance2();
    sub_23DB6D288(&qword_27E2FCBD0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012E0);
  }

  return result;
}

unint64_t sub_23DB6E010()
{
  result = qword_27E3012F8;
  if (!qword_27E3012F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301178, &qword_23DB846D8);
    sub_23DB6D288(&qword_27E2FF330, MEMORY[0x277CDF088]);
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3012F8);
  }

  return result;
}

unint64_t sub_23DB6E0FC()
{
  result = qword_27E301300;
  if (!qword_27E301300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E301308, &unk_23DB848C0);
    sub_23DB6DCD4(&unk_27E301310, &qword_27E301180, &qword_23DB846E8, sub_23DB28374);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E301300);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E30A5B8 == -1)
  {
    if (qword_27E30A5C0)
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
    if (qword_27E30A5C0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E30A5B0 != -1)
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
      if (dword_27E30A5A4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E30A5A4 >= a3)
      {
        result = dword_27E30A5A8 >= a4;
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
  v1 = qword_27E30A5C0;
  if (qword_27E30A5C0)
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
      qword_27E30A5C0 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x23EEF7580](v13);
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
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E30A5A4, &dword_27E30A5A8);
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

uint64_t AXSSDeviceHasHomeButton_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return AXDeviceTemplateType_cold_1(v0);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}